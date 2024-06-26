USE [MyPham]
GO
/****** Object:  Table [dbo].[AccessTimesCount]    Script Date: 12/31/2023 4:57:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AccessTimesCount](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Date] [datetime] NOT NULL,
	[AccessTimes] [int] NOT NULL,
 CONSTRAINT [PK_dbo.AccessTimesCount] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Age]    Script Date: 12/31/2023 4:57:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Age](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](256) NULL,
	[SEOKeyword] [nvarchar](256) NULL,
 CONSTRAINT [PK_dbo.Ages] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Decentralization]    Script Date: 12/31/2023 4:57:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Decentralization](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[RoleID] [int] NOT NULL,
	[Note] [nvarchar](max) NULL,
	[UserTypeID] [int] NOT NULL,
 CONSTRAINT [PK_dbo.Decentralization] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DiscountCode]    Script Date: 12/31/2023 4:57:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DiscountCode](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ExpirationDate] [datetime] NULL,
	[NumberDiscount] [int] NULL,
	[UserID] [int] NULL,
	[IsActive] [bit] NULL,
 CONSTRAINT [PK_DiscountCode] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DiscountCodeDetail]    Script Date: 12/31/2023 4:57:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DiscountCodeDetail](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[DiscountCodeID] [int] NULL,
	[Code] [nvarchar](20) NULL,
	[IsUsed] [bit] NULL,
	[IsOwned] [bit] NULL,
 CONSTRAINT [PK_DiscountCodeDetail] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Gender]    Script Date: 12/31/2023 4:57:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Gender](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](256) NULL,
 CONSTRAINT [PK_dbo.Gender] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ImportCoupon]    Script Date: 12/31/2023 4:57:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ImportCoupon](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Date] [datetime] NOT NULL,
	[IsDelete] [bit] NOT NULL,
	[UserID] [int] NOT NULL,
	[SupplierID] [int] NOT NULL,
 CONSTRAINT [PK_dbo.ImportCoupon] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ImportCouponDetail]    Script Date: 12/31/2023 4:57:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ImportCouponDetail](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ImportCouponID] [int] NOT NULL,
	[ProductID] [int] NOT NULL,
	[Price] [int] NOT NULL,
	[Quantity] [int] NOT NULL,
 CONSTRAINT [PK_dbo.ImportCouponDetail] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ItemCart]    Script Date: 12/31/2023 4:57:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ItemCart](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[UserID] [int] NOT NULL,
	[ProductID] [int] NOT NULL,
	[Quantity] [int] NOT NULL,
	[Total] [decimal](18, 2) NOT NULL,
 CONSTRAINT [PK_dbo.Cart] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Message]    Script Date: 12/31/2023 4:57:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Message](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[FromUserID] [int] NULL,
	[ToUserID] [int] NULL,
	[Content] [nvarchar](500) NULL,
	[CreatedDate] [datetime] NULL,
	[Sent] [bit] NULL,
 CONSTRAINT [PK_Message] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order]    Script Date: 12/31/2023 4:57:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[UserID] [int] NOT NULL,
	[DateOrder] [datetime] NOT NULL,
	[DateShip] [datetime] NOT NULL,
	[Offer] [int] NOT NULL,
	[IsPaid] [bit] NOT NULL,
	[IsCancel] [bit] NOT NULL,
	[IsDelete] [bit] NOT NULL,
	[IsDelivere] [bit] NOT NULL,
	[IsApproved] [bit] NOT NULL,
	[IsReceived] [bit] NOT NULL,
	[Total] [decimal](18, 0) NULL,
 CONSTRAINT [PK_dbo.Order] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderDetail]    Script Date: 12/31/2023 4:57:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetail](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[OrderID] [int] NOT NULL,
	[ProductID] [int] NOT NULL,
	[Quantity] [int] NOT NULL,
	[Price] [decimal](18, 2) NOT NULL,
	[IsRating] [bit] NOT NULL,
 CONSTRAINT [PK_dbo.OrderDetail] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Producer]    Script Date: 12/31/2023 4:57:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Producer](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](256) NULL,
	[IsActive] [bit] NOT NULL,
	[SEOKeyword] [nvarchar](256) NULL,
 CONSTRAINT [PK_dbo.Producer] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductCategory]    Script Date: 12/31/2023 4:57:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductCategory](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](256) NULL,
	[IsActive] [bit] NOT NULL,
	[LastUpdatedDate] [datetime] NOT NULL,
	[ParentID] [int] NOT NULL,
	[SEOKeyword] [nvarchar](256) NULL,
 CONSTRAINT [PK_dbo.ProductCategory] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductCategoryParent]    Script Date: 12/31/2023 4:57:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductCategoryParent](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](256) NULL,
	[SeoKeyword] [nvarchar](256) NULL,
 CONSTRAINT [PK_dbo.ProductCategoryParent] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 12/31/2023 4:57:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](256) NOT NULL,
	[CategoryID] [int] NOT NULL,
	[Image1] [nvarchar](256) NULL,
	[Image2] [nvarchar](256) NULL,
	[Image3] [nvarchar](256) NULL,
	[Image4] [nvarchar](256) NULL,
	[Price] [decimal](18, 2) NOT NULL,
	[PromotionPrice] [decimal](18, 2) NOT NULL,
	[Quantity] [int] NOT NULL,
	[Description] [nvarchar](max) NULL,
	[ViewCount] [int] NULL,
	[PurchasedCount] [int] NULL,
	[ProducerID] [int] NOT NULL,
	[IsActive] [bit] NOT NULL,
	[LastUpdatedDate] [datetime] NOT NULL,
	[AgeID] [int] NOT NULL,
	[GenderID] [int] NOT NULL,
	[Discount] [int] NOT NULL,
	[SEOKeyword] [nvarchar](256) NULL,
 CONSTRAINT [PK_dbo.Products] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductViewed]    Script Date: 12/31/2023 4:57:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductViewed](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[UserID] [int] NOT NULL,
	[ProductID] [int] NOT NULL,
	[Date] [datetime] NOT NULL,
 CONSTRAINT [PK_dbo.ProductViewed] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[QA]    Script Date: 12/31/2023 4:57:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QA](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ProductID] [int] NOT NULL,
	[UserAskID] [int] NOT NULL,
	[Status] [bit] NOT NULL,
	[Question] [nvarchar](1000) NULL,
	[Answer] [nvarchar](1000) NULL,
	[DateQuestion] [datetime] NULL,
	[DateAnswer] [datetime] NULL,
	[UserAnswerID] [int] NOT NULL,
 CONSTRAINT [PK_dbo.QA] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Rating]    Script Date: 12/31/2023 4:57:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Rating](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ProductID] [int] NOT NULL,
	[UserID] [int] NOT NULL,
	[Star] [int] NOT NULL,
	[Content] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.Rating] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 12/31/2023 4:57:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[NameDisplay] [nvarchar](50) NULL,
 CONSTRAINT [PK_dbo.Role] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Supplier]    Script Date: 12/31/2023 4:57:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Supplier](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](256) NULL,
	[Address] [nvarchar](max) NULL,
	[Phone] [nvarchar](max) NULL,
	[Email] [nvarchar](max) NULL,
	[IsActive] [bit] NOT NULL,
	[LastUpdatedDate] [datetime] NOT NULL,
	[TotalAmount] [decimal](18, 0) NULL,
 CONSTRAINT [PK_dbo.Supplier] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 12/31/2023 4:57:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[UserTypeID] [int] NOT NULL,
	[Password] [nvarchar](max) NULL,
	[FullName] [nvarchar](max) NULL,
	[Address] [nvarchar](max) NULL,
	[Email] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[Capcha] [nvarchar](max) NULL,
	[AmountPurchased] [decimal](18, 0) NULL,
	[Avatar] [nvarchar](max) NULL,
	[IsDeleted] [bit] NULL,
 CONSTRAINT [PK_dbo.User] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserDiscountCode]    Script Date: 12/31/2023 4:57:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserDiscountCode](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[UserID] [int] NULL,
	[DiscountCodeDetailID] [int] NULL,
 CONSTRAINT [PK_UserDiscountCode] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UsersSpin]    Script Date: 12/31/2023 4:57:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UsersSpin](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[UserID] [int] NULL,
	[NumberOfSpins] [int] NULL,
 CONSTRAINT [PK_UsersSpin] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserType]    Script Date: 12/31/2023 4:57:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserType](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](256) NULL,
 CONSTRAINT [PK_dbo.UserType] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Decentralization] ADD  DEFAULT ((0)) FOR [UserTypeID]
GO
ALTER TABLE [dbo].[ImportCoupon] ADD  DEFAULT ((0)) FOR [UserID]
GO
ALTER TABLE [dbo].[ImportCoupon] ADD  DEFAULT ((0)) FOR [SupplierID]
GO
ALTER TABLE [dbo].[Order] ADD  DEFAULT ((0)) FOR [IsDelivere]
GO
ALTER TABLE [dbo].[Order] ADD  DEFAULT ((0)) FOR [IsApproved]
GO
ALTER TABLE [dbo].[Order] ADD  DEFAULT ((0)) FOR [IsReceived]
GO
ALTER TABLE [dbo].[OrderDetail] ADD  DEFAULT ((0)) FOR [IsRating]
GO
ALTER TABLE [dbo].[Producer] ADD  DEFAULT ((0)) FOR [IsActive]
GO
ALTER TABLE [dbo].[ProductCategory] ADD  DEFAULT ((0)) FOR [ParentID]
GO
ALTER TABLE [dbo].[Products] ADD  CONSTRAINT [DF__Products__AgeID__0D7A0286]  DEFAULT ((0)) FOR [AgeID]
GO
ALTER TABLE [dbo].[Products] ADD  CONSTRAINT [DF__Products__Gender__1AD3FDA4]  DEFAULT ((0)) FOR [GenderID]
GO
ALTER TABLE [dbo].[Products] ADD  CONSTRAINT [DF__Products__Discou__1CBC4616]  DEFAULT ((0)) FOR [Discount]
GO
ALTER TABLE [dbo].[ProductViewed] ADD  DEFAULT ('1900-01-01T00:00:00.000') FOR [Date]
GO
ALTER TABLE [dbo].[QA] ADD  CONSTRAINT [DF__QA__DateQuestion__41B8C09B]  DEFAULT ('1900-01-01T00:00:00.000') FOR [DateQuestion]
GO
ALTER TABLE [dbo].[QA] ADD  CONSTRAINT [DF__QA__DateAnswer__42ACE4D4]  DEFAULT ('1900-01-01T00:00:00.000') FOR [DateAnswer]
GO
ALTER TABLE [dbo].[Supplier] ADD  DEFAULT ((0)) FOR [IsActive]
GO
ALTER TABLE [dbo].[Supplier] ADD  DEFAULT ('1900-01-01T00:00:00.000') FOR [LastUpdatedDate]
GO
ALTER TABLE [dbo].[User] ADD  DEFAULT ((0)) FOR [UserTypeID]
GO
ALTER TABLE [dbo].[Decentralization]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Decentralization_dbo.Role_RoleID] FOREIGN KEY([RoleID])
REFERENCES [dbo].[Role] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Decentralization] CHECK CONSTRAINT [FK_dbo.Decentralization_dbo.Role_RoleID]
GO
ALTER TABLE [dbo].[Decentralization]  WITH CHECK ADD  CONSTRAINT [FK_Decentralization_UserType] FOREIGN KEY([UserTypeID])
REFERENCES [dbo].[UserType] ([ID])
GO
ALTER TABLE [dbo].[Decentralization] CHECK CONSTRAINT [FK_Decentralization_UserType]
GO
ALTER TABLE [dbo].[DiscountCode]  WITH CHECK ADD  CONSTRAINT [FK_DiscountCode_User] FOREIGN KEY([UserID])
REFERENCES [dbo].[User] ([ID])
GO
ALTER TABLE [dbo].[DiscountCode] CHECK CONSTRAINT [FK_DiscountCode_User]
GO
ALTER TABLE [dbo].[DiscountCodeDetail]  WITH CHECK ADD  CONSTRAINT [FK_DiscountCodeDetail_DiscountCode] FOREIGN KEY([DiscountCodeID])
REFERENCES [dbo].[DiscountCode] ([ID])
GO
ALTER TABLE [dbo].[DiscountCodeDetail] CHECK CONSTRAINT [FK_DiscountCodeDetail_DiscountCode]
GO
ALTER TABLE [dbo].[ImportCoupon]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ImportCoupon_dbo.Supplier_SupplierID] FOREIGN KEY([SupplierID])
REFERENCES [dbo].[Supplier] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ImportCoupon] CHECK CONSTRAINT [FK_dbo.ImportCoupon_dbo.Supplier_SupplierID]
GO
ALTER TABLE [dbo].[ImportCoupon]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ImportCoupon_dbo.User_UserID] FOREIGN KEY([UserID])
REFERENCES [dbo].[User] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ImportCoupon] CHECK CONSTRAINT [FK_dbo.ImportCoupon_dbo.User_UserID]
GO
ALTER TABLE [dbo].[ImportCouponDetail]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ImportCouponDetail_dbo.ImportCoupon_ImportCouponID] FOREIGN KEY([ImportCouponID])
REFERENCES [dbo].[ImportCoupon] ([ID])
GO
ALTER TABLE [dbo].[ImportCouponDetail] CHECK CONSTRAINT [FK_dbo.ImportCouponDetail_dbo.ImportCoupon_ImportCouponID]
GO
ALTER TABLE [dbo].[ImportCouponDetail]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ImportCouponDetail_dbo.Products_ProductID] FOREIGN KEY([ProductID])
REFERENCES [dbo].[Products] ([ID])
GO
ALTER TABLE [dbo].[ImportCouponDetail] CHECK CONSTRAINT [FK_dbo.ImportCouponDetail_dbo.Products_ProductID]
GO
ALTER TABLE [dbo].[ItemCart]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Cart_dbo.Products_ProductID] FOREIGN KEY([ProductID])
REFERENCES [dbo].[Products] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ItemCart] CHECK CONSTRAINT [FK_dbo.Cart_dbo.Products_ProductID]
GO
ALTER TABLE [dbo].[ItemCart]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Cart_dbo.User_UserID] FOREIGN KEY([UserID])
REFERENCES [dbo].[User] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ItemCart] CHECK CONSTRAINT [FK_dbo.Cart_dbo.User_UserID]
GO
ALTER TABLE [dbo].[Message]  WITH CHECK ADD FOREIGN KEY([FromUserID])
REFERENCES [dbo].[User] ([ID])
GO
ALTER TABLE [dbo].[Message]  WITH CHECK ADD FOREIGN KEY([ToUserID])
REFERENCES [dbo].[User] ([ID])
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD FOREIGN KEY([UserID])
REFERENCES [dbo].[User] ([ID])
GO
ALTER TABLE [dbo].[OrderDetail]  WITH CHECK ADD  CONSTRAINT [FK_dbo.OrderDetail_dbo.Order_OrderID] FOREIGN KEY([OrderID])
REFERENCES [dbo].[Order] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[OrderDetail] CHECK CONSTRAINT [FK_dbo.OrderDetail_dbo.Order_OrderID]
GO
ALTER TABLE [dbo].[OrderDetail]  WITH CHECK ADD  CONSTRAINT [FK_dbo.OrderDetail_dbo.Products_ProductID] FOREIGN KEY([ProductID])
REFERENCES [dbo].[Products] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[OrderDetail] CHECK CONSTRAINT [FK_dbo.OrderDetail_dbo.Products_ProductID]
GO
ALTER TABLE [dbo].[ProductCategory]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ProductCategory_dbo.ProductCategoryParent_ParentID] FOREIGN KEY([ParentID])
REFERENCES [dbo].[ProductCategoryParent] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ProductCategory] CHECK CONSTRAINT [FK_dbo.ProductCategory_dbo.ProductCategoryParent_ParentID]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Products_dbo.Ages_AgeID] FOREIGN KEY([AgeID])
REFERENCES [dbo].[Age] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_dbo.Products_dbo.Ages_AgeID]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Products_dbo.Gender_GenderID] FOREIGN KEY([GenderID])
REFERENCES [dbo].[Gender] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_dbo.Products_dbo.Gender_GenderID]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Products_dbo.Producer_ProducerID] FOREIGN KEY([ProducerID])
REFERENCES [dbo].[Producer] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_dbo.Products_dbo.Producer_ProducerID]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Products_dbo.ProductCategory_CategoryID] FOREIGN KEY([CategoryID])
REFERENCES [dbo].[ProductCategory] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_dbo.Products_dbo.ProductCategory_CategoryID]
GO
ALTER TABLE [dbo].[ProductViewed]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ProductViewed_dbo.Products_ProductID] FOREIGN KEY([ProductID])
REFERENCES [dbo].[Products] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ProductViewed] CHECK CONSTRAINT [FK_dbo.ProductViewed_dbo.Products_ProductID]
GO
ALTER TABLE [dbo].[ProductViewed]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ProductViewed_dbo.User_UserID] FOREIGN KEY([UserID])
REFERENCES [dbo].[User] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ProductViewed] CHECK CONSTRAINT [FK_dbo.ProductViewed_dbo.User_UserID]
GO
ALTER TABLE [dbo].[QA]  WITH CHECK ADD FOREIGN KEY([UserAnswerID])
REFERENCES [dbo].[User] ([ID])
GO
ALTER TABLE [dbo].[QA]  WITH CHECK ADD FOREIGN KEY([UserAskID])
REFERENCES [dbo].[User] ([ID])
GO
ALTER TABLE [dbo].[QA]  WITH CHECK ADD  CONSTRAINT [FK_dbo.QA_dbo.Products_ProductID] FOREIGN KEY([ProductID])
REFERENCES [dbo].[Products] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[QA] CHECK CONSTRAINT [FK_dbo.QA_dbo.Products_ProductID]
GO
ALTER TABLE [dbo].[Rating]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Rating_dbo.Products_ProductID] FOREIGN KEY([ProductID])
REFERENCES [dbo].[Products] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Rating] CHECK CONSTRAINT [FK_dbo.Rating_dbo.Products_ProductID]
GO
ALTER TABLE [dbo].[Rating]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Rating_dbo.User_UserID] FOREIGN KEY([UserID])
REFERENCES [dbo].[User] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Rating] CHECK CONSTRAINT [FK_dbo.Rating_dbo.User_UserID]
GO
ALTER TABLE [dbo].[User]  WITH CHECK ADD  CONSTRAINT [FK_dbo.User_dbo.UserType_UserTypeID] FOREIGN KEY([UserTypeID])
REFERENCES [dbo].[UserType] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[User] CHECK CONSTRAINT [FK_dbo.User_dbo.UserType_UserTypeID]
GO
ALTER TABLE [dbo].[UserDiscountCode]  WITH CHECK ADD  CONSTRAINT [FK_UserDiscountCode_DiscountCodeDetail] FOREIGN KEY([DiscountCodeDetailID])
REFERENCES [dbo].[DiscountCodeDetail] ([ID])
GO
ALTER TABLE [dbo].[UserDiscountCode] CHECK CONSTRAINT [FK_UserDiscountCode_DiscountCodeDetail]
GO
ALTER TABLE [dbo].[UserDiscountCode]  WITH CHECK ADD  CONSTRAINT [FK_UserDiscountCode_User] FOREIGN KEY([UserID])
REFERENCES [dbo].[User] ([ID])
GO
ALTER TABLE [dbo].[UserDiscountCode] CHECK CONSTRAINT [FK_UserDiscountCode_User]
GO
ALTER TABLE [dbo].[UsersSpin]  WITH CHECK ADD FOREIGN KEY([UserID])
REFERENCES [dbo].[User] ([ID])
GO
/****** Object:  StoredProcedure [dbo].[dbo_Message_05d44191-6886-4565-9712-8e5d14182cbc_QueueActivationSender]    Script Date: 12/31/2023 4:57:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[dbo_Message_05d44191-6886-4565-9712-8e5d14182cbc_QueueActivationSender] 
WITH EXECUTE AS SELF
AS 
BEGIN 
    SET NOCOUNT ON;
    DECLARE @h AS UNIQUEIDENTIFIER;
    DECLARE @mt NVARCHAR(200);

    RECEIVE TOP(1) @h = conversation_handle, @mt = message_type_name FROM [dbo].[dbo_Message_05d44191-6886-4565-9712-8e5d14182cbc_Sender];

    IF @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/EndDialog'
    BEGIN
        END CONVERSATION @h;
    END

    IF @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/DialogTimer' OR @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/Error'
    BEGIN 
        

        END CONVERSATION @h;

        DECLARE @conversation_handle UNIQUEIDENTIFIER;
        DECLARE @schema_id INT;
        SELECT @schema_id = schema_id FROM sys.schemas WITH (NOLOCK) WHERE name = N'dbo';

        
        IF EXISTS (SELECT * FROM sys.triggers WITH (NOLOCK) WHERE object_id = OBJECT_ID(N'[dbo].[tr_dbo_Message_05d44191-6886-4565-9712-8e5d14182cbc_Sender]')) DROP TRIGGER [dbo].[tr_dbo_Message_05d44191-6886-4565-9712-8e5d14182cbc_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_05d44191-6886-4565-9712-8e5d14182cbc_Sender') EXEC (N'ALTER QUEUE [dbo].[dbo_Message_05d44191-6886-4565-9712-8e5d14182cbc_Sender] WITH ACTIVATION (STATUS = OFF)');

        
        SELECT conversation_handle INTO #Conversations FROM sys.conversation_endpoints WITH (NOLOCK) WHERE far_service LIKE N'dbo_Message_05d44191-6886-4565-9712-8e5d14182cbc_%' ORDER BY is_initiator ASC;
        DECLARE conversation_cursor CURSOR FAST_FORWARD FOR SELECT conversation_handle FROM #Conversations;
        OPEN conversation_cursor;
        FETCH NEXT FROM conversation_cursor INTO @conversation_handle;
        WHILE @@FETCH_STATUS = 0 
        BEGIN
            END CONVERSATION @conversation_handle WITH CLEANUP;
            FETCH NEXT FROM conversation_cursor INTO @conversation_handle;
        END
        CLOSE conversation_cursor;
        DEALLOCATE conversation_cursor;
        DROP TABLE #Conversations;

        
        IF EXISTS (SELECT * FROM sys.services WITH (NOLOCK) WHERE name = N'dbo_Message_05d44191-6886-4565-9712-8e5d14182cbc_Receiver') DROP SERVICE [dbo_Message_05d44191-6886-4565-9712-8e5d14182cbc_Receiver];
        
        IF EXISTS (SELECT * FROM sys.services WITH (NOLOCK) WHERE name = N'dbo_Message_05d44191-6886-4565-9712-8e5d14182cbc_Sender') DROP SERVICE [dbo_Message_05d44191-6886-4565-9712-8e5d14182cbc_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_05d44191-6886-4565-9712-8e5d14182cbc_Receiver') DROP QUEUE [dbo].[dbo_Message_05d44191-6886-4565-9712-8e5d14182cbc_Receiver];
        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_05d44191-6886-4565-9712-8e5d14182cbc_Sender') DROP QUEUE [dbo].[dbo_Message_05d44191-6886-4565-9712-8e5d14182cbc_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_contracts WITH (NOLOCK) WHERE name = N'dbo_Message_05d44191-6886-4565-9712-8e5d14182cbc') DROP CONTRACT [dbo_Message_05d44191-6886-4565-9712-8e5d14182cbc];
        
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_05d44191-6886-4565-9712-8e5d14182cbc/StartMessage/Insert') DROP MESSAGE TYPE [dbo_Message_05d44191-6886-4565-9712-8e5d14182cbc/StartMessage/Insert];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_05d44191-6886-4565-9712-8e5d14182cbc/StartMessage/Update') DROP MESSAGE TYPE [dbo_Message_05d44191-6886-4565-9712-8e5d14182cbc/StartMessage/Update];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_05d44191-6886-4565-9712-8e5d14182cbc/StartMessage/Delete') DROP MESSAGE TYPE [dbo_Message_05d44191-6886-4565-9712-8e5d14182cbc/StartMessage/Delete];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_05d44191-6886-4565-9712-8e5d14182cbc/ID') DROP MESSAGE TYPE [dbo_Message_05d44191-6886-4565-9712-8e5d14182cbc/ID];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_05d44191-6886-4565-9712-8e5d14182cbc/ID/old') DROP MESSAGE TYPE [dbo_Message_05d44191-6886-4565-9712-8e5d14182cbc/ID/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_05d44191-6886-4565-9712-8e5d14182cbc/FromUserID') DROP MESSAGE TYPE [dbo_Message_05d44191-6886-4565-9712-8e5d14182cbc/FromUserID];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_05d44191-6886-4565-9712-8e5d14182cbc/FromUserID/old') DROP MESSAGE TYPE [dbo_Message_05d44191-6886-4565-9712-8e5d14182cbc/FromUserID/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_05d44191-6886-4565-9712-8e5d14182cbc/ToUserID') DROP MESSAGE TYPE [dbo_Message_05d44191-6886-4565-9712-8e5d14182cbc/ToUserID];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_05d44191-6886-4565-9712-8e5d14182cbc/ToUserID/old') DROP MESSAGE TYPE [dbo_Message_05d44191-6886-4565-9712-8e5d14182cbc/ToUserID/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_05d44191-6886-4565-9712-8e5d14182cbc/Content') DROP MESSAGE TYPE [dbo_Message_05d44191-6886-4565-9712-8e5d14182cbc/Content];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_05d44191-6886-4565-9712-8e5d14182cbc/Content/old') DROP MESSAGE TYPE [dbo_Message_05d44191-6886-4565-9712-8e5d14182cbc/Content/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_05d44191-6886-4565-9712-8e5d14182cbc/CreatedDate') DROP MESSAGE TYPE [dbo_Message_05d44191-6886-4565-9712-8e5d14182cbc/CreatedDate];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_05d44191-6886-4565-9712-8e5d14182cbc/CreatedDate/old') DROP MESSAGE TYPE [dbo_Message_05d44191-6886-4565-9712-8e5d14182cbc/CreatedDate/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_05d44191-6886-4565-9712-8e5d14182cbc/Sent') DROP MESSAGE TYPE [dbo_Message_05d44191-6886-4565-9712-8e5d14182cbc/Sent];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_05d44191-6886-4565-9712-8e5d14182cbc/Sent/old') DROP MESSAGE TYPE [dbo_Message_05d44191-6886-4565-9712-8e5d14182cbc/Sent/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_05d44191-6886-4565-9712-8e5d14182cbc/EndMessage') DROP MESSAGE TYPE [dbo_Message_05d44191-6886-4565-9712-8e5d14182cbc/EndMessage];

        
        IF EXISTS (SELECT * FROM sys.objects WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_05d44191-6886-4565-9712-8e5d14182cbc_QueueActivationSender') DROP PROCEDURE [dbo].[dbo_Message_05d44191-6886-4565-9712-8e5d14182cbc_QueueActivationSender];

        
    END
END
GO
/****** Object:  StoredProcedure [dbo].[dbo_Message_0736bd27-5a5b-4d56-b4f5-e8734597a1d8_QueueActivationSender]    Script Date: 12/31/2023 4:57:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[dbo_Message_0736bd27-5a5b-4d56-b4f5-e8734597a1d8_QueueActivationSender] 
WITH EXECUTE AS SELF
AS 
BEGIN 
    SET NOCOUNT ON;
    DECLARE @h AS UNIQUEIDENTIFIER;
    DECLARE @mt NVARCHAR(200);

    RECEIVE TOP(1) @h = conversation_handle, @mt = message_type_name FROM [dbo].[dbo_Message_0736bd27-5a5b-4d56-b4f5-e8734597a1d8_Sender];

    IF @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/EndDialog'
    BEGIN
        END CONVERSATION @h;
    END

    IF @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/DialogTimer' OR @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/Error'
    BEGIN 
        

        END CONVERSATION @h;

        DECLARE @conversation_handle UNIQUEIDENTIFIER;
        DECLARE @schema_id INT;
        SELECT @schema_id = schema_id FROM sys.schemas WITH (NOLOCK) WHERE name = N'dbo';

        
        IF EXISTS (SELECT * FROM sys.triggers WITH (NOLOCK) WHERE object_id = OBJECT_ID(N'[dbo].[tr_dbo_Message_0736bd27-5a5b-4d56-b4f5-e8734597a1d8_Sender]')) DROP TRIGGER [dbo].[tr_dbo_Message_0736bd27-5a5b-4d56-b4f5-e8734597a1d8_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_0736bd27-5a5b-4d56-b4f5-e8734597a1d8_Sender') EXEC (N'ALTER QUEUE [dbo].[dbo_Message_0736bd27-5a5b-4d56-b4f5-e8734597a1d8_Sender] WITH ACTIVATION (STATUS = OFF)');

        
        SELECT conversation_handle INTO #Conversations FROM sys.conversation_endpoints WITH (NOLOCK) WHERE far_service LIKE N'dbo_Message_0736bd27-5a5b-4d56-b4f5-e8734597a1d8_%' ORDER BY is_initiator ASC;
        DECLARE conversation_cursor CURSOR FAST_FORWARD FOR SELECT conversation_handle FROM #Conversations;
        OPEN conversation_cursor;
        FETCH NEXT FROM conversation_cursor INTO @conversation_handle;
        WHILE @@FETCH_STATUS = 0 
        BEGIN
            END CONVERSATION @conversation_handle WITH CLEANUP;
            FETCH NEXT FROM conversation_cursor INTO @conversation_handle;
        END
        CLOSE conversation_cursor;
        DEALLOCATE conversation_cursor;
        DROP TABLE #Conversations;

        
        IF EXISTS (SELECT * FROM sys.services WITH (NOLOCK) WHERE name = N'dbo_Message_0736bd27-5a5b-4d56-b4f5-e8734597a1d8_Receiver') DROP SERVICE [dbo_Message_0736bd27-5a5b-4d56-b4f5-e8734597a1d8_Receiver];
        
        IF EXISTS (SELECT * FROM sys.services WITH (NOLOCK) WHERE name = N'dbo_Message_0736bd27-5a5b-4d56-b4f5-e8734597a1d8_Sender') DROP SERVICE [dbo_Message_0736bd27-5a5b-4d56-b4f5-e8734597a1d8_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_0736bd27-5a5b-4d56-b4f5-e8734597a1d8_Receiver') DROP QUEUE [dbo].[dbo_Message_0736bd27-5a5b-4d56-b4f5-e8734597a1d8_Receiver];
        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_0736bd27-5a5b-4d56-b4f5-e8734597a1d8_Sender') DROP QUEUE [dbo].[dbo_Message_0736bd27-5a5b-4d56-b4f5-e8734597a1d8_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_contracts WITH (NOLOCK) WHERE name = N'dbo_Message_0736bd27-5a5b-4d56-b4f5-e8734597a1d8') DROP CONTRACT [dbo_Message_0736bd27-5a5b-4d56-b4f5-e8734597a1d8];
        
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_0736bd27-5a5b-4d56-b4f5-e8734597a1d8/StartMessage/Insert') DROP MESSAGE TYPE [dbo_Message_0736bd27-5a5b-4d56-b4f5-e8734597a1d8/StartMessage/Insert];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_0736bd27-5a5b-4d56-b4f5-e8734597a1d8/StartMessage/Update') DROP MESSAGE TYPE [dbo_Message_0736bd27-5a5b-4d56-b4f5-e8734597a1d8/StartMessage/Update];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_0736bd27-5a5b-4d56-b4f5-e8734597a1d8/StartMessage/Delete') DROP MESSAGE TYPE [dbo_Message_0736bd27-5a5b-4d56-b4f5-e8734597a1d8/StartMessage/Delete];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_0736bd27-5a5b-4d56-b4f5-e8734597a1d8/ID') DROP MESSAGE TYPE [dbo_Message_0736bd27-5a5b-4d56-b4f5-e8734597a1d8/ID];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_0736bd27-5a5b-4d56-b4f5-e8734597a1d8/ID/old') DROP MESSAGE TYPE [dbo_Message_0736bd27-5a5b-4d56-b4f5-e8734597a1d8/ID/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_0736bd27-5a5b-4d56-b4f5-e8734597a1d8/FromUserID') DROP MESSAGE TYPE [dbo_Message_0736bd27-5a5b-4d56-b4f5-e8734597a1d8/FromUserID];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_0736bd27-5a5b-4d56-b4f5-e8734597a1d8/FromUserID/old') DROP MESSAGE TYPE [dbo_Message_0736bd27-5a5b-4d56-b4f5-e8734597a1d8/FromUserID/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_0736bd27-5a5b-4d56-b4f5-e8734597a1d8/ToUserID') DROP MESSAGE TYPE [dbo_Message_0736bd27-5a5b-4d56-b4f5-e8734597a1d8/ToUserID];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_0736bd27-5a5b-4d56-b4f5-e8734597a1d8/ToUserID/old') DROP MESSAGE TYPE [dbo_Message_0736bd27-5a5b-4d56-b4f5-e8734597a1d8/ToUserID/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_0736bd27-5a5b-4d56-b4f5-e8734597a1d8/Content') DROP MESSAGE TYPE [dbo_Message_0736bd27-5a5b-4d56-b4f5-e8734597a1d8/Content];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_0736bd27-5a5b-4d56-b4f5-e8734597a1d8/Content/old') DROP MESSAGE TYPE [dbo_Message_0736bd27-5a5b-4d56-b4f5-e8734597a1d8/Content/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_0736bd27-5a5b-4d56-b4f5-e8734597a1d8/CreatedDate') DROP MESSAGE TYPE [dbo_Message_0736bd27-5a5b-4d56-b4f5-e8734597a1d8/CreatedDate];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_0736bd27-5a5b-4d56-b4f5-e8734597a1d8/CreatedDate/old') DROP MESSAGE TYPE [dbo_Message_0736bd27-5a5b-4d56-b4f5-e8734597a1d8/CreatedDate/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_0736bd27-5a5b-4d56-b4f5-e8734597a1d8/Sent') DROP MESSAGE TYPE [dbo_Message_0736bd27-5a5b-4d56-b4f5-e8734597a1d8/Sent];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_0736bd27-5a5b-4d56-b4f5-e8734597a1d8/Sent/old') DROP MESSAGE TYPE [dbo_Message_0736bd27-5a5b-4d56-b4f5-e8734597a1d8/Sent/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_0736bd27-5a5b-4d56-b4f5-e8734597a1d8/EndMessage') DROP MESSAGE TYPE [dbo_Message_0736bd27-5a5b-4d56-b4f5-e8734597a1d8/EndMessage];

        
        IF EXISTS (SELECT * FROM sys.objects WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_0736bd27-5a5b-4d56-b4f5-e8734597a1d8_QueueActivationSender') DROP PROCEDURE [dbo].[dbo_Message_0736bd27-5a5b-4d56-b4f5-e8734597a1d8_QueueActivationSender];

        
    END
END
GO
/****** Object:  StoredProcedure [dbo].[dbo_Message_27dc8b25-d940-4bfc-a202-4cf9c0ee739e_QueueActivationSender]    Script Date: 12/31/2023 4:57:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[dbo_Message_27dc8b25-d940-4bfc-a202-4cf9c0ee739e_QueueActivationSender] 
WITH EXECUTE AS SELF
AS 
BEGIN 
    SET NOCOUNT ON;
    DECLARE @h AS UNIQUEIDENTIFIER;
    DECLARE @mt NVARCHAR(200);

    RECEIVE TOP(1) @h = conversation_handle, @mt = message_type_name FROM [dbo].[dbo_Message_27dc8b25-d940-4bfc-a202-4cf9c0ee739e_Sender];

    IF @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/EndDialog'
    BEGIN
        END CONVERSATION @h;
    END

    IF @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/DialogTimer' OR @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/Error'
    BEGIN 
        

        END CONVERSATION @h;

        DECLARE @conversation_handle UNIQUEIDENTIFIER;
        DECLARE @schema_id INT;
        SELECT @schema_id = schema_id FROM sys.schemas WITH (NOLOCK) WHERE name = N'dbo';

        
        IF EXISTS (SELECT * FROM sys.triggers WITH (NOLOCK) WHERE object_id = OBJECT_ID(N'[dbo].[tr_dbo_Message_27dc8b25-d940-4bfc-a202-4cf9c0ee739e_Sender]')) DROP TRIGGER [dbo].[tr_dbo_Message_27dc8b25-d940-4bfc-a202-4cf9c0ee739e_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_27dc8b25-d940-4bfc-a202-4cf9c0ee739e_Sender') EXEC (N'ALTER QUEUE [dbo].[dbo_Message_27dc8b25-d940-4bfc-a202-4cf9c0ee739e_Sender] WITH ACTIVATION (STATUS = OFF)');

        
        SELECT conversation_handle INTO #Conversations FROM sys.conversation_endpoints WITH (NOLOCK) WHERE far_service LIKE N'dbo_Message_27dc8b25-d940-4bfc-a202-4cf9c0ee739e_%' ORDER BY is_initiator ASC;
        DECLARE conversation_cursor CURSOR FAST_FORWARD FOR SELECT conversation_handle FROM #Conversations;
        OPEN conversation_cursor;
        FETCH NEXT FROM conversation_cursor INTO @conversation_handle;
        WHILE @@FETCH_STATUS = 0 
        BEGIN
            END CONVERSATION @conversation_handle WITH CLEANUP;
            FETCH NEXT FROM conversation_cursor INTO @conversation_handle;
        END
        CLOSE conversation_cursor;
        DEALLOCATE conversation_cursor;
        DROP TABLE #Conversations;

        
        IF EXISTS (SELECT * FROM sys.services WITH (NOLOCK) WHERE name = N'dbo_Message_27dc8b25-d940-4bfc-a202-4cf9c0ee739e_Receiver') DROP SERVICE [dbo_Message_27dc8b25-d940-4bfc-a202-4cf9c0ee739e_Receiver];
        
        IF EXISTS (SELECT * FROM sys.services WITH (NOLOCK) WHERE name = N'dbo_Message_27dc8b25-d940-4bfc-a202-4cf9c0ee739e_Sender') DROP SERVICE [dbo_Message_27dc8b25-d940-4bfc-a202-4cf9c0ee739e_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_27dc8b25-d940-4bfc-a202-4cf9c0ee739e_Receiver') DROP QUEUE [dbo].[dbo_Message_27dc8b25-d940-4bfc-a202-4cf9c0ee739e_Receiver];
        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_27dc8b25-d940-4bfc-a202-4cf9c0ee739e_Sender') DROP QUEUE [dbo].[dbo_Message_27dc8b25-d940-4bfc-a202-4cf9c0ee739e_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_contracts WITH (NOLOCK) WHERE name = N'dbo_Message_27dc8b25-d940-4bfc-a202-4cf9c0ee739e') DROP CONTRACT [dbo_Message_27dc8b25-d940-4bfc-a202-4cf9c0ee739e];
        
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_27dc8b25-d940-4bfc-a202-4cf9c0ee739e/StartMessage/Insert') DROP MESSAGE TYPE [dbo_Message_27dc8b25-d940-4bfc-a202-4cf9c0ee739e/StartMessage/Insert];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_27dc8b25-d940-4bfc-a202-4cf9c0ee739e/StartMessage/Update') DROP MESSAGE TYPE [dbo_Message_27dc8b25-d940-4bfc-a202-4cf9c0ee739e/StartMessage/Update];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_27dc8b25-d940-4bfc-a202-4cf9c0ee739e/StartMessage/Delete') DROP MESSAGE TYPE [dbo_Message_27dc8b25-d940-4bfc-a202-4cf9c0ee739e/StartMessage/Delete];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_27dc8b25-d940-4bfc-a202-4cf9c0ee739e/ID') DROP MESSAGE TYPE [dbo_Message_27dc8b25-d940-4bfc-a202-4cf9c0ee739e/ID];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_27dc8b25-d940-4bfc-a202-4cf9c0ee739e/ID/old') DROP MESSAGE TYPE [dbo_Message_27dc8b25-d940-4bfc-a202-4cf9c0ee739e/ID/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_27dc8b25-d940-4bfc-a202-4cf9c0ee739e/FromUserID') DROP MESSAGE TYPE [dbo_Message_27dc8b25-d940-4bfc-a202-4cf9c0ee739e/FromUserID];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_27dc8b25-d940-4bfc-a202-4cf9c0ee739e/FromUserID/old') DROP MESSAGE TYPE [dbo_Message_27dc8b25-d940-4bfc-a202-4cf9c0ee739e/FromUserID/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_27dc8b25-d940-4bfc-a202-4cf9c0ee739e/ToUserID') DROP MESSAGE TYPE [dbo_Message_27dc8b25-d940-4bfc-a202-4cf9c0ee739e/ToUserID];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_27dc8b25-d940-4bfc-a202-4cf9c0ee739e/ToUserID/old') DROP MESSAGE TYPE [dbo_Message_27dc8b25-d940-4bfc-a202-4cf9c0ee739e/ToUserID/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_27dc8b25-d940-4bfc-a202-4cf9c0ee739e/Content') DROP MESSAGE TYPE [dbo_Message_27dc8b25-d940-4bfc-a202-4cf9c0ee739e/Content];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_27dc8b25-d940-4bfc-a202-4cf9c0ee739e/Content/old') DROP MESSAGE TYPE [dbo_Message_27dc8b25-d940-4bfc-a202-4cf9c0ee739e/Content/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_27dc8b25-d940-4bfc-a202-4cf9c0ee739e/CreatedDate') DROP MESSAGE TYPE [dbo_Message_27dc8b25-d940-4bfc-a202-4cf9c0ee739e/CreatedDate];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_27dc8b25-d940-4bfc-a202-4cf9c0ee739e/CreatedDate/old') DROP MESSAGE TYPE [dbo_Message_27dc8b25-d940-4bfc-a202-4cf9c0ee739e/CreatedDate/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_27dc8b25-d940-4bfc-a202-4cf9c0ee739e/Sent') DROP MESSAGE TYPE [dbo_Message_27dc8b25-d940-4bfc-a202-4cf9c0ee739e/Sent];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_27dc8b25-d940-4bfc-a202-4cf9c0ee739e/Sent/old') DROP MESSAGE TYPE [dbo_Message_27dc8b25-d940-4bfc-a202-4cf9c0ee739e/Sent/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_27dc8b25-d940-4bfc-a202-4cf9c0ee739e/EndMessage') DROP MESSAGE TYPE [dbo_Message_27dc8b25-d940-4bfc-a202-4cf9c0ee739e/EndMessage];

        
        IF EXISTS (SELECT * FROM sys.objects WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_27dc8b25-d940-4bfc-a202-4cf9c0ee739e_QueueActivationSender') DROP PROCEDURE [dbo].[dbo_Message_27dc8b25-d940-4bfc-a202-4cf9c0ee739e_QueueActivationSender];

        
    END
END
GO
/****** Object:  StoredProcedure [dbo].[dbo_Message_bb20ff31-f988-4393-8a89-4ea51e477f39_QueueActivationSender]    Script Date: 12/31/2023 4:57:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[dbo_Message_bb20ff31-f988-4393-8a89-4ea51e477f39_QueueActivationSender] 
WITH EXECUTE AS SELF
AS 
BEGIN 
    SET NOCOUNT ON;
    DECLARE @h AS UNIQUEIDENTIFIER;
    DECLARE @mt NVARCHAR(200);

    RECEIVE TOP(1) @h = conversation_handle, @mt = message_type_name FROM [dbo].[dbo_Message_bb20ff31-f988-4393-8a89-4ea51e477f39_Sender];

    IF @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/EndDialog'
    BEGIN
        END CONVERSATION @h;
    END

    IF @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/DialogTimer' OR @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/Error'
    BEGIN 
        

        END CONVERSATION @h;

        DECLARE @conversation_handle UNIQUEIDENTIFIER;
        DECLARE @schema_id INT;
        SELECT @schema_id = schema_id FROM sys.schemas WITH (NOLOCK) WHERE name = N'dbo';

        
        IF EXISTS (SELECT * FROM sys.triggers WITH (NOLOCK) WHERE object_id = OBJECT_ID(N'[dbo].[tr_dbo_Message_bb20ff31-f988-4393-8a89-4ea51e477f39_Sender]')) DROP TRIGGER [dbo].[tr_dbo_Message_bb20ff31-f988-4393-8a89-4ea51e477f39_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_bb20ff31-f988-4393-8a89-4ea51e477f39_Sender') EXEC (N'ALTER QUEUE [dbo].[dbo_Message_bb20ff31-f988-4393-8a89-4ea51e477f39_Sender] WITH ACTIVATION (STATUS = OFF)');

        
        SELECT conversation_handle INTO #Conversations FROM sys.conversation_endpoints WITH (NOLOCK) WHERE far_service LIKE N'dbo_Message_bb20ff31-f988-4393-8a89-4ea51e477f39_%' ORDER BY is_initiator ASC;
        DECLARE conversation_cursor CURSOR FAST_FORWARD FOR SELECT conversation_handle FROM #Conversations;
        OPEN conversation_cursor;
        FETCH NEXT FROM conversation_cursor INTO @conversation_handle;
        WHILE @@FETCH_STATUS = 0 
        BEGIN
            END CONVERSATION @conversation_handle WITH CLEANUP;
            FETCH NEXT FROM conversation_cursor INTO @conversation_handle;
        END
        CLOSE conversation_cursor;
        DEALLOCATE conversation_cursor;
        DROP TABLE #Conversations;

        
        IF EXISTS (SELECT * FROM sys.services WITH (NOLOCK) WHERE name = N'dbo_Message_bb20ff31-f988-4393-8a89-4ea51e477f39_Receiver') DROP SERVICE [dbo_Message_bb20ff31-f988-4393-8a89-4ea51e477f39_Receiver];
        
        IF EXISTS (SELECT * FROM sys.services WITH (NOLOCK) WHERE name = N'dbo_Message_bb20ff31-f988-4393-8a89-4ea51e477f39_Sender') DROP SERVICE [dbo_Message_bb20ff31-f988-4393-8a89-4ea51e477f39_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_bb20ff31-f988-4393-8a89-4ea51e477f39_Receiver') DROP QUEUE [dbo].[dbo_Message_bb20ff31-f988-4393-8a89-4ea51e477f39_Receiver];
        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_bb20ff31-f988-4393-8a89-4ea51e477f39_Sender') DROP QUEUE [dbo].[dbo_Message_bb20ff31-f988-4393-8a89-4ea51e477f39_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_contracts WITH (NOLOCK) WHERE name = N'dbo_Message_bb20ff31-f988-4393-8a89-4ea51e477f39') DROP CONTRACT [dbo_Message_bb20ff31-f988-4393-8a89-4ea51e477f39];
        
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_bb20ff31-f988-4393-8a89-4ea51e477f39/StartMessage/Insert') DROP MESSAGE TYPE [dbo_Message_bb20ff31-f988-4393-8a89-4ea51e477f39/StartMessage/Insert];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_bb20ff31-f988-4393-8a89-4ea51e477f39/StartMessage/Update') DROP MESSAGE TYPE [dbo_Message_bb20ff31-f988-4393-8a89-4ea51e477f39/StartMessage/Update];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_bb20ff31-f988-4393-8a89-4ea51e477f39/StartMessage/Delete') DROP MESSAGE TYPE [dbo_Message_bb20ff31-f988-4393-8a89-4ea51e477f39/StartMessage/Delete];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_bb20ff31-f988-4393-8a89-4ea51e477f39/ID') DROP MESSAGE TYPE [dbo_Message_bb20ff31-f988-4393-8a89-4ea51e477f39/ID];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_bb20ff31-f988-4393-8a89-4ea51e477f39/ID/old') DROP MESSAGE TYPE [dbo_Message_bb20ff31-f988-4393-8a89-4ea51e477f39/ID/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_bb20ff31-f988-4393-8a89-4ea51e477f39/FromUserID') DROP MESSAGE TYPE [dbo_Message_bb20ff31-f988-4393-8a89-4ea51e477f39/FromUserID];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_bb20ff31-f988-4393-8a89-4ea51e477f39/FromUserID/old') DROP MESSAGE TYPE [dbo_Message_bb20ff31-f988-4393-8a89-4ea51e477f39/FromUserID/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_bb20ff31-f988-4393-8a89-4ea51e477f39/ToUserID') DROP MESSAGE TYPE [dbo_Message_bb20ff31-f988-4393-8a89-4ea51e477f39/ToUserID];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_bb20ff31-f988-4393-8a89-4ea51e477f39/ToUserID/old') DROP MESSAGE TYPE [dbo_Message_bb20ff31-f988-4393-8a89-4ea51e477f39/ToUserID/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_bb20ff31-f988-4393-8a89-4ea51e477f39/Content') DROP MESSAGE TYPE [dbo_Message_bb20ff31-f988-4393-8a89-4ea51e477f39/Content];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_bb20ff31-f988-4393-8a89-4ea51e477f39/Content/old') DROP MESSAGE TYPE [dbo_Message_bb20ff31-f988-4393-8a89-4ea51e477f39/Content/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_bb20ff31-f988-4393-8a89-4ea51e477f39/CreatedDate') DROP MESSAGE TYPE [dbo_Message_bb20ff31-f988-4393-8a89-4ea51e477f39/CreatedDate];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_bb20ff31-f988-4393-8a89-4ea51e477f39/CreatedDate/old') DROP MESSAGE TYPE [dbo_Message_bb20ff31-f988-4393-8a89-4ea51e477f39/CreatedDate/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_bb20ff31-f988-4393-8a89-4ea51e477f39/Sent') DROP MESSAGE TYPE [dbo_Message_bb20ff31-f988-4393-8a89-4ea51e477f39/Sent];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_bb20ff31-f988-4393-8a89-4ea51e477f39/Sent/old') DROP MESSAGE TYPE [dbo_Message_bb20ff31-f988-4393-8a89-4ea51e477f39/Sent/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_bb20ff31-f988-4393-8a89-4ea51e477f39/EndMessage') DROP MESSAGE TYPE [dbo_Message_bb20ff31-f988-4393-8a89-4ea51e477f39/EndMessage];

        
        IF EXISTS (SELECT * FROM sys.objects WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_bb20ff31-f988-4393-8a89-4ea51e477f39_QueueActivationSender') DROP PROCEDURE [dbo].[dbo_Message_bb20ff31-f988-4393-8a89-4ea51e477f39_QueueActivationSender];

        
    END
END
GO
/****** Object:  StoredProcedure [dbo].[dbo_Message_bd127a53-09ae-44e8-b69b-c0ee2e86ba1a_QueueActivationSender]    Script Date: 12/31/2023 4:57:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[dbo_Message_bd127a53-09ae-44e8-b69b-c0ee2e86ba1a_QueueActivationSender] 
WITH EXECUTE AS SELF
AS 
BEGIN 
    SET NOCOUNT ON;
    DECLARE @h AS UNIQUEIDENTIFIER;
    DECLARE @mt NVARCHAR(200);

    RECEIVE TOP(1) @h = conversation_handle, @mt = message_type_name FROM [dbo].[dbo_Message_bd127a53-09ae-44e8-b69b-c0ee2e86ba1a_Sender];

    IF @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/EndDialog'
    BEGIN
        END CONVERSATION @h;
    END

    IF @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/DialogTimer' OR @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/Error'
    BEGIN 
        

        END CONVERSATION @h;

        DECLARE @conversation_handle UNIQUEIDENTIFIER;
        DECLARE @schema_id INT;
        SELECT @schema_id = schema_id FROM sys.schemas WITH (NOLOCK) WHERE name = N'dbo';

        
        IF EXISTS (SELECT * FROM sys.triggers WITH (NOLOCK) WHERE object_id = OBJECT_ID(N'[dbo].[tr_dbo_Message_bd127a53-09ae-44e8-b69b-c0ee2e86ba1a_Sender]')) DROP TRIGGER [dbo].[tr_dbo_Message_bd127a53-09ae-44e8-b69b-c0ee2e86ba1a_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_bd127a53-09ae-44e8-b69b-c0ee2e86ba1a_Sender') EXEC (N'ALTER QUEUE [dbo].[dbo_Message_bd127a53-09ae-44e8-b69b-c0ee2e86ba1a_Sender] WITH ACTIVATION (STATUS = OFF)');

        
        SELECT conversation_handle INTO #Conversations FROM sys.conversation_endpoints WITH (NOLOCK) WHERE far_service LIKE N'dbo_Message_bd127a53-09ae-44e8-b69b-c0ee2e86ba1a_%' ORDER BY is_initiator ASC;
        DECLARE conversation_cursor CURSOR FAST_FORWARD FOR SELECT conversation_handle FROM #Conversations;
        OPEN conversation_cursor;
        FETCH NEXT FROM conversation_cursor INTO @conversation_handle;
        WHILE @@FETCH_STATUS = 0 
        BEGIN
            END CONVERSATION @conversation_handle WITH CLEANUP;
            FETCH NEXT FROM conversation_cursor INTO @conversation_handle;
        END
        CLOSE conversation_cursor;
        DEALLOCATE conversation_cursor;
        DROP TABLE #Conversations;

        
        IF EXISTS (SELECT * FROM sys.services WITH (NOLOCK) WHERE name = N'dbo_Message_bd127a53-09ae-44e8-b69b-c0ee2e86ba1a_Receiver') DROP SERVICE [dbo_Message_bd127a53-09ae-44e8-b69b-c0ee2e86ba1a_Receiver];
        
        IF EXISTS (SELECT * FROM sys.services WITH (NOLOCK) WHERE name = N'dbo_Message_bd127a53-09ae-44e8-b69b-c0ee2e86ba1a_Sender') DROP SERVICE [dbo_Message_bd127a53-09ae-44e8-b69b-c0ee2e86ba1a_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_bd127a53-09ae-44e8-b69b-c0ee2e86ba1a_Receiver') DROP QUEUE [dbo].[dbo_Message_bd127a53-09ae-44e8-b69b-c0ee2e86ba1a_Receiver];
        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_bd127a53-09ae-44e8-b69b-c0ee2e86ba1a_Sender') DROP QUEUE [dbo].[dbo_Message_bd127a53-09ae-44e8-b69b-c0ee2e86ba1a_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_contracts WITH (NOLOCK) WHERE name = N'dbo_Message_bd127a53-09ae-44e8-b69b-c0ee2e86ba1a') DROP CONTRACT [dbo_Message_bd127a53-09ae-44e8-b69b-c0ee2e86ba1a];
        
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_bd127a53-09ae-44e8-b69b-c0ee2e86ba1a/StartMessage/Insert') DROP MESSAGE TYPE [dbo_Message_bd127a53-09ae-44e8-b69b-c0ee2e86ba1a/StartMessage/Insert];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_bd127a53-09ae-44e8-b69b-c0ee2e86ba1a/StartMessage/Update') DROP MESSAGE TYPE [dbo_Message_bd127a53-09ae-44e8-b69b-c0ee2e86ba1a/StartMessage/Update];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_bd127a53-09ae-44e8-b69b-c0ee2e86ba1a/StartMessage/Delete') DROP MESSAGE TYPE [dbo_Message_bd127a53-09ae-44e8-b69b-c0ee2e86ba1a/StartMessage/Delete];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_bd127a53-09ae-44e8-b69b-c0ee2e86ba1a/ID') DROP MESSAGE TYPE [dbo_Message_bd127a53-09ae-44e8-b69b-c0ee2e86ba1a/ID];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_bd127a53-09ae-44e8-b69b-c0ee2e86ba1a/ID/old') DROP MESSAGE TYPE [dbo_Message_bd127a53-09ae-44e8-b69b-c0ee2e86ba1a/ID/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_bd127a53-09ae-44e8-b69b-c0ee2e86ba1a/FromUserID') DROP MESSAGE TYPE [dbo_Message_bd127a53-09ae-44e8-b69b-c0ee2e86ba1a/FromUserID];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_bd127a53-09ae-44e8-b69b-c0ee2e86ba1a/FromUserID/old') DROP MESSAGE TYPE [dbo_Message_bd127a53-09ae-44e8-b69b-c0ee2e86ba1a/FromUserID/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_bd127a53-09ae-44e8-b69b-c0ee2e86ba1a/ToUserID') DROP MESSAGE TYPE [dbo_Message_bd127a53-09ae-44e8-b69b-c0ee2e86ba1a/ToUserID];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_bd127a53-09ae-44e8-b69b-c0ee2e86ba1a/ToUserID/old') DROP MESSAGE TYPE [dbo_Message_bd127a53-09ae-44e8-b69b-c0ee2e86ba1a/ToUserID/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_bd127a53-09ae-44e8-b69b-c0ee2e86ba1a/Content') DROP MESSAGE TYPE [dbo_Message_bd127a53-09ae-44e8-b69b-c0ee2e86ba1a/Content];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_bd127a53-09ae-44e8-b69b-c0ee2e86ba1a/Content/old') DROP MESSAGE TYPE [dbo_Message_bd127a53-09ae-44e8-b69b-c0ee2e86ba1a/Content/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_bd127a53-09ae-44e8-b69b-c0ee2e86ba1a/CreatedDate') DROP MESSAGE TYPE [dbo_Message_bd127a53-09ae-44e8-b69b-c0ee2e86ba1a/CreatedDate];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_bd127a53-09ae-44e8-b69b-c0ee2e86ba1a/CreatedDate/old') DROP MESSAGE TYPE [dbo_Message_bd127a53-09ae-44e8-b69b-c0ee2e86ba1a/CreatedDate/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_bd127a53-09ae-44e8-b69b-c0ee2e86ba1a/Sent') DROP MESSAGE TYPE [dbo_Message_bd127a53-09ae-44e8-b69b-c0ee2e86ba1a/Sent];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_bd127a53-09ae-44e8-b69b-c0ee2e86ba1a/Sent/old') DROP MESSAGE TYPE [dbo_Message_bd127a53-09ae-44e8-b69b-c0ee2e86ba1a/Sent/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_bd127a53-09ae-44e8-b69b-c0ee2e86ba1a/EndMessage') DROP MESSAGE TYPE [dbo_Message_bd127a53-09ae-44e8-b69b-c0ee2e86ba1a/EndMessage];

        
        IF EXISTS (SELECT * FROM sys.objects WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_bd127a53-09ae-44e8-b69b-c0ee2e86ba1a_QueueActivationSender') DROP PROCEDURE [dbo].[dbo_Message_bd127a53-09ae-44e8-b69b-c0ee2e86ba1a_QueueActivationSender];

        
    END
END
GO
