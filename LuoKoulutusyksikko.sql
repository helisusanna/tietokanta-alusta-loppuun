USE [Koulu]

SET ANSI_NULLS ON

SET QUOTED_IDENTIFIER ON

CREATE TABLE [dbo].[Koulutusyksikko](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Yksikko] [nvarchar](50) NOT NULL,
	[AlaId] [int] NOT NULL,
 CONSTRAINT [PK_Koulutusyksikko] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

ALTER TABLE [dbo].[Koulutusyksikko]  WITH CHECK ADD  CONSTRAINT [FK_Koulutusyksikko_Koulutusala] FOREIGN KEY([AlaId])
REFERENCES [dbo].[Koulutusala] ([Id])

ALTER TABLE [dbo].[Koulutusyksikko] CHECK CONSTRAINT [FK_Koulutusyksikko_Koulutusala]


