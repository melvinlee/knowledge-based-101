#SQL Replication Tips

## Identify the publisher database id
	SELECT * FROM MSpublisher_databases

## To locate articles that not in sync

	SELECT * FROM dbo.MSarticles
	WHERE article_id in (
	    SELECT article_id FROM MSrepl_commands
	    WHERE xact_seqno =  0x00032F6B00000845000500000000)

## To identify the problematic command 
	EXEC sp_browsereplcmds 
	@xact_seqno_start = '0x00032F6B0000084B000300000000', 
	@xact_seqno_end = '0x00032F6B0000084B000300000000',
	@publisher_database_id = 18,
	@command_id = 1


## Delete the command from MSRepl_commands using the xact_seqno and command_id
	SELECT * FROM MSrepl_commands WHERE xact_seqno = 0x00032F6B0000084B0003


	DELETE FROM  MSrepl_commands where xact_seqno = 0x00032F6B0000084B0003  and command_id = 1 and publisher_database_id = 18

