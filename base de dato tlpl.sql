USE [master]
GO
/**
Nombre:Jose Ariel caceres Matricula:14-miit-1-024 Seccion:0541
Nombre:Reymi buret Matricula:15-siin-1-127 Seccion:0541
Nombre: Wander encarnacion Matricula:15-miin-1-108 Seccion:0541
**/
/****** Object:  Database [tlplelectonic]    Script Date: 9/4/2018 10:03:19 p. m. ******/
CREATE DATABASE [tlplelectonic]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'tlplelectonic', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\tlplelectonic.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'tlplelectonic_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\tlplelectonic_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [tlplelectonic] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [tlplelectonic].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [tlplelectonic] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [tlplelectonic] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [tlplelectonic] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [tlplelectonic] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [tlplelectonic] SET ARITHABORT OFF 
GO
ALTER DATABASE [tlplelectonic] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [tlplelectonic] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [tlplelectonic] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [tlplelectonic] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [tlplelectonic] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [tlplelectonic] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [tlplelectonic] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [tlplelectonic] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [tlplelectonic] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [tlplelectonic] SET  ENABLE_BROKER 
GO
ALTER DATABASE [tlplelectonic] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [tlplelectonic] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [tlplelectonic] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [tlplelectonic] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [tlplelectonic] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [tlplelectonic] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [tlplelectonic] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [tlplelectonic] SET RECOVERY FULL 
GO
ALTER DATABASE [tlplelectonic] SET  MULTI_USER 
GO
ALTER DATABASE [tlplelectonic] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [tlplelectonic] SET DB_CHAINING OFF 
GO
ALTER DATABASE [tlplelectonic] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [tlplelectonic] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [tlplelectonic] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'tlplelectonic', N'ON'
GO
ALTER DATABASE [tlplelectonic] SET QUERY_STORE = OFF
GO
USE [tlplelectonic]
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
USE [tlplelectonic]
GO
/****** Object:  Table [dbo].[cajero]    Script Date: 9/4/2018 10:03:20 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cajero](
	[codigo] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [nvarchar](255) NULL,
 CONSTRAINT [PK_cajero] PRIMARY KEY CLUSTERED 
(
	[codigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[maquina_registradora]    Script Date: 9/4/2018 10:03:20 p. m. ******/
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
/****** Object:  Table [dbo].[productos]    Script Date: 9/4/2018 10:03:20 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[productos](
	[codigo] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [nvarchar](100) NULL,
	[precio] [int] NULL,
 CONSTRAINT [PK_productos] PRIMARY KEY CLUSTERED 
(
	[codigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[venta]    Script Date: 9/4/2018 10:03:20 p. m. ******/
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
SET IDENTITY_INSERT [dbo].[cajero] ON 

INSERT [dbo].[cajero] ([codigo], [nombre]) VALUES (1, N'ernel garcia ')
INSERT [dbo].[cajero] ([codigo], [nombre]) VALUES (2, N'wandy contreras')
INSERT [dbo].[cajero] ([codigo], [nombre]) VALUES (3, N'jose capellan')
INSERT [dbo].[cajero] ([codigo], [nombre]) VALUES (4, N'pedro pablo')
INSERT [dbo].[cajero] ([codigo], [nombre]) VALUES (5, N'raymond gomez')
INSERT [dbo].[cajero] ([codigo], [nombre]) VALUES (6, N'juan alcantara')
INSERT [dbo].[cajero] ([codigo], [nombre]) VALUES (7, N'jose manuel')
INSERT [dbo].[cajero] ([codigo], [nombre]) VALUES (8, N'pamela perez')
INSERT [dbo].[cajero] ([codigo], [nombre]) VALUES (9, N'carlos muños')
INSERT [dbo].[cajero] ([codigo], [nombre]) VALUES (10, N'eddy vaquez')
SET IDENTITY_INSERT [dbo].[cajero] OFF
SET IDENTITY_INSERT [dbo].[maquina_registradora] ON 

