USE [master]
GO
/****** Object:  Database [Phan_mem_ghi_danh]    Script Date: 15/9/2022 11:55:00 AM ******/
CREATE DATABASE [Phan_mem_ghi_danh]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Phan_mem_ghi_danh', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\Phan_mem_ghi_danh.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Phan_mem_ghi_danh_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\Phan_mem_ghi_danh_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [Phan_mem_ghi_danh] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Phan_mem_ghi_danh].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Phan_mem_ghi_danh] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Phan_mem_ghi_danh] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Phan_mem_ghi_danh] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Phan_mem_ghi_danh] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Phan_mem_ghi_danh] SET ARITHABORT OFF 
GO
ALTER DATABASE [Phan_mem_ghi_danh] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Phan_mem_ghi_danh] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Phan_mem_ghi_danh] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Phan_mem_ghi_danh] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Phan_mem_ghi_danh] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Phan_mem_ghi_danh] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Phan_mem_ghi_danh] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Phan_mem_ghi_danh] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Phan_mem_ghi_danh] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Phan_mem_ghi_danh] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Phan_mem_ghi_danh] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Phan_mem_ghi_danh] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Phan_mem_ghi_danh] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Phan_mem_ghi_danh] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Phan_mem_ghi_danh] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Phan_mem_ghi_danh] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Phan_mem_ghi_danh] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Phan_mem_ghi_danh] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Phan_mem_ghi_danh] SET  MULTI_USER 
GO
ALTER DATABASE [Phan_mem_ghi_danh] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Phan_mem_ghi_danh] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Phan_mem_ghi_danh] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Phan_mem_ghi_danh] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [Phan_mem_ghi_danh] SET DELAYED_DURABILITY = DISABLED 
GO
USE [Phan_mem_ghi_danh]
GO
/****** Object:  Table [dbo].[BangDiem]    Script Date: 15/9/2022 11:55:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BangDiem](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Ten] [nchar](20) NULL,
	[KiemTraMieng] [int] NULL,
	[DiemTrungBinh] [int] NULL,
 CONSTRAINT [PK_BangDiem] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[dangnhap]    Script Date: 15/9/2022 11:55:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dangnhap](
	[username] [nvarchar](50) NULL,
	[passwork] [nvarchar](50) NULL,
	[email] [nvarchar](50) NULL,
	[userid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_dangnhap] PRIMARY KEY CLUSTERED 
(
	[userid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DSGiaoVien]    Script Date: 15/9/2022 11:55:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DSGiaoVien](
	[MaID] [int] IDENTITY(1,1) NOT NULL,
	[id] [nvarchar](50) NULL,
	[AnhDaiDien] [text] NULL,
	[HoTen] [nvarchar](50) NULL,
	[GioiTinh] [nchar](10) NULL,
	[DiaChi] [nvarchar](50) NULL,
	[DT] [int] NULL,
	[Email] [nchar](10) NULL,
 CONSTRAINT [PK_DSGiaoVien] PRIMARY KEY CLUSTERED 
(
	[MaID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DSHocVien]    Script Date: 15/9/2022 11:55:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DSHocVien](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[MaHV] [nvarchar](50) NULL,
	[HinhAnh] [text] NULL,
	[HoTen] [nchar](20) NULL,
	[PhuHuynh] [nchar](20) NULL,
	[DiaChi] [nvarchar](50) NULL,
	[NgaySinh] [date] NULL,
	[SDT] [int] NULL,
	[Email] [nvarchar](50) NULL,
 CONSTRAINT [PK_DSHocVien_1] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DSHocVienDaNopTienPhi]    Script Date: 15/9/2022 11:55:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DSHocVienDaNopTienPhi](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[MaHocVien] [nvarchar](50) NULL,
	[HinhAnh] [text] NULL,
	[HoTen] [nchar](20) NULL,
	[PhuHuynh] [nchar](20) NULL,
	[DiaChi] [nvarchar](50) NULL,
	[NgaySinh] [date] NULL,
	[SDT] [int] NULL,
	[Email] [nvarchar](50) NULL,
	[LopHoc] [nvarchar](50) NULL,
 CONSTRAINT [PK_DoanhThuTrongKy] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DSKhoa]    Script Date: 15/9/2022 11:55:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DSKhoa](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[MaKhoa] [nvarchar](50) NULL,
	[TenKhoa] [nvarchar](50) NULL,
 CONSTRAINT [PK_DSKhoa] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DSLichNghi]    Script Date: 15/9/2022 11:55:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DSLichNghi](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[TenNgayNghi] [nvarchar](50) NULL,
	[LyDo] [nvarchar](50) NULL,
	[ThoiGianBatDau] [date] NULL,
	[ThoiGianKetThucd] [date] NULL,
 CONSTRAINT [PK_DSLichNghi] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DSLop]    Script Date: 15/9/2022 11:55:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DSLop](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[MaLop] [nvarchar](50) NULL,
	[TenLop] [nvarchar](50) NULL,
	[NienKhoa] [nvarchar](50) NULL,
	[Khoa_khoi] [nvarchar](50) NULL,
	[SoLuongHocVien] [nvarchar](50) NULL,
	[TrangThai] [nvarchar](50) NULL,
	[HocPhi] [money] NULL,
 CONSTRAINT [PK_DSLop] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DSLopHoc]    Script Date: 15/9/2022 11:55:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DSLopHoc](
	[TenLop] [nvarchar](50) NOT NULL,
	[MoTa] [nvarchar](100) NULL,
 CONSTRAINT [PK_DSLopHoc] PRIMARY KEY CLUSTERED 
(
	[TenLop] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DSMonHoc]    Script Date: 15/9/2022 11:55:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DSMonHoc](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[MaMonHoc] [nvarchar](50) NULL,
	[TenMonHoc] [nvarchar](50) NULL,
	[TenBoMon] [nvarchar](50) NULL,
	[TenKhoa] [nvarchar](50) NULL,
 CONSTRAINT [PK_DSMonHoc] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DSNguoiDung]    Script Date: 15/9/2022 11:55:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DSNguoiDung](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[TenNguoiDung] [nchar](20) NULL,
	[Email] [nvarchar](50) NULL,
	[Role] [nchar](20) NULL,
 CONSTRAINT [PK_DSNguoiDung] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DSVaiTro]    Script Date: 15/9/2022 11:55:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DSVaiTro](
	[TenVaiTro] [nchar](10) NOT NULL,
 CONSTRAINT [PK_DSVaiTro] PRIMARY KEY CLUSTERED 
(
	[TenVaiTro] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[FileDoanhThu]    Script Date: 15/9/2022 11:55:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FileDoanhThu](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[MaHocVien] [nvarchar](50) NULL,
	[HoTen] [nchar](20) NULL,
	[LopHoc] [nvarchar](50) NULL,
	[NgayHocTrongTuan] [nvarchar](50) NULL,
	[GioHoc] [time](7) NULL,
	[HocPhi] [money] NULL,
	[GiaoVien] [nchar](20) NULL,
 CONSTRAINT [PK_FileDoanhThu] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HocPhi]    Script Date: 15/9/2022 11:55:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HocPhi](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[LopHoc] [nvarchar](50) NULL,
	[ThuPhi] [money] NULL,
	[LoaiHocPhi] [money] NULL,
	[MucThuPhi] [money] NULL,
	[GhiChu] [nchar](100) NULL,
 CONSTRAINT [PK_HocPhi] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[LoaiDiem]    Script Date: 15/9/2022 11:55:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiDiem](
	[MaLoaiDiem] [int] NOT NULL,
	[TenLoaiDiem] [nvarchar](50) NULL,
	[HeSo] [int] NULL,
 CONSTRAINT [PK_LoaiDiem] PRIMARY KEY CLUSTERED 
(
	[MaLoaiDiem] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[LoaiDiemMon]    Script Date: 15/9/2022 11:55:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiDiemMon](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[TenKhaoDaoTao] [nvarchar](50) NULL,
	[TenMonHoc] [nvarchar](50) NULL,
	[LoaiDiem] [nchar](20) NULL,
	[SoCotDiem] [int] NULL,
	[SoCotDiemBatBuoc] [int] NULL,
 CONSTRAINT [PK_LoaiDiemMon] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[LuongNV]    Script Date: 15/9/2022 11:55:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LuongNV](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[MaGiaoVien] [nvarchar](50) NULL,
	[TenGiangVien] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
	[SDT] [int] NULL,
	[TongLuong] [money] NULL,
	[TrangThai] [nvarchar](50) NULL,
 CONSTRAINT [PK_LuongNV] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PhanCong]    Script Date: 15/9/2022 11:55:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhanCong](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[MaGiaoVien] [nvarchar](50) NULL,
	[TenGiangVien] [nchar](20) NULL,
	[MonHoc] [nvarchar](50) NULL,
	[Lop] [nvarchar](50) NULL,
	[NgayBatDau] [date] NULL,
	[NgayKetThuc] [date] NULL,
 CONSTRAINT [PK_PhanCong] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ThongTinSV]    Script Date: 15/9/2022 11:55:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ThongTinSV](
	[MaLop] [nvarchar](50) NULL,
	[KhoaDaoTao] [nvarchar](50) NULL,
	[GiaTien] [money] NULL,
	[TrangThai] [nvarchar](50) NULL,
	[MaHV] [nvarchar](50) NULL,
	[HoTen] [nchar](20) NULL,
	[NgaySinh] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ToBoMon]    Script Date: 15/9/2022 11:55:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ToBoMon](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[TenToBoMon] [nchar](10) NULL,
 CONSTRAINT [PK_ToBoMon] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_ThongTinSV]    Script Date: 15/9/2022 11:55:01 AM ******/
CREATE NONCLUSTERED INDEX [IX_ThongTinSV] ON [dbo].[ThongTinSV]
(
	[MaLop] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
USE [master]
GO
ALTER DATABASE [Phan_mem_ghi_danh] SET  READ_WRITE 
GO
