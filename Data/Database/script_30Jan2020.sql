USE [topup]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 1/30/2020 4:19:02 PM ******/
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
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 1/30/2020 4:19:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoleClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoleClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 1/30/2020 4:19:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](256) NULL,
	[NormalizedName] [nvarchar](256) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 1/30/2020 4:19:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 1/30/2020 4:19:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](450) NOT NULL,
	[ProviderKey] [nvarchar](450) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 1/30/2020 4:19:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](450) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 1/30/2020 4:19:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](450) NOT NULL,
	[UserName] [nvarchar](256) NULL,
	[NormalizedUserName] [nvarchar](256) NULL,
	[Email] [nvarchar](256) NULL,
	[NormalizedEmail] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEnd] [datetimeoffset](7) NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[FirstName] [nvarchar](max) NULL,
	[LastName] [nvarchar](max) NULL,
	[Picture] [nvarchar](max) NULL,
	[Description] [nvarchar](max) NULL,
	[IsActive] [bit] NOT NULL DEFAULT ((0)),
	[IsCompanySelected] [bit] NOT NULL DEFAULT ((0)),
	[IsShopSelected] [bit] NOT NULL DEFAULT ((0)),
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 1/30/2020 4:19:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserTokens](
	[UserId] [nvarchar](450) NOT NULL,
	[LoginProvider] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](450) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserTokens] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[LoginProvider] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Balance]    Script Date: 1/30/2020 4:19:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Balance](
	[BalanceId] [int] IDENTITY(1,1) NOT NULL,
	[ShopId] [int] NOT NULL,
	[Amount] [decimal](18, 2) NOT NULL,
	[AddedBy] [varchar](100) NULL,
	[IsDelete] [bit] NOT NULL,
	[Timestamp] [datetime] NOT NULL,
 CONSTRAINT [PK_Balance] PRIMARY KEY CLUSTERED 
(
	[BalanceId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Card]    Script Date: 1/30/2020 4:19:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Card](
	[CardId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](100) NOT NULL,
	[Description] [varchar](500) NULL,
	[Photo] [varchar](max) NULL,
	[Amount] [decimal](18, 2) NOT NULL,
	[IsDelete] [bit] NOT NULL,
	[Timestamp] [datetime] NOT NULL,
	[CompanyId] [int] NOT NULL,
 CONSTRAINT [PK_Card] PRIMARY KEY CLUSTERED 
(
	[CardId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Code]    Script Date: 1/30/2020 4:19:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Code](
	[CodeId] [int] IDENTITY(1,1) NOT NULL,
	[CardId] [int] NOT NULL,
	[Number] [varchar](500) NULL,
	[IsSold] [bit] NOT NULL,
	[SoldBy] [varchar](100) NULL,
	[AddedBy] [varchar](100) NULL,
	[IsRange] [bit] NOT NULL,
	[IsDelete] [bit] NOT NULL,
	[Timestamp] [datetime] NOT NULL,
 CONSTRAINT [PK_Code] PRIMARY KEY CLUSTERED 
(
	[CodeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Company]    Script Date: 1/30/2020 4:19:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Company](
	[CompanyId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](100) NOT NULL,
	[Description] [varchar](500) NULL,
	[Photo] [varchar](max) NULL,
	[Phone] [varchar](100) NULL,
	[Address] [varchar](500) NULL,
	[IsDelete] [bit] NOT NULL,
	[Timestamp] [datetime] NOT NULL,
	[ProfileViewModelUserId] [nvarchar](450) NULL,
 CONSTRAINT [PK_Company] PRIMARY KEY CLUSTERED 
(
	[CompanyId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CompanyShops]    Script Date: 1/30/2020 4:19:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CompanyShops](
	[CompanyShopsId] [int] IDENTITY(1,1) NOT NULL,
	[CompanyId] [int] NOT NULL,
	[ShopId] [int] NOT NULL,
 CONSTRAINT [PK_CompanyShops] PRIMARY KEY CLUSTERED 
(
	[CompanyShopsId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CompanyUser]    Script Date: 1/30/2020 4:19:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CompanyUser](
	[CompanyUserId] [int] IDENTITY(1,1) NOT NULL,
	[CompanyId] [int] NOT NULL,
	[UserId] [nvarchar](450) NOT NULL,
	[IsDelete] [bit] NOT NULL,
	[Timestamp] [datetime] NOT NULL,
 CONSTRAINT [PK_CompanyUser] PRIMARY KEY CLUSTERED 
(
	[CompanyUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ProfileViewModel]    Script Date: 1/30/2020 4:19:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProfileViewModel](
	[UserId] [nvarchar](450) NOT NULL,
	[Email] [nvarchar](max) NULL,
	[Name] [nvarchar](max) NULL,
	[Picture] [nvarchar](max) NULL,
	[Description] [nvarchar](max) NULL,
	[Phone] [nvarchar](max) NULL,
	[base64Picture] [nvarchar](max) NULL,
	[CompanyId] [int] NOT NULL,
	[ShopId] [int] NOT NULL,
 CONSTRAINT [PK_ProfileViewModel] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[RemainingBalance]    Script Date: 1/30/2020 4:19:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RemainingBalance](
	[RemainingBalanceId] [int] IDENTITY(1,1) NOT NULL,
	[SaleId] [int] NOT NULL,
	[SaleAmount] [decimal](18, 2) NOT NULL,
	[PreviousAmount] [decimal](18, 2) NOT NULL,
	[CurrentAmount] [decimal](18, 2) NOT NULL,
	[IsDelete] [bit] NOT NULL,
	[Timestamp] [datetime] NOT NULL,
 CONSTRAINT [PK_RemainingBalance] PRIMARY KEY CLUSTERED 
(
	[RemainingBalanceId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Sale]    Script Date: 1/30/2020 4:19:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sale](
	[SaleId] [int] IDENTITY(1,1) NOT NULL,
	[ShopId] [int] NOT NULL,
	[UserId] [nvarchar](450) NOT NULL,
	[CardId] [int] NOT NULL,
	[IsDelete] [bit] NOT NULL,
	[Timestamp] [datetime] NOT NULL,
 CONSTRAINT [PK_Sale] PRIMARY KEY CLUSTERED 
(
	[SaleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Shop]    Script Date: 1/30/2020 4:19:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Shop](
	[ShopId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](100) NOT NULL,
	[Description] [varchar](500) NULL,
	[Photo] [varchar](max) NULL,
	[Phone] [varchar](100) NULL,
	[Address] [varchar](500) NULL,
	[IsDelete] [bit] NOT NULL,
	[Timestamp] [datetime] NOT NULL,
	[ProfileViewModelUserId] [nvarchar](450) NULL,
 CONSTRAINT [PK_Shop] PRIMARY KEY CLUSTERED 
(
	[ShopId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ShopUser]    Script Date: 1/30/2020 4:19:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ShopUser](
	[ShopUserId] [int] IDENTITY(1,1) NOT NULL,
	[ShopId] [int] NOT NULL,
	[UserId] [nvarchar](450) NOT NULL,
	[IsDelete] [bit] NOT NULL,
	[Timestamp] [datetime] NOT NULL,
 CONSTRAINT [PK_ShopUser] PRIMARY KEY CLUSTERED 
(
	[ShopUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200121203040_Initial_Migration', N'2.1.8-servicing-32085')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200127091409_Company_Shop_Users', N'2.1.8-servicing-32085')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200128102114_User_IsActive', N'2.1.8-servicing-32085')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200128134503_Card_CompanyId', N'2.1.8-servicing-32085')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200129084301_Company_Shop_Settings', N'2.1.8-servicing-32085')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200130150401_ProfileViewModel', N'2.1.8-servicing-32085')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'304d7822-19e1-4c3f-84f8-7454ff1c6785', N'Company', N'COMPANY', N'75bd6114-ef02-472c-a323-bb47e3c46a19')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'50d32192-35ea-4a58-b2d9-ec8d4d25b89a', N'Shop', N'SHOP', N'0ea9fef8-c4a4-4cf1-a09f-d863ee9694f7')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'9b32e772-a2cc-450f-bd33-7107906ab5f6', N'Admin', N'ADMIN', N'4e3a81be-4f58-49d8-9c8f-af197cf799f0')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'113a84cf-3b8d-45b6-8f63-a5a5a2ec0ba0', N'9b32e772-a2cc-450f-bd33-7107906ab5f6')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'4aac4579-b475-4a18-9fab-24e84a866cfa', N'304d7822-19e1-4c3f-84f8-7454ff1c6785')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'c0fb56b6-722b-4b4c-9097-0cb14f4bcbdd', N'50d32192-35ea-4a58-b2d9-ec8d4d25b89a')
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [FirstName], [LastName], [Picture], [Description], [IsActive], [IsCompanySelected], [IsShopSelected]) VALUES (N'113a84cf-3b8d-45b6-8f63-a5a5a2ec0ba0', N'admin@topup.com', N'ADMIN@TOPUP.COM', N'admin@topup.com', N'ADMIN@TOPUP.COM', 0, N'AQAAAAEAACcQAAAAEIiU8JZ+zGAEovhpVRXevsqNmSo5Jxh3VoF1QWOAhgK6jJodJoRTK84KmepgPb0Ptw==', N'LPIGCFR6CRL6LMT4SMKELG3VHQJ2UZP2', N'4c6a86d7-27f9-4bb4-8fd0-f404c0093807', NULL, 0, 0, NULL, 1, 0, N'Admin', N'User', NULL, NULL, 1, 0, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [FirstName], [LastName], [Picture], [Description], [IsActive], [IsCompanySelected], [IsShopSelected]) VALUES (N'4aac4579-b475-4a18-9fab-24e84a866cfa', N'companyuser1@topup.com', N'COMPANYUSER1@TOPUP.COM', N'companyuser1@topup.com', N'COMPANYUSER1@TOPUP.COM', 0, N'AQAAAAEAACcQAAAAEP6vpZ1k0mNMOXFZba9qa5dx2q5D6u8jCZt/eFlMKel9srC1B5BTrw/vjOioEGzFvg==', N'JAVIG6K6L4JCFOV6QCNRTS5SZ3S3NJ54', N'70f76a0f-6164-45bd-bbb2-765d8df887c5', NULL, 0, 0, NULL, 1, 0, N'Company', N'User', NULL, NULL, 1, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [FirstName], [LastName], [Picture], [Description], [IsActive], [IsCompanySelected], [IsShopSelected]) VALUES (N'c0fb56b6-722b-4b4c-9097-0cb14f4bcbdd', N'shopuser1@topup.com', N'SHOPUSER1@TOPUP.COM', N'shopuser1@topup.com', N'SHOPUSER1@TOPUP.COM', 0, N'AQAAAAEAACcQAAAAEGfFkPBT3BoUEUp9V4HERmNsaGoBIQ5PTaWb0a0Z3iobE2VyVVbjYimjUmvvhislXA==', N'IAVDU24RFTFFLFWYOZHN4ITCFDTWW63E', N'b12cd3b1-4df7-4f87-839e-52ed5f8593be', NULL, 0, 0, NULL, 1, 0, N'Shop', N'User', NULL, NULL, 1, 1, 1)
SET IDENTITY_INSERT [dbo].[Company] ON 

INSERT [dbo].[Company] ([CompanyId], [Name], [Description], [Photo], [Phone], [Address], [IsDelete], [Timestamp], [ProfileViewModelUserId]) VALUES (1, N'Company1', N'This is company 1', N'', N'123456789', N'pak, now', 0, CAST(N'2020-01-27 14:53:07.000' AS DateTime), NULL)
INSERT [dbo].[Company] ([CompanyId], [Name], [Description], [Photo], [Phone], [Address], [IsDelete], [Timestamp], [ProfileViewModelUserId]) VALUES (2, N'Company2', N'This is company 2', N'', N'123456789', N'pak', 0, CAST(N'2020-01-27 14:02:10.000' AS DateTime), NULL)
INSERT [dbo].[Company] ([CompanyId], [Name], [Description], [Photo], [Phone], [Address], [IsDelete], [Timestamp], [ProfileViewModelUserId]) VALUES (3, N'Company3', N'This is company 3', N'', N'123456789', N'pak', 0, CAST(N'2020-01-27 14:02:19.000' AS DateTime), NULL)
INSERT [dbo].[Company] ([CompanyId], [Name], [Description], [Photo], [Phone], [Address], [IsDelete], [Timestamp], [ProfileViewModelUserId]) VALUES (4, N'Company4', N'This is company 4', N'', N'123456789', N'pak', 0, CAST(N'2020-01-27 14:02:26.000' AS DateTime), NULL)
INSERT [dbo].[Company] ([CompanyId], [Name], [Description], [Photo], [Phone], [Address], [IsDelete], [Timestamp], [ProfileViewModelUserId]) VALUES (5, N'Company5', N'This is company 5', N'', N'123456789', N'pak', 0, CAST(N'2020-01-27 14:02:30.000' AS DateTime), NULL)
SET IDENTITY_INSERT [dbo].[Company] OFF
SET IDENTITY_INSERT [dbo].[CompanyUser] ON 

INSERT [dbo].[CompanyUser] ([CompanyUserId], [CompanyId], [UserId], [IsDelete], [Timestamp]) VALUES (1, 1, N'c0fb56b6-722b-4b4c-9097-0cb14f4bcbdd', 0, CAST(N'2020-01-29 11:41:58.000' AS DateTime))
INSERT [dbo].[CompanyUser] ([CompanyUserId], [CompanyId], [UserId], [IsDelete], [Timestamp]) VALUES (2, 1, N'4aac4579-b475-4a18-9fab-24e84a866cfa', 0, CAST(N'2020-01-29 11:41:17.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[CompanyUser] OFF
SET IDENTITY_INSERT [dbo].[Shop] ON 

INSERT [dbo].[Shop] ([ShopId], [Name], [Description], [Photo], [Phone], [Address], [IsDelete], [Timestamp], [ProfileViewModelUserId]) VALUES (1, N'Shop1', N'This is shop 1', NULL, N'123456789', N'pak', 0, CAST(N'2020-01-27 14:53:07.000' AS DateTime), NULL)
INSERT [dbo].[Shop] ([ShopId], [Name], [Description], [Photo], [Phone], [Address], [IsDelete], [Timestamp], [ProfileViewModelUserId]) VALUES (6, N'Shop2', N'This is shop 2', NULL, N'123456789', N'pak', 0, CAST(N'2020-01-27 14:53:07.000' AS DateTime), NULL)
INSERT [dbo].[Shop] ([ShopId], [Name], [Description], [Photo], [Phone], [Address], [IsDelete], [Timestamp], [ProfileViewModelUserId]) VALUES (8, N'Shop3', N'This is shop 3', NULL, N'123456789', N'pak', 0, CAST(N'2020-01-27 14:53:07.000' AS DateTime), NULL)
INSERT [dbo].[Shop] ([ShopId], [Name], [Description], [Photo], [Phone], [Address], [IsDelete], [Timestamp], [ProfileViewModelUserId]) VALUES (9, N'Shop4', N'This is shop 4', NULL, N'123456789', N'pak', 0, CAST(N'2020-01-27 14:53:07.000' AS DateTime), NULL)
INSERT [dbo].[Shop] ([ShopId], [Name], [Description], [Photo], [Phone], [Address], [IsDelete], [Timestamp], [ProfileViewModelUserId]) VALUES (10, N'Shop5', N'This is shop 5', NULL, N'123456789', N'pak', 0, CAST(N'2020-01-27 14:53:07.000' AS DateTime), NULL)
SET IDENTITY_INSERT [dbo].[Shop] OFF
SET IDENTITY_INSERT [dbo].[ShopUser] ON 

INSERT [dbo].[ShopUser] ([ShopUserId], [ShopId], [UserId], [IsDelete], [Timestamp]) VALUES (1, 1, N'c0fb56b6-722b-4b4c-9097-0cb14f4bcbdd', 0, CAST(N'2020-01-29 11:41:03.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[ShopUser] OFF
ALTER TABLE [dbo].[Card] ADD  DEFAULT ((0)) FOR [CompanyId]
GO
ALTER TABLE [dbo].[AspNetRoleClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetRoleClaims] CHECK CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserTokens]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserTokens] CHECK CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[Company]  WITH CHECK ADD  CONSTRAINT [FK_Company_ProfileViewModel_ProfileViewModelUserId] FOREIGN KEY([ProfileViewModelUserId])
REFERENCES [dbo].[ProfileViewModel] ([UserId])
GO
ALTER TABLE [dbo].[Company] CHECK CONSTRAINT [FK_Company_ProfileViewModel_ProfileViewModelUserId]
GO
ALTER TABLE [dbo].[Shop]  WITH CHECK ADD  CONSTRAINT [FK_Shop_ProfileViewModel_ProfileViewModelUserId] FOREIGN KEY([ProfileViewModelUserId])
REFERENCES [dbo].[ProfileViewModel] ([UserId])
GO
ALTER TABLE [dbo].[Shop] CHECK CONSTRAINT [FK_Shop_ProfileViewModel_ProfileViewModelUserId]
GO
/****** Object:  StoredProcedure [dbo].[CreateCompany]    Script Date: 1/30/2020 4:19:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[CreateCompany]
(@name varchar(100), @description varchar(500), @photo varchar(MAX), @phone varchar(100), @address varchar(500), @isDelete bit, @timestamp datetime)
AS
BEGIN

	INSERT INTO Company
           (Name
           ,Description
           ,Photo
           ,Phone
           ,Address
           ,IsDelete
           ,Timestamp)
     VALUES
           (@name,
           @description,
           @photo,
           @phone,
           @address,
           @isDelete,
           @timestamp)

SELECT * FROM Company WHERE CompanyId = IDENT_CURRENT('Company');


END




GO
/****** Object:  StoredProcedure [dbo].[EditCompany]    Script Date: 1/30/2020 4:19:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[EditCompany]
(@companyId int, @name varchar(100), @description varchar(500), @photo varchar(MAX), @phone varchar(100), @address varchar(500), @isDelete bit, @timestamp datetime)
AS
BEGIN

	UPDATE Company SET 
		Name = @name,
		Description = @description,
		Photo = @photo,
		Phone = @phone,
		Address = @address,
		IsDelete = @isDelete,
		Timestamp = @timestamp
	WHERE CompanyId = @companyId;

	SELECT * FROM Company WHERE CompanyId = @companyId;

END




GO
/****** Object:  StoredProcedure [dbo].[GetAllCompanies]    Script Date: 1/30/2020 4:19:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GetAllCompanies]
(@pageId int, @pageSize int)
AS
BEGIN
	declare @offset int

	SET @offset = (@pageId - 1) * @pageSize;

	SELECT * FROM Company
	ORDER BY CompanyId OFFSET @offset ROWS FETCH NEXT @pageSize ROWS ONLY

END




GO
/****** Object:  StoredProcedure [dbo].[GetByIdCompany]    Script Date: 1/30/2020 4:19:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GetByIdCompany]
(@id int)
AS
BEGIN

	SELECT * FROM Company WHERE CompanyId = @id;

END




GO
/****** Object:  StoredProcedure [dbo].[GetProfile]    Script Date: 1/30/2020 4:19:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GetProfile]
(@userId nvarchar(450))
AS
BEGIN
	SELECT 
		Id AS UserId,
		Email,
		CONCAT('FirstName', ' ' , 'LastName') AS Name,
		Picture,
		Description,
		PhoneNumber AS Phone,
		'' AS base64Picture,
		'' AS listCompanies,
		'' AS listShops,
		(Select CompanyId FROM CompanyUser WHERE UserId = @userId) AS CompanyId,
		(Select ShopId FROM ShopUser WHERE UserId = @userId) AS ShopId
	FROM AspNetUsers
	WHERE Id = @userId;
END

GO
/****** Object:  StoredProcedure [dbo].[SaveSettings]    Script Date: 1/30/2020 4:19:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[SaveSettings]
(@userId nvarchar(450), @userRole varchar(50), @companyId int, @shopId int, @isDelete bit, @timestamp datetime)
AS
BEGIN

IF @companyId != 0 AND (@userRole = 'Company' OR @userRole = 'Shop')  BEGIN

	IF EXISTS(SELECT * FROM CompanyUser WHERE CompanyId = @companyId AND UserId = @userId)
		UPDATE CompanyUser SET CompanyId = @companyId, UserId = @userId, IsDelete = @isDelete, Timestamp = @timestamp
		WHERE CompanyId = @companyId AND UserId = @userId
	ELSE
		INSERT INTO CompanyUser
			(CompanyId, UserId, IsDelete, Timestamp)
		VALUES
			(@companyId, @userId, @isDelete, @timestamp)

	UPDATE AspNetUsers SET IsCompanySelected = 1 WHERE Id = @userId;

END

IF @shopId != 0 AND @userRole = 'Shop' BEGIN

	IF EXISTS(SELECT * FROM ShopUser WHERE ShopId = @shopId AND UserId = @userId)
		UPDATE ShopUser SET ShopId = @shopId, UserId = @userId, IsDelete = @isDelete, Timestamp = @timestamp
		WHERE ShopId = @shopId AND UserId = @userId
	ELSE
		INSERT INTO ShopUser
			(ShopId, UserId ,IsDelete ,Timestamp)
		VALUES
			(@shopId, @userId, @isDelete, @timestamp)

	UPDATE AspNetUsers SET IsShopSelected = 1 WHERE Id = @userId;

END

SELECT * FROM AspNetUsers WHERE Id = @userId;

END


GO
