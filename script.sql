USE [master]
GO
/****** Object:  Database [BeerShop]    Script Date: 13.07.2023 14:11:38 ******/
CREATE DATABASE [BeerShop]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'BeerShop', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\BeerShop.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'BeerShop_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\BeerShop_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [BeerShop] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [BeerShop].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [BeerShop] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [BeerShop] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [BeerShop] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [BeerShop] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [BeerShop] SET ARITHABORT OFF 
GO
ALTER DATABASE [BeerShop] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [BeerShop] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [BeerShop] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [BeerShop] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [BeerShop] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [BeerShop] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [BeerShop] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [BeerShop] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [BeerShop] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [BeerShop] SET  DISABLE_BROKER 
GO
ALTER DATABASE [BeerShop] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [BeerShop] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [BeerShop] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [BeerShop] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [BeerShop] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [BeerShop] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [BeerShop] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [BeerShop] SET RECOVERY FULL 
GO
ALTER DATABASE [BeerShop] SET  MULTI_USER 
GO
ALTER DATABASE [BeerShop] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [BeerShop] SET DB_CHAINING OFF 
GO
ALTER DATABASE [BeerShop] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [BeerShop] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [BeerShop] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [BeerShop] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'BeerShop', N'ON'
GO
ALTER DATABASE [BeerShop] SET QUERY_STORE = ON
GO
ALTER DATABASE [BeerShop] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [BeerShop]
GO
/****** Object:  Table [dbo].[Table_1]    Script Date: 13.07.2023 14:11:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Table_1](
	[id] [int] NOT NULL,
	[name] [nvarchar](50) NULL,
	[manufacturer] [nvarchar](50) NULL,
	[type] [nvarchar](50) NULL,
	[price] [real] NULL,
	[volume] [float] NULL,
	[alcohol] [float] NULL,
	[expire_date] [date] NULL,
	[is_tasty] [bit] NULL,
	[is_beer] [bit] NULL,
	[discount] [nchar](10) NULL,
	[rating] [float] NULL
) ON [PRIMARY]
GO
INSERT [dbo].[Table_1] ([id], [name], [manufacturer], [type], [price], [volume], [alcohol], [expire_date], [is_tasty], [is_beer], [discount], [rating]) VALUES (1, N'шуменско', N'шуменск ком', N'темное', 20, 1, 4.4, CAST(N'2023-09-03' AS Date), 1, 1, N'0         ', 100)
INSERT [dbo].[Table_1] ([id], [name], [manufacturer], [type], [price], [volume], [alcohol], [expire_date], [is_tasty], [is_beer], [discount], [rating]) VALUES (2, N'Тетерив', N'тетер', N'супер темное', 40, 0.75, 15, CAST(N'2023-10-01' AS Date), 0, 1, N'0         ', 5)
INSERT [dbo].[Table_1] ([id], [name], [manufacturer], [type], [price], [volume], [alcohol], [expire_date], [is_tasty], [is_beer], [discount], [rating]) VALUES (3, N'Kronenbourg ', N'SeaOfBeer', N'светлое', 80, 1, 4.5, CAST(N'2023-10-03' AS Date), 1, 1, N'0         ', 93)
INSERT [dbo].[Table_1] ([id], [name], [manufacturer], [type], [price], [volume], [alcohol], [expire_date], [is_tasty], [is_beer], [discount], [rating]) VALUES (4, N'Kronenbourg black', N'SeaOfBeer', N'темное', 95, 1, 5, CAST(N'2023-09-04' AS Date), 1, 1, N'0         ', 78)
INSERT [dbo].[Table_1] ([id], [name], [manufacturer], [type], [price], [volume], [alcohol], [expire_date], [is_tasty], [is_beer], [discount], [rating]) VALUES (5, N'Ламинария', N'SeaOfBeer', N'не пиво', 23, 0.2, 0, CAST(N'2025-05-25' AS Date), 1, 0, N'45        ', 81)
INSERT [dbo].[Table_1] ([id], [name], [manufacturer], [type], [price], [volume], [alcohol], [expire_date], [is_tasty], [is_beer], [discount], [rating]) VALUES (6, N'Эль', N'SeaOfBeer', N'не пиво', 35, 1, 5.5, CAST(N'2023-10-25' AS Date), 1, 1, N'0         ', 78)
INSERT [dbo].[Table_1] ([id], [name], [manufacturer], [type], [price], [volume], [alcohol], [expire_date], [is_tasty], [is_beer], [discount], [rating]) VALUES (7, N'Стухша Груша', N'Дід Василь', N'Неизвестно', 13, 2, 65, CAST(N'2017-11-07' AS Date), 0, 0, N'99        ', 1)
INSERT [dbo].[Table_1] ([id], [name], [manufacturer], [type], [price], [volume], [alcohol], [expire_date], [is_tasty], [is_beer], [discount], [rating]) VALUES (8, N'Borjomi', N'Sakashvili Corp', N'не пиво', 45, 1, 0, CAST(N'2024-11-24' AS Date), 1, 0, N'10        ', 97)
INSERT [dbo].[Table_1] ([id], [name], [manufacturer], [type], [price], [volume], [alcohol], [expire_date], [is_tasty], [is_beer], [discount], [rating]) VALUES (45, N'Revo', N'God', N'не пиво', 40, 0.5, 8.5, CAST(N'3024-09-02' AS Date), 1, 0, N'0         ', 100)
INSERT [dbo].[Table_1] ([id], [name], [manufacturer], [type], [price], [volume], [alcohol], [expire_date], [is_tasty], [is_beer], [discount], [rating]) VALUES (46, N'Kingsbridge', N'God', N'не пиво', 45, 0.5, 8.5, CAST(N'3000-01-01' AS Date), 1, 0, N'20        ', 78)
INSERT [dbo].[Table_1] ([id], [name], [manufacturer], [type], [price], [volume], [alcohol], [expire_date], [is_tasty], [is_beer], [discount], [rating]) VALUES (47, N'Korona', N'Torreto Comp', N'светлое', 35, 0.5, 4, CAST(N'2024-01-21' AS Date), 0, 1, N'32        ', 81)
INSERT [dbo].[Table_1] ([id], [name], [manufacturer], [type], [price], [volume], [alcohol], [expire_date], [is_tasty], [is_beer], [discount], [rating]) VALUES (48, N'Lay''s краб', N'Lay''s', N'не пиво', 50, 0.2, 0, CAST(N'2024-03-12' AS Date), 1, 0, N'20        ', 71)
INSERT [dbo].[Table_1] ([id], [name], [manufacturer], [type], [price], [volume], [alcohol], [expire_date], [is_tasty], [is_beer], [discount], [rating]) VALUES (49, N'Lay''s бекон', N'Lay''s ', N'не пиво', 50, 0.2, 0, CAST(N'2024-02-11' AS Date), 0, 0, N'35        ', 61)
INSERT [dbo].[Table_1] ([id], [name], [manufacturer], [type], [price], [volume], [alcohol], [expire_date], [is_tasty], [is_beer], [discount], [rating]) VALUES (50, N'Lay''s сметана', N'Lay''s', N'не пиво', 50, 0.2, 0, CAST(N'2023-07-21' AS Date), 1, 0, N'45        ', 93)
INSERT [dbo].[Table_1] ([id], [name], [manufacturer], [type], [price], [volume], [alcohol], [expire_date], [is_tasty], [is_beer], [discount], [rating]) VALUES (51, N'Lvivske', N'SeaOfBeer', N'светлое', 45, 1, 4.2, CAST(N'2022-02-24' AS Date), 0, 1, N'70        ', 92)
INSERT [dbo].[Table_1] ([id], [name], [manufacturer], [type], [price], [volume], [alcohol], [expire_date], [is_tasty], [is_beer], [discount], [rating]) VALUES (52, N'Odess''ke', N'SeaOfBeer', N'супер темное', 40, 5, 14, CAST(N'2028-08-02' AS Date), 1, 1, N'10        ', 100)
INSERT [dbo].[Table_1] ([id], [name], [manufacturer], [type], [price], [volume], [alcohol], [expire_date], [is_tasty], [is_beer], [discount], [rating]) VALUES (53, N'Blanc 1664', N'SeaOfBeer', N'светлое', 20, 0.5, 4.8, CAST(N'2023-11-01' AS Date), 1, 1, N'0         ', 87)
INSERT [dbo].[Table_1] ([id], [name], [manufacturer], [type], [price], [volume], [alcohol], [expire_date], [is_tasty], [is_beer], [discount], [rating]) VALUES (54, N'Leffe Brune', N'God', N'темное', 49, 0.7, 6.3, CAST(N'2023-12-29' AS Date), 1, 1, N'20        ', 97)
INSERT [dbo].[Table_1] ([id], [name], [manufacturer], [type], [price], [volume], [alcohol], [expire_date], [is_tasty], [is_beer], [discount], [rating]) VALUES (55, N'Пиво с дядей', N'God', N'темное', 87, 0.7, 9, CAST(N'2024-01-22' AS Date), 1, 1, N'0         ', 100)
INSERT [dbo].[Table_1] ([id], [name], [manufacturer], [type], [price], [volume], [alcohol], [expire_date], [is_tasty], [is_beer], [discount], [rating]) VALUES (56, N'Загорка', N'God', N'темное', 24, 0.5, 4.7, CAST(N'2023-12-02' AS Date), 1, 1, N'0         ', 89)
INSERT [dbo].[Table_1] ([id], [name], [manufacturer], [type], [price], [volume], [alcohol], [expire_date], [is_tasty], [is_beer], [discount], [rating]) VALUES (57, N'Каменица', N'България', N'темное', 25, 0.5, 4.3, CAST(N'2023-10-02' AS Date), 1, 1, N'15        ', 87)
INSERT [dbo].[Table_1] ([id], [name], [manufacturer], [type], [price], [volume], [alcohol], [expire_date], [is_tasty], [is_beer], [discount], [rating]) VALUES (58, N'Tuborg', N'SeaOfBeer', N'светлое', 20, 0.5, 4.6, CAST(N'2023-08-01' AS Date), 1, 1, N'23        ', 79)
INSERT [dbo].[Table_1] ([id], [name], [manufacturer], [type], [price], [volume], [alcohol], [expire_date], [is_tasty], [is_beer], [discount], [rating]) VALUES (59, N'самерсби', N'SeaOfBeer', N'не пиво', 44, 0.5, 4.2, CAST(N'2023-10-11' AS Date), 1, 0, N'15        ', 89)
GO
USE [master]
GO
ALTER DATABASE [BeerShop] SET  READ_WRITE 
GO
