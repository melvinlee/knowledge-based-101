#MSSQL

##TL;DR

List table

	SELECT table_schema, table_name FROM information_schema.tables WHERE table_schema = '<schema_name>' ORDER BY table_schema, table_name

List all column

	SELECT table_name, column_name, data_type, is_nullable FROM information_schema.columns WHERE table_name = '<table_name>'

Find column name

	SELECT table_schema, table_name, column_name FROM information_schema.columns WHERE column_name LIKE '%<table_name>%'
	
Help

	EXEC sp_help '<table_name>'
	EXEC sp_helpindex '<table_name>'
