SELECT
            s.ProductKey        as ProductKey
            ,sum(s.SalesAmount) as SalesAmount
FROM        dbo.FactInternetSales s
LEFT JOIN   dbo.DimProduct p
    ON      s.ProductKey = p.ProductKey
GROUP BY    s.ProductKey