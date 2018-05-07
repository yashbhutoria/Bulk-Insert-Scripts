drop table mapVetricaltoBU
CREATE TABLE mapVetricaltoBU(
 [insert_unit] NVARCHAR(max),
 [Parent] NVARCHAR(100), 
 [Write] NVARCHAR(50), 
 [Read] NVARCHAR(100), 
 [Code] NVARCHAR(100), 
 [Status] NVARCHAR(100), 
 [Vertical Subset Except Default] NVARCHAR(100), 
 [Vertical Subset] NVARCHAR(100), 
 [SS_DefaultVertical] NVARCHAR(100), 
 [Description] NVARCHAR(max), 
 [VERTICAL Status] NVARCHAR(100), 
 [Vertical] NVARCHAR(max), 
 [LOB Link] NVARCHAR(max), 
 [BU] NVARCHAR(100), 
 [User-Matrix BU] NVARCHAR(100), 
 [User-Matrix LOB] NVARCHAR(100), 
 [User-Matrix Vertical] NVARCHAR(max), 
 [LOB] NVARCHAR(max), 
 [Default Vertical BU NH] NVARCHAR(100), 
 [Default Vertical LOB NH] NVARCHAR(100), 
 [Group Hierarchy] NVARCHAR(100), 
 [BU Group Hierarchy] NVARCHAR(30), 
 [Vertical - B3] NVARCHAR(max), 
 [xparent-code] NVARCHAR(100), 
 [Test] NVARCHAR(max)
);


BULK INSERT [dbo].[mapVetricaltoBU]
FROM 'D:\binset\mapVetricaltoBU.csv'
WITH
(
FIRSTROW = 2,
FIELDTERMINATOR= ',',
ROWTERMINATOR = '\n'
)