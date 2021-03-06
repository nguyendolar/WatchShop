USE [master]
GO
/****** Object:  Database [WatchShop]    Script Date: 2/10/2022 6:27:52 PM ******/
CREATE DATABASE [WatchShop]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'WatchShop', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\WatchShop.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'WatchShop_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\WatchShop_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [WatchShop] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [WatchShop].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [WatchShop] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [WatchShop] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [WatchShop] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [WatchShop] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [WatchShop] SET ARITHABORT OFF 
GO
ALTER DATABASE [WatchShop] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [WatchShop] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [WatchShop] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [WatchShop] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [WatchShop] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [WatchShop] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [WatchShop] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [WatchShop] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [WatchShop] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [WatchShop] SET  ENABLE_BROKER 
GO
ALTER DATABASE [WatchShop] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [WatchShop] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [WatchShop] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [WatchShop] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [WatchShop] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [WatchShop] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [WatchShop] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [WatchShop] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [WatchShop] SET  MULTI_USER 
GO
ALTER DATABASE [WatchShop] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [WatchShop] SET DB_CHAINING OFF 
GO
ALTER DATABASE [WatchShop] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [WatchShop] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [WatchShop] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [WatchShop] SET QUERY_STORE = OFF
GO
USE [WatchShop]
GO
/****** Object:  Table [dbo].[About]    Script Date: 2/10/2022 6:27:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[About](
	[ID_About] [bigint] IDENTITY(1,1) NOT NULL,
	[Header] [ntext] NULL,
	[Image] [varchar](200) NULL,
	[Title_Body] [nvarchar](200) NULL,
	[Body] [ntext] NULL,
	[Title_Guarantee] [nvarchar](200) NULL,
	[Guarantee] [ntext] NULL,
 CONSTRAINT [PK_About] PRIMARY KEY CLUSTERED 
(
	[ID_About] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 2/10/2022 6:27:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[ID_Category] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](200) NULL,
	[Metatitle] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_Category] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Contact]    Script Date: 2/10/2022 6:27:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Contact](
	[ID_Contact] [bigint] IDENTITY(1,1) NOT NULL,
	[Phone] [varchar](12) NULL,
	[Email] [varchar](200) NULL,
	[Address] [nvarchar](200) NULL,
 CONSTRAINT [PK_Contact] PRIMARY KEY CLUSTERED 
(
	[ID_Contact] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Feedback]    Script Date: 2/10/2022 6:27:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Feedback](
	[ID_Feedback] [bigint] IDENTITY(1,1) NOT NULL,
	[Email] [varchar](200) NULL,
	[Content] [ntext] NULL,
	[CreateDate] [datetime] NULL,
 CONSTRAINT [PK_Feedback] PRIMARY KEY CLUSTERED 
(
	[ID_Feedback] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Login]    Script Date: 2/10/2022 6:27:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Login](
	[ID_Login] [bigint] IDENTITY(1,1) NOT NULL,
	[Username] [varchar](100) NULL,
	[Password] [varchar](200) NULL,
	[ID_Role] [bigint] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_Login] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderDetail]    Script Date: 2/10/2022 6:27:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetail](
	[ID_OrderDetail] [bigint] IDENTITY(1,1) NOT NULL,
	[ID_Order] [bigint] NOT NULL,
	[Quantity] [int] NULL,
	[TotalPrice] [decimal](18, 0) NULL,
	[ID_Product] [bigint] NULL,
	[CreateDate] [datetime] NULL,
 CONSTRAINT [PK__OrderDet__855D4EF54439E292] PRIMARY KEY CLUSTERED 
(
	[ID_OrderDetail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 2/10/2022 6:27:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[ID_Order] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](200) NULL,
	[Phone] [char](12) NULL,
	[Address] [nvarchar](500) NULL,
	[Status] [nvarchar](100) NULL,
	[CreateDate] [datetime] NULL,
	[Note] [ntext] NULL,
	[Email] [varchar](200) NULL,
 CONSTRAINT [PK__Orders__EC9FA955638D0AE2] PRIMARY KEY CLUSTERED 
(
	[ID_Order] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 2/10/2022 6:27:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[ID_Product] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](200) NULL,
	[Price] [decimal](18, 0) NULL,
	[Description] [ntext] NULL,
	[Content] [ntext] NULL,
	[Avatar] [varchar](200) NULL,
	[Quantity] [int] NULL,
	[Color] [nvarchar](50) NULL,
	[Discount] [decimal](18, 0) NULL,
	[Metatitle] [varchar](100) NULL,
	[CreateDate] [datetime] NULL,
	[ID_Trademark] [bigint] NOT NULL,
	[ID_Promotion] [bigint] NULL,
 CONSTRAINT [PK__Product__522DE496F74B3569] PRIMARY KEY CLUSTERED 
(
	[ID_Product] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Promotion]    Script Date: 2/10/2022 6:27:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Promotion](
	[ID_Promotion] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](200) NULL,
	[StartTime] [datetime] NULL,
	[EndTime] [datetime] NULL,
 CONSTRAINT [PK__Promotio__ECECECBE60F6485A] PRIMARY KEY CLUSTERED 
(
	[ID_Promotion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Roles]    Script Date: 2/10/2022 6:27:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Roles](
	[ID_Role] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_Role] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Trademark]    Script Date: 2/10/2022 6:27:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Trademark](
	[ID_Trademark] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](200) NULL,
	[Metatitle] [varchar](100) NULL,
	[ID_Category] [bigint] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_Trademark] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 2/10/2022 6:27:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[ID_User] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](200) NULL,
	[Address] [nvarchar](200) NULL,
	[Sex] [nchar](10) NULL,
	[Phone] [char](12) NULL,
	[email] [varchar](50) NULL,
	[ID_Login] [bigint] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_User] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[About] ON 

INSERT [dbo].[About] ([ID_About], [Header], [Image], [Title_Body], [Body], [Title_Guarantee], [Guarantee]) VALUES (1, N'Dù mới được thành lập trong vài năm gần đây nhưng WatchShop đã, đang và sẽ vươn lên giữ vị trí số 1 trong những cửa hàng bán lẽ đồng hồ tại Việt Nam, tiếp tục sứ mệnh mang vẻ đẹp, tinh hoa của những chiếc đồng hồ chính hãng cao cấp của các thương hiệu đồng hồ nổi tiếng đến với những người đam mê đồng hồ tại Việt Nam.

Với mong muốn đem đến khách hàng những giá trị cao nhất, ShopWatch không chỉ bán những chiếc đồng hồ chính hãng tốt nhất tới khách hàng mà còn đem tới khách hàng những chế độ bảo hành, hậu mãi mà khó có cửa hàng nào đáp ứng được.', N'image_about.jpg', N'WatchShop và những quan điểm trong kinh doanh', N'Ngay từ những ngày đầu thành lập, WatchShop đã xác định rõ quan điểm kinh doanh: “Khách hàng, chất lượng và uy tín phải được đưa lên hàng đầu”. Điều này đều được các cán bộ, nhân viên của ShopWatch hiểu rõ và tuân thủ tuyệt đối.

Tuyệt đối không bán hàng giải, hàng nhái, hàng kém chất lượng, không rõ nguồn gốc, xuất xứ … cho khách hàng.
Cung cấp cho quý khách hàng những sản phẩm tốt nhất với giá cả cạnh tranh cùng với những dịch vụ hoàn hảo nhất.
Phải đặt chữ TÍN lên hàng đầu, không vì lợi nhuận mà lừa đối khách hàng.
Đặt mình vào địa vị khách hàng để đưa ra những quyết định, chính sách hợp lý nhất.', N'Chính sách bảo hành tại WatchShop', N'Thấu hiểu tâm lý khách hàng, ngoài chính sách bảo hành chính hãng do nhà sản xuất quy định, WatchShop còn mang tới những gói dịch vụ bảo hành tốt nhất với từng nhu cầu của khách hàng.

Bảo hành tiêu chuẩn: Thời hạn bảo hành trong vòng 1 năm (tương đương 12 tháng). Với gói bảo hành này, bạn sẽ được thay pin miễn phí đối với các dòng máy Quartz và hỗ trợ sửa chữa miễn phí với các lỗi nhiễm từ, sai số, ngấm nước.
Bảo hành vàng: Đây là gói bảo hành phải trả phí và để sở hữu gói bảo hàng này bạn chỉ cần bỏ ra 300.000 VNĐ. Thời hạn bảo hành của gói này là 5 năm (tương đương 60 tháng). Với gói bảo hành này, bạn sẽ được miễn phí: thay pin (đối với máy Quartz); sửa chữa lỗi nhiễm từ, sai số, ngấm nước; đánh bóng mặt đồng hồ; bảo dưỡng lau dầu và hỗ trợ 50% chi phi thay thế linh kiện bên trong.
Bảo hành kim cương: Thời hạn bảo hành 5 năm (tương đương 60 tháng). Giống như gói bảo hành vàng, bạn cũng sẽ được miễn phí thay pin, sửa lỗi nhiễm từ, sai số, ngấm nước, đánh bóng mặt đồng hồ, bảo dưỡng lau dầu. Tuy nhiên, điểm khác biệt lớn nhất đó chính là bạn được miễn phí 100% chi phí thay thế linh kiện bên trong và được hỗ trợ 50% chi phí thay thế linh kiện bên ngoài.
Nếu bạn đã chọn mua và được hưởng những chính sách bán hàng – bảo hành của ShopWatch dù chỉ một lần, chúng tôi tin và hy vọng quý khách hàng sẽ cảm thấy hài lòng.')
SET IDENTITY_INSERT [dbo].[About] OFF
GO
SET IDENTITY_INSERT [dbo].[Category] ON 

INSERT [dbo].[Category] ([ID_Category], [Name], [Metatitle]) VALUES (1, N'ĐỒNG HỒ CỔ ĐIỂN', N'codien')
INSERT [dbo].[Category] ([ID_Category], [Name], [Metatitle]) VALUES (2, N'ĐỒNG HỒ THÔNG MINH', N'hiendai')
SET IDENTITY_INSERT [dbo].[Category] OFF
GO
SET IDENTITY_INSERT [dbo].[Contact] ON 

INSERT [dbo].[Contact] ([ID_Contact], [Phone], [Email], [Address]) VALUES (1, N'123456789', N'watchshop@gmail.com', N'213 Hoàng Quốc Việt, Cầu Giấy, Hà Nội')
SET IDENTITY_INSERT [dbo].[Contact] OFF
GO
SET IDENTITY_INSERT [dbo].[Feedback] ON 

INSERT [dbo].[Feedback] ([ID_Feedback], [Email], [Content], [CreateDate]) VALUES (1, N'levandung@gmail.com', N'âsas', CAST(N'2019-05-26T17:10:21.927' AS DateTime))
INSERT [dbo].[Feedback] ([ID_Feedback], [Email], [Content], [CreateDate]) VALUES (2, N'xvxv', N'cxvc', CAST(N'2019-05-26T17:11:43.110' AS DateTime))
INSERT [dbo].[Feedback] ([ID_Feedback], [Email], [Content], [CreateDate]) VALUES (3, N'fgd', N'gdfg', CAST(N'2019-05-26T17:14:24.300' AS DateTime))
INSERT [dbo].[Feedback] ([ID_Feedback], [Email], [Content], [CreateDate]) VALUES (4, N'hhg', N'hgh', CAST(N'2019-05-26T17:14:54.167' AS DateTime))
INSERT [dbo].[Feedback] ([ID_Feedback], [Email], [Content], [CreateDate]) VALUES (5, N'xvxv', N'', CAST(N'2019-06-10T23:36:04.000' AS DateTime))
INSERT [dbo].[Feedback] ([ID_Feedback], [Email], [Content], [CreateDate]) VALUES (6, N'dsd@gmail.com', N'', CAST(N'2019-06-10T23:37:04.470' AS DateTime))
INSERT [dbo].[Feedback] ([ID_Feedback], [Email], [Content], [CreateDate]) VALUES (7, N'levandung@gmail.com', N'', CAST(N'2019-06-10T23:37:19.567' AS DateTime))
INSERT [dbo].[Feedback] ([ID_Feedback], [Email], [Content], [CreateDate]) VALUES (8, N'', N'', CAST(N'2019-06-10T23:43:21.520' AS DateTime))
INSERT [dbo].[Feedback] ([ID_Feedback], [Email], [Content], [CreateDate]) VALUES (9, N'', N'', CAST(N'2019-06-10T23:43:49.667' AS DateTime))
INSERT [dbo].[Feedback] ([ID_Feedback], [Email], [Content], [CreateDate]) VALUES (10, N'', N'', CAST(N'2019-06-10T23:44:25.767' AS DateTime))
INSERT [dbo].[Feedback] ([ID_Feedback], [Email], [Content], [CreateDate]) VALUES (11, N'', N'', CAST(N'2019-06-10T23:47:12.710' AS DateTime))
INSERT [dbo].[Feedback] ([ID_Feedback], [Email], [Content], [CreateDate]) VALUES (12, N'', N'', CAST(N'2019-06-10T23:48:15.910' AS DateTime))
INSERT [dbo].[Feedback] ([ID_Feedback], [Email], [Content], [CreateDate]) VALUES (13, N'', N'', CAST(N'2019-06-10T23:54:11.577' AS DateTime))
INSERT [dbo].[Feedback] ([ID_Feedback], [Email], [Content], [CreateDate]) VALUES (14, N'', N'', CAST(N'2019-06-10T23:56:56.377' AS DateTime))
INSERT [dbo].[Feedback] ([ID_Feedback], [Email], [Content], [CreateDate]) VALUES (15, N'', N'', CAST(N'2019-06-10T23:57:22.680' AS DateTime))
INSERT [dbo].[Feedback] ([ID_Feedback], [Email], [Content], [CreateDate]) VALUES (16, N'', N'', CAST(N'2019-06-10T23:58:55.470' AS DateTime))
INSERT [dbo].[Feedback] ([ID_Feedback], [Email], [Content], [CreateDate]) VALUES (17, N'', N'', CAST(N'2019-06-11T00:01:11.223' AS DateTime))
INSERT [dbo].[Feedback] ([ID_Feedback], [Email], [Content], [CreateDate]) VALUES (18, N'', N'', CAST(N'2019-06-11T00:07:01.437' AS DateTime))
INSERT [dbo].[Feedback] ([ID_Feedback], [Email], [Content], [CreateDate]) VALUES (19, N'', N'', CAST(N'2019-06-11T00:09:51.493' AS DateTime))
INSERT [dbo].[Feedback] ([ID_Feedback], [Email], [Content], [CreateDate]) VALUES (20, N'', N'', CAST(N'2019-06-11T00:10:02.447' AS DateTime))
INSERT [dbo].[Feedback] ([ID_Feedback], [Email], [Content], [CreateDate]) VALUES (21, N'', N'', CAST(N'2019-06-11T00:10:07.740' AS DateTime))
INSERT [dbo].[Feedback] ([ID_Feedback], [Email], [Content], [CreateDate]) VALUES (22, N'', N'', CAST(N'2019-06-11T00:10:35.517' AS DateTime))
INSERT [dbo].[Feedback] ([ID_Feedback], [Email], [Content], [CreateDate]) VALUES (23, N'', N'', CAST(N'2019-06-11T00:11:02.987' AS DateTime))
INSERT [dbo].[Feedback] ([ID_Feedback], [Email], [Content], [CreateDate]) VALUES (24, N'', N'', CAST(N'2019-06-11T00:13:40.083' AS DateTime))
INSERT [dbo].[Feedback] ([ID_Feedback], [Email], [Content], [CreateDate]) VALUES (25, N'', N'', CAST(N'2019-06-11T11:31:20.047' AS DateTime))
INSERT [dbo].[Feedback] ([ID_Feedback], [Email], [Content], [CreateDate]) VALUES (26, N'', N'', CAST(N'2019-06-11T21:08:13.157' AS DateTime))
INSERT [dbo].[Feedback] ([ID_Feedback], [Email], [Content], [CreateDate]) VALUES (27, N'', N'', CAST(N'2019-06-11T21:08:30.070' AS DateTime))
INSERT [dbo].[Feedback] ([ID_Feedback], [Email], [Content], [CreateDate]) VALUES (28, N'', N'', CAST(N'2019-06-11T21:09:14.777' AS DateTime))
INSERT [dbo].[Feedback] ([ID_Feedback], [Email], [Content], [CreateDate]) VALUES (29, N'', N'', CAST(N'2019-06-11T21:10:15.740' AS DateTime))
INSERT [dbo].[Feedback] ([ID_Feedback], [Email], [Content], [CreateDate]) VALUES (30, N'', N'', CAST(N'2019-06-11T21:10:47.417' AS DateTime))
INSERT [dbo].[Feedback] ([ID_Feedback], [Email], [Content], [CreateDate]) VALUES (31, N'', N'                        ', CAST(N'2019-06-11T21:15:27.127' AS DateTime))
INSERT [dbo].[Feedback] ([ID_Feedback], [Email], [Content], [CreateDate]) VALUES (32, N'', N'', CAST(N'2019-06-11T21:16:23.667' AS DateTime))
INSERT [dbo].[Feedback] ([ID_Feedback], [Email], [Content], [CreateDate]) VALUES (33, N'jhjhsja@gmail', N'sdsds', CAST(N'2019-06-11T21:23:18.280' AS DateTime))
INSERT [dbo].[Feedback] ([ID_Feedback], [Email], [Content], [CreateDate]) VALUES (34, N'jhkjk', N'lklk', CAST(N'2019-06-15T13:25:24.453' AS DateTime))
INSERT [dbo].[Feedback] ([ID_Feedback], [Email], [Content], [CreateDate]) VALUES (35, N'jhghgh@jhjhj', N'j', CAST(N'2019-06-15T13:25:44.117' AS DateTime))
INSERT [dbo].[Feedback] ([ID_Feedback], [Email], [Content], [CreateDate]) VALUES (36, N'kjjk', N'kjkj', CAST(N'2019-06-15T13:25:53.287' AS DateTime))
INSERT [dbo].[Feedback] ([ID_Feedback], [Email], [Content], [CreateDate]) VALUES (37, N'sdfsdffdgf@gmail', N'âs', CAST(N'2019-06-15T13:31:00.093' AS DateTime))
SET IDENTITY_INSERT [dbo].[Feedback] OFF
GO
SET IDENTITY_INSERT [dbo].[Login] ON 

INSERT [dbo].[Login] ([ID_Login], [Username], [Password], [ID_Role]) VALUES (1, N'admin', N'12345', 2)
INSERT [dbo].[Login] ([ID_Login], [Username], [Password], [ID_Role]) VALUES (2, N'user', N'12345', 1)
SET IDENTITY_INSERT [dbo].[Login] OFF
GO
SET IDENTITY_INSERT [dbo].[OrderDetail] ON 

INSERT [dbo].[OrderDetail] ([ID_OrderDetail], [ID_Order], [Quantity], [TotalPrice], [ID_Product], [CreateDate]) VALUES (1, 1, 1, CAST(4200000 AS Decimal(18, 0)), 2, NULL)
INSERT [dbo].[OrderDetail] ([ID_OrderDetail], [ID_Order], [Quantity], [TotalPrice], [ID_Product], [CreateDate]) VALUES (2, 2, 1, CAST(200 AS Decimal(18, 0)), 2, NULL)
INSERT [dbo].[OrderDetail] ([ID_OrderDetail], [ID_Order], [Quantity], [TotalPrice], [ID_Product], [CreateDate]) VALUES (3, 3, 777, CAST(155400 AS Decimal(18, 0)), 2, NULL)
INSERT [dbo].[OrderDetail] ([ID_OrderDetail], [ID_Order], [Quantity], [TotalPrice], [ID_Product], [CreateDate]) VALUES (4, 4, 1, CAST(1328322 AS Decimal(18, 0)), 21, NULL)
INSERT [dbo].[OrderDetail] ([ID_OrderDetail], [ID_Order], [Quantity], [TotalPrice], [ID_Product], [CreateDate]) VALUES (5, 5, 2, CAST(2656644 AS Decimal(18, 0)), 21, NULL)
INSERT [dbo].[OrderDetail] ([ID_OrderDetail], [ID_Order], [Quantity], [TotalPrice], [ID_Product], [CreateDate]) VALUES (7, 6, 1, CAST(1328322 AS Decimal(18, 0)), 21, CAST(N'2019-05-26T20:51:34.983' AS DateTime))
INSERT [dbo].[OrderDetail] ([ID_OrderDetail], [ID_Order], [Quantity], [TotalPrice], [ID_Product], [CreateDate]) VALUES (10, 8, 1, CAST(200000 AS Decimal(18, 0)), 2, CAST(N'2019-06-11T23:16:27.353' AS DateTime))
INSERT [dbo].[OrderDetail] ([ID_OrderDetail], [ID_Order], [Quantity], [TotalPrice], [ID_Product], [CreateDate]) VALUES (11, 9, 1, CAST(1328322 AS Decimal(18, 0)), 21, CAST(N'2019-06-12T14:42:38.297' AS DateTime))
INSERT [dbo].[OrderDetail] ([ID_OrderDetail], [ID_Order], [Quantity], [TotalPrice], [ID_Product], [CreateDate]) VALUES (12, 10, 1, CAST(1328322 AS Decimal(18, 0)), 21, CAST(N'2019-06-12T14:55:30.067' AS DateTime))
INSERT [dbo].[OrderDetail] ([ID_OrderDetail], [ID_Order], [Quantity], [TotalPrice], [ID_Product], [CreateDate]) VALUES (14, 11, 1, CAST(2124440 AS Decimal(18, 0)), 13, CAST(N'2019-06-12T15:03:08.087' AS DateTime))
INSERT [dbo].[OrderDetail] ([ID_OrderDetail], [ID_Order], [Quantity], [TotalPrice], [ID_Product], [CreateDate]) VALUES (15, 12, 1, CAST(1328322 AS Decimal(18, 0)), 21, CAST(N'2019-06-12T15:15:06.483' AS DateTime))
INSERT [dbo].[OrderDetail] ([ID_OrderDetail], [ID_Order], [Quantity], [TotalPrice], [ID_Product], [CreateDate]) VALUES (17, 14, 1, CAST(2124440 AS Decimal(18, 0)), 13, CAST(N'2019-06-12T15:29:04.700' AS DateTime))
INSERT [dbo].[OrderDetail] ([ID_OrderDetail], [ID_Order], [Quantity], [TotalPrice], [ID_Product], [CreateDate]) VALUES (22, 19, 1, CAST(851000 AS Decimal(18, 0)), 69, CAST(N'2019-06-13T13:22:34.550' AS DateTime))
INSERT [dbo].[OrderDetail] ([ID_OrderDetail], [ID_Order], [Quantity], [TotalPrice], [ID_Product], [CreateDate]) VALUES (23, 20, 2, CAST(1502400 AS Decimal(18, 0)), 61, CAST(N'2019-06-13T15:55:25.490' AS DateTime))
INSERT [dbo].[OrderDetail] ([ID_OrderDetail], [ID_Order], [Quantity], [TotalPrice], [ID_Product], [CreateDate]) VALUES (24, 21, 1, CAST(751200 AS Decimal(18, 0)), 61, CAST(N'2019-06-15T13:32:02.943' AS DateTime))
INSERT [dbo].[OrderDetail] ([ID_OrderDetail], [ID_Order], [Quantity], [TotalPrice], [ID_Product], [CreateDate]) VALUES (25, 22, 2, CAST(200000 AS Decimal(18, 0)), 2, CAST(N'2022-01-25T21:04:10.340' AS DateTime))
INSERT [dbo].[OrderDetail] ([ID_OrderDetail], [ID_Order], [Quantity], [TotalPrice], [ID_Product], [CreateDate]) VALUES (26, 23, 2, CAST(2124440 AS Decimal(18, 0)), 13, CAST(N'2022-01-26T10:56:55.693' AS DateTime))
INSERT [dbo].[OrderDetail] ([ID_OrderDetail], [ID_Order], [Quantity], [TotalPrice], [ID_Product], [CreateDate]) VALUES (27, 23, 3, CAST(1328322 AS Decimal(18, 0)), 21, CAST(N'2022-01-26T10:56:55.693' AS DateTime))
SET IDENTITY_INSERT [dbo].[OrderDetail] OFF
GO
SET IDENTITY_INSERT [dbo].[Orders] ON 

INSERT [dbo].[Orders] ([ID_Order], [Name], [Phone], [Address], [Status], [CreateDate], [Note], [Email]) VALUES (1, N'Lê Văn Dũng', N'0349987549  ', N'Hà Nội', N'Đang xử lý', CAST(N'2019-04-04T11:10:12.977' AS DateTime), N'note', N'dungleevan08121998@gmail.com')
INSERT [dbo].[Orders] ([ID_Order], [Name], [Phone], [Address], [Status], [CreateDate], [Note], [Email]) VALUES (2, N'Citizen NH8350-83A', N'22223878374 ', N'mndmsn', N'Đang xử lý', CAST(N'2019-04-08T18:18:55.380' AS DateTime), N'sdsd', N'sas@gmail.com')
INSERT [dbo].[Orders] ([ID_Order], [Name], [Phone], [Address], [Status], [CreateDate], [Note], [Email]) VALUES (3, N'Nguyễn Thị Hường', N'0123456789  ', N'Đặng Thùy Trâm', N'Đang xử lý', CAST(N'2019-04-08T20:44:20.097' AS DateTime), N'heloo', N'huong@gmail.com')
INSERT [dbo].[Orders] ([ID_Order], [Name], [Phone], [Address], [Status], [CreateDate], [Note], [Email]) VALUES (4, N'aksjaksjkas', N'12          ', N'ds', N'Đang xử lý', CAST(N'2019-05-26T20:42:24.483' AS DateTime), N'sds', N'levandung@gmail.com')
INSERT [dbo].[Orders] ([ID_Order], [Name], [Phone], [Address], [Status], [CreateDate], [Note], [Email]) VALUES (5, N'wwwwwww', N'2           ', N'2', N'Đang xử lý', CAST(N'2019-05-26T20:46:44.567' AS DateTime), N'2', N'dsd@gmail.com')
INSERT [dbo].[Orders] ([ID_Order], [Name], [Phone], [Address], [Status], [CreateDate], [Note], [Email]) VALUES (6, N'sdsads', N'8           ', N'2', N'Đang xử lý', CAST(N'2019-05-26T20:51:34.910' AS DateTime), N'kj', N'jahsja@gmail.com')
INSERT [dbo].[Orders] ([ID_Order], [Name], [Phone], [Address], [Status], [CreateDate], [Note], [Email]) VALUES (8, N'âsss', N'3434        ', N'sdsd', N'Đang xử lý', CAST(N'2019-06-11T23:16:27.277' AS DateTime), N'', N'jhjsa@gmail')
INSERT [dbo].[Orders] ([ID_Order], [Name], [Phone], [Address], [Status], [CreateDate], [Note], [Email]) VALUES (9, N'dfdfd', N'3434        ', N'dfdf', N'Đang xử lý', CAST(N'2019-06-12T14:42:38.000' AS DateTime), N'dfdf', N'dffdfd@gmail.com')
INSERT [dbo].[Orders] ([ID_Order], [Name], [Phone], [Address], [Status], [CreateDate], [Note], [Email]) VALUES (10, N'qqqq', N'32323       ', N'aas', N'Đang xử lý', CAST(N'2019-06-12T14:55:29.997' AS DateTime), N'fdfdf', N'qqqqqq@gmail.com')
INSERT [dbo].[Orders] ([ID_Order], [Name], [Phone], [Address], [Status], [CreateDate], [Note], [Email]) VALUES (11, N'ooooooooo', N'2873823     ', N'sdsjhd2323', N'Đang xử lý', CAST(N'2019-06-12T15:03:23.140' AS DateTime), N'ksjdksdj', N'kajskas@gmail.com')
INSERT [dbo].[Orders] ([ID_Order], [Name], [Phone], [Address], [Status], [CreateDate], [Note], [Email]) VALUES (12, N'fdfdf', N'827382      ', N'sjdksdj', N'Đang xử lý', CAST(N'2019-06-12T15:15:06.307' AS DateTime), N'kjsd', N'sjdhjsd@gmail.com')
INSERT [dbo].[Orders] ([ID_Order], [Name], [Phone], [Address], [Status], [CreateDate], [Note], [Email]) VALUES (13, N'sdsd', N'872387      ', N'sdsd', N'Đang xử lý', CAST(N'2019-06-12T15:25:09.123' AS DateTime), N'sdsd', N'dsds@gmail.com')
INSERT [dbo].[Orders] ([ID_Order], [Name], [Phone], [Address], [Status], [CreateDate], [Note], [Email]) VALUES (14, N'jgfjgf', N'22323232222 ', N'kjdsd', N'Đang xử lý', CAST(N'2019-06-12T15:29:30.187' AS DateTime), N'sjdksd', N'sfdg@gmail.com')
INSERT [dbo].[Orders] ([ID_Order], [Name], [Phone], [Address], [Status], [CreateDate], [Note], [Email]) VALUES (15, N'kjakjska', N'87823       ', N'sdjshd', N'Đang xử lý', CAST(N'2019-06-12T15:33:05.410' AS DateTime), N'jsjhjhdsd', N'kajska@gmail.com')
INSERT [dbo].[Orders] ([ID_Order], [Name], [Phone], [Address], [Status], [CreateDate], [Note], [Email]) VALUES (16, N'ksjdksd', N'9839283     ', N'ksjdkjsd', N'Đang xử lý', CAST(N'2019-06-12T15:40:56.347' AS DateTime), N'kjdksd', N'ksjdks@gmail.com')
INSERT [dbo].[Orders] ([ID_Order], [Name], [Phone], [Address], [Status], [CreateDate], [Note], [Email]) VALUES (17, N'dsg', N'3533434     ', N'dsf', N'Đang xử lý', CAST(N'2019-06-12T15:48:09.573' AS DateTime), N'fdfd', N'dsgsdg@gmail.com')
INSERT [dbo].[Orders] ([ID_Order], [Name], [Phone], [Address], [Status], [CreateDate], [Note], [Email]) VALUES (18, N'kzjkds', N'2323        ', N'ds', N'Đã giao hàng', CAST(N'2019-06-12T15:53:01.340' AS DateTime), N'kjds', N'skjdjsk@fmai.com')
INSERT [dbo].[Orders] ([ID_Order], [Name], [Phone], [Address], [Status], [CreateDate], [Note], [Email]) VALUES (19, N'kjdkajsd', N'192819      ', N'kkjdks', N'Đã giao hàng', CAST(N'2019-06-13T13:22:34.257' AS DateTime), N'ksjdks', N'kdjksdj@gmail.com')
INSERT [dbo].[Orders] ([ID_Order], [Name], [Phone], [Address], [Status], [CreateDate], [Note], [Email]) VALUES (20, N'jhjhj', N'9232983     ', N'kjsdkj', N'Đã giao hàng', CAST(N'2019-06-13T15:55:25.210' AS DateTime), N'ksjds', N'ksjdksjd@gmail.com')
INSERT [dbo].[Orders] ([ID_Order], [Name], [Phone], [Address], [Status], [CreateDate], [Note], [Email]) VALUES (21, N'ádasd', N'43433434    ', N'sdsd', N'Đã giao hàng', CAST(N'2019-06-15T13:32:16.310' AS DateTime), N'dfdf', N'jhfjhdj@dgf')
INSERT [dbo].[Orders] ([ID_Order], [Name], [Phone], [Address], [Status], [CreateDate], [Note], [Email]) VALUES (22, N'Test', N'0123456789  ', N'Hà Nội', N'Đã hủy', CAST(N'2022-01-25T21:04:10.340' AS DateTime), N'a', N'a@gmail.com')
INSERT [dbo].[Orders] ([ID_Order], [Name], [Phone], [Address], [Status], [CreateDate], [Note], [Email]) VALUES (23, N'Test', N'0123456789  ', N'Hà Nội', N'Đã giao hàng', CAST(N'2022-01-26T10:56:55.693' AS DateTime), N'a', N'a@gmail.com')
SET IDENTITY_INSERT [dbo].[Orders] OFF
GO
SET IDENTITY_INSERT [dbo].[Product] ON 

INSERT [dbo].[Product] ([ID_Product], [Name], [Price], [Description], [Content], [Avatar], [Quantity], [Color], [Discount], [Metatitle], [CreateDate], [ID_Trademark], [ID_Promotion]) VALUES (2, N'Orient FDD03001W0', CAST(200000 AS Decimal(18, 0)), N'Đồng hồ Orient FDD03001W0 thiết kế dành cho nam với phong cách cổ điển, vỏ máy bằng thép không gỉ màu vàng sang trọng, kiểu dáng đơn giản kết hợp với dây da màu đen tạo nên vẻ hoài cổ cho phái nam.', N'Được sáng lập vào những năm 1901 do Ngài Shogoro Yoshida người Nhật Bản nhưng đến năm 1950 với ý tưởng sản xuất đồng hồ cơ khí và là người tiên phong trong việc sản xuất đồng hồ cơ tại Nhật bản, đồng hồ Orient đã được sản xuất trong hơn 60 năm, trong thời gian này, cùng với tiến bộ kỹ thuật ngoạn mục chạy được nhờ sự hoạt động của con người (đồng hồ Automatic đeo trên tay) một trong những sự hoạt động năng lượng xanh, sạch không ảnh hưởng đến môi trường và Orient đã trở thành nhà sản xuất đồng hồ cơ khí (không dùng Pin) lớn nhất tại Nhật Bản cho đến ngày nay đã hơn 100 năm Orient vẫn theo hướng phát triển đó và được nhiều sự ủng hộ của người dùng trên khắp thế giới bởi mẫu mã phong phú , đẹp và sang trọng, mạnh mẽ với độ chính xác, độ tin cậy và những giá trị thương hiệu mang tính toàn cầu nhưng với giá cả phải chăng phù hợp với nhiều người để có một đồng hồ chạy cơ chính hãng chất lượng cao đã được kiểm chúng hơn 100 năm qua của người dung trên thế giới. Hiện nay chưa có tài liệu nào phàn nàn về chất lượng của hãng đồng hồ Orient đó là câu trả lời chính xác nhất cho độ tin cậy của dòng đồng hồ Orient đây cũng là thành công của người Nhật Bản và là niềm tự hào của họ cũng như những khách hàng thông minh tin dùng đồng hồ Orient.', N'OrientFDD03001W0.jpg', 20, N'Đen', CAST(100 AS Decimal(18, 0)), N'orientfdd', CAST(N'2019-04-06T11:10:12.977' AS DateTime), 2, 1)
INSERT [dbo].[Product] ([ID_Product], [Name], [Price], [Description], [Content], [Avatar], [Quantity], [Color], [Discount], [Metatitle], [CreateDate], [ID_Trademark], [ID_Promotion]) VALUES (3, N'Seiko SNKN85J1', CAST(3150000 AS Decimal(18, 0)), N'Seiko SNKN85J1 là mẫu đồng luôn được giới trẻ yêu thích bởi phong cách trẻ trung, năng động trong thiết kế. Thêm vào đó với 5 đặc điểm nổi bật: Tự động lên dây cót, Chống nước tốt, Chống shock tốt, vỏ và dây bền chắc, Núm được thu nhỏ đặt ở vị trí 4 giờ độc đáo.', N'Một trong những thương hiệu đến từ xứ sở hoa anh đào đó là SEIKO do ngài Kintaro Hattori . Năm 1881 là điểm mốc đánh dấu cái năm quan trọng trong việc thành lập hãng Seiko, khi mà Kintaro Hattori mở một cửa hàng đồng hồ và đồ trang sức được gọi là “K. Hattori” trong khu vực Ginza của Toyko, Nhật Bản. Mười một năm sau, vào năm 1892 ông bắt đầu sản xuất đồng hồ dưới cái tên Seikosha. Lịch Sử Thành Lập Hãng Đồng Hồ Seiko Nhật Bản Năm 1924 những chiếc đồng hồ đầu tiên được sản xuất dưới thương hiệu Seiko được bắt đầu. Nhưng đến năm 1969 Nhlần đầu tiên SEIKO giới thiệu bộ sưu tập đồng hồ đeo tay Seiko Astron và nó là chiếc đồng hồ có bộ máy quartz đầu tiên trên thế giới. Nhờ vào sự thành công này mà hãng Seiko đã thành lập một nhà máy sản xuất năm 1985, đến năm 1990 khi nhà máy sản xuất của hang được cơ cấu lại, tạo ra các công công ty con với sự hoạt động ổn định và phát triển tốt cho đến năm 2001 hãng Seiko đã trở thành một công ty cổ phần sản xuất đồng hồ lớn nhất Nhật Bản. ', N'SeikoSNKN85J1.jpg', 30, N'Xám', CAST(251 AS Decimal(18, 0)), N'seikosnk', CAST(N'2019-04-04T11:10:12.977' AS DateTime), 3, 1)
INSERT [dbo].[Product] ([ID_Product], [Name], [Price], [Description], [Content], [Avatar], [Quantity], [Color], [Discount], [Metatitle], [CreateDate], [ID_Trademark], [ID_Promotion]) VALUES (4, N'OLYM PIANUS OP990-133AMS', CAST(300 AS Decimal(18, 0)), N'Mẫu OLYM PIANUS OP990-133AMS phần vỏ viền ngoài tạo hình viền số với tông nền đen tạo nên vẻ nam tính đầy ấn tượng khả năng chịu nước lên đến 5 ATM.', N'Đồng hồ OP chính hãng - ( OP ) là từ viết tắt của Olympia Star, OP chính xác là thương hiệu đồng hồ ra đời tại Thụy Sĩ. Trong thập niên 50 của thế kỉ trước, thương hiệu OP lần đầu tiên xuất hiện tại vùng đất Lengnau – Thụy Sĩ. Cái tên OP (Olympia) được lấy cảm hứng từ tinh thần thể thao của thế vận hội Olympic với tiêu chí “higher-better-stronger”. Tuy nhiên, khi trải qua cuộc khủng hoảng chung của ngành đồng hồ Thụy Sĩ, OP đã có những thay đổi quan trọng, đem tới diện mạo đầy mới mẻ của OP ngày nay. Từ Thụy Sĩ, OP chuyển hướng đặt nhà máy sản xuất tại Châu Á với mục đích tiết kiệm chi phí, đồng thời, hãng dành sự quan tâm không hề nhỏ cho đối tượng khách hàng tại đây.Tuy di dời địa điểm sản xuất nhưng OP vẫn giữ nguyên quy trình kĩ thuật, tiêu chuẩn đầu ra ngặt nghèo của đồng hồ Thụy Sĩ. Vì thế, anh em có thể an tâm về chất lượng và độ bền bỉ mà mỗi chiếc đồng hồ OP mang tới.', N'OLYMPIANUSOP990133AMS.jpg', 22, N'Trắng', CAST(242 AS Decimal(18, 0)), N'olympi', CAST(N'2019-04-04T11:10:12.977' AS DateTime), 4, 1)
INSERT [dbo].[Product] ([ID_Product], [Name], [Price], [Description], [Content], [Avatar], [Quantity], [Color], [Discount], [Metatitle], [CreateDate], [ID_Trademark], [ID_Promotion]) VALUES (9, N'Citizen NH8350-83A', CAST(2100000 AS Decimal(18, 0)), N'Mẫu đồng hồ Citizen NH8350-83A với kích thước mặt số tròn to với tông nền đen nam tính, ấn tượng với phần vỏ viền ngoài được mạ vàng khoác lên vẻ đầy sang trọng.', N'Khi nói đến đồng hồ đeo tay, chúng ta không thể không nhắc đến cái tên Citizen đến từ đất nước Nhật Bản,xứ sở hoa anh đào – Thương hiệu đồng hồ đeo tay đã ăn sâu vào mỗi tín đồ đồng hồ từ thập niên 1970. Mặc dù thương hiệu đã có từ những năm 1918. Năm 1918 đánh dấu chặng đường phát triển của Citizen với sự ra đời của viện nghiên cứu đồng hồ Shokosha, các mẫu sản phẩm đầu tiên đã được bán vào năm 1924 dưới cái tên Citizen. Từ “Citizen” trong tiếng anh được dịch là “công dân”, ý tưởng này bắt nguồn từ mong muốn của ngài Yakamazi trong việc đưa những chiếc đồng hồ xa xỉ trở nên bình dân và gần gũi hơn với mọi người để ai cũng có thể sở hữu chúng. Khoảng những năm 1975, hãng đồng hồ Citizen giới thiệu cho cả thế giới biết đến dòng đồng hồ đeo tay công nghệ Eco-Drive , sử dụng năng lượng ánh sáng mặt trời, máy chạy liên tục trong bất kỳ ánh sáng tự nhiên hoặc ánh sáng nhân tạo cho một đời sử dụng mà không cần thay pin. Theo Citizen, chỉ với ánh sáng của một ngọn nến trong thời gian 7 ngày thì chiếc đòng hồ có thể dự trữ năng lượng đến 180 ngày sử dụng. Đây là một bước đi rất khôn ngoan nữa trong lịch sử đồng hồ Citizen.Trước đó là chiếc đồng hồ Cryston Solar Cell có khả năng hấp thụ năng lượng ánh sáng mặt trời đầu tiên trên thế giới. Chiếc đồng hồ này là tiền thân của đồng hồ công nghệ Eco – Drive – sản phẩm nổi tiếng và thành công nhất của Citizen - Họ đã đạt được giải thưởng 2 năm liền do người tiêu dung bình chọn là sản phẩm chất lượng.', N'NH835083A.jpg', 52, N'Xám', NULL, N'citizennh', CAST(N'2019-04-04T11:10:12.977' AS DateTime), 6, 1)
INSERT [dbo].[Product] ([ID_Product], [Name], [Price], [Description], [Content], [Avatar], [Quantity], [Color], [Discount], [Metatitle], [CreateDate], [ID_Trademark], [ID_Promotion]) VALUES (13, N'Samsung Gear Fit2 Pro', CAST(2124440 AS Decimal(18, 0)), N'Gear Fit2 Pro là lựa chọn lý tưởng cho môn thể thao bơi lội với khả năng chống nước cả trong môi trường nước mặn và nước ngọt. Thiết bị có khả năng đo lường các hoạt động thể thao, thậm chí đo được cả sải tay khi bơi của bạn, ghi nhận số vòng bơi và theo dõi nhịp tim. ', N'Smartwatch mới của Samsung có thiết kế gần gũi với đồng hồ truyền thống, hoạt động mượt với iPhone hay điện thoại Android nhưng chưa nhiều phần mềm.

Trình làng tháng 8/2018 nhưng đến cuối năm ngoái thì Galaxy Watch mới được Samsung đưa về Việt Nam. Thiết bị xuất hiện không chỉ đáp ứng nhu cầu về một chiếc smartwatch cao cấp cho dòng điện thoại Galaxy mà còn cho cả những dòng smartphone khác, trong đó có người dùng iPhone.

Đối thủ của Galaxy Watch có thể kể đến Watch series 3, series 4 nhưng thiết bị của Apple chỉ hoạt động với iOS. Trong khi đó đồng hồ Samsung cho phép kết nối với hầu hết thiết bị chạy Android hay iPhone. Ngoại hình của hai sản phẩm này cũng khác biệt đáng kể: Samsung đưa tính "smart" vào một chiếc đồng hồ truyền thống còn Apple sử dụng thiết kế hiện đại.', N'samsunggearfit2pro.jpg', 26, N'Xám', NULL, N'samsunggfp', CAST(N'2019-04-06T11:10:12.977' AS DateTime), 10, 1)
INSERT [dbo].[Product] ([ID_Product], [Name], [Price], [Description], [Content], [Avatar], [Quantity], [Color], [Discount], [Metatitle], [CreateDate], [ID_Trademark], [ID_Promotion]) VALUES (21, N'Orient SDK05003W0
', CAST(1328322 AS Decimal(18, 0)), N'Đồng hồ Orient SDK05003W0 có nền số màu trắng sang trọng, kim chỉ và vạch số được phủ màu đồng quyến rũ, việc để lộ bộ máy chuyển động làm cho đồng hồ trở nên hiện đại trong nét cổ điển, dây đeo da màu nâu đem đến nét lịch lãm nam tính cho phái mạnh.', N'Được sáng lập vào những năm 1901 do Ngài Shogoro Yoshida người Nhật Bản nhưng đến năm 1950 với ý tưởng sản xuất đồng hồ cơ khí và là người tiên phong trong việc sản xuất đồng hồ cơ tại Nhật bản, đồng hồ Orient đã được sản xuất trong hơn 60 năm, trong thời gian này, cùng với tiến bộ kỹ thuật ngoạn mục chạy được nhờ sự hoạt động của con người (đồng hồ Automatic đeo trên tay) một trong những sự hoạt động năng lượng xanh, sạch không ảnh hưởng đến môi trường và Orient đã trở thành nhà sản xuất đồng hồ cơ khí (không dùng Pin) lớn nhất tại Nhật Bản cho đến ngày nay đã hơn 100 năm Orient vẫn theo hướng phát triển đó và được nhiều sự ủng hộ của người dùng trên khắp thế giới bởi mẫu mã phong phú , đẹp và sang trọng, mạnh mẽ với độ chính xác, độ tin cậy và những giá trị thương hiệu mang tính toàn cầu nhưng với giá cả phải chăng phù hợp với nhiều người để có một đồng hồ chạy cơ chính hãng chất lượng cao đã được kiểm chúng hơn 100 năm qua của người dung trên thế giới. Hiện nay chưa có tài liệu nào phàn nàn về chất lượng của hãng đồng hồ Orient đó là câu trả lời chính xác nhất cho độ tin cậy của dòng đồng hồ Orient đây cũng là thành công của người Nhật Bản và là niềm tự hào của họ cũng như những khách hàng thông minh tin dùng đồng hồ Orient.', N'OrientSDK05003W0.jpg', 18, N'Trắng', NULL, N'orientsdk', CAST(N'2019-05-06T18:39:50.370' AS DateTime), 2, 1)
INSERT [dbo].[Product] ([ID_Product], [Name], [Price], [Description], [Content], [Avatar], [Quantity], [Color], [Discount], [Metatitle], [CreateDate], [ID_Trademark], [ID_Promotion]) VALUES (31, N'Apple Watch S4 GPS', CAST(11990000 AS Decimal(18, 0)), N'Apple Watch S4 GPS 40mm viền nhôm dây cao su (MU682VN/A) nổi bật, phù hợp với các bạn nữ yêu thích thể thao, năng động. Kiểu dáng đồng hồ thời trang, nhỏ gọn, cho bạn thoải mái đeo cả ngày. ', N'Apple không chỉ thành công với những chiếc smartphone đầy thông minh và ưu điểm vượt trội mà còn tạo nên nhiều “cơn bão lòng” bởi các sản phẩm công nghệ khác. Đồng hồ thông minh Apple Watch hiện đang được nhiều khách hàng yêu thích chọn lựa bởi nó sở hữu rất nhiều ưu điểm đặc biệt. Về thiết kế của đồng hồ Apple thì chắc có lẽ đây là dòng sản phẩm làm điên đảo nhiều khách hàng bởi những ưu điểm mà nó mang lại. Theo như đánh giá của khách hàng trên toàn thế giới thì Apple Watch chính là một trong những chiếc đồng hồ thông minh đẹp nhất và đẳng cấp nhất. Đồng hồ Apple có thời lượng pin sử dụng trung bình với thời gian khoảng 18 giờ đồng hồ bao gồm: 90 lần xem giờ, 90 lần nhận thông báo cùng 45 phút để dùng ứng dụng, 30 phút để nghe nhạc dựa vào kết nối Bluetooth.', N'apple1.jpg', 20, N'Đen', NULL, N'applewas4', CAST(N'2019-06-13T09:38:17.503' AS DateTime), 9, 1)
INSERT [dbo].[Product] ([ID_Product], [Name], [Price], [Description], [Content], [Avatar], [Quantity], [Color], [Discount], [Metatitle], [CreateDate], [ID_Trademark], [ID_Promotion]) VALUES (33, N'Apple Watch S3', CAST(8990000 AS Decimal(18, 0)), N'Apple Watch S3 GPS, 42mm viền nhôm, dây cao su màu đen Watch S3 sở hữu thiết kế thời trang và nam tính thu hút ngay từ cái nhìn đầu tiên.', N'Apple không chỉ thành công với những chiếc smartphone đầy thông minh và ưu điểm vượt trội mà còn tạo nên nhiều “cơn bão lòng” bởi các sản phẩm công nghệ khác. Đồng hồ thông minh Apple Watch hiện đang được nhiều khách hàng yêu thích chọn lựa bởi nó sở hữu rất nhiều ưu điểm đặc biệt. Về thiết kế của đồng hồ Apple thì chắc có lẽ đây là dòng sản phẩm làm điên đảo nhiều khách hàng bởi những ưu điểm mà nó mang lại. Theo như đánh giá của khách hàng trên toàn thế giới thì Apple Watch chính là một trong những chiếc đồng hồ thông minh đẹp nhất và đẳng cấp nhất. Đồng hồ Apple có thời lượng pin sử dụng trung bình với thời gian khoảng 18 giờ đồng hồ bao gồm: 90 lần xem giờ, 90 lần nhận thông báo cùng 45 phút để dùng ứng dụng, 30 phút để nghe nhạc dựa vào kết nối Bluetooth.', N'apple2.jpg', 22, N'Đen', NULL, N'applewas3', CAST(N'2019-06-13T09:44:07.060' AS DateTime), 9, 2)
INSERT [dbo].[Product] ([ID_Product], [Name], [Price], [Description], [Content], [Avatar], [Quantity], [Color], [Discount], [Metatitle], [CreateDate], [ID_Trademark], [ID_Promotion]) VALUES (35, N'Apple Watch Series 4 Nike+', CAST(10690000 AS Decimal(18, 0)), N'Apple Watch Series 4 Nike+ 4mm viền nhôm, dây cao su màu trắng giúp Series 4 Nike+ toát lên vẻ nữ tính và thời thượng của phái nữ.', N'Apple không chỉ thành công với những chiếc smartphone đầy thông minh và ưu điểm vượt trội mà còn tạo nên nhiều “cơn bão lòng” bởi các sản phẩm công nghệ khác. Đồng hồ thông minh Apple Watch hiện đang được nhiều khách hàng yêu thích chọn lựa bởi nó sở hữu rất nhiều ưu điểm đặc biệt. Về thiết kế của đồng hồ Apple thì chắc có lẽ đây là dòng sản phẩm làm điên đảo nhiều khách hàng bởi những ưu điểm mà nó mang lại. Theo như đánh giá của khách hàng trên toàn thế giới thì Apple Watch chính là một trong những chiếc đồng hồ thông minh đẹp nhất và đẳng cấp nhất. Đồng hồ Apple có thời lượng pin sử dụng trung bình với thời gian khoảng 18 giờ đồng hồ bao gồm: 90 lần xem giờ, 90 lần nhận thông báo cùng 45 phút để dùng ứng dụng, 30 phút để nghe nhạc dựa vào kết nối Bluetooth.', N'apple3.jpg', 25, N'Trắng', NULL, N'applewanike', CAST(N'2019-06-13T09:47:05.420' AS DateTime), 9, 2)
INSERT [dbo].[Product] ([ID_Product], [Name], [Price], [Description], [Content], [Avatar], [Quantity], [Color], [Discount], [Metatitle], [CreateDate], [ID_Trademark], [ID_Promotion]) VALUES (36, N'Apple Watch – Silver Aluminum', CAST(20600000 AS Decimal(18, 0)), N'Không cần đến điện thoại, chỉ với một chiếc đồng hồ Apple Watch thế hệ thứ 2 tại ShopDunk. Bạn cũng có thể làm được mọi điều mình muốn,...', N'Apple không chỉ thành công với những chiếc smartphone đầy thông minh và ưu điểm vượt trội mà còn tạo nên nhiều “cơn bão lòng” bởi các sản phẩm công nghệ khác. Đồng hồ thông minh Apple Watch hiện đang được nhiều khách hàng yêu thích chọn lựa bởi nó sở hữu rất nhiều ưu điểm đặc biệt. Về thiết kế của đồng hồ Apple thì chắc có lẽ đây là dòng sản phẩm làm điên đảo nhiều khách hàng bởi những ưu điểm mà nó mang lại. Theo như đánh giá của khách hàng trên toàn thế giới thì Apple Watch chính là một trong những chiếc đồng hồ thông minh đẹp nhất và đẳng cấp nhất. Đồng hồ Apple có thời lượng pin sử dụng trung bình với thời gian khoảng 18 giờ đồng hồ bao gồm: 90 lần xem giờ, 90 lần nhận thông báo cùng 45 phút để dùng ứng dụng, 30 phút để nghe nhạc dựa vào kết nối Bluetooth.', N'apple4.jpg', 32, N'Trắng', NULL, N'applewasa', CAST(N'2019-06-13T09:52:23.050' AS DateTime), 9, 2)
INSERT [dbo].[Product] ([ID_Product], [Name], [Price], [Description], [Content], [Avatar], [Quantity], [Color], [Discount], [Metatitle], [CreateDate], [ID_Trademark], [ID_Promotion]) VALUES (37, N'Apple Watch MNP22', CAST(6480000 AS Decimal(18, 0)), N'Không cần đến điện thoại, chỉ với một chiếc đồng hồ Apple Watch thế hệ thứ 2 tại ShopDunk. Bạn cũng có thể làm được mọi điều mình muốn,...
', N'Apple không chỉ thành công với những chiếc smartphone đầy thông minh và ưu điểm vượt trội mà còn tạo nên nhiều “cơn bão lòng” bởi các sản phẩm công nghệ khác. Đồng hồ thông minh Apple Watch hiện đang được nhiều khách hàng yêu thích chọn lựa bởi nó sở hữu rất nhiều ưu điểm đặc biệt. Về thiết kế của đồng hồ Apple thì chắc có lẽ đây là dòng sản phẩm làm điên đảo nhiều khách hàng bởi những ưu điểm mà nó mang lại. Theo như đánh giá của khách hàng trên toàn thế giới thì Apple Watch chính là một trong những chiếc đồng hồ thông minh đẹp nhất và đẳng cấp nhất. Đồng hồ Apple có thời lượng pin sử dụng trung bình với thời gian khoảng 18 giờ đồng hồ bao gồm: 90 lần xem giờ, 90 lần nhận thông báo cùng 45 phút để dùng ứng dụng, 30 phút để nghe nhạc dựa vào kết nối Bluetooth.', N'apple5.jpg', 25, N'Xám', NULL, N'applewamn', CAST(N'2019-06-13T09:55:05.390' AS DateTime), 9, 1)
INSERT [dbo].[Product] ([ID_Product], [Name], [Price], [Description], [Content], [Avatar], [Quantity], [Color], [Discount], [Metatitle], [CreateDate], [ID_Trademark], [ID_Promotion]) VALUES (38, N'Apple Watch Series 4  Silver', CAST(4609200 AS Decimal(18, 0)), N'Phiên bản Apple Watch Series 4 44mm GPS Silver Aluminum case with Pure Summit White Nike Sport Loop MU7H2 được trang bị dây vải được thiết đặc biệt dành cho những bạn trẻ thể hiện cá tính khác biệt.', N'Apple không chỉ thành công với những chiếc smartphone đầy thông minh và ưu điểm vượt trội mà còn tạo nên nhiều “cơn bão lòng” bởi các sản phẩm công nghệ khác. Đồng hồ thông minh Apple Watch hiện đang được nhiều khách hàng yêu thích chọn lựa bởi nó sở hữu rất nhiều ưu điểm đặc biệt. Về thiết kế của đồng hồ Apple thì chắc có lẽ đây là dòng sản phẩm làm điên đảo nhiều khách hàng bởi những ưu điểm mà nó mang lại. Theo như đánh giá của khách hàng trên toàn thế giới thì Apple Watch chính là một trong những chiếc đồng hồ thông minh đẹp nhất và đẳng cấp nhất. Đồng hồ Apple có thời lượng pin sử dụng trung bình với thời gian khoảng 18 giờ đồng hồ bao gồm: 90 lần xem giờ, 90 lần nhận thông báo cùng 45 phút để dùng ứng dụng, 30 phút để nghe nhạc dựa vào kết nối Bluetooth.', N'apple6.jpg', 12, N'Xám', NULL, N'applewas4s', CAST(N'2019-06-13T10:00:12.170' AS DateTime), 9, 2)
INSERT [dbo].[Product] ([ID_Product], [Name], [Price], [Description], [Content], [Avatar], [Quantity], [Color], [Discount], [Metatitle], [CreateDate], [ID_Trademark], [ID_Promotion]) VALUES (39, N'Apple Watch Modern Buckle', CAST(5210000 AS Decimal(18, 0)), N'Với kiểu dáng mới lạ hiện đại, trẻ trung, chất liệu da có độ bền cao, không bị bạc màu, mang lại cảm giác êm ái cho người đeo, Apple Watch Modern Buckle luôn là một lựa chọn lý tưởng cho người dùng Apple Watch.', N'Apple không chỉ thành công với những chiếc smartphone đầy thông minh và ưu điểm vượt trội mà còn tạo nên nhiều “cơn bão lòng” bởi các sản phẩm công nghệ khác. Đồng hồ thông minh Apple Watch hiện đang được nhiều khách hàng yêu thích chọn lựa bởi nó sở hữu rất nhiều ưu điểm đặc biệt. Về thiết kế của đồng hồ Apple thì chắc có lẽ đây là dòng sản phẩm làm điên đảo nhiều khách hàng bởi những ưu điểm mà nó mang lại. Theo như đánh giá của khách hàng trên toàn thế giới thì Apple Watch chính là một trong những chiếc đồng hồ thông minh đẹp nhất và đẳng cấp nhất. Đồng hồ Apple có thời lượng pin sử dụng trung bình với thời gian khoảng 18 giờ đồng hồ bao gồm: 90 lần xem giờ, 90 lần nhận thông báo cùng 45 phút để dùng ứng dụng, 30 phút để nghe nhạc dựa vào kết nối Bluetooth.', N'apple7.jpg', 15, N'Đen', NULL, N'applewamb', CAST(N'2019-06-13T10:04:49.387' AS DateTime), 9, 2)
INSERT [dbo].[Product] ([ID_Product], [Name], [Price], [Description], [Content], [Avatar], [Quantity], [Color], [Discount], [Metatitle], [CreateDate], [ID_Trademark], [ID_Promotion]) VALUES (40, N'Apple Watch Series 4 SK', CAST(7450000 AS Decimal(18, 0)), N'Apple Watch Series 4 SK cũ là mẫu đồng hồ thông minh đáng sở hữu nhất hiện nay. Khi thiết bị sở hữu thiết kế đẹp, lịch lãm, ngoài ra Apple Watch Series 4 SK (40 mm - 44 mm) cũ có màn hình lớn hơn, và mạnh mẽ hơn các thế hệ cũ.', N'Apple không chỉ thành công với những chiếc smartphone đầy thông minh và ưu điểm vượt trội mà còn tạo nên nhiều “cơn bão lòng” bởi các sản phẩm công nghệ khác. Đồng hồ thông minh Apple Watch hiện đang được nhiều khách hàng yêu thích chọn lựa bởi nó sở hữu rất nhiều ưu điểm đặc biệt. Về thiết kế của đồng hồ Apple thì chắc có lẽ đây là dòng sản phẩm làm điên đảo nhiều khách hàng bởi những ưu điểm mà nó mang lại. Theo như đánh giá của khách hàng trên toàn thế giới thì Apple Watch chính là một trong những chiếc đồng hồ thông minh đẹp nhất và đẳng cấp nhất. Đồng hồ Apple có thời lượng pin sử dụng trung bình với thời gian khoảng 18 giờ đồng hồ bao gồm: 90 lần xem giờ, 90 lần nhận thông báo cùng 45 phút để dùng ứng dụng, 30 phút để nghe nhạc dựa vào kết nối Bluetooth.', N'apple8.jpg', 17, N'Xám', NULL, N'applewas4sk', CAST(N'2019-06-13T10:09:16.430' AS DateTime), 9, 1)
INSERT [dbo].[Product] ([ID_Product], [Name], [Price], [Description], [Content], [Avatar], [Quantity], [Color], [Discount], [Metatitle], [CreateDate], [ID_Trademark], [ID_Promotion]) VALUES (41, N'Apple Watch A1', CAST(5461000 AS Decimal(18, 0)), N'Năm 2015, đồng hồ thông minh sẽ là một trong những cuộc đua công nghệ khốc liệt của các nhà sản xuất để đáp ứng nhu cầu của người tiêu dùng. Một sản phẩm công nghệ đa năng, hiệu quả cho những ai yêu thích công nghệ, mẫu mã thời trang, năng động, sang trọng hơn là đồng hồ đeo tay thông thường mà giá cả rẻ hơn. Với nhứng tiêu chí đó, đồng hồ thông minh Smart watch A1 sẽ đáp ứng phần nào nhu cầu của bạn.', N'Apple không chỉ thành công với những chiếc smartphone đầy thông minh và ưu điểm vượt trội mà còn tạo nên nhiều “cơn bão lòng” bởi các sản phẩm công nghệ khác. Đồng hồ thông minh Apple Watch hiện đang được nhiều khách hàng yêu thích chọn lựa bởi nó sở hữu rất nhiều ưu điểm đặc biệt. Về thiết kế của đồng hồ Apple thì chắc có lẽ đây là dòng sản phẩm làm điên đảo nhiều khách hàng bởi những ưu điểm mà nó mang lại. Theo như đánh giá của khách hàng trên toàn thế giới thì Apple Watch chính là một trong những chiếc đồng hồ thông minh đẹp nhất và đẳng cấp nhất. Đồng hồ Apple có thời lượng pin sử dụng trung bình với thời gian khoảng 18 giờ đồng hồ bao gồm: 90 lần xem giờ, 90 lần nhận thông báo cùng 45 phút để dùng ứng dụng, 30 phút để nghe nhạc dựa vào kết nối Bluetooth.', N'apple9.jpg', 21, N'Trắng', NULL, N'applewaa1', CAST(N'2019-06-13T10:16:53.907' AS DateTime), 9, 1)
INSERT [dbo].[Product] ([ID_Product], [Name], [Price], [Description], [Content], [Avatar], [Quantity], [Color], [Discount], [Metatitle], [CreateDate], [ID_Trademark], [ID_Promotion]) VALUES (42, N'Samsung Galaxy Watch Active R500', CAST(5460000 AS Decimal(18, 0)), N'Vào quý I 2019, Samsung đã trình làng mẫu đồng hồ thông minh Galaxy Watch Active mới nhất với thiết kế tối giản, sang trọng cùng các tính năng cao cấp: Daily Activities, theo dõi mức căng thẳng, theo dõi giấc ngủ chuyên sâu,...', N'Smartwatch mới của Samsung có thiết kế gần gũi với đồng hồ truyền thống, hoạt động mượt với iPhone hay điện thoại Android nhưng chưa nhiều phần mềm.

Trình làng tháng 8/2018 nhưng đến cuối năm ngoái thì Galaxy Watch mới được Samsung đưa về Việt Nam. Thiết bị xuất hiện không chỉ đáp ứng nhu cầu về một chiếc smartwatch cao cấp cho dòng điện thoại Galaxy mà còn cho cả những dòng smartphone khác, trong đó có người dùng iPhone.

Đối thủ của Galaxy Watch có thể kể đến Watch series 3, series 4 nhưng thiết bị của Apple chỉ hoạt động với iOS. Trong khi đó đồng hồ Samsung cho phép kết nối với hầu hết thiết bị chạy Android hay iPhone. Ngoại hình của hai sản phẩm này cũng khác biệt đáng kể: Samsung đưa tính "smart" vào một chiếc đồng hồ truyền thống còn Apple sử dụng thiết kế hiện đại.', N'samsung1.jpg', 13, N'Xám', NULL, N'samsungar', CAST(N'2019-06-13T10:20:24.730' AS DateTime), 10, 1)
INSERT [dbo].[Product] ([ID_Product], [Name], [Price], [Description], [Content], [Avatar], [Quantity], [Color], [Discount], [Metatitle], [CreateDate], [ID_Trademark], [ID_Promotion]) VALUES (43, N'Samsung Gear S3 Frontier
', CAST(6810000 AS Decimal(18, 0)), N'Samsung Gear S3 Frontier sử dụng mặt kính Gorilla Glass SR+ bền hơn, khó vỡ hơn 70% và hạn chế tình trạng bị bóng phản chiếu khi sử dụng ngoài trời hơn 20% nếu so với thế hệ Gear S2 cũ.', N'Smartwatch mới của Samsung có thiết kế gần gũi với đồng hồ truyền thống, hoạt động mượt với iPhone hay điện thoại Android nhưng chưa nhiều phần mềm.

Trình làng tháng 8/2018 nhưng đến cuối năm ngoái thì Galaxy Watch mới được Samsung đưa về Việt Nam. Thiết bị xuất hiện không chỉ đáp ứng nhu cầu về một chiếc smartwatch cao cấp cho dòng điện thoại Galaxy mà còn cho cả những dòng smartphone khác, trong đó có người dùng iPhone.

Đối thủ của Galaxy Watch có thể kể đến Watch series 3, series 4 nhưng thiết bị của Apple chỉ hoạt động với iOS. Trong khi đó đồng hồ Samsung cho phép kết nối với hầu hết thiết bị chạy Android hay iPhone. Ngoại hình của hai sản phẩm này cũng khác biệt đáng kể: Samsung đưa tính "smart" vào một chiếc đồng hồ truyền thống còn Apple sử dụng thiết kế hiện đại.', N'samsung2.jpg', 15, N'Đen', NULL, N'samsunggs3f', CAST(N'2019-06-13T10:22:47.220' AS DateTime), 10, 2)
INSERT [dbo].[Product] ([ID_Product], [Name], [Price], [Description], [Content], [Avatar], [Quantity], [Color], [Discount], [Metatitle], [CreateDate], [ID_Trademark], [ID_Promotion]) VALUES (44, N'Samsung Galaxy watch 46mm
', CAST(8420000 AS Decimal(18, 0)), N'Mặt đồng hồ Samsung Galaxy Watch 46 mm cứng cáp, sắc nét và dễ điều chỉnh độ sáng khi sử dụng, vòng xoay bezel hoạt động như một công cụ điều hướng nhanh các phần mềm của đồng hồ.', N'Smartwatch mới của Samsung có thiết kế gần gũi với đồng hồ truyền thống, hoạt động mượt với iPhone hay điện thoại Android nhưng chưa nhiều phần mềm.

Trình làng tháng 8/2018 nhưng đến cuối năm ngoái thì Galaxy Watch mới được Samsung đưa về Việt Nam. Thiết bị xuất hiện không chỉ đáp ứng nhu cầu về một chiếc smartwatch cao cấp cho dòng điện thoại Galaxy mà còn cho cả những dòng smartphone khác, trong đó có người dùng iPhone.

Đối thủ của Galaxy Watch có thể kể đến Watch series 3, series 4 nhưng thiết bị của Apple chỉ hoạt động với iOS. Trong khi đó đồng hồ Samsung cho phép kết nối với hầu hết thiết bị chạy Android hay iPhone. Ngoại hình của hai sản phẩm này cũng khác biệt đáng kể: Samsung đưa tính "smart" vào một chiếc đồng hồ truyền thống còn Apple sử dụng thiết kế hiện đại.', N'samsung3.jpg', 17, N'Đen', NULL, N'samsunggw46', CAST(N'2019-06-13T10:24:33.237' AS DateTime), 10, 2)
INSERT [dbo].[Product] ([ID_Product], [Name], [Price], [Description], [Content], [Avatar], [Quantity], [Color], [Discount], [Metatitle], [CreateDate], [ID_Trademark], [ID_Promotion]) VALUES (45, N'Samsung Galaxy Watch 42mm', CAST(4620000 AS Decimal(18, 0)), N'Samsung Galaxy Watch 42mm với mặt tròn cổ điển kết hợp cùng nhiều mặt đồng hồ phong cách hiện đại được trang bị cho bạn dễ dàng thay đổi.', N'Smartwatch mới của Samsung có thiết kế gần gũi với đồng hồ truyền thống, hoạt động mượt với iPhone hay điện thoại Android nhưng chưa nhiều phần mềm.

Trình làng tháng 8/2018 nhưng đến cuối năm ngoái thì Galaxy Watch mới được Samsung đưa về Việt Nam. Thiết bị xuất hiện không chỉ đáp ứng nhu cầu về một chiếc smartwatch cao cấp cho dòng điện thoại Galaxy mà còn cho cả những dòng smartphone khác, trong đó có người dùng iPhone.

Đối thủ của Galaxy Watch có thể kể đến Watch series 3, series 4 nhưng thiết bị của Apple chỉ hoạt động với iOS. Trong khi đó đồng hồ Samsung cho phép kết nối với hầu hết thiết bị chạy Android hay iPhone. Ngoại hình của hai sản phẩm này cũng khác biệt đáng kể: Samsung đưa tính "smart" vào một chiếc đồng hồ truyền thống còn Apple sử dụng thiết kế hiện đại.', N'samsung4.jpg', 19, N'Đen', NULL, N'samsunggw42', CAST(N'2019-06-13T10:26:17.657' AS DateTime), 10, 2)
INSERT [dbo].[Product] ([ID_Product], [Name], [Price], [Description], [Content], [Avatar], [Quantity], [Color], [Discount], [Metatitle], [CreateDate], [ID_Trademark], [ID_Promotion]) VALUES (46, N'Samsung Galaxy Fit R370
', CAST(8561000 AS Decimal(18, 0)), N'Vừa là phụ kiện thời trang, vừa là vòng tay thông minh theo dõi sức khỏe, Galaxy Fit cho bạn chú trọng cả vào thiết kế lẫn tính năng. Thiết kế mỏng nhẹ mang đến cho bạn sự thoải mái khi đi làm hay tập thể thao và các lựa chọn dây đeo cho bạn thoải mái thay đổi mỗi khi thích.', N'Smartwatch mới của Samsung có thiết kế gần gũi với đồng hồ truyền thống, hoạt động mượt với iPhone hay điện thoại Android nhưng chưa nhiều phần mềm.

Trình làng tháng 8/2018 nhưng đến cuối năm ngoái thì Galaxy Watch mới được Samsung đưa về Việt Nam. Thiết bị xuất hiện không chỉ đáp ứng nhu cầu về một chiếc smartwatch cao cấp cho dòng điện thoại Galaxy mà còn cho cả những dòng smartphone khác, trong đó có người dùng iPhone.

Đối thủ của Galaxy Watch có thể kể đến Watch series 3, series 4 nhưng thiết bị của Apple chỉ hoạt động với iOS. Trong khi đó đồng hồ Samsung cho phép kết nối với hầu hết thiết bị chạy Android hay iPhone. Ngoại hình của hai sản phẩm này cũng khác biệt đáng kể: Samsung đưa tính "smart" vào một chiếc đồng hồ truyền thống còn Apple sử dụng thiết kế hiện đại.', N'samsung5.jpg', 21, N'Xám', NULL, N'samsunggfr3', CAST(N'2019-06-13T10:28:17.567' AS DateTime), 10, 1)
INSERT [dbo].[Product] ([ID_Product], [Name], [Price], [Description], [Content], [Avatar], [Quantity], [Color], [Discount], [Metatitle], [CreateDate], [ID_Trademark], [ID_Promotion]) VALUES (50, N'Samsung Active (SM-R500)', CAST(4782000 AS Decimal(18, 0)), N'Vào quý I 2019, Samsung đã trình làng mẫu đồng hồ thông minh Galaxy Watch Active mới nhất với thiết kế tối giản, sang trọng cùng các tính năng cao cấp: Daily Activities, theo dõi mức căng thẳng, theo dõi giấc ngủ chuyên sâu,...', N'Smartwatch mới của Samsung có thiết kế gần gũi với đồng hồ truyền thống, hoạt động mượt với iPhone hay điện thoại Android nhưng chưa nhiều phần mềm.

Trình làng tháng 8/2018 nhưng đến cuối năm ngoái thì Galaxy Watch mới được Samsung đưa về Việt Nam. Thiết bị xuất hiện không chỉ đáp ứng nhu cầu về một chiếc smartwatch cao cấp cho dòng điện thoại Galaxy mà còn cho cả những dòng smartphone khác, trong đó có người dùng iPhone.

Đối thủ của Galaxy Watch có thể kể đến Watch series 3, series 4 nhưng thiết bị của Apple chỉ hoạt động với iOS. Trong khi đó đồng hồ Samsung cho phép kết nối với hầu hết thiết bị chạy Android hay iPhone. Ngoại hình của hai sản phẩm này cũng khác biệt đáng kể: Samsung đưa tính "smart" vào một chiếc đồng hồ truyền thống còn Apple sử dụng thiết kế hiện đại.', N'samsung6.jpg', 23, N'Đen', NULL, N'samsungasm', CAST(N'2019-06-13T10:32:16.103' AS DateTime), 10, 2)
INSERT [dbo].[Product] ([ID_Product], [Name], [Price], [Description], [Content], [Avatar], [Quantity], [Color], [Discount], [Metatitle], [CreateDate], [ID_Trademark], [ID_Promotion]) VALUES (52, N'Huawei Watch 2', CAST(8640000 AS Decimal(18, 0)), N'Sở hữu thiết kế với màn hình AMOLED 1.2 inch tiện lợi dùng dưới ánh nắng, kết hợp cùng dây đeo chất liệu cao su có nút cài, dễ dàng thay đổi độ rộng dây để phù hợp với cổ tay người đeo.

Giao diện màn hình trên đồng hồ thông minh Huawei Watch 2 này có thể dễ dàng thay đổi bằng nhiều mặt đồng hồ khác nhau.', N'Trong thời điểm mà thị trường smartwatch đang được thống trị bởi hai "ông lớn" Apple và Samsung thì một hướng đi mới khác lại được Huawei khai thác, đó chính là đồng hồ thông minh kiêm vòng tay thể thao. Huawei Watch GT là một trong những sản phẩm đầu tiên theo hướng đi mới này. Huawei Watch GT có hai phiên bản, một là phiên bản cổ điển (classic) với viền màu bạc và dây giả da, còn phiên bản còn lại là bản thể thao (sport) với toàn bộ thân hình màu đen và dây cao su.', N'huawei1.jpg', 12, N'Đen', NULL, N'huaweiw2', CAST(N'2019-06-13T10:37:25.690' AS DateTime), 11, 1)
INSERT [dbo].[Product] ([ID_Product], [Name], [Price], [Description], [Content], [Avatar], [Quantity], [Color], [Discount], [Metatitle], [CreateDate], [ID_Trademark], [ID_Promotion]) VALUES (53, N'Huawei Watch 2 (4Gsim)', CAST(6591000 AS Decimal(18, 0)), N'Huawei Watch 2 (4Gsim) là phiên bản có khen sim 4G siêu tốc độ của dòng đồng hồ thông minh thế hệ mới, đem lại nhiều tiện nghi và năng lượng cho cuộc sống.

', N'Trong thời điểm mà thị trường smartwatch đang được thống trị bởi hai "ông lớn" Apple và Samsung thì một hướng đi mới khác lại được Huawei khai thác, đó chính là đồng hồ thông minh kiêm vòng tay thể thao. Huawei Watch GT là một trong những sản phẩm đầu tiên theo hướng đi mới này. Huawei Watch GT có hai phiên bản, một là phiên bản cổ điển (classic) với viền màu bạc và dây giả da, còn phiên bản còn lại là bản thể thao (sport) với toàn bộ thân hình màu đen và dây cao su.', N'huawei2.jpg', 14, N'Đen', NULL, N'huawei24g', CAST(N'2019-06-13T10:42:02.837' AS DateTime), 11, 2)
INSERT [dbo].[Product] ([ID_Product], [Name], [Price], [Description], [Content], [Avatar], [Quantity], [Color], [Discount], [Metatitle], [CreateDate], [ID_Trademark], [ID_Promotion]) VALUES (54, N'Huawei watch 1', CAST(8745000 AS Decimal(18, 0)), N'Huawei watch 1 sở hữu mặt tròn với viền mỏng như Moto 360 nhưng màn hình hiển thị toàn bộ 360.Thiết bị chạy hệ điều hành Android Wear với chip 4 nhân, RAM 512MB nên mang lại hiệu năng tốt.', N'Trong thời điểm mà thị trường smartwatch đang được thống trị bởi hai "ông lớn" Apple và Samsung thì một hướng đi mới khác lại được Huawei khai thác, đó chính là đồng hồ thông minh kiêm vòng tay thể thao. Huawei Watch GT là một trong những sản phẩm đầu tiên theo hướng đi mới này. Huawei Watch GT có hai phiên bản, một là phiên bản cổ điển (classic) với viền màu bạc và dây giả da, còn phiên bản còn lại là bản thể thao (sport) với toàn bộ thân hình màu đen và dây cao su.', N'huawei3.png', 15, N'Xám', NULL, N'huawei1', CAST(N'2019-06-13T10:44:21.683' AS DateTime), 11, 1)
INSERT [dbo].[Product] ([ID_Product], [Name], [Price], [Description], [Content], [Avatar], [Quantity], [Color], [Discount], [Metatitle], [CreateDate], [ID_Trademark], [ID_Promotion]) VALUES (55, N'Xiaomi Amazfit Bip', CAST(5454510 AS Decimal(18, 0)), N'Đồng hồ thông minh Xiaomi Amazfit Bip có kiểu dáng thiết kế khá hiện đại, nhiều màu sắc trẻ trung. Đồng hồ còn theo dõi sức khỏe giúp cải thiện các bài tập luyện bằng cách đo số lượng calories tiêu thụ, nhịp tim, số bước chân, từ đó bạn có thể theo dõi tốt hơn quá trình luyện tập của mình thông qua đồng hồ.', N'Xiaomi - nhà sản xuất smartphone lớn nhất Trung Quốc, mệnh danh là Apple Châu Á là một câu chuyện dài về sự hỏi hỏi, tích lũy kinh nghiệm từ những hãng công nghệ đi trước để phát triển những sản phẩm có chất lượng tốt với giá cả phải chăng. Không dừng lại ở smartphone, Xiaomi còn vươn cánh tay bạch tuộc của mình ra những thiết bị khác như smartwatch, smartband,...Năm 2014, Xiaomi đã chính thức bước chân vào cuộc đua thiết bị đeo được thông minh với chiếc vòng đeo tay thể thao có tên Xiaomi Mi Band. Với mức giá 79 nhân dân tệ tại thị trường Trung Quốc (tương đương 13 USD), Xiaomi Mi Band đã gây chấn động trên thị trường thiết bị đeo thông minh khi cạnh tranh ngang ngửa với nhiều sản phẩm đắt tiền khác. Hiện nay, Mi Band đã chính thức có mặt tại thị trường Việt Nam với giá bán tham khảo 425.000 VND tại cửa hàng Xuân Vũ Audio. Sau đây chúng tôi xin gửi đến bạn đọc những đánh giá chi tiết về chiếc vòng đeo tay thông minh này.', N'xiaomi1.jpg', 11, N'Đen', NULL, N'xiaomiab', CAST(N'2019-06-13T10:47:57.970' AS DateTime), 12, 2)
INSERT [dbo].[Product] ([ID_Product], [Name], [Price], [Description], [Content], [Avatar], [Quantity], [Color], [Discount], [Metatitle], [CreateDate], [ID_Trademark], [ID_Promotion]) VALUES (56, N'Xiaomi Amazfit Pace GPS
', CAST(4910000 AS Decimal(18, 0)), N'Đồng hồ thông minh Xiaomi Amazfit Pace GPS là sản phẩm đồng hồ đeo tay theo dõi sức khỏe. Đồng hồ có thể đo được nhịp tim, số bước chân chạy, lượng calories tiêu thụ, đem lại thông số chính xác cho người tập luyện. Nó còn có thể kết nối với điện thoại để bạn nhận thông báo ngay trên đồng hồ.', N'Xiaomi - nhà sản xuất smartphone lớn nhất Trung Quốc, mệnh danh là Apple Châu Á là một câu chuyện dài về sự hỏi hỏi, tích lũy kinh nghiệm từ những hãng công nghệ đi trước để phát triển những sản phẩm có chất lượng tốt với giá cả phải chăng. Không dừng lại ở smartphone, Xiaomi còn vươn cánh tay bạch tuộc của mình ra những thiết bị khác như smartwatch, smartband,...Năm 2014, Xiaomi đã chính thức bước chân vào cuộc đua thiết bị đeo được thông minh với chiếc vòng đeo tay thể thao có tên Xiaomi Mi Band. Với mức giá 79 nhân dân tệ tại thị trường Trung Quốc (tương đương 13 USD), Xiaomi Mi Band đã gây chấn động trên thị trường thiết bị đeo thông minh khi cạnh tranh ngang ngửa với nhiều sản phẩm đắt tiền khác. Hiện nay, Mi Band đã chính thức có mặt tại thị trường Việt Nam với giá bán tham khảo 425.000 VND tại cửa hàng Xuân Vũ Audio. Sau đây chúng tôi xin gửi đến bạn đọc những đánh giá chi tiết về chiếc vòng đeo tay thông minh này.', N'xiaomi2.jpg', 13, N'Đen', NULL, N'xiaomiapg', CAST(N'2019-06-13T10:50:29.453' AS DateTime), 12, 1)
INSERT [dbo].[Product] ([ID_Product], [Name], [Price], [Description], [Content], [Avatar], [Quantity], [Color], [Discount], [Metatitle], [CreateDate], [ID_Trademark], [ID_Promotion]) VALUES (57, N'Xiaomi Amazfit Stratos 2', CAST(5454150 AS Decimal(18, 0)), N'Đồng hồ thông minh Xiaomi Amazfit Stratos 2 được trang bị thêm nhiều tính năng mới như theo dõi nhiều môn tập luyện đa dạng, có chế độ định vị GPS và cảm biến nhịp tim cho phép theo dõi sức khỏe hàng ngày. Đồng thời Amazfit Stratos 2 sở hữu khả năng kháng nước lên đến 50m cho người dùng thoải mái sử dụng khi tham gia các hoạt động dưới nước.', N'Xiaomi - nhà sản xuất smartphone lớn nhất Trung Quốc, mệnh danh là Apple Châu Á là một câu chuyện dài về sự hỏi hỏi, tích lũy kinh nghiệm từ những hãng công nghệ đi trước để phát triển những sản phẩm có chất lượng tốt với giá cả phải chăng. Không dừng lại ở smartphone, Xiaomi còn vươn cánh tay bạch tuộc của mình ra những thiết bị khác như smartwatch, smartband,...Năm 2014, Xiaomi đã chính thức bước chân vào cuộc đua thiết bị đeo được thông minh với chiếc vòng đeo tay thể thao có tên Xiaomi Mi Band. Với mức giá 79 nhân dân tệ tại thị trường Trung Quốc (tương đương 13 USD), Xiaomi Mi Band đã gây chấn động trên thị trường thiết bị đeo thông minh khi cạnh tranh ngang ngửa với nhiều sản phẩm đắt tiền khác. Hiện nay, Mi Band đã chính thức có mặt tại thị trường Việt Nam với giá bán tham khảo 425.000 VND tại cửa hàng Xuân Vũ Audio. Sau đây chúng tôi xin gửi đến bạn đọc những đánh giá chi tiết về chiếc vòng đeo tay thông minh này.', N'xiaomi3.jpg', 15, N'Đen', NULL, N'xiaomias2', CAST(N'2019-06-13T10:52:28.323' AS DateTime), 12, 2)
INSERT [dbo].[Product] ([ID_Product], [Name], [Price], [Description], [Content], [Avatar], [Quantity], [Color], [Discount], [Metatitle], [CreateDate], [ID_Trademark], [ID_Promotion]) VALUES (58, N'Orient RA-SP0001B10B Quartz', CAST(816100 AS Decimal(18, 0)), N'Đồng hồ Nam Orient RA-SP0001B10B dây đeo kim loại mặt màu đen cá tính trẻ trung đầy ấn tượng sự sang trọng lịch lãm và nam tính. Đường nét của thiết kế mang đến một cá tính riêng, đặc sắc và thú vị giúp phái mạnh có một sự trải nghiệm độc đáo.', N'Được sáng lập vào những năm 1901 do Ngài Shogoro Yoshida người Nhật Bản nhưng đến năm 1950 với ý tưởng sản xuất đồng hồ cơ khí và là người tiên phong trong việc sản xuất đồng hồ cơ tại Nhật bản, đồng hồ Orient đã được sản xuất trong hơn 60 năm, trong thời gian này, cùng với tiến bộ kỹ thuật ngoạn mục chạy được nhờ sự hoạt động của con người (đồng hồ Automatic đeo trên tay) một trong những sự hoạt động năng lượng xanh, sạch không ảnh hưởng đến môi trường và Orient đã trở thành nhà sản xuất đồng hồ cơ khí (không dùng Pin) lớn nhất tại Nhật Bản cho đến ngày nay đã hơn 100 năm Orient vẫn theo hướng phát triển đó và được nhiều sự ủng hộ của người dùng trên khắp thế giới bởi mẫu mã phong phú , đẹp và sang trọng, mạnh mẽ với độ chính xác, độ tin cậy và những giá trị thương hiệu mang tính toàn cầu nhưng với giá cả phải chăng phù hợp với nhiều người để có một đồng hồ chạy cơ chính hãng chất lượng cao đã được kiểm chúng hơn 100 năm qua của người dung trên thế giới. Hiện nay chưa có tài liệu nào phàn nàn về chất lượng của hãng đồng hồ Orient đó là câu trả lời chính xác nhất cho độ tin cậy của dòng đồng hồ Orient đây cũng là thành công của người Nhật Bản và là niềm tự hào của họ cũng như những khách hàng thông minh tin dùng đồng hồ Orient.', N'orient1.jpg', 18, N'Trắng', NULL, N'orientrsq', CAST(N'2019-06-13T10:54:56.933' AS DateTime), 2, 1)
INSERT [dbo].[Product] ([ID_Product], [Name], [Price], [Description], [Content], [Avatar], [Quantity], [Color], [Discount], [Metatitle], [CreateDate], [ID_Trademark], [ID_Promotion]) VALUES (59, N'Orient AQCAN003D0 QUARTZ', CAST(462000 AS Decimal(18, 0)), N'Đồng hồ Orient AQCAN003D0 thuộc dòng Orient Quartz chạy bằng pin mang đến sự chính xác mức tuyệt đối cho phái mạnh. Với thiết kế mới lạ mặt vuông mới lạ kết hợp dây kim loại cao cấp mang đến vẻ đẹp trẻ trung sang trọng cho người người đeo.', N'Được sáng lập vào những năm 1901 do Ngài Shogoro Yoshida người Nhật Bản nhưng đến năm 1950 với ý tưởng sản xuất đồng hồ cơ khí và là người tiên phong trong việc sản xuất đồng hồ cơ tại Nhật bản, đồng hồ Orient đã được sản xuất trong hơn 60 năm, trong thời gian này, cùng với tiến bộ kỹ thuật ngoạn mục chạy được nhờ sự hoạt động của con người (đồng hồ Automatic đeo trên tay) một trong những sự hoạt động năng lượng xanh, sạch không ảnh hưởng đến môi trường và Orient đã trở thành nhà sản xuất đồng hồ cơ khí (không dùng Pin) lớn nhất tại Nhật Bản cho đến ngày nay đã hơn 100 năm Orient vẫn theo hướng phát triển đó và được nhiều sự ủng hộ của người dùng trên khắp thế giới bởi mẫu mã phong phú , đẹp và sang trọng, mạnh mẽ với độ chính xác, độ tin cậy và những giá trị thương hiệu mang tính toàn cầu nhưng với giá cả phải chăng phù hợp với nhiều người để có một đồng hồ chạy cơ chính hãng chất lượng cao đã được kiểm chúng hơn 100 năm qua của người dung trên thế giới. Hiện nay chưa có tài liệu nào phàn nàn về chất lượng của hãng đồng hồ Orient đó là câu trả lời chính xác nhất cho độ tin cậy của dòng đồng hồ Orient đây cũng là thành công của người Nhật Bản và là niềm tự hào của họ cũng như những khách hàng thông minh tin dùng đồng hồ Orient.', N'orient2.jpg', 12, N'Xám', NULL, N'orientaq', CAST(N'2019-06-13T10:56:28.173' AS DateTime), 2, 2)
INSERT [dbo].[Product] ([ID_Product], [Name], [Price], [Description], [Content], [Avatar], [Quantity], [Color], [Discount], [Metatitle], [CreateDate], [ID_Trademark], [ID_Promotion]) VALUES (60, N'Orient FGW0100BB0 QUARTZ', CAST(775000 AS Decimal(18, 0)), N'Đồng hồ Orient FGW0100BB0 với thiết kế màu đen chủ đạo mang đến cho phái mạnh vẻ đẹp mạnh mẽ cuốn hút khó cưỡng nổi bật với phần viền được mạ vàng hồng tinh tế đem đến sự sang trọng. Đồng hồ thuộc dòng Quartz chạy bằng pin đem đến độ chính xác cho người đeo. Mẫu đồng hồ Orient dây da này đem đến vẻ đẹp trẻ trung năng động cho phái mạnh.', N'Được sáng lập vào những năm 1901 do Ngài Shogoro Yoshida người Nhật Bản nhưng đến năm 1950 với ý tưởng sản xuất đồng hồ cơ khí và là người tiên phong trong việc sản xuất đồng hồ cơ tại Nhật bản, đồng hồ Orient đã được sản xuất trong hơn 60 năm, trong thời gian này, cùng với tiến bộ kỹ thuật ngoạn mục chạy được nhờ sự hoạt động của con người (đồng hồ Automatic đeo trên tay) một trong những sự hoạt động năng lượng xanh, sạch không ảnh hưởng đến môi trường và Orient đã trở thành nhà sản xuất đồng hồ cơ khí (không dùng Pin) lớn nhất tại Nhật Bản cho đến ngày nay đã hơn 100 năm Orient vẫn theo hướng phát triển đó và được nhiều sự ủng hộ của người dùng trên khắp thế giới bởi mẫu mã phong phú , đẹp và sang trọng, mạnh mẽ với độ chính xác, độ tin cậy và những giá trị thương hiệu mang tính toàn cầu nhưng với giá cả phải chăng phù hợp với nhiều người để có một đồng hồ chạy cơ chính hãng chất lượng cao đã được kiểm chúng hơn 100 năm qua của người dung trên thế giới. Hiện nay chưa có tài liệu nào phàn nàn về chất lượng của hãng đồng hồ Orient đó là câu trả lời chính xác nhất cho độ tin cậy của dòng đồng hồ Orient đây cũng là thành công của người Nhật Bản và là niềm tự hào của họ cũng như những khách hàng thông minh tin dùng đồng hồ Orient.', N'orient3.jpg', 14, N'Đen', CAST(250000 AS Decimal(18, 0)), N'orientfq', CAST(N'2019-06-13T10:58:26.070' AS DateTime), 2, 2)
INSERT [dbo].[Product] ([ID_Product], [Name], [Price], [Description], [Content], [Avatar], [Quantity], [Color], [Discount], [Metatitle], [CreateDate], [ID_Trademark], [ID_Promotion]) VALUES (61, N'Seiko 5 Sport Automatic SRPB17K1', CAST(751200 AS Decimal(18, 0)), N'Seiko SRPB17 thuộc dòng đồng hồ thể thao mang phong cách hoài cổ của Seiko. Với phần thân đồng hồ được thiết kế bè ra hai bên như một chiếc mai rùa, một thiết kế từng được Seiko sử dụng cho những chiếc đồng hồ lặn thế hệ trước của mình. Seiko SRPB17 mang đậm chất hoài cổ từ thiết kế tới màu sắc của mặt số, mang lại sự mới mẻ cho những chiếc đồng hồ hiện đại.', N'Một trong những thương hiệu đến từ xứ sở hoa anh đào đó là SEIKO do ngài Kintaro Hattori . Năm 1881 là điểm mốc đánh dấu cái năm quan trọng trong việc thành lập hãng Seiko, khi mà Kintaro Hattori mở một cửa hàng đồng hồ và đồ trang sức được gọi là “K. Hattori” trong khu vực Ginza của Toyko, Nhật Bản. Mười một năm sau, vào năm 1892 ông bắt đầu sản xuất đồng hồ dưới cái tên Seikosha. Lịch Sử Thành Lập Hãng Đồng Hồ Seiko Nhật Bản Năm 1924 những chiếc đồng hồ đầu tiên được sản xuất dưới thương hiệu Seiko được bắt đầu. Nhưng đến năm 1969 Nhlần đầu tiên SEIKO giới thiệu bộ sưu tập đồng hồ đeo tay Seiko Astron và nó là chiếc đồng hồ có bộ máy quartz đầu tiên trên thế giới. Nhờ vào sự thành công này mà hãng Seiko đã thành lập một nhà máy sản xuất năm 1985, đến năm 1990 khi nhà máy sản xuất của hang được cơ cấu lại, tạo ra các công công ty con với sự hoạt động ổn định và phát triển tốt cho đến năm 2001 hãng Seiko đã trở thành một công ty cổ phần sản xuất đồng hồ lớn nhất Nhật Bản. ', N'seiko1.jpg', 8, N'Trắng', CAST(140000 AS Decimal(18, 0)), N'seiko5sas', CAST(N'2019-06-13T11:02:12.500' AS DateTime), 3, 2)
INSERT [dbo].[Product] ([ID_Product], [Name], [Price], [Description], [Content], [Avatar], [Quantity], [Color], [Discount], [Metatitle], [CreateDate], [ID_Trademark], [ID_Promotion]) VALUES (62, N'Seiko SRP483 Automatic', CAST(135000 AS Decimal(18, 0)), N'Seiko SRP483 - còn được gọi là baby Monster. Đúng với tên gọi của nó, đây là dòng sản phẩm rút gọn của Seiko Monster, một dòng đồng hồ lặn rất nổi tiếng của Seiko. Vẫn giữ nguyên thiết kế hầm hố và mạnh mẽ của Seiko Monster, nhưng Seiko baby monster SRP483 có phần ít góc cạnh hơn, kích thước lớn hơn và mức chống nước chĩ còn 100m nhưng vẫn là một chiếc đồng hồ thể thao đúng chất .', N'Một trong những thương hiệu đến từ xứ sở hoa anh đào đó là SEIKO do ngài Kintaro Hattori . Năm 1881 là điểm mốc đánh dấu cái năm quan trọng trong việc thành lập hãng Seiko, khi mà Kintaro Hattori mở một cửa hàng đồng hồ và đồ trang sức được gọi là “K. Hattori” trong khu vực Ginza của Toyko, Nhật Bản. Mười một năm sau, vào năm 1892 ông bắt đầu sản xuất đồng hồ dưới cái tên Seikosha. Lịch Sử Thành Lập Hãng Đồng Hồ Seiko Nhật Bản Năm 1924 những chiếc đồng hồ đầu tiên được sản xuất dưới thương hiệu Seiko được bắt đầu. Nhưng đến năm 1969 Nhlần đầu tiên SEIKO giới thiệu bộ sưu tập đồng hồ đeo tay Seiko Astron và nó là chiếc đồng hồ có bộ máy quartz đầu tiên trên thế giới. Nhờ vào sự thành công này mà hãng Seiko đã thành lập một nhà máy sản xuất năm 1985, đến năm 1990 khi nhà máy sản xuất của hang được cơ cấu lại, tạo ra các công công ty con với sự hoạt động ổn định và phát triển tốt cho đến năm 2001 hãng Seiko đã trở thành một công ty cổ phần sản xuất đồng hồ lớn nhất Nhật Bản. ', N'seiko2.jpg', 12, N'Xám', NULL, N'seikosa', CAST(N'2019-06-13T11:03:28.140' AS DateTime), 3, 1)
INSERT [dbo].[Product] ([ID_Product], [Name], [Price], [Description], [Content], [Avatar], [Quantity], [Color], [Discount], [Metatitle], [CreateDate], [ID_Trademark], [ID_Promotion]) VALUES (63, N'Seiko SNK809K2', CAST(230000 AS Decimal(18, 0)), N'Đồng hồ Seiko SNK809K2 là một trong bốn mẫu đồng hồ Seiko 5 quân đội size mặt nhỏ 37mm.Mẫu đồng hồ này có màu đen với cả mặt và bộ dây vải đưa tới người đeo sự năng động. Đồng thời màu đen sẽ giúp các bạn rất dễ dàng kết hợp với các loại trang phục khác nhau.', N'Một trong những thương hiệu đến từ xứ sở hoa anh đào đó là SEIKO do ngài Kintaro Hattori . Năm 1881 là điểm mốc đánh dấu cái năm quan trọng trong việc thành lập hãng Seiko, khi mà Kintaro Hattori mở một cửa hàng đồng hồ và đồ trang sức được gọi là “K. Hattori” trong khu vực Ginza của Toyko, Nhật Bản. Mười một năm sau, vào năm 1892 ông bắt đầu sản xuất đồng hồ dưới cái tên Seikosha. Lịch Sử Thành Lập Hãng Đồng Hồ Seiko Nhật Bản Năm 1924 những chiếc đồng hồ đầu tiên được sản xuất dưới thương hiệu Seiko được bắt đầu. Nhưng đến năm 1969 Nhlần đầu tiên SEIKO giới thiệu bộ sưu tập đồng hồ đeo tay Seiko Astron và nó là chiếc đồng hồ có bộ máy quartz đầu tiên trên thế giới. Nhờ vào sự thành công này mà hãng Seiko đã thành lập một nhà máy sản xuất năm 1985, đến năm 1990 khi nhà máy sản xuất của hang được cơ cấu lại, tạo ra các công công ty con với sự hoạt động ổn định và phát triển tốt cho đến năm 2001 hãng Seiko đã trở thành một công ty cổ phần sản xuất đồng hồ lớn nhất Nhật Bản. ', N'seiko3.jpg', 15, N'Đen', CAST(130000 AS Decimal(18, 0)), N'seikos2', CAST(N'2019-06-13T11:05:59.557' AS DateTime), 3, 2)
INSERT [dbo].[Product] ([ID_Product], [Name], [Price], [Description], [Content], [Avatar], [Quantity], [Color], [Discount], [Metatitle], [CreateDate], [ID_Trademark], [ID_Promotion]) VALUES (64, N'Olym Pianus OP 99141-71AGSK-T', CAST(445021 AS Decimal(18, 0)), N'Đồng hồ Olym Pianus OP 99141-71AGSK-T là một thương hiệu đồng hồ Nhật Bản nổi tiếng bền bỉ với chất lượng vượt trội. Đồng hồ Olym Pianus OP 99141-71AGSK-T kính cong vòm huyền thoại là một trong những thương hiệu đồng hồ hiếm hoi có giá thành vừa phải mà vẫn đáp ứng đầy đủ các tiêu chí về thiết kế cũng như chất lượng sản phẩm mang tới khách hàng có những trải nghiệm tuyệt vời nhất.', N'Đồng hồ OP chính hãng - ( OP ) là từ viết tắt của Olympia Star, OP chính xác là thương hiệu đồng hồ ra đời tại Thụy Sĩ. Trong thập niên 50 của thế kỉ trước, thương hiệu OP lần đầu tiên xuất hiện tại vùng đất Lengnau – Thụy Sĩ. Cái tên OP (Olympia) được lấy cảm hứng từ tinh thần thể thao của thế vận hội Olympic với tiêu chí “higher-better-stronger”. Tuy nhiên, khi trải qua cuộc khủng hoảng chung của ngành đồng hồ Thụy Sĩ, OP đã có những thay đổi quan trọng, đem tới diện mạo đầy mới mẻ của OP ngày nay. Từ Thụy Sĩ, OP chuyển hướng đặt nhà máy sản xuất tại Châu Á với mục đích tiết kiệm chi phí, đồng thời, hãng dành sự quan tâm không hề nhỏ cho đối tượng khách hàng tại đây.Tuy di dời địa điểm sản xuất nhưng OP vẫn giữ nguyên quy trình kĩ thuật, tiêu chuẩn đầu ra ngặt nghèo của đồng hồ Thụy Sĩ. Vì thế, anh em có thể an tâm về chất lượng và độ bền bỉ mà mỗi chiếc đồng hồ OP mang tới.', N'op1.jpg', 12, N'Xám', NULL, N'op97t', CAST(N'2019-06-13T11:10:28.107' AS DateTime), 4, 1)
INSERT [dbo].[Product] ([ID_Product], [Name], [Price], [Description], [Content], [Avatar], [Quantity], [Color], [Discount], [Metatitle], [CreateDate], [ID_Trademark], [ID_Promotion]) VALUES (65, N'Olym Pianus OP5657DMS-T', CAST(480000 AS Decimal(18, 0)), N'Đồng hồ Olym Pianus OP 99141-71AGSK-T là một thương hiệu đồng hồ Nhật Bản nổi tiếng bền bỉ với chất lượng vượt trội. Đồng hồ Olym Pianus OP 99141-71AGSK-T kính cong vòm huyền thoại là một trong những thương hiệu đồng hồ hiếm hoi có giá thành vừa phải mà vẫn đáp ứng đầy đủ các tiêu chí về thiết kế cũng như chất lượng sản phẩm mang tới khách hàng có những trải nghiệm tuyệt vời nhất.', N'Đồng hồ OP chính hãng - ( OP ) là từ viết tắt của Olympia Star, OP chính xác là thương hiệu đồng hồ ra đời tại Thụy Sĩ. Trong thập niên 50 của thế kỉ trước, thương hiệu OP lần đầu tiên xuất hiện tại vùng đất Lengnau – Thụy Sĩ. Cái tên OP (Olympia) được lấy cảm hứng từ tinh thần thể thao của thế vận hội Olympic với tiêu chí “higher-better-stronger”. Tuy nhiên, khi trải qua cuộc khủng hoảng chung của ngành đồng hồ Thụy Sĩ, OP đã có những thay đổi quan trọng, đem tới diện mạo đầy mới mẻ của OP ngày nay. Từ Thụy Sĩ, OP chuyển hướng đặt nhà máy sản xuất tại Châu Á với mục đích tiết kiệm chi phí, đồng thời, hãng dành sự quan tâm không hề nhỏ cho đối tượng khách hàng tại đây.Tuy di dời địa điểm sản xuất nhưng OP vẫn giữ nguyên quy trình kĩ thuật, tiêu chuẩn đầu ra ngặt nghèo của đồng hồ Thụy Sĩ. Vì thế, anh em có thể an tâm về chất lượng và độ bền bỉ mà mỗi chiếc đồng hồ OP mang tới.', N'op2.jpg', 14, N'Trắng', CAST(215000 AS Decimal(18, 0)), N'opot', CAST(N'2019-06-13T11:13:58.473' AS DateTime), 4, 2)
INSERT [dbo].[Product] ([ID_Product], [Name], [Price], [Description], [Content], [Avatar], [Quantity], [Color], [Discount], [Metatitle], [CreateDate], [ID_Trademark], [ID_Promotion]) VALUES (66, N'Olympia Star OPA58082-04MS', CAST(693000 AS Decimal(18, 0)), N'Đồng hồ Olympia Star OPA58082-04MS-GL-T là một thương hiệu đồng hồ Thụy Sĩ nổi tiếng bền bỉ với chất lượng vượt trội, là một trong những thương hiệu đồng hồ hiếm hoi có giá thành vừa phải mà vẫn đáp ứng đầy đủ các tiêu chí về thiết kế cũng như chất lượng sản phẩm mang tới khách hàng có những trải nghiệm tuyệt vời nhất.', N'Đồng hồ OP chính hãng - ( OP ) là từ viết tắt của Olympia Star, OP chính xác là thương hiệu đồng hồ ra đời tại Thụy Sĩ. Trong thập niên 50 của thế kỉ trước, thương hiệu OP lần đầu tiên xuất hiện tại vùng đất Lengnau – Thụy Sĩ. Cái tên OP (Olympia) được lấy cảm hứng từ tinh thần thể thao của thế vận hội Olympic với tiêu chí “higher-better-stronger”. Tuy nhiên, khi trải qua cuộc khủng hoảng chung của ngành đồng hồ Thụy Sĩ, OP đã có những thay đổi quan trọng, đem tới diện mạo đầy mới mẻ của OP ngày nay. Từ Thụy Sĩ, OP chuyển hướng đặt nhà máy sản xuất tại Châu Á với mục đích tiết kiệm chi phí, đồng thời, hãng dành sự quan tâm không hề nhỏ cho đối tượng khách hàng tại đây.Tuy di dời địa điểm sản xuất nhưng OP vẫn giữ nguyên quy trình kĩ thuật, tiêu chuẩn đầu ra ngặt nghèo của đồng hồ Thụy Sĩ. Vì thế, anh em có thể an tâm về chất lượng và độ bền bỉ mà mỗi chiếc đồng hồ OP mang tới.', N'op3.jpg', 17, N'Đen', CAST(327000 AS Decimal(18, 0)), N'opsot', CAST(N'2019-06-13T11:15:23.870' AS DateTime), 4, 2)
INSERT [dbo].[Product] ([ID_Product], [Name], [Price], [Description], [Content], [Avatar], [Quantity], [Color], [Discount], [Metatitle], [CreateDate], [ID_Trademark], [ID_Promotion]) VALUES (67, N'Citizen BI1041-22L', CAST(562300 AS Decimal(18, 0)), N'Đồng hồ Citizen BI1041-22L mang một vẻ đẹp hiện đại, độc đáo, thanh lịch. Đồng hồ Citizen BI1041-22L được thiết kế chất liệu dây bằng cao su cao cấp, có độ thẩm mỹ cao; mặt kính khoáng cứng chịu va đập tốt; khả năng chống nước 10 bar đủ để chịu nước khi đeo lặn nông dưới nước.', N'Khi nói đến đồng hồ đeo tay, chúng ta không thể không nhắc đến cái tên Citizen đến từ đất nước Nhật Bản,xứ sở hoa anh đào – Thương hiệu đồng hồ đeo tay đã ăn sâu vào mỗi tín đồ đồng hồ từ thập niên 1970. Mặc dù thương hiệu đã có từ những năm 1918. Năm 1918 đánh dấu chặng đường phát triển của Citizen với sự ra đời của viện nghiên cứu đồng hồ Shokosha, các mẫu sản phẩm đầu tiên đã được bán vào năm 1924 dưới cái tên Citizen. Từ “Citizen” trong tiếng anh được dịch là “công dân”, ý tưởng này bắt nguồn từ mong muốn của ngài Yakamazi trong việc đưa những chiếc đồng hồ xa xỉ trở nên bình dân và gần gũi hơn với mọi người để ai cũng có thể sở hữu chúng. Khoảng những năm 1975, hãng đồng hồ Citizen giới thiệu cho cả thế giới biết đến dòng đồng hồ đeo tay công nghệ Eco-Drive , sử dụng năng lượng ánh sáng mặt trời, máy chạy liên tục trong bất kỳ ánh sáng tự nhiên hoặc ánh sáng nhân tạo cho một đời sử dụng mà không cần thay pin. Theo Citizen, chỉ với ánh sáng của một ngọn nến trong thời gian 7 ngày thì chiếc đòng hồ có thể dự trữ năng lượng đến 180 ngày sử dụng. Đây là một bước đi rất khôn ngoan nữa trong lịch sử đồng hồ Citizen.Trước đó là chiếc đồng hồ Cryston Solar Cell có khả năng hấp thụ năng lượng ánh sáng mặt trời đầu tiên trên thế giới. Chiếc đồng hồ này là tiền thân của đồng hồ công nghệ Eco – Drive – sản phẩm nổi tiếng và thành công nhất của Citizen - Họ đã đạt được giải thưởng 2 năm liền do người tiêu dung bình chọn là sản phẩm chất lượng.', N'c1.jpg', 14, N'Đen', CAST(216000 AS Decimal(18, 0)), N'cb2', CAST(N'2019-06-13T11:18:38.877' AS DateTime), 6, 2)
INSERT [dbo].[Product] ([ID_Product], [Name], [Price], [Description], [Content], [Avatar], [Quantity], [Color], [Discount], [Metatitle], [CreateDate], [ID_Trademark], [ID_Promotion]) VALUES (68, N'Citizen AN8165-59E', CAST(545100 AS Decimal(18, 0)), N'Đồng hồ Citizen AN8165-59E mang một vẻ đẹp hiện đại, độc đáo, thanh lịch. Đồng hồ Citizen AN8165-59E được thiết kế chất liệu dây bằng thép không gỉ cao cấp, có độ thẩm mỹ cao; mặt kính khoáng cứng chịu va đập tốt; khả năng chống nước 5 bar đủ để chịu nước khi đi tắm, đi bơi.', N'Khi nói đến đồng hồ đeo tay, chúng ta không thể không nhắc đến cái tên Citizen đến từ đất nước Nhật Bản,xứ sở hoa anh đào – Thương hiệu đồng hồ đeo tay đã ăn sâu vào mỗi tín đồ đồng hồ từ thập niên 1970. Mặc dù thương hiệu đã có từ những năm 1918. Năm 1918 đánh dấu chặng đường phát triển của Citizen với sự ra đời của viện nghiên cứu đồng hồ Shokosha, các mẫu sản phẩm đầu tiên đã được bán vào năm 1924 dưới cái tên Citizen. Từ “Citizen” trong tiếng anh được dịch là “công dân”, ý tưởng này bắt nguồn từ mong muốn của ngài Yakamazi trong việc đưa những chiếc đồng hồ xa xỉ trở nên bình dân và gần gũi hơn với mọi người để ai cũng có thể sở hữu chúng. Khoảng những năm 1975, hãng đồng hồ Citizen giới thiệu cho cả thế giới biết đến dòng đồng hồ đeo tay công nghệ Eco-Drive , sử dụng năng lượng ánh sáng mặt trời, máy chạy liên tục trong bất kỳ ánh sáng tự nhiên hoặc ánh sáng nhân tạo cho một đời sử dụng mà không cần thay pin. Theo Citizen, chỉ với ánh sáng của một ngọn nến trong thời gian 7 ngày thì chiếc đòng hồ có thể dự trữ năng lượng đến 180 ngày sử dụng. Đây là một bước đi rất khôn ngoan nữa trong lịch sử đồng hồ Citizen.Trước đó là chiếc đồng hồ Cryston Solar Cell có khả năng hấp thụ năng lượng ánh sáng mặt trời đầu tiên trên thế giới. Chiếc đồng hồ này là tiền thân của đồng hồ công nghệ Eco – Drive – sản phẩm nổi tiếng và thành công nhất của Citizen - Họ đã đạt được giải thưởng 2 năm liền do người tiêu dung bình chọn là sản phẩm chất lượng.', N'c2.jpg', 15, N'Đen', CAST(127000 AS Decimal(18, 0)), N'ca5', CAST(N'2019-06-13T11:20:14.500' AS DateTime), 6, 2)
INSERT [dbo].[Product] ([ID_Product], [Name], [Price], [Description], [Content], [Avatar], [Quantity], [Color], [Discount], [Metatitle], [CreateDate], [ID_Trademark], [ID_Promotion]) VALUES (69, N'Citizen BN0191-80L Eco', CAST(851000 AS Decimal(18, 0)), N'Đồng hồ Citizen BN0191-80L mang một vẻ đẹp hiện đại, độc đáo, mạnh mẽ. Đồng hồ Citizen BN0191-80L được thiết kế chất liệu dây bằng thép không gỉ cao cấp, có độ thẩm mỹ cao; mặt kính khoáng cứng chịu va đập tốt; khả năng chống nước 20 bar đủ để chịu nước khi tham gia hoạt động lặn biển chuyên nghiệp.', N'Khi nói đến đồng hồ đeo tay, chúng ta không thể không nhắc đến cái tên Citizen đến từ đất nước Nhật Bản,xứ sở hoa anh đào – Thương hiệu đồng hồ đeo tay đã ăn sâu vào mỗi tín đồ đồng hồ từ thập niên 1970. Mặc dù thương hiệu đã có từ những năm 1918. Năm 1918 đánh dấu chặng đường phát triển của Citizen với sự ra đời của viện nghiên cứu đồng hồ Shokosha, các mẫu sản phẩm đầu tiên đã được bán vào năm 1924 dưới cái tên Citizen. Từ “Citizen” trong tiếng anh được dịch là “công dân”, ý tưởng này bắt nguồn từ mong muốn của ngài Yakamazi trong việc đưa những chiếc đồng hồ xa xỉ trở nên bình dân và gần gũi hơn với mọi người để ai cũng có thể sở hữu chúng. Khoảng những năm 1975, hãng đồng hồ Citizen giới thiệu cho cả thế giới biết đến dòng đồng hồ đeo tay công nghệ Eco-Drive , sử dụng năng lượng ánh sáng mặt trời, máy chạy liên tục trong bất kỳ ánh sáng tự nhiên hoặc ánh sáng nhân tạo cho một đời sử dụng mà không cần thay pin. Theo Citizen, chỉ với ánh sáng của một ngọn nến trong thời gian 7 ngày thì chiếc đòng hồ có thể dự trữ năng lượng đến 180 ngày sử dụng. Đây là một bước đi rất khôn ngoan nữa trong lịch sử đồng hồ Citizen.Trước đó là chiếc đồng hồ Cryston Solar Cell có khả năng hấp thụ năng lượng ánh sáng mặt trời đầu tiên trên thế giới. Chiếc đồng hồ này là tiền thân của đồng hồ công nghệ Eco – Drive – sản phẩm nổi tiếng và thành công nhất của Citizen - Họ đã đạt được giải thưởng 2 năm liền do người tiêu dung bình chọn là sản phẩm chất lượng.', N'c3.jpg', 0, N'Xám', CAST(325000 AS Decimal(18, 0)), N'cb8a', CAST(N'2019-06-13T11:21:50.230' AS DateTime), 6, 2)
SET IDENTITY_INSERT [dbo].[Product] OFF
GO
SET IDENTITY_INSERT [dbo].[Promotion] ON 

INSERT [dbo].[Promotion] ([ID_Promotion], [Name], [StartTime], [EndTime]) VALUES (1, N'Mùa hè năng động', CAST(N'2019-03-31T00:00:00.000' AS DateTime), CAST(N'2019-05-30T00:00:00.000' AS DateTime))
INSERT [dbo].[Promotion] ([ID_Promotion], [Name], [StartTime], [EndTime]) VALUES (2, N'Mùa thu mát mẻ', CAST(N'2019-06-13T15:14:41.720' AS DateTime), CAST(N'2019-06-30T15:14:41.720' AS DateTime))
SET IDENTITY_INSERT [dbo].[Promotion] OFF
GO
SET IDENTITY_INSERT [dbo].[Roles] ON 

INSERT [dbo].[Roles] ([ID_Role], [Name]) VALUES (1, N'user')
INSERT [dbo].[Roles] ([ID_Role], [Name]) VALUES (2, N'admin')
SET IDENTITY_INSERT [dbo].[Roles] OFF
GO
SET IDENTITY_INSERT [dbo].[Trademark] ON 

INSERT [dbo].[Trademark] ([ID_Trademark], [Name], [Metatitle], [ID_Category]) VALUES (2, N'ĐỒNG HỒ ORIENT', N'orient', 1)
INSERT [dbo].[Trademark] ([ID_Trademark], [Name], [Metatitle], [ID_Category]) VALUES (3, N'ĐỒNG HỒ SEIKO', N'seiko', 1)
INSERT [dbo].[Trademark] ([ID_Trademark], [Name], [Metatitle], [ID_Category]) VALUES (4, N'ĐỒNG HỒ OP', N'op', 1)
INSERT [dbo].[Trademark] ([ID_Trademark], [Name], [Metatitle], [ID_Category]) VALUES (6, N'ĐỒNG HỒ CITIZEN', N'citizen', 1)
INSERT [dbo].[Trademark] ([ID_Trademark], [Name], [Metatitle], [ID_Category]) VALUES (9, N'APPLE', N'apple', 2)
INSERT [dbo].[Trademark] ([ID_Trademark], [Name], [Metatitle], [ID_Category]) VALUES (10, N'SAMSUNG', N'samsung', 2)
INSERT [dbo].[Trademark] ([ID_Trademark], [Name], [Metatitle], [ID_Category]) VALUES (11, N'HUAWEI', N'huawei', 2)
INSERT [dbo].[Trademark] ([ID_Trademark], [Name], [Metatitle], [ID_Category]) VALUES (12, N'XIAOMI', N'xiaomi', 2)
SET IDENTITY_INSERT [dbo].[Trademark] OFF
GO
SET IDENTITY_INSERT [dbo].[Users] ON 

INSERT [dbo].[Users] ([ID_User], [Name], [Address], [Sex], [Phone], [email], [ID_Login]) VALUES (3, N'quản trị viên', N'Hà Nội', N'Nam       ', N'0394071254  ', N'admin@gmail.com', 1)
SET IDENTITY_INSERT [dbo].[Users] OFF
GO
ALTER TABLE [dbo].[Category] ADD  DEFAULT (NULL) FOR [Name]
GO
ALTER TABLE [dbo].[Feedback] ADD  CONSTRAINT [DF_Contact_CreateDate]  DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [dbo].[Login] ADD  DEFAULT (NULL) FOR [Username]
GO
ALTER TABLE [dbo].[Login] ADD  DEFAULT (NULL) FOR [Password]
GO
ALTER TABLE [dbo].[OrderDetail] ADD  CONSTRAINT [DF__OrderDeta__Quant__2F10007B]  DEFAULT ((0)) FOR [Quantity]
GO
ALTER TABLE [dbo].[OrderDetail] ADD  CONSTRAINT [DF__OrderDeta__Total__300424B4]  DEFAULT ((0)) FOR [TotalPrice]
GO
ALTER TABLE [dbo].[OrderDetail] ADD  CONSTRAINT [DF_OrderDetail_CreateDate]  DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [dbo].[Orders] ADD  CONSTRAINT [DF__Orders__Name__276EDEB3]  DEFAULT (NULL) FOR [Name]
GO
ALTER TABLE [dbo].[Orders] ADD  CONSTRAINT [DF__Orders__Phone__286302EC]  DEFAULT (NULL) FOR [Phone]
GO
ALTER TABLE [dbo].[Orders] ADD  CONSTRAINT [DF__Orders__Address__29572725]  DEFAULT (NULL) FOR [Address]
GO
ALTER TABLE [dbo].[Orders] ADD  CONSTRAINT [DF__Orders__Status__2A4B4B5E]  DEFAULT (NULL) FOR [Status]
GO
ALTER TABLE [dbo].[Orders] ADD  CONSTRAINT [DF__Orders__Create_D__2B3F6F97]  DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [dbo].[Product] ADD  CONSTRAINT [DF__Product__Name__173876EA]  DEFAULT (NULL) FOR [Name]
GO
ALTER TABLE [dbo].[Product] ADD  CONSTRAINT [DF__Product__Price__182C9B23]  DEFAULT ((0)) FOR [Price]
GO
ALTER TABLE [dbo].[Product] ADD  CONSTRAINT [DF_Product_CreateDate]  DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [dbo].[Promotion] ADD  CONSTRAINT [DF__Promotion__Name__34C8D9D1]  DEFAULT (NULL) FOR [Name]
GO
ALTER TABLE [dbo].[Promotion] ADD  CONSTRAINT [DF__Promotion__Start__35BCFE0A]  DEFAULT (getdate()) FOR [StartTime]
GO
ALTER TABLE [dbo].[Promotion] ADD  CONSTRAINT [DF__Promotion__EndTi__36B12243]  DEFAULT (getdate()) FOR [EndTime]
GO
ALTER TABLE [dbo].[Roles] ADD  DEFAULT (NULL) FOR [Name]
GO
ALTER TABLE [dbo].[Trademark] ADD  DEFAULT (NULL) FOR [Name]
GO
ALTER TABLE [dbo].[Users] ADD  DEFAULT (NULL) FOR [Name]
GO
ALTER TABLE [dbo].[Users] ADD  DEFAULT (NULL) FOR [Address]
GO
ALTER TABLE [dbo].[Users] ADD  DEFAULT (NULL) FOR [Sex]
GO
ALTER TABLE [dbo].[Users] ADD  DEFAULT (NULL) FOR [Phone]
GO
ALTER TABLE [dbo].[Users] ADD  DEFAULT (NULL) FOR [email]
GO
ALTER TABLE [dbo].[Login]  WITH CHECK ADD  CONSTRAINT [FK_Login_Role] FOREIGN KEY([ID_Role])
REFERENCES [dbo].[Roles] ([ID_Role])
GO
ALTER TABLE [dbo].[Login] CHECK CONSTRAINT [FK_Login_Role]
GO
ALTER TABLE [dbo].[OrderDetail]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetail_Order] FOREIGN KEY([ID_Order])
REFERENCES [dbo].[Orders] ([ID_Order])
GO
ALTER TABLE [dbo].[OrderDetail] CHECK CONSTRAINT [FK_OrderDetail_Order]
GO
ALTER TABLE [dbo].[OrderDetail]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetail_Product] FOREIGN KEY([ID_Product])
REFERENCES [dbo].[Product] ([ID_Product])
GO
ALTER TABLE [dbo].[OrderDetail] CHECK CONSTRAINT [FK_OrderDetail_Product]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_Category] FOREIGN KEY([ID_Trademark])
REFERENCES [dbo].[Trademark] ([ID_Trademark])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_Category]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_Promotion] FOREIGN KEY([ID_Promotion])
REFERENCES [dbo].[Promotion] ([ID_Promotion])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_Promotion]
GO
ALTER TABLE [dbo].[Trademark]  WITH CHECK ADD  CONSTRAINT [FK_Trademark_Category] FOREIGN KEY([ID_Category])
REFERENCES [dbo].[Category] ([ID_Category])
GO
ALTER TABLE [dbo].[Trademark] CHECK CONSTRAINT [FK_Trademark_Category]
GO
ALTER TABLE [dbo].[Users]  WITH CHECK ADD  CONSTRAINT [FK_User_Login] FOREIGN KEY([ID_Login])
REFERENCES [dbo].[Login] ([ID_Login])
GO
ALTER TABLE [dbo].[Users] CHECK CONSTRAINT [FK_User_Login]
GO
USE [master]
GO
ALTER DATABASE [WatchShop] SET  READ_WRITE 
GO
