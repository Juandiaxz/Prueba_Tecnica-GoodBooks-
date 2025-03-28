USE [master]
GO
/****** Object:  Database [GoodBooks]    Script Date: 23/03/2025 21:33:12 ******/
CREATE DATABASE [GoodBooks]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'GoodBooks', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\GoodBooks.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'GoodBooks_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\GoodBooks_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [GoodBooks] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [GoodBooks].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [GoodBooks] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [GoodBooks] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [GoodBooks] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [GoodBooks] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [GoodBooks] SET ARITHABORT OFF 
GO
ALTER DATABASE [GoodBooks] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [GoodBooks] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [GoodBooks] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [GoodBooks] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [GoodBooks] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [GoodBooks] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [GoodBooks] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [GoodBooks] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [GoodBooks] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [GoodBooks] SET  DISABLE_BROKER 
GO
ALTER DATABASE [GoodBooks] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [GoodBooks] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [GoodBooks] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [GoodBooks] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [GoodBooks] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [GoodBooks] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [GoodBooks] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [GoodBooks] SET RECOVERY FULL 
GO
ALTER DATABASE [GoodBooks] SET  MULTI_USER 
GO
ALTER DATABASE [GoodBooks] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [GoodBooks] SET DB_CHAINING OFF 
GO
ALTER DATABASE [GoodBooks] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [GoodBooks] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [GoodBooks] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [GoodBooks] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'GoodBooks', N'ON'
GO
ALTER DATABASE [GoodBooks] SET QUERY_STORE = ON
GO
ALTER DATABASE [GoodBooks] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [GoodBooks]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 23/03/2025 21:33:13 ******/
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
/****** Object:  Table [dbo].[Autores]    Script Date: 23/03/2025 21:33:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Autores](
	[AutorID] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_Autores] PRIMARY KEY CLUSTERED 
(
	[AutorID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Libros]    Script Date: 23/03/2025 21:33:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Libros](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Titulo] [nvarchar](max) NOT NULL,
	[AutorID] [int] NOT NULL,
 CONSTRAINT [PK_Libros] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Index [IX_Libros_AutorID]    Script Date: 23/03/2025 21:33:13 ******/
CREATE NONCLUSTERED INDEX [IX_Libros_AutorID] ON [dbo].[Libros]
(
	[AutorID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Libros]  WITH CHECK ADD  CONSTRAINT [FK_Libros_Autores_AutorID] FOREIGN KEY([AutorID])
REFERENCES [dbo].[Autores] ([AutorID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Libros] CHECK CONSTRAINT [FK_Libros_Autores_AutorID]
GO
USE [master]
GO
ALTER DATABASE [GoodBooks] SET  READ_WRITE 
GO