INSERT [dbo].[maquina_registradora] ([codigo], [piso]) VALUES (1, 1)
INSERT [dbo].[maquina_registradora] ([codigo], [piso]) VALUES (2, 3)
INSERT [dbo].[maquina_registradora] ([codigo], [piso]) VALUES (3, 2)
INSERT [dbo].[maquina_registradora] ([codigo], [piso]) VALUES (4, 9)
INSERT [dbo].[maquina_registradora] ([codigo], [piso]) VALUES (5, 8)
INSERT [dbo].[maquina_registradora] ([codigo], [piso]) VALUES (6, 7)
INSERT [dbo].[maquina_registradora] ([codigo], [piso]) VALUES (7, 5)
INSERT [dbo].[maquina_registradora] ([codigo], [piso]) VALUES (8, 6)
INSERT [dbo].[maquina_registradora] ([codigo], [piso]) VALUES (9, 23)
INSERT [dbo].[maquina_registradora] ([codigo], [piso]) VALUES (10, 12)
SET IDENTITY_INSERT [dbo].[maquina_registradora] OFF
SET IDENTITY_INSERT [dbo].[productos] ON 

INSERT [dbo].[productos] ([codigo], [nombre], [precio]) VALUES (1, N'alcatel', 3500)
INSERT [dbo].[productos] ([codigo], [nombre], [precio]) VALUES (2, N'tablet', 5000)
INSERT [dbo].[productos] ([codigo], [nombre], [precio]) VALUES (3, N'ipho', 600)
INSERT [dbo].[productos] ([codigo], [nombre], [precio]) VALUES (4, N'samsung', 700)
INSERT [dbo].[productos] ([codigo], [nombre], [precio]) VALUES (5, N'lg', 1000)
INSERT [dbo].[productos] ([codigo], [nombre], [precio]) VALUES (6, N'haiwei', 4000)
INSERT [dbo].[productos] ([codigo], [nombre], [precio]) VALUES (7, N'cargador', 4500)
INSERT [dbo].[productos] ([codigo], [nombre], [precio]) VALUES (8, N'cover', 300)
INSERT [dbo].[productos] ([codigo], [nombre], [precio]) VALUES (9, N'bateria', 500)
INSERT [dbo].[productos] ([codigo], [nombre], [precio]) VALUES (10, N'auriculares', 200)
SET IDENTITY_INSERT [dbo].[productos] OFF
INSERT [dbo].[venta] ([cajero], [maquina], [producto]) VALUES (3, 2, 9)
INSERT [dbo].[venta] ([cajero], [maquina], [producto]) VALUES (10, 2, 6)
INSERT [dbo].[venta] ([cajero], [maquina], [producto]) VALUES (9, 10, 3)
INSERT [dbo].[venta] ([cajero], [maquina], [producto]) VALUES (5, 8, 2)
INSERT [dbo].[venta] ([cajero], [maquina], [producto]) VALUES (9, 6, 2)
INSERT [dbo].[venta] ([cajero], [maquina], [producto]) VALUES (8, 5, 10)
INSERT [dbo].[venta] ([cajero], [maquina], [producto]) VALUES (10, 3, 7)
INSERT [dbo].[venta] ([cajero], [maquina], [producto]) VALUES (7, 8, 2)
INSERT [dbo].[venta] ([cajero], [maquina], [producto]) VALUES (9, 3, 10)
INSERT [dbo].[venta] ([cajero], [maquina], [producto]) VALUES (5, 7, 8)
ALTER TABLE [dbo].[venta]  WITH CHECK ADD  CONSTRAINT [FK_venta_cajero] FOREIGN KEY([cajero])
REFERENCES [dbo].[cajero] ([codigo])
GO
ALTER TABLE [dbo].[venta] CHECK CONSTRAINT [FK_venta_cajero]
GO
ALTER TABLE [dbo].[venta]  WITH CHECK ADD  CONSTRAINT [FK_venta_maquina_registradora] FOREIGN KEY([maquina])
REFERENCES [dbo].[maquina_registradora] ([codigo])
GO
ALTER TABLE [dbo].[venta] CHECK CONSTRAINT [FK_venta_maquina_registradora]
GO
ALTER TABLE [dbo].[venta]  WITH CHECK ADD  CONSTRAINT [FK_venta_productos] FOREIGN KEY([producto])
REFERENCES [dbo].[productos] ([codigo])
GO
ALTER TABLE [dbo].[venta] CHECK CONSTRAINT [FK_venta_productos]
GO
USE [master]
GO
ALTER DATABASE [tlplelectonic] SET  READ_WRITE 
GO
