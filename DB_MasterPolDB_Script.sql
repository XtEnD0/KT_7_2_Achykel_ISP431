USE [master]
GO
/****** Object:  Database [MasterPolBD]    Script Date: 10.03.2025 14:24:35 ******/
CREATE DATABASE [MasterPolBD]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'MasterPolBD', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\MasterPolBD.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'MasterPolBD_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\MasterPolBD_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [MasterPolBD] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [MasterPolBD].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [MasterPolBD] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [MasterPolBD] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [MasterPolBD] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [MasterPolBD] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [MasterPolBD] SET ARITHABORT OFF 
GO
ALTER DATABASE [MasterPolBD] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [MasterPolBD] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [MasterPolBD] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [MasterPolBD] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [MasterPolBD] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [MasterPolBD] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [MasterPolBD] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [MasterPolBD] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [MasterPolBD] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [MasterPolBD] SET  DISABLE_BROKER 
GO
ALTER DATABASE [MasterPolBD] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [MasterPolBD] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [MasterPolBD] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [MasterPolBD] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [MasterPolBD] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [MasterPolBD] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [MasterPolBD] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [MasterPolBD] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [MasterPolBD] SET  MULTI_USER 
GO
ALTER DATABASE [MasterPolBD] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [MasterPolBD] SET DB_CHAINING OFF 
GO
ALTER DATABASE [MasterPolBD] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [MasterPolBD] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [MasterPolBD] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [MasterPolBD] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [MasterPolBD] SET QUERY_STORE = OFF
GO
USE [MasterPolBD]
GO
/****** Object:  Table [dbo].[Adress]    Script Date: 10.03.2025 14:24:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Adress](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[IndexID] [int] NOT NULL,
	[AreaID] [int] NOT NULL,
	[CityID] [int] NOT NULL,
	[StreetID] [int] NOT NULL,
	[House] [int] NOT NULL,
 CONSTRAINT [PK_Adress] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Areas]    Script Date: 10.03.2025 14:24:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Areas](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[AreaName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Areas] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cityes]    Script Date: 10.03.2025 14:24:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cityes](
	[ID] [int] NOT NULL,
	[CityName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Cityes] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Directors]    Script Date: 10.03.2025 14:24:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Directors](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Director] [nvarchar](100) NOT NULL,
	[Login] [nvarchar](50) NOT NULL,
	[Password] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Directors] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Indexes]    Script Date: 10.03.2025 14:24:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Indexes](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[IndexNumber] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Indexes] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MaterialType]    Script Date: 10.03.2025 14:24:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MaterialType](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[MaterialTypeName] [nvarchar](50) NOT NULL,
	[PercentOfFailure] [decimal](8, 2) NOT NULL,
 CONSTRAINT [PK_MaterialType] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PartnerProducts]    Script Date: 10.03.2025 14:24:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PartnerProducts](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ProductID] [int] NOT NULL,
	[PartnerID] [int] NOT NULL,
	[Quantity] [int] NOT NULL,
	[SellDate] [date] NOT NULL,
 CONSTRAINT [PK_PartnerProducts] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Partners]    Script Date: 10.03.2025 14:24:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Partners](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[PartnerTypeID] [int] NOT NULL,
	[PartnerName] [nvarchar](50) NOT NULL,
	[DirectorID] [int] NOT NULL,
	[PartnerEmail] [nvarchar](100) NOT NULL,
	[PartnerPhone] [nvarchar](50) NOT NULL,
	[AdressID] [int] NOT NULL,
	[INN] [nvarchar](50) NOT NULL,
	[Rating] [int] NOT NULL,
 CONSTRAINT [PK_Partners] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PartnerTypes]    Script Date: 10.03.2025 14:24:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PartnerTypes](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[PartnerType] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_PartnerTypes] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 10.03.2025 14:24:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ProductTypeID] [int] NOT NULL,
	[ProductName] [nvarchar](100) NOT NULL,
	[Article] [nvarchar](50) NOT NULL,
	[MinimalPrice] [decimal](8, 2) NOT NULL,
 CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductType]    Script Date: 10.03.2025 14:24:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductType](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ProductTypeName] [nvarchar](50) NOT NULL,
	[TypeMultiplier] [decimal](8, 2) NOT NULL,
 CONSTRAINT [PK_ProductType] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Streets]    Script Date: 10.03.2025 14:24:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Streets](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[StreetName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Streets] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Adress] ON 

INSERT [dbo].[Adress] ([ID], [IndexID], [AreaID], [CityID], [StreetID], [House]) VALUES (1, 1, 1, 1, 1, 15)
INSERT [dbo].[Adress] ([ID], [IndexID], [AreaID], [CityID], [StreetID], [House]) VALUES (2, 2, 2, 2, 2, 122)
INSERT [dbo].[Adress] ([ID], [IndexID], [AreaID], [CityID], [StreetID], [House]) VALUES (3, 3, 3, 3, 3, 18)
INSERT [dbo].[Adress] ([ID], [IndexID], [AreaID], [CityID], [StreetID], [House]) VALUES (4, 4, 4, 4, 4, 51)
INSERT [dbo].[Adress] ([ID], [IndexID], [AreaID], [CityID], [StreetID], [House]) VALUES (5, 5, 5, 5, 5, 21)
SET IDENTITY_INSERT [dbo].[Adress] OFF
GO
SET IDENTITY_INSERT [dbo].[Areas] ON 

INSERT [dbo].[Areas] ([ID], [AreaName]) VALUES (1, N'Кемеровская область')
INSERT [dbo].[Areas] ([ID], [AreaName]) VALUES (2, N'Белгородская область')
INSERT [dbo].[Areas] ([ID], [AreaName]) VALUES (3, N'Архангельская область')
INSERT [dbo].[Areas] ([ID], [AreaName]) VALUES (4, N'Московская область')
INSERT [dbo].[Areas] ([ID], [AreaName]) VALUES (5, N'Ленинградская область')
SET IDENTITY_INSERT [dbo].[Areas] OFF
GO
INSERT [dbo].[Cityes] ([ID], [CityName]) VALUES (1, N'город Юрга')
INSERT [dbo].[Cityes] ([ID], [CityName]) VALUES (2, N'город Старый Оскол')
INSERT [dbo].[Cityes] ([ID], [CityName]) VALUES (3, N'город Северодвинск')
INSERT [dbo].[Cityes] ([ID], [CityName]) VALUES (4, N'город Реутов')
INSERT [dbo].[Cityes] ([ID], [CityName]) VALUES (5, N'город Приморск')
GO
SET IDENTITY_INSERT [dbo].[Directors] ON 

INSERT [dbo].[Directors] ([ID], [Director], [Login], [Password]) VALUES (1, N'Воробьева Екатерина Валерьевна', N'Ptichka', N'chirik')
INSERT [dbo].[Directors] ([ID], [Director], [Login], [Password]) VALUES (2, N'Иванова Александра Ивановна', N'Ivalex', N'12345')
INSERT [dbo].[Directors] ([ID], [Director], [Login], [Password]) VALUES (3, N'Петров Василий Петрович', N'Petrovasyan', N'gygy')
INSERT [dbo].[Directors] ([ID], [Director], [Login], [Password]) VALUES (4, N'Соловьев Андрей Николаевич', N'Solovey', N'54321')
INSERT [dbo].[Directors] ([ID], [Director], [Login], [Password]) VALUES (5, N'Степанов Степан Сергеевич', N'SSS', N'sussy')
SET IDENTITY_INSERT [dbo].[Directors] OFF
GO
SET IDENTITY_INSERT [dbo].[Indexes] ON 

INSERT [dbo].[Indexes] ([ID], [IndexNumber]) VALUES (1, N'652050')
INSERT [dbo].[Indexes] ([ID], [IndexNumber]) VALUES (2, N'309500')
INSERT [dbo].[Indexes] ([ID], [IndexNumber]) VALUES (3, N'164500')
INSERT [dbo].[Indexes] ([ID], [IndexNumber]) VALUES (4, N'143960')
INSERT [dbo].[Indexes] ([ID], [IndexNumber]) VALUES (5, N'188910')
SET IDENTITY_INSERT [dbo].[Indexes] OFF
GO
SET IDENTITY_INSERT [dbo].[MaterialType] ON 

INSERT [dbo].[MaterialType] ([ID], [MaterialTypeName], [PercentOfFailure]) VALUES (1, N'Тип материала 1', CAST(0.10 AS Decimal(8, 2)))
INSERT [dbo].[MaterialType] ([ID], [MaterialTypeName], [PercentOfFailure]) VALUES (2, N'Тип материала 2', CAST(0.95 AS Decimal(8, 2)))
INSERT [dbo].[MaterialType] ([ID], [MaterialTypeName], [PercentOfFailure]) VALUES (3, N'Тип материала 3', CAST(0.28 AS Decimal(8, 2)))
INSERT [dbo].[MaterialType] ([ID], [MaterialTypeName], [PercentOfFailure]) VALUES (4, N'Тип материала 4', CAST(0.55 AS Decimal(8, 2)))
INSERT [dbo].[MaterialType] ([ID], [MaterialTypeName], [PercentOfFailure]) VALUES (5, N'Тип материала 5', CAST(0.34 AS Decimal(8, 2)))
SET IDENTITY_INSERT [dbo].[MaterialType] OFF
GO
SET IDENTITY_INSERT [dbo].[PartnerProducts] ON 

INSERT [dbo].[PartnerProducts] ([ID], [ProductID], [PartnerID], [Quantity], [SellDate]) VALUES (1, 4, 1, 15500, CAST(N'2023-03-23' AS Date))
INSERT [dbo].[PartnerProducts] ([ID], [ProductID], [PartnerID], [Quantity], [SellDate]) VALUES (2, 2, 1, 12350, CAST(N'2023-12-18' AS Date))
INSERT [dbo].[PartnerProducts] ([ID], [ProductID], [PartnerID], [Quantity], [SellDate]) VALUES (3, 3, 1, 37400, CAST(N'2024-06-07' AS Date))
INSERT [dbo].[PartnerProducts] ([ID], [ProductID], [PartnerID], [Quantity], [SellDate]) VALUES (4, 1, 3, 35000, CAST(N'2022-12-02' AS Date))
INSERT [dbo].[PartnerProducts] ([ID], [ProductID], [PartnerID], [Quantity], [SellDate]) VALUES (5, 5, 3, 1250, CAST(N'2023-05-17' AS Date))
INSERT [dbo].[PartnerProducts] ([ID], [ProductID], [PartnerID], [Quantity], [SellDate]) VALUES (6, 2, 3, 1000, CAST(N'2024-06-07' AS Date))
INSERT [dbo].[PartnerProducts] ([ID], [ProductID], [PartnerID], [Quantity], [SellDate]) VALUES (7, 4, 3, 7550, CAST(N'2024-07-01' AS Date))
INSERT [dbo].[PartnerProducts] ([ID], [ProductID], [PartnerID], [Quantity], [SellDate]) VALUES (8, 4, 5, 7250, CAST(N'2023-01-22' AS Date))
INSERT [dbo].[PartnerProducts] ([ID], [ProductID], [PartnerID], [Quantity], [SellDate]) VALUES (9, 1, 5, 2500, CAST(N'2024-07-05' AS Date))
INSERT [dbo].[PartnerProducts] ([ID], [ProductID], [PartnerID], [Quantity], [SellDate]) VALUES (10, 3, 4, 59050, CAST(N'2023-03-20' AS Date))
INSERT [dbo].[PartnerProducts] ([ID], [ProductID], [PartnerID], [Quantity], [SellDate]) VALUES (11, 2, 4, 37200, CAST(N'2024-03-12' AS Date))
INSERT [dbo].[PartnerProducts] ([ID], [ProductID], [PartnerID], [Quantity], [SellDate]) VALUES (12, 5, 4, 4500, CAST(N'2024-05-14' AS Date))
INSERT [dbo].[PartnerProducts] ([ID], [ProductID], [PartnerID], [Quantity], [SellDate]) VALUES (13, 2, 2, 50000, CAST(N'2023-09-19' AS Date))
INSERT [dbo].[PartnerProducts] ([ID], [ProductID], [PartnerID], [Quantity], [SellDate]) VALUES (14, 3, 2, 670000, CAST(N'2023-11-10' AS Date))
INSERT [dbo].[PartnerProducts] ([ID], [ProductID], [PartnerID], [Quantity], [SellDate]) VALUES (15, 4, 2, 35000, CAST(N'2024-04-15' AS Date))
INSERT [dbo].[PartnerProducts] ([ID], [ProductID], [PartnerID], [Quantity], [SellDate]) VALUES (16, 1, 2, 25000, CAST(N'2024-06-12' AS Date))
SET IDENTITY_INSERT [dbo].[PartnerProducts] OFF
GO
SET IDENTITY_INSERT [dbo].[Partners] ON 

INSERT [dbo].[Partners] ([ID], [PartnerTypeID], [PartnerName], [DirectorID], [PartnerEmail], [PartnerPhone], [AdressID], [INN], [Rating]) VALUES (1, 1, N'База Строитель', 2, N'aleksandraivanova@ml.ru', N'+7 493 123 45 67', 1, N'2222455179', 7)
INSERT [dbo].[Partners] ([ID], [PartnerTypeID], [PartnerName], [DirectorID], [PartnerEmail], [PartnerPhone], [AdressID], [INN], [Rating]) VALUES (2, 4, N'МонтажПро', 5, N'stepanov@stepan.ru', N'+7 912 888 33 33', 2, N'5552431140', 10)
INSERT [dbo].[Partners] ([ID], [PartnerTypeID], [PartnerName], [DirectorID], [PartnerEmail], [PartnerPhone], [AdressID], [INN], [Rating]) VALUES (3, 1, N'Паркет 29', 3, N'vppetrov@vl.ru', N'+7 987 123 56 78', 3, N'3333888520', 7)
INSERT [dbo].[Partners] ([ID], [PartnerTypeID], [PartnerName], [DirectorID], [PartnerEmail], [PartnerPhone], [AdressID], [INN], [Rating]) VALUES (4, 2, N'Ремонт и отделка', 1, N'ekaterina.vorobeva@ml.ru', N'+7 444 222 33 11', 4, N'1111520857', 5)
INSERT [dbo].[Partners] ([ID], [PartnerTypeID], [PartnerName], [DirectorID], [PartnerEmail], [PartnerPhone], [AdressID], [INN], [Rating]) VALUES (5, 3, N'Стройсервис', 4, N'ansolovev@st.ru', N'+7 812 223 32 00', 5, N'4440391035', 7)
SET IDENTITY_INSERT [dbo].[Partners] OFF
GO
SET IDENTITY_INSERT [dbo].[PartnerTypes] ON 

INSERT [dbo].[PartnerTypes] ([ID], [PartnerType]) VALUES (1, N'ЗАО')
INSERT [dbo].[PartnerTypes] ([ID], [PartnerType]) VALUES (2, N'ОАО')
INSERT [dbo].[PartnerTypes] ([ID], [PartnerType]) VALUES (3, N'ООО')
INSERT [dbo].[PartnerTypes] ([ID], [PartnerType]) VALUES (4, N'ПАО')
SET IDENTITY_INSERT [dbo].[PartnerTypes] OFF
GO
SET IDENTITY_INSERT [dbo].[Products] ON 

INSERT [dbo].[Products] ([ID], [ProductTypeID], [ProductName], [Article], [MinimalPrice]) VALUES (1, 3, N'Инженерная доска Дуб Французская елка однополосная 12 мм', N'8858958', CAST(7330.99 AS Decimal(8, 2)))
INSERT [dbo].[Products] ([ID], [ProductTypeID], [ProductName], [Article], [MinimalPrice]) VALUES (2, 1, N'Ламинат Дуб дымчато-белый 33 класс 12 мм', N'7750282', CAST(1799.33 AS Decimal(8, 2)))
INSERT [dbo].[Products] ([ID], [ProductTypeID], [ProductName], [Article], [MinimalPrice]) VALUES (3, 1, N'Ламинат Дуб серый 32 класс 8 мм с фаской', N'7028748', CAST(3890.41 AS Decimal(8, 2)))
INSERT [dbo].[Products] ([ID], [ProductTypeID], [ProductName], [Article], [MinimalPrice]) VALUES (4, 3, N'Паркетная доска Ясень темный однополосная 14 мм', N'8758385', CAST(4456.90 AS Decimal(8, 2)))
INSERT [dbo].[Products] ([ID], [ProductTypeID], [ProductName], [Article], [MinimalPrice]) VALUES (5, 4, N'Пробковое напольное клеевое покрытие 32 класс 4 мм', N'5012543', CAST(5450.59 AS Decimal(8, 2)))
SET IDENTITY_INSERT [dbo].[Products] OFF
GO
SET IDENTITY_INSERT [dbo].[ProductType] ON 

INSERT [dbo].[ProductType] ([ID], [ProductTypeName], [TypeMultiplier]) VALUES (1, N'Ламинат', CAST(2.35 AS Decimal(8, 2)))
INSERT [dbo].[ProductType] ([ID], [ProductTypeName], [TypeMultiplier]) VALUES (2, N'Массивная доска', CAST(5.15 AS Decimal(8, 2)))
INSERT [dbo].[ProductType] ([ID], [ProductTypeName], [TypeMultiplier]) VALUES (3, N'Паркетная доска', CAST(4.34 AS Decimal(8, 2)))
INSERT [dbo].[ProductType] ([ID], [ProductTypeName], [TypeMultiplier]) VALUES (4, N'Пробковое покрытие', CAST(1.50 AS Decimal(8, 2)))
SET IDENTITY_INSERT [dbo].[ProductType] OFF
GO
SET IDENTITY_INSERT [dbo].[Streets] ON 

INSERT [dbo].[Streets] ([ID], [StreetName]) VALUES (1, N'ул. Лесная')
INSERT [dbo].[Streets] ([ID], [StreetName]) VALUES (2, N'ул. Рабочая')
INSERT [dbo].[Streets] ([ID], [StreetName]) VALUES (3, N'ул. Строителей')
INSERT [dbo].[Streets] ([ID], [StreetName]) VALUES (4, N'ул. Свободы')
INSERT [dbo].[Streets] ([ID], [StreetName]) VALUES (5, N'ул. Парковая')
SET IDENTITY_INSERT [dbo].[Streets] OFF
GO
ALTER TABLE [dbo].[Adress]  WITH CHECK ADD  CONSTRAINT [FK_Adress_Areas] FOREIGN KEY([AreaID])
REFERENCES [dbo].[Areas] ([ID])
GO
ALTER TABLE [dbo].[Adress] CHECK CONSTRAINT [FK_Adress_Areas]
GO
ALTER TABLE [dbo].[Adress]  WITH CHECK ADD  CONSTRAINT [FK_Adress_Cityes] FOREIGN KEY([CityID])
REFERENCES [dbo].[Cityes] ([ID])
GO
ALTER TABLE [dbo].[Adress] CHECK CONSTRAINT [FK_Adress_Cityes]
GO
ALTER TABLE [dbo].[Adress]  WITH CHECK ADD  CONSTRAINT [FK_Adress_Indexes] FOREIGN KEY([IndexID])
REFERENCES [dbo].[Indexes] ([ID])
GO
ALTER TABLE [dbo].[Adress] CHECK CONSTRAINT [FK_Adress_Indexes]
GO
ALTER TABLE [dbo].[Adress]  WITH CHECK ADD  CONSTRAINT [FK_Adress_Streets] FOREIGN KEY([StreetID])
REFERENCES [dbo].[Streets] ([ID])
GO
ALTER TABLE [dbo].[Adress] CHECK CONSTRAINT [FK_Adress_Streets]
GO
ALTER TABLE [dbo].[PartnerProducts]  WITH CHECK ADD  CONSTRAINT [FK_PartnerProducts_Partners] FOREIGN KEY([PartnerID])
REFERENCES [dbo].[Partners] ([ID])
GO
ALTER TABLE [dbo].[PartnerProducts] CHECK CONSTRAINT [FK_PartnerProducts_Partners]
GO
ALTER TABLE [dbo].[PartnerProducts]  WITH CHECK ADD  CONSTRAINT [FK_PartnerProducts_Products] FOREIGN KEY([ProductID])
REFERENCES [dbo].[Products] ([ID])
GO
ALTER TABLE [dbo].[PartnerProducts] CHECK CONSTRAINT [FK_PartnerProducts_Products]
GO
ALTER TABLE [dbo].[Partners]  WITH CHECK ADD  CONSTRAINT [FK_Partners_Adress] FOREIGN KEY([AdressID])
REFERENCES [dbo].[Adress] ([ID])
GO
ALTER TABLE [dbo].[Partners] CHECK CONSTRAINT [FK_Partners_Adress]
GO
ALTER TABLE [dbo].[Partners]  WITH CHECK ADD  CONSTRAINT [FK_Partners_Directors] FOREIGN KEY([DirectorID])
REFERENCES [dbo].[Directors] ([ID])
GO
ALTER TABLE [dbo].[Partners] CHECK CONSTRAINT [FK_Partners_Directors]
GO
ALTER TABLE [dbo].[Partners]  WITH CHECK ADD  CONSTRAINT [FK_Partners_PartnerTypes] FOREIGN KEY([PartnerTypeID])
REFERENCES [dbo].[PartnerTypes] ([ID])
GO
ALTER TABLE [dbo].[Partners] CHECK CONSTRAINT [FK_Partners_PartnerTypes]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_ProductType] FOREIGN KEY([ProductTypeID])
REFERENCES [dbo].[ProductType] ([ID])
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_ProductType]
GO
USE [master]
GO
ALTER DATABASE [MasterPolBD] SET  READ_WRITE 
GO
