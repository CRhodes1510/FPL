CREATE TABLE [FPL].[Results]
(
	[ResultId] 		   INT NOT NULL IDENTITY(1, 1),
	[Player]   		   VARCHAR (10) NOT NULL,
	[Game]			   VARCHAR (10) NOT NULL,
	[Season]   		   VARCHAR (10) NOT NULL,
	[Points]   		   INT NOT NULL,
	[OverallRank]	   INT NULL,
	CONSTRAINT [PK_Results] PRIMARY KEY ([ResultId])
);
GO
ALTER TABLE [FPL].[Results] ADD CONSTRAINT [unq_Results]  UNIQUE ([Player], [Game], [Season]);
GO