This is an attempt to get plan-recognition.tar.bz2 working from
https://sites.google.com/site/prasplanning/file-cabinet.

The pddl dir is a subdir extracted from aaai-10-benchmarks.zip

putting pddl/real_hyp.dat into the goal section of pddl/template.pddl

(note that could have tried putting pddl/hyps.dat either)

and running:

pr2plan -d pddl/domain.pddl -i pddl/template.pddl -o pddl/obs.dat

generated:

pr-problem.pddl
pr-domain.pddl
grounding.stats
execution.stats

then ran:

hsp_f pr-domain.pddl pr-problem.pddl 2> output.txt

not sure how to understand the results yet.

reading ramirez-geffner-ijcai09.pdf


