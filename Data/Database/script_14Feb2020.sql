USE [easytopup]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 2/14/2020 3:20:27 PM ******/
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
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 2/14/2020 3:20:27 PM ******/
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
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 2/14/2020 3:20:27 PM ******/
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
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 2/14/2020 3:20:27 PM ******/
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
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 2/14/2020 3:20:27 PM ******/
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
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 2/14/2020 3:20:27 PM ******/
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
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 2/14/2020 3:20:27 PM ******/
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
	[IsActive] [bit] NOT NULL CONSTRAINT [DF__AspNetUse__IsAct__1BFD2C07]  DEFAULT ((0)),
	[IsCompanySelected] [bit] NOT NULL CONSTRAINT [DF__AspNetUse__IsCom__1CF15040]  DEFAULT ((0)),
	[IsShopSelected] [bit] NOT NULL CONSTRAINT [DF__AspNetUse__IsSho__1DE57479]  DEFAULT ((0)),
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 2/14/2020 3:20:27 PM ******/
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
/****** Object:  Table [dbo].[Balance]    Script Date: 2/14/2020 3:20:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Balance](
	[BalanceId] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](450) NOT NULL CONSTRAINT [DF__Balance__UserId__59063A47]  DEFAULT (N''),
	[Amount] [decimal](18, 2) NOT NULL,
	[AddedBy] [nvarchar](450) NOT NULL,
	[IsDelete] [bit] NOT NULL,
	[Timestamp] [datetime] NOT NULL,
 CONSTRAINT [PK_Balance] PRIMARY KEY CLUSTERED 
(
	[BalanceId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Card]    Script Date: 2/14/2020 3:20:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Card](
	[CardId] [int] IDENTITY(1,1) NOT NULL,
	[CompanyId] [int] NOT NULL,
	[Name] [varchar](100) NOT NULL,
	[Description] [varchar](500) NULL,
	[Photo] [varchar](max) NULL,
	[Amount] [decimal](18, 2) NOT NULL,
	[IsDelete] [bit] NOT NULL,
	[Timestamp] [datetime] NOT NULL,
 CONSTRAINT [PK_Card] PRIMARY KEY CLUSTERED 
(
	[CardId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Code]    Script Date: 2/14/2020 3:20:27 PM ******/
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
/****** Object:  Table [dbo].[Company]    Script Date: 2/14/2020 3:20:27 PM ******/
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
/****** Object:  Table [dbo].[CompanyShops]    Script Date: 2/14/2020 3:20:27 PM ******/
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
/****** Object:  Table [dbo].[CompanyUser]    Script Date: 2/14/2020 3:20:27 PM ******/
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
/****** Object:  Table [dbo].[EmailTemplate]    Script Date: 2/14/2020 3:20:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[EmailTemplate](
	[EmailTemplateId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](100) NOT NULL,
	[Content] [varchar](max) NOT NULL,
	[IsDelete] [bit] NOT NULL,
	[Timestamp] [datetime] NOT NULL,
 CONSTRAINT [PK_EmailTemplate] PRIMARY KEY CLUSTERED 
(
	[EmailTemplateId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ProfileViewModel]    Script Date: 2/14/2020 3:20:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProfileViewModel](
	[UserId] [nvarchar](450) NOT NULL,
	[Email] [nvarchar](max) NULL,
	[LastName] [nvarchar](max) NULL,
	[Picture] [nvarchar](max) NULL,
	[Description] [nvarchar](max) NULL,
	[Phone] [nvarchar](max) NULL,
	[base64Picture] [nvarchar](max) NULL,
	[CompanyId] [int] NOT NULL,
	[ShopId] [int] NOT NULL,
	[FirstName] [nvarchar](max) NULL,
	[CurrentPassword] [nvarchar](max) NULL,
	[NewPassword] [nvarchar](max) NULL,
 CONSTRAINT [PK_ProfileViewModel] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[RemainingBalance]    Script Date: 2/14/2020 3:20:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RemainingBalance](
	[RemainingBalanceId] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](450) NOT NULL CONSTRAINT [DF__Remaining__UserI__6383C8BA]  DEFAULT (N''),
	[SaleId] [int] NOT NULL,
	[BalanceId] [int] NOT NULL CONSTRAINT [DF__Remaining__Balan__5DCAEF64]  DEFAULT ((0)),
	[SaleAmount] [decimal](18, 2) NOT NULL,
	[BalanceAmount] [decimal](18, 2) NOT NULL,
	[CurrentAmount] [decimal](18, 2) NOT NULL,
	[IsAmountAdded] [bit] NOT NULL CONSTRAINT [DF__Remaining__IsAmo__5EBF139D]  DEFAULT ((0)),
	[IsDelete] [bit] NOT NULL,
	[Timestamp] [datetime] NOT NULL,
 CONSTRAINT [PK_RemainingBalance] PRIMARY KEY CLUSTERED 
(
	[RemainingBalanceId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Sale]    Script Date: 2/14/2020 3:20:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sale](
	[SaleId] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](450) NOT NULL,
	[CardId] [int] NOT NULL,
	[CodeId] [int] NOT NULL CONSTRAINT [DF__Sale__CodeId__6754599E]  DEFAULT ((0)),
	[IsDelete] [bit] NOT NULL,
	[Timestamp] [datetime] NOT NULL,
 CONSTRAINT [PK_Sale] PRIMARY KEY CLUSTERED 
(
	[SaleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Shop]    Script Date: 2/14/2020 3:20:27 PM ******/
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
/****** Object:  Table [dbo].[ShopUser]    Script Date: 2/14/2020 3:20:27 PM ******/
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
/****** Object:  Table [dbo].[UserCompanyShopViewModel]    Script Date: 2/14/2020 3:20:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserCompanyShopViewModel](
	[UserId] [nvarchar](450) NOT NULL,
	[UserName] [nvarchar](max) NULL,
	[Email] [nvarchar](max) NULL,
	[CompanyId] [int] NOT NULL,
	[ShopId] [int] NOT NULL,
	[CompanyName] [nvarchar](max) NULL,
	[ShopName] [nvarchar](max) NULL,
 CONSTRAINT [PK_UserCompanyShopViewModel] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[UserViewModel]    Script Date: 2/14/2020 3:20:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserViewModel](
	[UserId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Email] [nvarchar](max) NULL,
	[Company] [nvarchar](max) NULL,
	[Shop] [nvarchar](max) NULL,
	[Role] [nvarchar](max) NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_UserViewModel] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200121203040_Initial_Migration', N'2.1.8-servicing-32085')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200127091409_Company_Shop_Users', N'2.1.8-servicing-32085')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200128102114_User_IsActive', N'2.1.8-servicing-32085')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200128134503_Card_CompanyId', N'2.1.8-servicing-32085')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200129084301_Company_Shop_Settings', N'2.1.8-servicing-32085')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200130150401_ProfileViewModel', N'2.1.8-servicing-32085')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200131101520_Picture_ByteArray', N'2.1.8-servicing-32085')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200131142637_UserViewModel', N'2.1.8-servicing-32085')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200206081018_Email_Template', N'2.1.8-servicing-32085')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200206113048_UserCompanyShopViewModel', N'2.1.8-servicing-32085')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200206145552_CardViewModel', N'2.1.8-servicing-32085')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200211104413_Balance_Table', N'2.1.8-servicing-32085')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200212114041_RemainingBalance_Table', N'2.1.8-servicing-32085')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200212115020_RemainingBalance_Table_UserId', N'2.1.8-servicing-32085')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200213113550_Sale_Table', N'2.1.8-servicing-32085')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200213114055_Code_Table_SaleTimestampChanged', N'2.1.8-servicing-32085')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200213114928_Code_Table_SaleTimestampChangedNullAllowed', N'2.1.8-servicing-32085')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200213115739_CodeId_SaleTable', N'2.1.8-servicing-32085')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200213120423_Code_Soldby_Removed', N'2.1.8-servicing-32085')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200214103305_CardViewModel_CardId_Changed', N'2.1.8-servicing-32085')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200214103610_CardViewModel_CardId_Changed2', N'2.1.8-servicing-32085')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200214104117_CardViewModel_Removed', N'2.1.8-servicing-32085')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200214111617_CardViewModel_Removed2', N'2.1.8-servicing-32085')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'304d7822-19e1-4c3f-84f8-7454ff1c6785', N'Company', N'COMPANY', N'75bd6114-ef02-472c-a323-bb47e3c46a19')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'50d32192-35ea-4a58-b2d9-ec8d4d25b89a', N'Shop', N'SHOP', N'0ea9fef8-c4a4-4cf1-a09f-d863ee9694f7')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'9b32e772-a2cc-450f-bd33-7107906ab5f6', N'Admin', N'ADMIN', N'4e3a81be-4f58-49d8-9c8f-af197cf799f0')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'113a84cf-3b8d-45b6-8f63-a5a5a2ec0ba0', N'9b32e772-a2cc-450f-bd33-7107906ab5f6')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'284afac0-984b-4d5f-a44b-1d68e2341670', N'304d7822-19e1-4c3f-84f8-7454ff1c6785')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'323e9016-7e5f-4879-a27e-afd37967428f', N'304d7822-19e1-4c3f-84f8-7454ff1c6785')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'3a213679-5b64-4df8-ada0-b1dece36a76f', N'50d32192-35ea-4a58-b2d9-ec8d4d25b89a')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'4aac4579-b475-4a18-9fab-24e84a866cfa', N'304d7822-19e1-4c3f-84f8-7454ff1c6785')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'530746c4-ab9a-4e29-a008-41605f9ff9c1', N'50d32192-35ea-4a58-b2d9-ec8d4d25b89a')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'73e9a8c4-9fd7-447b-adbb-896be87deec2', N'304d7822-19e1-4c3f-84f8-7454ff1c6785')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'85db7017-356a-4afd-85bf-500d49f0fdc7', N'304d7822-19e1-4c3f-84f8-7454ff1c6785')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'899b2d6d-ce07-4a41-afe9-efe0fc503f6b', N'50d32192-35ea-4a58-b2d9-ec8d4d25b89a')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'c0fb56b6-722b-4b4c-9097-0cb14f4bcbdd', N'50d32192-35ea-4a58-b2d9-ec8d4d25b89a')
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [FirstName], [LastName], [Picture], [Description], [IsActive], [IsCompanySelected], [IsShopSelected]) VALUES (N'113a84cf-3b8d-45b6-8f63-a5a5a2ec0ba0', N'admin@easytopup.com', N'ADMIN@EASYTOPUP.COM', N'admin@easytopup.com', N'ADMIN@EASYTOPUP.COM', 0, N'AQAAAAEAACcQAAAAEIiU8JZ+zGAEovhpVRXevsqNmSo5Jxh3VoF1QWOAhgK6jJodJoRTK84KmepgPb0Ptw==', N'LPIGCFR6CRL6LMT4SMKELG3VHQJ2UZP2', N'4c6a86d7-27f9-4bb4-8fd0-f404c0093807', NULL, 0, 0, NULL, 1, 0, N'Admin', N'User', NULL, NULL, 1, 0, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [FirstName], [LastName], [Picture], [Description], [IsActive], [IsCompanySelected], [IsShopSelected]) VALUES (N'284afac0-984b-4d5f-a44b-1d68e2341670', N'companyuser_new@easytopup.com', N'COMPANYUSER_NEW@EASYTOPUP.COM', N'companyuser_new@easytopup.com', N'COMPANYUSER_NEW@EASYTOPUP.COM', 0, N'AQAAAAEAACcQAAAAEFSkGPujK5CRWlTCNxGSJGXZVB6o1vMF9OSoAyZKfGVPgKW2KX34KDPQweAg1RNy/Q==', N'LORHT5TVTBGGPMSY2C7IFO3EMK4DVZFW', N'faca5ac5-6839-4a34-851c-1d458f010379', NULL, 0, 0, NULL, 1, 0, N'company', N'user_new', NULL, NULL, 1, 1, 1)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [FirstName], [LastName], [Picture], [Description], [IsActive], [IsCompanySelected], [IsShopSelected]) VALUES (N'323e9016-7e5f-4879-a27e-afd37967428f', N'mujahid240@gmail.com', N'MUJAHID240@GMAIL.COM', N'mujahid240@gmail.com', N'MUJAHID240@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEIkvasoL7VVk4nhbCa6orWr5y/HxHhKFLLEcNqDi43djfGCYo/nWqtUZEbGB/ZFxWw==', N'MOE3RX6XEMBFL5KS2UKLGVVVOHOLUO32', N'577de4bf-08fb-4bfc-b33f-86fadf87576d', NULL, 0, 0, NULL, 1, 0, N'mujahid ali', N'khan', NULL, NULL, 1, 1, 1)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [FirstName], [LastName], [Picture], [Description], [IsActive], [IsCompanySelected], [IsShopSelected]) VALUES (N'3a213679-5b64-4df8-ada0-b1dece36a76f', N'shopuser10@easytopup.com', N'SHOPUSER10@EASYTOPUP.COM', N'shopuser10@easytopup.com', N'SHOPUSER10@EASYTOPUP.COM', 0, N'AQAAAAEAACcQAAAAEADgUQLjkShuJdDW7wsZ/5yB28pfGgejOsrPouM6Zpo6YIfAiKFBupnZ1RAUUgIwEg==', N'HIE3JNIZ76BZR5FH77RFYJVC45ITM7GL', N'7dc7f10e-6d09-4151-a787-87205b2e34ae', NULL, 0, 0, NULL, 1, 0, N'shop', N'user10', NULL, NULL, 1, 0, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [FirstName], [LastName], [Picture], [Description], [IsActive], [IsCompanySelected], [IsShopSelected]) VALUES (N'4aac4579-b475-4a18-9fab-24e84a866cfa', N'companyuser1@easytopup.com', N'COMPANYUSER1@EASYTOPUP.COM', N'companyuser1@easytopup.com', N'COMPANYUSER1@EASYTOPUP.COM', 0, N'AQAAAAEAACcQAAAAEP6vpZ1k0mNMOXFZba9qa5dx2q5D6u8jCZt/eFlMKel9srC1B5BTrw/vjOioEGzFvg==', N'JAVIG6K6L4JCFOV6QCNRTS5SZ3S3NJ54', N'70f76a0f-6164-45bd-bbb2-765d8df887c5', NULL, 0, 0, NULL, 1, 0, N'Company', N'User', NULL, NULL, 1, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [FirstName], [LastName], [Picture], [Description], [IsActive], [IsCompanySelected], [IsShopSelected]) VALUES (N'530746c4-ab9a-4e29-a008-41605f9ff9c1', N'shopuser_new@easytopup.com', N'SHOPUSER_NEW@EASYTOPUP.COM', N'shopuser_new@easytopup.com', N'SHOPUSER_NEW@EASYTOPUP.COM', 0, N'AQAAAAEAACcQAAAAEHHheeUmirbiFq1UxlFpABJ2piFV6MpfdzZkqmvI+6CgznTVnyn41XnsmB9kL4heLQ==', N'3NVNSCZRK7Z5TXMOT4KHQFOCYPTPWEJI', N'128e4ab9-6cd1-47f0-b210-52145821dc99', NULL, 0, 0, NULL, 1, 0, N'shop', N'user_new', NULL, NULL, 1, 1, 1)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [FirstName], [LastName], [Picture], [Description], [IsActive], [IsCompanySelected], [IsShopSelected]) VALUES (N'73e9a8c4-9fd7-447b-adbb-896be87deec2', N'haidershah@easytopup.com', N'HAIDERSHAH@EASYTOPUP.COM', N'haidershah@easytopup.com', N'HAIDERSHAH@EASYTOPUP.COM', 0, N'AQAAAAEAACcQAAAAEIiyycQhDbFhglUgANGoGZ7HSzg6jj7MG1bja7Nl71SbQSFuHPkJkw3aTxRgVfQ56g==', N'3RO2MGJ4XN335M6A3M62XLXOVYIP4CFM', N'b0711e97-ab87-4572-8cd0-62200d90252b', NULL, 0, 0, NULL, 1, 0, N'Haider', N'Shah', NULL, NULL, 1, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [FirstName], [LastName], [Picture], [Description], [IsActive], [IsCompanySelected], [IsShopSelected]) VALUES (N'85db7017-356a-4afd-85bf-500d49f0fdc7', N'companyuser10@easytopup.com', N'COMPANYUSER10@EASYTOPUP.COM', N'companyuser10@easytopup.com', N'COMPANYUSER10@EASYTOPUP.COM', 0, N'AQAAAAEAACcQAAAAEFgdkuuSDck7GkfqRnEb3fHz1d5jBa8uVkhth+jMnJC9/iDh6sWHeYK/SNFo0wISrA==', N'IN2NXA2QFD5IIIHVK5Q7YTTGDMWTURXF', N'bc1ff745-a64f-4b34-b125-ff8ac3654c15', NULL, 0, 0, NULL, 1, 0, N'company', N'user 10', NULL, NULL, 1, 0, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [FirstName], [LastName], [Picture], [Description], [IsActive], [IsCompanySelected], [IsShopSelected]) VALUES (N'899b2d6d-ce07-4a41-afe9-efe0fc503f6b', N'seveneleven@easytopup.com', N'SEVENELEVEN@EASYTOPUP.COM', N'seveneleven@easytopup.com', N'SEVENELEVEN@EASYTOPUP.COM', 0, N'AQAAAAEAACcQAAAAEOUPe4klJT+ivwlVY6TmlaLTMuqT1FF9pFnoWgu6aQPBXvulbZ5qQE42tornsWAD/A==', N'RMMLBVZCVZKHUX6U7LVHEJ6T3AMNYACB', N'6e859d5c-f219-4c07-9212-d21030c66210', NULL, 0, 0, NULL, 1, 0, N'seven', N'eleven', NULL, NULL, 1, 1, 1)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [FirstName], [LastName], [Picture], [Description], [IsActive], [IsCompanySelected], [IsShopSelected]) VALUES (N'c0fb56b6-722b-4b4c-9097-0cb14f4bcbdd', N'shopuser1@easytopup.com', N'SHOPUSER1@EASYTOPUP.COM', N'shopuser1@easytopup.com', N'SHOPUSER1@EASYTOPUP.COM', 0, N'AQAAAAEAACcQAAAAEGfFkPBT3BoUEUp9V4HERmNsaGoBIQ5PTaWb0a0Z3iobE2VyVVbjYimjUmvvhislXA==', N'IAVDU24RFTFFLFWYOZHN4ITCFDTWW63E', N'dd78908d-07d4-4efe-9d54-cd53f9596eb5', N'123456789', 0, 0, NULL, 1, 0, N'Shop', N'User', N'data:image/png;base64,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', N'this is my description', 1, 1, 1)
SET IDENTITY_INSERT [dbo].[Balance] ON 

INSERT [dbo].[Balance] ([BalanceId], [UserId], [Amount], [AddedBy], [IsDelete], [Timestamp]) VALUES (1, N'899b2d6d-ce07-4a41-afe9-efe0fc503f6b', CAST(100.00 AS Decimal(18, 2)), N'323e9016-7e5f-4879-a27e-afd37967428f', 0, CAST(N'2020-02-11 14:44:30.000' AS DateTime))
INSERT [dbo].[Balance] ([BalanceId], [UserId], [Amount], [AddedBy], [IsDelete], [Timestamp]) VALUES (2, N'899b2d6d-ce07-4a41-afe9-efe0fc503f6b', CAST(1000.00 AS Decimal(18, 2)), N'323e9016-7e5f-4879-a27e-afd37967428f', 0, CAST(N'2020-02-11 14:45:06.000' AS DateTime))
INSERT [dbo].[Balance] ([BalanceId], [UserId], [Amount], [AddedBy], [IsDelete], [Timestamp]) VALUES (3, N'899b2d6d-ce07-4a41-afe9-efe0fc503f6b', CAST(1500.00 AS Decimal(18, 2)), N'323e9016-7e5f-4879-a27e-afd37967428f', 0, CAST(N'2020-02-11 14:47:38.000' AS DateTime))
INSERT [dbo].[Balance] ([BalanceId], [UserId], [Amount], [AddedBy], [IsDelete], [Timestamp]) VALUES (4, N'899b2d6d-ce07-4a41-afe9-efe0fc503f6b', CAST(1100.00 AS Decimal(18, 2)), N'323e9016-7e5f-4879-a27e-afd37967428f', 0, CAST(N'2020-02-11 14:49:53.000' AS DateTime))
INSERT [dbo].[Balance] ([BalanceId], [UserId], [Amount], [AddedBy], [IsDelete], [Timestamp]) VALUES (5, N'899b2d6d-ce07-4a41-afe9-efe0fc503f6b', CAST(3000.00 AS Decimal(18, 2)), N'323e9016-7e5f-4879-a27e-afd37967428f', 0, CAST(N'2020-02-11 14:52:45.000' AS DateTime))
INSERT [dbo].[Balance] ([BalanceId], [UserId], [Amount], [AddedBy], [IsDelete], [Timestamp]) VALUES (6, N'899b2d6d-ce07-4a41-afe9-efe0fc503f6b', CAST(4000.00 AS Decimal(18, 2)), N'323e9016-7e5f-4879-a27e-afd37967428f', 0, CAST(N'2020-02-11 14:53:56.000' AS DateTime))
INSERT [dbo].[Balance] ([BalanceId], [UserId], [Amount], [AddedBy], [IsDelete], [Timestamp]) VALUES (7, N'899b2d6d-ce07-4a41-afe9-efe0fc503f6b', CAST(6000.00 AS Decimal(18, 2)), N'323e9016-7e5f-4879-a27e-afd37967428f', 0, CAST(N'2020-02-11 14:54:06.000' AS DateTime))
INSERT [dbo].[Balance] ([BalanceId], [UserId], [Amount], [AddedBy], [IsDelete], [Timestamp]) VALUES (8, N'899b2d6d-ce07-4a41-afe9-efe0fc503f6b', CAST(600.00 AS Decimal(18, 2)), N'323e9016-7e5f-4879-a27e-afd37967428f', 0, CAST(N'2020-02-11 14:47:38.000' AS DateTime))
INSERT [dbo].[Balance] ([BalanceId], [UserId], [Amount], [AddedBy], [IsDelete], [Timestamp]) VALUES (9, N'899b2d6d-ce07-4a41-afe9-efe0fc503f6b', CAST(600.00 AS Decimal(18, 2)), N'323e9016-7e5f-4879-a27e-afd37967428f', 0, CAST(N'2020-02-11 14:47:38.000' AS DateTime))
INSERT [dbo].[Balance] ([BalanceId], [UserId], [Amount], [AddedBy], [IsDelete], [Timestamp]) VALUES (10, N'899b2d6d-ce07-4a41-afe9-efe0fc503f6b', CAST(600.00 AS Decimal(18, 2)), N'323e9016-7e5f-4879-a27e-afd37967428f', 0, CAST(N'2020-02-11 14:47:38.000' AS DateTime))
INSERT [dbo].[Balance] ([BalanceId], [UserId], [Amount], [AddedBy], [IsDelete], [Timestamp]) VALUES (11, N'899b2d6d-ce07-4a41-afe9-efe0fc503f6b', CAST(600.00 AS Decimal(18, 2)), N'323e9016-7e5f-4879-a27e-afd37967428f', 0, CAST(N'2020-02-11 14:47:38.000' AS DateTime))
INSERT [dbo].[Balance] ([BalanceId], [UserId], [Amount], [AddedBy], [IsDelete], [Timestamp]) VALUES (12, N'899b2d6d-ce07-4a41-afe9-efe0fc503f6b', CAST(600.00 AS Decimal(18, 2)), N'323e9016-7e5f-4879-a27e-afd37967428f', 0, CAST(N'2020-02-11 14:47:38.000' AS DateTime))
INSERT [dbo].[Balance] ([BalanceId], [UserId], [Amount], [AddedBy], [IsDelete], [Timestamp]) VALUES (13, N'899b2d6d-ce07-4a41-afe9-efe0fc503f6b', CAST(600.00 AS Decimal(18, 2)), N'323e9016-7e5f-4879-a27e-afd37967428f', 0, CAST(N'2020-02-11 14:47:38.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[Balance] OFF
SET IDENTITY_INSERT [dbo].[Card] ON 

INSERT [dbo].[Card] ([CardId], [CompanyId], [Name], [Description], [Photo], [Amount], [IsDelete], [Timestamp]) VALUES (1, 8, N'Card 50', N'50 NOK', NULL, CAST(50.00 AS Decimal(18, 2)), 0, CAST(N'2020-01-27 14:53:07.000' AS DateTime))
INSERT [dbo].[Card] ([CardId], [CompanyId], [Name], [Description], [Photo], [Amount], [IsDelete], [Timestamp]) VALUES (2, 8, N'Card 100', N'100 NOK', NULL, CAST(100.00 AS Decimal(18, 2)), 0, CAST(N'2020-01-27 14:53:07.000' AS DateTime))
INSERT [dbo].[Card] ([CardId], [CompanyId], [Name], [Description], [Photo], [Amount], [IsDelete], [Timestamp]) VALUES (3, 8, N'Card 500', N'500 NOK', NULL, CAST(500.00 AS Decimal(18, 2)), 0, CAST(N'2020-01-27 14:53:07.000' AS DateTime))
INSERT [dbo].[Card] ([CardId], [CompanyId], [Name], [Description], [Photo], [Amount], [IsDelete], [Timestamp]) VALUES (4, 8, N'Card 1000', N'1000 NOK', N'data:image/png;base64,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', CAST(1000.00 AS Decimal(18, 2)), 0, CAST(N'2020-02-06 15:01:01.000' AS DateTime))
INSERT [dbo].[Card] ([CardId], [CompanyId], [Name], [Description], [Photo], [Amount], [IsDelete], [Timestamp]) VALUES (5, 8, N'Card 10', N'10 NOK', N'data:image/png;base64,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', CAST(10.00 AS Decimal(18, 2)), 0, CAST(N'2020-02-06 15:03:23.000' AS DateTime))
INSERT [dbo].[Card] ([CardId], [CompanyId], [Name], [Description], [Photo], [Amount], [IsDelete], [Timestamp]) VALUES (6, 8, N'Card 5', N'5 NOK', N'data:image/png;base64,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', CAST(5.00 AS Decimal(18, 2)), 0, CAST(N'2020-02-07 08:13:53.000' AS DateTime))
INSERT [dbo].[Card] ([CardId], [CompanyId], [Name], [Description], [Photo], [Amount], [IsDelete], [Timestamp]) VALUES (7, 8, N'Card 20', N'20 NOK', N'data:image/png;base64,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', CAST(20.00 AS Decimal(18, 2)), 0, CAST(N'2020-02-07 08:16:00.000' AS DateTime))
INSERT [dbo].[Card] ([CardId], [CompanyId], [Name], [Description], [Photo], [Amount], [IsDelete], [Timestamp]) VALUES (8, 8, N'Card 300', N'300 NOK', N'data:image/png;base64,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', CAST(300.00 AS Decimal(18, 2)), 0, CAST(N'2020-02-07 08:17:03.000' AS DateTime))
INSERT [dbo].[Card] ([CardId], [CompanyId], [Name], [Description], [Photo], [Amount], [IsDelete], [Timestamp]) VALUES (9, 8, N'Card 200', N'200 NOK', N'data:image/png;base64,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', CAST(200.00 AS Decimal(18, 2)), 0, CAST(N'2020-02-07 08:18:42.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[Card] OFF
SET IDENTITY_INSERT [dbo].[Code] ON 

INSERT [dbo].[Code] ([CodeId], [CardId], [Number], [IsSold], [AddedBy], [IsRange], [IsDelete], [Timestamp]) VALUES (1, 1, N'10000201', 1, N'323e9016-7e5f-4879-a27e-afd37967428f', 1, 0, CAST(N'2020-02-11 10:29:02.887' AS DateTime))
INSERT [dbo].[Code] ([CodeId], [CardId], [Number], [IsSold], [AddedBy], [IsRange], [IsDelete], [Timestamp]) VALUES (2, 2, N'10000202', 0, N'323e9016-7e5f-4879-a27e-afd37967428f', 1, 0, CAST(N'2020-02-11 10:29:06.067' AS DateTime))
INSERT [dbo].[Code] ([CodeId], [CardId], [Number], [IsSold], [AddedBy], [IsRange], [IsDelete], [Timestamp]) VALUES (3, 3, N'10000203', 0, N'323e9016-7e5f-4879-a27e-afd37967428f', 1, 0, CAST(N'2020-02-11 10:29:06.067' AS DateTime))
INSERT [dbo].[Code] ([CodeId], [CardId], [Number], [IsSold], [AddedBy], [IsRange], [IsDelete], [Timestamp]) VALUES (4, 4, N'10000204', 0, N'323e9016-7e5f-4879-a27e-afd37967428f', 1, 0, CAST(N'2020-02-11 10:29:06.067' AS DateTime))
INSERT [dbo].[Code] ([CodeId], [CardId], [Number], [IsSold], [AddedBy], [IsRange], [IsDelete], [Timestamp]) VALUES (5, 5, N'10000205', 0, N'323e9016-7e5f-4879-a27e-afd37967428f', 1, 0, CAST(N'2020-02-11 10:29:06.067' AS DateTime))
INSERT [dbo].[Code] ([CodeId], [CardId], [Number], [IsSold], [AddedBy], [IsRange], [IsDelete], [Timestamp]) VALUES (6, 6, N'10000206', 0, N'323e9016-7e5f-4879-a27e-afd37967428f', 1, 0, CAST(N'2020-02-11 10:29:06.067' AS DateTime))
INSERT [dbo].[Code] ([CodeId], [CardId], [Number], [IsSold], [AddedBy], [IsRange], [IsDelete], [Timestamp]) VALUES (7, 7, N'10000207', 0, N'323e9016-7e5f-4879-a27e-afd37967428f', 1, 0, CAST(N'2020-02-11 10:29:06.067' AS DateTime))
INSERT [dbo].[Code] ([CodeId], [CardId], [Number], [IsSold], [AddedBy], [IsRange], [IsDelete], [Timestamp]) VALUES (8, 8, N'10000208', 0, N'323e9016-7e5f-4879-a27e-afd37967428f', 1, 0, CAST(N'2020-02-11 10:29:06.067' AS DateTime))
INSERT [dbo].[Code] ([CodeId], [CardId], [Number], [IsSold], [AddedBy], [IsRange], [IsDelete], [Timestamp]) VALUES (9, 9, N'10000209', 0, N'323e9016-7e5f-4879-a27e-afd37967428f', 1, 0, CAST(N'2020-02-11 10:29:06.067' AS DateTime))
INSERT [dbo].[Code] ([CodeId], [CardId], [Number], [IsSold], [AddedBy], [IsRange], [IsDelete], [Timestamp]) VALUES (10, 10, N'10000210', 0, N'323e9016-7e5f-4879-a27e-afd37967428f', 1, 0, CAST(N'2020-02-11 10:29:06.067' AS DateTime))
INSERT [dbo].[Code] ([CodeId], [CardId], [Number], [IsSold], [AddedBy], [IsRange], [IsDelete], [Timestamp]) VALUES (11, 11, N'10000211', 0, N'323e9016-7e5f-4879-a27e-afd37967428f', 1, 0, CAST(N'2020-02-11 10:29:06.067' AS DateTime))
INSERT [dbo].[Code] ([CodeId], [CardId], [Number], [IsSold], [AddedBy], [IsRange], [IsDelete], [Timestamp]) VALUES (12, 12, N'10000212', 0, N'323e9016-7e5f-4879-a27e-afd37967428f', 0, 0, CAST(N'2020-02-11 10:33:49.563' AS DateTime))
INSERT [dbo].[Code] ([CodeId], [CardId], [Number], [IsSold], [AddedBy], [IsRange], [IsDelete], [Timestamp]) VALUES (13, 13, N'10000213', 0, N'323e9016-7e5f-4879-a27e-afd37967428f', 0, 0, CAST(N'2020-02-11 10:33:53.820' AS DateTime))
INSERT [dbo].[Code] ([CodeId], [CardId], [Number], [IsSold], [AddedBy], [IsRange], [IsDelete], [Timestamp]) VALUES (14, 14, N'10000214', 0, N'323e9016-7e5f-4879-a27e-afd37967428f', 0, 0, CAST(N'2020-02-11 10:33:58.767' AS DateTime))
SET IDENTITY_INSERT [dbo].[Code] OFF
SET IDENTITY_INSERT [dbo].[CompanyShops] ON 

INSERT [dbo].[CompanyShops] ([CompanyShopsId], [CompanyId], [ShopId]) VALUES (1, 8, 11)
SET IDENTITY_INSERT [dbo].[CompanyShops] OFF
SET IDENTITY_INSERT [dbo].[CompanyUser] ON 

INSERT [dbo].[CompanyUser] ([CompanyUserId], [CompanyId], [UserId], [IsDelete], [Timestamp]) VALUES (1, 1, N'c0fb56b6-722b-4b4c-9097-0cb14f4bcbdd', 0, CAST(N'2020-01-29 11:41:58.000' AS DateTime))
INSERT [dbo].[CompanyUser] ([CompanyUserId], [CompanyId], [UserId], [IsDelete], [Timestamp]) VALUES (2, 1, N'4aac4579-b475-4a18-9fab-24e84a866cfa', 0, CAST(N'2020-01-29 11:41:17.000' AS DateTime))
INSERT [dbo].[CompanyUser] ([CompanyUserId], [CompanyId], [UserId], [IsDelete], [Timestamp]) VALUES (3, 5, N'73e9a8c4-9fd7-447b-adbb-896be87deec2', 0, CAST(N'2020-01-30 16:31:06.000' AS DateTime))
INSERT [dbo].[CompanyUser] ([CompanyUserId], [CompanyId], [UserId], [IsDelete], [Timestamp]) VALUES (5, 5, N'284afac0-984b-4d5f-a44b-1d68e2341670', 0, CAST(N'2020-02-05 13:45:03.000' AS DateTime))
INSERT [dbo].[CompanyUser] ([CompanyUserId], [CompanyId], [UserId], [IsDelete], [Timestamp]) VALUES (8, 1, N'530746c4-ab9a-4e29-a008-41605f9ff9c1', 0, CAST(N'2020-02-05 13:50:42.000' AS DateTime))
INSERT [dbo].[CompanyUser] ([CompanyUserId], [CompanyId], [UserId], [IsDelete], [Timestamp]) VALUES (13, 1, N'323e9016-7e5f-4879-a27e-afd37967428f', 0, CAST(N'2020-02-06 12:24:01.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[CompanyUser] OFF
SET IDENTITY_INSERT [dbo].[EmailTemplate] ON 

INSERT [dbo].[EmailTemplate] ([EmailTemplateId], [Name], [Content], [IsDelete], [Timestamp]) VALUES (2, N'UserCreated', N'PCFET0NUWVBFIGh0bWw+DQo8aHRtbCBjbGFzcz0ibG9hZGluZyIgbGFuZz0iZW4iIGRhdGEtdGV4dGRpcmVjdGlvbj0ibHRyIj4NCjxoZWFkPg0KICAgIDxtZXRhIGh0dHAtZXF1aXY9IkNvbnRlbnQtVHlwZSIgY29udGVudD0idGV4dC9odG1sOyBjaGFyc2V0PVVURi04Ij4NCiAgICA8bWV0YSBodHRwLWVxdWl2PSJYLVVBLUNvbXBhdGlibGUiIGNvbnRlbnQ9IklFPWVkZ2UiPg0KICAgIDxtZXRhIG5hbWU9InZpZXdwb3J0IiBjb250ZW50PSJ3aWR0aD1kZXZpY2Utd2lkdGgsIGluaXRpYWwtc2NhbGU9MS4wLCB1c2VyLXNjYWxhYmxlPTAsIG1pbmltYWwtdWkiPg0KICAgIDxtZXRhIG5hbWU9ImRlc2NyaXB0aW9uIiBjb250ZW50PSJFYXN5IHRvcHVwIGlzIGEgd2ViIGFwcGxpY2F0aW9uIHRvIHByb3ZpZGUgc2NyYXRjaCBjYXJkIHNlcnZpY2VzIHRvIHVzZXIgbW9iaWxlLiI+DQogICAgPG1ldGEgbmFtZT0ia2V5d29yZHMiIGNvbnRlbnQ9ImVhc3kgdG9wdXAsIGVhc3kgdG9wdXAgdXNlciwgZWFzeSB0b3B1cCBjb21wYW55LCBlYXN5IHRvcHVwIHNob3AsIGVhc3kgdG9wdXAgYmFsYW5jZSwgZWFzeSB0b3B1cCBjYXJkcywgZWFzeSB0b3B1cCBjb2RlcyI+DQogICAgPG1ldGEgbmFtZT0iYXV0aG9yIiBjb250ZW50PSJFQVNZX1RPUFVQIj4NCiAgICA8dGl0bGU+V2VsY29tZSB0byBFYXN5IFRvcHVwPC90aXRsZT4NCiAgICA8bGluayByZWw9InNob3J0Y3V0IGljb24iIHR5cGU9ImltYWdlL3gtaWNvbiIgaHJlZj0iZGF0YTppbWFnZS9wbmc7YmFzZTY0LGlWQk9SdzBLR2dvQUFBQU5TVWhFVWdBQUFFQUFBQUJBQ0FZQUFBQ3FhWEhlQUFBQUJITkNTVlFJQ0FnSWZBaGtpQUFBQUFsd1NGbHpBQUFCdXdBQUFic0JPdXpqNGdBQUFCbDBSVmgwVTI5bWRIZGhjbVVBZDNkM0xtbHVhM05qWVhCbExtOXlaNXZ1UEJvQUFBTTVTVVJCVkhpYzdacy9UTnRBRk1hL1p5RVZKTVlxVWlzbDNydEFpaFIxeUpDcFUyRmlvVjNaT21iSGNwWk9qRXhsaFN5WllJQ1JnWUZhb29hRjNVUXFVcXRLbGNvU2hQeTZFQnBjay9PZmk1OXA3amNtNTd2dlBYMzNiSi92aUptUkJBS28xamxiQjJFRnpFc0FYaVM2TUR0WElEb0ZZKzl5WTNHYmdXUkNVMEpKRWxCei9aZXdzRU9NMWlSRXFHRENFVUo4dUhUcTMzVDNiYWthRUVDU3dRTUFNVnF3c0VNQTZlNWJtWUJhNTJ4ZE12Z2h4R2pWT21mcnV2dWRVWStNbFllemo0NURwbmJmV2ZCMGl4bWw2cDQzTE9KTmdKc1B0QUNmZFk2amRNQmR3YnVuaU9BQm9POHNlQ0ZUZTV3V0hhZ1RFS24yUlFRL1ppenRkNTRrQ2ZpdlVkZUFDSGJIbjhqOVdJcXBkNEJKZ0xRQWFWTFhnUGR2cXBQUThTaTdKLzJKOWovMURqQUprQllnalVtQXRBQnBUQUtrQlVoakVpQXRRQnFUQUdrQjBwZ0VTQXVReGlSQVdvQTBxZGNEb2tUZjE2UHJCWG4vbnpSVDd3Q1RBR2tCMGlnL2owZS9BeFE5UjRkOGV2dGMrNWRod0RqQUpHRHFFNUQ3T2FBb29yVW8yS2hycVFuR0FkSUNmdndlNEd2d0N6K3ZiMkwvVjkxMXhueXQ5c0JoTzNDV2pzZGRMKzZBY2NIbnBBR3lObFdOeEIyZ0NuNTQvOTg5NldmWmw5QlFOUkIzZ0RUaURvaVN0cnBIMjZmZHdUTDFEaWgxQXBMc0RNMjdlN1IwVTJCSXhiMllyMXFEZlR2RVZ1RFVlM0Z0Yk5kZnJWcjRXQW1mTFg5M1hsMW5HYWVVRHFpNEYvTnpkSE5BakJZSVhkdjFWNk50Yk5kZkJhRkxqTlljM1J4VTNJdjVMR09WTGdFRTBLdzEyQi9aSWpzRFFqZW1ZUmYzRHVibXJEWFl6eklkVWsrQnZIdDJWRTkyRExBZFlndUVKdjdxaTlNNSt0c3RoZGhpZ08yVWVrcm5BQUFJbkhvUGpEVUF0d21hMzRLeDlsaWRVRkY0RVl5dTdEejJoQmM0OVo3dCtoR3IvME91NElHU09tQ0l3Z201Z3djeU9FRFhlM2ppOGVLZG9DVjRvT1FPR0JJNDlWN0l2QXpBQStDRnpNczZnZ2NLcUFHNlZuTDZ6dXREQUlkYVJJM3dKQnd3U1V3Q3BBVklrNlFHWEdIa3JFN1ZQVytrT1RlVWRzNFhmU0pGN1FDaTB3Y1hFRzlXM1hQbFV0TlRRZTBBeGg2QWR5TS9OQzNpTDNiSHp6UmdqQ004SkZpN3k0alNxVW9IWEc0c2JqUGhTSXVjT0Roc0k0SFFESGgzZlkrbDhNUFRSVDlKcWtpVUFFRGY4Zm15SmVBUEhENGY5QmNVSFNrQUFBQUFTVVZPUks1Q1lJST0iPg0KICAgIDxzdHlsZT4NCiAgICAgICAgOnJvb3Qgew0KICAgICAgICAgICAgLS1ibHVlOiAjNUE4REVFOw0KICAgICAgICAgICAgLS1pbmRpZ286ICM2NjEwRjI7DQogICAgICAgICAgICAtLXB1cnBsZTogIzZGNDJDMTsNCiAgICAgICAgICAgIC0tcGluazogI0U4M0U4QzsNCiAgICAgICAgICAgIC0tcmVkOiAjRkY1QjVDOw0KICAgICAgICAgICAgLS1vcmFuZ2U6ICNGRDdFMTQ7DQogICAgICAgICAgICAtLXllbGxvdzogI0ZEQUM0MTsNCiAgICAgICAgICAgIC0tZ3JlZW46ICMzOURBOEE7DQogICAgICAgICAgICAtLXRlYWw6ICMyMEM5OTc7DQogICAgICAgICAgICAtLWN5YW46ICMwMENGREQ7DQogICAgICAgICAgICAtLXdoaXRlOiAjRkZGRkZGOw0KICAgICAgICAgICAgLS1ncmF5OiAjNDc1RjdCOw0KICAgICAgICAgICAgLS1ncmF5LWRhcms6ICMzOTRDNjI7DQogICAgICAgICAgICAtLXByaW1hcnk6ICM1QThERUU7DQogICAgICAgICAgICAtLXNlY29uZGFyeTogIzQ3NUY3QjsNCiAgICAgICAgICAgIC0tc3VjY2VzczogIzM5REE4QTsNCiAgICAgICAgICAgIC0taW5mbzogIzAwQ0ZERDsNCiAgICAgICAgICAgIC0td2FybmluZzogI0ZEQUM0MTsNCiAgICAgICAgICAgIC0tZGFuZ2VyOiAjRkY1QjVDOw0KICAgICAgICAgICAgLS1saWdodDogI0EzQUZCRDsNCiAgICAgICAgICAgIC0tZGFyazogIzM5NEM2MjsNCiAgICAgICAgICAgIC0tYnJlYWtwb2ludC14czogMDsNCiAgICAgICAgICAgIC0tYnJlYWtwb2ludC1zbTogNTc2cHg7DQogICAgICAgICAgICAtLWJyZWFrcG9pbnQtbWQ6IDc2OHB4Ow0KICAgICAgICAgICAgLS1icmVha3BvaW50LWxnOiA5OTJweDsNCiAgICAgICAgICAgIC0tYnJlYWtwb2ludC14bDogMTIwMHB4Ow0KICAgICAgICAgICAgLS1mb250LWZhbWlseS1zYW5zLXNlcmlmOiAnSUJNIFBsZXggU2FucycsSGVsdmV0aWNhLEFyaWFsLHNlcmlmOw0KICAgICAgICAgICAgLS1mb250LWZhbWlseS1tb25vc3BhY2U6ICdSdWJpaycsSGVsdmV0aWNhLEFyaWFsLHNlcmlmOw0KICAgICAgICB9DQoNCiAgICAgICAgaHRtbCB7DQogICAgICAgICAgICBmb250LXNpemU6IDE1cHg7DQogICAgICAgICAgICBoZWlnaHQ6IDEwMCU7DQogICAgICAgICAgICBsZXR0ZXItc3BhY2luZzogLjAxcmVtOw0KICAgICAgICB9DQoNCiAgICAgICAgaHRtbCB7DQogICAgICAgICAgICBmb250LWZhbWlseTogc2Fucy1zZXJpZjsNCiAgICAgICAgICAgIGxpbmUtaGVpZ2h0OiAxLjE1Ow0KICAgICAgICAgICAgLXdlYmtpdC10ZXh0LXNpemUtYWRqdXN0OiAxMDAlOw0KICAgICAgICAgICAgLXdlYmtpdC10YXAtaGlnaGxpZ2h0LWNvbG9yOiB0cmFuc3BhcmVudDsNCiAgICAgICAgfQ0KDQoNCiAgICAgICAgaHRtbFtBdHRyaWJ1dGVzIFN0eWxlXSB7DQogICAgICAgICAgICAtd2Via2l0LWxvY2FsZTogImVuIjsNCiAgICAgICAgfQ0KDQogICAgICAgIHVzZXIgYWdlbnQgc3R5bGVzaGVldA0KICAgICAgICBodG1sIHsNCiAgICAgICAgICAgIGRpc3BsYXk6IGJsb2NrOw0KICAgICAgICAgICAgY29sb3I6IC1pbnRlcm5hbC1yb290LWNvbG9yOw0KICAgICAgICB9DQoNCiAgICAgICAgaGVhZCB7DQogICAgICAgICAgICBjbGVhcjogYm90aDsNCiAgICAgICAgfQ0KDQogICAgICAgIEBtZWRpYSBzY3JlZW4gYW5kIChtaW4td2lkdGg6IDEyMDBweCkgaGVhZCB7DQogICAgICAgICAgICBmb250LWZhbWlseTogJ3hsIDEyMDBweCc7DQogICAgICAgIH0NCg0KICAgICAgICBAbWVkaWEgc2NyZWVuIGFuZCAobWluLXdpZHRoOiA5OTJweCkgaGVhZCB7DQogICAgICAgICAgICBmb250LWZhbWlseTogJ2xnIDk5MnB4JzsNCiAgICAgICAgfQ0KDQogICAgICAgIEBtZWRpYSBzY3JlZW4gYW5kIChtaW4td2lkdGg6IDc2OHB4KSBoZWFkIHsNCiAgICAgICAgICAgIGZvbnQtZmFtaWx5OiAnbWQgNzY4cHgnOw0KICAgICAgICB9DQoNCiAgICAgICAgQG1lZGlhIHNjcmVlbiBhbmQgKG1pbi13aWR0aDogNTQ0cHgpIGhlYWQgew0KICAgICAgICAgICAgZm9udC1mYW1pbHk6ICdzbSA1NDRweCc7DQogICAgICAgIH0NCg0KICAgICAgICBAbWVkaWEgc2NyZWVuIGFuZCAobWluLXdpZHRoOiAwKSBoZWFkIHsNCiAgICAgICAgICAgIGZvbnQtZmFtaWx5OiAneHMgMHB4JzsNCiAgICAgICAgfQ0KDQogICAgICAgIHVzZXIgYWdlbnQgc3R5bGVzaGVldA0KICAgICAgICBoZWFkIHsNCiAgICAgICAgICAgIGRpc3BsYXk6IG5vbmU7DQogICAgICAgIH0NCg0KDQogICAgICAgIHVzZXIgYWdlbnQgc3R5bGVzaGVldA0KICAgICAgICBodG1sIHsNCiAgICAgICAgICAgIGNvbG9yOiAtaW50ZXJuYWwtcm9vdC1jb2xvcjsNCiAgICAgICAgfQ0KDQogICAgICAgIHVzZXIgYWdlbnQgc3R5bGVzaGVldA0KICAgICAgICBtZXRhIHsNCiAgICAgICAgICAgIGRpc3BsYXk6IG5vbmU7DQogICAgICAgIH0NCg0KICAgICAgICBoZWFkIHRpdGxlIHsNCiAgICAgICAgICAgIGZvbnQtZmFtaWx5OiAneHMgMHB4LCBzbSA1NDRweCwgbWQgNzY4cHgsIGxnIDk5MnB4LCB4bCAxMjAwcHgnOw0KICAgICAgICB9DQoNCiAgICAgICAgdXNlciBhZ2VudCBzdHlsZXNoZWV0DQogICAgICAgIHRpdGxlIHsNCiAgICAgICAgICAgIGRpc3BsYXk6IG5vbmU7DQogICAgICAgIH0NCg0KICAgICAgICB1c2VyIGFnZW50IHN0eWxlc2hlZXQNCiAgICAgICAgbGluayB7DQogICAgICAgICAgICBkaXNwbGF5OiBub25lOw0KICAgICAgICB9DQoNCiAgICAgICAgYm9keS5kYXJrLWxheW91dCwgYm9keS5kYXJrLWxheW91dCBwcmUgew0KICAgICAgICAgICAgYmFja2dyb3VuZC1jb2xvcjogIzFBMjMzQTsNCiAgICAgICAgfQ0KDQogICAgICAgIGh0bWwgYm9keSB7DQogICAgICAgICAgICBoZWlnaHQ6IDEwMCU7DQogICAgICAgICAgICBiYWNrZ3JvdW5kLWNvbG9yOiAjRjJGNEY0Ow0KICAgICAgICAgICAgZGlyZWN0aW9uOiBsdHI7DQogICAgICAgIH0NCg0KICAgICAgICBib2R5IHsNCiAgICAgICAgICAgIG1hcmdpbjogMDsNCiAgICAgICAgICAgIGZvbnQtc2l6ZTogMXJlbTsNCiAgICAgICAgICAgIGZvbnQtd2VpZ2h0OiA0MDA7DQogICAgICAgICAgICBsaW5lLWhlaWdodDogMS40Ow0KICAgICAgICAgICAgY29sb3I6ICM3MjdFOEM7DQogICAgICAgICAgICBiYWNrZ3JvdW5kLWNvbG9yOiAjRjJGNEY0Ow0KICAgICAgICB9DQoNCiAgICAgICAgLnBvcG92ZXIsIC50b29sdGlwLCBib2R5IHsNCiAgICAgICAgICAgIGZvbnQtZmFtaWx5OiAnSUJNIFBsZXggU2FucycsSGVsdmV0aWNhLEFyaWFsLHNlcmlmOw0KICAgICAgICB9DQoNCiAgICAgICAgYm9keSwgY2FwdGlvbiB7DQogICAgICAgICAgICB0ZXh0LWFsaWduOiBsZWZ0Ow0KICAgICAgICB9DQoNCiAgICAgICAgdXNlciBhZ2VudCBzdHlsZXNoZWV0DQogICAgICAgIGJvZHkgew0KICAgICAgICAgICAgZGlzcGxheTogYmxvY2s7DQogICAgICAgICAgICBtYXJnaW46IDhweDsNCiAgICAgICAgfQ0KDQogICAgICAgIGh0bWwgYm9keSAuY29udGVudC5hcHAtY29udGVudCB7DQogICAgICAgICAgICBvdmVyZmxvdzogaGlkZGVuOw0KICAgICAgICB9DQoNCiAgICAgICAgaHRtbCBib2R5IC5jb250ZW50IHsNCiAgICAgICAgICAgIHBhZGRpbmc6IDA7DQogICAgICAgICAgICBwb3NpdGlvbjogcmVsYXRpdmU7DQogICAgICAgICAgICAtd2Via2l0LXRyYW5zaXRpb246IC4zcyBlYXNlIGFsbDsNCiAgICAgICAgICAgIHRyYW5zaXRpb246IC4zcyBlYXNlIGFsbDsNCiAgICAgICAgICAgIC13ZWJraXQtYmFja2ZhY2UtdmlzaWJpbGl0eTogaGlkZGVuOw0KICAgICAgICAgICAgYmFja2ZhY2UtdmlzaWJpbGl0eTogaGlkZGVuOw0KICAgICAgICAgICAgbWluLWhlaWdodDogY2FsYygxMDAlIC0gMy41cmVtKTsNCiAgICAgICAgICAgIG1hcmdpbi1sZWZ0OiAyNjBweDsNCiAgICAgICAgfQ0KDQogICAgICAgIHVzZXIgYWdlbnQgc3R5bGVzaGVldA0KICAgICAgICBkaXYgew0KICAgICAgICAgICAgZGlzcGxheTogYmxvY2s7DQogICAgICAgIH0NCg0KICAgICAgICBib2R5LCBjYXB0aW9uIHsNCiAgICAgICAgICAgIHRleHQtYWxpZ246IGxlZnQ7DQogICAgICAgIH0NCg0KICAgICAgICBodG1sIGJvZHkgLmNvbnRlbnQuYXBwLWNvbnRlbnQgLmNvbnRlbnQtb3ZlcmxheSB7DQogICAgICAgICAgICBwb3NpdGlvbjogZml4ZWQ7DQogICAgICAgICAgICBvcGFjaXR5OiAwOw0KICAgICAgICAgICAgd2lkdGg6IDEwMCU7DQogICAgICAgICAgICBoZWlnaHQ6IDEwMCU7DQogICAgICAgICAgICB0b3A6IDA7DQogICAgICAgICAgICBsZWZ0OiAwOw0KICAgICAgICAgICAgcmlnaHQ6IDA7DQogICAgICAgICAgICBib3R0b206IDA7DQogICAgICAgICAgICBiYWNrZ3JvdW5kLWNvbG9yOiByZ2JhKDAsMCwwLC41KTsNCiAgICAgICAgICAgIGN1cnNvcjogcG9pbnRlcjsNCiAgICAgICAgICAgIC13ZWJraXQtdHJhbnNpdGlvbjogYWxsIC43czsNCiAgICAgICAgICAgIHRyYW5zaXRpb246IGFsbCAuN3M7DQogICAgICAgICAgICB6LWluZGV4OiAtMTsNCiAgICAgICAgfQ0KDQogICAgICAgIHVzZXIgYWdlbnQgc3R5bGVzaGVldA0KICAgICAgICBkaXYgew0KICAgICAgICAgICAgZGlzcGxheTogYmxvY2s7DQogICAgICAgIH0NCg0KICAgICAgICBodG1sIGJvZHkubmF2YmFyLXN0aWNreSAuYXBwLWNvbnRlbnQgLmNvbnRlbnQtd3JhcHBlciB7DQogICAgICAgICAgICBwYWRkaW5nOiAxLjhyZW0gMi4ycmVtIDA7DQogICAgICAgICAgICBtYXJnaW4tdG9wOiAzcmVtOw0KICAgICAgICB9DQoNCiAgICAgICAgaHRtbCBib2R5IC5jb250ZW50IC5jb250ZW50LXdyYXBwZXIgew0KICAgICAgICAgICAgcGFkZGluZzogY2FsYygyLjJyZW0gLSAuNHJlbSkgMi4ycmVtIDA7DQogICAgICAgICAgICBtYXJnaW4tdG9wOiAwOw0KICAgICAgICB9DQoNCiAgICAgICAgdXNlciBhZ2VudCBzdHlsZXNoZWV0DQogICAgICAgIGRpdiB7DQogICAgICAgICAgICBkaXNwbGF5OiBibG9jazsNCiAgICAgICAgfQ0KDQogICAgICAgIHVzZXIgYWdlbnQgc3R5bGVzaGVldA0KICAgICAgICBkaXYgew0KICAgICAgICAgICAgZGlzcGxheTogYmxvY2s7DQogICAgICAgIH0NCg0KICAgICAgICBib2R5LmRhcmstbGF5b3V0IC5jYXJkIHsNCiAgICAgICAgICAgIGJveC1zaGFkb3c6IC04cHggMTJweCAyMHB4IDAgcmdiYSgxMSwyNiw1MSwuNjMpICFpbXBvcnRhbnQ7DQogICAgICAgIH0NCg0KICAgICAgICAgICAgYm9keS5kYXJrLWxheW91dCAuY2FyZCwgYm9keS5kYXJrLWxheW91dCAuY2FyZCAuY2FyZC1oZWFkZXIgLmhlYWRpbmctZWxlbWVudHMudmlzaWJsZSB1bCBsaSB7DQogICAgICAgICAgICAgICAgYmFja2dyb3VuZC1jb2xvcjogIzI3MkU0ODsNCiAgICAgICAgICAgIH0NCg0KICAgICAgICAuY2FyZCB7DQogICAgICAgICAgICBtYXJnaW4tYm90dG9tOiAyLjJyZW07DQogICAgICAgICAgICBib3gtc2hhZG93OiAtOHB4IDEycHggMThweCAwIHJnYmEoMjUsNDIsNzAsLjEzKTsNCiAgICAgICAgICAgIC13ZWJraXQtdHJhbnNpdGlvbjogYWxsIC4zcyBlYXNlLWluLW91dDsNCiAgICAgICAgICAgIHRyYW5zaXRpb246IGFsbCAuM3MgZWFzZS1pbi1vdXQ7DQogICAgICAgIH0NCg0KICAgICAgICAuY2FyZCB7DQogICAgICAgICAgICBwb3NpdGlvbjogcmVsYXRpdmU7DQogICAgICAgICAgICBkaXNwbGF5OiAtd2Via2l0LWJveDsNCiAgICAgICAgICAgIGRpc3BsYXk6IC1tcy1mbGV4Ym94Ow0KICAgICAgICAgICAgZGlzcGxheTogZmxleDsNCiAgICAgICAgICAgIC13ZWJraXQtYm94LWRpcmVjdGlvbjogbm9ybWFsOw0KICAgICAgICAgICAgLXdlYmtpdC1mbGV4LWRpcmVjdGlvbjogY29sdW1uOw0KICAgICAgICAgICAgLW1zLWZsZXgtZGlyZWN0aW9uOiBjb2x1bW47DQogICAgICAgICAgICBmbGV4LWRpcmVjdGlvbjogY29sdW1uOw0KICAgICAgICAgICAgbWluLXdpZHRoOiAwOw0KICAgICAgICAgICAgd29yZC13cmFwOiBicmVhay13b3JkOw0KICAgICAgICAgICAgYmFja2dyb3VuZC1jb2xvcjogI0ZGRjsNCiAgICAgICAgICAgIGJhY2tncm91bmQtY2xpcDogYm9yZGVyLWJveDsNCiAgICAgICAgICAgIGJvcmRlcjogMCBzb2xpZCAjREZFM0U3Ow0KICAgICAgICAgICAgYm9yZGVyLXJhZGl1czogLjI2N3JlbTsNCiAgICAgICAgfQ0KDQogICAgICAgIC5jYXJkLCAubmF2YmFyLW5hdiB7DQogICAgICAgICAgICBkaXNwbGF5OiAtd2Via2l0LWZsZXg7DQogICAgICAgICAgICAtd2Via2l0LWJveC1vcmllbnQ6IHZlcnRpY2FsOw0KICAgICAgICB9DQoNCiAgICAgICAgdXNlciBhZ2VudCBzdHlsZXNoZWV0DQogICAgICAgIHNlY3Rpb24gew0KICAgICAgICAgICAgZGlzcGxheTogYmxvY2s7DQogICAgICAgIH0NCg0KICAgICAgICBib2R5LmRhcmstbGF5b3V0IC5jYXJkIC5jYXJkLWJvZHksIGJvZHkuZGFyay1sYXlvdXQgLmNhcmQgLmNhcmQtZm9vdGVyLCBib2R5LmRhcmstbGF5b3V0IC5jYXJkIC5jYXJkLWhlYWRlciB7DQogICAgICAgICAgICBjb2xvcjogIzhBOTlCNTsNCiAgICAgICAgICAgIGJhY2tncm91bmQtY29sb3I6ICMyNzJFNDg7DQogICAgICAgICAgICBib3JkZXItY29sb3I6ICM0NjRENUMgIWltcG9ydGFudDsNCiAgICAgICAgfQ0KDQogICAgICAgIC5jYXJkLWhlYWRlcjpmaXJzdC1jaGlsZCB7DQogICAgICAgICAgICBib3JkZXItcmFkaXVzOiBjYWxjKC4yNjdyZW0gLSAwcHgpIGNhbGMoLjI2N3JlbSAtIDBweCkgMCAwOw0KICAgICAgICB9DQoNCiAgICAgICAgLmNhcmQtaGVhZGVyIHsNCiAgICAgICAgICAgIGJvcmRlci1ib3R0b206IDAgc29saWQgI0RGRTNFNzsNCiAgICAgICAgfQ0KDQogICAgICAgIC5jYXJkLWhlYWRlciwgLmNhcmQtc3VidGl0bGUsIC5jYXJkLXRleHQ6bGFzdC1jaGlsZCB7DQogICAgICAgICAgICBtYXJnaW4tYm90dG9tOiAwOw0KICAgICAgICB9DQoNCiAgICAgICAgLmNhcmQtZm9vdGVyLCAuY2FyZC1oZWFkZXIgew0KICAgICAgICAgICAgcGFkZGluZzogMS40cmVtIDEuN3JlbTsNCiAgICAgICAgICAgIGJhY2tncm91bmQtY29sb3I6IHRyYW5zcGFyZW50Ow0KICAgICAgICB9DQoNCg0KICAgICAgICB1c2VyIGFnZW50IHN0eWxlc2hlZXQNCiAgICAgICAgZGl2IHsNCiAgICAgICAgICAgIGRpc3BsYXk6IGJsb2NrOw0KICAgICAgICB9DQoNCiAgICAgICAgLmNhcmQgLmNhcmQtaGVhZGVyIC5jYXJkLXRpdGxlIHsNCiAgICAgICAgICAgIG1hcmdpbi1ib3R0b206IDA7DQogICAgICAgIH0NCg0KICAgICAgICAuY2FyZCAuY2FyZC10aXRsZSB7DQogICAgICAgICAgICBmb250LXdlaWdodDogNDAwOw0KICAgICAgICAgICAgbGV0dGVyLXNwYWNpbmc6IC4wNXJlbTsNCiAgICAgICAgICAgIGZvbnQtc2l6ZTogMS4ycmVtOw0KICAgICAgICAgICAgbWFyZ2luLWJvdHRvbTogMS4ycmVtOw0KICAgICAgICAgICAgdGV4dC10cmFuc2Zvcm06IGNhcGl0YWxpemU7DQogICAgICAgIH0NCg0KICAgICAgICBib2R5LmRhcmstbGF5b3V0IGgxLCBib2R5LmRhcmstbGF5b3V0IGgyLCBib2R5LmRhcmstbGF5b3V0IGgzLCBib2R5LmRhcmstbGF5b3V0IGg0LCBib2R5LmRhcmstbGF5b3V0IGg1LCBib2R5LmRhcmstbGF5b3V0IGg2IHsNCiAgICAgICAgICAgIGNvbG9yOiAjQkREMUY4ICFpbXBvcnRhbnQ7DQogICAgICAgIH0NCg0KICAgICAgICAuY2FyZC10aXRsZSB7DQogICAgICAgICAgICBtYXJnaW4tYm90dG9tOiAxLjRyZW07DQogICAgICAgIH0NCg0KICAgICAgICAuaDQsIGg0IHsNCiAgICAgICAgICAgIGZvbnQtc2l6ZTogMS40N3JlbTsNCiAgICAgICAgfQ0KDQogICAgICAgIC5oMSwgLmgyLCAuaDMsIC5oNCwgLmg1LCAuaDYsIGgxLCBoMiwgaDMsIGg0LCBoNSwgaDYgew0KICAgICAgICAgICAgbWFyZ2luLWJvdHRvbTogLjVyZW07DQogICAgICAgICAgICBmb250LWZhbWlseTogUnViaWssSGVsdmV0aWNhLEFyaWFsLHNlcmlmOw0KICAgICAgICAgICAgZm9udC13ZWlnaHQ6IDQwMDsNCiAgICAgICAgICAgIGxpbmUtaGVpZ2h0OiAxLjI7DQogICAgICAgICAgICBjb2xvcjogIzQ3NUY3QjsNCiAgICAgICAgfQ0KDQogICAgICAgIGgxLCBoMiwgaDMsIGg0LCBoNSwgaDYgew0KICAgICAgICAgICAgbWFyZ2luLXRvcDogMDsNCiAgICAgICAgICAgIG1hcmdpbi1ib3R0b206IC41cmVtOw0KICAgICAgICB9DQoNCiAgICAgICAgdXNlciBhZ2VudCBzdHlsZXNoZWV0DQogICAgICAgIGg0IHsNCiAgICAgICAgICAgIGRpc3BsYXk6IGJsb2NrOw0KICAgICAgICAgICAgbWFyZ2luLWJsb2NrLXN0YXJ0OiAxLjMzZW07DQogICAgICAgICAgICBtYXJnaW4tYmxvY2stZW5kOiAxLjMzZW07DQogICAgICAgICAgICBtYXJnaW4taW5saW5lLXN0YXJ0OiAwcHg7DQogICAgICAgICAgICBtYXJnaW4taW5saW5lLWVuZDogMHB4Ow0KICAgICAgICAgICAgZm9udC13ZWlnaHQ6IGJvbGQ7DQogICAgICAgIH0NCg0KDQogICAgICAgIHVzZXIgYWdlbnQgc3R5bGVzaGVldA0KICAgICAgICBkaXYgew0KICAgICAgICAgICAgZGlzcGxheTogYmxvY2s7DQogICAgICAgIH0NCg0KICAgICAgICAuY2FyZCAuY2FyZC1oZWFkZXIgfiAuY2FyZC1jb250ZW50IC5jYXJkLWJvZHkgew0KICAgICAgICAgICAgcGFkZGluZy10b3A6IDA7DQogICAgICAgIH0NCg0KICAgICAgICAuY2FyZC1ib2R5IHsNCiAgICAgICAgICAgIC13ZWJraXQtYm94LWZsZXg6IDE7DQogICAgICAgICAgICAtd2Via2l0LWZsZXg6IDEgMSBhdXRvOw0KICAgICAgICAgICAgLW1zLWZsZXg6IDEgMSBhdXRvOw0KICAgICAgICAgICAgZmxleDogMSAxIGF1dG87DQogICAgICAgICAgICBwYWRkaW5nOiAxLjdyZW07DQogICAgICAgIH0NCg0KICAgICAgICB1c2VyIGFnZW50IHN0eWxlc2hlZXQNCiAgICAgICAgZGl2IHsNCiAgICAgICAgICAgIGRpc3BsYXk6IGJsb2NrOw0KICAgICAgICB9DQoNCiAgICAgICAgdXNlciBhZ2VudCBzdHlsZXNoZWV0DQogICAgICAgIGRpdiB7DQogICAgICAgICAgICBkaXNwbGF5OiBibG9jazsNCiAgICAgICAgfQ0KDQogICAgICAgIGJvZHkuZGFyay1sYXlvdXQgbGFiZWwsIGJvZHkuZGFyay1sYXlvdXQgcCwgYm9keS5kYXJrLWxheW91dCBzbWFsbCwgYm9keS5kYXJrLWxheW91dCBzcGFuIHsNCiAgICAgICAgICAgIGNvbG9yOiAjOEE5OUI1Ow0KICAgICAgICB9DQoNCiAgICAgICAgaHRtbCBib2R5IHAgew0KICAgICAgICAgICAgbGluZS1oZWlnaHQ6IDEuNXJlbTsNCiAgICAgICAgfQ0KDQogICAgICAgIGFkZHJlc3MsIGRsLCBvbCwgcCwgcHJlLCB1bCB7DQogICAgICAgICAgICBtYXJnaW4tYm90dG9tOiAxcmVtOw0KICAgICAgICB9DQoNCiAgICAgICAgZGwsIG9sLCBwLCBwcmUsIHVsIHsNCiAgICAgICAgICAgIG1hcmdpbi10b3A6IDA7DQogICAgICAgIH0NCg0KICAgICAgICB1c2VyIGFnZW50IHN0eWxlc2hlZXQNCiAgICAgICAgcCB7DQogICAgICAgICAgICBkaXNwbGF5OiBibG9jazsNCiAgICAgICAgICAgIG1hcmdpbi1ibG9jay1zdGFydDogMWVtOw0KICAgICAgICAgICAgbWFyZ2luLWJsb2NrLWVuZDogMWVtOw0KICAgICAgICAgICAgbWFyZ2luLWlubGluZS1zdGFydDogMHB4Ow0KICAgICAgICAgICAgbWFyZ2luLWlubGluZS1lbmQ6IDBweDsNCiAgICAgICAgfQ0KDQogICAgICAgIC5yb3cgew0KICAgICAgICAgICAgZGlzcGxheTogLXdlYmtpdC1ib3g7DQogICAgICAgICAgICBkaXNwbGF5OiAtd2Via2l0LWZsZXg7DQogICAgICAgICAgICBkaXNwbGF5OiAtbXMtZmxleGJveDsNCiAgICAgICAgICAgIGRpc3BsYXk6IGZsZXg7DQogICAgICAgICAgICAtd2Via2l0LWZsZXgtd3JhcDogd3JhcDsNCiAgICAgICAgICAgIC1tcy1mbGV4LXdyYXA6IHdyYXA7DQogICAgICAgICAgICBmbGV4LXdyYXA6IHdyYXA7DQogICAgICAgICAgICBtYXJnaW4tcmlnaHQ6IC0xNXB4Ow0KICAgICAgICAgICAgbWFyZ2luLWxlZnQ6IC0xNXB4Ow0KICAgICAgICB9DQoNCg0KICAgICAgICB1c2VyIGFnZW50IHN0eWxlc2hlZXQNCiAgICAgICAgZGwgew0KICAgICAgICAgICAgZGlzcGxheTogYmxvY2s7DQogICAgICAgICAgICBtYXJnaW4tYmxvY2stc3RhcnQ6IDFlbTsNCiAgICAgICAgICAgIG1hcmdpbi1ibG9jay1lbmQ6IDFlbTsNCiAgICAgICAgICAgIG1hcmdpbi1pbmxpbmUtc3RhcnQ6IDBweDsNCiAgICAgICAgICAgIG1hcmdpbi1pbmxpbmUtZW5kOiAwcHg7DQogICAgICAgIH0NCg0KICAgICAgICAuY29sLCAuY29sLTEsIC5jb2wtMTAsIC5jb2wtMTEsIC5jb2wtMTIsIC5jb2wtMiwgLmNvbC0zLCAuY29sLTQsIC5jb2wtNSwgLmNvbC02LCAuY29sLTcsIC5jb2wtOCwgLmNvbC05LCAuY29sLWF1dG8sIC5jb2wtbGcsIC5jb2wtbGctMSwgLmNvbC1sZy0xMCwgLmNvbC1sZy0xMSwgLmNvbC1sZy0xMiwgLmNvbC1sZy0yLCAuY29sLWxnLTMsIC5jb2wtbGctNCwgLmNvbC1sZy01LCAuY29sLWxnLTYsIC5jb2wtbGctNywgLmNvbC1sZy04LCAuY29sLWxnLTksIC5jb2wtbGctYXV0bywgLmNvbC1tZCwgLmNvbC1tZC0xLCAuY29sLW1kLTEwLCAuY29sLW1kLTExLCAuY29sLW1kLTEyLCAuY29sLW1kLTIsIC5jb2wtbWQtMywgLmNvbC1tZC00LCAuY29sLW1kLTUsIC5jb2wtbWQtNiwgLmNvbC1tZC03LCAuY29sLW1kLTgsIC5jb2wtbWQtOSwgLmNvbC1tZC1hdXRvLCAuY29sLXNtLCAuY29sLXNtLTEsIC5jb2wtc20tMTAsIC5jb2wtc20tMTEsIC5jb2wtc20tMTIsIC5jb2wtc20tMiwgLmNvbC1zbS0zLCAuY29sLXNtLTQsIC5jb2wtc20tNSwgLmNvbC1zbS02LCAuY29sLXNtLTcsIC5jb2wtc20tOCwgLmNvbC1zbS05LCAuY29sLXNtLWF1dG8sIC5jb2wteGwsIC5jb2wteGwtMSwgLmNvbC14bC0xMCwgLmNvbC14bC0xMSwgLmNvbC14bC0xMiwgLmNvbC14bC0yLCAuY29sLXhsLTMsIC5jb2wteGwtNCwgLmNvbC14bC01LCAuY29sLXhsLTYsIC5jb2wteGwtNywgLmNvbC14bC04LCAuY29sLXhsLTksIC5jb2wteGwtYXV0byB7DQogICAgICAgICAgICBwb3NpdGlvbjogcmVsYXRpdmU7DQogICAgICAgICAgICB3aWR0aDogMTAwJTsNCiAgICAgICAgICAgIHBhZGRpbmctcmlnaHQ6IDE1cHg7DQogICAgICAgICAgICBwYWRkaW5nLWxlZnQ6IDE1cHg7DQogICAgICAgIH0NCg0KICAgICAgICBkdCB7DQogICAgICAgICAgICBmb250LXdlaWdodDogNTAwOw0KICAgICAgICB9DQoNCiAgICAgICAgdXNlciBhZ2VudCBzdHlsZXNoZWV0DQogICAgICAgIGR0IHsNCiAgICAgICAgICAgIGRpc3BsYXk6IGJsb2NrOw0KICAgICAgICB9DQoNCiAgICAgICAgLmNvbCwgLmNvbC0xLCAuY29sLTEwLCAuY29sLTExLCAuY29sLTEyLCAuY29sLTIsIC5jb2wtMywgLmNvbC00LCAuY29sLTUsIC5jb2wtNiwgLmNvbC03LCAuY29sLTgsIC5jb2wtOSwgLmNvbC1hdXRvLCAuY29sLWxnLCAuY29sLWxnLTEsIC5jb2wtbGctMTAsIC5jb2wtbGctMTEsIC5jb2wtbGctMTIsIC5jb2wtbGctMiwgLmNvbC1sZy0zLCAuY29sLWxnLTQsIC5jb2wtbGctNSwgLmNvbC1sZy02LCAuY29sLWxnLTcsIC5jb2wtbGctOCwgLmNvbC1sZy05LCAuY29sLWxnLWF1dG8sIC5jb2wtbWQsIC5jb2wtbWQtMSwgLmNvbC1tZC0xMCwgLmNvbC1tZC0xMSwgLmNvbC1tZC0xMiwgLmNvbC1tZC0yLCAuY29sLW1kLTMsIC5jb2wtbWQtNCwgLmNvbC1tZC01LCAuY29sLW1kLTYsIC5jb2wtbWQtNywgLmNvbC1tZC04LCAuY29sLW1kLTksIC5jb2wtbWQtYXV0bywgLmNvbC1zbSwgLmNvbC1zbS0xLCAuY29sLXNtLTEwLCAuY29sLXNtLTExLCAuY29sLXNtLTEyLCAuY29sLXNtLTIsIC5jb2wtc20tMywgLmNvbC1zbS00LCAuY29sLXNtLTUsIC5jb2wtc20tNiwgLmNvbC1zbS03LCAuY29sLXNtLTgsIC5jb2wtc20tOSwgLmNvbC1zbS1hdXRvLCAuY29sLXhsLCAuY29sLXhsLTEsIC5jb2wteGwtMTAsIC5jb2wteGwtMTEsIC5jb2wteGwtMTIsIC5jb2wteGwtMiwgLmNvbC14bC0zLCAuY29sLXhsLTQsIC5jb2wteGwtNSwgLmNvbC14bC02LCAuY29sLXhsLTcsIC5jb2wteGwtOCwgLmNvbC14bC05LCAuY29sLXhsLWF1dG8gew0KICAgICAgICAgICAgcG9zaXRpb246IHJlbGF0aXZlOw0KICAgICAgICAgICAgd2lkdGg6IDEwMCU7DQogICAgICAgICAgICBwYWRkaW5nLXJpZ2h0OiAxNXB4Ow0KICAgICAgICAgICAgcGFkZGluZy1sZWZ0OiAxNXB4Ow0KICAgICAgICB9DQoNCiAgICAgICAgZGQgew0KICAgICAgICAgICAgbWFyZ2luLWJvdHRvbTogLjVyZW07DQogICAgICAgICAgICBtYXJnaW4tbGVmdDogMDsNCiAgICAgICAgfQ0KDQogICAgICAgIHVzZXIgYWdlbnQgc3R5bGVzaGVldA0KICAgICAgICBkZCB7DQogICAgICAgICAgICBkaXNwbGF5OiBibG9jazsNCiAgICAgICAgICAgIG1hcmdpbi1pbmxpbmUtc3RhcnQ6IDQwcHg7DQogICAgICAgIH0NCg0KICAgICAgICBhIHsNCiAgICAgICAgICAgIGNvbG9yOiAjNUE4REVFOw0KICAgICAgICAgICAgYmFja2dyb3VuZC1jb2xvcjogdHJhbnNwYXJlbnQ7DQogICAgICAgIH0NCg0KICAgICAgICAgICAgLmJyZWFkY3J1bWItaXRlbSArIC5icmVhZGNydW1iLWl0ZW06aG92ZXI6OmJlZm9yZSwgLmJ0bi1saW5rLCAuYnRuLWxpbmsuZm9jdXMsIC5idG4tbGluazpmb2N1cywgLmJ0bi1saW5rOmhvdmVyLCAuYnRuOmhvdmVyLCAuY2FyZC1saW5rOmhvdmVyLCAuZHJvcGRvd24taXRlbTpmb2N1cywgLmRyb3Bkb3duLWl0ZW06aG92ZXIsIC5saXN0LWdyb3VwLWl0ZW0tYWN0aW9uOmZvY3VzLCAubGlzdC1ncm91cC1pdGVtLWFjdGlvbjpob3ZlciwgLm5hdi1saW5rOmZvY3VzLCAubmF2LWxpbms6aG92ZXIsIC5uYXZiYXItYnJhbmQ6Zm9jdXMsIC5uYXZiYXItYnJhbmQ6aG92ZXIsIC5uYXZiYXItdG9nZ2xlcjpmb2N1cywgLm5hdmJhci10b2dnbGVyOmhvdmVyLCAucGFnZS1saW5rOmhvdmVyLCBhLCBhLmJhZGdlOmZvY3VzLCBhLmJhZGdlOmhvdmVyLCBhOmhvdmVyLCBhOm5vdChbaHJlZl0pOm5vdChbdGFiaW5kZXhdKSwgYTpub3QoW2hyZWZdKTpub3QoW3RhYmluZGV4XSk6Zm9jdXMsIGE6bm90KFtocmVmXSk6bm90KFt0YWJpbmRleF0pOmhvdmVyIHsNCiAgICAgICAgICAgICAgICB0ZXh0LWRlY29yYXRpb246IG5vbmU7DQogICAgICAgICAgICB9DQoNCg0KICAgICAgICB1c2VyIGFnZW50IHN0eWxlc2hlZXQNCiAgICAgICAgYTotd2Via2l0LWFueS1saW5rIHsNCiAgICAgICAgICAgIGNvbG9yOiAtd2Via2l0LWxpbms7DQogICAgICAgICAgICBjdXJzb3I6IHBvaW50ZXI7DQogICAgICAgICAgICB0ZXh0LWRlY29yYXRpb246IHVuZGVybGluZTsNCiAgICAgICAgfQ0KDQogICAgICAgIHVzZXIgYWdlbnQgc3R5bGVzaGVldA0KICAgICAgICB1bCB7DQogICAgICAgICAgICBkaXNwbGF5OiBibG9jazsNCiAgICAgICAgICAgIGxpc3Qtc3R5bGUtdHlwZTogZGlzYzsNCiAgICAgICAgICAgIG1hcmdpbi1ibG9jay1zdGFydDogMWVtOw0KICAgICAgICAgICAgbWFyZ2luLWJsb2NrLWVuZDogMWVtOw0KICAgICAgICAgICAgbWFyZ2luLWlubGluZS1zdGFydDogMHB4Ow0KICAgICAgICAgICAgbWFyZ2luLWlubGluZS1lbmQ6IDBweDsNCiAgICAgICAgICAgIHBhZGRpbmctaW5saW5lLXN0YXJ0OiA0MHB4Ow0KICAgICAgICB9DQoNCiAgICAgICAgYm9keS5kYXJrLWxheW91dCB1bCBsaSB7DQogICAgICAgICAgICBjb2xvcjogIzhBOTlCNSAhaW1wb3J0YW50Ow0KICAgICAgICB9DQoNCg0KICAgICAgICB1c2VyIGFnZW50IHN0eWxlc2hlZXQNCiAgICAgICAgbGkgew0KICAgICAgICAgICAgZGlzcGxheTogbGlzdC1pdGVtOw0KICAgICAgICAgICAgdGV4dC1hbGlnbjogLXdlYmtpdC1tYXRjaC1wYXJlbnQ7DQogICAgICAgIH0NCg0KICAgICAgICB1c2VyIGFnZW50IHN0eWxlc2hlZXQNCiAgICAgICAgdWwgew0KICAgICAgICAgICAgbGlzdC1zdHlsZS10eXBlOiBkaXNjOw0KICAgICAgICB9DQoNCiAgICAgICAgYm9keS5kYXJrLWxheW91dCBjb2RlLCBib2R5LmRhcmstbGF5b3V0IGtiZCwgYm9keS5kYXJrLWxheW91dCBwcmUgY29kZSAub3BlcmF0b3IsIGJvZHkuZGFyay1sYXlvdXQgcHJlIGNvZGUgLnVybCB7DQogICAgICAgICAgICBiYWNrZ3JvdW5kLWNvbG9yOiAjMUEyMzNBOw0KICAgICAgICB9DQoNCiAgICAgICAgY29kZSB7DQogICAgICAgICAgICBwYWRkaW5nOiAuMXJlbSAuNHJlbTsNCiAgICAgICAgICAgIGZvbnQtc2l6ZTogOTAlICFpbXBvcnRhbnQ7DQogICAgICAgICAgICBjb2xvcjogI0U4M0U4QzsNCiAgICAgICAgICAgIGJhY2tncm91bmQtY29sb3I6ICNFRUU7DQogICAgICAgICAgICBib3JkZXItcmFkaXVzOiAuMTMzNXJlbTsNCiAgICAgICAgfQ0KDQogICAgICAgIGNvZGUgew0KICAgICAgICAgICAgY29sb3I6ICNFODNFOEM7DQogICAgICAgICAgICB3b3JkLWJyZWFrOiBicmVhay13b3JkOw0KICAgICAgICB9DQoNCiAgICAgICAgY29kZSwga2JkIHsNCiAgICAgICAgICAgIGZvbnQtc2l6ZTogOTAlOw0KICAgICAgICB9DQoNCiAgICAgICAgY29kZSwga2JkLCBwcmUsIHNhbXAgew0KICAgICAgICAgICAgZm9udC1mYW1pbHk6IFJ1YmlrLEhlbHZldGljYSxBcmlhbCxzZXJpZjsNCiAgICAgICAgICAgIGZvbnQtc2l6ZTogMWVtOw0KICAgICAgICB9DQoNCiAgICAgICAgKiwgOjphZnRlciwgOjpiZWZvcmUgew0KICAgICAgICAgICAgYm94LXNpemluZzogYm9yZGVyLWJveDsNCiAgICAgICAgfQ0KDQogICAgICAgIHVzZXIgYWdlbnQgc3R5bGVzaGVldA0KICAgICAgICBjb2RlIHsNCiAgICAgICAgICAgIGZvbnQtZmFtaWx5OiBtb25vc3BhY2U7DQogICAgICAgIH0NCg0KICAgICAgICBib2R5LmRhcmstbGF5b3V0IHVsIGxpIHsNCiAgICAgICAgICAgIGNvbG9yOiAjOEE5OUI1ICFpbXBvcnRhbnQ7DQogICAgICAgIH0NCg0KICAgICAgICB1c2VyIGFnZW50IHN0eWxlc2hlZXQNCiAgICAgICAgbGkgew0KICAgICAgICAgICAgdGV4dC1hbGlnbjogLXdlYmtpdC1tYXRjaC1wYXJlbnQ7DQogICAgICAgIH0NCg0KICAgICAgICB1c2VyIGFnZW50IHN0eWxlc2hlZXQNCiAgICAgICAgdWwgew0KICAgICAgICAgICAgbGlzdC1zdHlsZS10eXBlOiBkaXNjOw0KICAgICAgICB9DQoNCiAgICAgICAgQG1lZGlhIChtaW4td2lkdGg6NTc2cHgpIHsNCiAgICAgICAgICAgIC5jb2wtc20gew0KICAgICAgICAgICAgICAgIC13ZWJraXQtZmxleC1iYXNpczogMDsNCiAgICAgICAgICAgICAgICAtbXMtZmxleC1wcmVmZXJyZWQtc2l6ZTogMDsNCiAgICAgICAgICAgICAgICBmbGV4LWJhc2lzOiAwOw0KICAgICAgICAgICAgICAgIC13ZWJraXQtYm94LWZsZXg6IDE7DQogICAgICAgICAgICAgICAgLXdlYmtpdC1mbGV4LWdyb3c6IDE7DQogICAgICAgICAgICAgICAgLW1zLWZsZXgtcG9zaXRpdmU6IDE7DQogICAgICAgICAgICAgICAgZmxleC1ncm93OiAxOw0KICAgICAgICAgICAgICAgIG1heC13aWR0aDogMTAwJQ0KICAgICAgICAgICAgfQ0KDQogICAgICAgICAgICAuY29sLXNtLWF1dG8gew0KICAgICAgICAgICAgICAgIC13ZWJraXQtYm94LWZsZXg6IDA7DQogICAgICAgICAgICAgICAgLXdlYmtpdC1mbGV4OiAwIDAgYXV0bzsNCiAgICAgICAgICAgICAgICAtbXMtZmxleDogMCAwIGF1dG87DQogICAgICAgICAgICAgICAgZmxleDogMCAwIGF1dG87DQogICAgICAgICAgICAgICAgd2lkdGg6IGF1dG87DQogICAgICAgICAgICAgICAgbWF4LXdpZHRoOiAxMDAlDQogICAgICAgICAgICB9DQoNCiAgICAgICAgICAgIC5jb2wtc20tMSB7DQogICAgICAgICAgICAgICAgLXdlYmtpdC1ib3gtZmxleDogMDsNCiAgICAgICAgICAgICAgICAtd2Via2l0LWZsZXg6IDAgMCA4LjMzMzMzJTsNCiAgICAgICAgICAgICAgICAtbXMtZmxleDogMCAwIDguMzMzMzMlOw0KICAgICAgICAgICAgICAgIGZsZXg6IDAgMCA4LjMzMzMzJTsNCiAgICAgICAgICAgICAgICBtYXgtd2lkdGg6IDguMzMzMzMlDQogICAgICAgICAgICB9DQoNCiAgICAgICAgICAgIC5jb2wtc20tMiB7DQogICAgICAgICAgICAgICAgLXdlYmtpdC1ib3gtZmxleDogMDsNCiAgICAgICAgICAgICAgICAtd2Via2l0LWZsZXg6IDAgMCAxNi42NjY2NyU7DQogICAgICAgICAgICAgICAgLW1zLWZsZXg6IDAgMCAxNi42NjY2NyU7DQogICAgICAgICAgICAgICAgZmxleDogMCAwIDE2LjY2NjY3JTsNCiAgICAgICAgICAgICAgICBtYXgtd2lkdGg6IDE2LjY2NjY3JQ0KICAgICAgICAgICAgfQ0KDQogICAgICAgICAgICAuY29sLXNtLTMgew0KICAgICAgICAgICAgICAgIC13ZWJraXQtYm94LWZsZXg6IDA7DQogICAgICAgICAgICAgICAgLXdlYmtpdC1mbGV4OiAwIDAgMjUlOw0KICAgICAgICAgICAgICAgIC1tcy1mbGV4OiAwIDAgMjUlOw0KICAgICAgICAgICAgICAgIGZsZXg6IDAgMCAyNSU7DQogICAgICAgICAgICAgICAgbWF4LXdpZHRoOiAyNSUNCiAgICAgICAgICAgIH0NCg0KICAgICAgICAgICAgLmNvbC1zbS00IHsNCiAgICAgICAgICAgICAgICAtd2Via2l0LWJveC1mbGV4OiAwOw0KICAgICAgICAgICAgICAgIC13ZWJraXQtZmxleDogMCAwIDMzLjMzMzMzJTsNCiAgICAgICAgICAgICAgICAtbXMtZmxleDogMCAwIDMzLjMzMzMzJTsNCiAgICAgICAgICAgICAgICBmbGV4OiAwIDAgMzMuMzMzMzMlOw0KICAgICAgICAgICAgICAgIG1heC13aWR0aDogMzMuMzMzMzMlDQogICAgICAgICAgICB9DQoNCiAgICAgICAgICAgIC5jb2wtc20tNSB7DQogICAgICAgICAgICAgICAgLXdlYmtpdC1ib3gtZmxleDogMDsNCiAgICAgICAgICAgICAgICAtd2Via2l0LWZsZXg6IDAgMCA0MS42NjY2NyU7DQogICAgICAgICAgICAgICAgLW1zLWZsZXg6IDAgMCA0MS42NjY2NyU7DQogICAgICAgICAgICAgICAgZmxleDogMCAwIDQxLjY2NjY3JTsNCiAgICAgICAgICAgICAgICBtYXgtd2lkdGg6IDQxLjY2NjY3JQ0KICAgICAgICAgICAgfQ0KDQogICAgICAgICAgICAuY29sLXNtLTYgew0KICAgICAgICAgICAgICAgIC13ZWJraXQtYm94LWZsZXg6IDA7DQogICAgICAgICAgICAgICAgLXdlYmtpdC1mbGV4OiAwIDAgNTAlOw0KICAgICAgICAgICAgICAgIC1tcy1mbGV4OiAwIDAgNTAlOw0KICAgICAgICAgICAgICAgIGZsZXg6IDAgMCA1MCU7DQogICAgICAgICAgICAgICAgbWF4LXdpZHRoOiA1MCUNCiAgICAgICAgICAgIH0NCg0KICAgICAgICAgICAgLmNvbC1zbS03IHsNCiAgICAgICAgICAgICAgICAtd2Via2l0LWJveC1mbGV4OiAwOw0KICAgICAgICAgICAgICAgIC13ZWJraXQtZmxleDogMCAwIDU4LjMzMzMzJTsNCiAgICAgICAgICAgICAgICAtbXMtZmxleDogMCAwIDU4LjMzMzMzJTsNCiAgICAgICAgICAgICAgICBmbGV4OiAwIDAgNTguMzMzMzMlOw0KICAgICAgICAgICAgICAgIG1heC13aWR0aDogNTguMzMzMzMlDQogICAgICAgICAgICB9DQoNCiAgICAgICAgICAgIC5jb2wtc20tOCB7DQogICAgICAgICAgICAgICAgLXdlYmtpdC1ib3gtZmxleDogMDsNCiAgICAgICAgICAgICAgICAtd2Via2l0LWZsZXg6IDAgMCA2Ni42NjY2NyU7DQogICAgICAgICAgICAgICAgLW1zLWZsZXg6IDAgMCA2Ni42NjY2NyU7DQogICAgICAgICAgICAgICAgZmxleDogMCAwIDY2LjY2NjY3JTsNCiAgICAgICAgICAgICAgICBtYXgtd2lkdGg6IDY2LjY2NjY3JQ0KICAgICAgICAgICAgfQ0KDQogICAgICAgICAgICAuY29sLXNtLTkgew0KICAgICAgICAgICAgICAgIC13ZWJraXQtYm94LWZsZXg6IDA7DQogICAgICAgICAgICAgICAgLXdlYmtpdC1mbGV4OiAwIDAgNzUlOw0KICAgICAgICAgICAgICAgIC1tcy1mbGV4OiAwIDAgNzUlOw0KICAgICAgICAgICAgICAgIGZsZXg6IDAgMCA3NSU7DQogICAgICAgICAgICAgICAgbWF4LXdpZHRoOiA3NSUNCiAgICAgICAgICAgIH0NCg0KICAgICAgICAgICAgLmNvbC1zbS0xMCB7DQogICAgICAgICAgICAgICAgLXdlYmtpdC1ib3gtZmxleDogMDsNCiAgICAgICAgICAgICAgICAtd2Via2l0LWZsZXg6IDAgMCA4My4zMzMzMyU7DQogICAgICAgICAgICAgICAgLW1zLWZsZXg6IDAgMCA4My4zMzMzMyU7DQogICAgICAgICAgICAgICAgZmxleDogMCAwIDgzLjMzMzMzJTsNCiAgICAgICAgICAgICAgICBtYXgtd2lkdGg6IDgzLjMzMzMzJQ0KICAgICAgICAgICAgfQ0KDQogICAgICAgICAgICAuY29sLXNtLTExIHsNCiAgICAgICAgICAgICAgICAtd2Via2l0LWJveC1mbGV4OiAwOw0KICAgICAgICAgICAgICAgIC13ZWJraXQtZmxleDogMCAwIDkxLjY2NjY3JTsNCiAgICAgICAgICAgICAgICAtbXMtZmxleDogMCAwIDkxLjY2NjY3JTsNCiAgICAgICAgICAgICAgICBmbGV4OiAwIDAgOTEuNjY2NjclOw0KICAgICAgICAgICAgICAgIG1heC13aWR0aDogOTEuNjY2NjclDQogICAgICAgICAgICB9DQoNCiAgICAgICAgICAgIC5jb2wtc20tMTIgew0KICAgICAgICAgICAgICAgIC13ZWJraXQtYm94LWZsZXg6IDA7DQogICAgICAgICAgICAgICAgLXdlYmtpdC1mbGV4OiAwIDAgMTAwJTsNCiAgICAgICAgICAgICAgICAtbXMtZmxleDogMCAwIDEwMCU7DQogICAgICAgICAgICAgICAgZmxleDogMCAwIDEwMCU7DQogICAgICAgICAgICAgICAgbWF4LXdpZHRoOiAxMDAlDQogICAgICAgICAgICB9DQoNCiAgICAgICAgICAgIC5vcmRlci1zbS1maXJzdCB7DQogICAgICAgICAgICAgICAgLXdlYmtpdC1ib3gtb3JkaW5hbC1ncm91cDogMDsNCiAgICAgICAgICAgICAgICAtd2Via2l0LW9yZGVyOiAtMTsNCiAgICAgICAgICAgICAgICAtbXMtZmxleC1vcmRlcjogLTE7DQogICAgICAgICAgICAgICAgb3JkZXI6IC0xDQogICAgICAgICAgICB9DQoNCiAgICAgICAgICAgIC5vcmRlci1zbS1sYXN0IHsNCiAgICAgICAgICAgICAgICAtd2Via2l0LWJveC1vcmRpbmFsLWdyb3VwOiAxNDsNCiAgICAgICAgICAgICAgICAtd2Via2l0LW9yZGVyOiAxMzsNCiAgICAgICAgICAgICAgICAtbXMtZmxleC1vcmRlcjogMTM7DQogICAgICAgICAgICAgICAgb3JkZXI6IDEzDQogICAgICAgICAgICB9DQoNCiAgICAgICAgICAgIC5vcmRlci1zbS0wIHsNCiAgICAgICAgICAgICAgICAtd2Via2l0LWJveC1vcmRpbmFsLWdyb3VwOiAxOw0KICAgICAgICAgICAgICAgIC13ZWJraXQtb3JkZXI6IDA7DQogICAgICAgICAgICAgICAgLW1zLWZsZXgtb3JkZXI6IDA7DQogICAgICAgICAgICAgICAgb3JkZXI6IDANCiAgICAgICAgICAgIH0NCg0KICAgICAgICAgICAgLm9yZGVyLXNtLTEgew0KICAgICAgICAgICAgICAgIC13ZWJraXQtYm94LW9yZGluYWwtZ3JvdXA6IDI7DQogICAgICAgICAgICAgICAgLXdlYmtpdC1vcmRlcjogMTsNCiAgICAgICAgICAgICAgICAtbXMtZmxleC1vcmRlcjogMTsNCiAgICAgICAgICAgICAgICBvcmRlcjogMQ0KICAgICAgICAgICAgfQ0KDQogICAgICAgICAgICAub3JkZXItc20tMiB7DQogICAgICAgICAgICAgICAgLXdlYmtpdC1ib3gtb3JkaW5hbC1ncm91cDogMzsNCiAgICAgICAgICAgICAgICAtd2Via2l0LW9yZGVyOiAyOw0KICAgICAgICAgICAgICAgIC1tcy1mbGV4LW9yZGVyOiAyOw0KICAgICAgICAgICAgICAgIG9yZGVyOiAyDQogICAgICAgICAgICB9DQoNCiAgICAgICAgICAgIC5vcmRlci1zbS0zIHsNCiAgICAgICAgICAgICAgICAtd2Via2l0LWJveC1vcmRpbmFsLWdyb3VwOiA0Ow0KICAgICAgICAgICAgICAgIC13ZWJraXQtb3JkZXI6IDM7DQogICAgICAgICAgICAgICAgLW1zLWZsZXgtb3JkZXI6IDM7DQogICAgICAgICAgICAgICAgb3JkZXI6IDMNCiAgICAgICAgICAgIH0NCg0KICAgICAgICAgICAgLm9yZGVyLXNtLTQgew0KICAgICAgICAgICAgICAgIC13ZWJraXQtYm94LW9yZGluYWwtZ3JvdXA6IDU7DQogICAgICAgICAgICAgICAgLXdlYmtpdC1vcmRlcjogNDsNCiAgICAgICAgICAgICAgICAtbXMtZmxleC1vcmRlcjogNDsNCiAgICAgICAgICAgICAgICBvcmRlcjogNA0KICAgICAgICAgICAgfQ0KDQogICAgICAgICAgICAub3JkZXItc20tNSB7DQogICAgICAgICAgICAgICAgLXdlYmtpdC1ib3gtb3JkaW5hbC1ncm91cDogNjsNCiAgICAgICAgICAgICAgICAtd2Via2l0LW9yZGVyOiA1Ow0KICAgICAgICAgICAgICAgIC1tcy1mbGV4LW9yZGVyOiA1Ow0KICAgICAgICAgICAgICAgIG9yZGVyOiA1DQogICAgICAgICAgICB9DQoNCiAgICAgICAgICAgIC5vcmRlci1zbS02IHsNCiAgICAgICAgICAgICAgICAtd2Via2l0LWJveC1vcmRpbmFsLWdyb3VwOiA3Ow0KICAgICAgICAgICAgICAgIC13ZWJraXQtb3JkZXI6IDY7DQogICAgICAgICAgICAgICAgLW1zLWZsZXgtb3JkZXI6IDY7DQogICAgICAgICAgICAgICAgb3JkZXI6IDYNCiAgICAgICAgICAgIH0NCg0KICAgICAgICAgICAgLm9yZGVyLXNtLTcgew0KICAgICAgICAgICAgICAgIC13ZWJraXQtYm94LW9yZGluYWwtZ3JvdXA6IDg7DQogICAgICAgICAgICAgICAgLXdlYmtpdC1vcmRlcjogNzsNCiAgICAgICAgICAgICAgICAtbXMtZmxleC1vcmRlcjogNzsNCiAgICAgICAgICAgICAgICBvcmRlcjogNw0KICAgICAgICAgICAgfQ0KDQogICAgICAgICAgICAub3JkZXItc20tOCB7DQogICAgICAgICAgICAgICAgLXdlYmtpdC1ib3gtb3JkaW5hbC1ncm91cDogOTsNCiAgICAgICAgICAgICAgICAtd2Via2l0LW9yZGVyOiA4Ow0KICAgICAgICAgICAgICAgIC1tcy1mbGV4LW9yZGVyOiA4Ow0KICAgICAgICAgICAgICAgIG9yZGVyOiA4DQogICAgICAgICAgICB9DQoNCiAgICAgICAgICAgIC5vcmRlci1zbS05IHsNCiAgICAgICAgICAgICAgICAtd2Via2l0LWJveC1vcmRpbmFsLWdyb3VwOiAxMDsNCiAgICAgICAgICAgICAgICAtd2Via2l0LW9yZGVyOiA5Ow0KICAgICAgICAgICAgICAgIC1tcy1mbGV4LW9yZGVyOiA5Ow0KICAgICAgICAgICAgICAgIG9yZGVyOiA5DQogICAgICAgICAgICB9DQoNCiAgICAgICAgICAgIC5vcmRlci1zbS0xMCB7DQogICAgICAgICAgICAgICAgLXdlYmtpdC1ib3gtb3JkaW5hbC1ncm91cDogMTE7DQogICAgICAgICAgICAgICAgLXdlYmtpdC1vcmRlcjogMTA7DQogICAgICAgICAgICAgICAgLW1zLWZsZXgtb3JkZXI6IDEwOw0KICAgICAgICAgICAgICAgIG9yZGVyOiAxMA0KICAgICAgICAgICAgfQ0KDQogICAgICAgICAgICAub3JkZXItc20tMTEgew0KICAgICAgICAgICAgICAgIC13ZWJraXQtYm94LW9yZGluYWwtZ3JvdXA6IDEyOw0KICAgICAgICAgICAgICAgIC13ZWJraXQtb3JkZXI6IDExOw0KICAgICAgICAgICAgICAgIC1tcy1mbGV4LW9yZGVyOiAxMTsNCiAgICAgICAgICAgICAgICBvcmRlcjogMTENCiAgICAgICAgICAgIH0NCg0KICAgICAgICAgICAgLm9yZGVyLXNtLTEyIHsNCiAgICAgICAgICAgICAgICAtd2Via2l0LWJveC1vcmRpbmFsLWdyb3VwOiAxMzsNCiAgICAgICAgICAgICAgICAtd2Via2l0LW9yZGVyOiAxMjsNCiAgICAgICAgICAgICAgICAtbXMtZmxleC1vcmRlcjogMTI7DQogICAgICAgICAgICAgICAgb3JkZXI6IDEyDQogICAgICAgICAgICB9DQoNCiAgICAgICAgICAgIC5vZmZzZXQtc20tMCB7DQogICAgICAgICAgICAgICAgbWFyZ2luLWxlZnQ6IDANCiAgICAgICAgICAgIH0NCg0KICAgICAgICAgICAgLm9mZnNldC1zbS0xIHsNCiAgICAgICAgICAgICAgICBtYXJnaW4tbGVmdDogOC4zMzMzMyUNCiAgICAgICAgICAgIH0NCg0KICAgICAgICAgICAgLm9mZnNldC1zbS0yIHsNCiAgICAgICAgICAgICAgICBtYXJnaW4tbGVmdDogMTYuNjY2NjclDQogICAgICAgICAgICB9DQoNCiAgICAgICAgICAgIC5vZmZzZXQtc20tMyB7DQogICAgICAgICAgICAgICAgbWFyZ2luLWxlZnQ6IDI1JQ0KICAgICAgICAgICAgfQ0KDQogICAgICAgICAgICAub2Zmc2V0LXNtLTQgew0KICAgICAgICAgICAgICAgIG1hcmdpbi1sZWZ0OiAzMy4zMzMzMyUNCiAgICAgICAgICAgIH0NCg0KICAgICAgICAgICAgLm9mZnNldC1zbS01IHsNCiAgICAgICAgICAgICAgICBtYXJnaW4tbGVmdDogNDEuNjY2NjclDQogICAgICAgICAgICB9DQoNCiAgICAgICAgICAgIC5vZmZzZXQtc20tNiB7DQogICAgICAgICAgICAgICAgbWFyZ2luLWxlZnQ6IDUwJQ0KICAgICAgICAgICAgfQ0KDQogICAgICAgICAgICAub2Zmc2V0LXNtLTcgew0KICAgICAgICAgICAgICAgIG1hcmdpbi1sZWZ0OiA1OC4zMzMzMyUNCiAgICAgICAgICAgIH0NCg0KICAgICAgICAgICAgLm9mZnNldC1zbS04IHsNCiAgICAgICAgICAgICAgICBtYXJnaW4tbGVmdDogNjYuNjY2NjclDQogICAgICAgICAgICB9DQoNCiAgICAgICAgICAgIC5vZmZzZXQtc20tOSB7DQogICAgICAgICAgICAgICAgbWFyZ2luLWxlZnQ6IDc1JQ0KICAgICAgICAgICAgfQ0KDQogICAgICAgICAgICAub2Zmc2V0LXNtLTEwIHsNCiAgICAgICAgICAgICAgICBtYXJnaW4tbGVmdDogODMuMzMzMzMlDQogICAgICAgICAgICB9DQoNCiAgICAgICAgICAgIC5vZmZzZXQtc20tMTEgew0KICAgICAgICAgICAgICAgIG1hcmdpbi1sZWZ0OiA5MS42NjY2NyUNCiAgICAgICAgICAgIH0NCiAgICAgICAgfQ0KDQogICAgICAgIEBtZWRpYSAobWluLXdpZHRoOjc2OHB4KSB7DQogICAgICAgICAgICAuY29sLW1kIHsNCiAgICAgICAgICAgICAgICAtd2Via2l0LWZsZXgtYmFzaXM6IDA7DQogICAgICAgICAgICAgICAgLW1zLWZsZXgtcHJlZmVycmVkLXNpemU6IDA7DQogICAgICAgICAgICAgICAgZmxleC1iYXNpczogMDsNCiAgICAgICAgICAgICAgICAtd2Via2l0LWJveC1mbGV4OiAxOw0KICAgICAgICAgICAgICAgIC13ZWJraXQtZmxleC1ncm93OiAxOw0KICAgICAgICAgICAgICAgIC1tcy1mbGV4LXBvc2l0aXZlOiAxOw0KICAgICAgICAgICAgICAgIGZsZXgtZ3JvdzogMTsNCiAgICAgICAgICAgICAgICBtYXgtd2lkdGg6IDEwMCUNCiAgICAgICAgICAgIH0NCg0KICAgICAgICAgICAgLmNvbC1tZC1hdXRvIHsNCiAgICAgICAgICAgICAgICAtd2Via2l0LWJveC1mbGV4OiAwOw0KICAgICAgICAgICAgICAgIC13ZWJraXQtZmxleDogMCAwIGF1dG87DQogICAgICAgICAgICAgICAgLW1zLWZsZXg6IDAgMCBhdXRvOw0KICAgICAgICAgICAgICAgIGZsZXg6IDAgMCBhdXRvOw0KICAgICAgICAgICAgICAgIHdpZHRoOiBhdXRvOw0KICAgICAgICAgICAgICAgIG1heC13aWR0aDogMTAwJQ0KICAgICAgICAgICAgfQ0KDQogICAgICAgICAgICAuY29sLW1kLTEgew0KICAgICAgICAgICAgICAgIC13ZWJraXQtYm94LWZsZXg6IDA7DQogICAgICAgICAgICAgICAgLXdlYmtpdC1mbGV4OiAwIDAgOC4zMzMzMyU7DQogICAgICAgICAgICAgICAgLW1zLWZsZXg6IDAgMCA4LjMzMzMzJTsNCiAgICAgICAgICAgICAgICBmbGV4OiAwIDAgOC4zMzMzMyU7DQogICAgICAgICAgICAgICAgbWF4LXdpZHRoOiA4LjMzMzMzJQ0KICAgICAgICAgICAgfQ0KDQogICAgICAgICAgICAuY29sLW1kLTIgew0KICAgICAgICAgICAgICAgIC13ZWJraXQtYm94LWZsZXg6IDA7DQogICAgICAgICAgICAgICAgLXdlYmtpdC1mbGV4OiAwIDAgMTYuNjY2NjclOw0KICAgICAgICAgICAgICAgIC1tcy1mbGV4OiAwIDAgMTYuNjY2NjclOw0KICAgICAgICAgICAgICAgIGZsZXg6IDAgMCAxNi42NjY2NyU7DQogICAgICAgICAgICAgICAgbWF4LXdpZHRoOiAxNi42NjY2NyUNCiAgICAgICAgICAgIH0NCg0KICAgICAgICAgICAgLmNvbC1tZC0zIHsNCiAgICAgICAgICAgICAgICAtd2Via2l0LWJveC1mbGV4OiAwOw0KICAgICAgICAgICAgICAgIC13ZWJraXQtZmxleDogMCAwIDI1JTsNCiAgICAgICAgICAgICAgICAtbXMtZmxleDogMCAwIDI1JTsNCiAgICAgICAgICAgICAgICBmbGV4OiAwIDAgMjUlOw0KICAgICAgICAgICAgICAgIG1heC13aWR0aDogMjUlDQogICAgICAgICAgICB9DQoNCiAgICAgICAgICAgIC5jb2wtbWQtNCB7DQogICAgICAgICAgICAgICAgLXdlYmtpdC1ib3gtZmxleDogMDsNCiAgICAgICAgICAgICAgICAtd2Via2l0LWZsZXg6IDAgMCAzMy4zMzMzMyU7DQogICAgICAgICAgICAgICAgLW1zLWZsZXg6IDAgMCAzMy4zMzMzMyU7DQogICAgICAgICAgICAgICAgZmxleDogMCAwIDMzLjMzMzMzJTsNCiAgICAgICAgICAgICAgICBtYXgtd2lkdGg6IDMzLjMzMzMzJQ0KICAgICAgICAgICAgfQ0KDQogICAgICAgICAgICAuY29sLW1kLTUgew0KICAgICAgICAgICAgICAgIC13ZWJraXQtYm94LWZsZXg6IDA7DQogICAgICAgICAgICAgICAgLXdlYmtpdC1mbGV4OiAwIDAgNDEuNjY2NjclOw0KICAgICAgICAgICAgICAgIC1tcy1mbGV4OiAwIDAgNDEuNjY2NjclOw0KICAgICAgICAgICAgICAgIGZsZXg6IDAgMCA0MS42NjY2NyU7DQogICAgICAgICAgICAgICAgbWF4LXdpZHRoOiA0MS42NjY2NyUNCiAgICAgICAgICAgIH0NCg0KICAgICAgICAgICAgLmNvbC1tZC02IHsNCiAgICAgICAgICAgICAgICAtd2Via2l0LWJveC1mbGV4OiAwOw0KICAgICAgICAgICAgICAgIC13ZWJraXQtZmxleDogMCAwIDUwJTsNCiAgICAgICAgICAgICAgICAtbXMtZmxleDogMCAwIDUwJTsNCiAgICAgICAgICAgICAgICBmbGV4OiAwIDAgNTAlOw0KICAgICAgICAgICAgICAgIG1heC13aWR0aDogNTAlDQogICAgICAgICAgICB9DQoNCiAgICAgICAgICAgIC5jb2wtbWQtNyB7DQogICAgICAgICAgICAgICAgLXdlYmtpdC1ib3gtZmxleDogMDsNCiAgICAgICAgICAgICAgICAtd2Via2l0LWZsZXg6IDAgMCA1OC4zMzMzMyU7DQogICAgICAgICAgICAgICAgLW1zLWZsZXg6IDAgMCA1OC4zMzMzMyU7DQogICAgICAgICAgICAgICAgZmxleDogMCAwIDU4LjMzMzMzJTsNCiAgICAgICAgICAgICAgICBtYXgtd2lkdGg6IDU4LjMzMzMzJQ0KICAgICAgICAgICAgfQ0KDQogICAgICAgICAgICAuY29sLW1kLTggew0KICAgICAgICAgICAgICAgIC13ZWJraXQtYm94LWZsZXg6IDA7DQogICAgICAgICAgICAgICAgLXdlYmtpdC1mbGV4OiAwIDAgNjYuNjY2NjclOw0KICAgICAgICAgICAgICAgIC1tcy1mbGV4OiAwIDAgNjYuNjY2NjclOw0KICAgICAgICAgICAgICAgIGZsZXg6IDAgMCA2Ni42NjY2NyU7DQogICAgICAgICAgICAgICAgbWF4LXdpZHRoOiA2Ni42NjY2NyUNCiAgICAgICAgICAgIH0NCg0KICAgICAgICAgICAgLmNvbC1tZC05IHsNCiAgICAgICAgICAgICAgICAtd2Via2l0LWJveC1mbGV4OiAwOw0KICAgICAgICAgICAgICAgIC13ZWJraXQtZmxleDogMCAwIDc1JTsNCiAgICAgICAgICAgICAgICAtbXMtZmxleDogMCAwIDc1JTsNCiAgICAgICAgICAgICAgICBmbGV4OiAwIDAgNzUlOw0KICAgICAgICAgICAgICAgIG1heC13aWR0aDogNzUlDQogICAgICAgICAgICB9DQoNCiAgICAgICAgICAgIC5jb2wtbWQtMTAgew0KICAgICAgICAgICAgICAgIC13ZWJraXQtYm94LWZsZXg6IDA7DQogICAgICAgICAgICAgICAgLXdlYmtpdC1mbGV4OiAwIDAgODMuMzMzMzMlOw0KICAgICAgICAgICAgICAgIC1tcy1mbGV4OiAwIDAgODMuMzMzMzMlOw0KICAgICAgICAgICAgICAgIGZsZXg6IDAgMCA4My4zMzMzMyU7DQogICAgICAgICAgICAgICAgbWF4LXdpZHRoOiA4My4zMzMzMyUNCiAgICAgICAgICAgIH0NCg0KICAgICAgICAgICAgLmNvbC1tZC0xMSB7DQogICAgICAgICAgICAgICAgLXdlYmtpdC1ib3gtZmxleDogMDsNCiAgICAgICAgICAgICAgICAtd2Via2l0LWZsZXg6IDAgMCA5MS42NjY2NyU7DQogICAgICAgICAgICAgICAgLW1zLWZsZXg6IDAgMCA5MS42NjY2NyU7DQogICAgICAgICAgICAgICAgZmxleDogMCAwIDkxLjY2NjY3JTsNCiAgICAgICAgICAgICAgICBtYXgtd2lkdGg6IDkxLjY2NjY3JQ0KICAgICAgICAgICAgfQ0KDQogICAgICAgICAgICAuY29sLW1kLTEyIHsNCiAgICAgICAgICAgICAgICAtd2Via2l0LWJveC1mbGV4OiAwOw0KICAgICAgICAgICAgICAgIC13ZWJraXQtZmxleDogMCAwIDEwMCU7DQogICAgICAgICAgICAgICAgLW1zLWZsZXg6IDAgMCAxMDAlOw0KICAgICAgICAgICAgICAgIGZsZXg6IDAgMCAxMDAlOw0KICAgICAgICAgICAgICAgIG1heC13aWR0aDogMTAwJQ0KICAgICAgICAgICAgfQ0KDQogICAgICAgICAgICAub3JkZXItbWQtZmlyc3Qgew0KICAgICAgICAgICAgICAgIC13ZWJraXQtYm94LW9yZGluYWwtZ3JvdXA6IDA7DQogICAgICAgICAgICAgICAgLXdlYmtpdC1vcmRlcjogLTE7DQogICAgICAgICAgICAgICAgLW1zLWZsZXgtb3JkZXI6IC0xOw0KICAgICAgICAgICAgICAgIG9yZGVyOiAtMQ0KICAgICAgICAgICAgfQ0KDQogICAgICAgICAgICAub3JkZXItbWQtbGFzdCB7DQogICAgICAgICAgICAgICAgLXdlYmtpdC1ib3gtb3JkaW5hbC1ncm91cDogMTQ7DQogICAgICAgICAgICAgICAgLXdlYmtpdC1vcmRlcjogMTM7DQogICAgICAgICAgICAgICAgLW1zLWZsZXgtb3JkZXI6IDEzOw0KICAgICAgICAgICAgICAgIG9yZGVyOiAxMw0KICAgICAgICAgICAgfQ0KDQogICAgICAgICAgICAub3JkZXItbWQtMCB7DQogICAgICAgICAgICAgICAgLXdlYmtpdC1ib3gtb3JkaW5hbC1ncm91cDogMTsNCiAgICAgICAgICAgICAgICAtd2Via2l0LW9yZGVyOiAwOw0KICAgICAgICAgICAgICAgIC1tcy1mbGV4LW9yZGVyOiAwOw0KICAgICAgICAgICAgICAgIG9yZGVyOiAwDQogICAgICAgICAgICB9DQoNCiAgICAgICAgICAgIC5vcmRlci1tZC0xIHsNCiAgICAgICAgICAgICAgICAtd2Via2l0LWJveC1vcmRpbmFsLWdyb3VwOiAyOw0KICAgICAgICAgICAgICAgIC13ZWJraXQtb3JkZXI6IDE7DQogICAgICAgICAgICAgICAgLW1zLWZsZXgtb3JkZXI6IDE7DQogICAgICAgICAgICAgICAgb3JkZXI6IDENCiAgICAgICAgICAgIH0NCg0KICAgICAgICAgICAgLm9yZGVyLW1kLTIgew0KICAgICAgICAgICAgICAgIC13ZWJraXQtYm94LW9yZGluYWwtZ3JvdXA6IDM7DQogICAgICAgICAgICAgICAgLXdlYmtpdC1vcmRlcjogMjsNCiAgICAgICAgICAgICAgICAtbXMtZmxleC1vcmRlcjogMjsNCiAgICAgICAgICAgICAgICBvcmRlcjogMg0KICAgICAgICAgICAgfQ0KDQogICAgICAgICAgICAub3JkZXItbWQtMyB7DQogICAgICAgICAgICAgICAgLXdlYmtpdC1ib3gtb3JkaW5hbC1ncm91cDogNDsNCiAgICAgICAgICAgICAgICAtd2Via2l0LW9yZGVyOiAzOw0KICAgICAgICAgICAgICAgIC1tcy1mbGV4LW9yZGVyOiAzOw0KICAgICAgICAgICAgICAgIG9yZGVyOiAzDQogICAgICAgICAgICB9DQoNCiAgICAgICAgICAgIC5vcmRlci1tZC00IHsNCiAgICAgICAgICAgICAgICAtd2Via2l0LWJveC1vcmRpbmFsLWdyb3VwOiA1Ow0KICAgICAgICAgICAgICAgIC13ZWJraXQtb3JkZXI6IDQ7DQogICAgICAgICAgICAgICAgLW1zLWZsZXgtb3JkZXI6IDQ7DQogICAgICAgICAgICAgICAgb3JkZXI6IDQNCiAgICAgICAgICAgIH0NCg0KICAgICAgICAgICAgLm9yZGVyLW1kLTUgew0KICAgICAgICAgICAgICAgIC13ZWJraXQtYm94LW9yZGluYWwtZ3JvdXA6IDY7DQogICAgICAgICAgICAgICAgLXdlYmtpdC1vcmRlcjogNTsNCiAgICAgICAgICAgICAgICAtbXMtZmxleC1vcmRlcjogNTsNCiAgICAgICAgICAgICAgICBvcmRlcjogNQ0KICAgICAgICAgICAgfQ0KDQogICAgICAgICAgICAub3JkZXItbWQtNiB7DQogICAgICAgICAgICAgICAgLXdlYmtpdC1ib3gtb3JkaW5hbC1ncm91cDogNzsNCiAgICAgICAgICAgICAgICAtd2Via2l0LW9yZGVyOiA2Ow0KICAgICAgICAgICAgICAgIC1tcy1mbGV4LW9yZGVyOiA2Ow0KICAgICAgICAgICAgICAgIG9yZGVyOiA2DQogICAgICAgICAgICB9DQoNCiAgICAgICAgICAgIC5vcmRlci1tZC03IHsNCiAgICAgICAgICAgICAgICAtd2Via2l0LWJveC1vcmRpbmFsLWdyb3VwOiA4Ow0KICAgICAgICAgICAgICAgIC13ZWJraXQtb3JkZXI6IDc7DQogICAgICAgICAgICAgICAgLW1zLWZsZXgtb3JkZXI6IDc7DQogICAgICAgICAgICAgICAgb3JkZXI6IDcNCiAgICAgICAgICAgIH0NCg0KICAgICAgICAgICAgLm9yZGVyLW1kLTggew0KICAgICAgICAgICAgICAgIC13ZWJraXQtYm94LW9yZGluYWwtZ3JvdXA6IDk7DQogICAgICAgICAgICAgICAgLXdlYmtpdC1vcmRlcjogODsNCiAgICAgICAgICAgICAgICAtbXMtZmxleC1vcmRlcjogODsNCiAgICAgICAgICAgICAgICBvcmRlcjogOA0KICAgICAgICAgICAgfQ0KDQogICAgICAgICAgICAub3JkZXItbWQtOSB7DQogICAgICAgICAgICAgICAgLXdlYmtpdC1ib3gtb3JkaW5hbC1ncm91cDogMTA7DQogICAgICAgICAgICAgICAgLXdlYmtpdC1vcmRlcjogOTsNCiAgICAgICAgICAgICAgICAtbXMtZmxleC1vcmRlcjogOTsNCiAgICAgICAgICAgICAgICBvcmRlcjogOQ0KICAgICAgICAgICAgfQ0KDQogICAgICAgICAgICAub3JkZXItbWQtMTAgew0KICAgICAgICAgICAgICAgIC13ZWJraXQtYm94LW9yZGluYWwtZ3JvdXA6IDExOw0KICAgICAgICAgICAgICAgIC13ZWJraXQtb3JkZXI6IDEwOw0KICAgICAgICAgICAgICAgIC1tcy1mbGV4LW9yZGVyOiAxMDsNCiAgICAgICAgICAgICAgICBvcmRlcjogMTANCiAgICAgICAgICAgIH0NCg0KICAgICAgICAgICAgLm9yZGVyLW1kLTExIHsNCiAgICAgICAgICAgICAgICAtd2Via2l0LWJveC1vcmRpbmFsLWdyb3VwOiAxMjsNCiAgICAgICAgICAgICAgICAtd2Via2l0LW9yZGVyOiAxMTsNCiAgICAgICAgICAgICAgICAtbXMtZmxleC1vcmRlcjogMTE7DQogICAgICAgICAgICAgICAgb3JkZXI6IDExDQogICAgICAgICAgICB9DQoNCiAgICAgICAgICAgIC5vcmRlci1tZC0xMiB7DQogICAgICAgICAgICAgICAgLXdlYmtpdC1ib3gtb3JkaW5hbC1ncm91cDogMTM7DQogICAgICAgICAgICAgICAgLXdlYmtpdC1vcmRlcjogMTI7DQogICAgICAgICAgICAgICAgLW1zLWZsZXgtb3JkZXI6IDEyOw0KICAgICAgICAgICAgICAgIG9yZGVyOiAxMg0KICAgICAgICAgICAgfQ0KDQogICAgICAgICAgICAub2Zmc2V0LW1kLTAgew0KICAgICAgICAgICAgICAgIG1hcmdpbi1sZWZ0OiAwDQogICAgICAgICAgICB9DQoNCiAgICAgICAgICAgIC5vZmZzZXQtbWQtMSB7DQogICAgICAgICAgICAgICAgbWFyZ2luLWxlZnQ6IDguMzMzMzMlDQogICAgICAgICAgICB9DQoNCiAgICAgICAgICAgIC5vZmZzZXQtbWQtMiB7DQogICAgICAgICAgICAgICAgbWFyZ2luLWxlZnQ6IDE2LjY2NjY3JQ0KICAgICAgICAgICAgfQ0KDQogICAgICAgICAgICAub2Zmc2V0LW1kLTMgew0KICAgICAgICAgICAgICAgIG1hcmdpbi1sZWZ0OiAyNSUNCiAgICAgICAgICAgIH0NCg0KICAgICAgICAgICAgLm9mZnNldC1tZC00IHsNCiAgICAgICAgICAgICAgICBtYXJnaW4tbGVmdDogMzMuMzMzMzMlDQogICAgICAgICAgICB9DQoNCiAgICAgICAgICAgIC5vZmZzZXQtbWQtNSB7DQogICAgICAgICAgICAgICAgbWFyZ2luLWxlZnQ6IDQxLjY2NjY3JQ0KICAgICAgICAgICAgfQ0KDQogICAgICAgICAgICAub2Zmc2V0LW1kLTYgew0KICAgICAgICAgICAgICAgIG1hcmdpbi1sZWZ0OiA1MCUNCiAgICAgICAgICAgIH0NCg0KICAgICAgICAgICAgLm9mZnNldC1tZC03IHsNCiAgICAgICAgICAgICAgICBtYXJnaW4tbGVmdDogNTguMzMzMzMlDQogICAgICAgICAgICB9DQoNCiAgICAgICAgICAgIC5vZmZzZXQtbWQtOCB7DQogICAgICAgICAgICAgICAgbWFyZ2luLWxlZnQ6IDY2LjY2NjY3JQ0KICAgICAgICAgICAgfQ0KDQogICAgICAgICAgICAub2Zmc2V0LW1kLTkgew0KICAgICAgICAgICAgICAgIG1hcmdpbi1sZWZ0OiA3NSUNCiAgICAgICAgICAgIH0NCg0KICAgICAgICAgICAgLm9mZnNldC1tZC0xMCB7DQogICAgICAgICAgICAgICAgbWFyZ2luLWxlZnQ6IDgzLjMzMzMzJQ0KICAgICAgICAgICAgfQ0KDQogICAgICAgICAgICAub2Zmc2V0LW1kLTExIHsNCiAgICAgICAgICAgICAgICBtYXJnaW4tbGVmdDogOTEuNjY2NjclDQogICAgICAgICAgICB9DQogICAgICAgIH0NCg0KICAgICAgICBAbWVkaWEgKG1pbi13aWR0aDo5OTJweCkgew0KICAgICAgICAgICAgLmNvbC1sZyB7DQogICAgICAgICAgICAgICAgLXdlYmtpdC1mbGV4LWJhc2lzOiAwOw0KICAgICAgICAgICAgICAgIC1tcy1mbGV4LXByZWZlcnJlZC1zaXplOiAwOw0KICAgICAgICAgICAgICAgIGZsZXgtYmFzaXM6IDA7DQogICAgICAgICAgICAgICAgLXdlYmtpdC1ib3gtZmxleDogMTsNCiAgICAgICAgICAgICAgICAtd2Via2l0LWZsZXgtZ3JvdzogMTsNCiAgICAgICAgICAgICAgICAtbXMtZmxleC1wb3NpdGl2ZTogMTsNCiAgICAgICAgICAgICAgICBmbGV4LWdyb3c6IDE7DQogICAgICAgICAgICAgICAgbWF4LXdpZHRoOiAxMDAlDQogICAgICAgICAgICB9DQoNCiAgICAgICAgICAgIC5jb2wtbGctYXV0byB7DQogICAgICAgICAgICAgICAgLXdlYmtpdC1ib3gtZmxleDogMDsNCiAgICAgICAgICAgICAgICAtd2Via2l0LWZsZXg6IDAgMCBhdXRvOw0KICAgICAgICAgICAgICAgIC1tcy1mbGV4OiAwIDAgYXV0bzsNCiAgICAgICAgICAgICAgICBmbGV4OiAwIDAgYXV0bzsNCiAgICAgICAgICAgICAgICB3aWR0aDogYXV0bzsNCiAgICAgICAgICAgICAgICBtYXgtd2lkdGg6IDEwMCUNCiAgICAgICAgICAgIH0NCg0KICAgICAgICAgICAgLmNvbC1sZy0xIHsNCiAgICAgICAgICAgICAgICAtd2Via2l0LWJveC1mbGV4OiAwOw0KICAgICAgICAgICAgICAgIC13ZWJraXQtZmxleDogMCAwIDguMzMzMzMlOw0KICAgICAgICAgICAgICAgIC1tcy1mbGV4OiAwIDAgOC4zMzMzMyU7DQogICAgICAgICAgICAgICAgZmxleDogMCAwIDguMzMzMzMlOw0KICAgICAgICAgICAgICAgIG1heC13aWR0aDogOC4zMzMzMyUNCiAgICAgICAgICAgIH0NCg0KICAgICAgICAgICAgLmNvbC1sZy0yIHsNCiAgICAgICAgICAgICAgICAtd2Via2l0LWJveC1mbGV4OiAwOw0KICAgICAgICAgICAgICAgIC13ZWJraXQtZmxleDogMCAwIDE2LjY2NjY3JTsNCiAgICAgICAgICAgICAgICAtbXMtZmxleDogMCAwIDE2LjY2NjY3JTsNCiAgICAgICAgICAgICAgICBmbGV4OiAwIDAgMTYuNjY2NjclOw0KICAgICAgICAgICAgICAgIG1heC13aWR0aDogMTYuNjY2NjclDQogICAgICAgICAgICB9DQoNCiAgICAgICAgICAgIC5jb2wtbGctMyB7DQogICAgICAgICAgICAgICAgLXdlYmtpdC1ib3gtZmxleDogMDsNCiAgICAgICAgICAgICAgICAtd2Via2l0LWZsZXg6IDAgMCAyNSU7DQogICAgICAgICAgICAgICAgLW1zLWZsZXg6IDAgMCAyNSU7DQogICAgICAgICAgICAgICAgZmxleDogMCAwIDI1JTsNCiAgICAgICAgICAgICAgICBtYXgtd2lkdGg6IDI1JQ0KICAgICAgICAgICAgfQ0KDQogICAgICAgICAgICAuY29sLWxnLTQgew0KICAgICAgICAgICAgICAgIC13ZWJraXQtYm94LWZsZXg6IDA7DQogICAgICAgICAgICAgICAgLXdlYmtpdC1mbGV4OiAwIDAgMzMuMzMzMzMlOw0KICAgICAgICAgICAgICAgIC1tcy1mbGV4OiAwIDAgMzMuMzMzMzMlOw0KICAgICAgICAgICAgICAgIGZsZXg6IDAgMCAzMy4zMzMzMyU7DQogICAgICAgICAgICAgICAgbWF4LXdpZHRoOiAzMy4zMzMzMyUNCiAgICAgICAgICAgIH0NCg0KICAgICAgICAgICAgLmNvbC1sZy01IHsNCiAgICAgICAgICAgICAgICAtd2Via2l0LWJveC1mbGV4OiAwOw0KICAgICAgICAgICAgICAgIC13ZWJraXQtZmxleDogMCAwIDQxLjY2NjY3JTsNCiAgICAgICAgICAgICAgICAtbXMtZmxleDogMCAwIDQxLjY2NjY3JTsNCiAgICAgICAgICAgICAgICBmbGV4OiAwIDAgNDEuNjY2NjclOw0KICAgICAgICAgICAgICAgIG1heC13aWR0aDogNDEuNjY2NjclDQogICAgICAgICAgICB9DQoNCiAgICAgICAgICAgIC5jb2wtbGctNiB7DQogICAgICAgICAgICAgICAgLXdlYmtpdC1ib3gtZmxleDogMDsNCiAgICAgICAgICAgICAgICAtd2Via2l0LWZsZXg6IDAgMCA1MCU7DQogICAgICAgICAgICAgICAgLW1zLWZsZXg6IDAgMCA1MCU7DQogICAgICAgICAgICAgICAgZmxleDogMCAwIDUwJTsNCiAgICAgICAgICAgICAgICBtYXgtd2lkdGg6IDUwJQ0KICAgICAgICAgICAgfQ0KDQogICAgICAgICAgICAuY29sLWxnLTcgew0KICAgICAgICAgICAgICAgIC13ZWJraXQtYm94LWZsZXg6IDA7DQogICAgICAgICAgICAgICAgLXdlYmtpdC1mbGV4OiAwIDAgNTguMzMzMzMlOw0KICAgICAgICAgICAgICAgIC1tcy1mbGV4OiAwIDAgNTguMzMzMzMlOw0KICAgICAgICAgICAgICAgIGZsZXg6IDAgMCA1OC4zMzMzMyU7DQogICAgICAgICAgICAgICAgbWF4LXdpZHRoOiA1OC4zMzMzMyUNCiAgICAgICAgICAgIH0NCg0KICAgICAgICAgICAgLmNvbC1sZy04IHsNCiAgICAgICAgICAgICAgICAtd2Via2l0LWJveC1mbGV4OiAwOw0KICAgICAgICAgICAgICAgIC13ZWJraXQtZmxleDogMCAwIDY2LjY2NjY3JTsNCiAgICAgICAgICAgICAgICAtbXMtZmxleDogMCAwIDY2LjY2NjY3JTsNCiAgICAgICAgICAgICAgICBmbGV4OiAwIDAgNjYuNjY2NjclOw0KICAgICAgICAgICAgICAgIG1heC13aWR0aDogNjYuNjY2NjclDQogICAgICAgICAgICB9DQoNCiAgICAgICAgICAgIC5jb2wtbGctOSB7DQogICAgICAgICAgICAgICAgLXdlYmtpdC1ib3gtZmxleDogMDsNCiAgICAgICAgICAgICAgICAtd2Via2l0LWZsZXg6IDAgMCA3NSU7DQogICAgICAgICAgICAgICAgLW1zLWZsZXg6IDAgMCA3NSU7DQogICAgICAgICAgICAgICAgZmxleDogMCAwIDc1JTsNCiAgICAgICAgICAgICAgICBtYXgtd2lkdGg6IDc1JQ0KICAgICAgICAgICAgfQ0KDQogICAgICAgICAgICAuY29sLWxnLTEwIHsNCiAgICAgICAgICAgICAgICAtd2Via2l0LWJveC1mbGV4OiAwOw0KICAgICAgICAgICAgICAgIC13ZWJraXQtZmxleDogMCAwIDgzLjMzMzMzJTsNCiAgICAgICAgICAgICAgICAtbXMtZmxleDogMCAwIDgzLjMzMzMzJTsNCiAgICAgICAgICAgICAgICBmbGV4OiAwIDAgODMuMzMzMzMlOw0KICAgICAgICAgICAgICAgIG1heC13aWR0aDogODMuMzMzMzMlDQogICAgICAgICAgICB9DQoNCiAgICAgICAgICAgIC5jb2wtbGctMTEgew0KICAgICAgICAgICAgICAgIC13ZWJraXQtYm94LWZsZXg6IDA7DQogICAgICAgICAgICAgICAgLXdlYmtpdC1mbGV4OiAwIDAgOTEuNjY2NjclOw0KICAgICAgICAgICAgICAgIC1tcy1mbGV4OiAwIDAgOTEuNjY2NjclOw0KICAgICAgICAgICAgICAgIGZsZXg6IDAgMCA5MS42NjY2NyU7DQogICAgICAgICAgICAgICAgbWF4LXdpZHRoOiA5MS42NjY2NyUNCiAgICAgICAgICAgIH0NCg0KICAgICAgICAgICAgLmNvbC1sZy0xMiB7DQogICAgICAgICAgICAgICAgLXdlYmtpdC1ib3gtZmxleDogMDsNCiAgICAgICAgICAgICAgICAtd2Via2l0LWZsZXg6IDAgMCAxMDAlOw0KICAgICAgICAgICAgICAgIC1tcy1mbGV4OiAwIDAgMTAwJTsNCiAgICAgICAgICAgICAgICBmbGV4OiAwIDAgMTAwJTsNCiAgICAgICAgICAgICAgICBtYXgtd2lkdGg6IDEwMCUNCiAgICAgICAgICAgIH0NCg0KICAgICAgICAgICAgLm9yZGVyLWxnLWZpcnN0IHsNCiAgICAgICAgICAgICAgICAtd2Via2l0LWJveC1vcmRpbmFsLWdyb3VwOiAwOw0KICAgICAgICAgICAgICAgIC13ZWJraXQtb3JkZXI6IC0xOw0KICAgICAgICAgICAgICAgIC1tcy1mbGV4LW9yZGVyOiAtMTsNCiAgICAgICAgICAgICAgICBvcmRlcjogLTENCiAgICAgICAgICAgIH0NCg0KICAgICAgICAgICAgLm9yZGVyLWxnLWxhc3Qgew0KICAgICAgICAgICAgICAgIC13ZWJraXQtYm94LW9yZGluYWwtZ3JvdXA6IDE0Ow0KICAgICAgICAgICAgICAgIC13ZWJraXQtb3JkZXI6IDEzOw0KICAgICAgICAgICAgICAgIC1tcy1mbGV4LW9yZGVyOiAxMzsNCiAgICAgICAgICAgICAgICBvcmRlcjogMTMNCiAgICAgICAgICAgIH0NCg0KICAgICAgICAgICAgLm9yZGVyLWxnLTAgew0KICAgICAgICAgICAgICAgIC13ZWJraXQtYm94LW9yZGluYWwtZ3JvdXA6IDE7DQogICAgICAgICAgICAgICAgLXdlYmtpdC1vcmRlcjogMDsNCiAgICAgICAgICAgICAgICAtbXMtZmxleC1vcmRlcjogMDsNCiAgICAgICAgICAgICAgICBvcmRlcjogMA0KICAgICAgICAgICAgfQ0KDQogICAgICAgICAgICAub3JkZXItbGctMSB7DQogICAgICAgICAgICAgICAgLXdlYmtpdC1ib3gtb3JkaW5hbC1ncm91cDogMjsNCiAgICAgICAgICAgICAgICAtd2Via2l0LW9yZGVyOiAxOw0KICAgICAgICAgICAgICAgIC1tcy1mbGV4LW9yZGVyOiAxOw0KICAgICAgICAgICAgICAgIG9yZGVyOiAxDQogICAgICAgICAgICB9DQoNCiAgICAgICAgICAgIC5vcmRlci1sZy0yIHsNCiAgICAgICAgICAgICAgICAtd2Via2l0LWJveC1vcmRpbmFsLWdyb3VwOiAzOw0KICAgICAgICAgICAgICAgIC13ZWJraXQtb3JkZXI6IDI7DQogICAgICAgICAgICAgICAgLW1zLWZsZXgtb3JkZXI6IDI7DQogICAgICAgICAgICAgICAgb3JkZXI6IDINCiAgICAgICAgICAgIH0NCg0KICAgICAgICAgICAgLm9yZGVyLWxnLTMgew0KICAgICAgICAgICAgICAgIC13ZWJraXQtYm94LW9yZGluYWwtZ3JvdXA6IDQ7DQogICAgICAgICAgICAgICAgLXdlYmtpdC1vcmRlcjogMzsNCiAgICAgICAgICAgICAgICAtbXMtZmxleC1vcmRlcjogMzsNCiAgICAgICAgICAgICAgICBvcmRlcjogMw0KICAgICAgICAgICAgfQ0KDQogICAgICAgICAgICAub3JkZXItbGctNCB7DQogICAgICAgICAgICAgICAgLXdlYmtpdC1ib3gtb3JkaW5hbC1ncm91cDogNTsNCiAgICAgICAgICAgICAgICAtd2Via2l0LW9yZGVyOiA0Ow0KICAgICAgICAgICAgICAgIC1tcy1mbGV4LW9yZGVyOiA0Ow0KICAgICAgICAgICAgICAgIG9yZGVyOiA0DQogICAgICAgICAgICB9DQoNCiAgICAgICAgICAgIC5vcmRlci1sZy01IHsNCiAgICAgICAgICAgICAgICAtd2Via2l0LWJveC1vcmRpbmFsLWdyb3VwOiA2Ow0KICAgICAgICAgICAgICAgIC13ZWJraXQtb3JkZXI6IDU7DQogICAgICAgICAgICAgICAgLW1zLWZsZXgtb3JkZXI6IDU7DQogICAgICAgICAgICAgICAgb3JkZXI6IDUNCiAgICAgICAgICAgIH0NCg0KICAgICAgICAgICAgLm9yZGVyLWxnLTYgew0KICAgICAgICAgICAgICAgIC13ZWJraXQtYm94LW9yZGluYWwtZ3JvdXA6IDc7DQogICAgICAgICAgICAgICAgLXdlYmtpdC1vcmRlcjogNjsNCiAgICAgICAgICAgICAgICAtbXMtZmxleC1vcmRlcjogNjsNCiAgICAgICAgICAgICAgICBvcmRlcjogNg0KICAgICAgICAgICAgfQ0KDQogICAgICAgICAgICAub3JkZXItbGctNyB7DQogICAgICAgICAgICAgICAgLXdlYmtpdC1ib3gtb3JkaW5hbC1ncm91cDogODsNCiAgICAgICAgICAgICAgICAtd2Via2l0LW9yZGVyOiA3Ow0KICAgICAgICAgICAgICAgIC1tcy1mbGV4LW9yZGVyOiA3Ow0KICAgICAgICAgICAgICAgIG9yZGVyOiA3DQogICAgICAgICAgICB9DQoNCiAgICAgICAgICAgIC5vcmRlci1sZy04IHsNCiAgICAgICAgICAgICAgICAtd2Via2l0LWJveC1vcmRpbmFsLWdyb3VwOiA5Ow0KICAgICAgICAgICAgICAgIC13ZWJraXQtb3JkZXI6IDg7DQogICAgICAgICAgICAgICAgLW1zLWZsZXgtb3JkZXI6IDg7DQogICAgICAgICAgICAgICAgb3JkZXI6IDgNCiAgICAgICAgICAgIH0NCg0KICAgICAgICAgICAgLm9yZGVyLWxnLTkgew0KICAgICAgICAgICAgICAgIC13ZWJraXQtYm94LW9yZGluYWwtZ3JvdXA6IDEwOw0KICAgICAgICAgICAgICAgIC13ZWJraXQtb3JkZXI6IDk7DQogICAgICAgICAgICAgICAgLW1zLWZsZXgtb3JkZXI6IDk7DQogICAgICAgICAgICAgICAgb3JkZXI6IDkNCiAgICAgICAgICAgIH0NCg0KICAgICAgICAgICAgLm9yZGVyLWxnLTEwIHsNCiAgICAgICAgICAgICAgICAtd2Via2l0LWJveC1vcmRpbmFsLWdyb3VwOiAxMTsNCiAgICAgICAgICAgICAgICAtd2Via2l0LW9yZGVyOiAxMDsNCiAgICAgICAgICAgICAgICAtbXMtZmxleC1vcmRlcjogMTA7DQogICAgICAgICAgICAgICAgb3JkZXI6IDEwDQogICAgICAgICAgICB9DQoNCiAgICAgICAgICAgIC5vcmRlci1sZy0xMSB7DQogICAgICAgICAgICAgICAgLXdlYmtpdC1ib3gtb3JkaW5hbC1ncm91cDogMTI7DQogICAgICAgICAgICAgICAgLXdlYmtpdC1vcmRlcjogMTE7DQogICAgICAgICAgICAgICAgLW1zLWZsZXgtb3JkZXI6IDExOw0KICAgICAgICAgICAgICAgIG9yZGVyOiAxMQ0KICAgICAgICAgICAgfQ0KDQogICAgICAgICAgICAub3JkZXItbGctMTIgew0KICAgICAgICAgICAgICAgIC13ZWJraXQtYm94LW9yZGluYWwtZ3JvdXA6IDEzOw0KICAgICAgICAgICAgICAgIC13ZWJraXQtb3JkZXI6IDEyOw0KICAgICAgICAgICAgICAgIC1tcy1mbGV4LW9yZGVyOiAxMjsNCiAgICAgICAgICAgICAgICBvcmRlcjogMTINCiAgICAgICAgICAgIH0NCg0KICAgICAgICAgICAgLm9mZnNldC1sZy0wIHsNCiAgICAgICAgICAgICAgICBtYXJnaW4tbGVmdDogMA0KICAgICAgICAgICAgfQ0KDQogICAgICAgICAgICAub2Zmc2V0LWxnLTEgew0KICAgICAgICAgICAgICAgIG1hcmdpbi1sZWZ0OiA4LjMzMzMzJQ0KICAgICAgICAgICAgfQ0KDQogICAgICAgICAgICAub2Zmc2V0LWxnLTIgew0KICAgICAgICAgICAgICAgIG1hcmdpbi1sZWZ0OiAxNi42NjY2NyUNCiAgICAgICAgICAgIH0NCg0KICAgICAgICAgICAgLm9mZnNldC1sZy0zIHsNCiAgICAgICAgICAgICAgICBtYXJnaW4tbGVmdDogMjUlDQogICAgICAgICAgICB9DQoNCiAgICAgICAgICAgIC5vZmZzZXQtbGctNCB7DQogICAgICAgICAgICAgICAgbWFyZ2luLWxlZnQ6IDMzLjMzMzMzJQ0KICAgICAgICAgICAgfQ0KDQogICAgICAgICAgICAub2Zmc2V0LWxnLTUgew0KICAgICAgICAgICAgICAgIG1hcmdpbi1sZWZ0OiA0MS42NjY2NyUNCiAgICAgICAgICAgIH0NCg0KICAgICAgICAgICAgLm9mZnNldC1sZy02IHsNCiAgICAgICAgICAgICAgICBtYXJnaW4tbGVmdDogNTAlDQogICAgICAgICAgICB9DQoNCiAgICAgICAgICAgIC5vZmZzZXQtbGctNyB7DQogICAgICAgICAgICAgICAgbWFyZ2luLWxlZnQ6IDU4LjMzMzMzJQ0KICAgICAgICAgICAgfQ0KDQogICAgICAgICAgICAub2Zmc2V0LWxnLTggew0KICAgICAgICAgICAgICAgIG1hcmdpbi1sZWZ0OiA2Ni42NjY2NyUNCiAgICAgICAgICAgIH0NCg0KICAgICAgICAgICAgLm9mZnNldC1sZy05IHsNCiAgICAgICAgICAgICAgICBtYXJnaW4tbGVmdDogNzUlDQogICAgICAgICAgICB9DQoNCiAgICAgICAgICAgIC5vZmZzZXQtbGctMTAgew0KICAgICAgICAgICAgICAgIG1hcmdpbi1sZWZ0OiA4My4zMzMzMyUNCiAgICAgICAgICAgIH0NCg0KICAgICAgICAgICAgLm9mZnNldC1sZy0xMSB7DQogICAgICAgICAgICAgICAgbWFyZ2luLWxlZnQ6IDkxLjY2NjY3JQ0KICAgICAgICAgICAgfQ0KICAgICAgICB9DQoNCiAgICAgICAgQG1lZGlhIChtaW4td2lkdGg6MTIwMHB4KSB7DQogICAgICAgICAgICAuY29sLXhsIHsNCiAgICAgICAgICAgICAgICAtd2Via2l0LWZsZXgtYmFzaXM6IDA7DQogICAgICAgICAgICAgICAgLW1zLWZsZXgtcHJlZmVycmVkLXNpemU6IDA7DQogICAgICAgICAgICAgICAgZmxleC1iYXNpczogMDsNCiAgICAgICAgICAgICAgICAtd2Via2l0LWJveC1mbGV4OiAxOw0KICAgICAgICAgICAgICAgIC13ZWJraXQtZmxleC1ncm93OiAxOw0KICAgICAgICAgICAgICAgIC1tcy1mbGV4LXBvc2l0aXZlOiAxOw0KICAgICAgICAgICAgICAgIGZsZXgtZ3JvdzogMTsNCiAgICAgICAgICAgICAgICBtYXgtd2lkdGg6IDEwMCUNCiAgICAgICAgICAgIH0NCg0KICAgICAgICAgICAgLmNvbC14bC1hdXRvIHsNCiAgICAgICAgICAgICAgICAtd2Via2l0LWJveC1mbGV4OiAwOw0KICAgICAgICAgICAgICAgIC13ZWJraXQtZmxleDogMCAwIGF1dG87DQogICAgICAgICAgICAgICAgLW1zLWZsZXg6IDAgMCBhdXRvOw0KICAgICAgICAgICAgICAgIGZsZXg6IDAgMCBhdXRvOw0KICAgICAgICAgICAgICAgIHdpZHRoOiBhdXRvOw0KICAgICAgICAgICAgICAgIG1heC13aWR0aDogMTAwJQ0KICAgICAgICAgICAgfQ0KDQogICAgICAgICAgICAuY29sLXhsLTEgew0KICAgICAgICAgICAgICAgIC13ZWJraXQtYm94LWZsZXg6IDA7DQogICAgICAgICAgICAgICAgLXdlYmtpdC1mbGV4OiAwIDAgOC4zMzMzMyU7DQogICAgICAgICAgICAgICAgLW1zLWZsZXg6IDAgMCA4LjMzMzMzJTsNCiAgICAgICAgICAgICAgICBmbGV4OiAwIDAgOC4zMzMzMyU7DQogICAgICAgICAgICAgICAgbWF4LXdpZHRoOiA4LjMzMzMzJQ0KICAgICAgICAgICAgfQ0KDQogICAgICAgICAgICAuY29sLXhsLTIgew0KICAgICAgICAgICAgICAgIC13ZWJraXQtYm94LWZsZXg6IDA7DQogICAgICAgICAgICAgICAgLXdlYmtpdC1mbGV4OiAwIDAgMTYuNjY2NjclOw0KICAgICAgICAgICAgICAgIC1tcy1mbGV4OiAwIDAgMTYuNjY2NjclOw0KICAgICAgICAgICAgICAgIGZsZXg6IDAgMCAxNi42NjY2NyU7DQogICAgICAgICAgICAgICAgbWF4LXdpZHRoOiAxNi42NjY2NyUNCiAgICAgICAgICAgIH0NCg0KICAgICAgICAgICAgLmNvbC14bC0zIHsNCiAgICAgICAgICAgICAgICAtd2Via2l0LWJveC1mbGV4OiAwOw0KICAgICAgICAgICAgICAgIC13ZWJraXQtZmxleDogMCAwIDI1JTsNCiAgICAgICAgICAgICAgICAtbXMtZmxleDogMCAwIDI1JTsNCiAgICAgICAgICAgICAgICBmbGV4OiAwIDAgMjUlOw0KICAgICAgICAgICAgICAgIG1heC13aWR0aDogMjUlDQogICAgICAgICAgICB9DQoNCiAgICAgICAgICAgIC5jb2wteGwtNCB7DQogICAgICAgICAgICAgICAgLXdlYmtpdC1ib3gtZmxleDogMDsNCiAgICAgICAgICAgICAgICAtd2Via2l0LWZsZXg6IDAgMCAzMy4zMzMzMyU7DQogICAgICAgICAgICAgICAgLW1zLWZsZXg6IDAgMCAzMy4zMzMzMyU7DQogICAgICAgICAgICAgICAgZmxleDogMCAwIDMzLjMzMzMzJTsNCiAgICAgICAgICAgICAgICBtYXgtd2lkdGg6IDMzLjMzMzMzJQ0KICAgICAgICAgICAgfQ0KDQogICAgICAgICAgICAuY29sLXhsLTUgew0KICAgICAgICAgICAgICAgIC13ZWJraXQtYm94LWZsZXg6IDA7DQogICAgICAgICAgICAgICAgLXdlYmtpdC1mbGV4OiAwIDAgNDEuNjY2NjclOw0KICAgICAgICAgICAgICAgIC1tcy1mbGV4OiAwIDAgNDEuNjY2NjclOw0KICAgICAgICAgICAgICAgIGZsZXg6IDAgMCA0MS42NjY2NyU7DQogICAgICAgICAgICAgICAgbWF4LXdpZHRoOiA0MS42NjY2NyUNCiAgICAgICAgICAgIH0NCg0KICAgICAgICAgICAgLmNvbC14bC02IHsNCiAgICAgICAgICAgICAgICAtd2Via2l0LWJveC1mbGV4OiAwOw0KICAgICAgICAgICAgICAgIC13ZWJraXQtZmxleDogMCAwIDUwJTsNCiAgICAgICAgICAgICAgICAtbXMtZmxleDogMCAwIDUwJTsNCiAgICAgICAgICAgICAgICBmbGV4OiAwIDAgNTAlOw0KICAgICAgICAgICAgICAgIG1heC13aWR0aDogNTAlDQogICAgICAgICAgICB9DQoNCiAgICAgICAgICAgIC5jb2wteGwtNyB7DQogICAgICAgICAgICAgICAgLXdlYmtpdC1ib3gtZmxleDogMDsNCiAgICAgICAgICAgICAgICAtd2Via2l0LWZsZXg6IDAgMCA1OC4zMzMzMyU7DQogICAgICAgICAgICAgICAgLW1zLWZsZXg6IDAgMCA1OC4zMzMzMyU7DQogICAgICAgICAgICAgICAgZmxleDogMCAwIDU4LjMzMzMzJTsNCiAgICAgICAgICAgICAgICBtYXgtd2lkdGg6IDU4LjMzMzMzJQ0KICAgICAgICAgICAgfQ0KDQogICAgICAgICAgICAuY29sLXhsLTggew0KICAgICAgICAgICAgICAgIC13ZWJraXQtYm94LWZsZXg6IDA7DQogICAgICAgICAgICAgICAgLXdlYmtpdC1mbGV4OiAwIDAgNjYuNjY2NjclOw0KICAgICAgICAgICAgICAgIC1tcy1mbGV4OiAwIDAgNjYuNjY2NjclOw0KICAgICAgICAgICAgICAgIGZsZXg6IDAgMCA2Ni42NjY2NyU7DQogICAgICAgICAgICAgICAgbWF4LXdpZHRoOiA2Ni42NjY2NyUNCiAgICAgICAgICAgIH0NCg0KICAgICAgICAgICAgLmNvbC14bC05IHsNCiAgICAgICAgICAgICAgICAtd2Via2l0LWJveC1mbGV4OiAwOw0KICAgICAgICAgICAgICAgIC13ZWJraXQtZmxleDogMCAwIDc1JTsNCiAgICAgICAgICAgICAgICAtbXMtZmxleDogMCAwIDc1JTsNCiAgICAgICAgICAgICAgICBmbGV4OiAwIDAgNzUlOw0KICAgICAgICAgICAgICAgIG1heC13aWR0aDogNzUlDQogICAgICAgICAgICB9DQoNCiAgICAgICAgICAgIC5jb2wteGwtMTAgew0KICAgICAgICAgICAgICAgIC13ZWJraXQtYm94LWZsZXg6IDA7DQogICAgICAgICAgICAgICAgLXdlYmtpdC1mbGV4OiAwIDAgODMuMzMzMzMlOw0KICAgICAgICAgICAgICAgIC1tcy1mbGV4OiAwIDAgODMuMzMzMzMlOw0KICAgICAgICAgICAgICAgIGZsZXg6IDAgMCA4My4zMzMzMyU7DQogICAgICAgICAgICAgICAgbWF4LXdpZHRoOiA4My4zMzMzMyUNCiAgICAgICAgICAgIH0NCg0KICAgICAgICAgICAgLmNvbC14bC0xMSB7DQogICAgICAgICAgICAgICAgLXdlYmtpdC1ib3gtZmxleDogMDsNCiAgICAgICAgICAgICAgICAtd2Via2l0LWZsZXg6IDAgMCA5MS42NjY2NyU7DQogICAgICAgICAgICAgICAgLW1zLWZsZXg6IDAgMCA5MS42NjY2NyU7DQogICAgICAgICAgICAgICAgZmxleDogMCAwIDkxLjY2NjY3JTsNCiAgICAgICAgICAgICAgICBtYXgtd2lkdGg6IDkxLjY2NjY3JQ0KICAgICAgICAgICAgfQ0KDQogICAgICAgICAgICAuY29sLXhsLTEyIHsNCiAgICAgICAgICAgICAgICAtd2Via2l0LWJveC1mbGV4OiAwOw0KICAgICAgICAgICAgICAgIC13ZWJraXQtZmxleDogMCAwIDEwMCU7DQogICAgICAgICAgICAgICAgLW1zLWZsZXg6IDAgMCAxMDAlOw0KICAgICAgICAgICAgICAgIGZsZXg6IDAgMCAxMDAlOw0KICAgICAgICAgICAgICAgIG1heC13aWR0aDogMTAwJQ0KICAgICAgICAgICAgfQ0KDQogICAgICAgICAgICAub3JkZXIteGwtZmlyc3Qgew0KICAgICAgICAgICAgICAgIC13ZWJraXQtYm94LW9yZGluYWwtZ3JvdXA6IDA7DQogICAgICAgICAgICAgICAgLXdlYmtpdC1vcmRlcjogLTE7DQogICAgICAgICAgICAgICAgLW1zLWZsZXgtb3JkZXI6IC0xOw0KICAgICAgICAgICAgICAgIG9yZGVyOiAtMQ0KICAgICAgICAgICAgfQ0KDQogICAgICAgICAgICAub3JkZXIteGwtbGFzdCB7DQogICAgICAgICAgICAgICAgLXdlYmtpdC1ib3gtb3JkaW5hbC1ncm91cDogMTQ7DQogICAgICAgICAgICAgICAgLXdlYmtpdC1vcmRlcjogMTM7DQogICAgICAgICAgICAgICAgLW1zLWZsZXgtb3JkZXI6IDEzOw0KICAgICAgICAgICAgICAgIG9yZGVyOiAxMw0KICAgICAgICAgICAgfQ0KDQogICAgICAgICAgICAub3JkZXIteGwtMCB7DQogICAgICAgICAgICAgICAgLXdlYmtpdC1ib3gtb3JkaW5hbC1ncm91cDogMTsNCiAgICAgICAgICAgICAgICAtd2Via2l0LW9yZGVyOiAwOw0KICAgICAgICAgICAgICAgIC1tcy1mbGV4LW9yZGVyOiAwOw0KICAgICAgICAgICAgICAgIG9yZGVyOiAwDQogICAgICAgICAgICB9DQoNCiAgICAgICAgICAgIC5vcmRlci14bC0xIHsNCiAgICAgICAgICAgICAgICAtd2Via2l0LWJveC1vcmRpbmFsLWdyb3VwOiAyOw0KICAgICAgICAgICAgICAgIC13ZWJraXQtb3JkZXI6IDE7DQogICAgICAgICAgICAgICAgLW1zLWZsZXgtb3JkZXI6IDE7DQogICAgICAgICAgICAgICAgb3JkZXI6IDENCiAgICAgICAgICAgIH0NCg0KICAgICAgICAgICAgLm9yZGVyLXhsLTIgew0KICAgICAgICAgICAgICAgIC13ZWJraXQtYm94LW9yZGluYWwtZ3JvdXA6IDM7DQogICAgICAgICAgICAgICAgLXdlYmtpdC1vcmRlcjogMjsNCiAgICAgICAgICAgICAgICAtbXMtZmxleC1vcmRlcjogMjsNCiAgICAgICAgICAgICAgICBvcmRlcjogMg0KICAgICAgICAgICAgfQ0KDQogICAgICAgICAgICAub3JkZXIteGwtMyB7DQogICAgICAgICAgICAgICAgLXdlYmtpdC1ib3gtb3JkaW5hbC1ncm91cDogNDsNCiAgICAgICAgICAgICAgICAtd2Via2l0LW9yZGVyOiAzOw0KICAgICAgICAgICAgICAgIC1tcy1mbGV4LW9yZGVyOiAzOw0KICAgICAgICAgICAgICAgIG9yZGVyOiAzDQogICAgICAgICAgICB9DQoNCiAgICAgICAgICAgIC5vcmRlci14bC00IHsNCiAgICAgICAgICAgICAgICAtd2Via2l0LWJveC1vcmRpbmFsLWdyb3VwOiA1Ow0KICAgICAgICAgICAgICAgIC13ZWJraXQtb3JkZXI6IDQ7DQogICAgICAgICAgICAgICAgLW1zLWZsZXgtb3JkZXI6IDQ7DQogICAgICAgICAgICAgICAgb3JkZXI6IDQNCiAgICAgICAgICAgIH0NCg0KICAgICAgICAgICAgLm9yZGVyLXhsLTUgew0KICAgICAgICAgICAgICAgIC13ZWJraXQtYm94LW9yZGluYWwtZ3JvdXA6IDY7DQogICAgICAgICAgICAgICAgLXdlYmtpdC1vcmRlcjogNTsNCiAgICAgICAgICAgICAgICAtbXMtZmxleC1vcmRlcjogNTsNCiAgICAgICAgICAgICAgICBvcmRlcjogNQ0KICAgICAgICAgICAgfQ0KDQogICAgICAgICAgICAub3JkZXIteGwtNiB7DQogICAgICAgICAgICAgICAgLXdlYmtpdC1ib3gtb3JkaW5hbC1ncm91cDogNzsNCiAgICAgICAgICAgICAgICAtd2Via2l0LW9yZGVyOiA2Ow0KICAgICAgICAgICAgICAgIC1tcy1mbGV4LW9yZGVyOiA2Ow0KICAgICAgICAgICAgICAgIG9yZGVyOiA2DQogICAgICAgICAgICB9DQoNCiAgICAgICAgICAgIC5vcmRlci14bC03IHsNCiAgICAgICAgICAgICAgICAtd2Via2l0LWJveC1vcmRpbmFsLWdyb3VwOiA4Ow0KICAgICAgICAgICAgICAgIC13ZWJraXQtb3JkZXI6IDc7DQogICAgICAgICAgICAgICAgLW1zLWZsZXgtb3JkZXI6IDc7DQogICAgICAgICAgICAgICAgb3JkZXI6IDcNCiAgICAgICAgICAgIH0NCg0KICAgICAgICAgICAgLm9yZGVyLXhsLTggew0KICAgICAgICAgICAgICAgIC13ZWJraXQtYm94LW9yZGluYWwtZ3JvdXA6IDk7DQogICAgICAgICAgICAgICAgLXdlYmtpdC1vcmRlcjogODsNCiAgICAgICAgICAgICAgICAtbXMtZmxleC1vcmRlcjogODsNCiAgICAgICAgICAgICAgICBvcmRlcjogOA0KICAgICAgICAgICAgfQ0KDQogICAgICAgICAgICAub3JkZXIteGwtOSB7DQogICAgICAgICAgICAgICAgLXdlYmtpdC1ib3gtb3JkaW5hbC1ncm91cDogMTA7DQogICAgICAgICAgICAgICAgLXdlYmtpdC1vcmRlcjogOTsNCiAgICAgICAgICAgICAgICAtbXMtZmxleC1vcmRlcjogOTsNCiAgICAgICAgICAgICAgICBvcmRlcjogOQ0KICAgICAgICAgICAgfQ0KDQogICAgICAgICAgICAub3JkZXIteGwtMTAgew0KICAgICAgICAgICAgICAgIC13ZWJraXQtYm94LW9yZGluYWwtZ3JvdXA6IDExOw0KICAgICAgICAgICAgICAgIC13ZWJraXQtb3JkZXI6IDEwOw0KICAgICAgICAgICAgICAgIC1tcy1mbGV4LW9yZGVyOiAxMDsNCiAgICAgICAgICAgICAgICBvcmRlcjogMTANCiAgICAgICAgICAgIH0NCg0KICAgICAgICAgICAgLm9yZGVyLXhsLTExIHsNCiAgICAgICAgICAgICAgICAtd2Via2l0LWJveC1vcmRpbmFsLWdyb3VwOiAxMjsNCiAgICAgICAgICAgICAgICAtd2Via2l0LW9yZGVyOiAxMTsNCiAgICAgICAgICAgICAgICAtbXMtZmxleC1vcmRlcjogMTE7DQogICAgICAgICAgICAgICAgb3JkZXI6IDExDQogICAgICAgICAgICB9DQoNCiAgICAgICAgICAgIC5vcmRlci14bC0xMiB7DQogICAgICAgICAgICAgICAgLXdlYmtpdC1ib3gtb3JkaW5hbC1ncm91cDogMTM7DQogICAgICAgICAgICAgICAgLXdlYmtpdC1vcmRlcjogMTI7DQogICAgICAgICAgICAgICAgLW1zLWZsZXgtb3JkZXI6IDEyOw0KICAgICAgICAgICAgICAgIG9yZGVyOiAxMg0KICAgICAgICAgICAgfQ0KDQogICAgICAgICAgICAub2Zmc2V0LXhsLTAgew0KICAgICAgICAgICAgICAgIG1hcmdpbi1sZWZ0OiAwDQogICAgICAgICAgICB9DQoNCiAgICAgICAgICAgIC5vZmZzZXQteGwtMSB7DQogICAgICAgICAgICAgICAgbWFyZ2luLWxlZnQ6IDguMzMzMzMlDQogICAgICAgICAgICB9DQoNCiAgICAgICAgICAgIC5vZmZzZXQteGwtMiB7DQogICAgICAgICAgICAgICAgbWFyZ2luLWxlZnQ6IDE2LjY2NjY3JQ0KICAgICAgICAgICAgfQ0KDQogICAgICAgICAgICAub2Zmc2V0LXhsLTMgew0KICAgICAgICAgICAgICAgIG1hcmdpbi1sZWZ0OiAyNSUNCiAgICAgICAgICAgIH0NCg0KICAgICAgICAgICAgLm9mZnNldC14bC00IHsNCiAgICAgICAgICAgICAgICBtYXJnaW4tbGVmdDogMzMuMzMzMzMlDQogICAgICAgICAgICB9DQoNCiAgICAgICAgICAgIC5vZmZzZXQteGwtNSB7DQogICAgICAgICAgICAgICAgbWFyZ2luLWxlZnQ6IDQxLjY2NjY3JQ0KICAgICAgICAgICAgfQ0KDQogICAgICAgICAgICAub2Zmc2V0LXhsLTYgew0KICAgICAgICAgICAgICAgIG1hcmdpbi1sZWZ0OiA1MCUNCiAgICAgICAgICAgIH0NCg0KICAgICAgICAgICAgLm9mZnNldC14bC03IHsNCiAgICAgICAgICAgICAgICBtYXJnaW4tbGVmdDogNTguMzMzMzMlDQogICAgICAgICAgICB9DQoNCiAgICAgICAgICAgIC5vZmZzZXQteGwtOCB7DQogICAgICAgICAgICAgICAgbWFyZ2luLWxlZnQ6IDY2LjY2NjY3JQ0KICAgICAgICAgICAgfQ0KDQogICAgICAgICAgICAub2Zmc2V0LXhsLTkgew0KICAgICAgICAgICAgICAgIG1hcmdpbi1sZWZ0OiA3NSUNCiAgICAgICAgICAgIH0NCg0KICAgICAgICAgICAgLm9mZnNldC14bC0xMCB7DQogICAgICAgICAgICAgICAgbWFyZ2luLWxlZnQ6IDgzLjMzMzMzJQ0KICAgICAgICAgICAgfQ0KDQogICAgICAgICAgICAub2Zmc2V0LXhsLTExIHsNCiAgICAgICAgICAgICAgICBtYXJnaW4tbGVmdDogOTEuNjY2NjclDQogICAgICAgICAgICB9DQogICAgICAgIH0NCiAgICA8L3N0eWxlPg0KPC9oZWFkPg0KPGJvZHkgY2xhc3M9InZlcnRpY2FsLWxheW91dCB2ZXJ0aWNhbC1tZW51LW1vZGVybiBkYXJrLWxheW91dCAyLWNvbHVtbnMgIG5hdmJhci1zdGlja3kgZm9vdGVyLXN0YXRpYyIgZGF0YS1vcGVuPSJjbGljayIgZGF0YS1tZW51PSJ2ZXJ0aWNhbC1tZW51LW1vZGVybiIgZGF0YS1jb2w9IjItY29sdW1ucyIgZGF0YS1sYXlvdXQ9ImRhcmstbGF5b3V0Ij4NCiAgICA8ZGl2IGNsYXNzPSJhcHAtY29udGVudCBjb250ZW50IiBzdHlsZT0ibWFyZ2luLWxlZnQ6IDBweDsiPg0KICAgICAgICA8ZGl2IGNsYXNzPSJjb250ZW50LW92ZXJsYXkiPjwvZGl2Pg0KICAgICAgICA8ZGl2IGNsYXNzPSJjb250ZW50LXdyYXBwZXIiIHN0eWxlPSJtYXJnaW4tdG9wOiAwcHg7Ij4NCiAgICAgICAgICAgIDxkaXYgY2xhc3M9ImNvbnRlbnQtYm9keSI+DQogICAgICAgICAgICAgICAgPHNlY3Rpb24gY2xhc3M9ImNhcmQiPg0KICAgICAgICAgICAgICAgICAgICA8ZGl2IGNsYXNzPSJjYXJkLWhlYWRlciI+DQogICAgICAgICAgICAgICAgICAgICAgICA8aDQgY2xhc3M9ImNhcmQtdGl0bGUiPllvdXIgYWNjb3VudCBoYXMgYmVlbiBjcmVhdGVkPC9oND4NCiAgICAgICAgICAgICAgICAgICAgPC9kaXY+DQogICAgICAgICAgICAgICAgICAgIDxkaXYgY2xhc3M9ImNhcmQtY29udGVudCI+DQogICAgICAgICAgICAgICAgICAgICAgICA8ZGl2IGNsYXNzPSJjYXJkLWJvZHkiPg0KICAgICAgICAgICAgICAgICAgICAgICAgICAgIDxkaXYgY2xhc3M9ImNhcmQtdGV4dCI+DQogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIDxwPg0KICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgUGxlYXNlIGxvZ2luIHVzaW5nIHRoZSBlbWFpbCBhbmQgcGFzc3dvcmQgZ2l2ZW4gYmVsb3c6DQogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIDwvcD4NCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgPGRsIGNsYXNzPSJyb3ciPg0KICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgPGR0IGNsYXNzPSJjb2wtc20tMiI+V2Vic2l0ZTwvZHQ+DQogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICA8ZGQgY2xhc3M9ImNvbC1zbS0xMCI+PGEgaHJlZj0ie3dlYnNpdGV9IiB0YXJnZXQ9Il9ibGFuayI+e3dlYnNpdGV9PC9hPjwvZGQ+DQogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIDwvZGw+DQogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIDxkbCBjbGFzcz0icm93Ij4NCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIDxkdCBjbGFzcz0iY29sLXNtLTIiPkVtYWlsPC9kdD4NCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIDxkZCBjbGFzcz0iY29sLXNtLTEwIj48Y29kZSBjbGFzcz0iaGlnaGxpZ2h0ZXItcm91Z2UiPntlbWFpbH08L2NvZGU+PC9kZD4NCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgPC9kbD4NCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgPGRsIGNsYXNzPSJyb3ciPg0KICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgPGR0IGNsYXNzPSJjb2wtc20tMiI+UGFzc3dvcmQ8L2R0Pg0KICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgPGRkIGNsYXNzPSJjb2wtc20tMTAiPjxjb2RlIGNsYXNzPSJoaWdobGlnaHRlci1yb3VnZSI+e3Bhc3N3b3JkfTwvY29kZT48L2RkPg0KICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICA8L2RsPg0KICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICA8ZGwgY2xhc3M9InJvdyI+DQogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICA8ZHQgY2xhc3M9ImNvbC1zbS0yIj5OYW1lPC9kdD4NCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIDxkZCBjbGFzcz0iY29sLXNtLTEwIj57bmFtZX08L2RkPg0KICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICA8L2RsPg0KICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICA8ZGwgY2xhc3M9InJvdyI+DQogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICA8ZHQgY2xhc3M9ImNvbC1zbS0yIj5Db21wYW55PC9kdD4NCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIDxkZCBjbGFzcz0iY29sLXNtLTEwIj57Y29tcGFueX08L2RkPg0KICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICA8L2RsPg0KICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICA8ZGwgY2xhc3M9InJvdyI+DQogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICA8ZHQgY2xhc3M9ImNvbC1zbS0yIj5TaG9wPC9kdD4NCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIDxkZCBjbGFzcz0iY29sLXNtLTEwIj57c2hvcH08L2RkPg0KICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICA8L2RsPg0KICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICA8dWw+DQogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICA8bGk+DQogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgUmVjb21tZW5kZWQgdG8gY2hhbmdlIHlvdXIgcGFzc3dvcmQgYWZ0ZXIgeW91ciBmaXJzdCBsb2dpbi4NCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBHb3RvPGNvZGUgY2xhc3M9ImhpZ2hsaWdodGVyLXJvdWdlIj4gUHJvZmlsZSAtPiBDaGFuZ2UgUGFzc3dvcmQ8L2NvZGU+DQogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICA8L2xpPg0KICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICA8L3VsPg0KICAgICAgICAgICAgICAgICAgICAgICAgICAgIDwvZGl2Pg0KICAgICAgICAgICAgICAgICAgICAgICAgPC9kaXY+DQogICAgICAgICAgICAgICAgICAgIDwvZGl2Pg0KICAgICAgICAgICAgICAgIDwvc2VjdGlvbj4NCiAgICAgICAgICAgIDwvZGl2Pg0KICAgICAgICA8L2Rpdj4NCiAgICA8L2Rpdj4NCjwvYm9keT4NCjwvaHRtbD4=', 0, CAST(N'2020-02-06 12:23:20.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[EmailTemplate] OFF
SET IDENTITY_INSERT [dbo].[RemainingBalance] ON 

INSERT [dbo].[RemainingBalance] ([RemainingBalanceId], [UserId], [SaleId], [BalanceId], [SaleAmount], [BalanceAmount], [CurrentAmount], [IsAmountAdded], [IsDelete], [Timestamp]) VALUES (1, N'899b2d6d-ce07-4a41-afe9-efe0fc503f6b', 0, 1, CAST(0.00 AS Decimal(18, 2)), CAST(100.00 AS Decimal(18, 2)), CAST(100.00 AS Decimal(18, 2)), 1, 0, CAST(N'2020-02-11 14:44:30.000' AS DateTime))
INSERT [dbo].[RemainingBalance] ([RemainingBalanceId], [UserId], [SaleId], [BalanceId], [SaleAmount], [BalanceAmount], [CurrentAmount], [IsAmountAdded], [IsDelete], [Timestamp]) VALUES (2, N'899b2d6d-ce07-4a41-afe9-efe0fc503f6b', 0, 2, CAST(0.00 AS Decimal(18, 2)), CAST(1000.00 AS Decimal(18, 2)), CAST(1100.00 AS Decimal(18, 2)), 1, 0, CAST(N'2020-02-11 14:45:06.000' AS DateTime))
INSERT [dbo].[RemainingBalance] ([RemainingBalanceId], [UserId], [SaleId], [BalanceId], [SaleAmount], [BalanceAmount], [CurrentAmount], [IsAmountAdded], [IsDelete], [Timestamp]) VALUES (4, N'899b2d6d-ce07-4a41-afe9-efe0fc503f6b', 0, 3, CAST(0.00 AS Decimal(18, 2)), CAST(1500.00 AS Decimal(18, 2)), CAST(2600.00 AS Decimal(18, 2)), 1, 0, CAST(N'2020-02-11 14:47:38.000' AS DateTime))
INSERT [dbo].[RemainingBalance] ([RemainingBalanceId], [UserId], [SaleId], [BalanceId], [SaleAmount], [BalanceAmount], [CurrentAmount], [IsAmountAdded], [IsDelete], [Timestamp]) VALUES (5, N'899b2d6d-ce07-4a41-afe9-efe0fc503f6b', 0, 8, CAST(0.00 AS Decimal(18, 2)), CAST(600.00 AS Decimal(18, 2)), CAST(3200.00 AS Decimal(18, 2)), 1, 0, CAST(N'2020-02-11 14:47:38.000' AS DateTime))
INSERT [dbo].[RemainingBalance] ([RemainingBalanceId], [UserId], [SaleId], [BalanceId], [SaleAmount], [BalanceAmount], [CurrentAmount], [IsAmountAdded], [IsDelete], [Timestamp]) VALUES (6, N'899b2d6d-ce07-4a41-afe9-efe0fc503f6b', 0, 9, CAST(0.00 AS Decimal(18, 2)), CAST(600.00 AS Decimal(18, 2)), CAST(3800.00 AS Decimal(18, 2)), 1, 0, CAST(N'2020-02-11 14:47:38.000' AS DateTime))
INSERT [dbo].[RemainingBalance] ([RemainingBalanceId], [UserId], [SaleId], [BalanceId], [SaleAmount], [BalanceAmount], [CurrentAmount], [IsAmountAdded], [IsDelete], [Timestamp]) VALUES (7, N'899b2d6d-ce07-4a41-afe9-efe0fc503f6b', 0, 10, CAST(0.00 AS Decimal(18, 2)), CAST(600.00 AS Decimal(18, 2)), CAST(4400.00 AS Decimal(18, 2)), 1, 0, CAST(N'2020-02-11 14:47:38.000' AS DateTime))
INSERT [dbo].[RemainingBalance] ([RemainingBalanceId], [UserId], [SaleId], [BalanceId], [SaleAmount], [BalanceAmount], [CurrentAmount], [IsAmountAdded], [IsDelete], [Timestamp]) VALUES (8, N'899b2d6d-ce07-4a41-afe9-efe0fc503f6b', 0, 11, CAST(0.00 AS Decimal(18, 2)), CAST(600.00 AS Decimal(18, 2)), CAST(5000.00 AS Decimal(18, 2)), 1, 0, CAST(N'2020-02-11 14:47:38.000' AS DateTime))
INSERT [dbo].[RemainingBalance] ([RemainingBalanceId], [UserId], [SaleId], [BalanceId], [SaleAmount], [BalanceAmount], [CurrentAmount], [IsAmountAdded], [IsDelete], [Timestamp]) VALUES (9, N'899b2d6d-ce07-4a41-afe9-efe0fc503f6b', 0, 12, CAST(0.00 AS Decimal(18, 2)), CAST(600.00 AS Decimal(18, 2)), CAST(5600.00 AS Decimal(18, 2)), 1, 0, CAST(N'2020-02-11 14:47:38.000' AS DateTime))
INSERT [dbo].[RemainingBalance] ([RemainingBalanceId], [UserId], [SaleId], [BalanceId], [SaleAmount], [BalanceAmount], [CurrentAmount], [IsAmountAdded], [IsDelete], [Timestamp]) VALUES (10, N'899b2d6d-ce07-4a41-afe9-efe0fc503f6b', 0, 13, CAST(0.00 AS Decimal(18, 2)), CAST(600.00 AS Decimal(18, 2)), CAST(6200.00 AS Decimal(18, 2)), 1, 0, CAST(N'2020-02-11 14:47:38.000' AS DateTime))
INSERT [dbo].[RemainingBalance] ([RemainingBalanceId], [UserId], [SaleId], [BalanceId], [SaleAmount], [BalanceAmount], [CurrentAmount], [IsAmountAdded], [IsDelete], [Timestamp]) VALUES (11, N'899b2d6d-ce07-4a41-afe9-efe0fc503f6b', 1, 0, CAST(50.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(6150.00 AS Decimal(18, 2)), 0, 0, CAST(N'2020-02-11 10:29:02.887' AS DateTime))
SET IDENTITY_INSERT [dbo].[RemainingBalance] OFF
SET IDENTITY_INSERT [dbo].[Sale] ON 

INSERT [dbo].[Sale] ([SaleId], [UserId], [CardId], [CodeId], [IsDelete], [Timestamp]) VALUES (1, N'899b2d6d-ce07-4a41-afe9-efe0fc503f6b', 1, 1, 0, CAST(N'2020-02-11 10:29:02.887' AS DateTime))
SET IDENTITY_INSERT [dbo].[Sale] OFF
SET IDENTITY_INSERT [dbo].[Shop] ON 

INSERT [dbo].[Shop] ([ShopId], [Name], [Description], [Photo], [Phone], [Address], [IsDelete], [Timestamp], [ProfileViewModelUserId]) VALUES (1, N'Shop1', N'This is shop 1', NULL, N'123456789', N'pak', 0, CAST(N'2020-01-27 14:53:07.000' AS DateTime), NULL)
INSERT [dbo].[Shop] ([ShopId], [Name], [Description], [Photo], [Phone], [Address], [IsDelete], [Timestamp], [ProfileViewModelUserId]) VALUES (6, N'Shop2', N'This is shop 2', NULL, N'123456789', N'pak', 0, CAST(N'2020-01-27 14:53:07.000' AS DateTime), NULL)
INSERT [dbo].[Shop] ([ShopId], [Name], [Description], [Photo], [Phone], [Address], [IsDelete], [Timestamp], [ProfileViewModelUserId]) VALUES (8, N'Shop3', N'This is shop 3', NULL, N'123456789', N'pak', 0, CAST(N'2020-01-27 14:53:07.000' AS DateTime), NULL)
INSERT [dbo].[Shop] ([ShopId], [Name], [Description], [Photo], [Phone], [Address], [IsDelete], [Timestamp], [ProfileViewModelUserId]) VALUES (9, N'Shop4', N'This is shop 4', NULL, N'123456789', N'pak', 0, CAST(N'2020-01-27 14:53:07.000' AS DateTime), NULL)
INSERT [dbo].[Shop] ([ShopId], [Name], [Description], [Photo], [Phone], [Address], [IsDelete], [Timestamp], [ProfileViewModelUserId]) VALUES (10, N'Shop5', N'This is shop 5', NULL, N'123456789', N'pak', 0, CAST(N'2020-01-27 14:53:07.000' AS DateTime), NULL)
INSERT [dbo].[Shop] ([ShopId], [Name], [Description], [Photo], [Phone], [Address], [IsDelete], [Timestamp], [ProfileViewModelUserId]) VALUES (11, N'Shop6', N'asd', N'data:image/png;base64,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', N'123', N'pak', 0, CAST(N'2020-01-31 13:49:44.000' AS DateTime), NULL)
SET IDENTITY_INSERT [dbo].[Shop] OFF
SET IDENTITY_INSERT [dbo].[ShopUser] ON 

INSERT [dbo].[ShopUser] ([ShopUserId], [ShopId], [UserId], [IsDelete], [Timestamp]) VALUES (1, 1, N'c0fb56b6-722b-4b4c-9097-0cb14f4bcbdd', 0, CAST(N'2020-01-29 11:41:03.000' AS DateTime))
INSERT [dbo].[ShopUser] ([ShopUserId], [ShopId], [UserId], [IsDelete], [Timestamp]) VALUES (2, 11, N'899b2d6d-ce07-4a41-afe9-efe0fc503f6b', 0, CAST(N'2020-01-31 14:01:25.000' AS DateTime))
INSERT [dbo].[ShopUser] ([ShopUserId], [ShopId], [UserId], [IsDelete], [Timestamp]) VALUES (3, 10, N'284afac0-984b-4d5f-a44b-1d68e2341670', 0, CAST(N'2020-02-05 13:45:03.000' AS DateTime))
INSERT [dbo].[ShopUser] ([ShopUserId], [ShopId], [UserId], [IsDelete], [Timestamp]) VALUES (4, 11, N'1cb60650-cfed-4337-9144-cb9744b427bb', 0, CAST(N'2020-02-05 13:49:11.000' AS DateTime))
INSERT [dbo].[ShopUser] ([ShopUserId], [ShopId], [UserId], [IsDelete], [Timestamp]) VALUES (5, 1, N'530746c4-ab9a-4e29-a008-41605f9ff9c1', 0, CAST(N'2020-02-05 13:50:42.000' AS DateTime))
INSERT [dbo].[ShopUser] ([ShopUserId], [ShopId], [UserId], [IsDelete], [Timestamp]) VALUES (13, 11, N'323e9016-7e5f-4879-a27e-afd37967428f', 0, CAST(N'2020-02-06 12:24:01.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[ShopUser] OFF
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
/****** Object:  StoredProcedure [dbo].[CreateBalance]    Script Date: 2/14/2020 3:20:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[CreateBalance]
(@userId nvarchar(450), @amount decimal(18, 2), @addedBy nvarchar(450), @isDelete bit, @timestamp datetime)
AS
BEGIN

DECLARE @balanceId INT;
DECLARE @currentAmount DECIMAL(18, 2);

INSERT INTO Balance
        (UserId
        ,Amount
        ,AddedBy
        ,IsDelete
        ,Timestamp)
VALUES
        (@userId,
        @amount,
        @addedBy,
        @isDelete,
        @timestamp)


SET @balanceId = (SELECT BalanceId FROM Balance WHERE BalanceId = IDENT_CURRENT('Balance'));
SET @currentAmount = (Select TOP 1 CurrentAmount FROM RemainingBalance WHERE UserId = @userId ORDER BY RemainingBalanceId DESC);

INSERT INTO RemainingBalance
           (UserId
		   ,SaleId
           ,BalanceId
           ,SaleAmount
           ,BalanceAmount
           ,CurrentAmount
           ,IsAmountAdded
           ,IsDelete
           ,Timestamp)
     VALUES
           (@userId
		   ,0
           ,@balanceId
           ,0
           ,@amount
           ,(@currentAmount + @amount)
           ,1
           ,@isDelete
           ,@timestamp)

SELECT * FROM Balance WHERE BalanceId = IDENT_CURRENT('Balance');

END



GO
/****** Object:  StoredProcedure [dbo].[CreateCard]    Script Date: 2/14/2020 3:20:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[CreateCard]
(@userId nvarchar(450), @companyId int, @name varchar(100), @description varchar(500), @photo varchar(MAX), @amount varchar(100), @isDelete bit, @timestamp datetime)
AS
BEGIN

DECLARE @company INT;

IF @companyId = 0 BEGIN

	SET @company = (Select CompanyId FROM CompanyUser WHERE UserId = @userId);

	SET @companyId = @company;

END

INSERT INTO Card
           (CompanyId
           ,Name
           ,Description
           ,Photo
           ,Amount
           ,IsDelete
           ,Timestamp)
     VALUES
           (@companyId
           ,@name
           ,@description
           ,@photo
           ,@amount
           ,@isDelete
           ,@timestamp)

SELECT * FROM Card WHERE CardId = IDENT_CURRENT('Card');

END





GO
/****** Object:  StoredProcedure [dbo].[CreateCompany]    Script Date: 2/14/2020 3:20:28 PM ******/
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
/****** Object:  StoredProcedure [dbo].[CreateSale]    Script Date: 2/14/2020 3:20:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[CreateSale]
(@userId nvarchar(450), @cardId int, @isDelete bit, @timestamp datetime)
AS
BEGIN
DECLARE @userBalance decimal(18, 2);
DECLARE @cardAmount decimal(18, 2);
DECLARE @codeId INT;
DECLARE @saleId INT;

SET @userBalance = (Select TOP 1 CurrentAmount FROM RemainingBalance WHERE UserId = @userId ORDER BY RemainingBalanceId DESC);

SET @cardAmount = (SELECT Amount FROM Card WHERE CardId = @cardId);

	IF @userBalance >= @cardAmount  BEGIN

		SET @codeId = (SELECT TOP 1 CodeId FROM Code WHERE CardId = @cardId AND IsSold = 0 ORDER BY CodeId ASC);

		UPDATE Code SET IsSold = 1 WHERE CodeId = @codeId;

		INSERT INTO Sale (UserId, CardId, CodeId, IsDelete, Timestamp) VALUES (@userId, @cardId, @codeId, @isDelete, @timestamp)

		SET @saleId = (SELECT SaleId FROM Sale WHERE SaleId = IDENT_CURRENT('Sale'))

		INSERT INTO RemainingBalance
           (UserId, SaleId, BalanceId, SaleAmount, BalanceAmount, CurrentAmount, IsAmountAdded, IsDelete, Timestamp)
		VALUES
           (@userId, @saleId, 0, @cardAmount, 0, (@userBalance - @cardAmount), 0, @isDelete, @timestamp)

		SELECT 
			c.Number AS Code,
			cd.Name AS CardName,
			cd.Amount AS Amount,
			cp.Name AS CompanyName,
			cp.Description AS CompanyDescription,
			cp.Photo AS CompanyPhoto,
			sp.Name AS ShopName,
			sp.Description AS ShopDescription,
			sp.Photo AS ShopPhoto,
			s.Timestamp AS SaleTime,			
			anu.Email AS SoldByEmail,
			CONCAT(anu.FirstName, ' ', anu.LastName) AS SoldByName
		FROM Code c
			INNER JOIN Sale s ON 
			s.CodeId = c.CodeId
			INNER JOIN AspNetUsers anu ON 
			anu.Id = s.UserId
			INNER JOIN Card cd ON 
			cd.CardId = c.CardId
			INNER JOIN Company cp ON 
			cp.CompanyId = cd.CompanyId
			INNER JOIN ShopUser su ON 
			su.UserId = s.UserId
			INNER JOIN Shop sp ON 
			sp.ShopId = su.ShopId
		WHERE s.CodeId = @codeId;

	END

END

GO
/****** Object:  StoredProcedure [dbo].[CreateShop]    Script Date: 2/14/2020 3:20:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[CreateShop]
(@name varchar(100), @description varchar(500), @photo varchar(MAX), @phone varchar(100), @address varchar(500), @isDelete bit, @timestamp datetime)
AS
BEGIN

INSERT INTO Shop
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

SELECT * FROM Shop WHERE ShopId = IDENT_CURRENT('Shop');

END








GO
/****** Object:  StoredProcedure [dbo].[CreateTemplate]    Script Date: 2/14/2020 3:20:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[CreateTemplate]
(@name varchar(100), @content varchar(MAX), @isDelete bit, @timestamp datetime)
AS
BEGIN

INSERT INTO EmailTemplate
        (Name
        ,Content
        ,IsDelete
        ,Timestamp)
VALUES
        (@name,
        @content,
        @isDelete,
        @timestamp)

SELECT * FROM EmailTemplate WHERE EmailTemplateId = IDENT_CURRENT('EmailTemplate');

END





GO
/****** Object:  StoredProcedure [dbo].[EditCompany]    Script Date: 2/14/2020 3:20:28 PM ******/
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
/****** Object:  StoredProcedure [dbo].[EditShop]    Script Date: 2/14/2020 3:20:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[EditShop]
(@shopId int, @name varchar(100), @description varchar(500), @photo varchar(MAX), @phone varchar(100), @address varchar(500), @isDelete bit, @timestamp datetime)
AS
BEGIN

UPDATE Shop SET 
	Name = @name,
	Description = @description,
	Photo = @photo,
	Phone = @phone,
	Address = @address,
	IsDelete = @isDelete,
	Timestamp = @timestamp
WHERE ShopId = @shopId;

SELECT * FROM Shop WHERE ShopId = @shopId;

END








GO
/****** Object:  StoredProcedure [dbo].[EditTemplate]    Script Date: 2/14/2020 3:20:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[EditTemplate]
(@emailTemplateId int, @name varchar(100), @content varchar(MAX), @isDelete bit, @timestamp datetime)
AS
BEGIN

UPDATE EmailTemplate SET 
	Name = @name,
	Content = @content,
	IsDelete = @isDelete,
	Timestamp = @timestamp
WHERE EmailTemplateId = @emailTemplateId;

SELECT * FROM EmailTemplate WHERE EmailTemplateId = @emailTemplateId;

END





GO
/****** Object:  StoredProcedure [dbo].[GetAllCards]    Script Date: 2/14/2020 3:20:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GetAllCards]
(@pageId int, @pageSize int)
AS
BEGIN

	declare @offset int

	IF @pageSize = -1 BEGIN

		SELECT * FROM Card;
		
	END
	ELSE  BEGIN

		SET @offset = (@pageId - 1) * @pageSize;

		SELECT * FROM Card
		ORDER BY CardId OFFSET @offset ROWS FETCH NEXT @pageSize ROWS ONLY

	END
END





GO
/****** Object:  StoredProcedure [dbo].[GetAllCompanies]    Script Date: 2/14/2020 3:20:28 PM ******/
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

	IF @pageSize = -1 BEGIN

		SELECT * FROM Company;

	END
	ELSE  BEGIN

		SET @offset = (@pageId - 1) * @pageSize;

		SELECT * FROM Company
		ORDER BY CompanyId OFFSET @offset ROWS FETCH NEXT @pageSize ROWS ONLY

	END

