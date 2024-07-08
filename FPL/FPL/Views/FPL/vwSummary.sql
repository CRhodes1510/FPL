CREATE VIEW [FPL].[vwSummary]
AS

WITH ctefplprep
AS
(
	SELECT [Player],
		   [Season],
		   [Player&Points] = CONCAT([Player], ' (', FORMAT([Points], 'N0'), ')'),
		   [Points],
           [Position] = RANK() OVER ( PARTITION BY [Season] ORDER BY [Points] DESC)
    FROM [FPL].[Results]
    WHERE 1 = 1
		AND [Game] = 'Normal'
		AND [Season] <> '2013/14'

)
SELECT [Position],
       [2014/15],
       [2015/16],
       [2016/17],
       [2017/18],
       [2018/19],
       [2019/20],
       [2020/21],
       [2021/22],
	   [2022/23],
	   [2023/24]
	   --[2024/25]
FROM 
(
	SELECT [Position],
           [Player&Points],
           [Season]
    FROM ctefplprep) src
    PIVOT (
			MAX([Player&Points]) FOR [Season] IN ( [2014/15], [2015/16], [2016/17], [2017/18], [2018/19], [2019/20],
												   [2020/21], [2021/22], [2022/23], [2023/24] )
) pvt;