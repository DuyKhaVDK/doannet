USE [master]
GO
/****** Object:  Database [DOANNET]    Script Date: 1/10/2021 21:43:08 ******/
CREATE DATABASE [DOANNET]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'DOANNET', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\DOANNET.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'DOANNET_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\DOANNET_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
-- drop DATABASE [DOANNET]
ALTER DATABASE [DOANNET] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [DOANNET].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [DOANNET] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [DOANNET] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [DOANNET] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [DOANNET] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [DOANNET] SET ARITHABORT OFF 
GO
ALTER DATABASE [DOANNET] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [DOANNET] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [DOANNET] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [DOANNET] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [DOANNET] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [DOANNET] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [DOANNET] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [DOANNET] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [DOANNET] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [DOANNET] SET  ENABLE_BROKER 
GO
ALTER DATABASE [DOANNET] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [DOANNET] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [DOANNET] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [DOANNET] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [DOANNET] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [DOANNET] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [DOANNET] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [DOANNET] SET RECOVERY FULL 
GO
ALTER DATABASE [DOANNET] SET  MULTI_USER 
GO
ALTER DATABASE [DOANNET] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [DOANNET] SET DB_CHAINING OFF 
GO
ALTER DATABASE [DOANNET] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [DOANNET] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [DOANNET] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'DOANNET', N'ON'
GO
ALTER DATABASE [DOANNET] SET QUERY_STORE = OFF
GO
USE [DOANNET]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 1/10/2021 21:43:08 ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Banner]    Script Date: 1/10/2021 21:43:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Banner](
	[idBanner] [int] IDENTITY(1,1) NOT NULL,
	[hinhAnh] [nvarchar](max) NULL,
	[ngayTao] [datetime2](7) NOT NULL,
	[ngayBatDau] [datetime2](7) NOT NULL,
	[ngayKetThuc] [datetime2](7) NOT NULL,
	[url] [nvarchar](max) NULL,
	[UseridUser] [int] NULL,
 CONSTRAINT [PK_Banner] PRIMARY KEY CLUSTERED 
(
	[idBanner] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChinhSachGiaoHang]    Script Date: 1/10/2021 21:43:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChinhSachGiaoHang](
	[idChinhSachGiaoHang] [int] IDENTITY(1,1) NOT NULL,
	[tieuDe] [nvarchar](max) NULL,
	[noiDung] [nvarchar](max) NULL,
	[hinhAnh] [nvarchar](max) NULL,
	[ngayTao] [datetime2](7) NOT NULL,
	[ngayCapNhat] [datetime2](7) NOT NULL,
	[UseridUser] [int] NULL,
 CONSTRAINT [PK_ChinhSachGiaoHang] PRIMARY KEY CLUSTERED 
(
	[idChinhSachGiaoHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChiTietDonHang]    Script Date: 1/10/2021 21:43:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietDonHang](
	[idCTDH] [int] IDENTITY(1,1) NOT NULL,
	[idDH] [int] NOT NULL,
	[tenSP] [nvarchar](max) NULL,
	[hinhSP] [nvarchar](max) NULL,
	[donGia] [int] NOT NULL,
	[soLuong] [int] NOT NULL,
	[thanhTien] [int] NOT NULL,
 CONSTRAINT [PK_ChiTietDonHang] PRIMARY KEY CLUSTERED 
(
	[idCTDH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DieuKhoanDichVu]    Script Date: 1/10/2021 21:43:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DieuKhoanDichVu](
	[idDieuKhoanDV] [int] IDENTITY(1,1) NOT NULL,
	[tieuDe] [nvarchar](max) NULL,
	[noiDung] [nvarchar](max) NULL,
	[hinhAnh] [nvarchar](max) NULL,
	[ngayTao] [datetime2](7) NOT NULL,
	[ngayCapNhat] [datetime2](7) NOT NULL,
	[UseridUser] [int] NULL,
 CONSTRAINT [PK_DieuKhoanDichVu] PRIMARY KEY CLUSTERED 
(
	[idDieuKhoanDV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DonHang]    Script Date: 1/10/2021 21:43:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DonHang](
	[idDH] [int] IDENTITY(1,1) NOT NULL,
	[ngayDat] [datetime2](7) NOT NULL,
	[ngayCapNhat] [datetime2](7) NOT NULL,
	[hoDH] [nvarchar](10) NOT NULL,
	[tenDH] [nvarchar](50) NOT NULL,
	[diaChi] [nvarchar](200) NOT NULL,
	[eMail] [nvarchar](200) NOT NULL,
	[sdtDH] [nvarchar](10) NOT NULL,
	[ghiChu] [nvarchar](max) NULL,
	[tongTienHang] [int] NOT NULL,
	[maGiamGiaDH] [int] NOT NULL,
	[tongSoTien] [int] NOT NULL,
	[trangThai] [nvarchar](max) NULL,
	[idUser] [int] NOT NULL,
	[UseridUser] [int] NULL,
	[MaGiamGiacodeMGG] [nvarchar](450) NULL,
 CONSTRAINT [PK_DonHang] PRIMARY KEY CLUSTERED 
(
	[idDH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GioHang]    Script Date: 1/10/2021 21:43:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GioHang](
	[idGioHang] [int] IDENTITY(1,1) NOT NULL,
	[soLuong] [int] NOT NULL,
	[idUser] [int] NOT NULL,
	[SanPhamidSP] [int] NULL,
	[giasp] [int] NOT NULL,
	[tensp] [int] NOT NULL,
	[idsp] [int] NOT NULL,
 CONSTRAINT [PK_GioHang] PRIMARY KEY CLUSTERED 
(
	[idGioHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GioiThieu]    Script Date: 1/10/2021 21:43:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GioiThieu](
	[idGioiThieu] [int] IDENTITY(1,1) NOT NULL,
	[tieuDe] [nvarchar](max) NULL,
	[noiDung] [nvarchar](max) NULL,
	[hinhAnh] [int] NOT NULL,
	[ngayTao] [datetime2](7) NOT NULL,
	[ngayCapNhat] [datetime2](7) NOT NULL,
	[UseridUser] [int] NULL,
 CONSTRAINT [PK_GioiThieu] PRIMARY KEY CLUSTERED 
(
	[idGioiThieu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[IPuser]    Script Date: 1/10/2021 21:43:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IPuser](
	[idIPuser] [int] IDENTITY(1,1) NOT NULL,
	[idUser] [int] NOT NULL,
	[diachiip] [nvarchar](max) NULL,
 CONSTRAINT [PK_IPuser] PRIMARY KEY CLUSTERED 
(
	[idIPuser] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LienHe]    Script Date: 1/10/2021 21:43:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LienHe](
	[idLH] [int] IDENTITY(1,1) NOT NULL,
	[hoTen] [nvarchar](50) NOT NULL,
	[eMail] [nvarchar](200) NOT NULL,
	[tieuDe] [nvarchar](max) NOT NULL,
	[noiDung] [nvarchar](max) NOT NULL,
	[ngayGui] [datetime2](7) NOT NULL,
	[ngayCapNhat] [datetime2](7) NOT NULL,
	[trangThai] [nvarchar](max) NULL,
 CONSTRAINT [PK_LienHe] PRIMARY KEY CLUSTERED 
(
	[idLH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LoaiSP]    Script Date: 1/10/2021 21:43:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiSP](
	[idLoaiSP] [int] IDENTITY(1,1) NOT NULL,
	[tenLoaiSP] [nvarchar](50) NOT NULL,
	[hinhAnh] [nvarchar](max) NULL,
	[metaTitle] [nvarchar](max) NOT NULL,
	[trangThai] [nvarchar](max) NULL,
	[ngayTao] [datetime2](7) NOT NULL,
	[ngayCapNhat] [datetime2](7) NOT NULL,
	[idUser] [int] NOT NULL,
	[typeLoai] [nvarchar](max) NULL,
 CONSTRAINT [PK_LoaiSP] PRIMARY KEY CLUSTERED 
(
	[idLoaiSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MaGiamGia]    Script Date: 1/10/2021 21:43:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MaGiamGia](
	[codeMGG] [nvarchar](450) NOT NULL,
	[tenMGG] [nvarchar](max) NULL,
	[giaTri] [int] NOT NULL,
	[soLuong] [int] NOT NULL,
	[trangThai] [nvarchar](max) NOT NULL,
	[ngayTao] [datetime2](7) NOT NULL,
	[ngayCapNhat] [datetime2](7) NOT NULL,
	[UseridUser] [int] NULL,
 CONSTRAINT [PK_MaGiamGia] PRIMARY KEY CLUSTERED 
(
	[codeMGG] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[QuyDinhChung]    Script Date: 1/10/2021 21:43:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QuyDinhChung](
	[idQuyDinhChung] [int] IDENTITY(1,1) NOT NULL,
	[tieuDe] [nvarchar](max) NULL,
	[noiDung] [nvarchar](max) NULL,
	[hinhAnh] [nvarchar](max) NULL,
	[ngayTao] [datetime2](7) NOT NULL,
	[ngayCapNhat] [datetime2](7) NOT NULL,
	[UseridUser] [int] NULL,
 CONSTRAINT [PK_QuyDinhChung] PRIMARY KEY CLUSTERED 
(
	[idQuyDinhChung] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SanPham]    Script Date: 1/10/2021 21:43:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SanPham](
	[idSP] [int] IDENTITY(1,1) NOT NULL,
	[tenSP] [nvarchar](100) NOT NULL,
	[giaSP] [int] NOT NULL,
	[hinhAnh] [nvarchar](max) NULL,
	[luotXem] [int] NOT NULL,
	[soLuongKho] [int] NOT NULL,
	[moTa] [nvarchar](max) NULL,
	[idLoaiSP] [int] NOT NULL,
	[trangThai] [nvarchar](max) NULL,
	[ngayTao] [datetime2](7) NOT NULL,
	[ngayCapNhat] [datetime2](7) NOT NULL,
	[luotMua] [int] NOT NULL,
	[ThuongHieuidThuongHieu] [int] NULL,
	[UseridUser] [int] NULL,
 CONSTRAINT [PK_SanPham] PRIMARY KEY CLUSTERED 
(
	[idSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ThuongHieu]    Script Date: 1/10/2021 21:43:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ThuongHieu](
	[idThuongHieu] [int] IDENTITY(1,1) NOT NULL,
	[tenThuongHieu] [nvarchar](100) NOT NULL,
	[hinhLogo] [nvarchar](max) NOT NULL,
	[sdtThuongHieu] [nvarchar](max) NULL,
	[emailThuongHieu] [nvarchar](200) NOT NULL,
	[trangThai] [nvarchar](max) NULL,
	[ngayTao] [datetime2](7) NOT NULL,
	[ngayCapNhat] [datetime2](7) NOT NULL,
	[idUser] [int] NOT NULL,
 CONSTRAINT [PK_ThuongHieu] PRIMARY KEY CLUSTERED 
(
	[idThuongHieu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 1/10/2021 21:43:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[idUser] [int] IDENTITY(1,1) NOT NULL,
	[hoUser] [nvarchar](10) NOT NULL,
	[tenUser] [nvarchar](50) NOT NULL,
	[sdtUser] [nvarchar](10) NOT NULL,
	[emailUser] [nvarchar](200) NOT NULL,
	[matKhau] [nvarchar](max) NOT NULL,
	[gioiTinh] [int] NOT NULL,
	[ngaySinh] [datetime2](7) NOT NULL,
	[diaChi] [nvarchar](max) NULL,
	[hinhAVT] [nvarchar](max) NULL,
	[ngayTao] [datetime2](7) NOT NULL,
	[ngayCapNhat] [datetime2](7) NOT NULL,
	[hoatDongLanCuoi] [datetime2](7) NOT NULL,
	[trangThai] [nvarchar](max) NULL,
	[vaiTro] [nvarchar](max) NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[idUser] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20201223063036_dbinit', N'3.1.7')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20201225075307_update', N'3.1.9')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20201225160745_202012252300', N'3.1.9')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20201225161529_202012252315', N'3.1.9')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20201225191426_22012260214', N'3.1.9')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20201230155453_2020123054', N'3.1.9')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210102195215_202101030252', N'3.1.9')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210104165207_202101042352', N'3.1.9')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210106095018_202101061650', N'3.1.9')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210106173825_202101070038', N'3.1.9')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210106181318_202101070113', N'3.1.9')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210106191402_202101070214', N'3.1.9')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210106201405_202101070313', N'3.1.9')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210107193044_202101080230', N'3.1.9')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210107195528_202101080255', N'3.1.9')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210109063506_202101081334', N'3.1.9')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210110060007_202101101259', N'3.1.9')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210110060211_202101101302', N'3.1.9')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210110093014_202101101629', N'3.1.9')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210110095821_202101101659', N'3.1.9')
SET IDENTITY_INSERT [dbo].[Banner] ON 

INSERT [dbo].[Banner] ([idBanner], [hinhAnh], [ngayTao], [ngayBatDau], [ngayKetThuc], [url], [UseridUser]) VALUES (3, N'2021_01_09_17_30_47.jpg', CAST(N'2021-01-08T01:07:22.7218947' AS DateTime2), CAST(N'2021-01-08T01:07:00.0000000' AS DateTime2), CAST(N'2021-01-16T01:07:00.0000000' AS DateTime2), NULL, NULL)
INSERT [dbo].[Banner] ([idBanner], [hinhAnh], [ngayTao], [ngayBatDau], [ngayKetThuc], [url], [UseridUser]) VALUES (4, N'2021_01_09_17_30_58.jpg', CAST(N'2021-01-08T01:07:40.1690858' AS DateTime2), CAST(N'2021-01-08T01:07:00.0000000' AS DateTime2), CAST(N'2021-01-22T01:07:00.0000000' AS DateTime2), NULL, NULL)
INSERT [dbo].[Banner] ([idBanner], [hinhAnh], [ngayTao], [ngayBatDau], [ngayKetThuc], [url], [UseridUser]) VALUES (5, N'2021_01_09_17_31_14.jpg', CAST(N'2021-01-08T01:07:53.2068174' AS DateTime2), CAST(N'2021-01-08T01:07:00.0000000' AS DateTime2), CAST(N'2021-01-15T01:07:00.0000000' AS DateTime2), NULL, NULL)
INSERT [dbo].[Banner] ([idBanner], [hinhAnh], [ngayTao], [ngayBatDau], [ngayKetThuc], [url], [UseridUser]) VALUES (6, N'2021_01_09_17_31_27.jpg', CAST(N'2021-01-08T01:08:12.2154525' AS DateTime2), CAST(N'2021-01-08T01:08:00.0000000' AS DateTime2), CAST(N'2021-01-10T01:08:00.0000000' AS DateTime2), NULL, NULL)
INSERT [dbo].[Banner] ([idBanner], [hinhAnh], [ngayTao], [ngayBatDau], [ngayKetThuc], [url], [UseridUser]) VALUES (7, N'2021_01_09_17_31_44.jpg', CAST(N'2021-01-09T17:31:44.0305459' AS DateTime2), CAST(N'2021-01-10T17:31:00.0000000' AS DateTime2), CAST(N'2021-01-13T17:31:00.0000000' AS DateTime2), NULL, NULL)
SET IDENTITY_INSERT [dbo].[Banner] OFF
SET IDENTITY_INSERT [dbo].[DonHang] ON 

INSERT [dbo].[DonHang] ([idDH], [ngayDat], [ngayCapNhat], [hoDH], [tenDH], [diaChi], [eMail], [sdtDH], [ghiChu], [tongTienHang], [maGiamGiaDH], [tongSoTien], [trangThai], [idUser], [UseridUser], [MaGiamGiacodeMGG]) VALUES (1, CAST(N'2021-01-10T17:28:21.8833722' AS DateTime2), CAST(N'2021-01-10T17:28:21.8832781' AS DateTime2), N'd', N'd', N'd', N'duyclad@gmail.com', N'd', N'dđ', 4095000, 0, 4095000, N'Đang xử lý', 0, NULL, NULL)
INSERT [dbo].[DonHang] ([idDH], [ngayDat], [ngayCapNhat], [hoDH], [tenDH], [diaChi], [eMail], [sdtDH], [ghiChu], [tongTienHang], [maGiamGiaDH], [tongSoTien], [trangThai], [idUser], [UseridUser], [MaGiamGiacodeMGG]) VALUES (2, CAST(N'2021-01-10T17:32:05.3329771' AS DateTime2), CAST(N'2021-01-10T17:32:05.3329121' AS DateTime2), N'Cổ Lê Anh', N'Duy', N'Lương Hòa - Bến Lức - Long An - Việt Nam', N'coleanhduy.study@gmail.com', N'0969376729', N'dđ', 2320000, 0, 2320000, N'Đang xử lý', 0, NULL, NULL)
INSERT [dbo].[DonHang] ([idDH], [ngayDat], [ngayCapNhat], [hoDH], [tenDH], [diaChi], [eMail], [sdtDH], [ghiChu], [tongTienHang], [maGiamGiaDH], [tongSoTien], [trangThai], [idUser], [UseridUser], [MaGiamGiacodeMGG]) VALUES (3, CAST(N'2021-01-10T17:33:58.5115519' AS DateTime2), CAST(N'2021-01-10T17:33:58.5114939' AS DateTime2), N'Cổ Lê Anh', N'Duy', N'Lương Hòa - Bến Lức - Long An - Việt Nam', N'coleanhduy.study@gmail.com', N'0969376729', N'dđ', 1450000, 0, 1450000, N'Đang xử lý', 0, NULL, NULL)
INSERT [dbo].[DonHang] ([idDH], [ngayDat], [ngayCapNhat], [hoDH], [tenDH], [diaChi], [eMail], [sdtDH], [ghiChu], [tongTienHang], [maGiamGiaDH], [tongSoTien], [trangThai], [idUser], [UseridUser], [MaGiamGiacodeMGG]) VALUES (5, CAST(N'2021-01-10T17:56:21.2283231' AS DateTime2), CAST(N'2021-01-10T17:56:21.2282639' AS DateTime2), N'Cổ Lê Anh', N'Duy', N'Lương Hòa - Bến Lức - Long An - Việt Nam', N'coleanhduy.study@gmail.com', N'0969376729', NULL, 585000, 0, 585000, N'Đang xử lý', 0, NULL, NULL)
INSERT [dbo].[DonHang] ([idDH], [ngayDat], [ngayCapNhat], [hoDH], [tenDH], [diaChi], [eMail], [sdtDH], [ghiChu], [tongTienHang], [maGiamGiaDH], [tongSoTien], [trangThai], [idUser], [UseridUser], [MaGiamGiacodeMGG]) VALUES (6, CAST(N'2021-01-10T18:07:08.6122653' AS DateTime2), CAST(N'2021-01-10T18:07:08.6122027' AS DateTime2), N'Cổ Lê Anh', N'Duy', N'Lương Hòa - Bến Lức - Long An - Việt Nam', N'coleanhduy.study@gmail.com', N'0969376729', NULL, 585000, 0, 585000, N'Đang xử lý', 0, NULL, NULL)
INSERT [dbo].[DonHang] ([idDH], [ngayDat], [ngayCapNhat], [hoDH], [tenDH], [diaChi], [eMail], [sdtDH], [ghiChu], [tongTienHang], [maGiamGiaDH], [tongSoTien], [trangThai], [idUser], [UseridUser], [MaGiamGiacodeMGG]) VALUES (8, CAST(N'2021-01-10T18:08:33.8562791' AS DateTime2), CAST(N'2021-01-10T18:08:33.8562147' AS DateTime2), N'Cổ Lê Anh', N'Duy', N'Lương Hòa - Bến Lức - Long An - Việt Nam', N'coleanhduy.study@gmail.com', N'0969376729', NULL, 585000, 0, 585000, N'Đang xử lý', 0, NULL, NULL)
INSERT [dbo].[DonHang] ([idDH], [ngayDat], [ngayCapNhat], [hoDH], [tenDH], [diaChi], [eMail], [sdtDH], [ghiChu], [tongTienHang], [maGiamGiaDH], [tongSoTien], [trangThai], [idUser], [UseridUser], [MaGiamGiacodeMGG]) VALUES (9, CAST(N'2021-01-10T18:08:38.6244402' AS DateTime2), CAST(N'2021-01-10T18:08:38.6244399' AS DateTime2), N'Cổ Lê Anh', N'Duy', N'Lương Hòa - Bến Lức - Long An - Việt Nam', N'coleanhduy.study@gmail.com', N'0969376729', NULL, 585000, 0, 585000, N'Đang xử lý', 0, NULL, NULL)
SET IDENTITY_INSERT [dbo].[DonHang] OFF
SET IDENTITY_INSERT [dbo].[IPuser] ON 

INSERT [dbo].[IPuser] ([idIPuser], [idUser], [diachiip]) VALUES (1, 1, N'5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36')
INSERT [dbo].[IPuser] ([idIPuser], [idUser], [diachiip]) VALUES (18, 19, N'5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36')
INSERT [dbo].[IPuser] ([idIPuser], [idUser], [diachiip]) VALUES (19, 19, N'5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36 Edg/87.0.664.66')
SET IDENTITY_INSERT [dbo].[IPuser] OFF
SET IDENTITY_INSERT [dbo].[LoaiSP] ON 

INSERT [dbo].[LoaiSP] ([idLoaiSP], [tenLoaiSP], [hinhAnh], [metaTitle], [trangThai], [ngayTao], [ngayCapNhat], [idUser], [typeLoai]) VALUES (2, N'Áo Thun', N'aothun.jpg', N'Áo Thun GONZ', N'Hiển thị', CAST(N'2020-12-23T00:00:00.0000000' AS DateTime2), CAST(N'2020-12-23T00:00:00.0000000' AS DateTime2), 1, NULL)
INSERT [dbo].[LoaiSP] ([idLoaiSP], [tenLoaiSP], [hinhAnh], [metaTitle], [trangThai], [ngayTao], [ngayCapNhat], [idUser], [typeLoai]) VALUES (1004, N'test162530', N'test1.jpg', N'quần short', N'hiển thị', CAST(N'2020-12-25T22:50:43.1864867' AS DateTime2), CAST(N'2020-12-25T22:50:43.1868187' AS DateTime2), 1, NULL)
INSERT [dbo].[LoaiSP] ([idLoaiSP], [tenLoaiSP], [hinhAnh], [metaTitle], [trangThai], [ngayTao], [ngayCapNhat], [idUser], [typeLoai]) VALUES (1005, N'duyclad', N'duyacld', N'123', N'hiển thị', CAST(N'2020-12-25T23:59:54.3263526' AS DateTime2), CAST(N'2020-12-25T23:59:54.3265252' AS DateTime2), 1, NULL)
INSERT [dbo].[LoaiSP] ([idLoaiSP], [tenLoaiSP], [hinhAnh], [metaTitle], [trangThai], [ngayTao], [ngayCapNhat], [idUser], [typeLoai]) VALUES (1006, N'lầ 123', N'Untitled.png', N'quần short', N'hiển thị', CAST(N'2020-12-25T17:39:44.5552729' AS DateTime2), CAST(N'2020-12-25T17:39:44.5555130' AS DateTime2), 1, NULL)
INSERT [dbo].[LoaiSP] ([idLoaiSP], [tenLoaiSP], [hinhAnh], [metaTitle], [trangThai], [ngayTao], [ngayCapNhat], [idUser], [typeLoai]) VALUES (1016, N'Thời Trang Nam', N'2020_12_26_02_47_51.jpg', N'Thời Trang Nam - GONZ', N'Ẩn', CAST(N'2020-12-26T02:47:51.6658300' AS DateTime2), CAST(N'2020-12-26T02:47:51.6659051' AS DateTime2), 1, NULL)
INSERT [dbo].[LoaiSP] ([idLoaiSP], [tenLoaiSP], [hinhAnh], [metaTitle], [trangThai], [ngayTao], [ngayCapNhat], [idUser], [typeLoai]) VALUES (1017, N'Thời Trang Nam', N'2020_12_26_02_48_06.jpg', N'Thời Trang Nam - GONZ', N'Hiển thị', CAST(N'2020-12-26T02:48:06.6105362' AS DateTime2), CAST(N'2020-12-26T02:48:06.6105423' AS DateTime2), 1, NULL)
INSERT [dbo].[LoaiSP] ([idLoaiSP], [tenLoaiSP], [hinhAnh], [metaTitle], [trangThai], [ngayTao], [ngayCapNhat], [idUser], [typeLoai]) VALUES (1018, N'Áo Thun', N'HA', N'Áo Thun', N'Hiển thị', CAST(N'2020-12-25T00:00:00.0000000' AS DateTime2), CAST(N'2020-12-25T00:00:00.0000000' AS DateTime2), 1, N'0')
INSERT [dbo].[LoaiSP] ([idLoaiSP], [tenLoaiSP], [hinhAnh], [metaTitle], [trangThai], [ngayTao], [ngayCapNhat], [idUser], [typeLoai]) VALUES (1019, N'Quần Short ', N'HA', N'Quần Short', N'Hiển thị', CAST(N'2020-12-25T00:00:00.0000000' AS DateTime2), CAST(N'2020-12-25T00:00:00.0000000' AS DateTime2), 1, N'0')
INSERT [dbo].[LoaiSP] ([idLoaiSP], [tenLoaiSP], [hinhAnh], [metaTitle], [trangThai], [ngayTao], [ngayCapNhat], [idUser], [typeLoai]) VALUES (1020, N'Quần Kaki', N'HA', N'Quần Kaki', N'Hiển thị', CAST(N'2020-12-25T00:00:00.0000000' AS DateTime2), CAST(N'2020-12-25T00:00:00.0000000' AS DateTime2), 1, N'0')
INSERT [dbo].[LoaiSP] ([idLoaiSP], [tenLoaiSP], [hinhAnh], [metaTitle], [trangThai], [ngayTao], [ngayCapNhat], [idUser], [typeLoai]) VALUES (1021, N'Quần Jean', N'HA', N'Quần Jean', N'Hiển thị', CAST(N'2020-12-25T00:00:00.0000000' AS DateTime2), CAST(N'2020-12-25T00:00:00.0000000' AS DateTime2), 1, N'0')
INSERT [dbo].[LoaiSP] ([idLoaiSP], [tenLoaiSP], [hinhAnh], [metaTitle], [trangThai], [ngayTao], [ngayCapNhat], [idUser], [typeLoai]) VALUES (1022, N'Áo Thun', N'HA', N'Áo Thun', N'Hiển thị', CAST(N'2020-12-25T00:00:00.0000000' AS DateTime2), CAST(N'2020-12-25T00:00:00.0000000' AS DateTime2), 1, N'1')
INSERT [dbo].[LoaiSP] ([idLoaiSP], [tenLoaiSP], [hinhAnh], [metaTitle], [trangThai], [ngayTao], [ngayCapNhat], [idUser], [typeLoai]) VALUES (1023, N'Áo Sơ Mi Nữ', N'HA', N'Áo Sơ Mi Nữ', N'Hiển thị', CAST(N'2020-12-25T00:00:00.0000000' AS DateTime2), CAST(N'2020-12-25T00:00:00.0000000' AS DateTime2), 1, N'1')
INSERT [dbo].[LoaiSP] ([idLoaiSP], [tenLoaiSP], [hinhAnh], [metaTitle], [trangThai], [ngayTao], [ngayCapNhat], [idUser], [typeLoai]) VALUES (1024, N'Đầm Nữ', N'HA', N'Đầm Nữ', N'Hiển thị', CAST(N'2020-12-25T00:00:00.0000000' AS DateTime2), CAST(N'2020-12-25T00:00:00.0000000' AS DateTime2), 1, N'1')
INSERT [dbo].[LoaiSP] ([idLoaiSP], [tenLoaiSP], [hinhAnh], [metaTitle], [trangThai], [ngayTao], [ngayCapNhat], [idUser], [typeLoai]) VALUES (1025, N'Chân Váy', N'HA', N'Chân Váy', N'Hiển thị', CAST(N'2020-12-25T00:00:00.0000000' AS DateTime2), CAST(N'2020-12-25T00:00:00.0000000' AS DateTime2), 1, N'1')
SET IDENTITY_INSERT [dbo].[LoaiSP] OFF
SET IDENTITY_INSERT [dbo].[SanPham] ON 

INSERT [dbo].[SanPham] ([idSP], [tenSP], [giaSP], [hinhAnh], [luotXem], [soLuongKho], [moTa], [idLoaiSP], [trangThai], [ngayTao], [ngayCapNhat], [luotMua], [ThuongHieuidThuongHieu], [UseridUser]) VALUES (1, N'Áo thun 1', 290000, N'2021_01_10_20_27_31.jpg', 0, 100, N'hàng đẹp lắm', 1025, N'Hiển thị', CAST(N'2020-12-23T00:00:00.0000000' AS DateTime2), CAST(N'2021-01-10T20:27:31.2273872' AS DateTime2), 0, NULL, NULL)
INSERT [dbo].[SanPham] ([idSP], [tenSP], [giaSP], [hinhAnh], [luotXem], [soLuongKho], [moTa], [idLoaiSP], [trangThai], [ngayTao], [ngayCapNhat], [luotMua], [ThuongHieuidThuongHieu], [UseridUser]) VALUES (2, N'sfdđuawaduawd', 45603223, N'2021_01_10_20_27_41.jpg', 0, 55032, N'sféeeeeeeeeeeeeee', 1025, N'Ẩn', CAST(N'2021-01-08T19:51:55.5583560' AS DateTime2), CAST(N'2021-01-10T20:27:41.1647076' AS DateTime2), 0, NULL, NULL)
INSERT [dbo].[SanPham] ([idSP], [tenSP], [giaSP], [hinhAnh], [luotXem], [soLuongKho], [moTa], [idLoaiSP], [trangThai], [ngayTao], [ngayCapNhat], [luotMua], [ThuongHieuidThuongHieu], [UseridUser]) VALUES (3, N'sfd', 0, N'2021_01_10_20_28_03.jpg', 0, 0, N'sféeeeeeeeeeeeeee', 1025, N'Ẩn', CAST(N'2021-01-09T00:03:41.1265511' AS DateTime2), CAST(N'2021-01-10T20:28:03.3875185' AS DateTime2), 0, NULL, NULL)
INSERT [dbo].[SanPham] ([idSP], [tenSP], [giaSP], [hinhAnh], [luotXem], [soLuongKho], [moTa], [idLoaiSP], [trangThai], [ngayTao], [ngayCapNhat], [luotMua], [ThuongHieuidThuongHieu], [UseridUser]) VALUES (4, N'QUẦN SHORT M1SKK120002', 445000, N'2021_01_10_20_28_10.jpg', 0, 100, N'Mô tả', 1025, N'Hiển thị', CAST(N'2020-12-25T00:00:00.0000000' AS DateTime2), CAST(N'2021-01-10T20:28:10.1934942' AS DateTime2), 0, NULL, NULL)
INSERT [dbo].[SanPham] ([idSP], [tenSP], [giaSP], [hinhAnh], [luotXem], [soLuongKho], [moTa], [idLoaiSP], [trangThai], [ngayTao], [ngayCapNhat], [luotMua], [ThuongHieuidThuongHieu], [UseridUser]) VALUES (5, N'QUẦN SHORT M1SKK120001', 645000, N'2021_01_10_20_28_26.jpg', 0, 100, N'Mô tả', 1025, N'Hiển thị', CAST(N'2020-12-25T00:00:00.0000000' AS DateTime2), CAST(N'2021-01-10T20:28:26.4163919' AS DateTime2), 0, NULL, NULL)
INSERT [dbo].[SanPham] ([idSP], [tenSP], [giaSP], [hinhAnh], [luotXem], [soLuongKho], [moTa], [idLoaiSP], [trangThai], [ngayTao], [ngayCapNhat], [luotMua], [ThuongHieuidThuongHieu], [UseridUser]) VALUES (6, N'QUẦN SHORT M1SJN120001', 385000, N'2021_01_10_20_28_34.jpg', 0, 100, N'Mô tả', 1025, N'Hiển thị', CAST(N'2020-12-25T00:00:00.0000000' AS DateTime2), CAST(N'2021-01-10T20:28:34.3122443' AS DateTime2), 0, NULL, NULL)
INSERT [dbo].[SanPham] ([idSP], [tenSP], [giaSP], [hinhAnh], [luotXem], [soLuongKho], [moTa], [idLoaiSP], [trangThai], [ngayTao], [ngayCapNhat], [luotMua], [ThuongHieuidThuongHieu], [UseridUser]) VALUES (7, N'QUẦN SHORT M1SJN110005', 485000, N'2021_01_10_20_28_51.jpg', 0, 100, N'Mô tả', 1025, N'Hiển thị', CAST(N'2020-12-25T00:00:00.0000000' AS DateTime2), CAST(N'2021-01-10T20:28:51.4666491' AS DateTime2), 0, NULL, NULL)
INSERT [dbo].[SanPham] ([idSP], [tenSP], [giaSP], [hinhAnh], [luotXem], [soLuongKho], [moTa], [idLoaiSP], [trangThai], [ngayTao], [ngayCapNhat], [luotMua], [ThuongHieuidThuongHieu], [UseridUser]) VALUES (8, N'QUẦN SHORT M1SJN110003', 585000, N'2021_01_10_20_28_58.jpg', 0, 100, N'Mô tả', 1025, N'Hiển thị', CAST(N'2020-12-25T00:00:00.0000000' AS DateTime2), CAST(N'2021-01-10T20:28:58.9244384' AS DateTime2), 0, NULL, NULL)
INSERT [dbo].[SanPham] ([idSP], [tenSP], [giaSP], [hinhAnh], [luotXem], [soLuongKho], [moTa], [idLoaiSP], [trangThai], [ngayTao], [ngayCapNhat], [luotMua], [ThuongHieuidThuongHieu], [UseridUser]) VALUES (9, N'ÁO THUN W2ATD110015', 395000, N'2021_01_10_20_29_08.jpg', 0, 100, N'Mô tả', 1025, N'Hiển thị', CAST(N'2020-12-25T00:00:00.0000000' AS DateTime2), CAST(N'2021-01-10T20:29:08.3401559' AS DateTime2), 0, NULL, NULL)
INSERT [dbo].[SanPham] ([idSP], [tenSP], [giaSP], [hinhAnh], [luotXem], [soLuongKho], [moTa], [idLoaiSP], [trangThai], [ngayTao], [ngayCapNhat], [luotMua], [ThuongHieuidThuongHieu], [UseridUser]) VALUES (10, N'ÁO THUN W2ATD110011', 285000, N'2021_01_10_20_29_18.jpg', 0, 100, N'Mô tả', 1025, N'Hiển thị', CAST(N'2020-12-25T00:00:00.0000000' AS DateTime2), CAST(N'2021-01-10T20:29:18.0234627' AS DateTime2), 0, NULL, NULL)
INSERT [dbo].[SanPham] ([idSP], [tenSP], [giaSP], [hinhAnh], [luotXem], [soLuongKho], [moTa], [idLoaiSP], [trangThai], [ngayTao], [ngayCapNhat], [luotMua], [ThuongHieuidThuongHieu], [UseridUser]) VALUES (11, N'ÁO THUN W2ATN110002', 485000, N'2021_01_10_20_29_26.jpg', 0, 100, N'Mô tả', 1025, N'Hiển thị', CAST(N'2020-12-25T00:00:00.0000000' AS DateTime2), CAST(N'2021-01-10T20:29:26.8925285' AS DateTime2), 0, NULL, NULL)
INSERT [dbo].[SanPham] ([idSP], [tenSP], [giaSP], [hinhAnh], [luotXem], [soLuongKho], [moTa], [idLoaiSP], [trangThai], [ngayTao], [ngayCapNhat], [luotMua], [ThuongHieuidThuongHieu], [UseridUser]) VALUES (12, N'ÁO THUN W2DAM030002', 585000, N'2021_01_10_20_29_56.jpg', 0, 100, N'Mô tả', 1025, N'Hiển thị', CAST(N'2020-12-25T00:00:00.0000000' AS DateTime2), CAST(N'2021-01-10T20:29:56.8538887' AS DateTime2), 0, NULL, NULL)
INSERT [dbo].[SanPham] ([idSP], [tenSP], [giaSP], [hinhAnh], [luotXem], [soLuongKho], [moTa], [idLoaiSP], [trangThai], [ngayTao], [ngayCapNhat], [luotMua], [ThuongHieuidThuongHieu], [UseridUser]) VALUES (13, N'Áo Thun W3DTN210005', 985000, N'2021_01_10_20_30_19.jpg', 0, 100, N'Mô tả', 1025, N'Hiển thị', CAST(N'2020-12-25T00:00:00.0000000' AS DateTime2), CAST(N'2021-01-10T20:30:19.4236875' AS DateTime2), 0, NULL, NULL)
INSERT [dbo].[SanPham] ([idSP], [tenSP], [giaSP], [hinhAnh], [luotXem], [soLuongKho], [moTa], [idLoaiSP], [trangThai], [ngayTao], [ngayCapNhat], [luotMua], [ThuongHieuidThuongHieu], [UseridUser]) VALUES (14, N'Áo Thun W3DTN210006', 785000, N'2021_01_10_20_30_12.jpg', 0, 100, N'Mô tả', 1025, N'Hiển thị', CAST(N'2020-12-25T00:00:00.0000000' AS DateTime2), CAST(N'2021-01-10T20:30:12.5203278' AS DateTime2), 0, NULL, NULL)
INSERT [dbo].[SanPham] ([idSP], [tenSP], [giaSP], [hinhAnh], [luotXem], [soLuongKho], [moTa], [idLoaiSP], [trangThai], [ngayTao], [ngayCapNhat], [luotMua], [ThuongHieuidThuongHieu], [UseridUser]) VALUES (15, N'Áo Thun W3DTN210007', 885000, N'2021_01_10_20_30_04.jpg', 0, 100, N'Mô tả', 1025, N'Hiển thị', CAST(N'2020-12-25T00:00:00.0000000' AS DateTime2), CAST(N'2021-01-10T20:30:04.4297886' AS DateTime2), 0, NULL, NULL)
INSERT [dbo].[SanPham] ([idSP], [tenSP], [giaSP], [hinhAnh], [luotXem], [soLuongKho], [moTa], [idLoaiSP], [trangThai], [ngayTao], [ngayCapNhat], [luotMua], [ThuongHieuidThuongHieu], [UseridUser]) VALUES (16, N'Áo Thun W3DTN210008', 985000, N'2021_01_10_20_30_26.jpg', 0, 100, N'Mô tả', 1025, N'Hiển thị', CAST(N'2020-12-25T00:00:00.0000000' AS DateTime2), CAST(N'2021-01-10T20:30:26.0439586' AS DateTime2), 0, NULL, NULL)
INSERT [dbo].[SanPham] ([idSP], [tenSP], [giaSP], [hinhAnh], [luotXem], [soLuongKho], [moTa], [idLoaiSP], [trangThai], [ngayTao], [ngayCapNhat], [luotMua], [ThuongHieuidThuongHieu], [UseridUser]) VALUES (17, N'Áo Thun W3DTN210009', 985000, N'2021_01_10_20_29_49.jpg', 0, 100, N'Mô tả', 1025, N'Hiển thị', CAST(N'2020-12-25T00:00:00.0000000' AS DateTime2), CAST(N'2021-01-10T20:30:41.7790134' AS DateTime2), 0, NULL, NULL)
INSERT [dbo].[SanPham] ([idSP], [tenSP], [giaSP], [hinhAnh], [luotXem], [soLuongKho], [moTa], [idLoaiSP], [trangThai], [ngayTao], [ngayCapNhat], [luotMua], [ThuongHieuidThuongHieu], [UseridUser]) VALUES (18, N'Áo Thun W3DTN2100010', 585000, N'2021_01_10_20_28_41.jpg', 0, 100, N'Mô tả', 1025, N'Hiển thị', CAST(N'2020-12-25T00:00:00.0000000' AS DateTime2), CAST(N'2021-01-10T20:28:41.5512989' AS DateTime2), 0, NULL, NULL)
SET IDENTITY_INSERT [dbo].[SanPham] OFF
SET IDENTITY_INSERT [dbo].[ThuongHieu] ON 

INSERT [dbo].[ThuongHieu] ([idThuongHieu], [tenThuongHieu], [hinhLogo], [sdtThuongHieu], [emailThuongHieu], [trangThai], [ngayTao], [ngayCapNhat], [idUser]) VALUES (1, N'CLAD', N'thuonghieu-clad.jpg', N'0123456789', N'duyclad2522@gmail.com', N'Đang hoạt động', CAST(N'2020-12-23T00:00:00.0000000' AS DateTime2), CAST(N'2020-12-23T00:00:00.0000000' AS DateTime2), 1)
SET IDENTITY_INSERT [dbo].[ThuongHieu] OFF
SET IDENTITY_INSERT [dbo].[User] ON 

INSERT [dbo].[User] ([idUser], [hoUser], [tenUser], [sdtUser], [emailUser], [matKhau], [gioiTinh], [ngaySinh], [diaChi], [hinhAVT], [ngayTao], [ngayCapNhat], [hoatDongLanCuoi], [trangThai], [vaiTro]) VALUES (1, N'Cổ', N'Lê Anh Duy', N'0969376729', N'coleanhduy@gmail.com', N'81dc9bdb52d04dc20036dbd8313ed055', 0, CAST(N'2020-01-01T00:00:00.0000000' AS DateTime2), N'+65623', NULL, CAST(N'2020-12-23T00:00:00.0000000' AS DateTime2), CAST(N'2020-12-23T00:00:00.0000000' AS DateTime2), CAST(N'2020-12-23T00:00:00.0000000' AS DateTime2), N'Đang hoạt động', N'admin')
INSERT [dbo].[User] ([idUser], [hoUser], [tenUser], [sdtUser], [emailUser], [matKhau], [gioiTinh], [ngaySinh], [diaChi], [hinhAVT], [ngayTao], [ngayCapNhat], [hoatDongLanCuoi], [trangThai], [vaiTro]) VALUES (19, N'Duy', N'dUY', N'12365', N'duyclad@gmail.com', N'c4ca4238a0b923820dcc509a6f75849b', 0, CAST(N'1950-01-01T00:00:00.0000000' AS DateTime2), NULL, N'def.jpg', CAST(N'2020-12-31T03:26:27.3708471' AS DateTime2), CAST(N'2020-12-31T03:26:27.3711135' AS DateTime2), CAST(N'2020-12-31T03:26:27.3711662' AS DateTime2), N'Đang hoạt động', N'users')
INSERT [dbo].[User] ([idUser], [hoUser], [tenUser], [sdtUser], [emailUser], [matKhau], [gioiTinh], [ngaySinh], [diaChi], [hinhAVT], [ngayTao], [ngayCapNhat], [hoatDongLanCuoi], [trangThai], [vaiTro]) VALUES (21, N'Duy', N'Duy', N'0123456', N'anhduy.ruby@gmail.com', N'202cb962ac59075b964b07152d234b70', 1, CAST(N'2000-12-28T01:41:00.0000000' AS DateTime2), N'ĐHSP', N'def.jpg', CAST(N'2021-01-05T01:42:11.0325663' AS DateTime2), CAST(N'2021-01-05T01:42:11.0325709' AS DateTime2), CAST(N'2021-01-05T01:42:11.0325710' AS DateTime2), N'Đang hoạt động', N'staffs')
INSERT [dbo].[User] ([idUser], [hoUser], [tenUser], [sdtUser], [emailUser], [matKhau], [gioiTinh], [ngaySinh], [diaChi], [hinhAVT], [ngayTao], [ngayCapNhat], [hoatDongLanCuoi], [trangThai], [vaiTro]) VALUES (22, N'Duy', N'Duy', N'0123456', N'anhduy.ruby@gmail.com', N'202cb962ac59075b964b07152d234b70', 0, CAST(N'2021-01-04T01:44:00.0000000' AS DateTime2), N'ĐHSP', N'2021_01_05_01_44_53.jpg', CAST(N'2021-01-05T01:44:53.9327809' AS DateTime2), CAST(N'2021-01-05T01:44:53.9328688' AS DateTime2), CAST(N'2021-01-05T01:44:53.9329408' AS DateTime2), N'Đang hoạt động', N'staffs')
SET IDENTITY_INSERT [dbo].[User] OFF
/****** Object:  Index [IX_Banner_UseridUser]    Script Date: 1/10/2021 21:43:08 ******/
CREATE NONCLUSTERED INDEX [IX_Banner_UseridUser] ON [dbo].[Banner]
(
	[UseridUser] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_ChinhSachGiaoHang_UseridUser]    Script Date: 1/10/2021 21:43:08 ******/
CREATE NONCLUSTERED INDEX [IX_ChinhSachGiaoHang_UseridUser] ON [dbo].[ChinhSachGiaoHang]
(
	[UseridUser] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_ChiTietDonHang_idDH]    Script Date: 1/10/2021 21:43:08 ******/
CREATE NONCLUSTERED INDEX [IX_ChiTietDonHang_idDH] ON [dbo].[ChiTietDonHang]
(
	[idDH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_DieuKhoanDichVu_UseridUser]    Script Date: 1/10/2021 21:43:08 ******/
CREATE NONCLUSTERED INDEX [IX_DieuKhoanDichVu_UseridUser] ON [dbo].[DieuKhoanDichVu]
(
	[UseridUser] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_DonHang_MaGiamGiacodeMGG]    Script Date: 1/10/2021 21:43:08 ******/
CREATE NONCLUSTERED INDEX [IX_DonHang_MaGiamGiacodeMGG] ON [dbo].[DonHang]
(
	[MaGiamGiacodeMGG] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_DonHang_UseridUser]    Script Date: 1/10/2021 21:43:08 ******/
CREATE NONCLUSTERED INDEX [IX_DonHang_UseridUser] ON [dbo].[DonHang]
(
	[UseridUser] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_GioHang_idUser]    Script Date: 1/10/2021 21:43:08 ******/
CREATE NONCLUSTERED INDEX [IX_GioHang_idUser] ON [dbo].[GioHang]
(
	[idUser] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_GioHang_SanPhamidSP]    Script Date: 1/10/2021 21:43:08 ******/
CREATE NONCLUSTERED INDEX [IX_GioHang_SanPhamidSP] ON [dbo].[GioHang]
(
	[SanPhamidSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_GioiThieu_UseridUser]    Script Date: 1/10/2021 21:43:08 ******/
CREATE NONCLUSTERED INDEX [IX_GioiThieu_UseridUser] ON [dbo].[GioiThieu]
(
	[UseridUser] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_IPuser_idUser]    Script Date: 1/10/2021 21:43:08 ******/
CREATE NONCLUSTERED INDEX [IX_IPuser_idUser] ON [dbo].[IPuser]
(
	[idUser] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_LoaiSP_idUser]    Script Date: 1/10/2021 21:43:08 ******/
CREATE NONCLUSTERED INDEX [IX_LoaiSP_idUser] ON [dbo].[LoaiSP]
(
	[idUser] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_MaGiamGia_UseridUser]    Script Date: 1/10/2021 21:43:08 ******/
CREATE NONCLUSTERED INDEX [IX_MaGiamGia_UseridUser] ON [dbo].[MaGiamGia]
(
	[UseridUser] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_QuyDinhChung_UseridUser]    Script Date: 1/10/2021 21:43:08 ******/
CREATE NONCLUSTERED INDEX [IX_QuyDinhChung_UseridUser] ON [dbo].[QuyDinhChung]
(
	[UseridUser] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_SanPham_idLoaiSP]    Script Date: 1/10/2021 21:43:08 ******/
CREATE NONCLUSTERED INDEX [IX_SanPham_idLoaiSP] ON [dbo].[SanPham]
(
	[idLoaiSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_SanPham_ThuongHieuidThuongHieu]    Script Date: 1/10/2021 21:43:08 ******/
CREATE NONCLUSTERED INDEX [IX_SanPham_ThuongHieuidThuongHieu] ON [dbo].[SanPham]
(
	[ThuongHieuidThuongHieu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_SanPham_UseridUser]    Script Date: 1/10/2021 21:43:08 ******/
CREATE NONCLUSTERED INDEX [IX_SanPham_UseridUser] ON [dbo].[SanPham]
(
	[UseridUser] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_ThuongHieu_idUser]    Script Date: 1/10/2021 21:43:08 ******/
CREATE NONCLUSTERED INDEX [IX_ThuongHieu_idUser] ON [dbo].[ThuongHieu]
(
	[idUser] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ChiTietDonHang] ADD  DEFAULT ((0)) FOR [thanhTien]
GO
ALTER TABLE [dbo].[GioHang] ADD  DEFAULT ((0)) FOR [giasp]
GO
ALTER TABLE [dbo].[GioHang] ADD  DEFAULT ((0)) FOR [tensp]
GO
ALTER TABLE [dbo].[GioHang] ADD  DEFAULT ((0)) FOR [idsp]
GO
ALTER TABLE [dbo].[SanPham] ADD  DEFAULT ((0)) FOR [luotMua]
GO
ALTER TABLE [dbo].[Banner]  WITH CHECK ADD  CONSTRAINT [FK_Banner_User_UseridUser] FOREIGN KEY([UseridUser])
REFERENCES [dbo].[User] ([idUser])
GO
ALTER TABLE [dbo].[Banner] CHECK CONSTRAINT [FK_Banner_User_UseridUser]
GO
ALTER TABLE [dbo].[ChinhSachGiaoHang]  WITH CHECK ADD  CONSTRAINT [FK_ChinhSachGiaoHang_User_UseridUser] FOREIGN KEY([UseridUser])
REFERENCES [dbo].[User] ([idUser])
GO
ALTER TABLE [dbo].[ChinhSachGiaoHang] CHECK CONSTRAINT [FK_ChinhSachGiaoHang_User_UseridUser]
GO
ALTER TABLE [dbo].[ChiTietDonHang]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietDonHang_DonHang_idDH] FOREIGN KEY([idDH])
REFERENCES [dbo].[DonHang] ([idDH])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ChiTietDonHang] CHECK CONSTRAINT [FK_ChiTietDonHang_DonHang_idDH]
GO
ALTER TABLE [dbo].[DieuKhoanDichVu]  WITH CHECK ADD  CONSTRAINT [FK_DieuKhoanDichVu_User_UseridUser] FOREIGN KEY([UseridUser])
REFERENCES [dbo].[User] ([idUser])
GO
ALTER TABLE [dbo].[DieuKhoanDichVu] CHECK CONSTRAINT [FK_DieuKhoanDichVu_User_UseridUser]
GO
ALTER TABLE [dbo].[DonHang]  WITH CHECK ADD  CONSTRAINT [FK_DonHang_MaGiamGia_MaGiamGiacodeMGG] FOREIGN KEY([MaGiamGiacodeMGG])
REFERENCES [dbo].[MaGiamGia] ([codeMGG])
GO
ALTER TABLE [dbo].[DonHang] CHECK CONSTRAINT [FK_DonHang_MaGiamGia_MaGiamGiacodeMGG]
GO
ALTER TABLE [dbo].[DonHang]  WITH CHECK ADD  CONSTRAINT [FK_DonHang_User_UseridUser] FOREIGN KEY([UseridUser])
REFERENCES [dbo].[User] ([idUser])
GO
ALTER TABLE [dbo].[DonHang] CHECK CONSTRAINT [FK_DonHang_User_UseridUser]
GO
ALTER TABLE [dbo].[GioHang]  WITH CHECK ADD  CONSTRAINT [FK_GioHang_SanPham_SanPhamidSP] FOREIGN KEY([SanPhamidSP])
REFERENCES [dbo].[SanPham] ([idSP])
GO
ALTER TABLE [dbo].[GioHang] CHECK CONSTRAINT [FK_GioHang_SanPham_SanPhamidSP]
GO
ALTER TABLE [dbo].[GioHang]  WITH CHECK ADD  CONSTRAINT [FK_GioHang_User_idUser] FOREIGN KEY([idUser])
REFERENCES [dbo].[User] ([idUser])
GO
ALTER TABLE [dbo].[GioHang] CHECK CONSTRAINT [FK_GioHang_User_idUser]
GO
ALTER TABLE [dbo].[GioiThieu]  WITH CHECK ADD  CONSTRAINT [FK_GioiThieu_User_UseridUser] FOREIGN KEY([UseridUser])
REFERENCES [dbo].[User] ([idUser])
GO
ALTER TABLE [dbo].[GioiThieu] CHECK CONSTRAINT [FK_GioiThieu_User_UseridUser]
GO
ALTER TABLE [dbo].[IPuser]  WITH CHECK ADD  CONSTRAINT [FK_IPuser_User_idUser] FOREIGN KEY([idUser])
REFERENCES [dbo].[User] ([idUser])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[IPuser] CHECK CONSTRAINT [FK_IPuser_User_idUser]
GO
ALTER TABLE [dbo].[LoaiSP]  WITH CHECK ADD  CONSTRAINT [FK_LoaiSP_User_idUser] FOREIGN KEY([idUser])
REFERENCES [dbo].[User] ([idUser])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[LoaiSP] CHECK CONSTRAINT [FK_LoaiSP_User_idUser]
GO
ALTER TABLE [dbo].[MaGiamGia]  WITH CHECK ADD  CONSTRAINT [FK_MaGiamGia_User_UseridUser] FOREIGN KEY([UseridUser])
REFERENCES [dbo].[User] ([idUser])
GO
ALTER TABLE [dbo].[MaGiamGia] CHECK CONSTRAINT [FK_MaGiamGia_User_UseridUser]
GO
ALTER TABLE [dbo].[QuyDinhChung]  WITH CHECK ADD  CONSTRAINT [FK_QuyDinhChung_User_UseridUser] FOREIGN KEY([UseridUser])
REFERENCES [dbo].[User] ([idUser])
GO
ALTER TABLE [dbo].[QuyDinhChung] CHECK CONSTRAINT [FK_QuyDinhChung_User_UseridUser]
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [FK_SanPham_LoaiSP_idLoaiSP] FOREIGN KEY([idLoaiSP])
REFERENCES [dbo].[LoaiSP] ([idLoaiSP])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[SanPham] CHECK CONSTRAINT [FK_SanPham_LoaiSP_idLoaiSP]
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [FK_SanPham_ThuongHieu_ThuongHieuidThuongHieu] FOREIGN KEY([ThuongHieuidThuongHieu])
REFERENCES [dbo].[ThuongHieu] ([idThuongHieu])
GO
ALTER TABLE [dbo].[SanPham] CHECK CONSTRAINT [FK_SanPham_ThuongHieu_ThuongHieuidThuongHieu]
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [FK_SanPham_User_UseridUser] FOREIGN KEY([UseridUser])
REFERENCES [dbo].[User] ([idUser])
GO
ALTER TABLE [dbo].[SanPham] CHECK CONSTRAINT [FK_SanPham_User_UseridUser]
GO
ALTER TABLE [dbo].[ThuongHieu]  WITH CHECK ADD  CONSTRAINT [FK_ThuongHieu_User_idUser] FOREIGN KEY([idUser])
REFERENCES [dbo].[User] ([idUser])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ThuongHieu] CHECK CONSTRAINT [FK_ThuongHieu_User_idUser]
GO
USE [master]
GO
ALTER DATABASE [DOANNET] SET  READ_WRITE 
GO