END











GO
/****** Object:  StoredProcedure [dbo].[GetAllShops]    Script Date: 2/14/2020 3:20:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GetAllShops]
(@pageId int, @pageSize int)
AS
BEGIN
	declare @offset int

	IF @pageSize = -1 BEGIN

		SELECT * FROM Shop;
		
	END
	ELSE  BEGIN

		SET @offset = (@pageId - 1) * @pageSize;

		SELECT * FROM Shop
		ORDER BY ShopId OFFSET @offset ROWS FETCH NEXT @pageSize ROWS ONLY

	END
END








GO
/****** Object:  StoredProcedure [dbo].[GetAllTemplates]    Script Date: 2/14/2020 3:20:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GetAllTemplates] 
(@pageId int, @pageSize int)
AS
BEGIN

declare @offset int

	IF @pageSize = -1 BEGIN

		SELECT * FROM EmailTemplate;

	END
	ELSE  BEGIN

		SET @offset = (@pageId - 1) * @pageSize;

		SELECT * FROM EmailTemplate
		ORDER BY EmailTemplateId OFFSET @offset ROWS FETCH NEXT @pageSize ROWS ONLY

	END
END





GO
/****** Object:  StoredProcedure [dbo].[GetAllUsers]    Script Date: 2/14/2020 3:20:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GetAllUsers]
(@pageId int, @pageSize int)
AS
BEGIN
	declare @offset int

	IF @pageSize = -1 BEGIN

		SELECT 
		Id AS UserId, 
		CONCAT(FirstName, ' ', LastName) AS Name,
		Email,
		COALESCE((Select DISTINCT Name FROM Company WHERE CompanyId = (Select DISTINCT CompanyId FROM CompanyUser Where UserId = anu.Id)),'-') AS Company,
		COALESCE((Select DISTINCT Name FROM Shop WHERE ShopId = (Select DISTINCT ShopId FROM ShopUser Where UserId = anu.Id)),'-') AS Shop,
		(Select DISTINCT Name FROM AspNetRoles WHERE Id = (Select DISTINCT RoleId FROM AspNetUserRoles Where UserId = anu.Id)) AS Role,
		IsActive
		FROM AspNetUsers anu
		
	END
	ELSE  BEGIN

		SET @offset = (@pageId - 1) * @pageSize;

		SELECT 
		Id AS UserId, 
		CONCAT(FirstName, ' ', LastName) AS Name,
		Email,
		COALESCE((Select DISTINCT Name FROM Company WHERE CompanyId = (Select DISTINCT CompanyId FROM CompanyUser Where UserId = anu.Id)),'-') AS Company,
		COALESCE((Select DISTINCT Name FROM Shop WHERE ShopId = (Select DISTINCT ShopId FROM ShopUser Where UserId = anu.Id)),'-') AS Shop,
		(Select DISTINCT Name FROM AspNetRoles WHERE Id = (Select DISTINCT RoleId FROM AspNetUserRoles Where UserId = anu.Id)) AS Role,
		IsActive
		FROM AspNetUsers anu
		ORDER BY Id OFFSET @offset ROWS FETCH NEXT @pageSize ROWS ONLY

	END
END








GO
/****** Object:  StoredProcedure [dbo].[GetBalanceByUserId]    Script Date: 2/14/2020 3:20:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GetBalanceByUserId] 
(@userId nvarchar(450))
AS
BEGIN

Select TOP 1 * FROM RemainingBalance WHERE UserId = @userId ORDER BY RemainingBalanceId DESC;

END


GO
/****** Object:  StoredProcedure [dbo].[GetByIdCompany]    Script Date: 2/14/2020 3:20:28 PM ******/
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
/****** Object:  StoredProcedure [dbo].[GetByIdShop]    Script Date: 2/14/2020 3:20:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GetByIdShop]
(@id int)
AS
BEGIN

	SELECT * FROM Shop WHERE ShopId = @id;

END








GO
/****** Object:  StoredProcedure [dbo].[GetByIdTemplate]    Script Date: 2/14/2020 3:20:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GetByIdTemplate]
(@id int)
AS
BEGIN

	SELECT * FROM EmailTemplate WHERE EmailTemplateId = @id;

END





GO
/****** Object:  StoredProcedure [dbo].[GetByNameTemplate]    Script Date: 2/14/2020 3:20:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GetByNameTemplate]
(@name varchar(100))
AS
BEGIN

	SELECT * FROM EmailTemplate WHERE Name = @name;

END





GO
/****** Object:  StoredProcedure [dbo].[GetCardsByUserId]    Script Date: 2/14/2020 3:20:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GetCardsByUserId]
(@userId nvarchar(450), @pageId int, @pageSize int)
AS
BEGIN

declare @offset int

	IF @pageSize = -1 BEGIN

		SELECT su.UserId, su.ShopId, cs.CompanyId, c.CardId, c.Name, c.Description, c.Amount, c.Photo, c.IsDelete, c.Timestamp FROM ShopUser su
		INNER JOIN CompanyShops cs ON su.ShopId = cs.ShopId
		INNER JOIN Card c ON cs.CompanyId = c.CompanyId
		WHERE su.UserId = @userId;
		
	END
	ELSE  BEGIN

		SET @offset = (@pageId - 1) * @pageSize;

		SELECT su.UserId, su.ShopId, cs.CompanyId, c.CardId, c.Name, c.Description, c.Amount, c.Photo, c.IsDelete, c.Timestamp FROM ShopUser su
		INNER JOIN CompanyShops cs ON su.ShopId = cs.ShopId
		INNER JOIN Card c ON cs.CompanyId = c.CompanyId
		WHERE su.UserId = @userId
		ORDER BY c.CardId OFFSET @offset ROWS FETCH NEXT @pageSize ROWS ONLY

	END



END


GO
/****** Object:  StoredProcedure [dbo].[GetProfile]    Script Date: 2/14/2020 3:20:28 PM ******/
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
		FirstName,
		LastName,
		Picture,
		Description,
		PhoneNumber AS Phone,
		'' AS base64Picture,
		'' AS listCompanies,
		'' AS listShops,
		COALESCE((Select CompanyId FROM CompanyUser WHERE UserId = @userId), 0) AS CompanyId,
		COALESCE((Select ShopId FROM ShopUser WHERE UserId = @userId), 0) AS ShopId
	FROM AspNetUsers
	WHERE Id = @userId;
