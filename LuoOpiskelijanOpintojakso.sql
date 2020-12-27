USE [Koulu]

SET ANSI_NULLS ON

SET QUOTED_IDENTIFIER ON

CREATE TABLE [dbo].[OpiskelijanOpintojakso](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[OpiskelijaId] [int] NOT NULL,
	[OpintojaksoId] [int] NOT NULL,
 CONSTRAINT [PK_OpiskelijanOpintojakso] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

ALTER TABLE [dbo].[OpiskelijanOpintojakso]  WITH CHECK ADD  CONSTRAINT [FK_OpiskelijanOpintojakso_Opintojakso] FOREIGN KEY([OpintojaksoId])
REFERENCES [dbo].[Opintojakso] ([Id])

ALTER TABLE [dbo].[OpiskelijanOpintojakso] CHECK CONSTRAINT [FK_OpiskelijanOpintojakso_Opintojakso]

ALTER TABLE [dbo].[OpiskelijanOpintojakso]  WITH CHECK ADD  CONSTRAINT [FK_OpiskelijanOpintojakso_Opiskelija] FOREIGN KEY([OpiskelijaId])
REFERENCES [dbo].[Opiskelija] ([Id])

ALTER TABLE [dbo].[OpiskelijanOpintojakso] CHECK CONSTRAINT [FK_OpiskelijanOpintojakso_Opiskelija]


