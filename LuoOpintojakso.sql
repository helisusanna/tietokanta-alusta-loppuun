USE [Koulu]

SET ANSI_NULLS ON

SET QUOTED_IDENTIFIER ON

CREATE TABLE [dbo].[Opintojakso](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nimi] [nvarchar](50) NOT NULL,
	[OpettajaId] [int] NOT NULL,
 CONSTRAINT [PK_Opintojakso] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

ALTER TABLE [dbo].[Opintojakso]  WITH CHECK ADD  CONSTRAINT [FK_Opintojakso_Opettaja] FOREIGN KEY([OpettajaId])
REFERENCES [dbo].[Opettaja] ([Id])

ALTER TABLE [dbo].[Opintojakso] CHECK CONSTRAINT [FK_Opintojakso_Opettaja]


