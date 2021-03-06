USE [master]
GO
/****** Object:  Database [dbnhiemvu]    Script Date: 9/1/2017 5:06:44 PM ******/
CREATE DATABASE [dbnhiemvu]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'dbnhiemvu', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\dbnhiemvu.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'dbnhiemvu_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\dbnhiemvu_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [dbnhiemvu] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [dbnhiemvu].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [dbnhiemvu] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [dbnhiemvu] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [dbnhiemvu] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [dbnhiemvu] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [dbnhiemvu] SET ARITHABORT OFF 
GO
ALTER DATABASE [dbnhiemvu] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [dbnhiemvu] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [dbnhiemvu] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [dbnhiemvu] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [dbnhiemvu] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [dbnhiemvu] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [dbnhiemvu] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [dbnhiemvu] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [dbnhiemvu] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [dbnhiemvu] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [dbnhiemvu] SET  DISABLE_BROKER 
GO
ALTER DATABASE [dbnhiemvu] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [dbnhiemvu] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [dbnhiemvu] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [dbnhiemvu] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [dbnhiemvu] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [dbnhiemvu] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [dbnhiemvu] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [dbnhiemvu] SET RECOVERY FULL 
GO
ALTER DATABASE [dbnhiemvu] SET  MULTI_USER 
GO
ALTER DATABASE [dbnhiemvu] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [dbnhiemvu] SET DB_CHAINING OFF 
GO
ALTER DATABASE [dbnhiemvu] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [dbnhiemvu] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
EXEC sys.sp_db_vardecimal_storage_format N'dbnhiemvu', N'ON'
GO
USE [dbnhiemvu]
GO
/****** Object:  Table [dbo].[BaoCao]    Script Date: 9/1/2017 5:06:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BaoCao](
	[iMaBaoCaoCode] [int] IDENTITY(1,1) NOT NULL,
	[vMoTa] [nvarchar](max) NULL,
	[iMaNhiemVuCode] [int] NULL,
	[iTrangThai] [int] NULL,
 CONSTRAINT [PK_BaoCao] PRIMARY KEY CLUSTERED 
(
	[iMaBaoCaoCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ChiTietLoi]    Script Date: 9/1/2017 5:06:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietLoi](
	[iMaChiTietLoiCode] [int] IDENTITY(1,1) NOT NULL,
	[iMaNhiemVuCode] [int] NULL,
	[vTenLoi] [nvarchar](max) NULL,
	[vChiTietLoi] [nvarchar](max) NULL,
	[iTrangThai] [int] NULL,
 CONSTRAINT [PK_ChiTietLoi] PRIMARY KEY CLUSTERED 
(
	[iMaChiTietLoiCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Hinh]    Script Date: 9/1/2017 5:06:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Hinh](
	[iMaHinhCode] [int] IDENTITY(1,1) NOT NULL,
	[iMaNhiemVuCode] [int] NULL,
	[vDuongDan] [nvarchar](max) NULL,
	[iTrangThai] [int] NULL,
 CONSTRAINT [PK_Hinh] PRIMARY KEY CLUSTERED 
(
	[iMaHinhCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[LinkTapTin]    Script Date: 9/1/2017 5:06:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LinkTapTin](
	[iMaLinkTapTinCode] [int] IDENTITY(1,1) NOT NULL,
	[vDuongDan] [nvarchar](max) NULL,
	[iMaBaoCaoCode] [int] NULL,
	[iTrangThai] [int] NULL,
 CONSTRAINT [PK_LinkTapTin] PRIMARY KEY CLUSTERED 
(
	[iMaLinkTapTinCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[NhiemVu]    Script Date: 9/1/2017 5:06:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhiemVu](
	[iMaNhiemVuCode] [int] IDENTITY(1,1) NOT NULL,
	[vTenNhiemVu] [nvarchar](max) NULL,
	[vMoTa] [nvarchar](max) NULL,
	[dNgayLap] [date] NULL,
	[dNgayBD] [date] NULL,
	[dNgayKT] [date] NULL,
	[iMaNguoiDangCode] [int] NULL,
	[iMaNguoiDuocGiaoCode] [int] NULL,
	[iMaTrangThaiCode] [int] NULL,
 CONSTRAINT [PK_NhiemVu] PRIMARY KEY CLUSTERED 
(
	[iMaNhiemVuCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Quyen]    Script Date: 9/1/2017 5:06:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Quyen](
	[iMaQuynhCode] [int] IDENTITY(1,1) NOT NULL,
	[vTenQuyen] [nvarchar](50) NULL,
	[iTrangThai] [int] NULL,
 CONSTRAINT [PK_Quyen] PRIMARY KEY CLUSTERED 
(
	[iMaQuynhCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TapTin]    Script Date: 9/1/2017 5:06:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TapTin](
	[iMaTapTinCode] [int] IDENTITY(1,1) NOT NULL,
	[iMaNhiemVuCode] [int] NULL,
	[vDuongDan] [nvarchar](max) NULL,
	[iTrangThai] [int] NULL,
	[vTenTapTin] [nvarchar](max) NULL,
 CONSTRAINT [PK_TapTin] PRIMARY KEY CLUSTERED 
(
	[iMaTapTinCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TapTinBaoCao]    Script Date: 9/1/2017 5:06:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TapTinBaoCao](
	[iMaTapTinBaoCaoCode] [int] IDENTITY(1,1) NOT NULL,
	[vDuongDan] [nvarchar](max) NULL,
	[iMaBaoCaoCode] [int] NULL,
	[iTrangThai] [int] NULL,
	[vTenTapTinBaoCao] [nvarchar](max) NULL,
 CONSTRAINT [PK_TapTinBaoCao] PRIMARY KEY CLUSTERED 
(
	[iMaTapTinBaoCaoCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ThanhVien]    Script Date: 9/1/2017 5:06:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ThanhVien](
	[iMaThanhVienCode] [int] IDENTITY(1,1) NOT NULL,
	[vTenDangNhap] [nvarchar](50) NULL,
	[vMatKhau] [nvarchar](50) NULL,
	[iTrangThai] [int] NULL,
 CONSTRAINT [PK_ThanhVien] PRIMARY KEY CLUSTERED 
(
	[iMaThanhVienCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ThanhVien-Quyen]    Script Date: 9/1/2017 5:06:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ThanhVien-Quyen](
	[iMaThanhVienCode] [int] NOT NULL,
	[iMaQuyenCode] [int] NOT NULL,
	[iTrangThai] [int] NULL,
 CONSTRAINT [PK_ThanhVien-Quyen] PRIMARY KEY CLUSTERED 
(
	[iMaThanhVienCode] ASC,
	[iMaQuyenCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TrangThai]    Script Date: 9/1/2017 5:06:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TrangThai](
	[iMaTrangThaiCode] [int] IDENTITY(1,1) NOT NULL,
	[vTenTrangThai] [nvarchar](50) NULL,
 CONSTRAINT [PK_TrangThai] PRIMARY KEY CLUSTERED 
(
	[iMaTrangThaiCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[Hinh] ON 

INSERT [dbo].[Hinh] ([iMaHinhCode], [iMaNhiemVuCode], [vDuongDan], [iTrangThai]) VALUES (1, 1, N'/Content/Images/1/Hydrangeas.jpg', 1)
INSERT [dbo].[Hinh] ([iMaHinhCode], [iMaNhiemVuCode], [vDuongDan], [iTrangThai]) VALUES (2, 1, N'/Content/Images/1/Chrysanthemum.jpg', 1)
INSERT [dbo].[Hinh] ([iMaHinhCode], [iMaNhiemVuCode], [vDuongDan], [iTrangThai]) VALUES (3, 2, N'/Content/Images/2/Penguins.jpg', 1)
INSERT [dbo].[Hinh] ([iMaHinhCode], [iMaNhiemVuCode], [vDuongDan], [iTrangThai]) VALUES (4, 2, N'/Content/Images/2/Tulips.jpg', 1)
INSERT [dbo].[Hinh] ([iMaHinhCode], [iMaNhiemVuCode], [vDuongDan], [iTrangThai]) VALUES (5, 3, N'/Content/Images/3/Jellyfish.jpg', 1)
INSERT [dbo].[Hinh] ([iMaHinhCode], [iMaNhiemVuCode], [vDuongDan], [iTrangThai]) VALUES (6, 3, N'/Content/Images/3/Koala.jpg', 1)
INSERT [dbo].[Hinh] ([iMaHinhCode], [iMaNhiemVuCode], [vDuongDan], [iTrangThai]) VALUES (7, 4, N'/Content/Images/4/Lighthouse.jpg', 1)
INSERT [dbo].[Hinh] ([iMaHinhCode], [iMaNhiemVuCode], [vDuongDan], [iTrangThai]) VALUES (8, 9, N'/Content/Images/9/Hydrangeas.jpg', 1)
INSERT [dbo].[Hinh] ([iMaHinhCode], [iMaNhiemVuCode], [vDuongDan], [iTrangThai]) VALUES (9, 12, N'/Content/Images/12/Tulips.jpg', 1)
INSERT [dbo].[Hinh] ([iMaHinhCode], [iMaNhiemVuCode], [vDuongDan], [iTrangThai]) VALUES (10, 12, N'/Content/Images/12/Lighthouse.jpg', 1)
INSERT [dbo].[Hinh] ([iMaHinhCode], [iMaNhiemVuCode], [vDuongDan], [iTrangThai]) VALUES (11, 12, N'/Content/Images/12/Chrysanthemum.jpg', 1)
SET IDENTITY_INSERT [dbo].[Hinh] OFF
SET IDENTITY_INSERT [dbo].[NhiemVu] ON 

INSERT [dbo].[NhiemVu] ([iMaNhiemVuCode], [vTenNhiemVu], [vMoTa], [dNgayLap], [dNgayBD], [dNgayKT], [iMaNguoiDangCode], [iMaNguoiDuocGiaoCode], [iMaTrangThaiCode]) VALUES (1, N'them nhiem vu lan 1', N'them mo ta nhiem vu lan 1', CAST(0x3C3D0B00 AS Date), CAST(0x3D3D0B00 AS Date), CAST(0x403D0B00 AS Date), 1, 1, 2)
INSERT [dbo].[NhiemVu] ([iMaNhiemVuCode], [vTenNhiemVu], [vMoTa], [dNgayLap], [dNgayBD], [dNgayKT], [iMaNguoiDangCode], [iMaNguoiDuocGiaoCode], [iMaTrangThaiCode]) VALUES (2, N'them nhiem vu lan 2', N'them mo ta nhiem vu lan 2', CAST(0x3C3D0B00 AS Date), CAST(0x3C3D0B00 AS Date), CAST(0x3C3D0B00 AS Date), 1, 2, 1)
INSERT [dbo].[NhiemVu] ([iMaNhiemVuCode], [vTenNhiemVu], [vMoTa], [dNgayLap], [dNgayBD], [dNgayKT], [iMaNguoiDangCode], [iMaNguoiDuocGiaoCode], [iMaTrangThaiCode]) VALUES (3, N'them nhiem vu lan 3', N'them mo ta nhiem vu lan 3', CAST(0x3C3D0B00 AS Date), CAST(0x3D3D0B00 AS Date), CAST(0x443D0B00 AS Date), 1, 3, 1)
INSERT [dbo].[NhiemVu] ([iMaNhiemVuCode], [vTenNhiemVu], [vMoTa], [dNgayLap], [dNgayBD], [dNgayKT], [iMaNguoiDangCode], [iMaNguoiDuocGiaoCode], [iMaTrangThaiCode]) VALUES (4, N'them nhiem vu lan 4', N'them mo ta nhiem vu lan 4', CAST(0x3C3D0B00 AS Date), CAST(0x3C3D0B00 AS Date), CAST(0x513D0B00 AS Date), 1, 3, 1)
INSERT [dbo].[NhiemVu] ([iMaNhiemVuCode], [vTenNhiemVu], [vMoTa], [dNgayLap], [dNgayBD], [dNgayKT], [iMaNguoiDangCode], [iMaNguoiDuocGiaoCode], [iMaTrangThaiCode]) VALUES (5, N'them nhiem vu lan 5', N'them nhiem vu lan 5', CAST(0x3C3D0B00 AS Date), CAST(0x3C3D0B00 AS Date), CAST(0x3C3D0B00 AS Date), 1, 1, 1)
INSERT [dbo].[NhiemVu] ([iMaNhiemVuCode], [vTenNhiemVu], [vMoTa], [dNgayLap], [dNgayBD], [dNgayKT], [iMaNguoiDangCode], [iMaNguoiDuocGiaoCode], [iMaTrangThaiCode]) VALUES (6, N'them nhiem vu lan 6', N'them nhiem vu lan 6', CAST(0x3C3D0B00 AS Date), CAST(0x3C3D0B00 AS Date), CAST(0x563D0B00 AS Date), 1, 2, 1)
INSERT [dbo].[NhiemVu] ([iMaNhiemVuCode], [vTenNhiemVu], [vMoTa], [dNgayLap], [dNgayBD], [dNgayKT], [iMaNguoiDangCode], [iMaNguoiDuocGiaoCode], [iMaTrangThaiCode]) VALUES (7, N'them nhiem vu lan 8', N'them nhiem vu lan 8', CAST(0x3C3D0B00 AS Date), CAST(0x3C3D0B00 AS Date), CAST(0x3C3D0B00 AS Date), 1, 1, 1)
INSERT [dbo].[NhiemVu] ([iMaNhiemVuCode], [vTenNhiemVu], [vMoTa], [dNgayLap], [dNgayBD], [dNgayKT], [iMaNguoiDangCode], [iMaNguoiDuocGiaoCode], [iMaTrangThaiCode]) VALUES (8, N'them nhiem vu lan 9', N'them nhiem vu lan 9', CAST(0x3C3D0B00 AS Date), CAST(0x3C3D0B00 AS Date), CAST(0x543D0B00 AS Date), 1, 2, 1)
INSERT [dbo].[NhiemVu] ([iMaNhiemVuCode], [vTenNhiemVu], [vMoTa], [dNgayLap], [dNgayBD], [dNgayKT], [iMaNguoiDangCode], [iMaNguoiDuocGiaoCode], [iMaTrangThaiCode]) VALUES (9, N'them nhiem vu lan 10', N'them nhiem vu lan 10', CAST(0x3C3D0B00 AS Date), CAST(0x3C3D0B00 AS Date), CAST(0x3C3D0B00 AS Date), 1, 3, 1)
INSERT [dbo].[NhiemVu] ([iMaNhiemVuCode], [vTenNhiemVu], [vMoTa], [dNgayLap], [dNgayBD], [dNgayKT], [iMaNguoiDangCode], [iMaNguoiDuocGiaoCode], [iMaTrangThaiCode]) VALUES (10, N'them nhiem vu lan 11', N'them nhem vu lan 11', CAST(0x3C3D0B00 AS Date), CAST(0x3C3D0B00 AS Date), CAST(0x523D0B00 AS Date), 1, 1, 1)
INSERT [dbo].[NhiemVu] ([iMaNhiemVuCode], [vTenNhiemVu], [vMoTa], [dNgayLap], [dNgayBD], [dNgayKT], [iMaNguoiDangCode], [iMaNguoiDuocGiaoCode], [iMaTrangThaiCode]) VALUES (11, N'them nhiem vu lan 12', N'them nhiem vu lan 12', CAST(0x3C3D0B00 AS Date), CAST(0x3C3D0B00 AS Date), CAST(0x473D0B00 AS Date), 1, 1, 1)
INSERT [dbo].[NhiemVu] ([iMaNhiemVuCode], [vTenNhiemVu], [vMoTa], [dNgayLap], [dNgayBD], [dNgayKT], [iMaNguoiDangCode], [iMaNguoiDuocGiaoCode], [iMaTrangThaiCode]) VALUES (12, N'them file lan 1', N'them file lan 1', CAST(0x3C3D0B00 AS Date), CAST(0x3C3D0B00 AS Date), CAST(0x3C3D0B00 AS Date), 1, 1, 1)
SET IDENTITY_INSERT [dbo].[NhiemVu] OFF
SET IDENTITY_INSERT [dbo].[TapTin] ON 

INSERT [dbo].[TapTin] ([iMaTapTinCode], [iMaNhiemVuCode], [vDuongDan], [iTrangThai], [vTenTapTin]) VALUES (1, 1, N'/Content/Files/1/New Microsoft Office Excel Worksheet.xlsx', 1, N'New Microsoft Office Excel Worksheet.xlsx')
INSERT [dbo].[TapTin] ([iMaTapTinCode], [iMaNhiemVuCode], [vDuongDan], [iTrangThai], [vTenTapTin]) VALUES (2, 2, N'/Content/Files/2/hop-dong-mau-hoa-don.doc', 1, N'hop-dong-mau-hoa-don.doc')
INSERT [dbo].[TapTin] ([iMaTapTinCode], [iMaNhiemVuCode], [vDuongDan], [iTrangThai], [vTenTapTin]) VALUES (3, 9, N'/Content/Files/9/hop-dong-mau-hoa-don.doc', 1, N'hop-dong-mau-hoa-don.doc')
INSERT [dbo].[TapTin] ([iMaTapTinCode], [iMaNhiemVuCode], [vDuongDan], [iTrangThai], [vTenTapTin]) VALUES (4, 12, N'/Content/Files/12/bootstrap.js', 1, N'bootstrap.js')
INSERT [dbo].[TapTin] ([iMaTapTinCode], [iMaNhiemVuCode], [vDuongDan], [iTrangThai], [vTenTapTin]) VALUES (5, 12, N'/Content/Files/12/myslideshow.css', 1, N'myslideshow.css')
INSERT [dbo].[TapTin] ([iMaTapTinCode], [iMaNhiemVuCode], [vDuongDan], [iTrangThai], [vTenTapTin]) VALUES (6, 12, N'/Content/Files/12/Startup.cs', 1, N'Startup.cs')
INSERT [dbo].[TapTin] ([iMaTapTinCode], [iMaNhiemVuCode], [vDuongDan], [iTrangThai], [vTenTapTin]) VALUES (7, 12, N'/Content/Files/12/nhiemvu.sql', 1, N'nhiemvu.sql')
INSERT [dbo].[TapTin] ([iMaTapTinCode], [iMaNhiemVuCode], [vDuongDan], [iTrangThai], [vTenTapTin]) VALUES (8, 12, N'/Content/Files/12/hop-dong-mau-hoa-don.doc', 1, N'hop-dong-mau-hoa-don.doc')
INSERT [dbo].[TapTin] ([iMaTapTinCode], [iMaNhiemVuCode], [vDuongDan], [iTrangThai], [vTenTapTin]) VALUES (9, 12, N'/Content/Files/12/New Microsoft Office Excel Worksheet.xlsx', 1, N'New Microsoft Office Excel Worksheet.xlsx')
SET IDENTITY_INSERT [dbo].[TapTin] OFF
SET IDENTITY_INSERT [dbo].[ThanhVien] ON 

INSERT [dbo].[ThanhVien] ([iMaThanhVienCode], [vTenDangNhap], [vMatKhau], [iTrangThai]) VALUES (1, N'duc', N'123', 1)
INSERT [dbo].[ThanhVien] ([iMaThanhVienCode], [vTenDangNhap], [vMatKhau], [iTrangThai]) VALUES (2, N'duy', N'123', 1)
INSERT [dbo].[ThanhVien] ([iMaThanhVienCode], [vTenDangNhap], [vMatKhau], [iTrangThai]) VALUES (3, N'trong', N'123', 1)
SET IDENTITY_INSERT [dbo].[ThanhVien] OFF
SET IDENTITY_INSERT [dbo].[TrangThai] ON 

INSERT [dbo].[TrangThai] ([iMaTrangThaiCode], [vTenTrangThai]) VALUES (1, N'Mới')
INSERT [dbo].[TrangThai] ([iMaTrangThaiCode], [vTenTrangThai]) VALUES (2, N'Đang thực hiện')
INSERT [dbo].[TrangThai] ([iMaTrangThaiCode], [vTenTrangThai]) VALUES (3, N'Đang chờ duyệt')
INSERT [dbo].[TrangThai] ([iMaTrangThaiCode], [vTenTrangThai]) VALUES (4, N'Đã hoàn thành')
INSERT [dbo].[TrangThai] ([iMaTrangThaiCode], [vTenTrangThai]) VALUES (5, N'Đang sửa lỗi')
SET IDENTITY_INSERT [dbo].[TrangThai] OFF
USE [master]
GO
ALTER DATABASE [dbnhiemvu] SET  READ_WRITE 
GO
