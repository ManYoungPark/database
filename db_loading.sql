CREATE DATABASE MIA
use MIA

CREATE TABLE [dbo].[MIA_members](
	[��������ȣ] [varchar](255) NULL,
	[�̸�] [varchar](255) NULL,
	[�ֹι�ȣ��] [varchar](255) NULL,
	[����] [varchar](255) NULL,
	[��ȭ��ȣ] [varchar](255) NULL,
	[�̸����ּ�] [varchar](255) NULL,
	[�ٹ����ڵ�] [varchar](255) NULL
) ON [PRIMARY]
GO



bulk insert MIA_members from 'F:\KIOM\testR\MIA_members.csv' 
with (
	FIRSTROW =2,
	FIELDTERMINATOR=',',
	ROWTERMINATOR ='\n'
)


CREATE TABLE [dbo].[workplace_master](
	[�ٹ����ڵ�] [varchar](255) NULL,
	[�ٹ�����] [varchar](255) NULL
) ON [PRIMARY]
GO


bulk insert workplace_master from 'F:\KIOM\testR\workplace_master.csv' 
with (
	FIRSTROW =2,
	FIELDTERMINATOR=',',
	ROWTERMINATOR ='\n'
)



CREATE TABLE [dbo].[exam_grade](
	[��������ȣ] [varchar](255) NULL,
	[��������] [varchar](255) NULL,
	[�߰����] [float] NULL,
	[�⸻���] [float] NULL
) ON [PRIMARY]
GO


bulk insert exam_grade from 'F:\KIOM\testR\exam_grade.csv' 
with (
	FIRSTROW =2,
	FIELDTERMINATOR=',',
	ROWTERMINATOR ='\n'
)

