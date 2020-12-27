USE [Koulu]

SET ANSI_NULLS ON

SET QUOTED_IDENTIFIER ON

CREATE TABLE [dbo].[OpiskelijanHaku](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[OpiskelijaId] [int] NOT NULL,
	[Koulutusyksikkoid] [int] NOT NULL,
	[PaassytSisaan] [bit] NOT NULL,
 CONSTRAINT [PK_OpiskelijanHaku] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

ALTER TABLE [dbo].[OpiskelijanHaku]  WITH CHECK ADD  CONSTRAINT [FK_OpiskelijanHaku_Koulutusyksikko] FOREIGN KEY([Koulutusyksikkoid])
REFERENCES [dbo].[Koulutusyksikko] ([Id])

ALTER TABLE [dbo].[OpiskelijanHaku] CHECK CONSTRAINT [FK_OpiskelijanHaku_Koulutusyksikko]

ALTER TABLE [dbo].[OpiskelijanHaku]  WITH CHECK ADD  CONSTRAINT [FK_OpiskelijanHaku_Opiskelija] FOREIGN KEY([OpiskelijaId])
REFERENCES [dbo].[Opiskelija] ([Id])

ALTER TABLE [dbo].[OpiskelijanHaku] CHECK CONSTRAINT [FK_OpiskelijanHaku_Opiskelija]


