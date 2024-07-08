CREATE VIEW [FPL].[vwAverage]
AS

SELECT [Player],
	   [TotalPoints] = FORMAT(SUM(ISNULL([Points], 0)), 'N0'),
	   [SeasonsPlayed] = FORMAT(COUNT(DISTINCT [Season]), 'N0'),
	   [AvgPoints] = FORMAT(SUM(ISNULL([Points], 0)) / COUNT(DISTINCT [Season]), 'N0')
FROM [FPL].[Results]
WHERE 1 = 1
		AND [Game] = 'Normal'
		AND [Season] <> '2013/14'
GROUP BY [Player]
--ORDER BY SUM(ISNULL([Points], 0)) / COUNT(DISTINCT [Season]) DESC -- ORDER BY [AvgPoints]