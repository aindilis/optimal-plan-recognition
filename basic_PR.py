#!/usr/bin/python
import sys, os, csv
from options import Program_Options
import benchmark

class hsp_IPC6_Command :

	def __init__( self, domain, problem, max_time = 14400, max_mem = 2048 ) :
		self.domain = domain
		self.problem = problem
		self.noext_problem = os.path.basename(self.problem).replace( '.pddl', '' )
		self.max_time = max_time
		self.max_mem = max_mem
		self.upper_bound = None
		self.plan_cost = 'n/a' 

	def execute( self ) :
		if self.upper_bound is None :
			ub_string = ''
		else :
			ub_string = '-ub %s'%self.upper_bound
		cmd_string = './hsp_f -strict -dba-semantics -rm -cost -rAH -use-lse -bfs %s -v 0 -ipc %s %s > %s.soln'%( ub_string, self.domain, self.problem, self.noext_problem)
		self.log = benchmark.Log( '%s.log'%self.noext_problem )
		self.signal, self.time = benchmark.run( cmd_string, self.max_time, self.max_mem, self.log )
		self.gather_data()

	def gather_data( self ) :
		if self.signal == 0 and os.path.exists( '%s.soln'%self.noext_problem ) :
			instream = open( '%s.soln'%self.noext_problem )
			for line in instream :
				line = line.strip()
				if 'Not Solved' in line :
					self.plan_cost = 'unsolvable'
				toks = line.split()
				if 'MetricValue' in toks :
					self.plan_cost = toks[-1]
				
			instream.close()

	def write_result( self, filename ) :
		res = csv.writer(  open( '%s'%filename, 'w' ) )
		res.writerow( [ os.path.basename(self.domain), os.path.basename(self.problem), self.signal, self.time, self.plan_cost ] )


class Translate_Command :
	
	def __init__( self, domain, problem, obs, max_time = 1800, max_mem = 2048 ) :
		self.domain = domain
		self.problem = problem
		self.obs_stream = obs
		self.max_time = max_time
		self.max_mem = max_mem

	def execute( self ) :
		cmd_string = './pr2plan -d %s -i %s -o %s'%(self.domain, self.problem, self.obs_stream)
		self.log = benchmark.Log( '%s_%s_%s_transcription.log'%(self.domain, self.problem, self.obs_stream) )
		self.signal, self.time = benchmark.run( cmd_string, self.max_time, self.max_mem, self.log )

class Hypothesis :
	
	def __init__( self ) :
		self.atoms = []
		self.Delta = 0.0
		self.test_failed = False
		self.total_time = 0.0
		self.is_true = True

	def test( self, index ) :
		# generate the problem with G=H
		hyp_problem = 'hyp_%d_problem.pddl'%index
		self.generate_pddl_for_hyp_plan( hyp_problem )
		# derive problem with G_Obs
		trans_cmd = Translate_Command( 'domain.pddl', hyp_problem, 'obs.dat' )
		trans_cmd.execute()
		os.system( 'mv -f pr-domain.pddl pr-domain-hyp-%d.pddl'%index )
		os.system( 'mv -f pr-problem.pddl pr-problem-hyp-%d.pddl'%index )

		plan_for_H_cmd = hsp_IPC6_Command( 'domain.pddl', hyp_problem )
		plan_for_H_cmd.execute()

		if plan_for_H_cmd.signal == 0 :
			plan_for_H_cmd.write_result( 'hyp_%d_planning_H.csv'%index)
			plan_for_Obs_and_H_cmd = hsp_IPC6_Command( 'pr-domain-hyp-%d.pddl'%index, 'pr-problem-hyp-%d.pddl'%index ) 
			plan_for_Obs_and_H_cmd.upper_bound = plan_for_H_cmd.plan_cost
			plan_for_Obs_and_H_cmd.execute()
			if plan_for_Obs_and_H_cmd.signal == 0 :
				plan_for_Obs_and_H_cmd.write_result('hyp_%d_planning_Obs.csv'%index)
				self.total_time = trans_cmd.time + plan_for_H_cmd.time + plan_for_Obs_and_H_cmd.time
				if plan_for_Obs_and_H_cmd.plan_cost == 'unsolvable' :
					self.Delta = 'not-feasible'
				else :	
					self.Delta = float( plan_for_Obs_and_H_cmd.plan_cost) - float( plan_for_H_cmd.plan_cost )
			else :
				self.test_failed = True
				self.total_time = 'Timed Out'
		else :
			self.test_failed = True
			self.total_time = 'Timed Out'

	def generate_pddl_for_hyp_plan( self, out_name ) :
		instream = open( 'template.pddl' )
		outstream = open( out_name, 'w' )

		for line in instream :
			line = line.strip()
			if '<HYPOTHESIS>' not in line :
				print >> outstream, line
			else :
				for atom in self.atoms :
					print >> outstream, atom
		
		outstream.close()
		instream.close()

	def check_if_actual( self ) :
		real_hyp_atoms = []
		instream = open( 'real_hyp.dat' )
		for line in instream :
			real_hyp_atoms = [ tok.strip() for tok in line.split(',') ]
		instream.close()

		for atom in real_hyp_atoms :
			if not atom in self.atoms :
				self.is_true = False
				break

def load_hypotheses() :

	hyps = []
	
	instream = open( 'hyps.dat' )
	
	for line in instream :
		line = line.strip()
		H = Hypothesis()
		H.atoms = [  tok.strip() for tok in line.split(',') ]
		H.check_if_actual()
		hyps.append( H )

	instream.close()

	return hyps
	
def write_report( experiment, hyps ) :
	
	outstream = open( 'report.txt', 'w' )
	
	print >> outstream, "Experiment=%s"%experiment
	print >> outstream, "Num_Hyp=%d"%len(hyps)
	for hyp in hyps :
		print >> outstream, "Hyp_Atoms=%s"%",".join( hyp.atoms )
		if hyp.test_failed :
			print >> outstream, "Hyp_Delta=unknown"
		else :
			print >> outstream, "Hyp_Delta=%s"%hyp.Delta
		print >> outstream, "Hyp_Test_Time=%s"%hyp.total_time
		print >> outstream, "Hyp_Is_True=%s"%hyp.is_true

	outstream.close()

def main() :
	print sys.argv
	options = Program_Options( sys.argv[1:] )

	hyps = load_hypotheses()
	
	for i in range( 0, len(hyps) ) :
		hyps[i].test(i)

	write_report(options.exp_file, hyps)
	# pack logs, csvs and report.txt
	cmd = 'tar jcvf results.tar.bz2 *.log *.csv *.pddl *.soln report.txt'
	os.system( cmd )	

if __name__ == '__main__' :
	main()
