drop table CurrencyConversionRate2018;
CREATE TABLE CurrencyConversionRate2018(
[Currency] VARCHAR(10),
[AOP FY19] FLOAT,
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
                'Excel 12.0;Database=D:\binset\CurrencyConversionRate2018.xlsx;IMEX=1',
                'SELECT * FROM [Sheet1$]');