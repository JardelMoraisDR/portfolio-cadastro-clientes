USE [master]
GO
/****** Object:  Database [crudclientes]    Script Date: 20/10/2022 00:15:56 ******/
CREATE DATABASE [crudclientes]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'crudclientes', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\crudclientes.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'crudclientes_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\crudclientes_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [crudclientes] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [crudclientes].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [crudclientes] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [crudclientes] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [crudclientes] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [crudclientes] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [crudclientes] SET ARITHABORT OFF 
GO
ALTER DATABASE [crudclientes] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [crudclientes] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [crudclientes] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [crudclientes] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [crudclientes] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [crudclientes] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [crudclientes] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [crudclientes] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [crudclientes] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [crudclientes] SET  ENABLE_BROKER 
GO
ALTER DATABASE [crudclientes] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [crudclientes] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [crudclientes] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [crudclientes] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [crudclientes] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [crudclientes] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [crudclientes] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [crudclientes] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [crudclientes] SET  MULTI_USER 
GO
ALTER DATABASE [crudclientes] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [crudclientes] SET DB_CHAINING OFF 
GO
ALTER DATABASE [crudclientes] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [crudclientes] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [crudclientes] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [crudclientes] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [crudclientes] SET QUERY_STORE = OFF
GO
USE [crudclientes]
GO
/****** Object:  User [jardel]    Script Date: 20/10/2022 00:15:56 ******/
CREATE USER [jardel] FOR LOGIN [jardel] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 20/10/2022 00:15:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Clientes]    Script Date: 20/10/2022 00:15:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Clientes](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nome] [nvarchar](max) NOT NULL,
	[CPF] [nvarchar](14) NOT NULL,
	[DataNascimento] [nvarchar](max) NOT NULL,
	[Sexo] [nvarchar](max) NOT NULL,
	[Estado] [nvarchar](max) NOT NULL,
	[Cidade] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Clientes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Clientes] ON 

INSERT [dbo].[Clientes] ([Id], [Nome], [CPF], [DataNascimento], [Sexo], [Estado], [Cidade]) VALUES (1, N'Jardel Morais Dias Ribeiro', N'489.486.748-62', N'2022-10-21', N'M', N'SP', N'Santo Andre')
INSERT [dbo].[Clientes] ([Id], [Nome], [CPF], [DataNascimento], [Sexo], [Estado], [Cidade]) VALUES (5, N'Maria da Silva', N'456.890.766-90', N'2022-10-13', N'F', N'MG', N'Belo Horizonte')
SET IDENTITY_INSERT [dbo].[Clientes] OFF
GO
USE [master]
GO
ALTER DATABASE [crudclientes] SET  READ_WRITE 
GO
