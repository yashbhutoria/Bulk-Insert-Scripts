CREATE TABLE [dbo].[Current Period](
	[Time] [varchar](50) NULL,
	[Vertical Subset Except Default] [varchar](100) NULL,
	[Planned Not Hire Position] [varchar](50) NULL,
	[Position Start Date] DATETIME NULL,
	[First Hire Date] DATETIME NULL,
	[Employee ID] DATETIME NULL,
	[Employee Hired Date] DATETIME NULL,
	[Hired Effective Date] DATETIME NULL,
	[TA Open Hold Date] DATETIME NULL,
	[TA Offered] [varchar](50) NULL,
	[Final Date] DATETIME NULL,
	[Strategy 2 0] [varchar](50) NULL,
	[Planned Not Hired (Positions)] [varchar](50) NULL,
	[Planned Not Hired Amount (USD)] [varchar](50) NULL,
	[Total Days Lost] INT NULL,
	[Avg Days Lost per Employee] INT NULL,
	[Planned Not Hired - Strategy 2 0 (Positions)] INT NULL,
	[Planned Not Hired Amount - Strategy 2 0 Positions (USD)] varchar(100) NULL,
	[Total Days Lost- Strategy 2 0 Positions] INT NULL,
	[Avg Days Lost per Employee- Strategy 2 0 Position] INT NULL,
	[Planned Not Hired Position - All Position] INT NULL,
	[Planned Not Hired Amount - All Position] INT NULL,
	[Plan Yet Open] [varchar](100) NULL,
	[Strategy 2 0 Skills] [varchar](100) NULL,
	[Vertical] [varchar](100) NULL,
	[Grp Hierarchy Vertical] [varchar](50) NULL,
	[Check] [varchar](50) NULL,
	[Current Period] [varchar](50) NULL,
	[---Test---] [varchar](50) NULL
)
;
BULK INSERT [dbo].[Current Period]
FROM 'D:\binset\Current Period.txt'
WITH
(
FIRSTROW = 2,
FIELDTERMINATOR= '\t',
ROWTERMINATOR = '\n'
)