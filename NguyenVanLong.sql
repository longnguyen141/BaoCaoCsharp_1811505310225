USE [NguyenVanLongDB]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 6/20/2021 1:25:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Category](
	[ID] [varchar](10) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Description] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Product]    Script Date: 6/20/2021 1:25:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Product](
	[ID] [varchar](10) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[UnitCost] [decimal](15, 0) NOT NULL,
	[Quantity] [int] NOT NULL,
	[Image] [varchar](50) NULL,
	[Description] [nvarchar](50) NULL,
	[Status] [varchar](50) NULL,
	[CategoryID] [varchar](10) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[UserAccount]    Script Date: 6/20/2021 1:25:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[UserAccount](
	[ID] [varchar](10) NOT NULL,
	[UserName] [varchar](50) NOT NULL,
	[Password] [varchar](50) NOT NULL,
	[Status] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Category] ([ID], [Name], [Description]) VALUES (N'DM01', N'Xe đạp địa hình', NULL)
INSERT [dbo].[Category] ([ID], [Name], [Description]) VALUES (N'DM02', N'Xe đạp gấp', NULL)
INSERT [dbo].[Category] ([ID], [Name], [Description]) VALUES (N'DM03', N'Xe đạp thành phố', NULL)
INSERT [dbo].[Category] ([ID], [Name], [Description]) VALUES (N'DM04', N'Xe đạp đua', NULL)
INSERT [dbo].[Category] ([ID], [Name], [Description]) VALUES (N'DM05', N'Xe đạp điện', NULL)
INSERT [dbo].[Category] ([ID], [Name], [Description]) VALUES (N'DM06', N'Xe đạp trẻ em', NULL)
INSERT [dbo].[Product] ([ID], [Name], [UnitCost], [Quantity], [Image], [Description], [Status], [CategoryID]) VALUES (N'Sp005121', N'sp1', CAST(100000000 AS Decimal(15, 0)), 222, N'/Data/images/xe1.jpg', N'Đặc trưng của dòng xe đạp Nhật Đ', NULL, N'DM02')
INSERT [dbo].[Product] ([ID], [Name], [UnitCost], [Quantity], [Image], [Description], [Status], [CategoryID]) VALUES (N'Sp0051211', N'Xe leo núi ABX', CAST(100000000 AS Decimal(15, 0)), 11, N'/Data/images/xe9.jpg', N'Chật lượng nhật bản', N'Còn hàng', N'DM01')
INSERT [dbo].[Product] ([ID], [Name], [UnitCost], [Quantity], [Image], [Description], [Status], [CategoryID]) VALUES (N'Sp00512110', N'Xe đạp ABC', CAST(100000000 AS Decimal(15, 0)), 10, N'/Data/images/xe12.jpg', N'Chất lượng nhật bản', N'Còn hàng', N'DM01')
INSERT [dbo].[Product] ([ID], [Name], [UnitCost], [Quantity], [Image], [Description], [Status], [CategoryID]) VALUES (N'SP01', N'GIANT XTC 800 2020', CAST(500000 AS Decimal(15, 0)), 10, N'/Data/images/xe10.jpg', N'Đặc trưng của dòng xe đạp Nhật ', N'Còn hàng', N'DM01')
INSERT [dbo].[Product] ([ID], [Name], [UnitCost], [Quantity], [Image], [Description], [Status], [CategoryID]) VALUES (N'SP02', N'GALAXY AT10', CAST(500000 AS Decimal(15, 0)), 10, N'/Data/images/xe11.jpg', N'Đặc trưng của dòng xe đạp Nhật ', N'Còn hàng', N'DM03')
INSERT [dbo].[Product] ([ID], [Name], [UnitCost], [Quantity], [Image], [Description], [Status], [CategoryID]) VALUES (N'SP03', N'GIANT INEED MOCHA LTD 2022', CAST(700000 AS Decimal(15, 0)), 10, N'/Data/images/xe8.jpg', N'Đặc trưng của dòng xe đạp Nhật ', N'Còn hàng', N'DM02')
INSERT [dbo].[Product] ([ID], [Name], [UnitCost], [Quantity], [Image], [Description], [Status], [CategoryID]) VALUES (N'SP04', N'Xe đạp đua Giant Defy ADV 1 2021', CAST(700000 AS Decimal(15, 0)), 10, N'/Data/images/xe10.jpg', N'Đặc trưng của dòng xe đạp Nhật ', N'Còn hàng', N'DM01')
INSERT [dbo].[Product] ([ID], [Name], [UnitCost], [Quantity], [Image], [Description], [Status], [CategoryID]) VALUES (N'SP05', N'Xe carbon Twitter Predator Pro M6000', CAST(800000 AS Decimal(15, 0)), 10, N'/Data/images/xe12.jpg', N'Đặc trưng của dòng xe đạp Nhật ', N'Còn hàng', N'DM01')
INSERT [dbo].[Product] ([ID], [Name], [UnitCost], [Quantity], [Image], [Description], [Status], [CategoryID]) VALUES (N'SP06', N'LIV ENCHANT 24 D 2020', CAST(800000 AS Decimal(15, 0)), 10, N'/Data/images/xe7.jpg', N'Đặc trưng của dòng xe đạp Nhật ', N'Còn hàng', N'DM03')
INSERT [dbo].[UserAccount] ([ID], [UserName], [Password], [Status]) VALUES (N'US01', N'Admin', N'21232f297a57a5a743894a0e4a801fc3', N'activate')
INSERT [dbo].[UserAccount] ([ID], [UserName], [Password], [Status]) VALUES (N'US02', N'Long', N'202cb962ac59075b964b07152d234b70', N'activate')
INSERT [dbo].[UserAccount] ([ID], [UserName], [Password], [Status]) VALUES (N'US03', N'VanLong', N'202cb962ac59075b964b07152d234b70', N'activate')
INSERT [dbo].[UserAccount] ([ID], [UserName], [Password], [Status]) VALUES (N'US06', N'Duy', N'202cb962ac59075b964b07152d234b70', N'activate')
INSERT [dbo].[UserAccount] ([ID], [UserName], [Password], [Status]) VALUES (N'US08', N'Ngoc', N'202cb962ac59075b964b07152d234b70', N'activate')
INSERT [dbo].[UserAccount] ([ID], [UserName], [Password], [Status]) VALUES (N'US09', N'user1', N'202cb962ac59075b964b07152d234b70', N'activate')
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [fk_Product_Type] FOREIGN KEY([CategoryID])
REFERENCES [dbo].[Category] ([ID])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [fk_Product_Type]
GO
