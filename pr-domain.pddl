(define
	(domain grounded-INTRUSION-DETECTION)
	(:requirements :strips :action-costs)
	(:predicates
		( RECON-PERFORMED_PERSEUS )
		( RECON-PERFORMED_CASSIOPEA )
		( RECON-PERFORMED_ANDROMEDA )
		( RECON-PERFORMED_SAGITTARIUS )
		( RECON-PERFORMED_SCORPIO )
		( RECON-PERFORMED_VIRGO )
		( RECON-PERFORMED_ARIES )
		( RECON-PERFORMED_LEO )
		( RECON-PERFORMED_LIBRA )
		( RECON-PERFORMED_TAURUS )
		( INFORMATION-GATHERED_PERSEUS )
		( INFORMATION-GATHERED_CASSIOPEA )
		( INFORMATION-GATHERED_ANDROMEDA )
		( INFORMATION-GATHERED_SAGITTARIUS )
		( INFORMATION-GATHERED_SCORPIO )
		( INFORMATION-GATHERED_VIRGO )
		( INFORMATION-GATHERED_ARIES )
		( INFORMATION-GATHERED_LEO )
		( INFORMATION-GATHERED_LIBRA )
		( INFORMATION-GATHERED_TAURUS )
		( ACCESS-OBTAINED_PERSEUS )
		( ACCESS-OBTAINED_CASSIOPEA )
		( ACCESS-OBTAINED_ANDROMEDA )
		( ACCESS-OBTAINED_SAGITTARIUS )
		( ACCESS-OBTAINED_SCORPIO )
		( ACCESS-OBTAINED_VIRGO )
		( ACCESS-OBTAINED_ARIES )
		( ACCESS-OBTAINED_LEO )
		( ACCESS-OBTAINED_LIBRA )
		( ACCESS-OBTAINED_TAURUS )
		( MODIFIED-FILES_PERSEUS )
		( MODIFIED-FILES_CASSIOPEA )
		( MODIFIED-FILES_ANDROMEDA )
		( MODIFIED-FILES_SAGITTARIUS )
		( MODIFIED-FILES_SCORPIO )
		( MODIFIED-FILES_VIRGO )
		( MODIFIED-FILES_ARIES )
		( MODIFIED-FILES_LEO )
		( MODIFIED-FILES_LIBRA )
		( MODIFIED-FILES_TAURUS )
		( DELETED-LOGS_PERSEUS )
		( DELETED-LOGS_CASSIOPEA )
		( DELETED-LOGS_ANDROMEDA )
		( DELETED-LOGS_SAGITTARIUS )
		( DELETED-LOGS_SCORPIO )
		( DELETED-LOGS_VIRGO )
		( DELETED-LOGS_ARIES )
		( DELETED-LOGS_LEO )
		( DELETED-LOGS_LIBRA )
		( DELETED-LOGS_TAURUS )
		( VANDALIZED_PERSEUS )
		( VANDALIZED_CASSIOPEA )
		( VANDALIZED_ANDROMEDA )
		( VANDALIZED_SAGITTARIUS )
		( VANDALIZED_SCORPIO )
		( VANDALIZED_VIRGO )
		( VANDALIZED_ARIES )
		( VANDALIZED_LEO )
		( VANDALIZED_LIBRA )
		( VANDALIZED_TAURUS )
		( ROOT-ACCESS-OBTAINED_PERSEUS )
		( ROOT-ACCESS-OBTAINED_CASSIOPEA )
		( ROOT-ACCESS-OBTAINED_ANDROMEDA )
		( ROOT-ACCESS-OBTAINED_SAGITTARIUS )
		( ROOT-ACCESS-OBTAINED_SCORPIO )
		( ROOT-ACCESS-OBTAINED_VIRGO )
		( ROOT-ACCESS-OBTAINED_ARIES )
		( ROOT-ACCESS-OBTAINED_LEO )
		( ROOT-ACCESS-OBTAINED_LIBRA )
		( ROOT-ACCESS-OBTAINED_TAURUS )
		( FILES-DOWNLOADED_PERSEUS )
		( FILES-DOWNLOADED_CASSIOPEA )
		( FILES-DOWNLOADED_ANDROMEDA )
		( FILES-DOWNLOADED_SAGITTARIUS )
		( FILES-DOWNLOADED_SCORPIO )
		( FILES-DOWNLOADED_VIRGO )
		( FILES-DOWNLOADED_ARIES )
		( FILES-DOWNLOADED_LEO )
		( FILES-DOWNLOADED_LIBRA )
		( FILES-DOWNLOADED_TAURUS )
		( DATA-STOLEN-FROM_PERSEUS )
		( DATA-STOLEN-FROM_CASSIOPEA )
		( DATA-STOLEN-FROM_ANDROMEDA )
		( DATA-STOLEN-FROM_SAGITTARIUS )
		( DATA-STOLEN-FROM_SCORPIO )
		( DATA-STOLEN-FROM_VIRGO )
		( DATA-STOLEN-FROM_ARIES )
		( DATA-STOLEN-FROM_LEO )
		( DATA-STOLEN-FROM_LIBRA )
		( DATA-STOLEN-FROM_TAURUS )
		( EXPLAINED_RECON_TAURUS_1 )
		( EXPLAINED_BREAK-INTO_TAURUS_1 )
		( EXPLAINED_MODIFY-FILES_TAURUS_1 )
		( EXPLAINED_CLEAN_TAURUS_1 )
		( EXPLAINED_RECON_ARIES_1 )
		( EXPLAINED_BREAK-INTO_ARIES_1 )
		( EXPLAINED_MODIFY-FILES_ARIES_1 )
		( EXPLAINED_CLEAN_ARIES_1 )
		( EXPLAINED_RECON_CASSIOPEA_1 )
		( EXPLAINED_BREAK-INTO_CASSIOPEA_1 )
		( EXPLAINED_CLEAN_CASSIOPEA_1 )
		( EXPLAINED_GAIN-ROOT_CASSIOPEA_1 )
		( EXPLAINED_DOWNLOAD-FILES_CASSIOPEA_1 )
		( NOT_EXPLAINED_RECON_TAURUS_1 )
		( NOT_EXPLAINED_BREAK-INTO_TAURUS_1 )
		( NOT_EXPLAINED_MODIFY-FILES_TAURUS_1 )
		( NOT_EXPLAINED_CLEAN_TAURUS_1 )
		( NOT_EXPLAINED_RECON_ARIES_1 )
		( NOT_EXPLAINED_BREAK-INTO_ARIES_1 )
		( NOT_EXPLAINED_MODIFY-FILES_ARIES_1 )
		( NOT_EXPLAINED_CLEAN_ARIES_1 )
		( NOT_EXPLAINED_RECON_CASSIOPEA_1 )
		( NOT_EXPLAINED_BREAK-INTO_CASSIOPEA_1 )
		( NOT_EXPLAINED_CLEAN_CASSIOPEA_1 )
		( NOT_EXPLAINED_GAIN-ROOT_CASSIOPEA_1 )
		( NOT_EXPLAINED_DOWNLOAD-FILES_CASSIOPEA_1 )
		( EXPLAINED_FULL_OBS_SEQUENCE )
		( NOT_EXPLAINED_FULL_OBS_SEQUENCE )
	) 
	(:functions (total-cost))
	(:action EXPLAIN_OBS_RECON_TAURUS_1
		:parameters ()
		:precondition
		(and
		)
		:effect
		(and
			(increase (total-cost) 1)
			( RECON-PERFORMED_TAURUS )
			 ( EXPLAINED_RECON_TAURUS_1 )
			 (not ( NOT_EXPLAINED_RECON_TAURUS_1 ))
		)
	)
	(:action EXPLAIN_OBS_BREAK-INTO_TAURUS_1
		:parameters ()
		:precondition
		(and
			( RECON-PERFORMED_TAURUS )
			( EXPLAINED_RECON_TAURUS_1 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( ACCESS-OBTAINED_TAURUS )
			 ( EXPLAINED_BREAK-INTO_TAURUS_1 )
			 (not ( NOT_EXPLAINED_BREAK-INTO_TAURUS_1 ))
		)
	)
	(:action BREAK-INTO_TAURUS
		:parameters ()
		:precondition
		(and
			( RECON-PERFORMED_TAURUS )
			( NOT_EXPLAINED_RECON_TAURUS_1 )
			( NOT_EXPLAINED_FULL_OBS_SEQUENCE )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( ACCESS-OBTAINED_TAURUS )
		)
	)
	(:action EXPLAIN_OBS_MODIFY-FILES_TAURUS_1
		:parameters ()
		:precondition
		(and
			( ACCESS-OBTAINED_TAURUS )
			( EXPLAINED_BREAK-INTO_TAURUS_1 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( MODIFIED-FILES_TAURUS )
			 ( EXPLAINED_MODIFY-FILES_TAURUS_1 )
			 (not ( NOT_EXPLAINED_MODIFY-FILES_TAURUS_1 ))
		)
	)
	(:action MODIFY-FILES_TAURUS
		:parameters ()
		:precondition
		(and
			( ACCESS-OBTAINED_TAURUS )
			( NOT_EXPLAINED_RECON_TAURUS_1 )
			( NOT_EXPLAINED_FULL_OBS_SEQUENCE )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( MODIFIED-FILES_TAURUS )
		)
	)
	(:action MODIFY-FILES_TAURUS
		:parameters ()
		:precondition
		(and
			( ACCESS-OBTAINED_TAURUS )
			( NOT_EXPLAINED_BREAK-INTO_TAURUS_1 )
			( NOT_EXPLAINED_FULL_OBS_SEQUENCE )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( MODIFIED-FILES_TAURUS )
		)
	)
	(:action EXPLAIN_OBS_CLEAN_TAURUS_1
		:parameters ()
		:precondition
		(and
			( ACCESS-OBTAINED_TAURUS )
			( EXPLAINED_MODIFY-FILES_TAURUS_1 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( DELETED-LOGS_TAURUS )
			 ( EXPLAINED_CLEAN_TAURUS_1 )
			 (not ( NOT_EXPLAINED_CLEAN_TAURUS_1 ))
		)
	)
	(:action CLEAN_TAURUS
		:parameters ()
		:precondition
		(and
			( ACCESS-OBTAINED_TAURUS )
			( NOT_EXPLAINED_RECON_TAURUS_1 )
			( NOT_EXPLAINED_FULL_OBS_SEQUENCE )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( DELETED-LOGS_TAURUS )
		)
	)
	(:action CLEAN_TAURUS
		:parameters ()
		:precondition
		(and
			( ACCESS-OBTAINED_TAURUS )
			( NOT_EXPLAINED_BREAK-INTO_TAURUS_1 )
			( NOT_EXPLAINED_FULL_OBS_SEQUENCE )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( DELETED-LOGS_TAURUS )
		)
	)
	(:action CLEAN_TAURUS
		:parameters ()
		:precondition
		(and
			( ACCESS-OBTAINED_TAURUS )
			( NOT_EXPLAINED_MODIFY-FILES_TAURUS_1 )
			( NOT_EXPLAINED_FULL_OBS_SEQUENCE )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( DELETED-LOGS_TAURUS )
		)
	)
	(:action EXPLAIN_OBS_RECON_ARIES_1
		:parameters ()
		:precondition
		(and
			( EXPLAINED_CLEAN_TAURUS_1 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( RECON-PERFORMED_ARIES )
			 ( EXPLAINED_RECON_ARIES_1 )
			 (not ( NOT_EXPLAINED_RECON_ARIES_1 ))
		)
	)
	(:action RECON_ARIES
		:parameters ()
		:precondition
		(and
			( NOT_EXPLAINED_RECON_TAURUS_1 )
			( NOT_EXPLAINED_FULL_OBS_SEQUENCE )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( RECON-PERFORMED_ARIES )
		)
	)
	(:action RECON_ARIES
		:parameters ()
		:precondition
		(and
			( NOT_EXPLAINED_BREAK-INTO_TAURUS_1 )
			( NOT_EXPLAINED_FULL_OBS_SEQUENCE )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( RECON-PERFORMED_ARIES )
		)
	)
	(:action RECON_ARIES
		:parameters ()
		:precondition
		(and
			( NOT_EXPLAINED_MODIFY-FILES_TAURUS_1 )
			( NOT_EXPLAINED_FULL_OBS_SEQUENCE )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( RECON-PERFORMED_ARIES )
		)
	)
	(:action RECON_ARIES
		:parameters ()
		:precondition
		(and
			( NOT_EXPLAINED_CLEAN_TAURUS_1 )
			( NOT_EXPLAINED_FULL_OBS_SEQUENCE )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( RECON-PERFORMED_ARIES )
		)
	)
	(:action EXPLAIN_OBS_BREAK-INTO_ARIES_1
		:parameters ()
		:precondition
		(and
			( RECON-PERFORMED_ARIES )
			( EXPLAINED_RECON_ARIES_1 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( ACCESS-OBTAINED_ARIES )
			 ( EXPLAINED_BREAK-INTO_ARIES_1 )
			 (not ( NOT_EXPLAINED_BREAK-INTO_ARIES_1 ))
		)
	)
	(:action BREAK-INTO_ARIES
		:parameters ()
		:precondition
		(and
			( RECON-PERFORMED_ARIES )
			( NOT_EXPLAINED_RECON_TAURUS_1 )
			( NOT_EXPLAINED_FULL_OBS_SEQUENCE )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( ACCESS-OBTAINED_ARIES )
		)
	)
	(:action BREAK-INTO_ARIES
		:parameters ()
		:precondition
		(and
			( RECON-PERFORMED_ARIES )
			( NOT_EXPLAINED_BREAK-INTO_TAURUS_1 )
			( NOT_EXPLAINED_FULL_OBS_SEQUENCE )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( ACCESS-OBTAINED_ARIES )
		)
	)
	(:action BREAK-INTO_ARIES
		:parameters ()
		:precondition
		(and
			( RECON-PERFORMED_ARIES )
			( NOT_EXPLAINED_MODIFY-FILES_TAURUS_1 )
			( NOT_EXPLAINED_FULL_OBS_SEQUENCE )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( ACCESS-OBTAINED_ARIES )
		)
	)
	(:action BREAK-INTO_ARIES
		:parameters ()
		:precondition
		(and
			( RECON-PERFORMED_ARIES )
			( NOT_EXPLAINED_CLEAN_TAURUS_1 )
			( NOT_EXPLAINED_FULL_OBS_SEQUENCE )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( ACCESS-OBTAINED_ARIES )
		)
	)
	(:action BREAK-INTO_ARIES
		:parameters ()
		:precondition
		(and
			( RECON-PERFORMED_ARIES )
			( NOT_EXPLAINED_RECON_ARIES_1 )
			( NOT_EXPLAINED_FULL_OBS_SEQUENCE )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( ACCESS-OBTAINED_ARIES )
		)
	)
	(:action EXPLAIN_OBS_MODIFY-FILES_ARIES_1
		:parameters ()
		:precondition
		(and
			( ACCESS-OBTAINED_ARIES )
			( EXPLAINED_BREAK-INTO_ARIES_1 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( MODIFIED-FILES_ARIES )
			 ( EXPLAINED_MODIFY-FILES_ARIES_1 )
			 (not ( NOT_EXPLAINED_MODIFY-FILES_ARIES_1 ))
		)
	)
	(:action MODIFY-FILES_ARIES
		:parameters ()
		:precondition
		(and
			( ACCESS-OBTAINED_ARIES )
			( NOT_EXPLAINED_RECON_TAURUS_1 )
			( NOT_EXPLAINED_FULL_OBS_SEQUENCE )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( MODIFIED-FILES_ARIES )
		)
	)
	(:action MODIFY-FILES_ARIES
		:parameters ()
		:precondition
		(and
			( ACCESS-OBTAINED_ARIES )
			( NOT_EXPLAINED_BREAK-INTO_TAURUS_1 )
			( NOT_EXPLAINED_FULL_OBS_SEQUENCE )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( MODIFIED-FILES_ARIES )
		)
	)
	(:action MODIFY-FILES_ARIES
		:parameters ()
		:precondition
		(and
			( ACCESS-OBTAINED_ARIES )
			( NOT_EXPLAINED_MODIFY-FILES_TAURUS_1 )
			( NOT_EXPLAINED_FULL_OBS_SEQUENCE )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( MODIFIED-FILES_ARIES )
		)
	)
	(:action MODIFY-FILES_ARIES
		:parameters ()
		:precondition
		(and
			( ACCESS-OBTAINED_ARIES )
			( NOT_EXPLAINED_CLEAN_TAURUS_1 )
			( NOT_EXPLAINED_FULL_OBS_SEQUENCE )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( MODIFIED-FILES_ARIES )
		)
	)
	(:action MODIFY-FILES_ARIES
		:parameters ()
		:precondition
		(and
			( ACCESS-OBTAINED_ARIES )
			( NOT_EXPLAINED_RECON_ARIES_1 )
			( NOT_EXPLAINED_FULL_OBS_SEQUENCE )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( MODIFIED-FILES_ARIES )
		)
	)
	(:action MODIFY-FILES_ARIES
		:parameters ()
		:precondition
		(and
			( ACCESS-OBTAINED_ARIES )
			( NOT_EXPLAINED_BREAK-INTO_ARIES_1 )
			( NOT_EXPLAINED_FULL_OBS_SEQUENCE )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( MODIFIED-FILES_ARIES )
		)
	)
	(:action EXPLAIN_OBS_CLEAN_ARIES_1
		:parameters ()
		:precondition
		(and
			( ACCESS-OBTAINED_ARIES )
			( EXPLAINED_MODIFY-FILES_ARIES_1 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( DELETED-LOGS_ARIES )
			 ( EXPLAINED_CLEAN_ARIES_1 )
			 (not ( NOT_EXPLAINED_CLEAN_ARIES_1 ))
		)
	)
	(:action CLEAN_ARIES
		:parameters ()
		:precondition
		(and
			( ACCESS-OBTAINED_ARIES )
			( NOT_EXPLAINED_RECON_TAURUS_1 )
			( NOT_EXPLAINED_FULL_OBS_SEQUENCE )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( DELETED-LOGS_ARIES )
		)
	)
	(:action CLEAN_ARIES
		:parameters ()
		:precondition
		(and
			( ACCESS-OBTAINED_ARIES )
			( NOT_EXPLAINED_BREAK-INTO_TAURUS_1 )
			( NOT_EXPLAINED_FULL_OBS_SEQUENCE )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( DELETED-LOGS_ARIES )
		)
	)
	(:action CLEAN_ARIES
		:parameters ()
		:precondition
		(and
			( ACCESS-OBTAINED_ARIES )
			( NOT_EXPLAINED_MODIFY-FILES_TAURUS_1 )
			( NOT_EXPLAINED_FULL_OBS_SEQUENCE )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( DELETED-LOGS_ARIES )
		)
	)
	(:action CLEAN_ARIES
		:parameters ()
		:precondition
		(and
			( ACCESS-OBTAINED_ARIES )
			( NOT_EXPLAINED_CLEAN_TAURUS_1 )
			( NOT_EXPLAINED_FULL_OBS_SEQUENCE )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( DELETED-LOGS_ARIES )
		)
	)
	(:action CLEAN_ARIES
		:parameters ()
		:precondition
		(and
			( ACCESS-OBTAINED_ARIES )
			( NOT_EXPLAINED_RECON_ARIES_1 )
			( NOT_EXPLAINED_FULL_OBS_SEQUENCE )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( DELETED-LOGS_ARIES )
		)
	)
	(:action CLEAN_ARIES
		:parameters ()
		:precondition
		(and
			( ACCESS-OBTAINED_ARIES )
			( NOT_EXPLAINED_BREAK-INTO_ARIES_1 )
			( NOT_EXPLAINED_FULL_OBS_SEQUENCE )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( DELETED-LOGS_ARIES )
		)
	)
	(:action CLEAN_ARIES
		:parameters ()
		:precondition
		(and
			( ACCESS-OBTAINED_ARIES )
			( NOT_EXPLAINED_MODIFY-FILES_ARIES_1 )
			( NOT_EXPLAINED_FULL_OBS_SEQUENCE )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( DELETED-LOGS_ARIES )
		)
	)
	(:action EXPLAIN_OBS_RECON_CASSIOPEA_1
		:parameters ()
		:precondition
		(and
			( EXPLAINED_CLEAN_ARIES_1 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( RECON-PERFORMED_CASSIOPEA )
			 ( EXPLAINED_RECON_CASSIOPEA_1 )
			 (not ( NOT_EXPLAINED_RECON_CASSIOPEA_1 ))
		)
	)
	(:action RECON_CASSIOPEA
		:parameters ()
		:precondition
		(and
			( NOT_EXPLAINED_RECON_TAURUS_1 )
			( NOT_EXPLAINED_FULL_OBS_SEQUENCE )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( RECON-PERFORMED_CASSIOPEA )
		)
	)
	(:action RECON_CASSIOPEA
		:parameters ()
		:precondition
		(and
			( NOT_EXPLAINED_BREAK-INTO_TAURUS_1 )
			( NOT_EXPLAINED_FULL_OBS_SEQUENCE )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( RECON-PERFORMED_CASSIOPEA )
		)
	)
	(:action RECON_CASSIOPEA
		:parameters ()
		:precondition
		(and
			( NOT_EXPLAINED_MODIFY-FILES_TAURUS_1 )
			( NOT_EXPLAINED_FULL_OBS_SEQUENCE )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( RECON-PERFORMED_CASSIOPEA )
		)
	)
	(:action RECON_CASSIOPEA
		:parameters ()
		:precondition
		(and
			( NOT_EXPLAINED_CLEAN_TAURUS_1 )
			( NOT_EXPLAINED_FULL_OBS_SEQUENCE )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( RECON-PERFORMED_CASSIOPEA )
		)
	)
	(:action RECON_CASSIOPEA
		:parameters ()
		:precondition
		(and
			( NOT_EXPLAINED_RECON_ARIES_1 )
			( NOT_EXPLAINED_FULL_OBS_SEQUENCE )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( RECON-PERFORMED_CASSIOPEA )
		)
	)
	(:action RECON_CASSIOPEA
		:parameters ()
		:precondition
		(and
			( NOT_EXPLAINED_BREAK-INTO_ARIES_1 )
			( NOT_EXPLAINED_FULL_OBS_SEQUENCE )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( RECON-PERFORMED_CASSIOPEA )
		)
	)
	(:action RECON_CASSIOPEA
		:parameters ()
		:precondition
		(and
			( NOT_EXPLAINED_MODIFY-FILES_ARIES_1 )
			( NOT_EXPLAINED_FULL_OBS_SEQUENCE )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( RECON-PERFORMED_CASSIOPEA )
		)
	)
	(:action RECON_CASSIOPEA
		:parameters ()
		:precondition
		(and
			( NOT_EXPLAINED_CLEAN_ARIES_1 )
			( NOT_EXPLAINED_FULL_OBS_SEQUENCE )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( RECON-PERFORMED_CASSIOPEA )
		)
	)
	(:action EXPLAIN_OBS_BREAK-INTO_CASSIOPEA_1
		:parameters ()
		:precondition
		(and
			( RECON-PERFORMED_CASSIOPEA )
			( EXPLAINED_RECON_CASSIOPEA_1 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( ACCESS-OBTAINED_CASSIOPEA )
			 ( EXPLAINED_BREAK-INTO_CASSIOPEA_1 )
			 (not ( NOT_EXPLAINED_BREAK-INTO_CASSIOPEA_1 ))
		)
	)
	(:action BREAK-INTO_CASSIOPEA
		:parameters ()
		:precondition
		(and
			( RECON-PERFORMED_CASSIOPEA )
			( NOT_EXPLAINED_RECON_TAURUS_1 )
			( NOT_EXPLAINED_FULL_OBS_SEQUENCE )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( ACCESS-OBTAINED_CASSIOPEA )
		)
	)
	(:action BREAK-INTO_CASSIOPEA
		:parameters ()
		:precondition
		(and
			( RECON-PERFORMED_CASSIOPEA )
			( NOT_EXPLAINED_BREAK-INTO_TAURUS_1 )
			( NOT_EXPLAINED_FULL_OBS_SEQUENCE )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( ACCESS-OBTAINED_CASSIOPEA )
		)
	)
	(:action BREAK-INTO_CASSIOPEA
		:parameters ()
		:precondition
		(and
			( RECON-PERFORMED_CASSIOPEA )
			( NOT_EXPLAINED_MODIFY-FILES_TAURUS_1 )
			( NOT_EXPLAINED_FULL_OBS_SEQUENCE )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( ACCESS-OBTAINED_CASSIOPEA )
		)
	)
	(:action BREAK-INTO_CASSIOPEA
		:parameters ()
		:precondition
		(and
			( RECON-PERFORMED_CASSIOPEA )
			( NOT_EXPLAINED_CLEAN_TAURUS_1 )
			( NOT_EXPLAINED_FULL_OBS_SEQUENCE )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( ACCESS-OBTAINED_CASSIOPEA )
		)
	)
	(:action BREAK-INTO_CASSIOPEA
		:parameters ()
		:precondition
		(and
			( RECON-PERFORMED_CASSIOPEA )
			( NOT_EXPLAINED_RECON_ARIES_1 )
			( NOT_EXPLAINED_FULL_OBS_SEQUENCE )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( ACCESS-OBTAINED_CASSIOPEA )
		)
	)
	(:action BREAK-INTO_CASSIOPEA
		:parameters ()
		:precondition
		(and
			( RECON-PERFORMED_CASSIOPEA )
			( NOT_EXPLAINED_BREAK-INTO_ARIES_1 )
			( NOT_EXPLAINED_FULL_OBS_SEQUENCE )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( ACCESS-OBTAINED_CASSIOPEA )
		)
	)
	(:action BREAK-INTO_CASSIOPEA
		:parameters ()
		:precondition
		(and
			( RECON-PERFORMED_CASSIOPEA )
			( NOT_EXPLAINED_MODIFY-FILES_ARIES_1 )
			( NOT_EXPLAINED_FULL_OBS_SEQUENCE )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( ACCESS-OBTAINED_CASSIOPEA )
		)
	)
	(:action BREAK-INTO_CASSIOPEA
		:parameters ()
		:precondition
		(and
			( RECON-PERFORMED_CASSIOPEA )
			( NOT_EXPLAINED_CLEAN_ARIES_1 )
			( NOT_EXPLAINED_FULL_OBS_SEQUENCE )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( ACCESS-OBTAINED_CASSIOPEA )
		)
	)
	(:action BREAK-INTO_CASSIOPEA
		:parameters ()
		:precondition
		(and
			( RECON-PERFORMED_CASSIOPEA )
			( NOT_EXPLAINED_RECON_CASSIOPEA_1 )
			( NOT_EXPLAINED_FULL_OBS_SEQUENCE )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( ACCESS-OBTAINED_CASSIOPEA )
		)
	)
	(:action EXPLAIN_OBS_CLEAN_CASSIOPEA_1
		:parameters ()
		:precondition
		(and
			( ACCESS-OBTAINED_CASSIOPEA )
			( EXPLAINED_BREAK-INTO_CASSIOPEA_1 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( DELETED-LOGS_CASSIOPEA )
			 ( EXPLAINED_CLEAN_CASSIOPEA_1 )
			 (not ( NOT_EXPLAINED_CLEAN_CASSIOPEA_1 ))
		)
	)
	(:action CLEAN_CASSIOPEA
		:parameters ()
		:precondition
		(and
			( ACCESS-OBTAINED_CASSIOPEA )
			( NOT_EXPLAINED_RECON_TAURUS_1 )
			( NOT_EXPLAINED_FULL_OBS_SEQUENCE )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( DELETED-LOGS_CASSIOPEA )
		)
	)
	(:action CLEAN_CASSIOPEA
		:parameters ()
		:precondition
		(and
			( ACCESS-OBTAINED_CASSIOPEA )
			( NOT_EXPLAINED_BREAK-INTO_TAURUS_1 )
			( NOT_EXPLAINED_FULL_OBS_SEQUENCE )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( DELETED-LOGS_CASSIOPEA )
		)
	)
	(:action CLEAN_CASSIOPEA
		:parameters ()
		:precondition
		(and
			( ACCESS-OBTAINED_CASSIOPEA )
			( NOT_EXPLAINED_MODIFY-FILES_TAURUS_1 )
			( NOT_EXPLAINED_FULL_OBS_SEQUENCE )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( DELETED-LOGS_CASSIOPEA )
		)
	)
	(:action CLEAN_CASSIOPEA
		:parameters ()
		:precondition
		(and
			( ACCESS-OBTAINED_CASSIOPEA )
			( NOT_EXPLAINED_CLEAN_TAURUS_1 )
			( NOT_EXPLAINED_FULL_OBS_SEQUENCE )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( DELETED-LOGS_CASSIOPEA )
		)
	)
	(:action CLEAN_CASSIOPEA
		:parameters ()
		:precondition
		(and
			( ACCESS-OBTAINED_CASSIOPEA )
			( NOT_EXPLAINED_RECON_ARIES_1 )
			( NOT_EXPLAINED_FULL_OBS_SEQUENCE )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( DELETED-LOGS_CASSIOPEA )
		)
	)
	(:action CLEAN_CASSIOPEA
		:parameters ()
		:precondition
		(and
			( ACCESS-OBTAINED_CASSIOPEA )
			( NOT_EXPLAINED_BREAK-INTO_ARIES_1 )
			( NOT_EXPLAINED_FULL_OBS_SEQUENCE )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( DELETED-LOGS_CASSIOPEA )
		)
	)
	(:action CLEAN_CASSIOPEA
		:parameters ()
		:precondition
		(and
			( ACCESS-OBTAINED_CASSIOPEA )
			( NOT_EXPLAINED_MODIFY-FILES_ARIES_1 )
			( NOT_EXPLAINED_FULL_OBS_SEQUENCE )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( DELETED-LOGS_CASSIOPEA )
		)
	)
	(:action CLEAN_CASSIOPEA
		:parameters ()
		:precondition
		(and
			( ACCESS-OBTAINED_CASSIOPEA )
			( NOT_EXPLAINED_CLEAN_ARIES_1 )
			( NOT_EXPLAINED_FULL_OBS_SEQUENCE )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( DELETED-LOGS_CASSIOPEA )
		)
	)
	(:action CLEAN_CASSIOPEA
		:parameters ()
		:precondition
		(and
			( ACCESS-OBTAINED_CASSIOPEA )
			( NOT_EXPLAINED_RECON_CASSIOPEA_1 )
			( NOT_EXPLAINED_FULL_OBS_SEQUENCE )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( DELETED-LOGS_CASSIOPEA )
		)
	)
	(:action CLEAN_CASSIOPEA
		:parameters ()
		:precondition
		(and
			( ACCESS-OBTAINED_CASSIOPEA )
			( NOT_EXPLAINED_BREAK-INTO_CASSIOPEA_1 )
			( NOT_EXPLAINED_FULL_OBS_SEQUENCE )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( DELETED-LOGS_CASSIOPEA )
		)
	)
	(:action EXPLAIN_OBS_GAIN-ROOT_CASSIOPEA_1
		:parameters ()
		:precondition
		(and
			( ACCESS-OBTAINED_CASSIOPEA )
			( EXPLAINED_CLEAN_CASSIOPEA_1 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( ROOT-ACCESS-OBTAINED_CASSIOPEA )
			 ( EXPLAINED_GAIN-ROOT_CASSIOPEA_1 )
			 (not ( NOT_EXPLAINED_GAIN-ROOT_CASSIOPEA_1 ))
		)
	)
	(:action GAIN-ROOT_CASSIOPEA
		:parameters ()
		:precondition
		(and
			( ACCESS-OBTAINED_CASSIOPEA )
			( NOT_EXPLAINED_RECON_TAURUS_1 )
			( NOT_EXPLAINED_FULL_OBS_SEQUENCE )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( ROOT-ACCESS-OBTAINED_CASSIOPEA )
		)
	)
	(:action GAIN-ROOT_CASSIOPEA
		:parameters ()
		:precondition
		(and
			( ACCESS-OBTAINED_CASSIOPEA )
			( NOT_EXPLAINED_BREAK-INTO_TAURUS_1 )
			( NOT_EXPLAINED_FULL_OBS_SEQUENCE )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( ROOT-ACCESS-OBTAINED_CASSIOPEA )
		)
	)
	(:action GAIN-ROOT_CASSIOPEA
		:parameters ()
		:precondition
		(and
			( ACCESS-OBTAINED_CASSIOPEA )
			( NOT_EXPLAINED_MODIFY-FILES_TAURUS_1 )
			( NOT_EXPLAINED_FULL_OBS_SEQUENCE )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( ROOT-ACCESS-OBTAINED_CASSIOPEA )
		)
	)
	(:action GAIN-ROOT_CASSIOPEA
		:parameters ()
		:precondition
		(and
			( ACCESS-OBTAINED_CASSIOPEA )
			( NOT_EXPLAINED_CLEAN_TAURUS_1 )
			( NOT_EXPLAINED_FULL_OBS_SEQUENCE )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( ROOT-ACCESS-OBTAINED_CASSIOPEA )
		)
	)
	(:action GAIN-ROOT_CASSIOPEA
		:parameters ()
		:precondition
		(and
			( ACCESS-OBTAINED_CASSIOPEA )
			( NOT_EXPLAINED_RECON_ARIES_1 )
			( NOT_EXPLAINED_FULL_OBS_SEQUENCE )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( ROOT-ACCESS-OBTAINED_CASSIOPEA )
		)
	)
	(:action GAIN-ROOT_CASSIOPEA
		:parameters ()
		:precondition
		(and
			( ACCESS-OBTAINED_CASSIOPEA )
			( NOT_EXPLAINED_BREAK-INTO_ARIES_1 )
			( NOT_EXPLAINED_FULL_OBS_SEQUENCE )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( ROOT-ACCESS-OBTAINED_CASSIOPEA )
		)
	)
	(:action GAIN-ROOT_CASSIOPEA
		:parameters ()
		:precondition
		(and
			( ACCESS-OBTAINED_CASSIOPEA )
			( NOT_EXPLAINED_MODIFY-FILES_ARIES_1 )
			( NOT_EXPLAINED_FULL_OBS_SEQUENCE )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( ROOT-ACCESS-OBTAINED_CASSIOPEA )
		)
	)
	(:action GAIN-ROOT_CASSIOPEA
		:parameters ()
		:precondition
		(and
			( ACCESS-OBTAINED_CASSIOPEA )
			( NOT_EXPLAINED_CLEAN_ARIES_1 )
			( NOT_EXPLAINED_FULL_OBS_SEQUENCE )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( ROOT-ACCESS-OBTAINED_CASSIOPEA )
		)
	)
	(:action GAIN-ROOT_CASSIOPEA
		:parameters ()
		:precondition
		(and
			( ACCESS-OBTAINED_CASSIOPEA )
			( NOT_EXPLAINED_RECON_CASSIOPEA_1 )
			( NOT_EXPLAINED_FULL_OBS_SEQUENCE )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( ROOT-ACCESS-OBTAINED_CASSIOPEA )
		)
	)
	(:action GAIN-ROOT_CASSIOPEA
		:parameters ()
		:precondition
		(and
			( ACCESS-OBTAINED_CASSIOPEA )
			( NOT_EXPLAINED_BREAK-INTO_CASSIOPEA_1 )
			( NOT_EXPLAINED_FULL_OBS_SEQUENCE )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( ROOT-ACCESS-OBTAINED_CASSIOPEA )
		)
	)
	(:action GAIN-ROOT_CASSIOPEA
		:parameters ()
		:precondition
		(and
			( ACCESS-OBTAINED_CASSIOPEA )
			( NOT_EXPLAINED_CLEAN_CASSIOPEA_1 )
			( NOT_EXPLAINED_FULL_OBS_SEQUENCE )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( ROOT-ACCESS-OBTAINED_CASSIOPEA )
		)
	)
	(:action EXPLAIN_OBS_DOWNLOAD-FILES_CASSIOPEA_1
		:parameters ()
		:precondition
		(and
			( ROOT-ACCESS-OBTAINED_CASSIOPEA )
			( EXPLAINED_GAIN-ROOT_CASSIOPEA_1 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( FILES-DOWNLOADED_CASSIOPEA )
			 ( EXPLAINED_DOWNLOAD-FILES_CASSIOPEA_1 )
			 ( EXPLAINED_FULL_OBS_SEQUENCE )
			 (not ( NOT_EXPLAINED_DOWNLOAD-FILES_CASSIOPEA_1 ))
			 (not ( NOT_EXPLAINED_FULL_OBS_SEQUENCE ))
		)
	)
	(:action DOWNLOAD-FILES_CASSIOPEA
		:parameters ()
		:precondition
		(and
			( ROOT-ACCESS-OBTAINED_CASSIOPEA )
			( NOT_EXPLAINED_RECON_TAURUS_1 )
			( NOT_EXPLAINED_FULL_OBS_SEQUENCE )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( FILES-DOWNLOADED_CASSIOPEA )
		)
	)
	(:action DOWNLOAD-FILES_CASSIOPEA
		:parameters ()
		:precondition
		(and
			( ROOT-ACCESS-OBTAINED_CASSIOPEA )
			( NOT_EXPLAINED_BREAK-INTO_TAURUS_1 )
			( NOT_EXPLAINED_FULL_OBS_SEQUENCE )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( FILES-DOWNLOADED_CASSIOPEA )
		)
	)
	(:action DOWNLOAD-FILES_CASSIOPEA
		:parameters ()
		:precondition
		(and
			( ROOT-ACCESS-OBTAINED_CASSIOPEA )
			( NOT_EXPLAINED_MODIFY-FILES_TAURUS_1 )
			( NOT_EXPLAINED_FULL_OBS_SEQUENCE )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( FILES-DOWNLOADED_CASSIOPEA )
		)
	)
	(:action DOWNLOAD-FILES_CASSIOPEA
		:parameters ()
		:precondition
		(and
			( ROOT-ACCESS-OBTAINED_CASSIOPEA )
			( NOT_EXPLAINED_CLEAN_TAURUS_1 )
			( NOT_EXPLAINED_FULL_OBS_SEQUENCE )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( FILES-DOWNLOADED_CASSIOPEA )
		)
	)
	(:action DOWNLOAD-FILES_CASSIOPEA
		:parameters ()
		:precondition
		(and
			( ROOT-ACCESS-OBTAINED_CASSIOPEA )
			( NOT_EXPLAINED_RECON_ARIES_1 )
			( NOT_EXPLAINED_FULL_OBS_SEQUENCE )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( FILES-DOWNLOADED_CASSIOPEA )
		)
	)
	(:action DOWNLOAD-FILES_CASSIOPEA
		:parameters ()
		:precondition
		(and
			( ROOT-ACCESS-OBTAINED_CASSIOPEA )
			( NOT_EXPLAINED_BREAK-INTO_ARIES_1 )
			( NOT_EXPLAINED_FULL_OBS_SEQUENCE )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( FILES-DOWNLOADED_CASSIOPEA )
		)
	)
	(:action DOWNLOAD-FILES_CASSIOPEA
		:parameters ()
		:precondition
		(and
			( ROOT-ACCESS-OBTAINED_CASSIOPEA )
			( NOT_EXPLAINED_MODIFY-FILES_ARIES_1 )
			( NOT_EXPLAINED_FULL_OBS_SEQUENCE )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( FILES-DOWNLOADED_CASSIOPEA )
		)
	)
	(:action DOWNLOAD-FILES_CASSIOPEA
		:parameters ()
		:precondition
		(and
			( ROOT-ACCESS-OBTAINED_CASSIOPEA )
			( NOT_EXPLAINED_CLEAN_ARIES_1 )
			( NOT_EXPLAINED_FULL_OBS_SEQUENCE )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( FILES-DOWNLOADED_CASSIOPEA )
		)
	)
	(:action DOWNLOAD-FILES_CASSIOPEA
		:parameters ()
		:precondition
		(and
			( ROOT-ACCESS-OBTAINED_CASSIOPEA )
			( NOT_EXPLAINED_RECON_CASSIOPEA_1 )
			( NOT_EXPLAINED_FULL_OBS_SEQUENCE )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( FILES-DOWNLOADED_CASSIOPEA )
		)
	)
	(:action DOWNLOAD-FILES_CASSIOPEA
		:parameters ()
		:precondition
		(and
			( ROOT-ACCESS-OBTAINED_CASSIOPEA )
			( NOT_EXPLAINED_BREAK-INTO_CASSIOPEA_1 )
			( NOT_EXPLAINED_FULL_OBS_SEQUENCE )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( FILES-DOWNLOADED_CASSIOPEA )
		)
	)
	(:action DOWNLOAD-FILES_CASSIOPEA
		:parameters ()
		:precondition
		(and
			( ROOT-ACCESS-OBTAINED_CASSIOPEA )
			( NOT_EXPLAINED_CLEAN_CASSIOPEA_1 )
			( NOT_EXPLAINED_FULL_OBS_SEQUENCE )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( FILES-DOWNLOADED_CASSIOPEA )
		)
	)
	(:action DOWNLOAD-FILES_CASSIOPEA
		:parameters ()
		:precondition
		(and
			( ROOT-ACCESS-OBTAINED_CASSIOPEA )
			( NOT_EXPLAINED_GAIN-ROOT_CASSIOPEA_1 )
			( NOT_EXPLAINED_FULL_OBS_SEQUENCE )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( FILES-DOWNLOADED_CASSIOPEA )
		)
	)
	(:action STEAL-DATA_TAURUS
		:parameters ()
		:precondition
		(and
			( DELETED-LOGS_TAURUS )
			( FILES-DOWNLOADED_TAURUS )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( DATA-STOLEN-FROM_TAURUS )
		)
	)
	(:action STEAL-DATA_LIBRA
		:parameters ()
		:precondition
		(and
			( DELETED-LOGS_LIBRA )
			( FILES-DOWNLOADED_LIBRA )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( DATA-STOLEN-FROM_LIBRA )
		)
	)
	(:action STEAL-DATA_LEO
		:parameters ()
		:precondition
		(and
			( DELETED-LOGS_LEO )
			( FILES-DOWNLOADED_LEO )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( DATA-STOLEN-FROM_LEO )
		)
	)
	(:action STEAL-DATA_ARIES
		:parameters ()
		:precondition
		(and
			( DELETED-LOGS_ARIES )
			( FILES-DOWNLOADED_ARIES )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( DATA-STOLEN-FROM_ARIES )
		)
	)
	(:action STEAL-DATA_VIRGO
		:parameters ()
		:precondition
		(and
			( DELETED-LOGS_VIRGO )
			( FILES-DOWNLOADED_VIRGO )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( DATA-STOLEN-FROM_VIRGO )
		)
	)
	(:action STEAL-DATA_SCORPIO
		:parameters ()
		:precondition
		(and
			( DELETED-LOGS_SCORPIO )
			( FILES-DOWNLOADED_SCORPIO )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( DATA-STOLEN-FROM_SCORPIO )
		)
	)
	(:action STEAL-DATA_SAGITTARIUS
		:parameters ()
		:precondition
		(and
			( DELETED-LOGS_SAGITTARIUS )
			( FILES-DOWNLOADED_SAGITTARIUS )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( DATA-STOLEN-FROM_SAGITTARIUS )
		)
	)
	(:action STEAL-DATA_ANDROMEDA
		:parameters ()
		:precondition
		(and
			( DELETED-LOGS_ANDROMEDA )
			( FILES-DOWNLOADED_ANDROMEDA )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( DATA-STOLEN-FROM_ANDROMEDA )
		)
	)
	(:action STEAL-DATA_CASSIOPEA
		:parameters ()
		:precondition
		(and
			( DELETED-LOGS_CASSIOPEA )
			( FILES-DOWNLOADED_CASSIOPEA )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( DATA-STOLEN-FROM_CASSIOPEA )
		)
	)
	(:action STEAL-DATA_PERSEUS
		:parameters ()
		:precondition
		(and
			( DELETED-LOGS_PERSEUS )
			( FILES-DOWNLOADED_PERSEUS )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( DATA-STOLEN-FROM_PERSEUS )
		)
	)
	(:action DOWNLOAD-FILES_TAURUS
		:parameters ()
		:precondition
		(and
			( ROOT-ACCESS-OBTAINED_TAURUS )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( FILES-DOWNLOADED_TAURUS )
		)
	)
	(:action DOWNLOAD-FILES_LIBRA
		:parameters ()
		:precondition
		(and
			( ROOT-ACCESS-OBTAINED_LIBRA )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( FILES-DOWNLOADED_LIBRA )
		)
	)
	(:action DOWNLOAD-FILES_LEO
		:parameters ()
		:precondition
		(and
			( ROOT-ACCESS-OBTAINED_LEO )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( FILES-DOWNLOADED_LEO )
		)
	)
	(:action DOWNLOAD-FILES_ARIES
		:parameters ()
		:precondition
		(and
			( ROOT-ACCESS-OBTAINED_ARIES )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( FILES-DOWNLOADED_ARIES )
		)
	)
	(:action DOWNLOAD-FILES_VIRGO
		:parameters ()
		:precondition
		(and
			( ROOT-ACCESS-OBTAINED_VIRGO )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( FILES-DOWNLOADED_VIRGO )
		)
	)
	(:action DOWNLOAD-FILES_SCORPIO
		:parameters ()
		:precondition
		(and
			( ROOT-ACCESS-OBTAINED_SCORPIO )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( FILES-DOWNLOADED_SCORPIO )
		)
	)
	(:action DOWNLOAD-FILES_SAGITTARIUS
		:parameters ()
		:precondition
		(and
			( ROOT-ACCESS-OBTAINED_SAGITTARIUS )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( FILES-DOWNLOADED_SAGITTARIUS )
		)
	)
	(:action DOWNLOAD-FILES_ANDROMEDA
		:parameters ()
		:precondition
		(and
			( ROOT-ACCESS-OBTAINED_ANDROMEDA )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( FILES-DOWNLOADED_ANDROMEDA )
		)
	)
	(:action DOWNLOAD-FILES_PERSEUS
		:parameters ()
		:precondition
		(and
			( ROOT-ACCESS-OBTAINED_PERSEUS )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( FILES-DOWNLOADED_PERSEUS )
		)
	)
	(:action GAIN-ROOT_TAURUS
		:parameters ()
		:precondition
		(and
			( ACCESS-OBTAINED_TAURUS )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( ROOT-ACCESS-OBTAINED_TAURUS )
		)
	)
	(:action GAIN-ROOT_LIBRA
		:parameters ()
		:precondition
		(and
			( ACCESS-OBTAINED_LIBRA )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( ROOT-ACCESS-OBTAINED_LIBRA )
		)
	)
	(:action GAIN-ROOT_LEO
		:parameters ()
		:precondition
		(and
			( ACCESS-OBTAINED_LEO )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( ROOT-ACCESS-OBTAINED_LEO )
		)
	)
	(:action GAIN-ROOT_ARIES
		:parameters ()
		:precondition
		(and
			( ACCESS-OBTAINED_ARIES )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( ROOT-ACCESS-OBTAINED_ARIES )
		)
	)
	(:action GAIN-ROOT_VIRGO
		:parameters ()
		:precondition
		(and
			( ACCESS-OBTAINED_VIRGO )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( ROOT-ACCESS-OBTAINED_VIRGO )
		)
	)
	(:action GAIN-ROOT_SCORPIO
		:parameters ()
		:precondition
		(and
			( ACCESS-OBTAINED_SCORPIO )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( ROOT-ACCESS-OBTAINED_SCORPIO )
		)
	)
	(:action GAIN-ROOT_SAGITTARIUS
		:parameters ()
		:precondition
		(and
			( ACCESS-OBTAINED_SAGITTARIUS )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( ROOT-ACCESS-OBTAINED_SAGITTARIUS )
		)
	)
	(:action GAIN-ROOT_ANDROMEDA
		:parameters ()
		:precondition
		(and
			( ACCESS-OBTAINED_ANDROMEDA )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( ROOT-ACCESS-OBTAINED_ANDROMEDA )
		)
	)
	(:action GAIN-ROOT_PERSEUS
		:parameters ()
		:precondition
		(and
			( ACCESS-OBTAINED_PERSEUS )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( ROOT-ACCESS-OBTAINED_PERSEUS )
		)
	)
	(:action VANDALIZE_TAURUS
		:parameters ()
		:precondition
		(and
			( DELETED-LOGS_TAURUS )
			( MODIFIED-FILES_TAURUS )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( VANDALIZED_TAURUS )
		)
	)
	(:action VANDALIZE_LIBRA
		:parameters ()
		:precondition
		(and
			( DELETED-LOGS_LIBRA )
			( MODIFIED-FILES_LIBRA )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( VANDALIZED_LIBRA )
		)
	)
	(:action VANDALIZE_LEO
		:parameters ()
		:precondition
		(and
			( DELETED-LOGS_LEO )
			( MODIFIED-FILES_LEO )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( VANDALIZED_LEO )
		)
	)
	(:action VANDALIZE_ARIES
		:parameters ()
		:precondition
		(and
			( DELETED-LOGS_ARIES )
			( MODIFIED-FILES_ARIES )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( VANDALIZED_ARIES )
		)
	)
	(:action VANDALIZE_VIRGO
		:parameters ()
		:precondition
		(and
			( DELETED-LOGS_VIRGO )
			( MODIFIED-FILES_VIRGO )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( VANDALIZED_VIRGO )
		)
	)
	(:action VANDALIZE_SCORPIO
		:parameters ()
		:precondition
		(and
			( DELETED-LOGS_SCORPIO )
			( MODIFIED-FILES_SCORPIO )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( VANDALIZED_SCORPIO )
		)
	)
	(:action VANDALIZE_SAGITTARIUS
		:parameters ()
		:precondition
		(and
			( DELETED-LOGS_SAGITTARIUS )
			( MODIFIED-FILES_SAGITTARIUS )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( VANDALIZED_SAGITTARIUS )
		)
	)
	(:action VANDALIZE_ANDROMEDA
		:parameters ()
		:precondition
		(and
			( DELETED-LOGS_ANDROMEDA )
			( MODIFIED-FILES_ANDROMEDA )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( VANDALIZED_ANDROMEDA )
		)
	)
	(:action VANDALIZE_CASSIOPEA
		:parameters ()
		:precondition
		(and
			( DELETED-LOGS_CASSIOPEA )
			( MODIFIED-FILES_CASSIOPEA )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( VANDALIZED_CASSIOPEA )
		)
	)
	(:action VANDALIZE_PERSEUS
		:parameters ()
		:precondition
		(and
			( DELETED-LOGS_PERSEUS )
			( MODIFIED-FILES_PERSEUS )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( VANDALIZED_PERSEUS )
		)
	)
	(:action CLEAN_LIBRA
		:parameters ()
		:precondition
		(and
			( ACCESS-OBTAINED_LIBRA )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( DELETED-LOGS_LIBRA )
		)
	)
	(:action CLEAN_LEO
		:parameters ()
		:precondition
		(and
			( ACCESS-OBTAINED_LEO )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( DELETED-LOGS_LEO )
		)
	)
	(:action CLEAN_VIRGO
		:parameters ()
		:precondition
		(and
			( ACCESS-OBTAINED_VIRGO )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( DELETED-LOGS_VIRGO )
		)
	)
	(:action CLEAN_SCORPIO
		:parameters ()
		:precondition
		(and
			( ACCESS-OBTAINED_SCORPIO )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( DELETED-LOGS_SCORPIO )
		)
	)
	(:action CLEAN_SAGITTARIUS
		:parameters ()
		:precondition
		(and
			( ACCESS-OBTAINED_SAGITTARIUS )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( DELETED-LOGS_SAGITTARIUS )
		)
	)
	(:action CLEAN_ANDROMEDA
		:parameters ()
		:precondition
		(and
			( ACCESS-OBTAINED_ANDROMEDA )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( DELETED-LOGS_ANDROMEDA )
		)
	)
	(:action CLEAN_PERSEUS
		:parameters ()
		:precondition
		(and
			( ACCESS-OBTAINED_PERSEUS )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( DELETED-LOGS_PERSEUS )
		)
	)
	(:action MODIFY-FILES_LIBRA
		:parameters ()
		:precondition
		(and
			( ACCESS-OBTAINED_LIBRA )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( MODIFIED-FILES_LIBRA )
		)
	)
	(:action MODIFY-FILES_LEO
		:parameters ()
		:precondition
		(and
			( ACCESS-OBTAINED_LEO )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( MODIFIED-FILES_LEO )
		)
	)
	(:action MODIFY-FILES_VIRGO
		:parameters ()
		:precondition
		(and
			( ACCESS-OBTAINED_VIRGO )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( MODIFIED-FILES_VIRGO )
		)
	)
	(:action MODIFY-FILES_SCORPIO
		:parameters ()
		:precondition
		(and
			( ACCESS-OBTAINED_SCORPIO )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( MODIFIED-FILES_SCORPIO )
		)
	)
	(:action MODIFY-FILES_SAGITTARIUS
		:parameters ()
		:precondition
		(and
			( ACCESS-OBTAINED_SAGITTARIUS )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( MODIFIED-FILES_SAGITTARIUS )
		)
	)
	(:action MODIFY-FILES_ANDROMEDA
		:parameters ()
		:precondition
		(and
			( ACCESS-OBTAINED_ANDROMEDA )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( MODIFIED-FILES_ANDROMEDA )
		)
	)
	(:action MODIFY-FILES_CASSIOPEA
		:parameters ()
		:precondition
		(and
			( ACCESS-OBTAINED_CASSIOPEA )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( MODIFIED-FILES_CASSIOPEA )
		)
	)
	(:action MODIFY-FILES_PERSEUS
		:parameters ()
		:precondition
		(and
			( ACCESS-OBTAINED_PERSEUS )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( MODIFIED-FILES_PERSEUS )
		)
	)
	(:action BREAK-INTO_LIBRA
		:parameters ()
		:precondition
		(and
			( RECON-PERFORMED_LIBRA )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( ACCESS-OBTAINED_LIBRA )
		)
	)
	(:action BREAK-INTO_LEO
		:parameters ()
		:precondition
		(and
			( RECON-PERFORMED_LEO )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( ACCESS-OBTAINED_LEO )
		)
	)
	(:action BREAK-INTO_VIRGO
		:parameters ()
		:precondition
		(and
			( RECON-PERFORMED_VIRGO )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( ACCESS-OBTAINED_VIRGO )
		)
	)
	(:action BREAK-INTO_SCORPIO
		:parameters ()
		:precondition
		(and
			( RECON-PERFORMED_SCORPIO )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( ACCESS-OBTAINED_SCORPIO )
		)
	)
	(:action BREAK-INTO_SAGITTARIUS
		:parameters ()
		:precondition
		(and
			( RECON-PERFORMED_SAGITTARIUS )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( ACCESS-OBTAINED_SAGITTARIUS )
		)
	)
	(:action BREAK-INTO_ANDROMEDA
		:parameters ()
		:precondition
		(and
			( RECON-PERFORMED_ANDROMEDA )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( ACCESS-OBTAINED_ANDROMEDA )
		)
	)
	(:action BREAK-INTO_PERSEUS
		:parameters ()
		:precondition
		(and
			( RECON-PERFORMED_PERSEUS )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( ACCESS-OBTAINED_PERSEUS )
		)
	)
	(:action INFORMATION-GATHERING_TAURUS
		:parameters ()
		:precondition
		(and
			( RECON-PERFORMED_TAURUS )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( INFORMATION-GATHERED_TAURUS )
		)
	)
	(:action INFORMATION-GATHERING_LIBRA
		:parameters ()
		:precondition
		(and
			( RECON-PERFORMED_LIBRA )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( INFORMATION-GATHERED_LIBRA )
		)
	)
	(:action INFORMATION-GATHERING_LEO
		:parameters ()
		:precondition
		(and
			( RECON-PERFORMED_LEO )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( INFORMATION-GATHERED_LEO )
		)
	)
	(:action INFORMATION-GATHERING_ARIES
		:parameters ()
		:precondition
		(and
			( RECON-PERFORMED_ARIES )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( INFORMATION-GATHERED_ARIES )
		)
	)
	(:action INFORMATION-GATHERING_VIRGO
		:parameters ()
		:precondition
		(and
			( RECON-PERFORMED_VIRGO )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( INFORMATION-GATHERED_VIRGO )
		)
	)
	(:action INFORMATION-GATHERING_SCORPIO
		:parameters ()
		:precondition
		(and
			( RECON-PERFORMED_SCORPIO )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( INFORMATION-GATHERED_SCORPIO )
		)
	)
	(:action INFORMATION-GATHERING_SAGITTARIUS
		:parameters ()
		:precondition
		(and
			( RECON-PERFORMED_SAGITTARIUS )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( INFORMATION-GATHERED_SAGITTARIUS )
		)
	)
	(:action INFORMATION-GATHERING_ANDROMEDA
		:parameters ()
		:precondition
		(and
			( RECON-PERFORMED_ANDROMEDA )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( INFORMATION-GATHERED_ANDROMEDA )
		)
	)
	(:action INFORMATION-GATHERING_CASSIOPEA
		:parameters ()
		:precondition
		(and
			( RECON-PERFORMED_CASSIOPEA )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( INFORMATION-GATHERED_CASSIOPEA )
		)
	)
	(:action INFORMATION-GATHERING_PERSEUS
		:parameters ()
		:precondition
		(and
			( RECON-PERFORMED_PERSEUS )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( INFORMATION-GATHERED_PERSEUS )
		)
	)
	(:action RECON_LIBRA
		:parameters ()
		:precondition
		(and
		)
		:effect
		(and
			(increase (total-cost) 1)
			( RECON-PERFORMED_LIBRA )
		)
	)
	(:action RECON_LEO
		:parameters ()
		:precondition
		(and
		)
		:effect
		(and
			(increase (total-cost) 1)
			( RECON-PERFORMED_LEO )
		)
	)
	(:action RECON_VIRGO
		:parameters ()
		:precondition
		(and
		)
		:effect
		(and
			(increase (total-cost) 1)
			( RECON-PERFORMED_VIRGO )
		)
	)
	(:action RECON_SCORPIO
		:parameters ()
		:precondition
		(and
		)
		:effect
		(and
			(increase (total-cost) 1)
			( RECON-PERFORMED_SCORPIO )
		)
	)
	(:action RECON_SAGITTARIUS
		:parameters ()
		:precondition
		(and
		)
		:effect
		(and
			(increase (total-cost) 1)
			( RECON-PERFORMED_SAGITTARIUS )
		)
	)
	(:action RECON_ANDROMEDA
		:parameters ()
		:precondition
		(and
		)
		:effect
		(and
			(increase (total-cost) 1)
			( RECON-PERFORMED_ANDROMEDA )
		)
	)
	(:action RECON_PERSEUS
		:parameters ()
		:precondition
		(and
		)
		:effect
		(and
			(increase (total-cost) 1)
			( RECON-PERFORMED_PERSEUS )
		)
	)

)
