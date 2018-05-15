
BULK INSERT [dbo].[STG_Simulation_CY]
FROM 'D:\binset\Simulation - CY.txt'
WITH
(
FIRSTROW = 2,
FIELDTERMINATOR= '\t',
ROWTERMINATOR = '\n'
)
