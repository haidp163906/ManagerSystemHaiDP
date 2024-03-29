USE [master]
GO
/****** Object:  Database [Assgin_PRJ301]    Script Date: 12/12/2023 12:00:53 PM ******/
CREATE DATABASE [Assgin_PRJ301]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Assgin_PRJ301', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\Assgin_PRJ301.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Assgin_PRJ301_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\Assgin_PRJ301_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [Assgin_PRJ301] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Assgin_PRJ301].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Assgin_PRJ301] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Assgin_PRJ301] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Assgin_PRJ301] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Assgin_PRJ301] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Assgin_PRJ301] SET ARITHABORT OFF 
GO
ALTER DATABASE [Assgin_PRJ301] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [Assgin_PRJ301] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Assgin_PRJ301] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Assgin_PRJ301] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Assgin_PRJ301] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Assgin_PRJ301] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Assgin_PRJ301] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Assgin_PRJ301] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Assgin_PRJ301] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Assgin_PRJ301] SET  ENABLE_BROKER 
GO
ALTER DATABASE [Assgin_PRJ301] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Assgin_PRJ301] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Assgin_PRJ301] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Assgin_PRJ301] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Assgin_PRJ301] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Assgin_PRJ301] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Assgin_PRJ301] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Assgin_PRJ301] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Assgin_PRJ301] SET  MULTI_USER 
GO
ALTER DATABASE [Assgin_PRJ301] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Assgin_PRJ301] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Assgin_PRJ301] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Assgin_PRJ301] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Assgin_PRJ301] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Assgin_PRJ301] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [Assgin_PRJ301] SET QUERY_STORE = OFF
GO
USE [Assgin_PRJ301]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 12/12/2023 12:00:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[CategoryID] [int] IDENTITY(1,1) NOT NULL,
	[CategoryName] [nvarchar](20) NULL,
	[Descr] [nvarchar](1000) NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[CategoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Customers]    Script Date: 12/12/2023 12:00:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customers](
	[Customer_id] [varchar](10) NOT NULL,
	[FirstName] [varchar](50) NOT NULL,
	[LastName] [varchar](50) NOT NULL,
	[Email] [varchar](100) NOT NULL,
	[PhoneNumber] [varchar](20) NOT NULL,
	[Address] [varchar](200) NOT NULL,
	[DateOfBirth] [date] NULL,
	[Gender] [varchar](10) NULL,
	[Membership_id] [int] NULL,
	[Network] [varchar](100) NULL,
 CONSTRAINT [PK_Customerr] PRIMARY KEY CLUSTERED 
(
	[Customer_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MemberLevel]    Script Date: 12/12/2023 12:00:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MemberLevel](
	[Membership_id] [int] NOT NULL,
	[Membership_name] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Membership_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order]    Script Date: 12/12/2023 12:00:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[Order_id] [int] IDENTITY(1,1) NOT NULL,
	[Customer_id] [varchar](10) NULL,
	[Orderdate] [date] NULL,
	[Shipdate] [date] NULL,
	[Address] [varchar](100) NULL,
	[Shipcity] [varchar](40) NULL,
 CONSTRAINT [PK_Order] PRIMARY KEY CLUSTERED 
(
	[Order_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order detail]    Script Date: 12/12/2023 12:00:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order detail](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Order_id] [int] NOT NULL,
	[Product_id] [varchar](20) NOT NULL,
	[Quantity] [int] NULL,
	[Price] [float] NULL,
	[Discount] [float] NULL,
	[User_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 12/12/2023 12:00:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[Product_id] [varchar](20) NOT NULL,
	[Product_name] [nvarchar](255) NOT NULL,
	[Quantity] [int] NULL,
	[Unit] [nvarchar](10) NOT NULL,
	[Status] [varchar](50) NOT NULL,
	[Supplier_id] [varchar](40) NOT NULL,
	[Describe] [nvarchar](1000) NULL,
	[photo] [varchar](500) NULL,
	[Price] [float] NULL,
	[Created_at] [date] NULL,
	[Updated_at] [date] NULL,
	[CategoryID] [int] NULL,
 CONSTRAINT [PK_product] PRIMARY KEY CLUSTERED 
(
	[Product_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Supplier]    Script Date: 12/12/2023 12:00:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Supplier](
	[Supplier_id] [varchar](40) NOT NULL,
	[Supplier_name] [varchar](40) NULL,
	[Address] [nvarchar](30) NULL,
	[Phone] [varchar](10) NULL,
	[City] [nvarchar](20) NULL,
 CONSTRAINT [PK_Supplier] PRIMARY KEY CLUSTERED 
(
	[Supplier_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 12/12/2023 12:00:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[User_id] [int] IDENTITY(1,1) NOT NULL,
	[Displayname] [varchar](100) NULL,
	[FullName] [nvarchar](100) NULL,
	[Username] [varchar](50) NULL,
	[Password] [varchar](100) NULL,
	[Status] [bit] NOT NULL,
	[Address] [varchar](100) NULL,
	[Email] [varchar](100) NULL,
	[Phone] [varchar](10) NULL,
	[Role] [varchar](20) NULL,
	[Admin_userid] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[User_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Category] ON 

INSERT [dbo].[Category] ([CategoryID], [CategoryName], [Descr]) VALUES (1, N'Kitchen equipment', N'Pots, saucepans, pans, bowls, chopsticks, spoons, ladles, chopping boards, super speed jugs')
INSERT [dbo].[Category] ([CategoryID], [CategoryName], [Descr]) VALUES (2, N'Worship things', N'incense bowl, tray, small water hyacinth, and cup')
INSERT [dbo].[Category] ([CategoryID], [CategoryName], [Descr]) VALUES (3, N'Other items', N'shoe rack, dog cage, car seat, tree pole, bowl, bowl stand')
INSERT [dbo].[Category] ([CategoryID], [CategoryName], [Descr]) VALUES (4, N'bold', N'no comment')
SET IDENTITY_INSERT [dbo].[Category] OFF
GO
INSERT [dbo].[Customers] ([Customer_id], [FirstName], [LastName], [Email], [PhoneNumber], [Address], [DateOfBirth], [Gender], [Membership_id], [Network]) VALUES (N'cus_BN', N'Ba', N'Ngoc', N'ngoctuson@gmail.com', N'0985612345', N'Tu Son1', CAST(N'1968-07-10' AS Date), N'female', 3, NULL)
INSERT [dbo].[Customers] ([Customer_id], [FirstName], [LastName], [Email], [PhoneNumber], [Address], [DateOfBirth], [Gender], [Membership_id], [Network]) VALUES (N'cus_CT', N'Cuong', N'Thuan', N'cuonghourseware@gmail.com', N'0965863201', N'Ha Noi', CAST(N'1975-08-10' AS Date), N'male', 3, NULL)
INSERT [dbo].[Customers] ([Customer_id], [FirstName], [LastName], [Email], [PhoneNumber], [Address], [DateOfBirth], [Gender], [Membership_id], [Network]) VALUES (N'cus_GL', N'Uncle', N'Giang Lieu', N'gianglieuhourseware@gamil.com', N'0937562931', N'Bac Ninh', CAST(N'1969-04-10' AS Date), N'male', 2, NULL)
INSERT [dbo].[Customers] ([Customer_id], [FirstName], [LastName], [Email], [PhoneNumber], [Address], [DateOfBirth], [Gender], [Membership_id], [Network]) VALUES (N'cus_HBG', N'Hue', N'BG', N'Huexinhgai@gmail.com', N'0973156820', N'Bac Giang', CAST(N'1990-10-10' AS Date), N'female', 3, NULL)
INSERT [dbo].[Customers] ([Customer_id], [FirstName], [LastName], [Email], [PhoneNumber], [Address], [DateOfBirth], [Gender], [Membership_id], [Network]) VALUES (N'cus_HH', N'Hoa', N'Huong', N'hoahuonghourseware@gmail.com', N'0962401578', N'Yen Phong', CAST(N'1977-05-10' AS Date), N'female', 1, NULL)
INSERT [dbo].[Customers] ([Customer_id], [FirstName], [LastName], [Email], [PhoneNumber], [Address], [DateOfBirth], [Gender], [Membership_id], [Network]) VALUES (N'cus_HN', N'Ha', N'Nghiem', N'hangnghiem1989@gmail.com', N'0916719845', N'Tu Son', CAST(N'1989-09-10' AS Date), N'male', 2, NULL)
INSERT [dbo].[Customers] ([Customer_id], [FirstName], [LastName], [Email], [PhoneNumber], [Address], [DateOfBirth], [Gender], [Membership_id], [Network]) VALUES (N'cus_HT', N'Hoa', N'Thuc', N'hoathuchourseware@gmail.com', N'0946589705', N'Tu Son', CAST(N'1970-02-10' AS Date), N'female', 2, N'twitter')
INSERT [dbo].[Customers] ([Customer_id], [FirstName], [LastName], [Email], [PhoneNumber], [Address], [DateOfBirth], [Gender], [Membership_id], [Network]) VALUES (N'cus_LC', N'Lien', N'Cho', N'lienchohourseware@gmail.com', N'0948930462', N'Yen Phong', CAST(N'1982-06-10' AS Date), N'female', 2, NULL)
INSERT [dbo].[Customers] ([Customer_id], [FirstName], [LastName], [Email], [PhoneNumber], [Address], [DateOfBirth], [Gender], [Membership_id], [Network]) VALUES (N'cus_PU', N'Phuong', N'Uyen', N'phuonguyenhourseware@gmail.com', N'0986654331', N'Tu Son', CAST(N'1978-01-10' AS Date), N'female', 1, N'facebook')
INSERT [dbo].[Customers] ([Customer_id], [FirstName], [LastName], [Email], [PhoneNumber], [Address], [DateOfBirth], [Gender], [Membership_id], [Network]) VALUES (N'cus_TD', N'Thuy', N'Den', N'thuydenhourseware@gmail.com', N'0919384758', N'Tu Son', CAST(N'1980-03-10' AS Date), N'female', 2, NULL)
GO
INSERT [dbo].[MemberLevel] ([Membership_id], [Membership_name]) VALUES (1, N'Basic')
INSERT [dbo].[MemberLevel] ([Membership_id], [Membership_name]) VALUES (2, N'Standard')
INSERT [dbo].[MemberLevel] ([Membership_id], [Membership_name]) VALUES (3, N'Premium')
GO
SET IDENTITY_INSERT [dbo].[Order] ON 

INSERT [dbo].[Order] ([Order_id], [Customer_id], [Orderdate], [Shipdate], [Address], [Shipcity]) VALUES (1, N'cus_BN', CAST(N'2023-03-08' AS Date), CAST(N'2023-03-09' AS Date), N'Tu Son', N'Tu Son')
INSERT [dbo].[Order] ([Order_id], [Customer_id], [Orderdate], [Shipdate], [Address], [Shipcity]) VALUES (2, N'cus_CT', CAST(N'2023-03-09' AS Date), CAST(N'2023-03-09' AS Date), N'Linh Nam-Ha Noi', N'Ha Noi')
INSERT [dbo].[Order] ([Order_id], [Customer_id], [Orderdate], [Shipdate], [Address], [Shipcity]) VALUES (3, N'cus_GL', CAST(N'2023-03-09' AS Date), CAST(N'2023-03-10' AS Date), N'Lim_Bac Ninh', N'Bac Ninh')
INSERT [dbo].[Order] ([Order_id], [Customer_id], [Orderdate], [Shipdate], [Address], [Shipcity]) VALUES (4, N'cus_HBG', CAST(N'2023-03-10' AS Date), CAST(N'2023-03-10' AS Date), N'Tien Phong-Bac Giang', N'Bac Giang')
INSERT [dbo].[Order] ([Order_id], [Customer_id], [Orderdate], [Shipdate], [Address], [Shipcity]) VALUES (5, N'cus_HH', CAST(N'2023-03-10' AS Date), CAST(N'2023-03-11' AS Date), N'Cho-Yen Phong', N'Yen Phong')
INSERT [dbo].[Order] ([Order_id], [Customer_id], [Orderdate], [Shipdate], [Address], [Shipcity]) VALUES (6, N'cus_HN', CAST(N'2023-03-11' AS Date), CAST(N'2023-03-11' AS Date), N'Cho Giau-Tu Son', N'Tu Son')
INSERT [dbo].[Order] ([Order_id], [Customer_id], [Orderdate], [Shipdate], [Address], [Shipcity]) VALUES (7, N'cus_TD', CAST(N'2023-03-11' AS Date), CAST(N'2023-03-11' AS Date), N'Cho Gao-Tu Son', N'Tu Son')
INSERT [dbo].[Order] ([Order_id], [Customer_id], [Orderdate], [Shipdate], [Address], [Shipcity]) VALUES (8, N'cus_HT', CAST(N'2023-03-11' AS Date), CAST(N'2023-03-12' AS Date), N'Cho Gao-Tu Son', N'Tu Son')
INSERT [dbo].[Order] ([Order_id], [Customer_id], [Orderdate], [Shipdate], [Address], [Shipcity]) VALUES (9, N'cus_LC', CAST(N'2023-03-12' AS Date), CAST(N'2023-03-12' AS Date), N'Cho-Yen Phong', N'Yen Phong')
INSERT [dbo].[Order] ([Order_id], [Customer_id], [Orderdate], [Shipdate], [Address], [Shipcity]) VALUES (10, N'cus_PU', CAST(N'2023-03-12' AS Date), CAST(N'2023-03-12' AS Date), N'Cho Gao-Tu Son', N'Tu Son')
SET IDENTITY_INSERT [dbo].[Order] OFF
GO
INSERT [dbo].[Product] ([Product_id], [Product_name], [Quantity], [Unit], [Status], [Supplier_id], [Describe], [photo], [Price], [Created_at], [Updated_at], [CategoryID]) VALUES (N'BCCN', N'Bat To Su Co Ngan 15cm', 30, N'bin', N'stocking', N'sup_bvc', N'Material: ceramic
Dimensions: 16.5cm wide - 6.7cm high - 510g n?ng weight
Details: The product is thick, hard to chip, high-grade enamel is durable, colorfast, and odorless
Brand : HC
Origin : Vietnam', N'Sd24833c03735463c89c23a6da4ccbcacP.jpg', 10.53, CAST(N'2023-12-06' AS Date), CAST(N'2023-12-06' AS Date), 1)
INSERT [dbo].[Product] ([Product_id], [Product_name], [Quantity], [Unit], [Status], [Supplier_id], [Describe], [photo], [Price], [Created_at], [Updated_at], [CategoryID]) VALUES (N'BGN_L0.45', N'Binh Giu Nhiet 450ml ', 10, N'bin', N'stocking', N'sup_tnv', N'Material: Safe 304 stainless steel core
Capacity: 500ml
Weight: 230 grams
Size: 15cm high x 9cm diameter
Structure: The outermost layer is stainless steel coated with electrostatic paint, which is sure not to fade
Details: 8h thermos bottle, beautiful design, durable, anti-spill tea coffee
Brand : OEM
Origin: China', N'binh-giu-nhiet-diller-450ml-2-lop-inox-304-xanh.jpg', 3.79, CAST(N'2023-12-06' AS Date), CAST(N'2023-12-06' AS Date), 1)
INSERT [dbo].[Product] ([Product_id], [Product_name], [Quantity], [Unit], [Status], [Supplier_id], [Describe], [photo], [Price], [Created_at], [Updated_at], [CategoryID]) VALUES (N'BHTT', N'Binh Hoa Thuy Tinh', 5, N'bin', N'stocking', N'sup_htk', N'Luxury glass flower vase to welcome Tet
- Height: 25cm
- Width of bottle mouth: 10cm
- The thickness of the glass vase is more than 5li, the design is uniform, the quality of the glass is high, the decoration is sharp.
- Many styles of vase mouth suitable for many types of flowers.
- Suitable size to decorate the living room, bedroom, kitchen', N'307893-binh-hoa-thuy-tinh-body (15).jpg', 2.32, CAST(N'2023-12-06' AS Date), CAST(N'2023-12-06' AS Date), 3)
INSERT [dbo].[Product] ([Product_id], [Product_name], [Quantity], [Unit], [Status], [Supplier_id], [Describe], [photo], [Price], [Created_at], [Updated_at], [CategoryID]) VALUES (N'BNR_L10', N'Binh Ngam Ruou 10 Lit', 5, N'bin', N'stocking', N'sup_bvc', N'"Material: glass
Size Body diameter 22cm height 35cm mouth diameter 11cm
Details: The inner layer of flexible plastic hugs the bottle to add privacy to the contents inside, The outer layer of the glass jar lid can be completely sealed without fear of alcohol evaporation.
Origin: China', N'10-768x768.jpg', 3.79, CAST(N'2023-12-06' AS Date), CAST(N'2023-12-06' AS Date), 3)
INSERT [dbo].[Product] ([Product_id], [Product_name], [Quantity], [Unit], [Status], [Supplier_id], [Describe], [photo], [Price], [Created_at], [Updated_at], [CategoryID]) VALUES (N'BNR_L12', N'Binh Ngam Ruou 12 Lit', 5, N'bin', N'stocking', N'sup_bvc', N'Material: glass
Size: body diameter 23cm height 39cm mouth diameter 13.5cm
Details: The inner layer of flexible plastic hugs the bottle to add privacy to the contents inside, The outer layer of the glass jar lid can be completely sealed without fear of alcohol evaporation.
Origin: China', N'7b5d3dc658c673f7cd6e1eb65fc03d5c.jpg', 4.21, CAST(N'2023-12-06' AS Date), CAST(N'2023-12-06' AS Date), 3)
INSERT [dbo].[Product] ([Product_id], [Product_name], [Quantity], [Unit], [Status], [Supplier_id], [Describe], [photo], [Price], [Created_at], [Updated_at], [CategoryID]) VALUES (N'BNR_L16', N'Binh Ngam Ruou 16 Lit', 5, N'bin', N'stocking', N'sup_bvc', N'Material: glass
Size: body diameter 25cm height 41cm mouth diameter 13.5cm
Details: The inner layer of flexible plastic hugs the bottle to add privacy to the contents inside, The outer layer of the glass jar lid can be completely sealed without fear of alcohol evaporation.
Origin: China', N'binh-thy-tinh-ngam-ruou.png', 0.51, CAST(N'2023-12-06' AS Date), CAST(N'2023-12-06' AS Date), 3)
INSERT [dbo].[Product] ([Product_id], [Product_name], [Quantity], [Unit], [Status], [Supplier_id], [Describe], [photo], [Price], [Created_at], [Updated_at], [CategoryID]) VALUES (N'BNR_L2', N'Binh Ngam Ruou 3 Lit', 5, N'bin', N'stocking', N'sup_bvc', N'Material: glass
Size : Body diameter 16cm Height 24cm Mouth diameter 11cm
Details: The inner layer of flexible plastic hugs the bottle to add privacy to the contents inside, The outer layer of the glass jar lid can be completely sealed without fear of alcohol evaporation.
Origin: China', N'1aa0f4f63766d0e8c318922a207b765f.jpg', 1.68, CAST(N'2023-12-06' AS Date), CAST(N'2023-12-06' AS Date), 3)
INSERT [dbo].[Product] ([Product_id], [Product_name], [Quantity], [Unit], [Status], [Supplier_id], [Describe], [photo], [Price], [Created_at], [Updated_at], [CategoryID]) VALUES (N'BNR_L20', N'Binh Ngam Ruou 20 Lit', 5, N'bin', N'stocking', N'sup_bvc', N'Material: glass
Size: body diameter 26cm height 41cm mouth diameter 13.5cm
Details: The inner layer of flexible plastic hugs the bottle to add privacy to the contents inside, The outer layer of the glass jar lid can be completely sealed without fear of alcohol evaporation.
Origin: China', N'binh-thy-tinh-ngam-ruou.png', 9.69, CAST(N'2023-12-06' AS Date), CAST(N'2023-12-06' AS Date), 3)
INSERT [dbo].[Product] ([Product_id], [Product_name], [Quantity], [Unit], [Status], [Supplier_id], [Describe], [photo], [Price], [Created_at], [Updated_at], [CategoryID]) VALUES (N'BNR_L5', N'Binh Ngam Ruou 5 Lit', 5, N'bin', N'stocking', N'sup_bvc', N'Material: glass
Size : Body diameter 18cm height 30cm Mouth diameter 11cm
Details: The inner layer of flexible plastic hugs the bottle to add privacy to the contents inside, The outer layer of the glass jar lid can be completely sealed without fear of alcohol evaporation.
Origin: China', N'7b5d3dc658c673f7cd6e1eb65fc03d5c.jpg', 2.53, CAST(N'2023-12-06' AS Date), CAST(N'2023-12-06' AS Date), 3)
INSERT [dbo].[Product] ([Product_id], [Product_name], [Quantity], [Unit], [Status], [Supplier_id], [Describe], [photo], [Price], [Created_at], [Updated_at], [CategoryID]) VALUES (N'CBT_L10', N'Chum Bat Trang 10L Trang Men', 5, N'(s)', N'stocking', N'sup_bvc', N'The wine soaked in the crock pot is the best.”
• Jars bearing the famous Bat Trang brand
• Jars have a standard thickness of 1.3 (make sure the crockery is always of high thickness)
• Terracotta material has good elasticity, durability, heat resistance, great pressure resistance, smooth inner layer, not rough
• Diverse models, variety of designs, sizes, small and large, crockery jars soaked in wine 10 liters, 20 liters, 30 liters, 50 liters, 100 liters,…150 liters.
• The mouth of the crockery and wine jars fits snugly with the lid to make sure it doesn''t warp when it''s closed
• No harmful impurities when heated, safe to use (reducing aldehydes in alcohol)', N'chum-battrang-768x763.jpg', 8.42, CAST(N'2023-12-06' AS Date), CAST(N'2023-12-06' AS Date), 3)
INSERT [dbo].[Product] ([Product_id], [Product_name], [Quantity], [Unit], [Status], [Supplier_id], [Describe], [photo], [Price], [Created_at], [Updated_at], [CategoryID]) VALUES (N'CBT_L20', N'Chum Bat Trang 20L Trang Men', 5, N'(s)', N'stocking', N'sup_htk', N'The wine soaked in the crock pot is the best.”
• Jars bearing the famous Bat Trang brand
• Jars have a standard thickness of 1.3 (make sure the crockery is always of high thickness)
• Terracotta material has good elasticity, durability, heat resistance, great pressure resistance, smooth inner layer, not rough
• Diverse models, variety of designs, sizes, small and large, crockery jars soaked in wine 10 liters, 20 liters, 30 liters, 50 liters, 100 liters,…150 liters.
• The mouth of the crockery and wine jars fits snugly with the lid to make sure it doesn''t warp when it''s closed
• No harmful impurities when heated, safe to use (reducing aldehydes in alcohol)', N'chum-battrang-768x763.jpg', 15.16, CAST(N'2023-12-06' AS Date), CAST(N'2023-12-06' AS Date), 3)
INSERT [dbo].[Product] ([Product_id], [Product_name], [Quantity], [Unit], [Status], [Supplier_id], [Describe], [photo], [Price], [Created_at], [Updated_at], [CategoryID]) VALUES (N'CBT_L40', N'Chum Bat Trang 40L Trang Men', 5, N'(s)', N'stocking', N'sup_htk', N'The wine soaked in the crock pot is the best.”
• Jars bearing the famous Bat Trang brand
• Jars have a standard thickness of 1.3 (make sure the crockery is always of high thickness)
• Terracotta material has good elasticity, durability, heat resistance, great pressure resistance, smooth inner layer, not rough
• Diverse models, variety of designs, sizes, small and large, crockery jars soaked in wine 10 liters, 20 liters, 30 liters, 50 liters, 100 liters,…150 liters.
• The mouth of the crockery and wine jars fits snugly with the lid to make sure it doesn''t warp when it''s closed
• No harmful impurities when heated, safe to use (reducing aldehydes in alcohol)', N'chum-battrang-768x763.jpg', 26.54, CAST(N'2023-12-06' AS Date), CAST(N'2023-12-06' AS Date), 3)
INSERT [dbo].[Product] ([Product_id], [Product_name], [Quantity], [Unit], [Status], [Supplier_id], [Describe], [photo], [Price], [Created_at], [Updated_at], [CategoryID]) VALUES (N'CCCV', N'Gian Sao Chan Vuong', 20, N'(s)', N'stocking', N'sup_tnv', N'Super strong, durable for long-term use, can be stretched to hang more things - height 1m5 length 1m2 can be stretched more _ Handy, ending the worry of having no place to dry clothes.', N'dda07b34b96305e18987bde9ff42f7a0.jpg', 15.96, CAST(N'2023-12-06' AS Date), CAST(N'2023-12-06' AS Date), 3)
INSERT [dbo].[Product] ([Product_id], [Product_name], [Quantity], [Unit], [Status], [Supplier_id], [Describe], [photo], [Price], [Created_at], [Updated_at], [CategoryID]) VALUES (N'CKHO', N'Con Kho', 20, N'bin', N'stocking', N'sup_htk', N'Material: Alcohol
Carton: 1 carton has 30 pieces
Details: Used as fuel for alcohol stoves in family cooking, hot pot cooking in eateries, restaurants, outdoor picnics.
Brand: Thach Phat
Origin: Vietnam', N'9c6d5026d54ed0cd6121eae191fb75c3.jpg', 4.21, CAST(N'2023-12-06' AS Date), CAST(N'2023-12-06' AS Date), 3)
INSERT [dbo].[Product] ([Product_id], [Product_name], [Quantity], [Unit], [Status], [Supplier_id], [Describe], [photo], [Price], [Created_at], [Updated_at], [CategoryID]) VALUES (N'CL_L1.4', N'Cap Long Giu Nhiet 3 Ngan 1.4L', 5, N'bin', N'stocking', N'sup_tnv', N'Material: high quality 304 stainless steel, thick and safe., good heat retention.
- Capacity: 1.3L
- Simple but delicate, eye-catching design, making it easy to carry food when going to work, picnic, business, preparing rice for your baby to school, making porridge for your baby when going out,
- Sealed lid, sturdy and convenient stainless steel handle.
- Durable stainless steel material, safe for user''s health and high side, long-term use.', N'cap-long-com-giu-nhiet-elmich-1500ml-el7284-t1.jpg', 5.52, CAST(N'2023-12-06' AS Date), CAST(N'2023-12-06' AS Date), 1)
INSERT [dbo].[Product] ([Product_id], [Product_name], [Quantity], [Unit], [Status], [Supplier_id], [Describe], [photo], [Price], [Created_at], [Updated_at], [CategoryID]) VALUES (N'DE26M', N'Chao INOX Nguyen Khoi', 255, N'(s)', N'stocking', N'sup_hbx', N'Material: Pure aluminum Type: 20cm - 26cm Weight: 1.16kg Details: Non-stick 2 layers Whitford (USA) Brand: SUNHOUSE Origin: Vietnam', N'de20m-01-439db3e7-523a-4a46-b77e-95a0bc7da693.webp', 22.32, CAST(N'2023-12-06' AS Date), CAST(N'2023-12-06' AS Date), 1)
INSERT [dbo].[Product] ([Product_id], [Product_name], [Quantity], [Unit], [Status], [Supplier_id], [Describe], [photo], [Price], [Created_at], [Updated_at], [CategoryID]) VALUES (N'DLL', N'Dau Luu Ly 2 Lit', 15, N'bin', N'stocking', N'sup_htk', N'Borage oil auspicious:
smokeless
odourless
Non-toxic, no impurities
especially environmentally friendly
Origin: Taiwan', N'0fa5234de4956f9d2917b5336e398394.jpg', 13.9, CAST(N'2023-12-06' AS Date), CAST(N'2023-12-06' AS Date), 2)
INSERT [dbo].[Product] ([Product_id], [Product_name], [Quantity], [Unit], [Status], [Supplier_id], [Describe], [photo], [Price], [Created_at], [Updated_at], [CategoryID]) VALUES (N'DTL', N'Dao Thai Lan', 20, N'box', N'stocking', N'sup_htk', N'Handy Thai knives make your housework more quick and convenient. The solid stainless steel blade, sharp, helps you easily cut and slice food, ensuring hygiene and health safety for loved ones during meals.
- Multi-purpose blade design, so it can be used to store, peel, trim ... all.
- For those who cook, knives are always one of the essential and multi-functional tools.
- Good knives, will help the food preparation process quickly, beautifully and cooking becomes easier. Depending on the intended use of the family, you will decide which knife to choose.', N'dao-thai-lan-ee.jpg', 2.11, CAST(N'2023-12-06' AS Date), CAST(N'2023-12-06' AS Date), 1)
INSERT [dbo].[Product] ([Product_id], [Product_name], [Quantity], [Unit], [Status], [Supplier_id], [Describe], [photo], [Price], [Created_at], [Updated_at], [CategoryID]) VALUES (N'DTN', N'Dao Thai Nhat', 0, N'box', N'out of stock', N'sup_htk', N'Super durable: The blade is made of the best Molybdenum-Vanadium stainless steel, so it is very hard and will not corrode. Carton: 1 carton has 30 pieces
Dimensions: blade length 17.5cm, handle length: 12cm, blade width 4.5
Ensure hygiene: The blade and handle are molded in one piece, so food can''t stick to it, easy to clean.
Distributor : Trung Hanh', N'284534-dao-thai-thit-ca-harima-fc-gyutou-240mm-tieu-chuan-nhat.jpg', 1.1, CAST(N'2023-12-06' AS Date), CAST(N'2023-12-06' AS Date), 1)
INSERT [dbo].[Product] ([Product_id], [Product_name], [Quantity], [Unit], [Status], [Supplier_id], [Describe], [photo], [Price], [Created_at], [Updated_at], [CategoryID]) VALUES (N'DUAHG-A7', N'Ðua go kham', 100, N'bin', N'stocking', N'sup_hbx', N'Material: Natural wooden chopsticks
Type: Natural Bamboo
Details: 1 carton of 180 blisters
Brand: Mr. Apple
Made in Viet Nam', N'd198c4aaf6c5454e81f60ea89eccc7b4.webp', 1.26, CAST(N'2023-12-06' AS Date), CAST(N'2023-12-06' AS Date), 1)
INSERT [dbo].[Product] ([Product_id], [Product_name], [Quantity], [Unit], [Status], [Supplier_id], [Describe], [photo], [Price], [Created_at], [Updated_at], [CategoryID]) VALUES (N'GIAYTQ', N'Thung Giay An Gau Truc Sipiao', 30, N'bin', N'stocking', N'sup_hnt', N'Paper made entirely from virgin bamboo pulp, unbleached, so it only has the ivory whiteness like the bamboo body, not as white as ordinary paper. Has natural toughness, water absorption does not tear, sling, mothers absorb water to use instead of wet towels for babies. It''s very safe. A 3-layer sheet-moisture-proof-tear-resistant-high pressure resistant.', N'9c6d5026d54ed0cd6121eae191fb75c3.jpg', 6.11, CAST(N'2023-12-06' AS Date), CAST(N'2023-12-06' AS Date), 3)
INSERT [dbo].[Product] ([Product_id], [Product_name], [Quantity], [Unit], [Status], [Supplier_id], [Describe], [photo], [Price], [Created_at], [Updated_at], [CategoryID]) VALUES (N'HC01', N'Chen com Su HC01 Trang', 20, N'	bin	', N'stocking', N'sup_bvc', N'Material: ceramic
Dimensions: Diameter 10.5cm x height 5cm x bottom diameter 4.5cm
Details: Plain white, simple and traditional
Brand: Hao Canh
Origin : Vietnam', N'chen-com-su-hao-canh-hc01-trang-202009162121057193.jpg', 12.64, CAST(N'2023-12-06' AS Date), CAST(N'2023-12-06' AS Date), 1)
INSERT [dbo].[Product] ([Product_id], [Product_name], [Quantity], [Unit], [Status], [Supplier_id], [Describe], [photo], [Price], [Created_at], [Updated_at], [CategoryID]) VALUES (N'HNDTP', N'Hop Nhua Ðung Thuc Pham', 5, N'box', N'stocking', N'sup_tnv', N'Material: high quality virgin plastic, odorless, good heat resistance, safe for health
- Size :
+ Small: 8000ML, 18.8 x 11.2 x 8.1 cm
+ Medium: 2000ML, 22.1 x 14.6 x 9.9 cm
+ Large: 3500ML, 25.5 x 18.0 x 11.7 cm
Color: transparent body green border
The set of food containers has 3 sizes: small, medium, large
Details: containers for cooked food, raw food, rice containers, food storage boxes in the refrigerator, dry food containers...
Brand : SmartChoice
Origin: China', N'e1d14ee6c0551b950afcf9aa268642d4.jpg', 8.21, CAST(N'2023-12-06' AS Date), CAST(N'2023-12-06' AS Date), 1)
INSERT [dbo].[Product] ([Product_id], [Product_name], [Quantity], [Unit], [Status], [Supplier_id], [Describe], [photo], [Price], [Created_at], [Updated_at], [CategoryID]) VALUES (N'HTD1055', N'Am Sieu Toc (1.5L)', 20, N'bin', N'stocking', N'sup_hnt', N'Material Stainless steel
Capacity: 1.5 l
Power: 15000w
Weight: 0.74kg
Details: 1 bag of 100 pieces
Brand : SUNHOUSE
Origin: China', N'OIP.jpg', 5.01, CAST(N'2023-12-06' AS Date), CAST(N'2023-12-06' AS Date), 1)
INSERT [dbo].[Product] ([Product_id], [Product_name], [Quantity], [Unit], [Status], [Supplier_id], [Describe], [photo], [Price], [Created_at], [Updated_at], [CategoryID]) VALUES (N'INOX_CB', N'Chan Bat 2 Tang Dung', 30, N'(s)', N'stocking', N'sup_hnt', N'Material: 304 stainless steel, safe and durable with time
Dimensions: - Length 58cm Width 28cm Height 48cm
Details: 2-tier design, one layer for plates and one for convenient bowls
Brand : OEM
Origin : Vietnam', N'e30b13763cc4d7ead6c63392ed8421b9.jpg', 10.53, CAST(N'2023-12-06' AS Date), CAST(N'2023-12-06' AS Date), 3)
INSERT [dbo].[Product] ([Product_id], [Product_name], [Quantity], [Unit], [Status], [Supplier_id], [Describe], [photo], [Price], [Created_at], [Updated_at], [CategoryID]) VALUES (N'KC3', N'Ky Cong 3 Chen Men', 6, N'(s)', N'stocking', N'sup_tnv', N'Material: ceramic
Set : 3 cups
- Pattern: DRAGON
  Personality: ROAD
Details: Plain white glaze is the oldest type of enamel in Bat Trang craft village, since the 14th century it has been widely used in kilns in the craft village. Workers use blue glaze to cover the outside of ceramics and use brushes as tools to draw on ceramics to create beautiful and aesthetically pleasing products.
Brand : Phung Gia Ceramics
Origin : Vietnam', N'ky-3-chen-2.jpg', 6.32, CAST(N'2023-12-06' AS Date), CAST(N'2023-12-06' AS Date), 2)
INSERT [dbo].[Product] ([Product_id], [Product_name], [Quantity], [Unit], [Status], [Supplier_id], [Describe], [photo], [Price], [Created_at], [Updated_at], [CategoryID]) VALUES (N'KDL_3T', N'Ke Da Nang 3 Tang ', 20, N'(s)', N'stocking', N'sup_hnt', N'Material: stainless steel
Size: 3 floors: 60x 34x34 - 5 kg
Color: black
Material: Multi-storey design, neat, with 360* wheels to move easily to keep your home space cool and clean.
Brand : OEM
Origin : Vietnam', N'78ee64ce13bdd4af98f65b96788c90e0.jpg"', 19.04, CAST(N'2023-12-06' AS Date), CAST(N'2023-12-06' AS Date), 3)
INSERT [dbo].[Product] ([Product_id], [Product_name], [Quantity], [Unit], [Status], [Supplier_id], [Describe], [photo], [Price], [Created_at], [Updated_at], [CategoryID]) VALUES (N'KDMT3', N'Ke dung dua muong dao', 3, N'bag', N'stocking', N'sup_hnt', N'Material: stainless steel
Color : Silver
Material: 304 stainless steel cutlery and chopsticks shelf with ceramic tile wall with high-quality water tray - with stickers and glue
Brand : HOBBY
Origin : Vietnam', N'3af7ad89be13b87f293222ec44b109ec.jpg', 13.44, CAST(N'2023-12-06' AS Date), CAST(N'2023-12-06' AS Date), 3)
INSERT [dbo].[Product] ([Product_id], [Product_name], [Quantity], [Unit], [Status], [Supplier_id], [Describe], [photo], [Price], [Created_at], [Updated_at], [CategoryID]) VALUES (N'KG_01', N'Ke Goc Dan Tuong', 30, N'(s)', N'stocking', N'sup_hnt', N'Material: High quality art iron
Details: 01 shelf and 2 stickers as shown in the picture, a necessary and convenient product for every family in optimizing the space of the kitchen as well as the bathroom to tidy up.
Brand : OEM
Origin: China', N'312c61a7702008cf45f2be06a1fa53b5.jpg', 2.19, CAST(N'2023-12-06' AS Date), CAST(N'2023-12-06' AS Date), 3)
INSERT [dbo].[Product] ([Product_id], [Product_name], [Quantity], [Unit], [Status], [Supplier_id], [Describe], [photo], [Price], [Created_at], [Updated_at], [CategoryID]) VALUES (N'KS-CH3522B', N'Thot Tre Tu Nhien ', 100, N'(s)', N'stocking', N'sup_hbx', N'Material: Natural bamboo cutting board
Type: Natural Bamboo
Dimensions: 35x22 cm
Brand : SUNHOUSE
Made in Viet Nam', N'Artboard 2 copy 5(17).jpg', 3.88, CAST(N'2023-12-06' AS Date), CAST(N'2023-12-06' AS Date), 1)
INSERT [dbo].[Product] ([Product_id], [Product_name], [Quantity], [Unit], [Status], [Supplier_id], [Describe], [photo], [Price], [Created_at], [Updated_at], [CategoryID]) VALUES (N'KS-WR45250H', N'Mang boc thuc pham', 200, N'box', N'stocking', N'sup_hbx', N'Material: high quality PVC
Details: chemical resistant and safe for health
Brand : SUNHOUSE
Made in Viet Nam', N'1(144).png', 15.04, CAST(N'2023-12-06' AS Date), CAST(N'2023-12-06' AS Date), 1)
INSERT [dbo].[Product] ([Product_id], [Product_name], [Quantity], [Unit], [Status], [Supplier_id], [Describe], [photo], [Price], [Created_at], [Updated_at], [CategoryID]) VALUES (N'LC4', N'Long Nuoi Cho Meo Bang Inox Size 4', 15, N'(s)', N'stocking', N'sup_tnv', N'Stainless steel dog cages are trusted by many people because of the following advantages:
No rust, sturdy, suitable for home decoration.
Not only a place to keep your dog, a dog house also helps you in training, controlling and protecting your pet.
- High durability, not rust like iron.
- High corrosion resistance so it is not affected by dog urine.
- High bearing capacity, stainless steel barn will be more durable than iron barn.
– Lighter weight but better durability, easy to move.
- Satisfying aesthetics, making luxurious interior decorations in the house.
Dimensions of the dog/cat cage (Width x Height x Depth):
Size 4: R45xC50xS35: Suitable for dogs under 4kg', N'3b3fae3d5412160ae9d5d3e27f969370.jpg', 10.74, CAST(N'2023-12-06' AS Date), CAST(N'2023-12-06' AS Date), 3)
INSERT [dbo].[Product] ([Product_id], [Product_name], [Quantity], [Unit], [Status], [Supplier_id], [Describe], [photo], [Price], [Created_at], [Updated_at], [CategoryID]) VALUES (N'MOE_HK1', N'Muong', 300, N'(s)', N'stocking', N'sup_hnt', N'Material: Stainless steel-thick
Dimensions: 17.5x5.5cm 62g Brand : OEM Origin: Hong Kong', N'2f2ecce00b0a0c49163d8b4030193a6e.jpg', 2.95, CAST(N'2023-12-06' AS Date), CAST(N'2023-12-06' AS Date), 1)
INSERT [dbo].[Product] ([Product_id], [Product_name], [Quantity], [Unit], [Status], [Supplier_id], [Describe], [photo], [Price], [Created_at], [Updated_at], [CategoryID]) VALUES (N'MTCX', N'Muoi Thung Can Xanh', 300, N'(s)', N'stocking', N'sup_htk', N'Material: stainless steel
Size: Length 31.5cm
?? Origin: Vietnam
?? Punch ladle and soup ladle with compact and handy size
?? Shiny appearance, easy to clean and sterilize
?? Has a convenient hanger', N'b2c8c04b2b44f42d3834905e799a6d43.jpg', 0.63, CAST(N'2023-12-06' AS Date), CAST(N'2023-12-06' AS Date), 1)
INSERT [dbo].[Product] ([Product_id], [Product_name], [Quantity], [Unit], [Status], [Supplier_id], [Describe], [photo], [Price], [Created_at], [Updated_at], [CategoryID]) VALUES (N'MTQA', N'Moc Treo Quan Ao ', 20, N'(s)', N'stocking', N'sup_tnv', N'Material: 304 . stainless steel
- Dimensions: 44 x 3 (cm)
Details: Wall mounted clothes hangers are indispensable accessories in the daily life of families. Not only limited to hanging clothes, you can use hooks to hang towels, hats, bags or other items very conveniently.
Brand: KHANH HOA
Origin : Vietnam', N'f098bf22c9e25c10425b54da270e3f29.jpg', 4.63, CAST(N'2023-12-06' AS Date), CAST(N'2023-12-06' AS Date), 3)
INSERT [dbo].[Product] ([Product_id], [Product_name], [Quantity], [Unit], [Status], [Supplier_id], [Describe], [photo], [Price], [Created_at], [Updated_at], [CategoryID]) VALUES (N'ND_L2', N'Noi Dat 2l ', 10, N'bin', N'stocking', N'sup_tnv', N'2 liter capacity
Dimensions: 25x20x13
  Convenient glass lid, easy to see the food inside, making it easier for you to cook
  Clean black color, easy to clean after use with luxurious design, make your kitchen more modern and comfortable.', N'8bc4071a96baddee27a3ff8ceae04b77.jpg', 4.63, CAST(N'2023-12-06' AS Date), CAST(N'2023-12-06' AS Date), 1)
INSERT [dbo].[Product] ([Product_id], [Product_name], [Quantity], [Unit], [Status], [Supplier_id], [Describe], [photo], [Price], [Created_at], [Updated_at], [CategoryID]) VALUES (N'NL_N2', N'Noi Lau 2 Ngan Inox Size 30cm', 30, N'(s)', N'stocking', N'sup_tnv', N'Material: Safe 304 stainless steel core
Size: diameter 30cm, height 7.5cm.
Details: Multi-function, convenient pot, 1 pot has 2 separate compartments so you can eat 2 hot pot dishes at once such as Thai hot pot, seafood hot pot...
Brand : OEM
Origin: Japan', N'8eddd9d1317f59f05f86e34fbda4a3cd.jpg', 6.28, CAST(N'2023-12-06' AS Date), CAST(N'2023-12-06' AS Date), 1)
INSERT [dbo].[Product] ([Product_id], [Product_name], [Quantity], [Unit], [Status], [Supplier_id], [Describe], [photo], [Price], [Created_at], [Updated_at], [CategoryID]) VALUES (N'SHG-MP14O', N'Noi Quay Bot', 200, N'(s)', N'stocking', N'sup_hbx', N'Material: A3003 . aluminum alloy
Type : 14cm - Orange
Details: Powder coated, Anti-Stick
Brand : SUNHOUSE
Made in Viet Nam', N'sunhouse-shg-mp14o.jpg', 6.28, CAST(N'2023-12-06' AS Date), CAST(N'2023-12-06' AS Date), 1)
INSERT [dbo].[Product] ([Product_id], [Product_name], [Quantity], [Unit], [Status], [Supplier_id], [Describe], [photo], [Price], [Created_at], [Updated_at], [CategoryID]) VALUES (N'SHG112026MGC', N'Cap Chao Chong Dinh Ðay ', 200, N'set', N'stocking', N'sup_hbx', N'Material: A3003 . aluminum alloy
Type : 14cm - Orange
Details: Powder coated, Anti-Stick
Brand : SUNHOUSE
Made in Viet Nam', N'1(295).jpg', 19.16, CAST(N'2023-12-06' AS Date), CAST(N'2023-12-06' AS Date), 1)
INSERT [dbo].[Product] ([Product_id], [Product_name], [Quantity], [Unit], [Status], [Supplier_id], [Describe], [photo], [Price], [Created_at], [Updated_at], [CategoryID]) VALUES (N'SHG2020', N'Bo Noi INOX 304 Ða Lop', 255, N'set', N'stocking', N'sup_hbx', N'Material: 3 layers: stainless steel 304 - aluminum - stainless steel 430, Number of pots :3
Size: Pot diameter: 18 - 22 - 26 cm , Pot body height: 10.5 - 13 - 16 cm , Pot wall thickness 0.2 cm
Brand : SUNHOUSE MAMA
Made in Viet Nam', N'1(58).png', 7.92, CAST(N'2023-12-06' AS Date), CAST(N'2023-12-06' AS Date), 1)
INSERT [dbo].[Product] ([Product_id], [Product_name], [Quantity], [Unit], [Status], [Supplier_id], [Describe], [photo], [Price], [Created_at], [Updated_at], [CategoryID]) VALUES (N'T01', N'Khay com 6 ngan ', 300, N'(s)', N'stocking', N'sup_hbx', N'Material: stainless steel
Dimensions: 34 x 27 x 3cm
Details: Office stainless steel rice tray, high-grade durable and beautiful
From China', N'R.jpg', 5.48, CAST(N'2023-12-06' AS Date), CAST(N'2023-12-06' AS Date), 3)
INSERT [dbo].[Product] ([Product_id], [Product_name], [Quantity], [Unit], [Status], [Supplier_id], [Describe], [photo], [Price], [Created_at], [Updated_at], [CategoryID]) VALUES (N'T02_HK2', N'Khay com', 20, N'bin', N'stocking', N'sup_hnt', N'Material Stainless steel
Dimensions: 26x21.5x6
Details: 1 carton of 30 pieces
Brand : OEM
Origin: Hong Kong', N'10eb6e6bb3b927dbe5d8c47f23481253.jpg', 6.28, CAST(N'2023-12-06' AS Date), CAST(N'2023-12-06' AS Date), 3)
INSERT [dbo].[Product] ([Product_id], [Product_name], [Quantity], [Unit], [Status], [Supplier_id], [Describe], [photo], [Price], [Created_at], [Updated_at], [CategoryID]) VALUES (N'T03_HK3', N'Khay lau', 20, N'bag', N'stocking', N'sup_hnt', N'Material Stainless steel
Diameter: 47x31cm.
Depth: 6cm
Details: 1 bag of 100 pieces
Origin : Vietnam', N'1-6252edc7-e7cc-4314-bd1d-46d6056d1b39.webp', 3.79, CAST(N'2023-12-06' AS Date), CAST(N'2023-12-06' AS Date), 3)
INSERT [dbo].[Product] ([Product_id], [Product_name], [Quantity], [Unit], [Status], [Supplier_id], [Describe], [photo], [Price], [Created_at], [Updated_at], [CategoryID]) VALUES (N'VL', N'Vot Lau', 200, N'(s)', N'stocking', N'sup_htk', N'Material: shiny stainless steel, stainless
Color: stainless steel silver
Size: handle length 20-22cm depending on size 12-16-18-20cm
The handle is also a hanger, effective anti-slip design, making it easy to manipulate during processing as well as when needing to be stored.
Safe with food and users'' health', N'a222d52f38c40b538f5680e84c969617.jpg', 0.97, CAST(N'2023-12-06' AS Date), CAST(N'2023-12-06' AS Date), 1)
INSERT [dbo].[Product] ([Product_id], [Product_name], [Quantity], [Unit], [Status], [Supplier_id], [Describe], [photo], [Price], [Created_at], [Updated_at], [CategoryID]) VALUES (N'XL_01', N' Xeng Lat Thuc Pham	', 200, N'(s)', N'stocking', N'sup_hnt', N'Material: stainless steel
Dimensions: 26 x 7.5 x 10.5 cm
Color: 120g
Material: With smart design, specialized tongs for fried foods such as fried fish, grilled meat, steak, without worrying about heat or burning hands
Brand : OEM
Origin : Vietnam', N'f58903eb2b0ea47e6e61cfbc24d96d9c.jpg', 1.9, CAST(N'2023-12-06' AS Date), CAST(N'2023-12-06' AS Date), 1)
INSERT [dbo].[Product] ([Product_id], [Product_name], [Quantity], [Unit], [Status], [Supplier_id], [Describe], [photo], [Price], [Created_at], [Updated_at], [CategoryID]) VALUES (N'XL_02', N'Xeng Inox Chien Xao', 200, N'(s)', N'stocking', N'sup_htk', N'Material: Shiny stainless steel, durable, not rust
- Dimensions: Length 28.5cm
- Uses: Used to fry, stir-fry food
- Utilities: With hanging hole', N'20d7cadd4ef4b46ec1c2ced70fc27399.jpg', 0.42, CAST(N'2023-12-06' AS Date), CAST(N'2023-12-06' AS Date), 1)
GO
INSERT [dbo].[Supplier] ([Supplier_id], [Supplier_name], [Address], [Phone], [City]) VALUES (N'sup_bvc', N'Vu Cong Bung', N'Trang Ha - Tu Son', N'0989582422', N'Tu Son')
INSERT [dbo].[Supplier] ([Supplier_id], [Supplier_name], [Address], [Phone], [City]) VALUES (N'sup_hbx', N'Bui Xuan Hong', N'khu 2 Hoàng Thu?ng-Thanh Ba', N'0707420453', N'Ha Noi')
INSERT [dbo].[Supplier] ([Supplier_id], [Supplier_name], [Address], [Phone], [City]) VALUES (N'sup_hnt', N'Nguyen Trung Hanh', N'Chí Linh - H?i Duong', N'0839609833', N'Hai Duong')
INSERT [dbo].[Supplier] ([Supplier_id], [Supplier_name], [Address], [Phone], [City]) VALUES (N'sup_htk', N'Tran Khanh Hoa', N'Trang Ha - Tu Son', N'0981181319', N'Tu Son')
INSERT [dbo].[Supplier] ([Supplier_id], [Supplier_name], [Address], [Phone], [City]) VALUES (N'sup_laptop', N'laptop', N'Lung Hoa, Vinh Tuong', N'0862700409', N'Vinh Phuc')
INSERT [dbo].[Supplier] ([Supplier_id], [Supplier_name], [Address], [Phone], [City]) VALUES (N'sup_tnv', N'Nguyen Van Tuyen', N'	Thôn 3 - Th?ch Th?t', N'0986628588', N'Ha Tay1')
GO
SET IDENTITY_INSERT [dbo].[Users] ON 

INSERT [dbo].[Users] ([User_id], [Displayname], [FullName], [Username], [Password], [Status], [Address], [Email], [Phone], [Role], [Admin_userid]) VALUES (1, N'Admin_ngu_si', N'NamNH', N'Admin', N'686868', 1, N'BN', N'haidphe163906@fpt.edu.vn', N'0327033756', N'admin', NULL)
INSERT [dbo].[Users] ([User_id], [Displayname], [FullName], [Username], [Password], [Status], [Address], [Email], [Phone], [Role], [Admin_userid]) VALUES (2, N'St_anv', N'Nguyen Van A', N'NguyenA', N'123', 1, N'BN', N'nguyenA@gmail.com', N'0978901706', N'staff', 1)
INSERT [dbo].[Users] ([User_id], [Displayname], [FullName], [Username], [Password], [Status], [Address], [Email], [Phone], [Role], [Admin_userid]) VALUES (3, N'St_btq', N'Tran Quoc B', N'TranB', N'456', 1, N'HN', N'tranB@gmail.com', N'0982026529', N'staff', 1)
INSERT [dbo].[Users] ([User_id], [Displayname], [FullName], [Username], [Password], [Status], [Address], [Email], [Phone], [Role], [Admin_userid]) VALUES (4, N'St_cdc', N'Dinh Cong C', N'DinhC', N'789', 0, N'BG', N'dinhC@gmail.com', N'0129666888', N'staff', 1)
INSERT [dbo].[Users] ([User_id], [Displayname], [FullName], [Username], [Password], [Status], [Address], [Email], [Phone], [Role], [Admin_userid]) VALUES (5, N'St_dht', N'Hoang Thi D', N'HoangD', N'10JQ', 0, N'CB', N'hoangD@gmail.com', N'0948778888', N'staff', 1)
SET IDENTITY_INSERT [dbo].[Users] OFF
GO
ALTER TABLE [dbo].[Product] ADD  DEFAULT (getdate()) FOR [Created_at]
GO
ALTER TABLE [dbo].[Product] ADD  DEFAULT (getdate()) FOR [Updated_at]
GO
ALTER TABLE [dbo].[Users] ADD  DEFAULT ((0)) FOR [Status]
GO
ALTER TABLE [dbo].[Customers]  WITH CHECK ADD  CONSTRAINT [foreign_key_memberlevel_cus] FOREIGN KEY([Membership_id])
REFERENCES [dbo].[MemberLevel] ([Membership_id])
GO
ALTER TABLE [dbo].[Customers] CHECK CONSTRAINT [foreign_key_memberlevel_cus]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [foreign_key_Order_customer] FOREIGN KEY([Customer_id])
REFERENCES [dbo].[Customers] ([Customer_id])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [foreign_key_Order_customer]
GO
ALTER TABLE [dbo].[Order detail]  WITH CHECK ADD  CONSTRAINT [foreign_key_ord_ord] FOREIGN KEY([Order_id])
REFERENCES [dbo].[Order] ([Order_id])
GO
ALTER TABLE [dbo].[Order detail] CHECK CONSTRAINT [foreign_key_ord_ord]
GO
ALTER TABLE [dbo].[Order detail]  WITH CHECK ADD  CONSTRAINT [foreign_key_pro_ord] FOREIGN KEY([Product_id])
REFERENCES [dbo].[Product] ([Product_id])
GO
ALTER TABLE [dbo].[Order detail] CHECK CONSTRAINT [foreign_key_pro_ord]
GO
ALTER TABLE [dbo].[Order detail]  WITH CHECK ADD  CONSTRAINT [foreign_key_User_order] FOREIGN KEY([User_id])
REFERENCES [dbo].[Users] ([User_id])
ON UPDATE CASCADE
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[Order detail] CHECK CONSTRAINT [foreign_key_User_order]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [foreign_key_Category_prd] FOREIGN KEY([CategoryID])
REFERENCES [dbo].[Category] ([CategoryID])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [foreign_key_Category_prd]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [foreign_key_pro_sup] FOREIGN KEY([Supplier_id])
REFERENCES [dbo].[Supplier] ([Supplier_id])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [foreign_key_pro_sup]
GO
ALTER TABLE [dbo].[Users]  WITH CHECK ADD  CONSTRAINT [foreign_key_user_user] FOREIGN KEY([Admin_userid])
REFERENCES [dbo].[Users] ([User_id])
GO
ALTER TABLE [dbo].[Users] CHECK CONSTRAINT [foreign_key_user_user]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [chk_status] CHECK  (([Status]='out of stock' OR [Status]='stocking'))
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [chk_status]
GO
ALTER TABLE [dbo].[Users]  WITH CHECK ADD  CONSTRAINT [CK_Role] CHECK  (([Role]='staff' OR [Role]='admin'))
GO
ALTER TABLE [dbo].[Users] CHECK CONSTRAINT [CK_Role]
GO
USE [master]
GO
ALTER DATABASE [Assgin_PRJ301] SET  READ_WRITE 
GO
