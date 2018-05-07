CREATE TABLE CurrencyConversionRate2018(
[Currency] VARCHAR(10),
[AOP FY19] FLOAT,
);

BULK INSERT [dbo].[CurrencyConversionRate2018]
FROM 'D:\binset\CurrencyConversionRate2018.csv'
WITH
(
FIRSTROW = 2,
FIELDTERMINATOR= ',',
ROWTERMINATOR = '\n'
)