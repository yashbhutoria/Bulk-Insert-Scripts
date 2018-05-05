CREATE TABLE [Current Period] (
    [Time] varchar(50),
    [Vertical Subset Except Default] varchar(max),
    [Planned Not Hire Position] varchar(50),
    [Position Start Date] DATETIME,
    [First Hire Date] DATETIME,
    [Employee ID] varchar(50),
    [Employee Hired Date] DATETIME,
    [Hired Effective Date] DATETIME,
    [TA Open Hold Date] DATETIME,
    [TA Offered] varchar(50),
    [Final Date] DATETIME,
    [Strategy 2 0] varchar(50),
    [Planned Not Hired (Positions)] int,
    [Planned Not Hired Amount (USD)] FLOAT,
    [Total Days Lost] int,
    [Avg Days Lost per Employee] int,
    [Planned Not Hired - Strategy 2 0 (Positions)] varchar(50),
    [Planned Not Hired Amount - Strategy 2 0 Positions (USD)] varchar(50),
    [Total Days Lost- Strategy 2 0 Positions] varchar(50),
    [Avg Days Lost per Employee- Strategy 2 0 Position] varchar(50),
    [Planned Not Hired Position - All Position] varchar(50),
    [Planned Not Hired Amount - All Position] int,
    [Plan Yet Open] varchar(max),
    [Strategy 2 0 Skills] varchar(max),
    [Vertical] varchar(max),
    [Grp Hierarchy Vertical] varchar(50),
    [Check] varchar(50),
    [Current Period] varchar(50),
    [---Test---] varchar(50),
    [Current Headcount] varchar(max),
    [AOP Vacant Positions] varchar(50),
    [TA Open] varchar(50),
    [Attrition %] varchar(50),
    [Attrition Backfills] varchar(50),
    [Sub Grp Vertical] varchar(max)
)

BULK INSERT [dbo].[Current Period]
FROM 'D:\binset\Current Period.txt'
WITH
(
FIRSTROW = 2,
FIELDTERMINATOR= '\t',
ROWTERMINATOR = '\n',
ERRORFILE = 'D:\myRubbishData.log' 
)