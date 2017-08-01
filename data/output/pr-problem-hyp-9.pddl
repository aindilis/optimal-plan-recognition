(define
	(problem grounded-INTRUSION-DETECTION-10-HOSTS)
	(:domain grounded-INTRUSION-DETECTION)
	(:init
		(= (total-cost) 0)
		( NOT_EXPLAINED_RECON_SCORPIO_1 )
		( NOT_EXPLAINED_FULL_OBS_SEQUENCE )
	)
	(:goal
		(and 
		( VANDALIZED_LIBRA )
		( DATA-STOLEN-FROM_CASSIOPEA )
		( DATA-STOLEN-FROM_PERSEUS )
		( EXPLAINED_FULL_OBS_SEQUENCE )
		)
	)
	(:metric minimize (total-cost))

)
