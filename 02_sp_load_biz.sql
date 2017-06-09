use bomoda
go

CREATE PROCEDURE sp_load_data
@filepath varchar(500),
@table_name varchar(500)
AS
		--== create table a stage table.

		DECLARE @sql varchar(max)
		
		IF NOT EXISTS (SELECT * FROM sys.objects 
								WHERE object_id = OBJECT_ID(N'[dbo].[stg_biz]') AND type in (N'U'))

			CREATE TABLE dbo.stg_biz
			(
				id int identity(1,1) primary key,
				col1 int,
				col2 nvarchar(4000) collate Chinese_PRC_CI_AS,
				col3 nvarchar(4000) collate Chinese_PRC_CI_AS,
				col4 nvarchar(4000) collate Chinese_PRC_CI_AS,
				col5 nvarchar(4000) collate Chinese_PRC_CI_AS,
				col6 nvarchar(4000) collate Chinese_PRC_CI_AS,
				col7 nvarchar(4000) collate Chinese_PRC_CI_AS
			);

		--== Truncate table before loading the new data.

		    TRUNCATE TABLE stg_biz

        --== Using the bulk insert, load the data from the file.
		

		SET @sql = 'BULK INSERT ' + @table_name + ' FROM ' + @filepath  + ' WITH ( FIELDTERMINATOR = ''\t'', ROWTERMINATOR =''\n'') '

EXEC (@sql)
					
GO