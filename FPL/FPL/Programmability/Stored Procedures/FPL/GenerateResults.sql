CREATE PROCEDURE [FPL].[GenerateResults]
AS

CREATE TABLE #Results
(
	[Player]   		   VARCHAR (10) NOT NULL,
	[Game]			   VARCHAR (10) NOT NULL,
	[Season]   		   VARCHAR (10) NOT NULL,
	[Points]   		   INT NOT NULL,
	[OverallRank]	   INT NULL
);
ALTER TABLE #Results ADD CONSTRAINT [unq_Results]  UNIQUE ([Player], [Game], [Season]);

INSERT INTO #Results ([Player], [Game], [Season], [Points], [OverallRank])
VALUES
('Chris R', 'Normal', '2013/14', 288, 3191321),
('Chris R', 'Normal', '2014/15', 1843, 881647),
('Chris R', 'Normal', '2015/16', 2018, 555346),
('Chris R', 'Normal', '2016/17', 2033, 461410),
('Chris R', 'Normal', '2017/18', 1825, 2620759),
('Chris R', 'Normal', '2018/19', 2241, 152575),
('Chris R', 'Normal', '2019/20', 2087, 1023065),
('Chris R', 'Normal', '2020/21', 2178, 1068675),
('Chris R', 'Normal', '2021/22', 2246, 926879),
('Chris R', 'Normal', '2022/23', 2399, 663221),
('Chris R', 'Draft' , '2022/23', 1716, NULL),
('Chris R', 'Normal', '2023/24', 2242, 1657632 ),
-- ('Chris R', '2024/25', , ),
('Tom H', 'Normal', '2014/15', 1851, 834226),
('Tom H', 'Normal', '2015/16', 2086, 266849),
('Tom H', 'Normal', '2016/17', 1651, 2791751),
('Tom H', 'Normal', '2017/18', 1989, 1262720),
('Tom H', 'Normal', '2018/19', 1738, 4503740),
('Tom H', 'Normal', '2019/20', 2275, 83169),
('Tom H', 'Normal', '2020/21', 2410, 71905),
('Tom H', 'Normal', '2021/22', 2506, 97954),
('Tom H', 'Normal', '2022/23', 2507, 150899),
('Tom H', 'Draft' , '2022/23', 1899, NULL),
('Tom H', 'Normal', '2023/24', 2556, 18191),
-- ('Tom H', '2024/25', , ),
('Alex B', 'Normal', '2013/14', 1480, 2635324),
('Alex B', 'Normal', '2014/15', 2056, 103196),
('Alex B', 'Normal', '2015/16', 2007, 610840),
('Alex B', 'Normal', '2016/17', 1781, 1956093),
('Alex B', 'Normal', '2017/18', 1601, 4235345),
('Alex B', 'Normal', '2018/19', 1871, 3402316),
('Alex B', 'Normal', '2019/20', 2095, 950227),
('Alex B', 'Normal', '2020/21', 2214, 816174),
('Alex B', 'Normal', '2021/22', 2375, 379917),
('Alex B', 'Normal', '2022/23', 2331, 1213227),
('Alex B', 'Draft' , '2022/23', 1542, NULL),
('Alex B', 'Normal', '2023/24', 2337, 728778),
-- ('Alex B', '2024/25', , ),
('Jack F', 'Normal', '2014/15', 1778, 1229526),
('Jack F', 'Normal', '2015/16', 2138, 128807),
('Jack F', 'Normal', '2016/17', 1703, 2467782),
('Jack F', 'Normal', '2017/18', 1930, 1762977),
('Jack F', 'Normal', '2018/19', 1792, 4126498),
('Jack F', 'Normal', '2019/20', 2046, 1409891),
('Jack F', 'Normal', '2020/21', 1956, 3050328),
('Jack F', 'Normal', '2021/22', 2332, 529134),
('Jack F', 'Normal', '2022/23', 2406, 1213227),
('Jack F', 'Draft' , '2022/23', 1665, NULL),
('Jack F', 'Normal', '2023/24', 2381, 455984),
-- ('Jack F', '2024/25', , ),
('Adam G', 'Normal', '2014/15', 1992, 235068),
('Adam G', 'Normal', '2015/16', 2179, 62810),
('Adam G', 'Normal', '2016/17', 1904, 1137994),
('Adam G', 'Normal', '2017/18', 1577, 4378434),
('Adam G', 'Normal', '2018/19', 2029, 1544613),
('Adam G', 'Normal', '2019/20', 2062, 1249670),
('Adam G', 'Normal', '2020/21', 2286, 422815),
('Adam G', 'Normal', '2021/22', 2323, 561412),
('Adam G', 'Normal', '2022/23', 2556, 49357),
('Adam G', 'Draft' , '2022/23', 1514, NULL),
('Adam G', 'Normal', '2023/24', 2294, 1093211),
-- ('Adam G', '2024/25', , ),
('Will C', 'Normal', '2015/16', 2071, 321421),
('Will C', 'Normal', '2017/18', 1819, 2662400),
('Will C', 'Normal', '2018/19', 1999, 1890831),
('Will C', 'Normal', '2019/20', 1836, 3860007),
('Will C', 'Normal', '2020/21', 1936, 3242241),
('Will C', 'Normal', '2021/22', 2218, 1086554),
('Will C', 'Normal', '2022/23', 2324, 1281525),
('Will C', 'Draft' , '2022/23', 1509, NULL),
('Will C', 'Normal', '2023/24', 2264, 1402222),
-- ('Will C', '2024/25', , ),
('Jack M', 'Normal', '2021/22', 2000, 2788486),
('Jack M', 'Normal', '2022/23', 2346, 1074915),
('Jack M', 'Normal', '2023/24', 2356, 598141),
-- ('Jack M', '2024/25', , ),
('James R', 'Normal', '2022/23', 2295, 1579793),
('James R', 'Normal', '2023/24', 2359, 581083),
-- ('James R', '2024/25', , ),
('Jamie K', 'Normal', '2022/23', 2280, 1747979),
('Jamie K', 'Draft' , '2022/23', 1582, NULL),
('Jamie K', 'Normal', '2023/24', 2301, 1029171),
-- ('Jamie K', '2024/25', , ),
('El K', 'Normal', '2023/24', 2331, 775065)
;

MERGE INTO [FPL].[Results] AS TARGET
USING #Results AS SOURCE
ON TARGET.[Player] = SOURCE.[Player]
	AND TARGET.[Game] = SOURCE.[Game]
	AND TARGET.[Season] = SOURCE.[Season]
WHEN MATCHED AND EXISTS
(
	SELECT TARGET.[Points], TARGET.[OverallRank]
	EXCEPT
	SELECT SOURCE.[Points], SOURCE.[OverallRank]
)
THEN UPDATE
SET TARGET.[Points] = SOURCE.[Points],
	TARGET.[OverallRank] = SOURCE.[OverallRank]
WHEN NOT MATCHED BY TARGET
THEN INSERT 
(
	[Player],
	[Game],
	[Season],
	[Points],
	[OverallRank]
)
VALUES
(
	SOURCE.[Player],
	SOURCE.[Game],
	SOURCE.[Season],
	SOURCE.[Points],
	SOURCE.[OverallRank]
);