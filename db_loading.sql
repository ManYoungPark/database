CREATE DATABASE MIA
use MIA

CREATE TABLE [dbo].[MIA_members](
	[수강생번호] [varchar](255) NULL,
	[이름] [varchar](255) NULL,
	[주민번호앞] [varchar](255) NULL,
	[성별] [varchar](255) NULL,
	[전화번호] [varchar](255) NULL,
	[이메일주소] [varchar](255) NULL,
	[근무지코드] [varchar](255) NULL
) ON [PRIMARY]
GO



bulk insert MIA_members from 'F:\KIOM\testR\MIA_members.csv' 
with (
	FIRSTROW =2,
	FIELDTERMINATOR=',',
	ROWTERMINATOR ='\n'
)


CREATE TABLE [dbo].[workplace_master](
	[근무지코드] [varchar](255) NULL,
	[근무지명] [varchar](255) NULL
) ON [PRIMARY]
GO


bulk insert workplace_master from 'F:\KIOM\testR\workplace_master.csv' 
with (
	FIRSTROW =2,
	FIELDTERMINATOR=',',
	ROWTERMINATOR ='\n'
)



CREATE TABLE [dbo].[exam_grade](
	[수강생번호] [varchar](255) NULL,
	[수강과목] [varchar](255) NULL,
	[중간고사] [float] NULL,
	[기말고사] [float] NULL
) ON [PRIMARY]
GO


bulk insert exam_grade from 'F:\KIOM\testR\exam_grade.csv' 
with (
	FIRSTROW =2,
	FIELDTERMINATOR=',',
	ROWTERMINATOR ='\n'
)

