USE [master]
GO
/****** Object:  Database [falabella]    Script Date: 3/10/2019 11:15:56 PM ******/
CREATE DATABASE [falabella]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'falabella', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\falabella.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'falabella_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\falabella_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [falabella] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [falabella].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [falabella] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [falabella] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [falabella] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [falabella] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [falabella] SET ARITHABORT OFF 
GO
ALTER DATABASE [falabella] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [falabella] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [falabella] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [falabella] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [falabella] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [falabella] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [falabella] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [falabella] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [falabella] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [falabella] SET  DISABLE_BROKER 
GO
ALTER DATABASE [falabella] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [falabella] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [falabella] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [falabella] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [falabella] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [falabella] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [falabella] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [falabella] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [falabella] SET  MULTI_USER 
GO
ALTER DATABASE [falabella] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [falabella] SET DB_CHAINING OFF 
GO
ALTER DATABASE [falabella] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [falabella] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [falabella] SET DELAYED_DURABILITY = DISABLED 
GO
USE [falabella]
GO
/****** Object:  Table [dbo].[beneficio]    Script Date: 3/10/2019 11:15:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[beneficio](
	[id_beneficio] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](50) NOT NULL,
	[estado] [int] NOT NULL,
 CONSTRAINT [PK_beneficio] PRIMARY KEY CLUSTERED 
(
	[id_beneficio] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[compañia]    Script Date: 3/10/2019 11:15:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[compañia](
	[Id_compañia] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
	[Direccion] [varchar](50) NOT NULL,
	[telefono] [varchar](50) NOT NULL,
	[estado] [varchar](50) NOT NULL,
 CONSTRAINT [PK_compañia] PRIMARY KEY CLUSTERED 
(
	[Id_compañia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[fomapago]    Script Date: 3/10/2019 11:15:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[fomapago](
	[id_forma_pago] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](50) NOT NULL,
 CONSTRAINT [PK_fomapago] PRIMARY KEY CLUSTERED 
(
	[id_forma_pago] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[persona]    Script Date: 3/10/2019 11:15:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[persona](
	[id_persona] [int] IDENTITY(1,1) NOT NULL,
	[nombres] [varchar](50) NOT NULL,
	[apellidos] [varchar](50) NOT NULL,
	[cod_tipo_documento] [varchar](50) NOT NULL,
	[documento] [varchar](20) NOT NULL,
	[correo] [varchar](50) NOT NULL,
	[telefono] [varchar](15) NOT NULL,
	[cod_rol] [int] NOT NULL,
	[contraseña] [varchar](50) NOT NULL,
	[cod_compañia] [int] NOT NULL,
	[estado] [int] NOT NULL,
 CONSTRAINT [PK_persona] PRIMARY KEY CLUSTERED 
(
	[id_persona] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[producto]    Script Date: 3/10/2019 11:15:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[producto](
	[id_producto] [int] IDENTITY(1,1) NOT NULL,
	[cod_compañia] [int] NOT NULL,
	[nombre] [varchar](50) NOT NULL,
	[valor] [int] NOT NULL,
	[cod_beneficio] [int] NOT NULL,
	[cod_segundo_beneficio] [int] NOT NULL,
	[cod_tercer_beneficio] [int] NOT NULL,
	[estado] [int] NOT NULL,
 CONSTRAINT [PK_producto] PRIMARY KEY CLUSTERED 
(
	[id_producto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[rol]    Script Date: 3/10/2019 11:15:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[rol](
	[id_rol] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](50) NOT NULL,
 CONSTRAINT [PK_rol] PRIMARY KEY CLUSTERED 
(
	[id_rol] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tipodocumento]    Script Date: 3/10/2019 11:15:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tipodocumento](
	[id_tipo_documento] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](50) NOT NULL,
 CONSTRAINT [PK_tipodocumento] PRIMARY KEY CLUSTERED 
(
	[id_tipo_documento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[venta]    Script Date: 3/10/2019 11:15:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[venta](
	[id_venta] [int] IDENTITY(1,1) NOT NULL,
	[cod_sede] [int] NOT NULL,
	[cod_producto] [int] NOT NULL,
	[cod_forma_pago] [int] NOT NULL,
	[cod_asesor] [int] NOT NULL,
	[cod_cliente] [int] NOT NULL,
	[fecha] [datetime] NOT NULL,
	[valor_venta] [varchar](50) NOT NULL,
	[estado] [int] NOT NULL,
 CONSTRAINT [PK_venta] PRIMARY KEY CLUSTERED 
(
	[id_venta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
USE [master]
GO
ALTER DATABASE [falabella] SET  READ_WRITE 
GO
