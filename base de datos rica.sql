USE [master]
GO
/**
Nombre:Jose Ariel caceres Matricula:14-miit-1-024 Seccion:0541
Nombre:Reymi buret Matricula:15-siin-1-127 Seccion:0541
Nombre: Wander encarnacion Matricula:15-miin-1-108 Seccion:0541
**/
/****** Object:  Database [Rica]    Script Date: 9/4/2018 9:49:52 p. m. ******/
CREATE DATABASE [Rica]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Rica', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\Rica.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Rica_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\Rica_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [Rica] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Rica].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Rica] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Rica] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Rica] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Rica] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Rica] SET ARITHABORT OFF 
GO
ALTER DATABASE [Rica] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Rica] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Rica] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Rica] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Rica] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Rica] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Rica] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Rica] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Rica] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Rica] SET  ENABLE_BROKER 
GO
ALTER DATABASE [Rica] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Rica] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Rica] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Rica] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Rica] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Rica] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Rica] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Rica] SET RECOVERY FULL 
GO
ALTER DATABASE [Rica] SET  MULTI_USER 
GO
ALTER DATABASE [Rica] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Rica] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Rica] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Rica] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Rica] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'Rica', N'ON'
GO
ALTER DATABASE [Rica] SET QUERY_STORE = OFF
GO
USE [Rica]
GO
ALTER DATABASE SCOPED CONFIGURATION SET IDENTITY_CACHE = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET LEGACY_CARDINALITY_ESTIMATION = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET MAXDOP = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET PARAMETER_SNIFFING = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET QUERY_OPTIMIZER_HOTFIXES = PRIMARY;
GO
USE [Rica]
GO
/****** Object:  Table [dbo].[cajeros]    Script Date: 9/4/2018 9:49:53 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cajeros](
	[codigo] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [nvarchar](255) NULL,
 CONSTRAINT [PK_cajeros] PRIMARY KEY CLUSTERED 
(
	[codigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[maquina_registradora]    Script Date: 9/4/2018 9:49:53 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[maquina_registradora](
	[codigo] [int] IDENTITY(1,1) NOT NULL,
	[piso] [int] NULL,
 CONSTRAINT [PK_maquina_registradora] PRIMARY KEY CLUSTERED 
(
	[codigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[producto]    Script Date: 9/4/2018 9:49:53 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[producto](
	[codigo] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [nvarchar](100) NULL,
	[precio] [int] NULL,
 CONSTRAINT [PK_producto] PRIMARY KEY CLUSTERED 
(
	[codigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[venta]    Script Date: 9/4/2018 9:49:53 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[venta](
	[cajero] [int] NULL,
	[maquina] [int] NULL,
	[producto] [int] NULL
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[cajeros] ON 

INSERT [dbo].[cajeros] ([codigo], [nombre]) VALUES (1, N'pedro pablo')
INSERT [dbo].[cajeros] ([codigo], [nombre]) VALUES (2, N'jose almonte')
INSERT [dbo].[cajeros] ([codigo], [nombre]) VALUES (3, N'alfredo vicente')
INSERT [dbo].[cajeros] ([codigo], [nombre]) VALUES (4, N'yesenia alcantara')
INSERT [dbo].[cajeros] ([codigo], [nombre]) VALUES (5, N'antonio baez')
INSERT [dbo].[cajeros] ([codigo], [nombre]) VALUES (6, N'carlos valdez')
INSERT [dbo].[cajeros] ([codigo], [nombre]) VALUES (7, N'jose martinez')
INSERT [dbo].[cajeros] ([codigo], [nombre]) VALUES (8, N'denis felix')
INSERT [dbo].[cajeros] ([codigo], [nombre]) VALUES (9, N'juan garcia')
INSERT [dbo].[cajeros] ([codigo], [nombre]) VALUES (10, N'carlos muños')
SET IDENTITY_INSERT [dbo].[cajeros] OFF
SET IDENTITY_INSERT [dbo].[maquina_registradora] ON 

INSERT [dbo].[maquina_registradora] ([codigo], [piso]) VALUES (1, 6)
INSERT [dbo].[maquina_registradora] ([codigo], [piso]) VALUES (2, 8)
INSERT [dbo].[maquina_registradora] ([codigo], [piso]) VALUES (3, 7)
INSERT [dbo].[maquina_registradora] ([codigo], [piso]) VALUES (4, 9)
INSERT [dbo].[maquina_registradora] ([codigo], [piso]) VALUES (5, 5)
INSERT [dbo].[maquina_registradora] ([codigo], [piso]) VALUES (6, 4)
INSERT [dbo].[maquina_registradora] ([codigo], [piso]) VALUES (7, 1)
INSERT [dbo].[maquina_registradora] ([codigo], [piso]) VALUES (8, 2)
INSERT [dbo].[maquina_registradora] ([codigo], [piso]) VALUES (9, 22)
INSERT [dbo].[maquina_registradora] ([codigo], [piso]) VALUES (10, 11)
SET IDENTITY_INSERT [dbo].[maquina_registradora] OFF
SET IDENTITY_INSERT [dbo].[producto] ON 

INSERT [dbo].[producto] ([codigo], [nombre], [precio]) VALUES (1, N'leche rica', 75)
INSERT [dbo].[producto] ([codigo], [nombre], [precio]) VALUES (2, N'jugo naranja', 50)
INSERT [dbo].[producto] ([codigo], [nombre], [precio]) VALUES (3, N'jugo de pera', 50)
INSERT [dbo].[producto] ([codigo], [nombre], [precio]) VALUES (4, N'leche evaporada', 55)
INSERT [dbo].[producto] ([codigo], [nombre], [precio]) VALUES (5, N'leche listamilk', 70)
INSERT [dbo].[producto] ([codigo], [nombre], [precio]) VALUES (6, N'leche la vaquita', 70)
INSERT [dbo].[producto] ([codigo], [nombre], [precio]) VALUES (7, N'mantequilla rica', 35)
INSERT [dbo].[producto] ([codigo], [nombre], [precio]) VALUES (8, N'queso rica', 150)
INSERT [dbo].[producto] ([codigo], [nombre], [precio]) VALUES (9, N'malta rica', 40)
INSERT [dbo].[producto] ([codigo], [nombre], [precio]) VALUES (10, N'jugo frut punch', 75)
SET IDENTITY_INSERT [dbo].[producto] OFF
INSERT [dbo].[venta] ([cajero], [maquina], [producto]) VALUES (10, 3, 5)
INSERT [dbo].[venta] ([cajero], [maquina], [producto]) VALUES (7, 3, 8)
INSERT [dbo].[venta] ([cajero], [maquina], [producto]) VALUES (9, 6, 2)
INSERT [dbo].[venta] ([cajero], [maquina], [producto]) VALUES (2, 6, 9)
INSERT [dbo].[venta] ([cajero], [maquina], [producto]) VALUES (2, 2, 9)
INSERT [dbo].[venta] ([cajero], [maquina], [producto]) VALUES (7, 2, 8)
INSERT [dbo].[venta] ([cajero], [maquina], [producto]) VALUES (2, 7, 9)
INSERT [dbo].[venta] ([cajero], [maquina], [producto]) VALUES (2, 2, 7)
INSERT [dbo].[venta] ([cajero], [maquina], [producto]) VALUES (5, 7, 2)
INSERT [dbo].[venta] ([cajero], [maquina], [producto]) VALUES (4, 9, 10)
ALTER TABLE [dbo].[venta]  WITH CHECK ADD  CONSTRAINT [FK_venta_cajeros] FOREIGN KEY([cajero])
REFERENCES [dbo].[cajeros] ([codigo])
GO
ALTER TABLE [dbo].[venta] CHECK CONSTRAINT [FK_venta_cajeros]
GO
ALTER TABLE [dbo].[venta]  WITH CHECK ADD  CONSTRAINT [FK_venta_maquina_registradora] FOREIGN KEY([maquina])
REFERENCES [dbo].[maquina_registradora] ([codigo])
GO
ALTER TABLE [dbo].[venta] CHECK CONSTRAINT [FK_venta_maquina_registradora]
GO
ALTER TABLE [dbo].[venta]  WITH CHECK ADD  CONSTRAINT [FK_venta_producto] FOREIGN KEY([producto])
REFERENCES [dbo].[producto] ([codigo])
GO
ALTER TABLE [dbo].[venta] CHECK CONSTRAINT [FK_venta_producto]
GO
USE [master]
GO
ALTER DATABASE [Rica] SET  READ_WRITE 
GO
