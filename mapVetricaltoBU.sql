CREATE TABLE mapVetricaltoBU(
 [insert_unit] NVARCHAR(30),
 [Parent] NVARCHAR(100), 
 [Write] NVARCHAR(50), 
 [Read] NVARCHAR(30), 
 [Code] NVARCHAR(100), 
 [Status] NVARCHAR(100), 
 [Vertical Subset Except Default] NVARCHAR(30), 
 [Vertical Subset] NVARCHAR(30), 
 [SS_DefaultVertical] NVARCHAR(100), 
 [Description] NVARCHAR(30), 
 [VERTICAL Status] NVARCHAR(30), 
 [Vertical] NVARCHAR(30), 
 [LOB Link] NVARCHAR(30), 
 [BU] NVARCHAR(100), 
 [User-Matrix BU] NVARCHAR(100), 
 [User-Matrix LOB] NVARCHAR(30), 
 [User-Matrix Vertical] NVARCHAR(max), 
 [LOB] NVARCHAR(30), 
 [Default Vertical BU NH] NVARCHAR(100), 
 [Default Vertical LOB NH] NVARCHAR(100), 
 [Group Hierarchy] NVARCHAR(30), 
 [BU Group Hierarchy] NVARCHAR(30), 
 [Vertical - B3] NVARCHAR(30), 
 [xparent-code] NVARCHAR(100), 
 [Test] NVARCHAR(max)
);


EXEC sp_configure 'show advanced options', 1
RECONFIGURE
GO
EXEC sp_configure 'ad hoc distributed queries', 1
RECONFIGURE
GO

EXEC master.dbo.sp_MSset_oledb_prop N'Microsoft.ACE.OLEDB.12.0' , N'AllowInProcess' , 1
GO
EXEC master.dbo.sp_MSset_oledb_prop N'Microsoft.ACE.OLEDB.12.0' , N'DynamicParameters' , 1
GO


SELECT * into [CurrencyConversionRate2018]
FROM OPENROWSET('Microsoft.ACE.OLEDB.12.0',
                'Excel 12.0;Database=D:\binset\mapVetricaltoBU.xls;IMEX=1',
                'SELECT * FROM [Sheet1$]');