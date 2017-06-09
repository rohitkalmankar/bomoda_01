create database bomoda
go

	
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

					IF NOT EXISTS (SELECT * FROM sys.objects 
								WHERE object_id = OBJECT_ID(N'[dbo].[stg_biz]') AND type in (N'U'))

			CREATE TABLE dbo.stg_clicks
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