END








GO
/****** Object:  StoredProcedure [dbo].[InsertUserToCompanyShop]    Script Date: 2/14/2020 3:20:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[InsertUserToCompanyShop]
(@userId nvarchar(450), @companyId int, @shopId int, @createdBy nvarchar(450), @isDelete bit, @timestamp datetime)
AS
BEGIN

DECLARE @company INT;

IF @companyId = 0 BEGIN

	SET @company = (Select CompanyId FROM CompanyUser WHERE UserId = @createdBy);

	SET @companyId = @company;

END

INSERT INTO CompanyUser (CompanyId, UserId, IsDelete, Timestamp)
VALUES (@companyId, @userId, @isDelete, @timestamp)

INSERT INTO ShopUser (ShopId, UserId, IsDelete, Timestamp)
VALUES (@shopId, @userId, @isDelete, @timestamp)

	SELECT 
	anu.Id AS UserId, 
	CONCAT(anu.FirstName, ' ', anu.LastName) AS UserName,
	anu.Email AS Email,
	cu.CompanyId, 
	su.ShopId, 
	(SELECT DISTINCT Name FROM Company WHERE CompanyId = cu.CompanyId) AS CompanyName,
	(SELECT DISTINCT Name FROM Shop WHERE ShopId = su.ShopId) AS ShopName
	FROM AspNetUsers anu
	INNER JOIN CompanyUser cu
	ON cu.UserId = anu.Id
	INNER JOIN ShopUser su
	ON su.UserId = anu.Id
	WHERE anu.Id = @userId;

END






GO
/****** Object:  StoredProcedure [dbo].[SaveSettings]    Script Date: 2/14/2020 3:20:28 PM ******/
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
