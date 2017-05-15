USE [master]
GO
/****** Object:  Database [QuanLyNhanSu]    Script Date: 05/15/2017 23:05:26 ******/
CREATE DATABASE [QuanLyNhanSu] ON  PRIMARY 
( NAME = N'QuanLyNhanSu', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL10_50.CA\MSSQL\DATA\QuanLyNhanSu.mdf' , SIZE = 2048KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'QuanLyNhanSu_log', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL10_50.CA\MSSQL\DATA\QuanLyNhanSu_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [QuanLyNhanSu] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [QuanLyNhanSu].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [QuanLyNhanSu] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [QuanLyNhanSu] SET ANSI_NULLS ON
GO
ALTER DATABASE [QuanLyNhanSu] SET ANSI_PADDING OFF
GO
ALTER DATABASE [QuanLyNhanSu] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [QuanLyNhanSu] SET ARITHABORT OFF
GO
ALTER DATABASE [QuanLyNhanSu] SET AUTO_CLOSE OFF
GO
ALTER DATABASE [QuanLyNhanSu] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [QuanLyNhanSu] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [QuanLyNhanSu] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [QuanLyNhanSu] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [QuanLyNhanSu] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [QuanLyNhanSu] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [QuanLyNhanSu] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [QuanLyNhanSu] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [QuanLyNhanSu] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [QuanLyNhanSu] SET  DISABLE_BROKER
GO
ALTER DATABASE [QuanLyNhanSu] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [QuanLyNhanSu] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [QuanLyNhanSu] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [QuanLyNhanSu] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [QuanLyNhanSu] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [QuanLyNhanSu] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [QuanLyNhanSu] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [QuanLyNhanSu] SET  READ_WRITE
GO
ALTER DATABASE [QuanLyNhanSu] SET RECOVERY SIMPLE
GO
ALTER DATABASE [QuanLyNhanSu] SET  MULTI_USER
GO
ALTER DATABASE [QuanLyNhanSu] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [QuanLyNhanSu] SET DB_CHAINING OFF
GO
USE [QuanLyNhanSu]
GO
/****** Object:  Table [dbo].[HopDong]    Script Date: 05/15/2017 23:05:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[HopDong](
	[MaHopDong] [varchar](30) NOT NULL,
	[LoaiHopDong] [nvarchar](50) NULL,
	[NgayBatDau] [datetime] NULL,
	[NgayKetThuc] [datetime] NULL,
	[GhiChu] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaHopDong] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ChuyenNganh]    Script Date: 05/15/2017 23:05:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ChuyenNganh](
	[MaChuyenNganh] [varchar](30) NOT NULL,
	[TenChuyenNganh] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaChuyenNganh] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ChucVuNhanVien]    Script Date: 05/15/2017 23:05:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ChucVuNhanVien](
	[MaChucVuNV] [varchar](30) NOT NULL,
	[TenChucVu] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_ChucVuNhanVien] PRIMARY KEY CLUSTERED 
(
	[MaChucVuNV] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TrinhDoHocVan]    Script Date: 05/15/2017 23:05:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TrinhDoHocVan](
	[MaTrinhDoHocVan] [varchar](30) NOT NULL,
	[TenTrinhDo] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_TrinhDoHocVan] PRIMARY KEY CLUSTERED 
(
	[MaTrinhDoHocVan] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PhongBan]    Script Date: 05/15/2017 23:05:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PhongBan](
	[MaPhongBan] [varchar](30) NOT NULL,
	[TenPhongBan] [nvarchar](50) NOT NULL,
	[DiaChi] [nvarchar](50) NULL,
	[sdt_PhongBan] [varchar](11) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaPhongBan] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[NhanVien]    Script Date: 05/15/2017 23:05:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[NhanVien](
	[MaNhanVien] [varchar](30) NOT NULL,
	[MatKhau] [nvarchar](100) NOT NULL,
	[HoTen] [nvarchar](50) NULL,
	[NgaySinh] [date] NULL,
	[QueQuan] [nvarchar](100) NULL,
	[HinhAnh] [ntext] NULL,
	[GioiTinh] [int] NULL,
	[DanToc] [nvarchar](10) NULL,
	[sdt_NhanVien] [varchar](11) NULL,
	[MaChucVuNV] [varchar](30) NULL,
	[TrangThai] [bit] NOT NULL,
	[MaPhongBan] [varchar](30) NULL,
	[MaHopDong] [varchar](30) NULL,
	[MaChuyenNganh] [varchar](30) NULL,
	[MaTrinhDoHocVan] [varchar](30) NULL,
	[CMND] [varchar](50) NULL,
 CONSTRAINT [PK__NhanVien] PRIMARY KEY CLUSTERED 
(
	[MaNhanVien] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Luong]    Script Date: 05/15/2017 23:05:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Luong](
	[MaNhanVien] [varchar](30) NOT NULL,
	[LuongCoBan] [int] NOT NULL,
	[BHXH] [int] NULL,
	[PhuCap] [int] NULL,
	[ThueThuNhap] [float] NULL,
 CONSTRAINT [PK__Luong] PRIMARY KEY CLUSTERED 
(
	[MaNhanVien] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[LuanChuyenNhanVien]    Script Date: 05/15/2017 23:05:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[LuanChuyenNhanVien](
	[MaNhanVien] [varchar](30) NOT NULL,
	[id] [int] IDENTITY(1,1) NOT NULL,
	[NgayChuyen] [date] NOT NULL,
	[LyDoChuyen] [nvarchar](max) NULL,
	[PhongBanChuyen] [varchar](30) NULL,
	[PhongBanDen] [varchar](30) NULL,
 CONSTRAINT [PK_LuanChuyenNhanVien_1] PRIMARY KEY CLUSTERED 
(
	[MaNhanVien] ASC,
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KyLuat]    Script Date: 05/15/2017 23:05:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KyLuat](
	[MaNhanVien] [varchar](30) NOT NULL,
	[LyDo] [nvarchar](max) NULL,
	[ThangKiLuat] [date] NOT NULL,
	[TienKyLuat] [int] NULL,
 CONSTRAINT [PK_KyLuat] PRIMARY KEY CLUSTERED 
(
	[MaNhanVien] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KhenThuong]    Script Date: 05/15/2017 23:05:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KhenThuong](
	[MaNhanVien] [varchar](30) NOT NULL,
	[ThangThuong] [date] NOT NULL,
	[LyDo] [nvarchar](max) NULL,
	[TienThuong] [int] NULL,
 CONSTRAINT [PK_Thuong] PRIMARY KEY CLUSTERED 
(
	[MaNhanVien] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ThoiViec]    Script Date: 05/15/2017 23:05:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ThoiViec](
	[MaNhanVien] [varchar](30) NOT NULL,
	[Lydo] [nvarchar](max) NULL,
	[NgayThoiViec] [date] NOT NULL,
 CONSTRAINT [PK_ThoiViec] PRIMARY KEY CLUSTERED 
(
	[MaNhanVien] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ChiTietLuong]    Script Date: 05/15/2017 23:05:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ChiTietLuong](
	[MaChiTietBangLuong] [varchar](30) NOT NULL,
	[MaNhanVien] [varchar](30) NOT NULL,
	[LuongCoBan] [int] NOT NULL,
	[BHXH] [int] NULL,
	[PhuCap] [int] NULL,
	[ThueThuNhap] [float] NULL,
	[TienThuong] [int] NULL,
	[TienPhat] [int] NULL,
	[NgayNhanLuong] [date] NOT NULL,
	[TongTienLuong] [varchar](30) NULL,
 CONSTRAINT [PK__ChiTietL__8298170365F62111] PRIMARY KEY CLUSTERED 
(
	[MaChiTietBangLuong] ASC,
	[MaNhanVien] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Default [DF__NhanVien__TrangT__41B8C09B]    Script Date: 05/15/2017 23:05:29 ******/
ALTER TABLE [dbo].[NhanVien] ADD  CONSTRAINT [DF__NhanVien__TrangT__41B8C09B]  DEFAULT ((1)) FOR [TrangThai]
GO
/****** Object:  ForeignKey [FK__NhanVien__MaChuyenNganh]    Script Date: 05/15/2017 23:05:29 ******/
ALTER TABLE [dbo].[NhanVien]  WITH CHECK ADD  CONSTRAINT [FK__NhanVien__MaChuyenNganh] FOREIGN KEY([MaChuyenNganh])
REFERENCES [dbo].[ChuyenNganh] ([MaChuyenNganh])
GO
ALTER TABLE [dbo].[NhanVien] CHECK CONSTRAINT [FK__NhanVien__MaChuyenNganh]
GO
/****** Object:  ForeignKey [FK__NhanVien__MaHopDong]    Script Date: 05/15/2017 23:05:29 ******/
ALTER TABLE [dbo].[NhanVien]  WITH CHECK ADD  CONSTRAINT [FK__NhanVien__MaHopDong] FOREIGN KEY([MaHopDong])
REFERENCES [dbo].[HopDong] ([MaHopDong])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[NhanVien] CHECK CONSTRAINT [FK__NhanVien__MaHopDong]
GO
/****** Object:  ForeignKey [FK__NhanVien__MaPhongBan]    Script Date: 05/15/2017 23:05:29 ******/
ALTER TABLE [dbo].[NhanVien]  WITH CHECK ADD  CONSTRAINT [FK__NhanVien__MaPhongBan] FOREIGN KEY([MaPhongBan])
REFERENCES [dbo].[PhongBan] ([MaPhongBan])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[NhanVien] CHECK CONSTRAINT [FK__NhanVien__MaPhongBan]
GO
/****** Object:  ForeignKey [FK_NhanVien_ChucVuNhanVien]    Script Date: 05/15/2017 23:05:29 ******/
ALTER TABLE [dbo].[NhanVien]  WITH CHECK ADD  CONSTRAINT [FK_NhanVien_ChucVuNhanVien] FOREIGN KEY([MaChucVuNV])
REFERENCES [dbo].[ChucVuNhanVien] ([MaChucVuNV])
GO
ALTER TABLE [dbo].[NhanVien] CHECK CONSTRAINT [FK_NhanVien_ChucVuNhanVien]
GO
/****** Object:  ForeignKey [FK_NhanVien_TrinhDoHocVan]    Script Date: 05/15/2017 23:05:29 ******/
ALTER TABLE [dbo].[NhanVien]  WITH CHECK ADD  CONSTRAINT [FK_NhanVien_TrinhDoHocVan] FOREIGN KEY([MaTrinhDoHocVan])
REFERENCES [dbo].[TrinhDoHocVan] ([MaTrinhDoHocVan])
GO
ALTER TABLE [dbo].[NhanVien] CHECK CONSTRAINT [FK_NhanVien_TrinhDoHocVan]
GO
/****** Object:  ForeignKey [FK__Luong__MaNhanVien]    Script Date: 05/15/2017 23:05:29 ******/
ALTER TABLE [dbo].[Luong]  WITH CHECK ADD  CONSTRAINT [FK__Luong__MaNhanVien] FOREIGN KEY([MaNhanVien])
REFERENCES [dbo].[NhanVien] ([MaNhanVien])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Luong] CHECK CONSTRAINT [FK__Luong__MaNhanVien]
GO
/****** Object:  ForeignKey [FK__LuanChuyen__MaNhanVien]    Script Date: 05/15/2017 23:05:29 ******/
ALTER TABLE [dbo].[LuanChuyenNhanVien]  WITH CHECK ADD  CONSTRAINT [FK__LuanChuyen__MaNhanVien] FOREIGN KEY([MaNhanVien])
REFERENCES [dbo].[NhanVien] ([MaNhanVien])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[LuanChuyenNhanVien] CHECK CONSTRAINT [FK__LuanChuyen__MaNhanVien]
GO
/****** Object:  ForeignKey [FK_KyLuat_KyLuat]    Script Date: 05/15/2017 23:05:29 ******/
ALTER TABLE [dbo].[KyLuat]  WITH CHECK ADD  CONSTRAINT [FK_KyLuat_KyLuat] FOREIGN KEY([MaNhanVien])
REFERENCES [dbo].[NhanVien] ([MaNhanVien])
GO
ALTER TABLE [dbo].[KyLuat] CHECK CONSTRAINT [FK_KyLuat_KyLuat]
GO
/****** Object:  ForeignKey [FK__Thuong__MaNhanVien]    Script Date: 05/15/2017 23:05:29 ******/
ALTER TABLE [dbo].[KhenThuong]  WITH CHECK ADD  CONSTRAINT [FK__Thuong__MaNhanVien] FOREIGN KEY([MaNhanVien])
REFERENCES [dbo].[NhanVien] ([MaNhanVien])
GO
ALTER TABLE [dbo].[KhenThuong] CHECK CONSTRAINT [FK__Thuong__MaNhanVien]
GO
/****** Object:  ForeignKey [FK__ThoiViec__MaNhanVien]    Script Date: 05/15/2017 23:05:29 ******/
ALTER TABLE [dbo].[ThoiViec]  WITH CHECK ADD  CONSTRAINT [FK__ThoiViec__MaNhanVien] FOREIGN KEY([MaNhanVien])
REFERENCES [dbo].[NhanVien] ([MaNhanVien])
GO
ALTER TABLE [dbo].[ThoiViec] CHECK CONSTRAINT [FK__ThoiViec__MaNhanVien]
GO
/****** Object:  ForeignKey [FK__ChiTietLu__TongT__67DE6983]    Script Date: 05/15/2017 23:05:29 ******/
ALTER TABLE [dbo].[ChiTietLuong]  WITH CHECK ADD  CONSTRAINT [FK__ChiTietLu__TongT__67DE6983] FOREIGN KEY([MaNhanVien])
REFERENCES [dbo].[Luong] ([MaNhanVien])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ChiTietLuong] CHECK CONSTRAINT [FK__ChiTietLu__TongT__67DE6983]
GO
