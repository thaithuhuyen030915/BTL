USE [master]
GO
/****** Object:  Database [ThaiThuHuyen]    Script Date: 19/05/2024 15:42:37 ******/
CREATE DATABASE [ThaiThuHuyen]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'ThaiThuHuyen', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.WEEN\MSSQL\DATA\ThaiThuHuyen.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'ThaiThuHuyen_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.WEEN\MSSQL\DATA\ThaiThuHuyen_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [ThaiThuHuyen] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ThaiThuHuyen].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ThaiThuHuyen] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ThaiThuHuyen] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ThaiThuHuyen] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ThaiThuHuyen] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ThaiThuHuyen] SET ARITHABORT OFF 
GO
ALTER DATABASE [ThaiThuHuyen] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [ThaiThuHuyen] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ThaiThuHuyen] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ThaiThuHuyen] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ThaiThuHuyen] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ThaiThuHuyen] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ThaiThuHuyen] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ThaiThuHuyen] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ThaiThuHuyen] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ThaiThuHuyen] SET  DISABLE_BROKER 
GO
ALTER DATABASE [ThaiThuHuyen] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ThaiThuHuyen] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ThaiThuHuyen] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ThaiThuHuyen] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ThaiThuHuyen] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ThaiThuHuyen] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [ThaiThuHuyen] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ThaiThuHuyen] SET RECOVERY FULL 
GO
ALTER DATABASE [ThaiThuHuyen] SET  MULTI_USER 
GO
ALTER DATABASE [ThaiThuHuyen] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ThaiThuHuyen] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ThaiThuHuyen] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ThaiThuHuyen] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [ThaiThuHuyen] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [ThaiThuHuyen] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'ThaiThuHuyen', N'ON'
GO
ALTER DATABASE [ThaiThuHuyen] SET QUERY_STORE = OFF
GO
USE [ThaiThuHuyen]
GO
/****** Object:  Table [dbo].[tblLoai]    Script Date: 19/05/2024 15:42:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblLoai](
	[Maloai] [nvarchar](50) NOT NULL,
	[Tenloai] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_tblLoai] PRIMARY KEY CLUSTERED 
(
	[Maloai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblThu]    Script Date: 19/05/2024 15:42:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblThu](
	[Mathu] [nvarchar](50) NOT NULL,
	[Tenthu] [nvarchar](50) NOT NULL,
	[Maloai] [nvarchar](50) NOT NULL,
	[Soluong] [float] NOT NULL,
	[Gioitinh] [nvarchar](50) NOT NULL,
	[Anh] [nvarchar](200) NOT NULL,
	[Tuoitho] [float] NOT NULL,
 CONSTRAINT [PK_tblThu] PRIMARY KEY CLUSTERED 
(
	[Mathu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[tblLoai] ([Maloai], [Tenloai]) VALUES (N'L01', N'ĐV nhỏ')
INSERT [dbo].[tblLoai] ([Maloai], [Tenloai]) VALUES (N'L02', N'ĐV to')
GO
INSERT [dbo].[tblThu] ([Mathu], [Tenthu], [Maloai], [Soluong], [Gioitinh], [Anh], [Tuoitho]) VALUES (N'M01', N'Mèo', N'L01', 100, N'Đực', N'D:\Downloads\Ảnh\', 15)
INSERT [dbo].[tblThu] ([Mathu], [Tenthu], [Maloai], [Soluong], [Gioitinh], [Anh], [Tuoitho]) VALUES (N'M02', N'Voi', N'L02', 200, N'Cái', N'D:\Downloads\Ảnh', 30)
INSERT [dbo].[tblThu] ([Mathu], [Tenthu], [Maloai], [Soluong], [Gioitinh], [Anh], [Tuoitho]) VALUES (N'M03', N'Cá', N'L03', 1000, N'Đực', N'D:\Downloads\Ảnh', 10)
GO
USE [master]
GO
ALTER DATABASE [ThaiThuHuyen] SET  READ_WRITE 
GO
