CREATE TABLE [Current Month] (
    [Time] varchar(50),
    [Vertical Subset Except Default] varchar(max),
    [Current Headcount] int,
    [AOP Vacant Positions] int,
    [TA Open] int,
    [Attrition %] int,
    [Attrition Backfills] int,
    [Sub Grp Vertical] int
)

BULK INSERT [dbo].[Current Month]
FROM 'D:\binset\Current Month.txt'
WITH
(
FIRSTROW = 2,
FIELDTERMINATOR= '\t',
ROWTERMINATOR = '\n'
)