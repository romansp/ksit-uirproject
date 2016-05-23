SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Main](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Photo] [image] NULL,
	[FirstName] [nchar](25) NOT NULL,
	[LastName] [nchar](15) NOT NULL,
	[City] [nchar](10) NOT NULL,
	[Address] [nchar](100) NOT NULL,
	[OperatorId] [int] NOT NULL,
	[Phone] [nchar](6) NOT NULL,
 CONSTRAINT [PK_Main] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
CREATE TABLE [dbo].[Operator](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[OperatorName] [nchar](6) NOT NULL,
	[OperatorCode] [nchar](3) NOT NULL,
 CONSTRAINT [PK_Operator] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[WithCode]
AS
SELECT     dbo.Main.FirstName, dbo.Main.LastName, dbo.Operator.OperatorCode, dbo.Main.Phone, dbo.Operator.Id
FROM         dbo.Main INNER JOIN
                      dbo.Operator ON dbo.Main.OperatorId = dbo.Operator.Id

GO
SET IDENTITY_INSERT [dbo].[Main] ON 

GO
INSERT [dbo].[Main] ([Id], [Photo], [FirstName], [LastName], [City], [Address], [OperatorId], [Phone]) VALUES (1, NULL, N'Роман                    ', N'Павлов         ', N'Минск     ', N'ул. Бельского                                                                                       ', 4, N'123456')
GO
INSERT [dbo].[Main] ([Id], [Photo], [FirstName], [LastName], [City], [Address], [OperatorId], [Phone]) VALUES (2, NULL, N'Алексей                  ', N'Рудаков        ', N'Минск     ', N'ул. Первомайская                                                                                    ', 4, N'456789')
GO
INSERT [dbo].[Main] ([Id], [Photo], [FirstName], [LastName], [City], [Address], [OperatorId], [Phone]) VALUES (4, NULL, N'Дмитрий                  ', N'Нагорный       ', N'Лунинец   ', N'ул. Красноармейская                                                                                 ', 1, N'123468')
GO
INSERT [dbo].[Main] ([Id], [Photo], [FirstName], [LastName], [City], [Address], [OperatorId], [Phone]) VALUES (5, NULL, N'Игорь                    ', N'Календо        ', N'Витебск   ', N'ул. Октябрьская                                                                                     ', 4, N'253413')
GO
INSERT [dbo].[Main] ([Id], [Photo], [FirstName], [LastName], [City], [Address], [OperatorId], [Phone]) VALUES (7, NULL, N'Анна                     ', N'Ульянова       ', N'Минск     ', N'ул. Независимости                                                                                   ', 3, N'443113')
GO
INSERT [dbo].[Main] ([Id], [Photo], [FirstName], [LastName], [City], [Address], [OperatorId], [Phone]) VALUES (8, NULL, N'Елена                    ', N'Чернявская     ', N'Светлый   ', N'ул. Победителей                                                                                     ', 3, N'983474')
GO
INSERT [dbo].[Main] ([Id], [Photo], [FirstName], [LastName], [City], [Address], [OperatorId], [Phone]) VALUES (9, NULL, N'Юлия                     ', N'Езерская       ', N'Гродно    ', N'ул. Центральная                                                                                     ', 1, N'223412')
GO
SET IDENTITY_INSERT [dbo].[Main] OFF
GO
SET IDENTITY_INSERT [dbo].[Operator] ON 

GO
INSERT [dbo].[Operator] ([Id], [OperatorName], [OperatorCode]) VALUES (1, N'Velcom', N'296')
GO
INSERT [dbo].[Operator] ([Id], [OperatorName], [OperatorCode]) VALUES (3, N'Life  ', N'295')
GO
INSERT [dbo].[Operator] ([Id], [OperatorName], [OperatorCode]) VALUES (4, N'MTC   ', N'297')
GO
SET IDENTITY_INSERT [dbo].[Operator] OFF
GO
ALTER TABLE [dbo].[Main]  WITH CHECK ADD  CONSTRAINT [FK_Main_Operator] FOREIGN KEY([OperatorId])
REFERENCES [dbo].[Operator] ([Id])
GO
ALTER TABLE [dbo].[Main] CHECK CONSTRAINT [FK_Main_Operator]
GO
