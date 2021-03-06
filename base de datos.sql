USE [master]
GO
/**
Nombre:Jose Ariel caceres Matricula:14-miit-1-024 Seccion:0541
Nombre:Reymi buret Matricula:15-siin-1-127 Seccion:0541
Nombre: Wander encarnacion Matricula:15-miin-1-108 Seccion:0541
**/
/****** Object:  Database [bancasolidaria]    Script Date: 9/4/2018 9:36:42 p. m. ******/
CREATE DATABASE [bancasolidaria]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'bancasolidaria', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\bancasolidaria.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'bancasolidaria_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\bancasolidaria_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [bancasolidaria] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [bancasolidaria].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [bancasolidaria] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [bancasolidaria] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [bancasolidaria] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [bancasolidaria] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [bancasolidaria] SET ARITHABORT OFF 
GO
ALTER DATABASE [bancasolidaria] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [bancasolidaria] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [bancasolidaria] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [bancasolidaria] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [bancasolidaria] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [bancasolidaria] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [bancasolidaria] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [bancasolidaria] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [bancasolidaria] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [bancasolidaria] SET  ENABLE_BROKER 
GO
ALTER DATABASE [bancasolidaria] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [bancasolidaria] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [bancasolidaria] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [bancasolidaria] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [bancasolidaria] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [bancasolidaria] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [bancasolidaria] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [bancasolidaria] SET RECOVERY FULL 
GO
ALTER DATABASE [bancasolidaria] SET  MULTI_USER 
GO
ALTER DATABASE [bancasolidaria] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [bancasolidaria] SET DB_CHAINING OFF 
GO
ALTER DATABASE [bancasolidaria] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [bancasolidaria] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [bancasolidaria] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'bancasolidaria', N'ON'
GO
ALTER DATABASE [bancasolidaria] SET QUERY_STORE = OFF
GO
USE [bancasolidaria]
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
USE [bancasolidaria]
GO
/****** Object:  Table [dbo].[cajeros]    Script Date: 9/4/2018 9:36:43 p. m. ******/
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
/****** Object:  Table [dbo].[maquina_registradora]    Script Date: 9/4/2018 9:36:43 p. m. ******/
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
/****** Object:  Table [dbo].[productos]    Script Date: 9/4/2018 9:36:44 p. m. ******/
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
/****** Object:  Table [dbo].[venta]    Script Date: 9/4/2018 9:36:44 p. m. ******/
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

INSERT [dbo].[cajeros] ([codigo], [nombre]) VALUES (1, N'wander encarnacion')
INSERT [dbo].[cajeros] ([codigo], [nombre]) VALUES (2, N'jose caceres')
INSERT [dbo].[cajeros] ([codigo], [nombre]) VALUES (3, N'carlos perez')
INSERT [dbo].[cajeros] ([codigo], [nombre]) VALUES (4, N'jhonatan ramires')
INSERT [dbo].[cajeros] ([codigo], [nombre]) VALUES (5, N'eduar perez')
INSERT [dbo].[cajeros] ([codigo], [nombre]) VALUES (6, N'ivan carrion')
INSERT [dbo].[cajeros] ([codigo], [nombre]) VALUES (7, N'pedro almando')
INSERT [dbo].[cajeros] ([codigo], [nombre]) VALUES (8, N'luis almanza')
INSERT [dbo].[cajeros] ([codigo], [nombre]) VALUES (9, N'antonio perez')
INSERT [dbo].[cajeros] ([codigo], [nombre]) VALUES (10, N'gabriel alcantara')
SET IDENTITY_INSERT [dbo].[cajeros] OFF
SET IDENTITY_INSERT [dbo].[maquina_registradora] ON 

INSERT [dbo].[maquina_registradora] ([codigo], [piso]) VALUES (1, 4)
INSERT [dbo].[maquina_registradora] ([codigo], [piso]) VALUES (2, 6)
INSERT [dbo].[maquina_registradora] ([codigo], [piso]) VALUES (3, 9)
INSERT [dbo].[maquina_registradora] ([codigo], [piso]) VALUES (4, 3)
INSERT [dbo].[maquina_registradora] ([codigo], [piso]) VALUES (5, 2)
INSERT [dbo].[maquina_registradora] ([codigo], [piso]) VALUES (6, 5)
INSERT [dbo].[maquina_registradora] ([codigo], [piso]) VALUES (7, 7)
INSERT [dbo].[maquina_registradora] ([codigo], [piso]) VALUES (8, 8)
INSERT [dbo].[maquina_registradora] ([codigo], [piso]) VALUES (9, 23)
INSERT [dbo].[maquina_registradora] ([codigo], [piso]) VALUES (10, 3)
SET IDENTITY_INSERT [dbo].[maquina_registradora] OFF
SET IDENTITY_INSERT [dbo].[productos] ON 

INSERT [dbo].[productos] ([codigo], [nombre], [precio]) VALUES (1, N'pretamo comercial', 2000)
INSERT [dbo].[productos] ([codigo], [nombre], [precio]) VALUES (2, N'pretamo personal', 1500)
INSERT [dbo].[productos] ([codigo], [nombre], [precio]) VALUES (3, N'pretamo hipotecario', 450)
INSERT [dbo].[productos] ([codigo], [nombre], [precio]) VALUES (4, N'pretamo para vehiculos', 349)
INSERT [dbo].[productos] ([codigo], [nombre], [precio]) VALUES (5, N'pretamo educativo', 1000)
INSERT [dbo].[productos] ([codigo], [nombre], [precio]) VALUES (6, N'tarjeta de credito', 4000)
INSERT [dbo].[productos] ([codigo], [nombre], [precio]) VALUES (7, N'targeta de debito', 5000)
INSERT [dbo].[productos] ([codigo], [nombre], [precio]) VALUES (8, N'cuenta de ahorros ', 9000)
INSERT [dbo].[productos] ([codigo], [nombre], [precio]) VALUES (9, N'cuenta corriente', 188)
INSERT [dbo].[productos] ([codigo], [nombre], [precio]) VALUES (10, N'tarjeta de debito', NULL)
SET IDENTITY_INSERT [dbo].[productos] OFF
INSERT [dbo].[venta] ([cajero], [maquina], [producto]) VALUES (1, 10, 4)
INSERT [dbo].[venta] ([cajero], [maquina], [producto]) VALUES (7, 10, 5)
INSERT [dbo].[venta] ([cajero], [maquina], [producto]) VALUES (4, 9, 1)
INSERT [dbo].[venta] ([cajero], [maquina], [producto]) VALUES (1, 5, 2)
INSERT [dbo].[venta] ([cajero], [maquina], [producto]) VALUES (9, 6, 8)
INSERT [dbo].[venta] ([cajero], [maquina], [producto]) VALUES (6, 2, 9)
INSERT [dbo].[venta] ([cajero], [maquina], [producto]) VALUES (5, 4, 1)
INSERT [dbo].[venta] ([cajero], [maquina], [producto]) VALUES (7, 2, 8)
INSERT [dbo].[venta] ([cajero], [maquina], [producto]) VALUES (3, 9, 4)
INSERT [dbo].[venta] ([cajero], [maquina], [producto]) VALUES (5, 8, 2)
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
ALTER TABLE [dbo].[venta]  WITH CHECK ADD  CONSTRAINT [FK_venta_productos] FOREIGN KEY([producto])
REFERENCES [dbo].[productos] ([codigo])
GO
ALTER TABLE [dbo].[venta] CHECK CONSTRAINT [FK_venta_productos]
GO
USE [master]
GO
ALTER DATABASE [bancasolidaria] SET  READ_WRITE 
GO
