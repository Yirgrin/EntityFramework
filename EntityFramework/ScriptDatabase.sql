USE [master]
GO
/****** Object:  Database [TestEntity]    Script Date: 13/04/2023 11:55:47 a. m. ******/
CREATE DATABASE [TestEntity]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'TestEntity', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\TestEntity.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'TestEntity_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\TestEntity_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [TestEntity] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [TestEntity].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [TestEntity] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [TestEntity] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [TestEntity] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [TestEntity] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [TestEntity] SET ARITHABORT OFF 
GO
ALTER DATABASE [TestEntity] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [TestEntity] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [TestEntity] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [TestEntity] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [TestEntity] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [TestEntity] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [TestEntity] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [TestEntity] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [TestEntity] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [TestEntity] SET  DISABLE_BROKER 
GO
ALTER DATABASE [TestEntity] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [TestEntity] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [TestEntity] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [TestEntity] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [TestEntity] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [TestEntity] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [TestEntity] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [TestEntity] SET RECOVERY FULL 
GO
ALTER DATABASE [TestEntity] SET  MULTI_USER 
GO
ALTER DATABASE [TestEntity] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [TestEntity] SET DB_CHAINING OFF 
GO
ALTER DATABASE [TestEntity] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [TestEntity] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [TestEntity] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [TestEntity] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'TestEntity', N'ON'
GO
ALTER DATABASE [TestEntity] SET QUERY_STORE = ON
GO
ALTER DATABASE [TestEntity] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [TestEntity]
GO
/****** Object:  Table [dbo].[Destinations]    Script Date: 13/04/2023 11:55:47 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Destinations](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[Description] [varchar](max) NOT NULL,
	[Price] [decimal](18, 0) NOT NULL,
	[Photo] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Destinations] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Destinations] ON 
GO
INSERT [dbo].[Destinations] ([Id], [Name], [Description], [Price], [Photo]) VALUES (1, N'La Fortuna', N'Descubre los densos bosques y los paisajes volcánicos de La Fortuna en un tour de un día. Disfruta de una caminata guiada a lugares de interés como la cascada de La Fortuna y finaliza tu viaje con un baño en aguas termales y un cóctel.', CAST(88 AS Decimal(18, 0)), N'../Images/1.jpg')
GO
INSERT [dbo].[Destinations] ([Id], [Name], [Description], [Price], [Photo]) VALUES (3, N'Monteverde', N'Disfrute de todas las atracciones y exhibiciones que el parque Monteverde tiene para ofrecer. Prepárese para una experiencia de canopy, un paseo por los puentes colgantes y una visita guiada por el jardín de mariposas.', CAST(146 AS Decimal(18, 0)), N'../Images/2.jpg')
GO
INSERT [dbo].[Destinations] ([Id], [Name], [Description], [Price], [Photo]) VALUES (7, N'Playa Jaco: Excursión en tirolina', N'Atraviesa en tirolina la selva tropical de transición en esta excursión por las copas de los árboles.', CAST(70 AS Decimal(18, 0)), N'../Images/3.jpg')
GO
INSERT [dbo].[Destinations] ([Id], [Name], [Description], [Price], [Photo]) VALUES (10, N'Playa Tamarindo', N'Zarpa desde Playa Tamarindo en un catamarán de 20 metros y navega por la costa de Costa Rica para ver el atardecer. Disfruta de una barra libre con tus bebidas preferidas, aperitivos y una comida ligera. Para en una playa aislada y disfruta de un baño.', CAST(104 AS Decimal(18, 0)), N'../Images/4.jpg')
GO
INSERT [dbo].[Destinations] ([Id], [Name], [Description], [Price], [Photo]) VALUES (12, N'Playa Flamingo', N'Navega por la costa del Pacífico de Guanacaste en esta excursión en catamarán. Practica snorkel, nada, rema de pie, haz kayak o simplemente relájate en la playa antes de disfrutar del almuerzo o la cena.', CAST(95 AS Decimal(18, 0)), N'../Images/5.jpg')
GO
SET IDENTITY_INSERT [dbo].[Destinations] OFF
GO
USE [master]
GO
ALTER DATABASE [TestEntity] SET  READ_WRITE 
GO
