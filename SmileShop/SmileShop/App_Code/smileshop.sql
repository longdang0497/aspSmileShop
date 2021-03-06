USE [master]
GO
/****** Object:  Database [smileshop]    Script Date: 5/4/2018 4:27:20 PM ******/
CREATE DATABASE [smileshop]
ALTER DATABASE [smileshop] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [smileshop].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [smileshop] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [smileshop] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [smileshop] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [smileshop] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [smileshop] SET ARITHABORT OFF 
GO
ALTER DATABASE [smileshop] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [smileshop] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [smileshop] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [smileshop] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [smileshop] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [smileshop] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [smileshop] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [smileshop] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [smileshop] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [smileshop] SET  DISABLE_BROKER 
GO
ALTER DATABASE [smileshop] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [smileshop] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [smileshop] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [smileshop] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [smileshop] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [smileshop] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [smileshop] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [smileshop] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [smileshop] SET  MULTI_USER 
GO
ALTER DATABASE [smileshop] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [smileshop] SET DB_CHAINING OFF 
GO
ALTER DATABASE [smileshop] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [smileshop] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [smileshop] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'smileshop', N'ON'
GO
ALTER DATABASE [smileshop] SET QUERY_STORE = OFF
GO
USE [smileshop]
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
USE [smileshop]
GO
/****** Object:  Table [dbo].[db_ChatLieu]    Script Date: 5/4/2018 4:27:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[db_ChatLieu](
	[ChatLieuID] [int] IDENTITY(1,1) NOT NULL,
	[TenChatLieu] [nvarchar](50) NULL,
 CONSTRAINT [PK_db_ChatLieu] PRIMARY KEY CLUSTERED 
(
	[ChatLieuID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[db_Mau]    Script Date: 5/4/2018 4:27:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[db_Mau](
	[MauID] [int] IDENTITY(1,1) NOT NULL,
	[TenMau] [nvarchar](50) NULL,
 CONSTRAINT [PK_db_Mau] PRIMARY KEY CLUSTERED 
(
	[MauID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[db_SanPham]    Script Date: 5/4/2018 4:27:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[db_SanPham](
	[MaSP] [int] IDENTITY(1,1) NOT NULL,
	[TenSP] [nvarchar](100) NULL,
	[MauID] [int] NULL,
	[SizeID] [int] NULL,
	[ChatLieuID] [int] NULL,
	[AnhSP] [nvarchar](100) NULL,
	[SoLuongSP] [int] NULL,
	[GiaSP] [float] NULL,
	[MotaSP] [nvarchar](max) NULL,
	[NgayTao] [datetime] NULL,
	[NgayHuy] [datetime] NULL,
 CONSTRAINT [PK_db_SanPham] PRIMARY KEY CLUSTERED 
(
	[MaSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[db_Size]    Script Date: 5/4/2018 4:27:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[db_Size](
	[SizeID] [int] IDENTITY(1,1) NOT NULL,
	[TenSize] [varchar](10) NULL,
 CONSTRAINT [PK_db_Size] PRIMARY KEY CLUSTERED 
(
	[SizeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

SET IDENTITY_INSERT [dbo].[db_ChatLieu] ON
INSERT [dbo].[db_ChatLieu] ([ChatLieuID], [TenChatLieu]) VALUES (1, N'Vải lon bóng')
INSERT [dbo].[db_ChatLieu] ([ChatLieuID], [TenChatLieu]) VALUES (2, N'Thô')
INSERT [dbo].[db_ChatLieu] ([ChatLieuID], [TenChatLieu]) VALUES (3, N'Da cá sấu chúa')
INSERT [dbo].[db_ChatLieu] ([ChatLieuID], [TenChatLieu]) VALUES (4, N'Cotton')
INSERT [dbo].[db_ChatLieu] ([ChatLieuID], [TenChatLieu]) VALUES (6, N'Thun')
SET IDENTITY_INSERT [dbo].[db_ChatLieu] OFF

SET IDENTITY_INSERT [dbo].[db_Mau] ON 
INSERT [dbo].[db_Mau] ([MauID], [TenMau]) VALUES (3, N'Xanh')
INSERT [dbo].[db_Mau] ([MauID], [TenMau]) VALUES (4, N'Tím')
INSERT [dbo].[db_Mau] ([MauID], [TenMau]) VALUES (5, N'Hồng')
INSERT [dbo].[db_Mau] ([MauID], [TenMau]) VALUES (6, N'Đỏ')
INSERT [dbo].[db_Mau] ([MauID], [TenMau]) VALUES (7, N'Trắng')
INSERT [dbo].[db_Mau] ([MauID], [TenMau]) VALUES (8, N'Đen')
INSERT [dbo].[db_Mau] ([MauID], [TenMau]) VALUES (9, N'Vàng')
INSERT [dbo].[db_Mau] ([MauID], [TenMau]) VALUES (10, N'Ghi')
SET IDENTITY_INSERT [dbo].[db_Mau] OFF

SET IDENTITY_INSERT [dbo].[db_Menu] ON 
INSERT [dbo].[db_Menu] ([MaMenu], [TenMenu], [LienKet], [MaMenuCha], [ThuTuMenu]) VALUES (1, N'Trang chủ', N'/', 0, 1)
INSERT [dbo].[db_Menu] ([MaMenu], [TenMenu], [LienKet], [MaMenuCha], [ThuTuMenu]) VALUES (2, N'Sản phẩm', N'/Default.aspx?modul=SanPham', 0, 2)
INSERT [dbo].[db_Menu] ([MaMenu], [TenMenu], [LienKet], [MaMenuCha], [ThuTuMenu]) VALUES (3, N'Tin tức', N'/Default.aspx?modul=TinTuc', 0, 1)
INSERT [dbo].[db_Menu] ([MaMenu], [TenMenu], [LienKet], [MaMenuCha], [ThuTuMenu]) VALUES (4, N'Liên hệ', N'Default.aspx?modul=TinTuc&modulphu=ChiTietTinTuc&id=20', 0, 4)
INSERT [dbo].[db_Menu] ([MaMenu], [TenMenu], [LienKet], [MaMenuCha], [ThuTuMenu]) VALUES (5, N'Tin công ty', N'', 3, 1)
INSERT [dbo].[db_Menu] ([MaMenu], [TenMenu], [LienKet], [MaMenuCha], [ThuTuMenu]) VALUES (6, N'Tin thế giới', N'', 3, 2)
INSERT [dbo].[db_Menu] ([MaMenu], [TenMenu], [LienKet], [MaMenuCha], [ThuTuMenu]) VALUES (7, N'Tin khuyến mại', N'', 3, 3)
INSERT [dbo].[db_Menu] ([MaMenu], [TenMenu], [LienKet], [MaMenuCha], [ThuTuMenu]) VALUES (8, N'Áo', N'', 2, 1)
INSERT [dbo].[db_Menu] ([MaMenu], [TenMenu], [LienKet], [MaMenuCha], [ThuTuMenu]) VALUES (9, N'Quần', N'', 2, 2)
INSERT [dbo].[db_Menu] ([MaMenu], [TenMenu], [LienKet], [MaMenuCha], [ThuTuMenu]) VALUES (10, N'Chân váy', N'', 2, 0)
INSERT [dbo].[db_Menu] ([MaMenu], [TenMenu], [LienKet], [MaMenuCha], [ThuTuMenu]) VALUES (11, N'Váy', N'', 2, 3)
INSERT [dbo].[db_Menu] ([MaMenu], [TenMenu], [LienKet], [MaMenuCha], [ThuTuMenu]) VALUES (12, N'Liên hệ 1', N'', 4, 1)
INSERT [dbo].[db_Menu] ([MaMenu], [TenMenu], [LienKet], [MaMenuCha], [ThuTuMenu]) VALUES (13, N'Liên hệ 2', N'', 4, 2)
INSERT [dbo].[db_Menu] ([MaMenu], [TenMenu], [LienKet], [MaMenuCha], [ThuTuMenu]) VALUES (14, N'Kinh tế', N'', 6, 1)
INSERT [dbo].[db_Menu] ([MaMenu], [TenMenu], [LienKet], [MaMenuCha], [ThuTuMenu]) VALUES (15, N'Tài chính', N'', 6, 2)
INSERT [dbo].[db_Menu] ([MaMenu], [TenMenu], [LienKet], [MaMenuCha], [ThuTuMenu]) VALUES (16, N'Giới thiệu', N'Default.aspx?modul=TinTuc&modulphu=ChiTietTinTuc&id=18', 0, 2)
INSERT [dbo].[db_Menu] ([MaMenu], [TenMenu], [LienKet], [MaMenuCha], [ThuTuMenu]) VALUES (17, N'Thanh toán', N'Default.aspx?modul=TinTuc&modulphu=ChiTietTinTuc&id=19', 0, 6)
INSERT [dbo].[db_Menu] ([MaMenu], [TenMenu], [LienKet], [MaMenuCha], [ThuTuMenu]) VALUES (18, N'Đấu giá ngược', N'/Default.aspx?modul=SanPham&modulphu=DauGia', 0, 3)
SET IDENTITY_INSERT [dbo].[db_Menu] OFF

SET IDENTITY_INSERT [dbo].[db_SanPham] ON 
INSERT [dbo].[db_SanPham] ([MaSP], [TenSP], [MauID], [SizeID], [ChatLieuID], [AnhSP], [SoLuongSP], [GiaSP], [MotaSP], [NgayTao], [NgayHuy]) VALUES (10, N'ĐẦM JEAN CỔ TRỤ - MH137', 3, 1, 2, N'sp1.jpg', 10, 195000, N'<div>
	ĐẦM JEAN MỔ TRỤ 2 T&Uacute;I</div>
<div>
	&nbsp;</div>
<div>
	Kiểu d&aacute;ng: đầm su&ocirc;ng, tay ngắn, mổ trụ cổ, 2 t&uacute;i, phối cầu vai&nbsp;</div>
<div>
	M&agrave;u sắc: xanh&nbsp;</div>
<div>
	Chất liệu: jean wax mềm&nbsp;</div>
<div>
	K&iacute;ch thước: S,M<br />
	&nbsp;</div>
<div style="text-align: center;">
	<img alt="ĐẦM JEAN CỔ TRỤ 2" src="https://media3.scdn.vn/img1/2016/5_26/dam-jean-co-tru-1m4G3-04d212_simg_d0daf0_800x1200_max.jpg" /></div>
<div style="text-align: center;">
	<img alt="ĐẦM JEAN CỔ TRỤ 3" src="https://media3.scdn.vn/img1/2016/6_19/dam-jean-co-tru-1m4G3-LOBs2B_simg_d0daf0_800x1200_max.jpg" /><br />
	<br />
	<img alt="ĐẦM JEAN CỔ TRỤ 4" src="https://media3.scdn.vn/img1/2016/6_19/dam-jean-co-tru-1m4G3-7s3fMy_simg_d0daf0_800x1200_max.jpg" /><br />
	<br />
	<img alt="ĐẦM JEAN CỔ TRỤ 5" src="https://media3.scdn.vn/img1/2016/6_19/dam-jean-co-tru-1m4G3-laDeaI_simg_d0daf0_800x1200_max.jpg" /></div>
', CAST(N'2016-10-09T10:11:42.000' AS DateTime), CAST(N'2016-10-09T10:11:42.000' AS DateTime))
INSERT [dbo].[db_SanPham] ([MaSP], [TenSP], [MauID], [SizeID], [ChatLieuID], [AnhSP], [SoLuongSP], [GiaSP], [MotaSP], [NgayTao], [NgayHuy]) VALUES (11, N'ĐẦM SUÔNG ĐUÔI CÁ - MH101', 9, 2, 1, N'sp2.jpg', 15, 120000, N'<p>
	ĐẦM SU&Ocirc;NG ĐU&Ocirc;I C&Aacute;</p>
<p>
	Chất liệu : C&aacute;t H&agrave;n Mịn M&aacute;t,Vải C&oacute; Độ Co Gi&atilde;n<br />
	- M&agrave;u sắc : Đen<br />
	- K&iacute;ch thước : Size S,M</p>
<p>
	&nbsp;</p>
<p>
	&quot;SHOP TẠM HẾT M&Agrave;U CAM&nbsp;ĐẤT C&Ograve;N M&Agrave;U&nbsp;ĐEN MONG KH&Aacute;CH TH&Ocirc;NG CẢM&quot;</p>
<p>
	&nbsp;</p>
<ul>
	<li>
		Đặt H&agrave;ng Sẽ C&oacute; Nh&acirc;n Vi&ecirc;n gọi điện tư vấn &quot; &nbsp;0984324691</li>
</ul>
<p style="text-align: center;">
	<img alt="ĐẦM SUÔNG ĐUÔI CÁ 3" src="https://media3.scdn.vn/img1/2016/7_23/dam-suong-duoi-ca-1m4G3-Voevct_simg_d0daf0_800x1200_max.jpg" /></p>
<p>
	&nbsp;</p>
<p style="text-align: center;">
	<img alt="ĐẦM SUÔNG ĐUÔI CÁ 4" src="https://media3.scdn.vn/img1/2016/8_8/dam-suong-duoi-ca-1m4G3-ILRTiq_simg_d0daf0_800x1200_max.jpg" /></p>
', CAST(N'2016-10-09T10:13:55.000' AS DateTime), CAST(N'2016-10-09T10:13:55.000' AS DateTime))
INSERT [dbo].[db_SanPham] ([MaSP], [TenSP], [MauID], [SizeID], [ChatLieuID], [AnhSP], [SoLuongSP], [GiaSP], [MotaSP], [NgayTao], [NgayHuy]) VALUES (13, N'ĐẦM XÔ SUÔNG KHOÉT VAI CAO CẤP - DSS7391', 9, 2, 4, N'sp4.jpg', 20, 355000, N'<div class="tab-product-detail cont-tab-detail-prod_ cont-tab-detail_ active">
	<div class="tab-product-detail" id="tab-product-detail">
		<p>
			C&aacute;c bạn mua h&agrave;ng call hoặc nt v&agrave;o sdt cho shop sẽ nhanh hơn comment hoặc ib ở fb<br />
			⚠⚠⚠c&aacute;c bạn check kỹ h&agrave;ng trước khi order nha<br />
			⚠⚠⚠h&agrave;ng mua rồi miễn đổi trả lại ( chỉ đổi h&agrave;ng lỗi )<br />
			⚠⚠⚠chỉ nhận ship khi chắc chắn lấy, ko ship để xem h&agrave;ng, ko ship để thử h&agrave;ng, kh&aacute;ch muốn xem trực tiếp gh&eacute; shop xem h&agrave;ng, h&agrave;ng đ&atilde; ship đi ko nhận đổi trả với l&yacute; do ko th&iacute;ch, ko vừa,...<br />
			❤❤❤thank kh&aacute;ch iu đ&atilde; ủng hộ shop</p>
		<p>
			<img alt="ĐẦM XÔ SUÔNG KHOÉT VAI CAO CẤP 1" src="https://media3.scdn.vn/img2/2016/10_4/dam-xo-suong-khoet-vai-cao-cap-1m4G3-c1QVG1_simg_d0daf0_800x1200_max.jpg" style="margin: 0 auto; display: block;" /><br />
			&nbsp;</p>
		<p>
			<img alt="ĐẦM XÔ SUÔNG KHOÉT VAI CAO CẤP 2" src="https://media3.scdn.vn/img2/2016/10_4/dam-xo-suong-khoet-vai-cao-cap-1m4G3-Fhkbx1_simg_d0daf0_800x1200_max.jpg" style="margin: 0 auto;display:block;" /><br />
			&nbsp;</p>
	</div>
</div>
<br />
', CAST(N'2016-10-09T15:14:17.000' AS DateTime), CAST(N'2016-10-09T15:14:17.000' AS DateTime))
INSERT [dbo].[db_SanPham] ([MaSP], [TenSP], [MauID], [SizeID], [ChatLieuID], [AnhSP], [SoLuongSP], [GiaSP], [MotaSP], [NgayTao], [NgayHuy]) VALUES (14, N'ĐÂM BODY PHỐI DÂY KÉO RUBY-TH08356 - 08356', 5, 3, 4, N'sp5.jpg', 30, 104000, N'<p>
	<span style="color: rgb(51, 51, 51); font-family: Arial, MyriadPro, Tahoma; line-height: 18px; widows: 1;">T&ecirc;n sp:&nbsp;</span><a href="https://www.sendo.vn/san-pham/dam-body-phoi-day-keo-ruby-th08356-3563548/" style="margin: 0px; padding: 0px; border: 0px; outline: 0px; border-collapse: collapse; color: rgb(0, 114, 188); text-decoration: none; font-family: Arial, MyriadPro, Tahoma; line-height: 18px; widows: 1;">Đ</a><span style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 12.8px; border-collapse: collapse; color: rgb(51, 51, 51); line-height: 18px; widows: 1; font-family: arial, sans-serif;"><a href="https://www.sendo.vn/san-pham/dam-body-phoi-day-keo-ruby-th08356-3563548/" style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 12.8px; border-collapse: collapse; color: rgb(0, 114, 188); text-decoration: none;">&Acirc;M BODY PHỐI D&Acirc;Y K&Eacute;O RUBY</a>-TH08356</span></p>
<p>
	<br />
	<span style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 12.8px; border-collapse: collapse; color: rgb(51, 51, 51); line-height: 18px; widows: 1; font-family: arial, sans-serif;">Chất liệu:&nbsp;</span><span style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 12.8px; border-collapse: collapse; color: rgb(51, 51, 51); line-height: 18px; widows: 1; font-family: arial, sans-serif;">thun g&acirc;n co giản tốt tạo cảm gi&aacute;c tho&aacute;i m&aacute;i khi mặc<br />
	<br />
	M&agrave;u sắc: Đ</span><span style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 12.8px; border-collapse: collapse; color: rgb(51, 51, 51); line-height: 18px; widows: 1; font-family: arial, sans-serif;">en , Hồng Sen , Xanh b&iacute;ch , Xanh đen<br />
	<br />
	K&iacute;ch thước: Free Size&nbsp;</span><span style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 12.8px; border-collapse: collapse; color: rgb(51, 51, 51); line-height: 18px; widows: 1; font-family: arial, sans-serif;">&nbsp;D&agrave;i: 82 cm<br />
	<br />
	<img alt="ĐÂM BODY PHỐI DÂY KÉO RUBY-TH08356 1" src="https://media3.scdn.vn/img1/2016/7_23/dam-body-phoi-day-keo-ruby-th08356-1m4G3-Hbd1be.jpg" style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 12.8px; border-collapse: collapse; max-width: 720px; width: 551px; height: 550px;" /></span><br style="color: rgb(51, 51, 51); font-family: Arial, MyriadPro, Tahoma; line-height: 18px; widows: 1;" />
	<br style="color: rgb(51, 51, 51); font-family: Arial, MyriadPro, Tahoma; line-height: 18px; widows: 1;" />
	<a href="https://www.sendo.vn/san-pham/dam-body-phoi-day-keo-ruby-th08356-3563548/" style="margin: 0px; padding: 0px; border: 0px; outline: 0px; border-collapse: collapse; color: rgb(0, 114, 188); text-decoration: none; font-family: Arial, MyriadPro, Tahoma; line-height: 18px; widows: 1;">Đ<span style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 12.8px; border-collapse: collapse; font-family: arial, sans-serif;">&Acirc;M BODY PHỐI D&Acirc;Y K&Eacute;O RUBY</span></a><span style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 13px; border-collapse: collapse; widows: 1; color: rgb(68, 68, 68); font-family: arial, helvetica, sans-serif; line-height: 20.15px; text-align: justify; background-color: rgb(249, 249, 249);">&nbsp;l&agrave; đặc quyền ri&ecirc;ng m&agrave; thời trang d&agrave;nh ri&ecirc;ng cho phụ nữ. Đ&acirc;y cũng được xem l&agrave; ch&igrave;a kho&aacute; quan trọng để c&aacute;c c&ocirc; g&aacute;i l&agrave;m đẹp. Nếu c&aacute;c n&agrave;ng cảm thấy qu&aacute; kh&ocirc; khan với &aacute;o thun v&agrave; quần jeans hằng ng&agrave;y, th&igrave; h&atilde;y t&igrave;m đến những chiếc&nbsp;</span><a href="https://www.sendo.vn/san-pham/dam-body-phoi-day-keo-ruby-th08356-3563548/" style="margin: 0px; padding: 0px; border: 0px; outline: 0px; border-collapse: collapse; color: rgb(0, 114, 188); text-decoration: none; font-family: Arial, MyriadPro, Tahoma; line-height: 18px; widows: 1;">Đ<span style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 12.8px; border-collapse: collapse; font-family: arial, sans-serif;">&Acirc;M BODY PHỐI D&Acirc;Y K&Eacute;O RUBY</span></a><span style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 13px; border-collapse: collapse; widows: 1; color: rgb(68, 68, 68); font-family: arial, helvetica, sans-serif; line-height: 20.15px; text-align: justify; background-color: rgb(249, 249, 249);">. Khi bạn g&aacute;i kho&aacute;c l&ecirc;n m&igrave;nh chiếc&nbsp;</span><strong style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 13px; border-collapse: collapse; widows: 1; color: rgb(68, 68, 68); font-family: arial, helvetica, sans-serif; line-height: 20.15px; text-align: justify; background-color: rgb(249, 249, 249);"><strong style="margin: 0px; padding: 0px; border: 0px; outline: 0px; border-collapse: collapse;">đầm</strong></strong><span style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 13px; border-collapse: collapse; widows: 1; color: rgb(68, 68, 68); font-family: arial, helvetica, sans-serif; line-height: 20.15px; text-align: justify; background-color: rgb(249, 249, 249);">&nbsp;th&igrave; h&atilde;y tự nhi&ecirc;n cảm thấy m&igrave;nh s&agrave;nh điệu v&agrave; dịu d&agrave;ng hẳn l&ecirc;n. Kh&ocirc;ng biết đ&oacute; c&oacute; phải l&agrave; do ảo gi&aacute;c hay kh&ocirc;ng nhưng ai cũng c&ocirc;ng nhận một điều rằng chiếc&nbsp;</span><strong style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 13px; border-collapse: collapse; widows: 1; color: rgb(68, 68, 68); font-family: arial, helvetica, sans-serif; line-height: 20.15px; text-align: justify; background-color: rgb(249, 249, 249);"><strong style="margin: 0px; padding: 0px; border: 0px; outline: 0px; border-collapse: collapse;">đầm</strong></strong><span style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 13px; border-collapse: collapse; widows: 1; color: rgb(68, 68, 68); font-family: arial, helvetica, sans-serif; line-height: 20.15px; text-align: justify; background-color: rgb(249, 249, 249);">&nbsp;c&oacute; uy lực v&ocirc; c&ugrave;ng. Ch&uacute;ng biến một c&ocirc; n&agrave;ng c&aacute; t&iacute;nh mạnh mẽ cũng phải trở n&ecirc;n nhẹ nh&agrave;ng, quyến rũ hơn hẳn ng&agrave;y thường.<br />
	<br />
	<img alt="ĐÂM BODY PHỐI DÂY KÉO RUBY-TH08356 2" src="https://media3.scdn.vn/img1/2016/7_23/dam-body-phoi-day-keo-ruby-th08356-1m4G3-giENwc.jpg" style="margin: 0px; padding: 0px; border: 0px; outline: 0px; border-collapse: collapse; max-width: 720px; width: 807px; height: 1062px;" /><br />
	<br />
	<img alt="ĐÂM BODY PHỐI DÂY KÉO RUBY-TH08356 3" src="https://media3.scdn.vn/img1/2016/7_23/dam-body-phoi-day-keo-ruby-th08356-1m4G3-I53ABQ.jpg" style="margin: 0px; padding: 0px; border: 0px; outline: 0px; border-collapse: collapse; max-width: 720px; width: 795px; height: 1062px;" /><br />
	<br />
	<img alt="ĐÂM BODY PHỐI DÂY KÉO RUBY-TH08356 4" src="https://media3.scdn.vn/img1/2016/7_23/dam-body-phoi-day-keo-ruby-th08356-1m4G3-TRvv1k.jpg" style="margin: 0px; padding: 0px; border: 0px; outline: 0px; border-collapse: collapse; max-width: 720px; width: 795px; height: 1062px;" /><br />
	<br />
	<img alt="ĐÂM BODY PHỐI DÂY KÉO RUBY-TH08356 5" src="https://media3.scdn.vn/img1/2016/7_23/dam-body-phoi-day-keo-ruby-th08356-1m4G3-U2Iyuh.jpg" style="margin: 0px; padding: 0px; border: 0px; outline: 0px; border-collapse: collapse; max-width: 720px; width: 795px; height: 1062px;" /><br />
	<br />
	<img alt="ĐÂM BODY PHỐI DÂY KÉO RUBY-TH08356 6" src="https://media3.scdn.vn/img1/2016/7_23/dam-body-phoi-day-keo-ruby-th08356-1m4G3-FWtSj6.jpg" style="margin: 0px; padding: 0px; border: 0px; outline: 0px; border-collapse: collapse; max-width: 720px; width: 801px; height: 1144px;" /><br />
	<br />
	<img alt="ĐÂM BODY PHỐI DÂY KÉO RUBY-TH08356 7" src="https://media3.scdn.vn/img1/2016/7_23/dam-body-phoi-day-keo-ruby-th08356-1m4G3-Deqk2n.jpg" style="margin: 0px; padding: 0px; border: 0px; outline: 0px; border-collapse: collapse; max-width: 720px; width: 900px; height: 734px;" /><br />
	<br />
	<img alt="ĐÂM BODY PHỐI DÂY KÉO RUBY-TH08356 8" src="https://media3.scdn.vn/img1/2016/7_23/dam-body-phoi-day-keo-ruby-th08356-1m4G3-Iyx42A.jpg" style="margin: 0px; padding: 0px; border: 0px; outline: 0px; border-collapse: collapse; max-width: 720px; width: 789px; height: 1060px;" /><br />
	<br />
	<img alt="ĐÂM BODY PHỐI DÂY KÉO RUBY-TH08356 9" src="https://media3.scdn.vn/img1/2016/7_23/dam-body-phoi-day-keo-ruby-th08356-1m4G3-EWNyoH.jpg" style="margin: 0px; padding: 0px; border: 0px; outline: 0px; border-collapse: collapse; max-width: 720px; width: 819px; height: 1156px;" /></span></p>
', CAST(N'2016-10-09T15:16:36.000' AS DateTime), CAST(N'2016-10-09T15:16:36.000' AS DateTime), 3, 4)
INSERT [dbo].[db_SanPham] ([MaSP], [TenSP], [MauID], [SizeID], [ChatLieuID], [AnhSP], [SoLuongSP], [GiaSP], [MotaSP], [NgayTao], [NgayHuy]) VALUES (15, N'Đầm bi trễ vai - DS133 - DS133', 3, 5, 4, N'sp6.jpg', 20, 229000, N'<p>
	Cam kết sản phẩm đ&uacute;ng h&igrave;nh 100%.</p>
<p>
	Đổi trả khi kh&ocirc;ng h&agrave;i l&ograve;ng về sản phẩm.</p>
<p style="text-align: center;">
	<img alt="Đầm bi trễ vai - DS133 1" src="https://media3.scdn.vn/img2/2016/9_8/dam-bi-tre-vai-ds133-1m4G3-UqPh9K_simg_d0daf0_800x1200_max.jpg" /></p>
', CAST(N'2016-10-09T15:18:35.000' AS DateTime), CAST(N'2016-10-09T15:18:35.000' AS DateTime))
INSERT [dbo].[db_SanPham] ([MaSP], [TenSP], [MauID], [SizeID], [ChatLieuID], [AnhSP], [SoLuongSP], [GiaSP], [MotaSP], [NgayTao], [NgayHuy]) VALUES (16, N'Áo thun nữ - AT424 - AT424', 10, 6, 4, N'sp7.jpg', 30, 65000, N'Cam kết sản phẩm đ&uacute;ng h&igrave;nh 100%.<br />
Đổi trả khi kh&ocirc;ng h&agrave;i l&ograve;ng về sản phẩm.<br />
<br />
<img alt="Áo thun nữ - AT424 1" src="https://media3.scdn.vn/img2/2016/8_31/ao-thun-nu-at424-1m4G3-4v0Mhn_simg_d0daf0_800x1200_max.jpg" /><br />
', CAST(N'2016-10-09T15:20:02.000' AS DateTime), CAST(N'2016-10-09T15:20:02.000' AS DateTime))
INSERT [dbo].[db_SanPham] ([MaSP], [TenSP], [MauID], [SizeID], [ChatLieuID], [AnhSP], [SoLuongSP], [GiaSP], [MotaSP], [NgayTao], [NgayHuy]) VALUES (17, N'Áo Sơ Mi Tay Chấm Bi NAZA NA10001 - NA10001', 7, 3, 4, N'sp8.jpg', 5, 108000, N'<p style="color: rgb(51, 51, 51);">
	<span style="font-size: medium;"><strong style="color: rgb(0, 0, 0);">M&ocirc; tả về sản phẩm:</strong></span></p>
<p style="color: rgb(51, 51, 51);">
	<span style="font-size: medium;">Vải cao cấp ,chất mềm mại, hợp thời trang,</span><span style="font-size: medium;">Đường may chắc chắn ,đẹp ,bền ,sắc xảo.</span><span style="font-size: medium;">Kiểu d&aacute;ng mới lạ, sang trọng,<span style="color: rgb(0, 0, 0);">dễ phối đồ c&ocirc;ng sở ch&acirc;n v&aacute;y hay quần &acirc;u</span></span></p>
<p style="color: rgb(51, 51, 51);">
	<span style="font-size: medium;">Th&iacute;ch hợp đi chơi ,sự kiện , dạo phố...</span></p>
<p>
	<span style="font-size: medium;"><strong>Th&ocirc;ng tin chi tiết</strong></span></p>
<p>
	<span style="font-size: medium;">-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;T&ecirc;n sản phẩm:<strong>&nbsp;&Aacute;o Sơ Mi Tay Chấm Bi h&agrave;ng thiết kế</strong></span></p>
<p>
	<span style="font-size: medium;">-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;M&atilde; sản phẩm:&nbsp;<strong>NA10001</strong></span></p>
<p>
	<span style="font-size: medium;">-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Chất liệu ch&iacute;nh: Lụa tơ tằm</span></p>
<p>
	<span style="font-size: medium;">-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;M&agrave;u sắc thực sản phẩm: <b>Trắng chấm bi đen</b></span></p>
<p>
	<span style="font-size: medium;"><strong>Chi tiết k&iacute;ch thước sản phầm</strong></span></p>
<p>
	<span style="font-size: 12pt;">&nbsp;- Size S: Từ 40-45kg</span></p>
<p>
	<span style="font-size: 12pt;">&nbsp;- Size M: 46-54k</span></p>
<p>
	<span style="font-size: 12pt;">&nbsp;- SizeL: 55-58kg</span></p>
<p style="text-align: center;">
	&nbsp;</p>
<p style="text-align: center;">
	<span style="font-size: 12pt;"><img alt="Áo Sơ Mi Tay Chấm Bi NAZA NA10001 1" src="https://media3.scdn.vn/img2/2016/9_16/ao-so-mi-tay-cham-bi-naza-na10001-1m4G3-BwChkf_simg_d0daf0_800x1200_max.jpg" style="margin: 0 auto;display:block;" /><br />
	<br />
	<img alt="Áo Sơ Mi Tay Chấm Bi NAZA NA10001 2" src="https://media3.scdn.vn/img2/2016/9_16/ao-so-mi-tay-cham-bi-naza-na10001-1m4G3-yEzaCr_simg_d0daf0_800x1200_max.jpg" style="margin: 0 auto;display:block;" /></span></p>
', CAST(N'2016-10-09T15:21:22.000' AS DateTime), CAST(N'2016-10-09T15:21:22.000' AS DateTime))
INSERT [dbo].[db_SanPham] ([MaSP], [TenSP], [MauID], [SizeID], [ChatLieuID], [AnhSP], [SoLuongSP], [GiaSP], [MotaSP], [NgayTao], [NgayHuy]) VALUES (18, N'ÁO DÂY LEN CAO CẤP - AL792', 3, 4, 4, N'sp9.jpg', 9, 255000, N'<p>
	LUU Y : AO LEN CO MAU SỌC XANH BIỂN , MAU HỒNG PHẤN , SOC X&Aacute;M , KHACH CHON MAU NAO GHI CHU DE SHOP BIET</p>
<p>
	<img alt="ÁO DÂY LEN CAO CẤP 1" src="https://media3.scdn.vn/img2/2016/10_4/ao-day-len-cao-cap-1m4G3-yLhhMf_simg_d0daf0_800x1200_max.jpg" /></p>
', CAST(N'2016-10-09T15:22:15.000' AS DateTime), CAST(N'2016-10-09T15:22:15.000' AS DateTime))
INSERT [dbo].[db_SanPham] ([MaSP], [TenSP], [MauID], [SizeID], [ChatLieuID], [AnhSP], [SoLuongSP], [GiaSP], [MotaSP], [NgayTao], [NgayHuy]) VALUES (19, N'Áo thun nữ in mèo túi giả - A-439', 8, 4, 1, N'sp10.jpg', 9, 72000, N'<p>
	<span style="font-size: large;"><strong>Chất liệu: thun co&nbsp;gi&atilde;n&nbsp;4c, kh&ocirc;ng x&ugrave; l&ocirc;ng, co gi&atilde;n tốt..</strong></span></p>
<p>
	<span style="font-size: large;"><strong>Size: S M</strong></span></p>
<p>
	<span style="font-size: large;"><strong>Zalo, Viber:&nbsp;<span style="color: #ff0000;">0963.74.24.64</span>&nbsp;( zalo page&nbsp;</strong><strong style="font-family: arial, helvetica, sans-serif;">&nbsp;<a href="https://ban.sendo.vn/product">http://page.zaloapp.com/manage/feed</a></strong><strong>&nbsp;)</strong></span></p>
<p>
	<span style="font-size: large;"><strong>Web:</strong></span><a href="https://ban.sendo.vn/product" style="font-family: arial, helvetica, sans-serif; font-size: large;">http://www.bosiaothunteen.com/</a></p>
<p>
	&nbsp;</p>
<p>
	<span style="font-size: large; color: #ff0000;"><strong>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<span style="font-size: xx-large;">HỖ TRỢ ĐẶT H&Agrave;NG</span></strong></span></p>
<p>
	<span style="font-size: large; color: #ff0000;">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<span style="color: #000080;">&nbsp;Khi gặp kh&oacute; khăn về vấn đề đặt h&agrave;ng vui l&ograve;ng gọi hoặc nhắn tin số Hotline:&nbsp;<strong><span style="color: #ff0000;">0907692334</span></strong></span></span></p>
<p>
	<img alt="Áo thun nữ in mèo túi giả 1" src="https://media3.scdn.vn/img1/2016/8_10/ao-thun-nu-in-meo-tui-gia-1m4G3-8xF6T9_simg_d0daf0_800x1200_max.jpg" style="margin: 0 auto; display: block;" /><br />
	<br />
	<img alt="Áo thun nữ in mèo túi giả 2" src="https://media3.scdn.vn/img1/2016/8_10/ao-thun-nu-in-meo-tui-gia-1m4G3-z4tCjE_simg_d0daf0_800x1200_max.jpg" style="margin: 0 auto; display: block;" /></p>
', CAST(N'2016-10-09T15:23:36.000' AS DateTime), CAST(N'2016-10-09T15:23:36.000' AS DateTime))
INSERT [dbo].[db_SanPham] ([MaSP], [TenSP], [MauID], [SizeID], [ChatLieuID], [AnhSP], [SoLuongSP], [GiaSP], [MotaSP], [NgayTao], [NgayHuy]) VALUES (20, N'Áo thun cặp siêu xinh - ATT-2844', 7, 3, 4, N'sp11.jpg', 9, 52000, N'<p>
	<strong style="font-size: large;">Chất liệu: thun cotton 4c,kh&ocirc;ng&nbsp;</strong><strong style="font-size: large;">x&ugrave; l&ocirc;ng, thấm h&uacute;t mồ h&ocirc;i...</strong></p>
<p>
	<strong style="font-size: large;">M&agrave;u sắc: &nbsp;như h&igrave;nh</strong></p>
<p>
	<span style="font-size: large;"><strong>Size: S M L</strong></span></p>
<p>
	<span style="font-size: large;"><strong>Zalo, Viber:&nbsp;<span style="color: rgb(255, 0, 0);">0963.74.24.64</span>&nbsp;( zalo page&nbsp;</strong><strong style="font-family: arial, helvetica, sans-serif;">&nbsp;<a href="https://ban.sendo.vn/product">http://page.zaloapp.com/manage/feed</a></strong><strong>&nbsp;)</strong></span></p>
<p>
	<span style="font-size: large;"><strong>Web:</strong></span><a href="https://ban.sendo.vn/product" style="font-family: arial, helvetica, sans-serif; font-size: large;">https://www.sendo.vn/shop/bosiaothunteen/</a></p>
<p>
	&nbsp;</p>
<p>
	<span style="font-size: large; color: rgb(255, 0, 0);"><strong>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<span style="font-size: xx-large;">HỖ TRỢ ĐẶT H&Agrave;NG</span></strong></span></p>
<p>
	<span style="font-size: large; color: rgb(255, 0, 0);">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<span style="color: rgb(0, 0, 128);">&nbsp;Khi gặp kh&oacute; khăn về vấn đề đặt h&agrave;ng vui l&ograve;ng gọi hoặc nhắn tin số Hotline:&nbsp;<strong><span style="color: rgb(255, 0, 0);">0907692334</span></strong></span></span></p>
<p>
	<img alt="Áo thun cặp siêu xinh 1" src="https://media3.scdn.vn/img1/2016/8_10/ao-thun-cap-sieu-xinh-1m4G3-DMemQw_simg_d0daf0_800x1200_max.jpg" style="margin: 0 auto;display:block;" /></p>
', CAST(N'2016-10-09T15:24:32.000' AS DateTime), CAST(N'2016-10-09T15:24:32.000' AS DateTime))
INSERT [dbo].[db_SanPham] ([MaSP], [TenSP], [MauID], [SizeID], [ChatLieuID], [AnhSP], [SoLuongSP], [GiaSP], [MotaSP], [NgayTao], [NgayHuy]) VALUES (21, N'Hàng loại 1 - Áo sơ mi ms955 - ms955', 4, 3, 2, N'sp12.jpg', 8, 149000, N'<h6 style="margin: 0px; padding: 0px 0px 5px; outline: 0px; border: 0px currentcolor; color: #111111; line-height: 1em; font-family: verdana; font-size: 22px; font-weight: 300; vertical-align: baseline; box-sizing: border-box;">
	<strong style="margin: 0px; padding: 0px; border: 0px currentcolor; box-sizing: border-box;"><span style="margin: 0px; padding: 0px; border: 0px currentcolor; font-size: medium; box-sizing: border-box;"><em style="margin: 0px; padding: 0px; border: 0px currentcolor; color: #000000; line-height: 15px; font-family: Verdana, Arial, Helvetica, sans-serif; box-sizing: border-box; orphans: 1;"><span style="margin: 0px; padding: 0px; border: 0px currentcolor; font-family: ''Times New Roman'', serif; box-sizing: border-box;">- Xuất Xứ:&nbsp;</span></em><em style="margin: 0px; padding: 0px; border: 0px currentcolor; color: #000000; line-height: 15px; font-family: Verdana, Arial, Helvetica, sans-serif; box-sizing: border-box; orphans: 1;"><span style="margin: 0px; padding: 0px; border: 0px currentcolor; color: #3333ff; box-sizing: border-box;"><span style="margin: 0px; padding: 0px; border: 0px currentcolor; font-family: ''Times New Roman'', serif; box-sizing: border-box;"><em style="margin: 0px; padding: 0px; border: 0px currentcolor; box-sizing: border-box;">Việt nam</em></span></span></em></span></strong></h6>
<ul style="color: rgb(0, 0, 0); font-size: 14px; line-height: 19.6px; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; list-style: none; margin: 0px 0px 10px; padding-right: 0px; padding-left: 0px; box-sizing: border-box; font-stretch: normal;">
	<li style="box-sizing: border-box;">
		<strong style="margin: 0px; padding: 0px; border: 0px currentcolor; color: #111111; line-height: 22px; font-family: verdana; font-size: 22px; box-sizing: border-box;"><span style="margin: 0px; padding: 0px; border: 0px currentcolor; font-size: medium; box-sizing: border-box;"><em style="margin: 0px; padding: 0px; border: 0px currentcolor; color: #000000; line-height: 15px; font-family: Verdana, Arial, Helvetica, sans-serif; box-sizing: border-box; orphans: 1;"><span style="margin: 0px; padding: 0px; border: 0px currentcolor; font-family: ''Times New Roman'', serif; box-sizing: border-box;">- Kiểu d&aacute;ng:&nbsp;</span></em><em style="margin: 0px; padding: 0px; border: 0px currentcolor; color: #000000; line-height: 15px; font-family: Verdana, Arial, Helvetica, sans-serif; box-sizing: border-box; orphans: 1;"><span style="margin: 0px; padding: 0px; border: 0px currentcolor; color: #3333ff; box-sizing: border-box;"><span style="margin: 0px; padding: 0px; border: 0px currentcolor; font-family: ''Times New Roman'', serif; box-sizing: border-box;"><em style="margin: 0px; padding: 0px; border: 0px currentcolor; box-sizing: border-box;">Như h&igrave;nh</em></span></span></em></span></strong></li>
	<li style="box-sizing: border-box;">
		<strong style="margin: 0px; padding: 0px; border: 0px currentcolor; line-height: normal; font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 10px; box-sizing: border-box;"><span style="margin: 0px; padding: 0px; border: 0px currentcolor; font-size: medium; box-sizing: border-box;"><em style="margin: 0px; padding: 0px; border: 0px currentcolor; line-height: 15px; box-sizing: border-box; orphans: 1;"><span style="margin: 0px; padding: 0px; border: 0px currentcolor; font-family: ''Times New Roman'', serif; box-sizing: border-box;">- Chất liệu:&nbsp;</span></em></span></strong><strong style="margin: 0px; padding: 0px; border: 0px currentcolor; box-sizing: border-box;"><span style="margin: 0px; padding: 0px; border: 0px currentcolor; font-size: medium; box-sizing: border-box;"><em style="margin: 0px; padding: 0px; border: 0px currentcolor; line-height: 15px; box-sizing: border-box; orphans: 1;"><span style="margin: 0px; padding: 0px; border: 0px currentcolor; color: #3333ff; box-sizing: border-box;"><span style="margin: 0px; padding: 0px; border: 0px currentcolor; font-family: ''Times New Roman'', serif; box-sizing: border-box;">C&aacute;t nhật&nbsp;loại 1, v</span></span></em></span></strong><strong style="margin: 0px; padding: 0px; border: 0px currentcolor; box-sizing: border-box;"><span style="margin: 0px; padding: 0px; border: 0px currentcolor; font-size: medium; box-sizing: border-box;"><em style="margin: 0px; padding: 0px; border: 0px currentcolor; line-height: 15px; box-sizing: border-box; orphans: 1;"><span style="margin: 0px; padding: 0px; border: 0px currentcolor; color: #3333ff; box-sizing: border-box;"><span style="margin: 0px; padding: 0px; border: 0px currentcolor; font-family: ''Times New Roman'', serif; box-sizing: border-box;">ải mềm mịn, tho&aacute;ng m&aacute;t, thấm h&uacute;t mồ h&ocirc;i tốt</span></span></em></span></strong></li>
	<li style="box-sizing: border-box;">
		<strong style="margin: 0px; padding: 0px; border: 0px currentcolor; box-sizing: border-box;"><span style="margin: 0px; padding: 0px; border: 0px currentcolor; font-size: medium; box-sizing: border-box;"><em style="margin: 0px; padding: 0px; border: 0px currentcolor; line-height: 15px; box-sizing: border-box; orphans: 1;"><span style="margin: 0px; padding: 0px; border: 0px currentcolor; font-family: ''Times New Roman'', serif; box-sizing: border-box;"><em style="margin: 0px; padding: 0px; border: 0px currentcolor; box-sizing: border-box;">-&nbsp;</em></span></em><em style="margin: 0px; padding: 0px; border: 0px currentcolor; line-height: 15px; box-sizing: border-box; orphans: 1;"><span style="margin: 0px; padding: 0px; border: 0px currentcolor; font-family: ''Times New Roman'', serif; box-sizing: border-box;">M&agrave;u sắc</span></em><em style="margin: 0px; padding: 0px; border: 0px currentcolor; line-height: 15px; box-sizing: border-box; orphans: 1;"><span style="margin: 0px; padding: 0px; border: 0px currentcolor; font-family: ''Times New Roman'', serif; box-sizing: border-box;">:</span></em><em style="margin: 0px; padding: 0px; border: 0px currentcolor; line-height: 15px; box-sizing: border-box; orphans: 1;"><span style="margin: 0px; padding: 0px; border: 0px currentcolor; color: #3333ff; box-sizing: border-box;"><span style="margin: 0px; padding: 0px; border: 0px currentcolor; font-family: ''Times New Roman'', serif; box-sizing: border-box;"><em style="margin: 0px; padding: 0px; border: 0px currentcolor; box-sizing: border-box;">&nbsp;t&iacute;m, hồng(như h&igrave;nh)</em></span></span></em></span></strong></li>
	<li style="box-sizing: border-box;">
		<strong style="margin: 0px; padding: 0px; border: 0px currentcolor; box-sizing: border-box;"><span style="margin: 0px; padding: 0px; border: 0px currentcolor; font-size: medium; box-sizing: border-box;"><em style="margin: 0px; padding: 0px; border: 0px currentcolor; line-height: 15px; box-sizing: border-box; orphans: 1;"><span style="margin: 0px; padding: 0px; border: 0px currentcolor; font-family: ''Times New Roman'', serif; box-sizing: border-box;"><em style="margin: 0px; padding: 0px; border: 0px currentcolor; box-sizing: border-box;">-&nbsp;</em></span></em><em style="margin: 0px; padding: 0px; border: 0px currentcolor; line-height: 15px; box-sizing: border-box; orphans: 1;"><span style="margin: 0px; padding: 0px; border: 0px currentcolor; font-family: ''Times New Roman'', serif; box-sizing: border-box;">Cam kết&nbsp;</span></em><em style="margin: 0px; padding: 0px; border: 0px currentcolor; line-height: 15px; box-sizing: border-box; orphans: 1;"><span style="margin: 0px; padding: 0px; border: 0px currentcolor; font-family: ''Times New Roman'', serif; box-sizing: border-box;">:&nbsp;</span></em><em style="margin: 0px; padding: 0px; border: 0px currentcolor; line-height: 15px; box-sizing: border-box; orphans: 1;"><span style="margin: 0px; padding: 0px; border: 0px currentcolor; color: #3333ff; box-sizing: border-box;"><span style="margin: 0px; padding: 0px; border: 0px currentcolor; font-family: ''Times New Roman'', serif; box-sizing: border-box;"><em style="margin: 0px; padding: 0px; border: 0px currentcolor; box-sizing: border-box;">đường may đẹp, chắc chắn. H&agrave;ng cao cấp chuy&ecirc;n bỏ sỉ cho shop,&nbsp;<span style="margin: 0px; padding: 0px; border: 0px currentcolor; text-decoration: underline; box-sizing: border-box;"><span style="margin: 0px; padding: 0px; border: 0px currentcolor; color: #ff6600; box-sizing: border-box;">KH&Ocirc;NG&nbsp;</span></span>phải h&agrave;ng chợ</em></span></span></em></span></strong></li>
</ul>
<h6 style="margin: 0px; padding: 0px 0px 5px; outline: 0px; border: 0px currentColor; color: #111111; line-height: 1em; font-family: verdana; font-size: 22px; font-weight: 300; vertical-align: baseline; box-sizing: border-box;">
	&nbsp;</h6>
<ul style="color: rgb(0, 0, 0); font-size: 14px; line-height: 19.6px; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; list-style: none; margin: 0px 0px 10px; padding-right: 0px; padding-left: 0px; box-sizing: border-box; font-stretch: normal;">
	<li style="box-sizing: border-box;">
		<ul style="list-style: none; margin: 0px 0px 10px; padding-right: 0px; padding-left: 0px; border: 0px currentcolor; color: rgb(51, 51, 51); line-height: 19.6px; box-sizing: border-box;">
			<li style="margin: 0px; padding: 0px; border: 0px currentcolor; box-sizing: border-box;">
				&nbsp;</li>
			<li style="margin: 0px; padding: 0px; border: 0px currentcolor; box-sizing: border-box;">
				<span style="color: #ff6600; font-family: ''times new roman'', times; font-size: medium;"><strong style="margin: 0px; padding: 0px; border: 0px currentcolor; box-sizing: border-box;"><em style="margin: 0px; padding: 0px; border: 0px currentcolor; line-height: 15px; box-sizing: border-box; orphans: 1;">Thanh to&aacute;n tiền mặt khi nhận h&agrave;ng, được kiểm tra h&agrave;ng trước khi nhận, nếu kh&ocirc;ng vừa &yacute; th&igrave; c&oacute; quyền từ chối kh&ocirc;ng nhận h&agrave;ng v&agrave; kh&ocirc;ng phải trả bất kỳ chi ph&iacute; n&agrave;o</em></strong></span></li>
		</ul>
	</li>
</ul>
<h6 style="margin: 0px; padding: 0px; border: 0px currentcolor; font-size: 10px; box-sizing: border-box;">
	&nbsp;</h6>
<h6 style="margin: 0px; padding: 0px 0px 5px; outline: 0px; border: 0px currentColor; color: #111111; line-height: 1em; font-family: verdana; font-size: 22px; font-weight: 300; vertical-align: baseline; box-sizing: border-box;">
	&nbsp;</h6>
<ul style="color: rgb(0, 0, 0); list-style: none; margin: 0px 0px 10px; padding-right: 0px; padding-left: 0px; line-height: 19.6px; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px; box-sizing: border-box;">
	<li>
		<ul style="list-style: none; margin: 0px 0px 10px; padding-right: 0px; padding-left: 0px; border: 0px currentcolor; color: rgb(51, 51, 51); line-height: 19.6px; box-sizing: border-box;">
			<li style="margin: 0px; padding: 0px; border: 0px currentcolor; box-sizing: border-box;">
				<br />
				<strong><span style="color: #000000;"><span style="font-family: ''Times New Roman'', serif;"><span style="font-size: 15pt;"><span style="font-weight: normal;"><strong style="box-sizing: border-box; padding: 0px; margin: 0px; border: 0px; color: #333333; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 14px; line-height: 19.6px;"><em style="box-sizing: border-box; padding: 0px; margin: 0px; border: 0px;"><img alt="Hàng loại 1 - Áo sơ mi ms955 1" src="https://media3.scdn.vn/img1/2016/8_8/hang-loai-1-ao-so-mi-ms955-1m4G3-zoyLp2_simg_d0daf0_800x1200_max.jpg" style="margin: 0 auto; display: block;" /><br />
				<br />
				<img alt="Hàng loại 1 - Áo sơ mi ms955 2" src="https://media3.scdn.vn/img1/2016/8_8/hang-loai-1-ao-so-mi-ms955-1m4G3-Oaxz4s_simg_d0daf0_800x1200_max.jpg" style="margin: 0 auto; display: block;" /></em></strong></span></span></span></span></strong></li>
		</ul>
	</li>
</ul>
', CAST(N'2016-10-09T15:25:18.000' AS DateTime), CAST(N'2016-10-09T15:25:18.000' AS DateTime))
INSERT [dbo].[db_SanPham] ([MaSP], [TenSP], [MauID], [SizeID], [ChatLieuID], [AnhSP], [SoLuongSP], [GiaSP], [MotaSP], [NgayTao], [NgayHuy]) VALUES (22, N'Quần nữ Navi thời trang co dãn cực đẹp - skin102', 3, 3, 2, N'sp13.jpg', 5, 120000, N'<p style="font-size: 11px;">
	<span style="font-size: small;"><a href="https://www.sendo.vn/quan-skinny.htm">Quần skinny</a> form chuẩn &ocirc;m d&aacute;ng, chất liệu co gi&atilde;n. Quần c&oacute; cấu tr&uacute;c si&ecirc;u đ&agrave;n hồi, chống trầy xước. Quần skinny được may từ chất liệu cao cấp, co gi&atilde;n tốt n&ecirc;n c&aacute;c bạn g&aacute;i sẽ cảm thấy lu&ocirc;n thoải m&aacute;i, c&oacute; nhiều m&agrave;u sắc cho c&aacute;c bạn lựa chọn</span><br />
	<br />
	<span style="font-size: small; font-family: arial, helvetica, sans-serif;">Quần skinny form chuẩn &ocirc;m d&aacute;ng, chất liệu co gi&atilde;n. Quần c&oacute; cấu tr&uacute;c si&ecirc;u đ&agrave;n hồi, chống trầy xước. Quần skinny được may từ chất liệu cao cấp, co gi&atilde;n tốt n&ecirc;n c&aacute;c bạn g&aacute;i sẽ cảm thấy lu&ocirc;n thoải m&aacute;i, c&oacute; nhiều m&agrave;u sắc cho c&aacute;c bạn lựa chọn</span></p>
<p>
	<span style="font-size: small; font-family: arial, helvetica, sans-serif;">Size : S, M, L tương đương 27, 28, 29</span></p>
<p>
	<span style="font-size: small; font-family: arial, helvetica, sans-serif;">Quần skinny form chuẩn &ocirc;m d&aacute;ng, chất liệu co gi&atilde;n. Quần c&oacute; cấu tr&uacute;c si&ecirc;u đ&agrave;n hồi, chống trầy xước. Quần skinny được may từ chất liệu cao cấp, co gi&atilde;n tốt n&ecirc;n c&aacute;c bạn g&aacute;i sẽ cảm thấy lu&ocirc;n thoải m&aacute;i, c&oacute; nhiều m&agrave;u sắc cho c&aacute;c bạn lựa chọn</span></p>
<p>
	&nbsp;</p>
<p style="color: rgb(0, 0, 0); font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 10px; line-height: normal; widows: 1;">
	<span style="font-size: small; font-family: arial, helvetica, sans-serif;"><img alt="Quần nữ Navi thời trang co dãn cực đẹp 1" src="https://media3.scdn.vn/img1/2016/5_10/quan-nu-navi-thoi-trang-co-dan-cuc-dep-1m4G3-4f97ac_simg_d0daf0_800x1200_max.png" style="margin: 0 auto; display: block;" /><br />
	<br />
	<img alt="Quần nữ Navi thời trang co dãn cực đẹp 2" src="https://media3.scdn.vn/img1/2016/5_10/quan-nu-navi-thoi-trang-co-dan-cuc-dep-1m4G3-40b9c7_simg_d0daf0_800x1200_max.png" style="margin: 0 auto; display: block;" /></span></p>
', CAST(N'2016-10-09T15:26:20.000' AS DateTime), CAST(N'2016-10-09T15:26:20.000' AS DateTime))
INSERT [dbo].[db_SanPham] ([MaSP], [TenSP], [MauID], [SizeID], [ChatLieuID], [AnhSP], [SoLuongSP], [GiaSP], [MotaSP], [NgayTao], [NgayHuy]) VALUES (23, N'Quần Skinny nữ tôn dáng cực đẹp - Skin113', 8, 5, 1, N'sp14.jpg', 5, 120000, N'Mời c&aacute;c bạn tham khảo h&igrave;nh ảnh sản phẩm<br />
<div style="text-align: center;">
	&nbsp;</div>
<span style="font-size: small; font-family: arial, helvetica, sans-serif;"><img alt="Quần Skinny nữ tôn dáng cực đẹp 1" src="https://media3.scdn.vn/img1/2016/5_7/quan-skinny-nu-ton-dang-cuc-dep-1m4G3-b4338a_simg_d0daf0_800x1200_max.jpg" style="margin: 0px auto; display: block; text-align: center;" /></span>', CAST(N'2016-10-09T15:27:23.000' AS DateTime), CAST(N'2016-10-09T15:27:23.000' AS DateTime))
INSERT [dbo].[db_SanPham] ([MaSP], [TenSP], [MauID], [SizeID], [ChatLieuID], [AnhSP], [SoLuongSP], [GiaSP], [MotaSP], [NgayTao], [NgayHuy]) VALUES (24, N'Quần jean MICKEY xinh xắn - HDQA009', 3, 5, 2, N'sp15.png', 5, 268000, N'<em><strong><span style="font-size:x-large;"><span style="font-family:times new roman,times;"><a href="https://www.sendo.vn/quan-jean.htm">Quần jean</a> <a href="https://www.sendo.vn/mickey.htm">MICKEY</a> <a href="https://www.sendo.vn/xinh-xan.htm">xinh xắn</a></span></span></strong></em><br />
<em><strong><span style="font-size:x-large;"><span style="font-family:times new roman,times;">Chất: &nbsp;<span style="color:rgb(20,24,35);">72.9% cotton, 20.3%poly, 6.8%</span></span><span style="color:rgb(51,51,51);"> Viscose</span></span>,</strong></em><br />
<em><strong><span style="font-size:x-large;"><span style="font-family:times new roman,times;">Mầu: xanh</span></span></strong></em><br />
<em><strong><span style="font-size:x-large;"><span style="font-family:times new roman,times;">Kiểu như ảnh</span></span></strong></em><br />
&nbsp;<br />
<span style="font-size:large;"><strong><em><span style="font-family:times new roman,times;">SIZE: </span></em></strong></span><br />
<span style="font-size:large;"><strong><em><span style="font-family:times new roman,times;">26&nbsp; Eo 65 &nbsp; &nbsp; &nbsp; &nbsp;Đũng trước 25&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;Đũng sau 33 &nbsp; &nbsp; &nbsp;&nbsp;&nbsp; Đ&ugrave;i 46 &nbsp; &nbsp;&nbsp;Gối 29.5 &nbsp; &nbsp; Gấu 34&nbsp; &nbsp; &nbsp; &nbsp;D&agrave;i quần 92</span></em></strong></span><br />
<span style="font-size:large;"><strong><em><span style="font-family:times new roman,times;">27&nbsp; Eo 67.5 &nbsp; &nbsp; Đũng trước 25&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;Đũng sau 33&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Đ&ugrave;i 47&nbsp; &nbsp; &nbsp;Gối 30&nbsp; &nbsp; &nbsp; &nbsp;Gấu 34.5&nbsp; &nbsp; &nbsp;D&agrave;i quần 93</span></em></strong></span><br />
<span style="font-size:large;"><strong><em><span style="font-family:times new roman,times;">28 &nbsp;Eo 70&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;Đũng trước 25.5&nbsp; &nbsp; &nbsp;Đũng sau 33.5&nbsp; &nbsp; &nbsp;&nbsp;Đ&ugrave;i 49 &nbsp; &nbsp; Gối 31&nbsp; &nbsp; &nbsp;&nbsp;&nbsp;Gấu 35.5&nbsp; &nbsp; &nbsp;D&agrave;i quần 95</span></em></strong></span><br />
<span style="font-size:large;"><strong><em><span style="font-family:times new roman,times;">29 &nbsp;Eo 72.5&nbsp; &nbsp;&nbsp;</span></em></strong></span> <strong><em><span style="font-family:times new roman,times;">Đũng trước</span></em></strong>&nbsp;<strong><em><span style="font-family:times new roman,times;">25.5&nbsp; &nbsp; &nbsp;Đũng sau 33.5&nbsp; &nbsp; &nbsp;&nbsp;Đ&ugrave;i 49&nbsp; &nbsp; &nbsp;&nbsp;Gối &nbsp;31&nbsp; &nbsp; &nbsp;Gấu 35.5&nbsp; &nbsp; &nbsp;&nbsp;D&agrave;i quần 95</span></em></strong><br />
<br />
<br />
<br />
<br />
<strong style="box-sizing:border-box;padding:0px;border:0px;"><em style="box-sizing:border-box;padding:0px;border:0px;"><span style="box-sizing:border-box;padding:0px;border:0px;"><span style="color:red;"><span style="font-family:times new roman,serif;"><span style="font-size:36pt;">Sale Sale Sale!!!</span></span></span></span></em></strong><br />
<br />
<br />
<strong><em><span style="font-size:x-large;"><span style="font-family:times new roman,times;"><img alt="Quần jean MICKEY xinh xắn 1" src="https://media3.scdn.vn/img1/2016/4_26/quan-jean-mickey-xinh-xan-1m4G3-f99feb_simg_d0daf0_800x1200_max.jpg" /></span></span></em></strong><br />
', CAST(N'2016-10-09T15:28:36.000' AS DateTime), CAST(N'2016-10-09T15:28:36.000' AS DateTime))
INSERT [dbo].[db_SanPham] ([MaSP], [TenSP], [MauID], [SizeID], [ChatLieuID], [AnhSP], [SoLuongSP], [GiaSP], [MotaSP], [NgayTao], [NgayHuy]) VALUES (25, N'Hàng nhập-Quần Jeans cao cấp lưng thun co giãn nhiều nút GLQ001 - GLQ001', 3, 5, 2, N'sp16.png', 30, 300000, N'Bạn c&oacute; thể y&ecirc;u cầu đổi trả h&agrave;ng trong v&ograve;ng 7 ng&agrave;y kể từ khi nhận được h&agrave;ng nếu cảm thấy kh&ocirc;ng h&agrave;i l&ograve;ng hoặc mặc kh&ocirc;ng vừa.<br />
H&agrave;ng đổi trả phải c&ograve;n nguy&ecirc;n tem nh&atilde;n, sạch sẽ, kh&ocirc;ng qua giặt tẩy. Bạn phải trả ph&iacute; chuyển cho lượt gửi trả, <a href="https://www.sendo.vn/san-pham/hang-nhap-quan-jeans-cao-cap-lung-thun-co-gian-nhieu-nut-glq001-3238013/">Cuocsongvang.vn</a> sẽ thanh to&aacute;n ph&iacute; chuyển chiều ngược lại khi gửi h&agrave;ng đổi cho bạn.<br />
<br />
<div style="text-align: center;">
	<img alt="Hàng nhập-Quần Jeans cao cấp lưng thun co giãn nhiều nút GLQ001 2" src="https://media3.scdn.vn/img1/2016/6_22/hang-nhap-quan-jeans-cao-cap-lung-thun-co-gian-nhieu-nut-glq001-1m4G3-zzMQOT_simg_d0daf0_800x1200_max.png" /></div>
', CAST(N'2016-10-09T15:29:45.000' AS DateTime), CAST(N'2016-10-09T15:29:45.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[db_SanPham] OFF

SET IDENTITY_INSERT [dbo].[db_Size] ON 
INSERT [dbo].[db_Size] ([SizeID], [TenSize]) VALUES (1, N'MXL')
INSERT [dbo].[db_Size] ([SizeID], [TenSize]) VALUES (2, N'L')
INSERT [dbo].[db_Size] ([SizeID], [TenSize]) VALUES (3, N'XL')
INSERT [dbo].[db_Size] ([SizeID], [TenSize]) VALUES (4, N'S')
INSERT [dbo].[db_Size] ([SizeID], [TenSize]) VALUES (5, N'XXL')
INSERT [dbo].[db_Size] ([SizeID], [TenSize]) VALUES (6, N'M')
INSERT [dbo].[db_Size] ([SizeID], [TenSize]) VALUES (7, N'Free size')
SET IDENTITY_INSERT [dbo].[db_Size] OFF

ALTER TABLE [dbo].[db_SanPham]  WITH CHECK ADD  CONSTRAINT [FK_db_SanPham_db_ChatLieu] FOREIGN KEY([ChatLieuID])
REFERENCES [dbo].[db_ChatLieu] ([ChatLieuID])
GO
ALTER TABLE [dbo].[db_SanPham] CHECK CONSTRAINT [FK_db_SanPham_db_ChatLieu]
GO

ALTER TABLE [dbo].[db_SanPham]  WITH CHECK ADD  CONSTRAINT [FK_db_SanPham_db_Mau] FOREIGN KEY([MauID])
REFERENCES [dbo].[db_Mau] ([MauID])
GO
ALTER TABLE [dbo].[db_SanPham] CHECK CONSTRAINT [FK_db_SanPham_db_Mau]
GO

ALTER TABLE [dbo].[db_SanPham]  WITH CHECK ADD  CONSTRAINT [FK_db_SanPham_db_Size] FOREIGN KEY([SizeID])
REFERENCES [dbo].[db_Size] ([SizeID])
GO
ALTER TABLE [dbo].[db_SanPham] CHECK CONSTRAINT [FK_db_SanPham_db_Size]
GO

/****** Object:  StoredProcedure [dbo].[chatlieu_delete]    Script Date: 5/4/2018 4:27:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[chatlieu_delete]
@chatlieuid int
AS
BEGIN
	delete from db_ChatLieu where ChatLieuID=@chatlieuid
END

GO
/****** Object:  StoredProcedure [dbo].[chatlieu_insert]    Script Date: 5/4/2018 4:27:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[chatlieu_insert]
@tenchatlieu nvarchar(50),
@ret int out
AS
BEGIN
	set @ret=1
	if(not exists(select * from db_ChatLieu where @tenchatlieu=TenChatLieu))
	begin
	insert into db_ChatLieu(TenChatLieu) values(@tenchatlieu)
	set @ret=2
	end
END

GO
/****** Object:  StoredProcedure [dbo].[chatlieu_update]    Script Date: 5/4/2018 4:27:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[chatlieu_update]
@chatlieuid int,
@tenchatlieu nvarchar (50)
AS
BEGIN
	update db_ChatLieu set TenChatLieu=@tenchatlieu where ChatlieuID=@chatlieuid
END

GO

/****** Object:  StoredProcedure [dbo].[mau_delete]    Script Date: 5/4/2018 4:27:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[mau_delete]
@mauid int
AS
BEGIN
	delete from db_Mau where MauID=@mauid
END

GO
/****** Object:  StoredProcedure [dbo].[mau_insert]    Script Date: 5/4/2018 4:27:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[mau_insert]
@tenmau nvarchar(50),
@ret int out
AS
BEGIN
	set @ret=1
	if(not exists(select * from db_Mau where @tenmau=TenMau))
	begin
	insert into db_Mau(TenMau) values(@tenmau)
	set @ret=2
	end
END

GO
/****** Object:  StoredProcedure [dbo].[mau_update]    Script Date: 5/4/2018 4:27:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[mau_update]
@mauid int,
@tenmau nvarchar(50)
AS
BEGIN
	update db_Mau set TenMau=@tenmau where MauID=@mauid
END

GO

/****** Object:  StoredProcedure [dbo].[sanpham_delete]    Script Date: 5/4/2018 4:27:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sanpham_delete]
@masp int
AS
BEGIN
	delete from db_SanPham where MaSP=@masp
END

GO
/****** Object:  StoredProcedure [dbo].[sanpham_insert]    Script Date: 5/4/2018 4:27:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sanpham_insert]
@tensp nvarchar(100),
@mauID int,
@sizeID int,
@chatieuID int,
@anhsanpham nvarchar(100),
@soluongsp int,
@giasp float,
@motasp nvarchar(MAX),
@ngaytao datetime,
@ngayhuy datetime,
@ret int out
AS
BEGIN
	set @ret=1
	if(not exists(select * from db_SanPham where @tensp=TenSP))
	begin
	insert into db_SanPham(TenSP,MauID,SizeID,ChatLieuID,AnhSP,SoLuongSP,GiaSP,MotaSP,NgayTao,NgayHuy) values(@tensp,@mauID,@sizeID,@chatieuID,@anhsanpham,@soluongsp,@giasp,@motasp,@ngaytao,@ngayhuy)
	set @ret=2
	end
END

GO
/****** Object:  StoredProcedure [dbo].[sanpham_update]    Script Date: 5/4/2018 4:27:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sanpham_update]
@masp int,
@tensp nvarchar(100),
@mauid int,
@sizeid int,
@chatieuid int,
@anhsp nvarchar(100),
@soluongsp int,
@giasp float,
@motasp nvarchar(MAX),
@ngaytao datetime,
@ngayhuy datetime
AS
BEGIN
	update db_SanPham set TenSP=@tensp,MauID=@mauid,SizeID=@sizeid,ChatLieuID=@chatieuid,AnhSP=@anhsp,SoLuongSP=@soluongsp,GiaSP=@giasp,MotaSP=@motasp,NgayTao=@ngaytao,NgayHuy=@ngayhuy where MaSP=@masp
END

GO

/****** Object:  StoredProcedure [dbo].[size_delete]    Script Date: 5/4/2018 4:27:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[size_delete]
@sizeid int
AS
BEGIN
	delete from db_Size where SizeID=@sizeid
END

GO
/****** Object:  StoredProcedure [dbo].[size_insert]    Script Date: 5/4/2018 4:27:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[size_insert]
@tensize varchar(10),
@ret int out
AS
BEGIN
	set @ret=1
	if(not exists(select * from db_Size where @tensize=TenSize ))
	begin
	insert into db_Size(TenSize) values(@tensize)
	set @ret=2
	end
END

GO
/****** Object:  StoredProcedure [dbo].[size_update]    Script Date: 5/4/2018 4:27:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[size_update]
@sizeid int,
@tensize varchar(10)
AS
BEGIN
	update db_Size set TenSize=@tensize where SizeID=@sizeid
END

GO
/****** Object:  StoredProcedure [dbo].[thongtin_chatlieu]    Script Date: 5/4/2018 4:27:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[thongtin_chatlieu]
AS
BEGIN
	select * from db_ChatLieu
END

GO
/****** Object:  StoredProcedure [dbo].[thongtin_chatlieu_by_id]    Script Date: 5/4/2018 4:27:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[thongtin_chatlieu_by_id]
@ChatLieuID INT
AS
BEGIN
	select * from db_ChatLieu where ChatLieuID=@ChatLieuID
END

GO


/****** Object:  StoredProcedure [dbo].[thongtin_mau]    Script Date: 5/4/2018 4:27:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[thongtin_mau]
AS
BEGIN
	select * from db_Mau
END

GO
/****** Object:  StoredProcedure [dbo].[thongtin_mau_by_id]    Script Date: 5/4/2018 4:27:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[thongtin_mau_by_id]
@MauID INT
AS
BEGIN
	select * from db_Mau where MauID=@MauID
END

GO

/****** Object:  StoredProcedure [dbo].[thongtin_sanpham]    Script Date: 5/4/2018 4:27:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[thongtin_sanpham]
AS
BEGIN
	select * from db_SanPham
END

GO
/****** Object:  StoredProcedure [dbo].[thongtin_sanpham_by_id]    Script Date: 5/4/2018 4:27:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[thongtin_sanpham_by_id]
@MaSP INT
AS
BEGIN
	select * from db_SanPham where MaSP=@MaSP
END

GO

/****** Object:  StoredProcedure [dbo].[thongtin_sanpham_by_tukhoa]    Script Date: 5/4/2018 4:27:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[thongtin_sanpham_by_tukhoa]
@TuKhoa nvarchar(100)
AS
BEGIN
	select * from db_SanPham where TenSP like N'%'+@TuKhoa+'%'
END

GO
/****** Object:  StoredProcedure [dbo].[thongtin_size]    Script Date: 5/4/2018 4:27:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[thongtin_size]
AS
BEGIN
	select * from db_Size
END

GO
/****** Object:  StoredProcedure [dbo].[thongtin_size_by_id]    Script Date: 5/4/2018 4:27:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[thongtin_size_by_id]
@SizeID INT
AS
BEGIN
	select * from db_Size where SizeID=@SizeID
END

GO

USE [master]
GO
ALTER DATABASE [smileshop] SET  READ_WRITE 
GO
