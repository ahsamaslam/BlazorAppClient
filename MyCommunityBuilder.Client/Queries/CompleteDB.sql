USE [communitybuilder4]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 10/21/2021 11:42:50 AM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Business]    Script Date: 10/21/2021 11:42:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Business](
	[BusinessID] [int] IDENTITY(1,1) NOT NULL,
	[BusinessName] [nvarchar](250) NOT NULL,
	[BusinessAddressStreet] [nvarchar](250) NULL,
	[BusinessAddressSuite] [nvarchar](250) NULL,
	[BusinessAddressCity] [nvarchar](250) NULL,
	[BusinessAddressState] [nvarchar](75) NULL,
	[BusinessAddressZipcode] [nvarchar](75) NULL,
	[BusinessAddressCountry] [nvarchar](75) NULL,
	[SortIndex] [int] NULL,
	[BusinessNumber] [int] NULL,
	[Type] [nvarchar](75) NULL,
	[Visible] [bit] NULL,
	[NumberOfFans] [int] NULL,
	[Description] [nvarchar](max) NULL,
	[Telephone] [nvarchar](150) NULL,
	[Address] [nvarchar](max) NULL,
	[Email] [nvarchar](150) NULL,
	[Website] [nvarchar](150) NULL,
	[Offers] [bit] NULL,
	[SearchTerms] [nvarchar](max) NULL,
	[UserID] [nvarchar](128) NULL,
	[SiteID] [int] NULL,
	[LocallyOwned] [int] NOT NULL,
	[Published] [bit] NULL,
	[PublishDate] [datetime] NULL,
	[PublishedByUserID] [nvarchar](128) NULL,
	[DeactivationDate] [datetime] NULL,
	[Inactive] [bit] NOT NULL,
	[DateAdded] [datetime] NULL,
	[AddedByUserID] [nvarchar](128) NULL,
 CONSTRAINT [PK_Business] PRIMARY KEY CLUSTERED 
(
	[BusinessID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BusinessComment]    Script Date: 10/21/2021 11:42:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BusinessComment](
	[BusinessCommentID] [int] IDENTITY(1,1) NOT NULL,
	[BusinessID] [int] NULL,
	[Title] [nvarchar](100) NULL,
	[Comment] [nvarchar](4000) NULL,
	[UserID] [nvarchar](128) NULL,
	[PublishDate] [datetime] NULL,
 CONSTRAINT [PK_BusinessComment] PRIMARY KEY CLUSTERED 
(
	[BusinessCommentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BusinessEvents]    Script Date: 10/21/2021 11:42:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BusinessEvents](
	[BusinessID] [int] NOT NULL,
	[EventID] [int] NOT NULL,
 CONSTRAINT [PK_BusinessEvents] PRIMARY KEY CLUSTERED 
(
	[BusinessID] ASC,
	[EventID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BusinessFile]    Script Date: 10/21/2021 11:42:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BusinessFile](
	[FileID] [int] IDENTITY(1,1) NOT NULL,
	[BusinessID] [int] NULL,
	[FileURL] [nvarchar](max) NULL,
	[IconURL] [nvarchar](max) NULL,
	[SortIndex] [int] NULL,
	[Title] [nvarchar](max) NULL,
	[Category] [nvarchar](max) NULL,
	[Stamp] [datetime] NULL,
 CONSTRAINT [PK_BFile] PRIMARY KEY CLUSTERED 
(
	[FileID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Client]    Script Date: 10/21/2021 11:42:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Client](
	[ClientID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](250) NULL,
	[Street] [nvarchar](250) NULL,
	[Suite] [nvarchar](250) NULL,
	[City] [nvarchar](250) NULL,
	[State] [nvarchar](75) NULL,
	[Zipcode] [nvarchar](75) NULL,
	[CountryID] [int] NULL,
	[Telephone] [nvarchar](150) NULL,
	[Email] [nvarchar](150) NULL,
	[Website] [nvarchar](150) NULL,
	[DateAdded] [datetime] NULL,
	[AddedByUserID] [nvarchar](128) NULL,
 CONSTRAINT [PK_Client] PRIMARY KEY CLUSTERED 
(
	[ClientID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ClientContacts]    Script Date: 10/21/2021 11:42:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ClientContacts](
	[ClientID] [int] NOT NULL,
	[ContactID] [int] NOT NULL,
	[DateAdded] [datetime] NULL,
	[AddedByUserID] [nvarchar](128) NULL,
 CONSTRAINT [PK_ClientContacts] PRIMARY KEY CLUSTERED 
(
	[ClientID] ASC,
	[ContactID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ClientSites]    Script Date: 10/21/2021 11:42:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ClientSites](
	[ClientID] [int] NOT NULL,
	[SiteID] [int] NOT NULL,
	[DateAdded] [datetime] NULL,
	[AddedByUserID] [nvarchar](128) NULL,
 CONSTRAINT [PK_ClientSites] PRIMARY KEY CLUSTERED 
(
	[ClientID] ASC,
	[SiteID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Contact]    Script Date: 10/21/2021 11:42:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Contact](
	[ContactID] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](150) NULL,
	[LastName] [nvarchar](150) NULL,
	[Title] [nvarchar](150) NULL,
	[SiteID] [int] NULL,
	[UserID] [nvarchar](128) NULL,
	[Comment] [nvarchar](max) NULL,
	[Phone1] [nvarchar](max) NULL,
	[Phone2] [nvarchar](max) NULL,
	[Email1] [nvarchar](256) NULL,
	[Email2] [nvarchar](256) NULL,
	[AddressStreet] [nvarchar](250) NULL,
	[AddressSuite] [nvarchar](250) NULL,
	[AddressCity] [nvarchar](250) NULL,
	[AddressState] [nvarchar](75) NULL,
	[AddressZip] [nvarchar](75) NULL,
	[AddressCountry] [nvarchar](75) NULL,
 CONSTRAINT [PK_Contact] PRIMARY KEY CLUSTERED 
(
	[ContactID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Country]    Script Date: 10/21/2021 11:42:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Country](
	[CountryID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](250) NOT NULL,
	[NameLong] [nvarchar](250) NOT NULL,
	[DefaultLanguageID] [int] NOT NULL,
 CONSTRAINT [PK_Country] PRIMARY KEY CLUSTERED 
(
	[CountryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CSS]    Script Date: 10/21/2021 11:42:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CSS](
	[CSSID] [int] IDENTITY(1,1) NOT NULL,
	[TextColor] [nvarchar](50) NULL,
	[TextSize] [nvarchar](50) NULL,
 CONSTRAINT [PK_CSS] PRIMARY KEY CLUSTERED 
(
	[CSSID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Event]    Script Date: 10/21/2021 11:42:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Event](
	[EventID] [int] IDENTITY(1,1) NOT NULL,
	[VirtualOrPhysical] [nvarchar](10) NULL,
	[VirtualType] [nvarchar](150) NULL,
	[Date] [datetime] NULL,
	[Time] [datetime] NULL,
	[TimeZone] [nvarchar](10) NULL,
	[Location] [nvarchar](250) NULL,
	[Type] [nvarchar](250) NULL,
	[Hyperlink1] [varchar](150) NULL,
	[Hyperlink2] [varchar](150) NULL,
	[Comment] [nvarchar](max) NULL,
	[DateAdded] [datetime] NULL,
	[AddedByUserID] [nvarchar](128) NULL,
	[Inactive] [bit] NOT NULL,
	[DeactivateOn] [datetime] NULL,
	[DeactivatedByUserID] [nvarchar](128) NULL,
 CONSTRAINT [PK_Event] PRIMARY KEY CLUSTERED 
(
	[EventID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Fan]    Script Date: 10/21/2021 11:42:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Fan](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[UserID] [nvarchar](128) NULL,
	[BusinessID] [int] NULL,
	[Date] [datetime] NULL,
 CONSTRAINT [PK_Favorite] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FundingPlan]    Script Date: 10/21/2021 11:42:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FundingPlan](
	[FundingPlanID] [int] IDENTITY(1,1) NOT NULL,
	[BusinessID] [int] NOT NULL,
	[FundingTypeID] [int] NOT NULL,
	[PlanTerms] [nvarchar](max) NOT NULL,
	[PlanComments] [nvarchar](max) NULL,
	[PlanPublicizeDate] [datetime] NULL,
	[PlanFulfilledDate] [datetime] NULL,
 CONSTRAINT [PK_FundingPlan] PRIMARY KEY CLUSTERED 
(
	[FundingPlanID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FundingPlanInvestors]    Script Date: 10/21/2021 11:42:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FundingPlanInvestors](
	[FundingPlanID] [int] NOT NULL,
	[InvestorUserID] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_FundingPlanInvestors] PRIMARY KEY CLUSTERED 
(
	[FundingPlanID] ASC,
	[InvestorUserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FundingType]    Script Date: 10/21/2021 11:42:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FundingType](
	[FundingTypeID] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](250) NULL,
 CONSTRAINT [PK_Funding] PRIMARY KEY CLUSTERED 
(
	[FundingTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GenericLocalizationKeyValues]    Script Date: 10/21/2021 11:42:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GenericLocalizationKeyValues](
	[KeyValueID] [int] IDENTITY(1,1) NOT NULL,
	[Key] [nvarchar](max) NULL,
	[Value] [nvarchar](max) NULL,
	[LanguageId] [int] NULL,
	[Comment] [nvarchar](max) NULL,
 CONSTRAINT [PK_GenericLocalizationKeyValues] PRIMARY KEY CLUSTERED 
(
	[KeyValueID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Language]    Script Date: 10/21/2021 11:42:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Language](
	[LanguageID] [int] IDENTITY(1,1) NOT NULL,
	[LanguageCode] [nvarchar](10) NOT NULL,
	[LanguageDescription] [nvarchar](250) NOT NULL,
 CONSTRAINT [PK_Language] PRIMARY KEY CLUSTERED 
(
	[LanguageID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Localization]    Script Date: 10/21/2021 11:42:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Localization](
	[LocalizationID] [int] IDENTITY(1,1) NOT NULL,
	[LanguageID] [int] NOT NULL,
	[SiteID] [int] NOT NULL,
 CONSTRAINT [PK_Localization] PRIMARY KEY CLUSTERED 
(
	[LocalizationID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LocalizationKeyValues]    Script Date: 10/21/2021 11:42:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LocalizationKeyValues](
	[KeyValueID] [int] IDENTITY(1,1) NOT NULL,
	[LocalizationID] [int] NOT NULL,
	[Key] [nvarchar](250) NOT NULL,
	[Value] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_LocalizationKeyValues] PRIMARY KEY CLUSTERED 
(
	[KeyValueID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Referral]    Script Date: 10/21/2021 11:42:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Referral](
	[ReferrerUserID] [nvarchar](128) NOT NULL,
	[ReferredUserID] [nvarchar](128) NOT NULL,
	[DateAdded] [datetime] NOT NULL,
 CONSTRAINT [PK_Referral] PRIMARY KEY CLUSTERED 
(
	[ReferrerUserID] ASC,
	[ReferredUserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Site]    Script Date: 10/21/2021 11:42:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Site](
	[SiteID] [int] IDENTITY(1,1) NOT NULL,
	[Guid] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](150) NOT NULL,
	[URL] [nvarchar](150) NULL,
	[Comments] [nvarchar](max) NULL,
	[IsMasterSite] [bit] NOT NULL,
	[ParentID] [int] NULL,
	[DefaultLanguageID] [int] NOT NULL,
	[DateAdded] [datetime] NOT NULL,
	[AddedByUserID] [nvarchar](128) NULL,
 CONSTRAINT [PK_SiteID] PRIMARY KEY CLUSTERED 
(
	[SiteID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SiteEvents]    Script Date: 10/21/2021 11:42:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SiteEvents](
	[SiteID] [int] NOT NULL,
	[EventID] [int] NOT NULL,
 CONSTRAINT [PK_SiteEvents] PRIMARY KEY CLUSTERED 
(
	[SiteID] ASC,
	[EventID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SiteHeader]    Script Date: 10/21/2021 11:42:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SiteHeader](
	[SiteHeaderID] [int] IDENTITY(1,1) NOT NULL,
	[Image] [nvarchar](max) NULL,
	[Title] [nvarchar](max) NULL,
	[Text] [nvarchar](max) NULL,
	[DateAdded] [datetime2](7) NULL,
	[DateUpdated] [datetime2](7) NULL,
	[SiteID] [int] NOT NULL,
	[SitePageID] [int] NOT NULL,
 CONSTRAINT [PK_SiteHeader] PRIMARY KEY CLUSTERED 
(
	[SiteHeaderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SitePage]    Script Date: 10/21/2021 11:42:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SitePage](
	[SitePageID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
 CONSTRAINT [PK_SitePage] PRIMARY KEY CLUSTERED 
(
	[SitePageID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SubComment]    Script Date: 10/21/2021 11:42:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SubComment](
	[SubCommentID] [int] IDENTITY(1,1) NOT NULL,
	[CommentID] [int] NULL,
	[UserID] [nvarchar](128) NULL,
	[PublishDate] [datetime] NULL,
	[Comment] [nvarchar](max) NULL,
 CONSTRAINT [PK_SubComment] PRIMARY KEY CLUSTERED 
(
	[SubCommentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Business] ON 

INSERT [dbo].[Business] ([BusinessID], [BusinessName], [BusinessAddressStreet], [BusinessAddressSuite], [BusinessAddressCity], [BusinessAddressState], [BusinessAddressZipcode], [BusinessAddressCountry], [SortIndex], [BusinessNumber], [Type], [Visible], [NumberOfFans], [Description], [Telephone], [Address], [Email], [Website], [Offers], [SearchTerms], [UserID], [SiteID], [LocallyOwned], [Published], [PublishDate], [PublishedByUserID], [DeactivationDate], [Inactive], [DateAdded], [AddedByUserID]) VALUES (22, N'Jude Barnes, Personal Chef', NULL, NULL, NULL, NULL, NULL, NULL, 13, 7, N'Chef', 1, 423, N'Professionally prepared meals for the family and for dinner parties.   Special diets are not a problem.', NULL, N'San Francisco, CA', NULL, NULL, NULL, N'94101', N'60174670-1428-4e32-ad26-b7cef2e6fb72', 7, 1, 1, CAST(N'2021-09-01T06:37:19.730' AS DateTime), N'60174670-1428-4e32-ad26-b7cef2e6fb7260174670-1428-4e32-ad26-b7cef2e6fb72', NULL, 0, NULL, NULL)
INSERT [dbo].[Business] ([BusinessID], [BusinessName], [BusinessAddressStreet], [BusinessAddressSuite], [BusinessAddressCity], [BusinessAddressState], [BusinessAddressZipcode], [BusinessAddressCountry], [SortIndex], [BusinessNumber], [Type], [Visible], [NumberOfFans], [Description], [Telephone], [Address], [Email], [Website], [Offers], [SearchTerms], [UserID], [SiteID], [LocallyOwned], [Published], [PublishDate], [PublishedByUserID], [DeactivationDate], [Inactive], [DateAdded], [AddedByUserID]) VALUES (26, N'Allgood Kitchen Renovations', NULL, NULL, NULL, NULL, NULL, NULL, 7, 4, N'Remodelers', 1, 0, N'Let me renovate your kitchen', NULL, N'Chattanooga, TN', NULL, NULL, NULL, N'37401', N'f93b5371-da6e-4af9-9033-44083e5758c4', 7, 1, 1, CAST(N'2021-09-01T06:37:38.170' AS DateTime), N'60174670-1428-4e32-ad26-b7cef2e6fb72', NULL, 0, NULL, NULL)
INSERT [dbo].[Business] ([BusinessID], [BusinessName], [BusinessAddressStreet], [BusinessAddressSuite], [BusinessAddressCity], [BusinessAddressState], [BusinessAddressZipcode], [BusinessAddressCountry], [SortIndex], [BusinessNumber], [Type], [Visible], [NumberOfFans], [Description], [Telephone], [Address], [Email], [Website], [Offers], [SearchTerms], [UserID], [SiteID], [LocallyOwned], [Published], [PublishDate], [PublishedByUserID], [DeactivationDate], [Inactive], [DateAdded], [AddedByUserID]) VALUES (30, N'Solar Salon and Spa', NULL, NULL, NULL, NULL, NULL, NULL, 21, 14, N'Beauty Salon', 1, 221, N'We are now a full service salon for all your beauty and relaxing needs. Now celebrating 12 years of business and thousands of loyal customers at this location.', N'770-232-9852', N'Suwanee, GA', N'Info@SolarSalonAndSpa.com', N'solarsalonandspa.com', NULL, N'Tanning,', N'f93b5371-da6e-4af9-9033-44083e5758c4', 7, 1, 1, CAST(N'2021-09-01T06:38:02.933' AS DateTime), N'60174670-1428-4e32-ad26-b7cef2e6fb72', NULL, 0, NULL, NULL)
INSERT [dbo].[Business] ([BusinessID], [BusinessName], [BusinessAddressStreet], [BusinessAddressSuite], [BusinessAddressCity], [BusinessAddressState], [BusinessAddressZipcode], [BusinessAddressCountry], [SortIndex], [BusinessNumber], [Type], [Visible], [NumberOfFans], [Description], [Telephone], [Address], [Email], [Website], [Offers], [SearchTerms], [UserID], [SiteID], [LocallyOwned], [Published], [PublishDate], [PublishedByUserID], [DeactivationDate], [Inactive], [DateAdded], [AddedByUserID]) VALUES (1063, N'Strand Bookstore', NULL, NULL, NULL, NULL, NULL, NULL, 36, 22, N'Book Store', 1, 4545, N'This historic landmark book store offers an enormous variety of new, used, and rare books totaling more than 18 miles, including a vast selection of out-of-print books.', N'212-473-1452', N'New York, NY', N'web@strandbooks.com', N'https://www.strandbooks.com/', NULL, N'book, books, bookstore, book store in 10003', N'f93b5371-da6e-4af9-9033-44083e5758c4', 7, -1, 1, CAST(N'2021-09-01T06:40:46.810' AS DateTime), N'60174670-1428-4e32-ad26-b7cef2e6fb72', NULL, 0, NULL, NULL)
INSERT [dbo].[Business] ([BusinessID], [BusinessName], [BusinessAddressStreet], [BusinessAddressSuite], [BusinessAddressCity], [BusinessAddressState], [BusinessAddressZipcode], [BusinessAddressCountry], [SortIndex], [BusinessNumber], [Type], [Visible], [NumberOfFans], [Description], [Telephone], [Address], [Email], [Website], [Offers], [SearchTerms], [UserID], [SiteID], [LocallyOwned], [Published], [PublishDate], [PublishedByUserID], [DeactivationDate], [Inactive], [DateAdded], [AddedByUserID]) VALUES (1065, N'Brick and Mortar', NULL, NULL, NULL, NULL, NULL, NULL, 37, 23, N'Vintage', 1, 201, N'The best in vintage', N'(404) 492-9207', N'Atlanta, GA', NULL, N'https://thisisbrickandmortar.com/', NULL, N'antiques, vintage, art, books, candles, accessories, photographs in  30318', N'f93b5371-da6e-4af9-9033-44083e5758c4', 7, -1, 1, CAST(N'2021-09-01T06:40:48.247' AS DateTime), N'60174670-1428-4e32-ad26-b7cef2e6fb72', NULL, 0, NULL, NULL)
INSERT [dbo].[Business] ([BusinessID], [BusinessName], [BusinessAddressStreet], [BusinessAddressSuite], [BusinessAddressCity], [BusinessAddressState], [BusinessAddressZipcode], [BusinessAddressCountry], [SortIndex], [BusinessNumber], [Type], [Visible], [NumberOfFans], [Description], [Telephone], [Address], [Email], [Website], [Offers], [SearchTerms], [UserID], [SiteID], [LocallyOwned], [Published], [PublishDate], [PublishedByUserID], [DeactivationDate], [Inactive], [DateAdded], [AddedByUserID]) VALUES (1066, N'Wild & Wood Coffee', NULL, NULL, NULL, NULL, NULL, NULL, 38, 24, N'Coffee', 1, 205, N'Voted best in town.', NULL, N'Chicago, IL', NULL, N'', NULL, N'restaurant, food, coffee in 30318', N'f93b5371-da6e-4af9-9033-44083e5758c4', 7, -1, 1, CAST(N'2021-09-01T06:40:49.640' AS DateTime), N'60174670-1428-4e32-ad26-b7cef2e6fb72', NULL, 0, NULL, NULL)
INSERT [dbo].[Business] ([BusinessID], [BusinessName], [BusinessAddressStreet], [BusinessAddressSuite], [BusinessAddressCity], [BusinessAddressState], [BusinessAddressZipcode], [BusinessAddressCountry], [SortIndex], [BusinessNumber], [Type], [Visible], [NumberOfFans], [Description], [Telephone], [Address], [Email], [Website], [Offers], [SearchTerms], [UserID], [SiteID], [LocallyOwned], [Published], [PublishDate], [PublishedByUserID], [DeactivationDate], [Inactive], [DateAdded], [AddedByUserID]) VALUES (1067, N'Reading Diner', NULL, NULL, NULL, NULL, NULL, NULL, 39, 25, N'Restaurant', 1, 404, N'This restaurant serves chili con carne, baked virginia ham, greek salad, cold roast turkey, roasted top sirloin of beef, fried honey-dipped chicken, and cold meatloaf.  They also serve caesar salad, soup du jour, chef''s salad, mozzarella cheese sticks, roasted half chicken, jalapeno poppers, and baked homemade meatloaf. They are open every day of the week.', N'(610) 376-5565', N'West Reading, PA', NULL, N'www.westreadingdiner.com', NULL, N'restaurant, food in 19611', N'9dd226eb-0836-4d1a-bfe5-459feec6cfac', 4, 1, 1, CAST(N'2021-09-01T06:40:51.077' AS DateTime), N'60174670-1428-4e32-ad26-b7cef2e6fb72', NULL, 0, NULL, NULL)
INSERT [dbo].[Business] ([BusinessID], [BusinessName], [BusinessAddressStreet], [BusinessAddressSuite], [BusinessAddressCity], [BusinessAddressState], [BusinessAddressZipcode], [BusinessAddressCountry], [SortIndex], [BusinessNumber], [Type], [Visible], [NumberOfFans], [Description], [Telephone], [Address], [Email], [Website], [Offers], [SearchTerms], [UserID], [SiteID], [LocallyOwned], [Published], [PublishDate], [PublishedByUserID], [DeactivationDate], [Inactive], [DateAdded], [AddedByUserID]) VALUES (1068, N'James McNellie''s', NULL, NULL, NULL, NULL, NULL, NULL, 40, 26, N'Restaurant & Pub', 1, 760, N'Taste of Ireland to Tulsa', N'918-382-7468', N'Tulsa, OK', NULL, N'https://mcnellies.com/locations/tulsa/', NULL, N'restaurant, food in 74120', N'f93b5371-da6e-4af9-9033-44083e5758c4', 7, -1, 1, CAST(N'2021-09-01T06:40:52.590' AS DateTime), N'60174670-1428-4e32-ad26-b7cef2e6fb72', NULL, 0, NULL, NULL)
INSERT [dbo].[Business] ([BusinessID], [BusinessName], [BusinessAddressStreet], [BusinessAddressSuite], [BusinessAddressCity], [BusinessAddressState], [BusinessAddressZipcode], [BusinessAddressCountry], [SortIndex], [BusinessNumber], [Type], [Visible], [NumberOfFans], [Description], [Telephone], [Address], [Email], [Website], [Offers], [SearchTerms], [UserID], [SiteID], [LocallyOwned], [Published], [PublishDate], [PublishedByUserID], [DeactivationDate], [Inactive], [DateAdded], [AddedByUserID]) VALUES (1070, N'Gulliver''s', NULL, NULL, NULL, NULL, NULL, NULL, 41, 27, N'Restaurant & Pub', 1, 23, N'Gulliver''s is ideal for a date or a gathering of friends with its delicious menu and relaxed atmosphere.', N'773-338-2166', N'Chicago, IL', NULL, N'', NULL, N'food, pub, drinks, pizza, bar in  60645', N'f93b5371-da6e-4af9-9033-44083e5758c4', 7, -1, 1, CAST(N'2021-09-01T06:40:54.077' AS DateTime), N'60174670-1428-4e32-ad26-b7cef2e6fb72', NULL, 0, NULL, NULL)
INSERT [dbo].[Business] ([BusinessID], [BusinessName], [BusinessAddressStreet], [BusinessAddressSuite], [BusinessAddressCity], [BusinessAddressState], [BusinessAddressZipcode], [BusinessAddressCountry], [SortIndex], [BusinessNumber], [Type], [Visible], [NumberOfFans], [Description], [Telephone], [Address], [Email], [Website], [Offers], [SearchTerms], [UserID], [SiteID], [LocallyOwned], [Published], [PublishDate], [PublishedByUserID], [DeactivationDate], [Inactive], [DateAdded], [AddedByUserID]) VALUES (1071, N'Peter Pan Pastry', NULL, NULL, NULL, NULL, NULL, NULL, 42, 28, N'Restaurant, Donuts', 1, 350, N'Fresh donuts every day', N'718-389-3676', N'Brooklyn, NY', NULL, N'http://peterpandonuts.com/', NULL, N'food, donuts, pastries, restaurant in 11222', N'f93b5371-da6e-4af9-9033-44083e5758c4', 7, -1, 1, CAST(N'2021-09-01T06:40:55.780' AS DateTime), N'60174670-1428-4e32-ad26-b7cef2e6fb72', NULL, 0, NULL, NULL)
INSERT [dbo].[Business] ([BusinessID], [BusinessName], [BusinessAddressStreet], [BusinessAddressSuite], [BusinessAddressCity], [BusinessAddressState], [BusinessAddressZipcode], [BusinessAddressCountry], [SortIndex], [BusinessNumber], [Type], [Visible], [NumberOfFans], [Description], [Telephone], [Address], [Email], [Website], [Offers], [SearchTerms], [UserID], [SiteID], [LocallyOwned], [Published], [PublishDate], [PublishedByUserID], [DeactivationDate], [Inactive], [DateAdded], [AddedByUserID]) VALUES (1072, N'Tortaria', NULL, NULL, NULL, NULL, NULL, NULL, 43, 29, N'Restaurant', 1, 4500, N'Tortas, Taquitos & Tequilla', N'212-776-1830', N'New York, NY', NULL, N'', NULL, N'drinks, food, restaurant in 10003', N'f93b5371-da6e-4af9-9033-44083e5758c4', 7, 1, 1, CAST(N'2021-09-01T06:40:57.373' AS DateTime), N'60174670-1428-4e32-ad26-b7cef2e6fb72', NULL, 0, NULL, NULL)
INSERT [dbo].[Business] ([BusinessID], [BusinessName], [BusinessAddressStreet], [BusinessAddressSuite], [BusinessAddressCity], [BusinessAddressState], [BusinessAddressZipcode], [BusinessAddressCountry], [SortIndex], [BusinessNumber], [Type], [Visible], [NumberOfFans], [Description], [Telephone], [Address], [Email], [Website], [Offers], [SearchTerms], [UserID], [SiteID], [LocallyOwned], [Published], [PublishDate], [PublishedByUserID], [DeactivationDate], [Inactive], [DateAdded], [AddedByUserID]) VALUES (1073, N'Perfect Gentlemen II', NULL, NULL, NULL, NULL, NULL, NULL, 44, 30, N'Barber & Beauty', 1, 202, N'Conveniently located right off Paca street, you can pop into Perfect Gentlemen II for a New ‘Do or a quick fade whenever you like. A classic men’s barbershop, and ladies salon, Perfect Gentlemen can clean up any style, and they welcome walkins whenever they’re open. So get a quick haircut: on your lunch break, this weekend, or after your morning coffee. You know you could use one.', N'410-625-6289', N'Baltimore, MD', N'', N'https://lexingtonmarket.com/vendor/perfect-gentlemen-ii-barber-shop-and-salon/', NULL, N'beauty, barber, salon, hair in 21201', N'f93b5371-da6e-4af9-9033-44083e5758c4', 3, 1, 1, CAST(N'2021-09-01T06:40:58.830' AS DateTime), N'60174670-1428-4e32-ad26-b7cef2e6fb72', NULL, 0, NULL, NULL)
INSERT [dbo].[Business] ([BusinessID], [BusinessName], [BusinessAddressStreet], [BusinessAddressSuite], [BusinessAddressCity], [BusinessAddressState], [BusinessAddressZipcode], [BusinessAddressCountry], [SortIndex], [BusinessNumber], [Type], [Visible], [NumberOfFans], [Description], [Telephone], [Address], [Email], [Website], [Offers], [SearchTerms], [UserID], [SiteID], [LocallyOwned], [Published], [PublishDate], [PublishedByUserID], [DeactivationDate], [Inactive], [DateAdded], [AddedByUserID]) VALUES (1074, N'Tight Image Barber Shop', NULL, NULL, NULL, NULL, NULL, NULL, 45, 31, N'Barber Shop', 1, 104, N'We specialize in women, children and mens haircuts. Hair design, hair coloring, eyebrow arching, facials, hair braiding, Loc''s maintenance an razor shave.', N'(410) 837-7776', N'Baltimore, MD', NULL, N'', NULL, N'women, children and mens haircuts.Hair design, hair coloring, eyebrow arching, facials, hair braiding, Loc''s razor shave in 21201', N'f93b5371-da6e-4af9-9033-44083e5758c4', 3, 1, 1, CAST(N'2021-09-01T06:41:00.280' AS DateTime), N'60174670-1428-4e32-ad26-b7cef2e6fb72', NULL, 0, NULL, NULL)
INSERT [dbo].[Business] ([BusinessID], [BusinessName], [BusinessAddressStreet], [BusinessAddressSuite], [BusinessAddressCity], [BusinessAddressState], [BusinessAddressZipcode], [BusinessAddressCountry], [SortIndex], [BusinessNumber], [Type], [Visible], [NumberOfFans], [Description], [Telephone], [Address], [Email], [Website], [Offers], [SearchTerms], [UserID], [SiteID], [LocallyOwned], [Published], [PublishDate], [PublishedByUserID], [DeactivationDate], [Inactive], [DateAdded], [AddedByUserID]) VALUES (1077, N'Ink Deals', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, N'Tattoo Parlor', 1, 112, N'Baltimore''s first Black owned Upscale tattoo parlor. Free Ink LLC was created to meet the needs of it''s clients that appreciates the finer things in life. Greeted with alkaline water, and calming scents. Free Ink LLC engages all of your senses.To get a better understanding you would have to stop by.', NULL, N'Baltimore, MD', NULL, NULL, NULL, N'tattoo, tats, ink in 21201', N'f93b5371-da6e-4af9-9033-44083e5758c4', 3, 1, 1, CAST(N'2021-09-01T06:41:01.827' AS DateTime), N'60174670-1428-4e32-ad26-b7cef2e6fb72', NULL, 0, NULL, NULL)
INSERT [dbo].[Business] ([BusinessID], [BusinessName], [BusinessAddressStreet], [BusinessAddressSuite], [BusinessAddressCity], [BusinessAddressState], [BusinessAddressZipcode], [BusinessAddressCountry], [SortIndex], [BusinessNumber], [Type], [Visible], [NumberOfFans], [Description], [Telephone], [Address], [Email], [Website], [Offers], [SearchTerms], [UserID], [SiteID], [LocallyOwned], [Published], [PublishDate], [PublishedByUserID], [DeactivationDate], [Inactive], [DateAdded], [AddedByUserID]) VALUES (1078, N'Learn Laugh N Grow', NULL, NULL, NULL, NULL, NULL, NULL, 46, 32, N'Daycare', 1, 189, N'Learn Laugh N Grow is a warm and friendly learning environment with a curriculum geared toward the growth of the whole child. Movement, literacy, music and visual arts are a part of every child''s day. "Growing as they Learn, Smiling when you Return"', NULL, N'Baltimore, MD', NULL, N'llgchildcare.com', NULL, N'child care, childcare, daycare, day care in 21201', N'f93b5371-da6e-4af9-9033-44083e5758c4', 3, 1, 1, CAST(N'2021-09-01T06:41:03.293' AS DateTime), N'60174670-1428-4e32-ad26-b7cef2e6fb72', NULL, 0, NULL, NULL)
INSERT [dbo].[Business] ([BusinessID], [BusinessName], [BusinessAddressStreet], [BusinessAddressSuite], [BusinessAddressCity], [BusinessAddressState], [BusinessAddressZipcode], [BusinessAddressCountry], [SortIndex], [BusinessNumber], [Type], [Visible], [NumberOfFans], [Description], [Telephone], [Address], [Email], [Website], [Offers], [SearchTerms], [UserID], [SiteID], [LocallyOwned], [Published], [PublishDate], [PublishedByUserID], [DeactivationDate], [Inactive], [DateAdded], [AddedByUserID]) VALUES (1079, N'Dave Green''s Poultry', NULL, NULL, NULL, NULL, NULL, NULL, 47, 33, N'Poultry Market', 1, 101, N'Dave Green’s Poultry has been in constant operation for many years. Serving up fresh portions of chicken and turkey is this vendor’s M.O. But don’t be surprised if you find a seasonal surprise or two on the menu. Call ahead for special and large orders.', N'410-539-6110', N'Baltimore, MD', NULL, N'https://lexingtonmarket.com/vendor/dave-greens-poultry/', NULL, N'food, Poultry  in 21201', N'f93b5371-da6e-4af9-9033-44083e5758c4', 3, 1, 1, CAST(N'2021-09-01T06:41:04.670' AS DateTime), N'60174670-1428-4e32-ad26-b7cef2e6fb72', NULL, 0, NULL, NULL)
INSERT [dbo].[Business] ([BusinessID], [BusinessName], [BusinessAddressStreet], [BusinessAddressSuite], [BusinessAddressCity], [BusinessAddressState], [BusinessAddressZipcode], [BusinessAddressCountry], [SortIndex], [BusinessNumber], [Type], [Visible], [NumberOfFans], [Description], [Telephone], [Address], [Email], [Website], [Offers], [SearchTerms], [UserID], [SiteID], [LocallyOwned], [Published], [PublishDate], [PublishedByUserID], [DeactivationDate], [Inactive], [DateAdded], [AddedByUserID]) VALUES (1080, N'Garden Produce', NULL, NULL, NULL, NULL, NULL, NULL, 48, 34, N'Produce Market', 1, 98, N'Everything is neat, orderly, and colorful at this immaculate fruit stand. Enjoy fresh fruit and produce of all kinds, or have some made into a smoothie or salad for a quick, healthy energy boost for your shopping expedition.', N'410-223-2833', N'Baltimore, MD', NULL, N'https://lexingtonmarket.com/vendor/garden-produce/', NULL, N'food, Garden Produce in 21201', N'f93b5371-da6e-4af9-9033-44083e5758c4', 3, 1, 1, CAST(N'2021-09-01T06:41:06.077' AS DateTime), N'60174670-1428-4e32-ad26-b7cef2e6fb72', NULL, 0, NULL, NULL)
INSERT [dbo].[Business] ([BusinessID], [BusinessName], [BusinessAddressStreet], [BusinessAddressSuite], [BusinessAddressCity], [BusinessAddressState], [BusinessAddressZipcode], [BusinessAddressCountry], [SortIndex], [BusinessNumber], [Type], [Visible], [NumberOfFans], [Description], [Telephone], [Address], [Email], [Website], [Offers], [SearchTerms], [UserID], [SiteID], [LocallyOwned], [Published], [PublishDate], [PublishedByUserID], [DeactivationDate], [Inactive], [DateAdded], [AddedByUserID]) VALUES (1081, N'Harbor Fish', NULL, NULL, NULL, NULL, NULL, NULL, 49, 35, N'Fish Market', 1, 456, N'Josh from Harbor Fish is one of Lexington Market’s most respected and recognizable vendors. He’s been arriving before the sun comes up every day for years, providing to widest selection of fresh fish you’ll find just about anywhere. Always fresh and brightly lit, you’ll find value and quality at Harbor Fish. Looking for something special? Call ahead; Josh has a reputation for holding choice cuts for interested customers. He also cleans and portions fish, and provides suggestions about recipes and cooking techniques. Harbor Fish has literally hundreds of regular customers. Maybe you’ll become a regular as well.', N'410-539-7360', N'Baltimore, MD', NULL, N'https://lexingtonmarket.com/vendor/harbor-fish/', NULL, N'food, seafood, fish in 21201', N'f93b5371-da6e-4af9-9033-44083e5758c4', 3, 1, 1, CAST(N'2021-09-01T06:41:07.623' AS DateTime), N'60174670-1428-4e32-ad26-b7cef2e6fb72', NULL, 0, NULL, NULL)
INSERT [dbo].[Business] ([BusinessID], [BusinessName], [BusinessAddressStreet], [BusinessAddressSuite], [BusinessAddressCity], [BusinessAddressState], [BusinessAddressZipcode], [BusinessAddressCountry], [SortIndex], [BusinessNumber], [Type], [Visible], [NumberOfFans], [Description], [Telephone], [Address], [Email], [Website], [Offers], [SearchTerms], [UserID], [SiteID], [LocallyOwned], [Published], [PublishDate], [PublishedByUserID], [DeactivationDate], [Inactive], [DateAdded], [AddedByUserID]) VALUES (1082, N'J.A. REGAN’S', NULL, NULL, NULL, NULL, NULL, NULL, 50, 36, N'Butcher', 1, 83, N'A proud Baltimore butchery, J. A. Regan’s provides fresh quality meats in a way not typically seen in our world of grocery stores and freezer aisles.  Ribs, tenderloins, veal, lamb, hog maws, thick sliced bacon, sausages, the selection is nearly endless. If you like to know where your meat comes from, let the friendly faces at J. A. Regan’s show you what quality and variety look like. There’s not much here for the vegetarian, but everyone else should be pretty thrilled.', N'410-685-4563', N'Baltimore, MD', NULL, N'https://lexingtonmarket.com/vendor/j-a-regans/', NULL, N'food, meat, butcher  in 21201', N'f93b5371-da6e-4af9-9033-44083e5758c4', 3, 1, 1, CAST(N'2021-09-01T06:41:16.437' AS DateTime), N'60174670-1428-4e32-ad26-b7cef2e6fb72', NULL, 0, NULL, NULL)
INSERT [dbo].[Business] ([BusinessID], [BusinessName], [BusinessAddressStreet], [BusinessAddressSuite], [BusinessAddressCity], [BusinessAddressState], [BusinessAddressZipcode], [BusinessAddressCountry], [SortIndex], [BusinessNumber], [Type], [Visible], [NumberOfFans], [Description], [Telephone], [Address], [Email], [Website], [Offers], [SearchTerms], [UserID], [SiteID], [LocallyOwned], [Published], [PublishDate], [PublishedByUserID], [DeactivationDate], [Inactive], [DateAdded], [AddedByUserID]) VALUES (1083, N'Tigerlillyshop Jewelry', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, N'Jewelry', 1, 56, N'Located in her Baltimore City studio, Allison Fomich creates unique mixed metal jewelry from nature specimens collected from her surrounding environment. Using traditional metalsmithing techniques she imprints botanical specimens into copper, brass, and sterling silver creating fossil-like impressions. Her cast nature jewelry line consists of small organic objects which include special tiny acorns, twigs, shark teeth and tiny shells in both bronze and sterling silver.', N'', N'Baltimore, MD', NULL, N'https://www.tigerlillyshop.com/', NULL, N'jewelry in 21201', N'f93b5371-da6e-4af9-9033-44083e5758c4', 3, 1, 1, CAST(N'2021-09-01T06:41:17.997' AS DateTime), N'60174670-1428-4e32-ad26-b7cef2e6fb72', NULL, 0, NULL, NULL)
INSERT [dbo].[Business] ([BusinessID], [BusinessName], [BusinessAddressStreet], [BusinessAddressSuite], [BusinessAddressCity], [BusinessAddressState], [BusinessAddressZipcode], [BusinessAddressCountry], [SortIndex], [BusinessNumber], [Type], [Visible], [NumberOfFans], [Description], [Telephone], [Address], [Email], [Website], [Offers], [SearchTerms], [UserID], [SiteID], [LocallyOwned], [Published], [PublishDate], [PublishedByUserID], [DeactivationDate], [Inactive], [DateAdded], [AddedByUserID]) VALUES (1084, N'Tabor Ethiopian Restaurant', NULL, NULL, NULL, NULL, NULL, NULL, 51, 37, N'Restaurant', 1, 73, N'If you are looking for authentic Ethiopian food, you are at the right place. Situated in the heart of Mt. Vernon, Tabor is a household name in the area for its vegetarian dishes and delicious food. We not only offer you healthy and delicious food, and unmatched service, but a complete experience because we strongly believe in the philosophy that people go out not only to eat food, but also to have a delightful experience. This is the reason that we have crafted each and every facet of our restaurant with greater care, so it translates into value for our customers.', N'', N'Baltimore, MD', NULL, N'http://taborbaltimore.com/', NULL, N'restaurant, food in 21201', N'f93b5371-da6e-4af9-9033-44083e5758c4', 3, 1, 1, CAST(N'2021-09-01T06:41:19.437' AS DateTime), N'60174670-1428-4e32-ad26-b7cef2e6fb72', NULL, 0, NULL, NULL)
INSERT [dbo].[Business] ([BusinessID], [BusinessName], [BusinessAddressStreet], [BusinessAddressSuite], [BusinessAddressCity], [BusinessAddressState], [BusinessAddressZipcode], [BusinessAddressCountry], [SortIndex], [BusinessNumber], [Type], [Visible], [NumberOfFans], [Description], [Telephone], [Address], [Email], [Website], [Offers], [SearchTerms], [UserID], [SiteID], [LocallyOwned], [Published], [PublishDate], [PublishedByUserID], [DeactivationDate], [Inactive], [DateAdded], [AddedByUserID]) VALUES (1085, N'G. Krug & Son Ironworks & Museum', NULL, NULL, NULL, NULL, NULL, NULL, 52, 38, N'Blacksmith', 1, 89, N'Recognized as the oldest continually operating blacksmith''s shop in the United States, G. Krug & Son is uniquely qualified to provide you with a wide range of custom metalwork and restoration work. Recognized as the oldest continually operating blacksmith''s shop in the United States, G. Krug & Son is uniquely qualified to provide you with a wide range of custom metalwork and restoration work.', N'410-752-3166', N'Baltimore, MD', NULL, N'https://gkrugandson.com/', NULL, N'ironworks, museum  21201', N'f93b5371-da6e-4af9-9033-44083e5758c4', 3, 1, 1, CAST(N'2021-09-01T06:41:23.420' AS DateTime), N'60174670-1428-4e32-ad26-b7cef2e6fb72', NULL, 0, NULL, NULL)
INSERT [dbo].[Business] ([BusinessID], [BusinessName], [BusinessAddressStreet], [BusinessAddressSuite], [BusinessAddressCity], [BusinessAddressState], [BusinessAddressZipcode], [BusinessAddressCountry], [SortIndex], [BusinessNumber], [Type], [Visible], [NumberOfFans], [Description], [Telephone], [Address], [Email], [Website], [Offers], [SearchTerms], [UserID], [SiteID], [LocallyOwned], [Published], [PublishDate], [PublishedByUserID], [DeactivationDate], [Inactive], [DateAdded], [AddedByUserID]) VALUES (1086, N'Between 2 Buns', NULL, NULL, NULL, NULL, NULL, NULL, 53, 39, N'Restaurant', 1, 35, N'BETWEEN 2 BUNS  offers  a variety of delicious burgers made with locally sourced, grass fed beef from Seven Hills Farm. Don''t eat beef? We also offer local turkey burgers and chicken burgers. We source our cheddar cheeses from Hawks Hill Creamery.  All  veggie burgers are made in house and change weekly. Hungry for something else new and tasty? Try one of our wordly poutines made  with hand cut fries and layered with loads of flavor and texture.  What goes better with a burger and fries? A milkshake of course! Even better, a boozey shake!! Our shakes are made using Taharka Bros. ice cream and milk from South Mountain Creamery.', N'667.303.3273', N'Baltimore, MD', NULL, N'http://www.baltimorebuns.com/', NULL, N'BURGERS, SANDWICHES restaurant, food in 21201', N'f93b5371-da6e-4af9-9033-44083e5758c4', 3, -1, 1, CAST(N'2021-09-01T06:41:25.030' AS DateTime), N'60174670-1428-4e32-ad26-b7cef2e6fb72', NULL, 0, NULL, NULL)
INSERT [dbo].[Business] ([BusinessID], [BusinessName], [BusinessAddressStreet], [BusinessAddressSuite], [BusinessAddressCity], [BusinessAddressState], [BusinessAddressZipcode], [BusinessAddressCountry], [SortIndex], [BusinessNumber], [Type], [Visible], [NumberOfFans], [Description], [Telephone], [Address], [Email], [Website], [Offers], [SearchTerms], [UserID], [SiteID], [LocallyOwned], [Published], [PublishDate], [PublishedByUserID], [DeactivationDate], [Inactive], [DateAdded], [AddedByUserID]) VALUES (1087, N'Loyal Oyster', NULL, NULL, NULL, NULL, NULL, NULL, 54, 40, N'Raw Bar', 1, 987, N'We serve the freshest Maryland seafood and local beers on tap, signature cocktails and plenty of oysters for everyone! Come on by and check out our weekly specials and World Famous “Be Happy Hour” as our friendly crew shucks and serves you right off the ice.  Grab a seat and relax cause there’s always fun to be had at The Local Oyster!', N'(844) SHUCKER', N'Baltimore, MD', NULL, N'https://www.thelocaloyster.com/', NULL, N'oysters, restaurant, food in 21201', N'f93b5371-da6e-4af9-9033-44083e5758c4', 3, 1, 1, CAST(N'2021-09-01T06:41:26.607' AS DateTime), N'60174670-1428-4e32-ad26-b7cef2e6fb72', NULL, 0, NULL, NULL)
INSERT [dbo].[Business] ([BusinessID], [BusinessName], [BusinessAddressStreet], [BusinessAddressSuite], [BusinessAddressCity], [BusinessAddressState], [BusinessAddressZipcode], [BusinessAddressCountry], [SortIndex], [BusinessNumber], [Type], [Visible], [NumberOfFans], [Description], [Telephone], [Address], [Email], [Website], [Offers], [SearchTerms], [UserID], [SiteID], [LocallyOwned], [Published], [PublishDate], [PublishedByUserID], [DeactivationDate], [Inactive], [DateAdded], [AddedByUserID]) VALUES (1088, N'Super Fried Chicken', NULL, NULL, NULL, NULL, NULL, NULL, 55, 41, N'Restaurant', 1, 203, N'Everything you need to know is in the name. Super Fried Chicken turns over hundreds of pounds of golden brown goodness every day. But they don’t limit their crispy creations to legs, thighs, and breasts. Grab a tray of necks, backs, or livers for a cheap, satisfying snack. Don’t forget the hot sauce!', N'410-539-4924', N'Baltimore, MD', NULL, N'https://lexingtonmarket.com/vendor/super-fried-chicken/', NULL, N'restaurant, food in 21201, mear', N'f93b5371-da6e-4af9-9033-44083e5758c4', 3, 1, 1, CAST(N'2021-09-01T06:41:28.140' AS DateTime), N'60174670-1428-4e32-ad26-b7cef2e6fb72', NULL, 0, NULL, NULL)
INSERT [dbo].[Business] ([BusinessID], [BusinessName], [BusinessAddressStreet], [BusinessAddressSuite], [BusinessAddressCity], [BusinessAddressState], [BusinessAddressZipcode], [BusinessAddressCountry], [SortIndex], [BusinessNumber], [Type], [Visible], [NumberOfFans], [Description], [Telephone], [Address], [Email], [Website], [Offers], [SearchTerms], [UserID], [SiteID], [LocallyOwned], [Published], [PublishDate], [PublishedByUserID], [DeactivationDate], [Inactive], [DateAdded], [AddedByUserID]) VALUES (1089, N'Omlet Side SHow', NULL, NULL, NULL, NULL, NULL, NULL, 56, 42, N'Restaurant', 1, 45, N'Tucked away at the very edge of the Eastern Market, Omlet Sideshow is a value not to be missed. With some of the best prices you’ll find anywhere, you can grab a big satisfying breakfast or lunch, depending on when you’re standing in line. Regulars love the Side Show’s delicious take on homefries. Classic breakfast flavors like sausage, eggs, and bacon make up most of these yummy platters.', N'410-385-2410', N'Baltimore, MD', NULL, N'https://lexingtonmarket.com/vendor/omlet-side-show/', NULL, N'restaurant, egg, food in 21201', N'f93b5371-da6e-4af9-9033-44083e5758c4', 3, 1, 1, CAST(N'2021-09-01T06:41:29.640' AS DateTime), N'60174670-1428-4e32-ad26-b7cef2e6fb72', NULL, 0, NULL, NULL)
INSERT [dbo].[Business] ([BusinessID], [BusinessName], [BusinessAddressStreet], [BusinessAddressSuite], [BusinessAddressCity], [BusinessAddressState], [BusinessAddressZipcode], [BusinessAddressCountry], [SortIndex], [BusinessNumber], [Type], [Visible], [NumberOfFans], [Description], [Telephone], [Address], [Email], [Website], [Offers], [SearchTerms], [UserID], [SiteID], [LocallyOwned], [Published], [PublishDate], [PublishedByUserID], [DeactivationDate], [Inactive], [DateAdded], [AddedByUserID]) VALUES (1090, N'Market Bakery', NULL, NULL, NULL, NULL, NULL, NULL, 57, 43, N'Bakery', 1, 65, N'There’s nothing that isn’t tasty at Market Bakery, but it’s the Berger’s Cookie by which this place earned its “world famous” moniker. The Berger Cookie is a Baltimore legend: a simple combination of shortbread and just-so chocolate fudge. They’re shipped and savored all around the world, but Market Bakery is the only place you can buy them just after baking, from the very people who baked them. Longtime owners Fannie and Minus are passionate about their work and Lexington Market in general. Their confections are made with love, and you’ll be able to taste it.', N'410-727-3685', N'Baltimore, MD', NULL, N'https://lexingtonmarket.com/vendor/bergers-bakery/', NULL, N'restaurant, food in 21201', N'f93b5371-da6e-4af9-9033-44083e5758c4', 3, 1, 1, CAST(N'2021-09-01T06:41:31.170' AS DateTime), N'60174670-1428-4e32-ad26-b7cef2e6fb72', NULL, 0, NULL, NULL)
INSERT [dbo].[Business] ([BusinessID], [BusinessName], [BusinessAddressStreet], [BusinessAddressSuite], [BusinessAddressCity], [BusinessAddressState], [BusinessAddressZipcode], [BusinessAddressCountry], [SortIndex], [BusinessNumber], [Type], [Visible], [NumberOfFans], [Description], [Telephone], [Address], [Email], [Website], [Offers], [SearchTerms], [UserID], [SiteID], [LocallyOwned], [Published], [PublishDate], [PublishedByUserID], [DeactivationDate], [Inactive], [DateAdded], [AddedByUserID]) VALUES (1091, N'Maryland Art Place', NULL, NULL, NULL, NULL, NULL, NULL, 58, 44, N'Art', 1, 1201, N'Maryland Art Place''s primary focus is supporting artists from the State of Maryland. We believe Black Lives Matter and we recognize that there is much more to be done in supporting and elevating the voices of Black artists across the state and we are committed to doing this work. Despite - or perhaps because of - the current climate, we continue to believe that the arts are essential to our health and well-being, and are dedicated to finding new ways to bring our services to the public that are representative to the artistic community as a whole.', N'410.962.8565', N'Baltimore, MD', NULL, N'http://www.mdartplace.org/about/mission', NULL, N'21201 entertainment', N'f93b5371-da6e-4af9-9033-44083e5758c4', 3, -1, 1, CAST(N'2021-09-01T06:41:32.623' AS DateTime), N'60174670-1428-4e32-ad26-b7cef2e6fb72', NULL, 0, NULL, NULL)
INSERT [dbo].[Business] ([BusinessID], [BusinessName], [BusinessAddressStreet], [BusinessAddressSuite], [BusinessAddressCity], [BusinessAddressState], [BusinessAddressZipcode], [BusinessAddressCountry], [SortIndex], [BusinessNumber], [Type], [Visible], [NumberOfFans], [Description], [Telephone], [Address], [Email], [Website], [Offers], [SearchTerms], [UserID], [SiteID], [LocallyOwned], [Published], [PublishDate], [PublishedByUserID], [DeactivationDate], [Inactive], [DateAdded], [AddedByUserID]) VALUES (1092, N'Everyman Theater', NULL, NULL, NULL, NULL, NULL, NULL, 59, 45, N'Theater', 1, 2332, N'Everyman Theatre provides transformative experiences through professional theatre that are welcoming, relevant, and affordable to everyone, featuring a Resident Company of Artists', N'410-752-2208', N'Baltimore, MD', NULL, N'https://everymantheatre.org/', NULL, N'21201 entertainment', N'f93b5371-da6e-4af9-9033-44083e5758c4', 3, -1, 1, CAST(N'2021-09-01T06:41:34.110' AS DateTime), N'60174670-1428-4e32-ad26-b7cef2e6fb72', NULL, 0, NULL, NULL)
INSERT [dbo].[Business] ([BusinessID], [BusinessName], [BusinessAddressStreet], [BusinessAddressSuite], [BusinessAddressCity], [BusinessAddressState], [BusinessAddressZipcode], [BusinessAddressCountry], [SortIndex], [BusinessNumber], [Type], [Visible], [NumberOfFans], [Description], [Telephone], [Address], [Email], [Website], [Offers], [SearchTerms], [UserID], [SiteID], [LocallyOwned], [Published], [PublishDate], [PublishedByUserID], [DeactivationDate], [Inactive], [DateAdded], [AddedByUserID]) VALUES (1093, N'Burrito''s Victoria', NULL, NULL, NULL, NULL, NULL, NULL, 60, 46, N'Mexican Restaurant', 1, 2505, N'Mexican Restaurant', N'(575) 541-5534
', N'Las Cruces, NM', NULL, N'http://www.burritosvictoria.com
', NULL, N'Mexican Restaurants, Latin American Restaurants, food, Restaurants, Take Out Restaurants
 88001', N'4d0ca1c2-be62-482c-8e4a-0fb499465cc5', 5, 1, 1, CAST(N'2021-07-31T19:35:28.797' AS DateTime), N'60174670-1428-4e32-ad26-b7cef2e6fb72', NULL, 0, NULL, NULL)
INSERT [dbo].[Business] ([BusinessID], [BusinessName], [BusinessAddressStreet], [BusinessAddressSuite], [BusinessAddressCity], [BusinessAddressState], [BusinessAddressZipcode], [BusinessAddressCountry], [SortIndex], [BusinessNumber], [Type], [Visible], [NumberOfFans], [Description], [Telephone], [Address], [Email], [Website], [Offers], [SearchTerms], [UserID], [SiteID], [LocallyOwned], [Published], [PublishDate], [PublishedByUserID], [DeactivationDate], [Inactive], [DateAdded], [AddedByUserID]) VALUES (1094, N'Las Cruces Game Knights
', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, N'Games', 1, 2443, N'We have moved to a new location. The Lion''s Club of Las Cruces have been amazingly kind to let us call the community center our home. We still do ask for $2 donation per person to help us keep the place alive. This is our 10th year as an organization. We are a certified non-profit club determined to have a safe haven for gamers for the entire region not just Las Cruces. We host tournaments and get together every other Friday from 6pm to midnight. contact Mario at 575-621-3858 for more info.', N'(575) 621-3858', N'Las Cruces, NM', NULL, N'https://lcgameknights.webs.com/', NULL, N'Video Games, Charities, Club Room Equipment 88001
 entertainment', N'f92d9dc5-c258-45a4-9e16-f54580cdffe6', 5, 1, 1, CAST(N'2021-07-31T16:58:23.417' AS DateTime), N'60174670-1428-4e32-ad26-b7cef2e6fb72', NULL, 0, NULL, NULL)
INSERT [dbo].[Business] ([BusinessID], [BusinessName], [BusinessAddressStreet], [BusinessAddressSuite], [BusinessAddressCity], [BusinessAddressState], [BusinessAddressZipcode], [BusinessAddressCountry], [SortIndex], [BusinessNumber], [Type], [Visible], [NumberOfFans], [Description], [Telephone], [Address], [Email], [Website], [Offers], [SearchTerms], [UserID], [SiteID], [LocallyOwned], [Published], [PublishDate], [PublishedByUserID], [DeactivationDate], [Inactive], [DateAdded], [AddedByUserID]) VALUES (1095, N'Licensed Massage Therapy﻿', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, N'Massage', 1, 2598, N'Providing therapeutic massage for healing and rehabilitation to people in the Las Cruces area, I take a healer''s perspective, observing the total person, and not simply the muscles.Helping you to heal by toning the muscles through Swedish Massage and other modalities, balancing metabolism through abdominal massage of internal organs, and straightening the spine through spinal twists and stretches.Call now to start your healing process. I have a flexible schedule by appointment : weekends, mornings,afternoons, and evenings.Ask for current discounts.', N'(575) 571-1434', N'Las Cruces, NM', NULL, N'http://licensedmassagetherapy.yolasite.com/', NULL, N'Licensed Massage Therapy 88001 doctor medical', N'd7320c28-78d5-4f27-95b1-b29c411fe9a0', 5, 1, 1, CAST(N'2021-07-31T17:12:36.297' AS DateTime), N'60174670-1428-4e32-ad26-b7cef2e6fb72', NULL, 0, NULL, NULL)
INSERT [dbo].[Business] ([BusinessID], [BusinessName], [BusinessAddressStreet], [BusinessAddressSuite], [BusinessAddressCity], [BusinessAddressState], [BusinessAddressZipcode], [BusinessAddressCountry], [SortIndex], [BusinessNumber], [Type], [Visible], [NumberOfFans], [Description], [Telephone], [Address], [Email], [Website], [Offers], [SearchTerms], [UserID], [SiteID], [LocallyOwned], [Published], [PublishDate], [PublishedByUserID], [DeactivationDate], [Inactive], [DateAdded], [AddedByUserID]) VALUES (1096, N'Mountain View Market Co-op', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, N'Groceries & More', 1, 2609, N'March 24, 2020 - In response to the COVID -19 pandemic, the Mountain View Market Co+op is closing the kitchen until further notice while we focus our attention on the grocery side of our operation. While our kitchen is closed, why not visit another locally-owned restaurant? :) Thanks for shopping local. - - - Mountain View Market Co+op is Las Cruces’ only community cooperative and also the biggest natural foods co-op in southern New Mexico. Open every day, our kitchen serves up a fresh and delicious hot bar and salad bar, with brunch on the weekends. Our Grab-N-Go deli case has tasty sandwiches, sides, and desserts ready for a quick meal-on-the-go and you''ll always find vegan and gluten-free options available! Try a freshly prepared juice or smoothie to jumpstart your day or keep you going. Join us every Thursday evening from 5 to 8 pm for our Three Dollar Dinner with members of your community. Open to everyone, join the community at Mountain View Market Co+op!', N'(575) 523-0436', N'Las Cruces, NM', NULL, NULL, NULL, N'Vitamins & Food Supplements, Caterers, Grocery Stores, Health & Diet Food Products, Health Food Restaurants, Internet Cafes, Vegetarian Restaurants
 88001', N'9dcadbad-5f6a-4620-9cbe-40db670a0862', 5, 1, 1, CAST(N'2021-07-31T17:19:19.047' AS DateTime), N'60174670-1428-4e32-ad26-b7cef2e6fb72', NULL, 0, NULL, NULL)
INSERT [dbo].[Business] ([BusinessID], [BusinessName], [BusinessAddressStreet], [BusinessAddressSuite], [BusinessAddressCity], [BusinessAddressState], [BusinessAddressZipcode], [BusinessAddressCountry], [SortIndex], [BusinessNumber], [Type], [Visible], [NumberOfFans], [Description], [Telephone], [Address], [Email], [Website], [Offers], [SearchTerms], [UserID], [SiteID], [LocallyOwned], [Published], [PublishDate], [PublishedByUserID], [DeactivationDate], [Inactive], [DateAdded], [AddedByUserID]) VALUES (1099, N'Okazuri Floating Sushi Bar
', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, N'Sushi Restaurant', 1, 2891, N'We have happy hour 5- CLOSE 30% OF ALL APPETIZERS... LIVE MUSIC..MON, WEDNESDAY, THRU, FRI, AND SATURDAY...', N'(575) 521-3333', N'Las Cruces, NM', NULL, N'https://okazuri.com', NULL, N'88001 sushi food restaurant', N'836edf0f-2e58-4767-b6f3-04ce05f22e2f', 5, 1, 1, CAST(N'2021-07-31T17:59:49.197' AS DateTime), N'60174670-1428-4e32-ad26-b7cef2e6fb72', NULL, 0, NULL, NULL)
INSERT [dbo].[Business] ([BusinessID], [BusinessName], [BusinessAddressStreet], [BusinessAddressSuite], [BusinessAddressCity], [BusinessAddressState], [BusinessAddressZipcode], [BusinessAddressCountry], [SortIndex], [BusinessNumber], [Type], [Visible], [NumberOfFans], [Description], [Telephone], [Address], [Email], [Website], [Offers], [SearchTerms], [UserID], [SiteID], [LocallyOwned], [Published], [PublishDate], [PublishedByUserID], [DeactivationDate], [Inactive], [DateAdded], [AddedByUserID]) VALUES (1100, N'Precious Little One''s Childcare LLC
', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, N'Day Care', 1, 2466, N'My facility is a in home center that I started in 2006 after working as a volunteer at my kids school while being station overseas in 2002. When my family and I move here in 2005 I said to myself what better way to meet friends and help those parents that work late or weekends by opening my own childcare center.  I wanted to share my love of children with those in my care.  I wanted to provide a enviroment that is safe and nutritional where children feel at home.  It''s been a very exciting and rewarding experience!', N'(575) 571-5374', N'Las Cruces, NM', NULL, N'www.facebook.com/preciouslittleoneschildcare', NULL, N'Day Care Centers & Nurseries, Baby Sitters, Child Care, Home Centers, Preschools & Kindergarten, Schools 88001', N'07d82bbb-1537-4ee5-8385-b817c1e96622', 5, 1, 1, CAST(N'2021-07-31T18:14:43.180' AS DateTime), N'60174670-1428-4e32-ad26-b7cef2e6fb72', NULL, 0, NULL, NULL)
INSERT [dbo].[Business] ([BusinessID], [BusinessName], [BusinessAddressStreet], [BusinessAddressSuite], [BusinessAddressCity], [BusinessAddressState], [BusinessAddressZipcode], [BusinessAddressCountry], [SortIndex], [BusinessNumber], [Type], [Visible], [NumberOfFans], [Description], [Telephone], [Address], [Email], [Website], [Offers], [SearchTerms], [UserID], [SiteID], [LocallyOwned], [Published], [PublishDate], [PublishedByUserID], [DeactivationDate], [Inactive], [DateAdded], [AddedByUserID]) VALUES (1101, N'Ragged Apparel', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, N'Custom Printed Apparel', 1, 2487, N'Ragged Apparel is locally owned and operated by husband and wife Charles and Christine.  Together we love the the graphic arts, and the art of screen printing.  At Ragged Apparel, we believe screen printing is more than spreading ink on top of a garment.  We pride ourselves as being artists of graphic arts, using apparel and other substrates as our canvas.  From the custom drawn images to the fabric properties of the apparel, the types of ink used and specific screen printing techniques, we take everything into consideration and every order is customized, allowing us to produce a top quality product our customers love. 

We are professionally trained and accredited.  We make it a point to attend multiple continuing education classes throughout the United States every year.  We strive to be the best in this business, and we have the credentials to back it up. 

We are home town shop and take pride in our community.  We love what we do and because we love what we do, the end result is high quality and trendy products you will appreciate. 

We pride ourselves on our customer service and satisfaction, as well as providing quality products.  We can provide you with the experience, innovative processes and artful imaginations to meet any printing needs that you may have for your business, team, organization, or personalized gift. 

We are located in Las Cruces, New Mexico, and serve the entire United States with exceptional screen printing, embroidery, and promotional products.

Contact us today and experience first hand the Ragged Apparel difference.', N'(575) 323-1820', N'Las Cruces, NM', NULL, N'https://www.nmshirts.com/', NULL, N'Ragged Apparel Screen Printing and Graphic Media
 88001 Screen Printing, Advertising-Promotional Products, Banners, Flags & Pennants, Sportswear, T-Shirts, Uniforms', N'0b365bc6-2d06-4015-8cb8-57ab60f28921', 5, -1, 1, CAST(N'2021-07-31T18:40:24.527' AS DateTime), N'60174670-1428-4e32-ad26-b7cef2e6fb72', NULL, 0, NULL, NULL)
INSERT [dbo].[Business] ([BusinessID], [BusinessName], [BusinessAddressStreet], [BusinessAddressSuite], [BusinessAddressCity], [BusinessAddressState], [BusinessAddressZipcode], [BusinessAddressCountry], [SortIndex], [BusinessNumber], [Type], [Visible], [NumberOfFans], [Description], [Telephone], [Address], [Email], [Website], [Offers], [SearchTerms], [UserID], [SiteID], [LocallyOwned], [Published], [PublishDate], [PublishedByUserID], [DeactivationDate], [Inactive], [DateAdded], [AddedByUserID]) VALUES (1103, N'The Bugyman Exterminators
', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, N'Pest Control', 1, 2611, N'We care about the safety of you and your family, your business and your clients. The Bugyman Exterminators have carefully developed our service programs to meet and exceed your personal needs when investing in something as important as pest control. We know that you want peace of mind when you purchase and invest in something that will provide greater safety while living in your home or running your business, because we are also consumers just like you, and we all expect nothing less than whats expected.', N'(575) 527-4393', N'Las Cruces, NM', NULL, N'https://bugyman.com/', NULL, N'Pest Control Services, Animal Removal Services, Real Estate Inspection Service 88001', N'c891b97b-04b1-4602-8908-cd24d1bcd095', 5, 1, 1, CAST(N'2021-07-31T18:51:47.560' AS DateTime), N'60174670-1428-4e32-ad26-b7cef2e6fb72', NULL, 0, NULL, NULL)
INSERT [dbo].[Business] ([BusinessID], [BusinessName], [BusinessAddressStreet], [BusinessAddressSuite], [BusinessAddressCity], [BusinessAddressState], [BusinessAddressZipcode], [BusinessAddressCountry], [SortIndex], [BusinessNumber], [Type], [Visible], [NumberOfFans], [Description], [Telephone], [Address], [Email], [Website], [Offers], [SearchTerms], [UserID], [SiteID], [LocallyOwned], [Published], [PublishDate], [PublishedByUserID], [DeactivationDate], [Inactive], [DateAdded], [AddedByUserID]) VALUES (1104, N'Farm to Freezer YORK', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, N'Locally Grown meals', 1, 0, N'LET''S BE HONEST.  GROCERY SHOPPING IS TEDIOUS AND EXPENSIVE AND YOU USUALLY END UP WITH ODDS AND ENDS THAT DON''T AMOUNT TO MANY MEALS.  WITH FARM TO FREEZER, YOU TAKE CARE OF YOUR BASICS, WE''LL TAKE CARE OF YOUR MEALS. 

AFFORDABLE.
BUYING ALL THE INGREDIENTS TO MAKE ONE MEAL CAN ADD UP QUICKLY.  WHEN WE POOL OUR RESOURCES AND BUY IN BULK, WE CAN SEE SOME SIGNIFICANT SAVINGS.  IT''S AN AFFORDABLE WAY TO EAT HEALTHY AND YOU CAN FEEL GOOD ABOUT SUPPORTING OUR LOCAL FARMERS AND BUTCHERS.  

DONE.
OUR LIVES ARE BUSY AND FINDING THE TIME TO COOK CAN BE A CHALLENGE.  WITH FARM TO FREEZER, YOUR MOST DIFFICULT DECISION WILL BE WHICH DELICIOUS, HEALTHY MEAL TO TAKE OUT OF YOUR FREEZER.  WE PROVIDE THE PACKAGING AND THE HEATING/COOKING INSTRUCTIONS TOO.
', NULL, N'York, PA', NULL, N'https://farmtofreezeryork.com/', NULL, N'local grocery groceries vegetables butcher meat locally sourced food prepared meals', N'503b6137-8a22-40f5-ad09-7c15e4dd355a', 4, 1, 1, CAST(N'2021-09-02T16:09:39.357' AS DateTime), N'60174670-1428-4e32-ad26-b7cef2e6fb72', NULL, 0, NULL, NULL)
INSERT [dbo].[Business] ([BusinessID], [BusinessName], [BusinessAddressStreet], [BusinessAddressSuite], [BusinessAddressCity], [BusinessAddressState], [BusinessAddressZipcode], [BusinessAddressCountry], [SortIndex], [BusinessNumber], [Type], [Visible], [NumberOfFans], [Description], [Telephone], [Address], [Email], [Website], [Offers], [SearchTerms], [UserID], [SiteID], [LocallyOwned], [Published], [PublishDate], [PublishedByUserID], [DeactivationDate], [Inactive], [DateAdded], [AddedByUserID]) VALUES (1105, N'Duke''s Riverside Bar & Grille', NULL, NULL, NULL, NULL, NULL, NULL, 61, 47, N'Restaurant', 1, 0, N'Dukes is a central Pennsylvania staple and our focus is giving value to our customers in a fun and casual dining atmosphere. Our food is sourced from the highest quality ingredients available. For years we have shopped for our produce from local farmers in Lancaster County and surrounding areas, our seafood is brought in fresh daily, our steaks are cut fresh, never frozen. We bread our fresh chicken tenders to order every time and our peanut butter pie & soups are made daily.

Dukes has been a fixture for casual dining since 1992. Our family run business has been involved in the restaurant and food service industry for over 50 years and our award winning restaurants are some of the most innovative you will find anywhere. For lunch, brunch, dinner, or a catered banquet in our newly remodeled and expanded 2nd floor banquet facility. We strive to provide our customers with a fun atmosphere, in the cleanest facility you will find.

So sit back, relax, and vacation without leaving town. We hope you return often and thank you for your business.', N'(717) 737-1313', N'Wormleysburg, PA ', N'dukesriverside313@gmail.com', N'https://www.dukesbarandgrille.com/', NULL, N'17043 food ', N'd32e7708-3ead-4ab9-8de0-05e965ec940e', 4, 1, 1, CAST(N'2021-09-04T14:05:24.070' AS DateTime), N'60174670-1428-4e32-ad26-b7cef2e6fb72', NULL, 0, NULL, NULL)
INSERT [dbo].[Business] ([BusinessID], [BusinessName], [BusinessAddressStreet], [BusinessAddressSuite], [BusinessAddressCity], [BusinessAddressState], [BusinessAddressZipcode], [BusinessAddressCountry], [SortIndex], [BusinessNumber], [Type], [Visible], [NumberOfFans], [Description], [Telephone], [Address], [Email], [Website], [Offers], [SearchTerms], [UserID], [SiteID], [LocallyOwned], [Published], [PublishDate], [PublishedByUserID], [DeactivationDate], [Inactive], [DateAdded], [AddedByUserID]) VALUES (1106, N'New Holland Coffee Co.', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, N'Restaurant/Coffee', 1, 0, N'At New Holland Coffee Co., our mission is simple: to provide our guests a gathering place to feel welcomed, appreciated, seen, and celebrated! Since our start in 2005, it’s been at the heart of our coffee company to combine a unique atmosphere with unforgettable delicious beverages. Our coffee company, with locations in Lancaster City and New Holland, PA, is dedicated to fostering conversations and connections to make life an enjoyable experience.

When you stop by New Holland Coffee Co., you feel seen from the second you walk in the door – whether it’s your first time or your hundredth! Our baristas and staff are intentional about getting to know our guests and serving them well. Experience the NHCC difference and see what makes us a top Lancaster coffee company today!', N'(717) 459-9127', N'Lancaster, PA', NULL, N'https://www.newhollandcoffee.com/', NULL, N'coffee catering breakfast lunch ', N'cb08efa4-5aea-49a1-a82b-5876a0c6c428', 4, 1, 1, CAST(N'2021-09-06T15:46:43.677' AS DateTime), N'60174670-1428-4e32-ad26-b7cef2e6fb72', NULL, 0, NULL, NULL)
INSERT [dbo].[Business] ([BusinessID], [BusinessName], [BusinessAddressStreet], [BusinessAddressSuite], [BusinessAddressCity], [BusinessAddressState], [BusinessAddressZipcode], [BusinessAddressCountry], [SortIndex], [BusinessNumber], [Type], [Visible], [NumberOfFans], [Description], [Telephone], [Address], [Email], [Website], [Offers], [SearchTerms], [UserID], [SiteID], [LocallyOwned], [Published], [PublishDate], [PublishedByUserID], [DeactivationDate], [Inactive], [DateAdded], [AddedByUserID]) VALUES (1107, N'J & B Bridals & Formals', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, N'Bridals & Tuxedos', 1, 0, N'At J&B Bridals and Tuxedos, we are here to make sure that you walk down the aisle in the wedding gown of your dreams. Our designers and collections of gowns are curated to provide you with many beautiful options to choose from for your big day.

In our shop you will find bridal gowns by Rebecca Ingram, Maggie Sottero, Mori Lee, and many more. We look forward to assisting you in finding the gown of your dreams. We have been helping brides and grooms for over 40 years.', N'800.301.1935', N'Chambersburg, PA', NULL, N'https://www.jbbridals.com/', NULL, N'wedding weddings bride bridals formals suits tuxedo party parties', N'f9c4c9c0-e852-49da-a939-b108472069ac', 4, -1, 1, CAST(N'2021-09-06T16:01:47.880' AS DateTime), N'60174670-1428-4e32-ad26-b7cef2e6fb72', NULL, 0, NULL, NULL)
INSERT [dbo].[Business] ([BusinessID], [BusinessName], [BusinessAddressStreet], [BusinessAddressSuite], [BusinessAddressCity], [BusinessAddressState], [BusinessAddressZipcode], [BusinessAddressCountry], [SortIndex], [BusinessNumber], [Type], [Visible], [NumberOfFans], [Description], [Telephone], [Address], [Email], [Website], [Offers], [SearchTerms], [UserID], [SiteID], [LocallyOwned], [Published], [PublishDate], [PublishedByUserID], [DeactivationDate], [Inactive], [DateAdded], [AddedByUserID]) VALUES (1108, N'Miller Cinemas 6', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, N'Movies', 1, 0, N'Miller Cinemas 6 is located at 46 W Market St in Lewistown, PA - Mifflin County and is a business listed in the categories Movie Theaters and Motion Picture Theaters (Except Drive-Ins). After you do business with Miller Cinemas 6, please leave a review to help other people and improve hubbiz. Also, don''t forget to mention Hubbiz to Miller Cinemas 6.', N'(717) 248-8654', N'Lewistown, PA', NULL, N'millercinemas6.com', NULL, N'cinema movies flicks', N'9221fc3d-de50-42ac-9f22-99f771c9be83', 4, 1, 1, CAST(N'2021-09-06T16:17:17.150' AS DateTime), N'60174670-1428-4e32-ad26-b7cef2e6fb72', NULL, 0, NULL, NULL)
INSERT [dbo].[Business] ([BusinessID], [BusinessName], [BusinessAddressStreet], [BusinessAddressSuite], [BusinessAddressCity], [BusinessAddressState], [BusinessAddressZipcode], [BusinessAddressCountry], [SortIndex], [BusinessNumber], [Type], [Visible], [NumberOfFans], [Description], [Telephone], [Address], [Email], [Website], [Offers], [SearchTerms], [UserID], [SiteID], [LocallyOwned], [Published], [PublishDate], [PublishedByUserID], [DeactivationDate], [Inactive], [DateAdded], [AddedByUserID]) VALUES (1109, N'Gorilla House Gym', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, N'Fitness', 1, 0, N'Gorilla House Gym’s “The House” is a 55,000 square foot facility.  We have 15,000 square feet of general gym floor access with cardio, free-weights and equipment and a class for every fitness enthusiast.  We have 18,000 square feet of three indoor tennis courts.  The House’s mindset is to be stronger, faster and more capable each day.  We offer some of the toughest and most unique workouts in Altoona. 

The first class is always FREE!  WiFi access available. Floor features a gated play section for children, visible to you from the main floor.', N'814-944-9412', N'Altoona, PA', NULL, N'https://gorillahousegym.com/', NULL, N'fitness gym exercise trainer children workout', N'f3626a35-4112-4bc7-925b-d31f196c9dba', 4, 1, 1, CAST(N'2021-09-06T16:34:37.043' AS DateTime), N'60174670-1428-4e32-ad26-b7cef2e6fb72', NULL, 0, NULL, NULL)
INSERT [dbo].[Business] ([BusinessID], [BusinessName], [BusinessAddressStreet], [BusinessAddressSuite], [BusinessAddressCity], [BusinessAddressState], [BusinessAddressZipcode], [BusinessAddressCountry], [SortIndex], [BusinessNumber], [Type], [Visible], [NumberOfFans], [Description], [Telephone], [Address], [Email], [Website], [Offers], [SearchTerms], [UserID], [SiteID], [LocallyOwned], [Published], [PublishDate], [PublishedByUserID], [DeactivationDate], [Inactive], [DateAdded], [AddedByUserID]) VALUES (1110, N'Kennie''s Marketplace', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, N'Marketplace', 1, 0, N'Mission Statement:
“Creating customers who love to shop with us and employees who love to work with us. World Class…period!”

Philosophy:
Providing excellent customer service to every customer every day.

What makes Kennie’s Market different?

The freshest products
Community oriented
Fast, friendly service
Promotionally exciting
A great place to work
At Kennie’s, being your neighborhood grocer is about more than stocking the best products at a fair price; it is a promise to create a better experience in and beyond the store. One of the reasons Kennie’s Market can provide such quality service is that Kennie’s is an employee owned store. It is in the best interest of all employees to provide a pleasant experience for the shoppers and to do their very best job because the employees are truly their own bosses. The employee owned program reward employees for their performance and dedication. If the company does well, the employees do well.', N'717 334 2179', N'Gettysburg, PA', NULL, N'https://www.kenniesmarket.com/', NULL, N'market pharmacy food entertainment', N'e7e38387-1494-4202-89ac-df4e5f557c76', 4, 1, 1, CAST(N'2021-09-06T17:10:29.300' AS DateTime), N'60174670-1428-4e32-ad26-b7cef2e6fb72', NULL, 0, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Business] OFF
GO
SET IDENTITY_INSERT [dbo].[BusinessComment] ON 

INSERT [dbo].[BusinessComment] ([BusinessCommentID], [BusinessID], [Title], [Comment], [UserID], [PublishDate]) VALUES (1083, 1093, N'I propose a trade', N'I would like to give you $300 worth of games for $200 worth of your food.  What do you think?', N'f92d9dc5-c258-45a4-9e16-f54580cdffe6', CAST(N'2021-08-18T13:42:37.187' AS DateTime))
INSERT [dbo].[BusinessComment] ([BusinessCommentID], [BusinessID], [Title], [Comment], [UserID], [PublishDate]) VALUES (1088, 1093, N'Suggestion', N'Hi I really love your food and so does my family.  We think that if you painted your walls a different color, it could make it much nicer.  :-)', N'582cb132-4d53-4df3-a730-124d1a3f34d5', CAST(N'2021-08-19T20:58:04.977' AS DateTime))
INSERT [dbo].[BusinessComment] ([BusinessCommentID], [BusinessID], [Title], [Comment], [UserID], [PublishDate]) VALUES (1089, 1094, N'Posting a comment', N'to myself', N'f92d9dc5-c258-45a4-9e16-f54580cdffe6', CAST(N'2021-08-19T21:47:18.217' AS DateTime))
INSERT [dbo].[BusinessComment] ([BusinessCommentID], [BusinessID], [Title], [Comment], [UserID], [PublishDate]) VALUES (1090, 1110, N'Want to trade?', N'Hi we were wondering if we gave your staff gym memberships, could we get our protein powders at a discount?', N'f3626a35-4112-4bc7-925b-d31f196c9dba', CAST(N'2021-09-07T05:41:25.367' AS DateTime))
INSERT [dbo].[BusinessComment] ([BusinessCommentID], [BusinessID], [Title], [Comment], [UserID], [PublishDate]) VALUES (1091, 1110, N'Wheat Grass', N'Hi I love your place!  Would it be possible to have an easy way to know when the fresh wheat grass arrives?', N'd73f5285-b58d-4056-a1f7-97de0c36f16e', CAST(N'2021-09-07T05:47:47.630' AS DateTime))
SET IDENTITY_INSERT [dbo].[BusinessComment] OFF
GO
INSERT [dbo].[BusinessEvents] ([BusinessID], [EventID]) VALUES (1093, 4)
INSERT [dbo].[BusinessEvents] ([BusinessID], [EventID]) VALUES (1096, 2)
GO
SET IDENTITY_INSERT [dbo].[BusinessFile] ON 

INSERT [dbo].[BusinessFile] ([FileID], [BusinessID], [FileURL], [IconURL], [SortIndex], [Title], [Category], [Stamp]) VALUES (2305, 1093, N'~/images/Designs/29a9b567-5b2b-49ba-b71c-56b4463940c3.jpg', N'~/images/Designs/Icons/29a9b567-5b2b-49ba-b71c-56b4463940c3.jpg', 1, N'', N'Image', NULL)
INSERT [dbo].[BusinessFile] ([FileID], [BusinessID], [FileURL], [IconURL], [SortIndex], [Title], [Category], [Stamp]) VALUES (2306, 1093, N'~/images/Designs/d689ab2f-1188-4806-b0c9-80cad6cd0eb7.jpg', N'~/images/Designs/Icons/d689ab2f-1188-4806-b0c9-80cad6cd0eb7.jpg', 3, N'', N'Image', NULL)
INSERT [dbo].[BusinessFile] ([FileID], [BusinessID], [FileURL], [IconURL], [SortIndex], [Title], [Category], [Stamp]) VALUES (2307, 1093, N'~/images/Designs/b02dd647-9231-419d-b3db-4a6ae62accbd.jpg', N'~/images/Designs/Icons/b02dd647-9231-419d-b3db-4a6ae62accbd.jpg', 2, N'', N'Image', NULL)
INSERT [dbo].[BusinessFile] ([FileID], [BusinessID], [FileURL], [IconURL], [SortIndex], [Title], [Category], [Stamp]) VALUES (2308, 1094, N'~/images/Designs/244be502-64f9-4245-b324-144fba8b1359.PNG', N'~/images/Designs/Icons/244be502-64f9-4245-b324-144fba8b1359.PNG', 1, N'', N'Image', NULL)
INSERT [dbo].[BusinessFile] ([FileID], [BusinessID], [FileURL], [IconURL], [SortIndex], [Title], [Category], [Stamp]) VALUES (2309, 1094, N'~/images/Designs/b202e975-29af-4020-91c4-24edcaf2be47.PNG', N'~/images/Designs/Icons/b202e975-29af-4020-91c4-24edcaf2be47.PNG', 2, N'', N'Image', NULL)
INSERT [dbo].[BusinessFile] ([FileID], [BusinessID], [FileURL], [IconURL], [SortIndex], [Title], [Category], [Stamp]) VALUES (2310, 1094, N'~/images/Designs/b4fc36bf-ea5f-43d6-ab11-45564976620a.PNG', N'~/images/Designs/Icons/b4fc36bf-ea5f-43d6-ab11-45564976620a.PNG', 3, N'', N'Image', NULL)
INSERT [dbo].[BusinessFile] ([FileID], [BusinessID], [FileURL], [IconURL], [SortIndex], [Title], [Category], [Stamp]) VALUES (2311, 1095, N'~/images/Designs/956a22cf-9a3a-437f-9ac0-d474ec4114c5.PNG', N'~/images/Designs/Icons/956a22cf-9a3a-437f-9ac0-d474ec4114c5.PNG', 1, N'', N'Image', NULL)
INSERT [dbo].[BusinessFile] ([FileID], [BusinessID], [FileURL], [IconURL], [SortIndex], [Title], [Category], [Stamp]) VALUES (2312, 1095, N'~/images/Designs/6266863d-2de3-4ea1-bfac-b0a6dc41ae30.PNG', N'~/images/Designs/Icons/6266863d-2de3-4ea1-bfac-b0a6dc41ae30.PNG', 2, N'', N'Image', NULL)
INSERT [dbo].[BusinessFile] ([FileID], [BusinessID], [FileURL], [IconURL], [SortIndex], [Title], [Category], [Stamp]) VALUES (2313, 1095, N'~/images/Designs/0c7ca90e-5863-4f76-be6c-4e562c79b0d7.PNG', N'~/images/Designs/Icons/0c7ca90e-5863-4f76-be6c-4e562c79b0d7.PNG', 3, N'', N'Image', NULL)
INSERT [dbo].[BusinessFile] ([FileID], [BusinessID], [FileURL], [IconURL], [SortIndex], [Title], [Category], [Stamp]) VALUES (2314, 1095, N'~/images/Designs/c5ba4836-a9ad-4352-8548-182e2fcb4be3.PNG', N'~/images/Designs/Icons/c5ba4836-a9ad-4352-8548-182e2fcb4be3.PNG', 4, N'', N'Image', NULL)
INSERT [dbo].[BusinessFile] ([FileID], [BusinessID], [FileURL], [IconURL], [SortIndex], [Title], [Category], [Stamp]) VALUES (2315, 1096, N'~/images/Designs/3953fed5-24a3-4090-b1b4-c2fe63f84df5.PNG', N'~/images/Designs/Icons/3953fed5-24a3-4090-b1b4-c2fe63f84df5.PNG', 1, N'', N'Image', NULL)
INSERT [dbo].[BusinessFile] ([FileID], [BusinessID], [FileURL], [IconURL], [SortIndex], [Title], [Category], [Stamp]) VALUES (2316, 1096, N'~/images/Designs/f89646d4-fd87-4abb-9a04-bd822bd31c30.PNG', N'~/images/Designs/Icons/f89646d4-fd87-4abb-9a04-bd822bd31c30.PNG', 2, N'', N'Image', NULL)
INSERT [dbo].[BusinessFile] ([FileID], [BusinessID], [FileURL], [IconURL], [SortIndex], [Title], [Category], [Stamp]) VALUES (2317, 1096, N'~/images/Designs/ac1f8e8d-25f1-49f4-9eaf-9cd763c0e9f7.PNG', N'~/images/Designs/Icons/ac1f8e8d-25f1-49f4-9eaf-9cd763c0e9f7.PNG', 3, N'', N'Image', NULL)
INSERT [dbo].[BusinessFile] ([FileID], [BusinessID], [FileURL], [IconURL], [SortIndex], [Title], [Category], [Stamp]) VALUES (2318, 1096, N'~/images/Designs/c6b08bbc-fd64-44d8-813d-420a709eb232.PNG', N'~/images/Designs/Icons/c6b08bbc-fd64-44d8-813d-420a709eb232.PNG', 4, N'', N'Image', NULL)
INSERT [dbo].[BusinessFile] ([FileID], [BusinessID], [FileURL], [IconURL], [SortIndex], [Title], [Category], [Stamp]) VALUES (2319, 1099, N'~/images/Designs/db25f565-9c61-4a59-8921-bcdb6ba06bcc.PNG', N'~/images/Designs/Icons/db25f565-9c61-4a59-8921-bcdb6ba06bcc.PNG', 1, N'', N'Image', NULL)
INSERT [dbo].[BusinessFile] ([FileID], [BusinessID], [FileURL], [IconURL], [SortIndex], [Title], [Category], [Stamp]) VALUES (2320, 1100, N'~/images/Designs/f04b8ea7-1553-4b6d-8094-ab6518866ae1.PNG', N'~/images/Designs/Icons/f04b8ea7-1553-4b6d-8094-ab6518866ae1.PNG', 1, N'', N'Image', NULL)
INSERT [dbo].[BusinessFile] ([FileID], [BusinessID], [FileURL], [IconURL], [SortIndex], [Title], [Category], [Stamp]) VALUES (2321, 1100, N'~/images/Designs/af1455f6-af12-49e8-b971-9d6e073d561d.PNG', N'~/images/Designs/Icons/af1455f6-af12-49e8-b971-9d6e073d561d.PNG', 2, N'', N'Image', NULL)
INSERT [dbo].[BusinessFile] ([FileID], [BusinessID], [FileURL], [IconURL], [SortIndex], [Title], [Category], [Stamp]) VALUES (2322, 1100, N'~/images/Designs/dbdd4f35-9b03-488d-911b-7102bcd47693.PNG', N'~/images/Designs/Icons/dbdd4f35-9b03-488d-911b-7102bcd47693.PNG', 3, N'', N'Image', NULL)
INSERT [dbo].[BusinessFile] ([FileID], [BusinessID], [FileURL], [IconURL], [SortIndex], [Title], [Category], [Stamp]) VALUES (2324, 1101, N'~/images/Designs/136f4a9d-1f62-46e7-8a8a-b5c34d94c012.PNG', N'~/images/Designs/Icons/136f4a9d-1f62-46e7-8a8a-b5c34d94c012.PNG', 1, N'', N'Image', NULL)
INSERT [dbo].[BusinessFile] ([FileID], [BusinessID], [FileURL], [IconURL], [SortIndex], [Title], [Category], [Stamp]) VALUES (2325, 1101, N'~/images/Designs/950e7b02-a798-4da3-94a5-9736d6531693.PNG', N'~/images/Designs/Icons/950e7b02-a798-4da3-94a5-9736d6531693.PNG', 2, N'', N'Image', NULL)
INSERT [dbo].[BusinessFile] ([FileID], [BusinessID], [FileURL], [IconURL], [SortIndex], [Title], [Category], [Stamp]) VALUES (2326, 1101, N'~/images/Designs/86ecd0dd-c18c-4462-b1fb-7dbadda9da57.PNG', N'~/images/Designs/Icons/86ecd0dd-c18c-4462-b1fb-7dbadda9da57.PNG', 3, N'', N'Image', NULL)
INSERT [dbo].[BusinessFile] ([FileID], [BusinessID], [FileURL], [IconURL], [SortIndex], [Title], [Category], [Stamp]) VALUES (2327, 1103, N'~/images/Designs/f46e3859-08b6-4c49-bef9-79dd714d7a85.PNG', N'~/images/Designs/Icons/f46e3859-08b6-4c49-bef9-79dd714d7a85.PNG', 1, N'', N'Image', NULL)
INSERT [dbo].[BusinessFile] ([FileID], [BusinessID], [FileURL], [IconURL], [SortIndex], [Title], [Category], [Stamp]) VALUES (2328, 1103, N'~/images/Designs/bb129eef-d4cd-4077-a9bc-4ac18a5b4ca5.PNG', N'~/images/Designs/Icons/bb129eef-d4cd-4077-a9bc-4ac18a5b4ca5.PNG', 2, N'', N'Image', NULL)
INSERT [dbo].[BusinessFile] ([FileID], [BusinessID], [FileURL], [IconURL], [SortIndex], [Title], [Category], [Stamp]) VALUES (2329, 1103, N'~/images/Designs/343255ed-b897-4dbc-b55c-c625587451bf.PNG', N'~/images/Designs/Icons/343255ed-b897-4dbc-b55c-c625587451bf.PNG', 3, N'', N'Image', NULL)
INSERT [dbo].[BusinessFile] ([FileID], [BusinessID], [FileURL], [IconURL], [SortIndex], [Title], [Category], [Stamp]) VALUES (2331, 1104, N'~/images/Designs/da001ba9-167e-4a66-8d7d-e30cb97a6373.jpg', N'~/images/Designs/Icons/da001ba9-167e-4a66-8d7d-e30cb97a6373.jpg', 1, NULL, N'Image', NULL)
INSERT [dbo].[BusinessFile] ([FileID], [BusinessID], [FileURL], [IconURL], [SortIndex], [Title], [Category], [Stamp]) VALUES (2332, 1104, N'~/images/Designs/1f9caf79-d1c5-4702-a7ef-b059a6220fbd.jpg', N'~/images/Designs/Icons/1f9caf79-d1c5-4702-a7ef-b059a6220fbd.jpg', 2, NULL, N'Image', NULL)
INSERT [dbo].[BusinessFile] ([FileID], [BusinessID], [FileURL], [IconURL], [SortIndex], [Title], [Category], [Stamp]) VALUES (2333, 1104, N'~/images/Designs/1e34f460-40f1-4485-af1e-6348a0600a95.jpg', N'~/images/Designs/Icons/1e34f460-40f1-4485-af1e-6348a0600a95.jpg', 3, NULL, N'Image', NULL)
INSERT [dbo].[BusinessFile] ([FileID], [BusinessID], [FileURL], [IconURL], [SortIndex], [Title], [Category], [Stamp]) VALUES (2334, 1104, N'~/images/Designs/8f69258a-5855-4ee0-a0d1-57681af8f729.PNG', N'~/images/Designs/Icons/8f69258a-5855-4ee0-a0d1-57681af8f729.PNG', 4, NULL, N'Image', NULL)
INSERT [dbo].[BusinessFile] ([FileID], [BusinessID], [FileURL], [IconURL], [SortIndex], [Title], [Category], [Stamp]) VALUES (2335, 1067, N'~/images/Designs/530b6945-a7b3-447c-adad-313701e11fdf.jpg', N'~/images/Designs/Icons/a33ad68d-1ef4-4aac-af21-8ba7674366c8.jpg', 1, NULL, N'Image', CAST(N'2021-09-03T17:39:53.070' AS DateTime))
INSERT [dbo].[BusinessFile] ([FileID], [BusinessID], [FileURL], [IconURL], [SortIndex], [Title], [Category], [Stamp]) VALUES (2336, 1105, N'~/images/Designs/f9156f02-a6a0-4d38-b4bc-1b0b3bd6f680.jpg', N'~/images/Designs/Icons/f9156f02-a6a0-4d38-b4bc-1b0b3bd6f680.jpg', 2, NULL, N'Image', CAST(N'2021-09-04T17:39:53.070' AS DateTime))
INSERT [dbo].[BusinessFile] ([FileID], [BusinessID], [FileURL], [IconURL], [SortIndex], [Title], [Category], [Stamp]) VALUES (2337, 1105, N'~/images/Designs/00db14c9-03ea-4861-b21a-df460a40c145.PNG', N'~/images/Designs/Icons/00db14c9-03ea-4861-b21a-df460a40c145.PNG', 1, NULL, N'Image', CAST(N'2021-09-04T17:39:53.070' AS DateTime))
INSERT [dbo].[BusinessFile] ([FileID], [BusinessID], [FileURL], [IconURL], [SortIndex], [Title], [Category], [Stamp]) VALUES (2338, 1105, N'~/images/Designs/35eec60f-def5-4f13-b751-f03bb132a07b.jpg', N'~/images/Designs/Icons/35eec60f-def5-4f13-b751-f03bb132a07b.jpg', 3, NULL, N'Image', NULL)
INSERT [dbo].[BusinessFile] ([FileID], [BusinessID], [FileURL], [IconURL], [SortIndex], [Title], [Category], [Stamp]) VALUES (2339, 1106, N'~/images/Designs/e29c6650-07fc-4c3c-953b-7425b5050ff3.PNG', N'~/images/Designs/Icons/e29c6650-07fc-4c3c-953b-7425b5050ff3.PNG', 1, NULL, N'Image', NULL)
INSERT [dbo].[BusinessFile] ([FileID], [BusinessID], [FileURL], [IconURL], [SortIndex], [Title], [Category], [Stamp]) VALUES (2340, 1106, N'~/images/Designs/821f533e-4182-4995-9665-c6564d07c752.jpg', N'~/images/Designs/Icons/821f533e-4182-4995-9665-c6564d07c752.jpg', 2, NULL, N'Image', NULL)
INSERT [dbo].[BusinessFile] ([FileID], [BusinessID], [FileURL], [IconURL], [SortIndex], [Title], [Category], [Stamp]) VALUES (2341, 1106, N'~/images/Designs/6711e494-d59a-4277-a9d2-f812583bccf5.PNG', N'~/images/Designs/Icons/6711e494-d59a-4277-a9d2-f812583bccf5.PNG', 3, NULL, N'Image', NULL)
INSERT [dbo].[BusinessFile] ([FileID], [BusinessID], [FileURL], [IconURL], [SortIndex], [Title], [Category], [Stamp]) VALUES (2342, 1106, N'~/images/Designs/0a9ada1d-cbf3-4c7b-9cb6-5aaca1a3fa3a.PNG', N'~/images/Designs/Icons/0a9ada1d-cbf3-4c7b-9cb6-5aaca1a3fa3a.PNG', 4, NULL, N'Image', NULL)
INSERT [dbo].[BusinessFile] ([FileID], [BusinessID], [FileURL], [IconURL], [SortIndex], [Title], [Category], [Stamp]) VALUES (2343, 1107, N'~/images/Designs/3c8b2caa-b5b5-494d-9122-7eab5bedaf88.PNG', N'~/images/Designs/Icons/3c8b2caa-b5b5-494d-9122-7eab5bedaf88.PNG', 1, NULL, N'Image', NULL)
INSERT [dbo].[BusinessFile] ([FileID], [BusinessID], [FileURL], [IconURL], [SortIndex], [Title], [Category], [Stamp]) VALUES (2344, 1107, N'~/images/Designs/eed1f90f-6481-47d4-a49a-bbe08eae4764.PNG', N'~/images/Designs/Icons/eed1f90f-6481-47d4-a49a-bbe08eae4764.PNG', 2, NULL, N'Image', NULL)
INSERT [dbo].[BusinessFile] ([FileID], [BusinessID], [FileURL], [IconURL], [SortIndex], [Title], [Category], [Stamp]) VALUES (2345, 1107, N'~/images/Designs/141de31a-de98-4029-aaee-ad4be71ccc79.PNG', N'~/images/Designs/Icons/141de31a-de98-4029-aaee-ad4be71ccc79.PNG', 3, NULL, N'Image', NULL)
INSERT [dbo].[BusinessFile] ([FileID], [BusinessID], [FileURL], [IconURL], [SortIndex], [Title], [Category], [Stamp]) VALUES (2346, 1108, N'~/images/Designs/371cd7dd-f07a-4346-90be-bcb72cbe264c.PNG', N'~/images/Designs/Icons/371cd7dd-f07a-4346-90be-bcb72cbe264c.PNG', 1, NULL, N'Image', NULL)
INSERT [dbo].[BusinessFile] ([FileID], [BusinessID], [FileURL], [IconURL], [SortIndex], [Title], [Category], [Stamp]) VALUES (2348, 1109, N'~/images/Designs/8476f2c7-8452-4bbd-9820-4b44fb6ef52f.PNG', N'~/images/Designs/Icons/8476f2c7-8452-4bbd-9820-4b44fb6ef52f.PNG', 2, NULL, N'Image', NULL)
INSERT [dbo].[BusinessFile] ([FileID], [BusinessID], [FileURL], [IconURL], [SortIndex], [Title], [Category], [Stamp]) VALUES (2349, 1109, N'~/images/Designs/9325cb80-9873-4dfa-abd3-05cc539e75f2.PNG', N'~/images/Designs/Icons/9325cb80-9873-4dfa-abd3-05cc539e75f2.PNG', 3, NULL, N'Image', NULL)
INSERT [dbo].[BusinessFile] ([FileID], [BusinessID], [FileURL], [IconURL], [SortIndex], [Title], [Category], [Stamp]) VALUES (2350, 1109, N'~/images/Designs/5e22bde2-0c22-4213-8461-2cb3ccfc3df7.PNG', N'~/images/Designs/Icons/5e22bde2-0c22-4213-8461-2cb3ccfc3df7.PNG', 1, NULL, N'Image', NULL)
INSERT [dbo].[BusinessFile] ([FileID], [BusinessID], [FileURL], [IconURL], [SortIndex], [Title], [Category], [Stamp]) VALUES (2351, 1110, N'~/images/Designs/4f023131-e34b-421d-ab14-0fc73ca14edd.jpg', N'~/images/Designs/Icons/4f023131-e34b-421d-ab14-0fc73ca14edd.jpg', 3, NULL, N'Image', NULL)
INSERT [dbo].[BusinessFile] ([FileID], [BusinessID], [FileURL], [IconURL], [SortIndex], [Title], [Category], [Stamp]) VALUES (2352, 1110, N'~/images/Designs/c5d6af5b-a0a2-4e97-991b-380a885fac7d.jpg', N'~/images/Designs/Icons/c5d6af5b-a0a2-4e97-991b-380a885fac7d.jpg', 2, NULL, N'Image', NULL)
INSERT [dbo].[BusinessFile] ([FileID], [BusinessID], [FileURL], [IconURL], [SortIndex], [Title], [Category], [Stamp]) VALUES (2353, 1110, N'~/images/Designs/e4c3ab85-c37f-4b04-8dc5-46e2194ee89c.jpg', N'~/images/Designs/Icons/e4c3ab85-c37f-4b04-8dc5-46e2194ee89c.jpg', 1, NULL, N'Image', NULL)
SET IDENTITY_INSERT [dbo].[BusinessFile] OFF
GO
SET IDENTITY_INSERT [dbo].[Client] ON 

INSERT [dbo].[Client] ([ClientID], [Name], [Street], [Suite], [City], [State], [Zipcode], [CountryID], [Telephone], [Email], [Website], [DateAdded], [AddedByUserID]) VALUES (1, N'My Community Builder', NULL, NULL, N'Sandy Springs', N'MD', NULL, 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Client] ([ClientID], [Name], [Street], [Suite], [City], [State], [Zipcode], [CountryID], [Telephone], [Email], [Website], [DateAdded], [AddedByUserID]) VALUES (2, N'South Central Pennsylvania', NULL, NULL, N'Harrisburg', N'PA', NULL, 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Client] ([ClientID], [Name], [Street], [Suite], [City], [State], [Zipcode], [CountryID], [Telephone], [Email], [Website], [DateAdded], [AddedByUserID]) VALUES (3, N'Las Cruces, NM', NULL, NULL, N'Las Cruces', N'NM', NULL, 1, NULL, NULL, N'', NULL, NULL)
INSERT [dbo].[Client] ([ClientID], [Name], [Street], [Suite], [City], [State], [Zipcode], [CountryID], [Telephone], [Email], [Website], [DateAdded], [AddedByUserID]) VALUES (4, N'Broward County', NULL, NULL, N'Ft. Lauderdale', N'FL', NULL, 1, NULL, NULL, N'', NULL, NULL)
INSERT [dbo].[Client] ([ClientID], [Name], [Street], [Suite], [City], [State], [Zipcode], [CountryID], [Telephone], [Email], [Website], [DateAdded], [AddedByUserID]) VALUES (5, N'Market Center', NULL, NULL, N'Baltimore', N'MD', NULL, 1, NULL, NULL, N'USA', NULL, NULL)
SET IDENTITY_INSERT [dbo].[Client] OFF
GO
INSERT [dbo].[ClientSites] ([ClientID], [SiteID], [DateAdded], [AddedByUserID]) VALUES (1, 1, NULL, NULL)
INSERT [dbo].[ClientSites] ([ClientID], [SiteID], [DateAdded], [AddedByUserID]) VALUES (1, 2, NULL, NULL)
INSERT [dbo].[ClientSites] ([ClientID], [SiteID], [DateAdded], [AddedByUserID]) VALUES (1, 7, CAST(N'2021-10-08T19:15:40.883' AS DateTime), NULL)
INSERT [dbo].[ClientSites] ([ClientID], [SiteID], [DateAdded], [AddedByUserID]) VALUES (2, 4, NULL, NULL)
INSERT [dbo].[ClientSites] ([ClientID], [SiteID], [DateAdded], [AddedByUserID]) VALUES (3, 5, NULL, NULL)
INSERT [dbo].[ClientSites] ([ClientID], [SiteID], [DateAdded], [AddedByUserID]) VALUES (5, 3, NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[Country] ON 

INSERT [dbo].[Country] ([CountryID], [Name], [NameLong], [DefaultLanguageID]) VALUES (1, N'USA', N'United States of America', 1)
INSERT [dbo].[Country] ([CountryID], [Name], [NameLong], [DefaultLanguageID]) VALUES (2, N'Mexico', N'Mexico', 2)
SET IDENTITY_INSERT [dbo].[Country] OFF
GO
SET IDENTITY_INSERT [dbo].[CSS] ON 

INSERT [dbo].[CSS] ([CSSID], [TextColor], [TextSize]) VALUES (1, N'red', N'24px')
SET IDENTITY_INSERT [dbo].[CSS] OFF
GO
SET IDENTITY_INSERT [dbo].[Event] ON 

INSERT [dbo].[Event] ([EventID], [VirtualOrPhysical], [VirtualType], [Date], [Time], [TimeZone], [Location], [Type], [Hyperlink1], [Hyperlink2], [Comment], [DateAdded], [AddedByUserID], [Inactive], [DeactivateOn], [DeactivatedByUserID]) VALUES (1, N'Physical', NULL, CAST(N'2021-07-06T00:00:00.000' AS DateTime), CAST(N'2021-07-06T18:30:00.000' AS DateTime), N'EST', N'Steak & Tater', N'LION meetup', NULL, NULL, N'Local Investment Opportunity Network is a
                      monthly mixer for investors and businesses.', CAST(N'2021-09-13T12:21:30.693' AS DateTime), N'60174670-1428-4e32-ad26-b7cef2e6fb72', 0, NULL, NULL)
INSERT [dbo].[Event] ([EventID], [VirtualOrPhysical], [VirtualType], [Date], [Time], [TimeZone], [Location], [Type], [Hyperlink1], [Hyperlink2], [Comment], [DateAdded], [AddedByUserID], [Inactive], [DeactivateOn], [DeactivatedByUserID]) VALUES (2, N'Physical', NULL, CAST(N'2012-07-10T00:00:00.000' AS DateTime), CAST(N'2021-07-10T12:00:00.000' AS DateTime), N'EST', N'Wow! Interiors', N'Lunch & Learn', NULL, NULL, N'Meet Julie from Mountain View Coop', CAST(N'2021-09-13T12:23:44.117' AS DateTime), N'60174670-1428-4e32-ad26-b7cef2e6fb72', 0, NULL, NULL)
INSERT [dbo].[Event] ([EventID], [VirtualOrPhysical], [VirtualType], [Date], [Time], [TimeZone], [Location], [Type], [Hyperlink1], [Hyperlink2], [Comment], [DateAdded], [AddedByUserID], [Inactive], [DeactivateOn], [DeactivatedByUserID]) VALUES (3, N'Virtual', N'Weblink', CAST(N'2021-07-14T00:00:00.000' AS DateTime), NULL, N'EST', N'Online', NULL, N'Online here', NULL, N'Local Investment 101 Begins! web class pt 1', CAST(N'2021-09-13T12:26:51.697' AS DateTime), N'60174670-1428-4e32-ad26-b7cef2e6fb72', 0, NULL, NULL)
INSERT [dbo].[Event] ([EventID], [VirtualOrPhysical], [VirtualType], [Date], [Time], [TimeZone], [Location], [Type], [Hyperlink1], [Hyperlink2], [Comment], [DateAdded], [AddedByUserID], [Inactive], [DeactivateOn], [DeactivatedByUserID]) VALUES (4, N'Physical', NULL, CAST(N'2021-07-26T00:00:00.000' AS DateTime), CAST(N'2021-07-26T12:00:00.000' AS DateTime), N'EST', N'Welcome Inn', N'Lunch & Learn', NULL, NULL, N'Meet Hector from Burrito''s Victoria', CAST(N'2021-09-13T12:28:05.430' AS DateTime), N'60174670-1428-4e32-ad26-b7cef2e6fb72', 0, NULL, NULL)
INSERT [dbo].[Event] ([EventID], [VirtualOrPhysical], [VirtualType], [Date], [Time], [TimeZone], [Location], [Type], [Hyperlink1], [Hyperlink2], [Comment], [DateAdded], [AddedByUserID], [Inactive], [DeactivateOn], [DeactivatedByUserID]) VALUES (5, N'Virtual', N'Weblink', CAST(N'2021-07-28T00:00:00.000' AS DateTime), NULL, N'EST', N'Online', NULL, N'Online here', NULL, NULL, CAST(N'2021-09-13T12:32:30.573' AS DateTime), N'60174670-1428-4e32-ad26-b7cef2e6fb72', 0, NULL, NULL)
INSERT [dbo].[Event] ([EventID], [VirtualOrPhysical], [VirtualType], [Date], [Time], [TimeZone], [Location], [Type], [Hyperlink1], [Hyperlink2], [Comment], [DateAdded], [AddedByUserID], [Inactive], [DeactivateOn], [DeactivatedByUserID]) VALUES (6, N'Physical', N'', CAST(N'2021-07-06T00:00:00.000' AS DateTime), CAST(N'2021-07-10T12:00:00.000' AS DateTime), N'EST', N'Gulliver''s', N'LION meetup', N'', N'', N'Local Investment Opportunity Network is a   monthly mixer for investors and businesses', CAST(N'2021-10-04T07:24:42.640' AS DateTime), N'60174670-1428-4e32-ad26-b7cef2e6fb72', 0, NULL, NULL)
INSERT [dbo].[Event] ([EventID], [VirtualOrPhysical], [VirtualType], [Date], [Time], [TimeZone], [Location], [Type], [Hyperlink1], [Hyperlink2], [Comment], [DateAdded], [AddedByUserID], [Inactive], [DeactivateOn], [DeactivatedByUserID]) VALUES (7, N'Physical', N'', CAST(N'2012-07-10T00:00:00.000' AS DateTime), CAST(N'2021-07-10T12:00:00.000' AS DateTime), N'EST', N'James McNellie''s', N'Lunch & Learn', N'', N'', N'Meet Julie from James McNellie''s', CAST(N'2021-10-04T07:24:44.233' AS DateTime), N'60174670-1428-4e32-ad26-b7cef2e6fb72', 0, NULL, NULL)
INSERT [dbo].[Event] ([EventID], [VirtualOrPhysical], [VirtualType], [Date], [Time], [TimeZone], [Location], [Type], [Hyperlink1], [Hyperlink2], [Comment], [DateAdded], [AddedByUserID], [Inactive], [DeactivateOn], [DeactivatedByUserID]) VALUES (8, N'Virtual', N'Weblink', CAST(N'2021-07-14T00:00:00.000' AS DateTime), NULL, N'EST', N'Online', N'', N'Online here', N'', N'Local Investment 101 Begins! web class pt 1', CAST(N'2021-10-04T07:24:45.920' AS DateTime), N'60174670-1428-4e32-ad26-b7cef2e6fb72', 0, NULL, NULL)
INSERT [dbo].[Event] ([EventID], [VirtualOrPhysical], [VirtualType], [Date], [Time], [TimeZone], [Location], [Type], [Hyperlink1], [Hyperlink2], [Comment], [DateAdded], [AddedByUserID], [Inactive], [DeactivateOn], [DeactivatedByUserID]) VALUES (9, N'Physical', N'', CAST(N'2021-07-26T00:00:00.000' AS DateTime), CAST(N'2021-07-26T12:00:00.000' AS DateTime), N'EST', N'Wild & Wood Coffee', N'Lunch & Learn', N'', N'', N'Meet Charlene from Brick and Mortar', CAST(N'2021-10-04T07:24:47.670' AS DateTime), N'60174670-1428-4e32-ad26-b7cef2e6fb72', 0, NULL, NULL)
INSERT [dbo].[Event] ([EventID], [VirtualOrPhysical], [VirtualType], [Date], [Time], [TimeZone], [Location], [Type], [Hyperlink1], [Hyperlink2], [Comment], [DateAdded], [AddedByUserID], [Inactive], [DeactivateOn], [DeactivatedByUserID]) VALUES (10, N'Virtual', N'Weblink', CAST(N'2021-07-28T00:00:00.000' AS DateTime), NULL, N'EST', N'Online', N'', N'Online here', N'', N'', CAST(N'2021-10-04T07:24:49.077' AS DateTime), N'60174670-1428-4e32-ad26-b7cef2e6fb72', 0, NULL, NULL)
INSERT [dbo].[Event] ([EventID], [VirtualOrPhysical], [VirtualType], [Date], [Time], [TimeZone], [Location], [Type], [Hyperlink1], [Hyperlink2], [Comment], [DateAdded], [AddedByUserID], [Inactive], [DeactivateOn], [DeactivatedByUserID]) VALUES (11, N'Physical', N'', CAST(N'2021-07-06T00:00:00.000' AS DateTime), CAST(N'2021-07-06T18:30:00.000' AS DateTime), N'EST', N'Tabor Ethiopian Restaurant', N'LION meetup', N'', N'', N'Local Investment Opportunity Network is a   monthly mixer for investors and businesses', CAST(N'2021-10-04T07:24:50.513' AS DateTime), N'60174670-1428-4e32-ad26-b7cef2e6fb72', 0, NULL, NULL)
INSERT [dbo].[Event] ([EventID], [VirtualOrPhysical], [VirtualType], [Date], [Time], [TimeZone], [Location], [Type], [Hyperlink1], [Hyperlink2], [Comment], [DateAdded], [AddedByUserID], [Inactive], [DeactivateOn], [DeactivatedByUserID]) VALUES (12, N'Physical', N'', CAST(N'2012-07-10T00:00:00.000' AS DateTime), CAST(N'2021-07-10T12:00:00.000' AS DateTime), N'EST', N'Between 2 Buns', N'Lunch & Learn', N'', N'', N'Meet Julie from Tight Image Barber Shop', CAST(N'2021-10-04T07:24:52.123' AS DateTime), N'60174670-1428-4e32-ad26-b7cef2e6fb72', 0, NULL, NULL)
INSERT [dbo].[Event] ([EventID], [VirtualOrPhysical], [VirtualType], [Date], [Time], [TimeZone], [Location], [Type], [Hyperlink1], [Hyperlink2], [Comment], [DateAdded], [AddedByUserID], [Inactive], [DeactivateOn], [DeactivatedByUserID]) VALUES (13, N'Virtual', N'Weblink', CAST(N'2021-07-14T00:00:00.000' AS DateTime), NULL, N'EST', N'Online', N'', N'Online here', N'', N'Local Investment 101 Begins! web class pt 1', CAST(N'2021-10-04T07:24:53.937' AS DateTime), N'60174670-1428-4e32-ad26-b7cef2e6fb72', 0, NULL, NULL)
INSERT [dbo].[Event] ([EventID], [VirtualOrPhysical], [VirtualType], [Date], [Time], [TimeZone], [Location], [Type], [Hyperlink1], [Hyperlink2], [Comment], [DateAdded], [AddedByUserID], [Inactive], [DeactivateOn], [DeactivatedByUserID]) VALUES (14, N'Physical', N'', CAST(N'2021-07-26T00:00:00.000' AS DateTime), CAST(N'2021-07-26T12:00:00.000' AS DateTime), N'EST', N'Everyman Theater', N'Lunch & Learn', N'', N'', N'Meet James from Market Bakery', CAST(N'2021-10-04T07:24:55.763' AS DateTime), N'60174670-1428-4e32-ad26-b7cef2e6fb72', 0, NULL, NULL)
INSERT [dbo].[Event] ([EventID], [VirtualOrPhysical], [VirtualType], [Date], [Time], [TimeZone], [Location], [Type], [Hyperlink1], [Hyperlink2], [Comment], [DateAdded], [AddedByUserID], [Inactive], [DeactivateOn], [DeactivatedByUserID]) VALUES (15, N'Virtual', N'Weblink', CAST(N'2021-07-28T00:00:00.000' AS DateTime), NULL, N'EST', N'Online', N'', N'Online here', N'', N'', CAST(N'2021-10-04T07:24:57.170' AS DateTime), N'60174670-1428-4e32-ad26-b7cef2e6fb72', 0, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Event] OFF
GO
SET IDENTITY_INSERT [dbo].[Fan] ON 

INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (1070, N'f92d9dc5-c258-45a4-9e16-f54580cdffe6', 1093, CAST(N'2021-08-18T15:33:25.007' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (1071, N'd73f5285-b58d-4056-a1f7-97de0c36f16e', 1093, CAST(N'2021-08-21T13:01:46.887' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (1072, N'4d0ca1c2-be62-482c-8e4a-0fb499465cc5', 1099, CAST(N'2021-08-22T11:50:38.360' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (1075, N'd73f5285-b58d-4056-a1f7-97de0c36f16e', 1100, CAST(N'2021-08-25T05:31:14.247' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (1076, N'd73f5285-b58d-4056-a1f7-97de0c36f16e', 1096, CAST(N'2021-08-25T05:31:24.373' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (1078, N'4d0ca1c2-be62-482c-8e4a-0fb499465cc5', 1096, CAST(N'2021-08-25T10:37:51.497' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2074, N'4d0ca1c2-be62-482c-8e4a-0fb499465cc5', 1093, CAST(N'2021-08-29T06:17:22.360' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2075, N'9dd226eb-0836-4d1a-bfe5-459feec6cfac', 1067, CAST(N'2021-09-03T17:56:52.517' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2076, N'9dd226eb-0836-4d1a-bfe5-459feec6cfac', 1104, CAST(N'2021-09-03T17:57:24.520' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2077, N'd32e7708-3ead-4ab9-8de0-05e965ec940e', 1105, CAST(N'2021-09-04T14:34:04.070' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2079, N'd32e7708-3ead-4ab9-8de0-05e965ec940e', 1094, CAST(N'2021-09-04T20:18:06.323' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2080, N'68eb6d86-e980-405f-8012-32784b61ade5', 1105, CAST(N'2021-09-06T17:35:24.647' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2081, N'68eb6d86-e980-405f-8012-32784b61ade5', 1104, CAST(N'2021-09-06T17:35:33.163' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2082, N'68eb6d86-e980-405f-8012-32784b61ade5', 1110, CAST(N'2021-09-06T17:35:41.180' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2083, N'60174670-1428-4e32-ad26-b7cef2e6fb72', 1067, CAST(N'2021-09-06T17:41:20.960' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2084, N'60174670-1428-4e32-ad26-b7cef2e6fb72', 1108, CAST(N'2021-09-06T17:41:29.617' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2085, N'60174670-1428-4e32-ad26-b7cef2e6fb72', 1110, CAST(N'2021-09-06T17:41:38.413' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2086, N'60174670-1428-4e32-ad26-b7cef2e6fb72', 1104, CAST(N'2021-09-06T17:41:59.260' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2088, N'68eb6d86-e980-405f-8012-32784b61ade5', 1093, CAST(N'2021-09-06T17:44:26.010' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2089, N'68eb6d86-e980-405f-8012-32784b61ade5', 1094, CAST(N'2021-09-06T17:44:31.697' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2090, N'f3626a35-4112-4bc7-925b-d31f196c9dba', 1110, CAST(N'2021-09-07T05:44:19.820' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2091, N'f3626a35-4112-4bc7-925b-d31f196c9dba', 1104, CAST(N'2021-09-07T05:44:31.243' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2092, N'f3626a35-4112-4bc7-925b-d31f196c9dba', 1106, CAST(N'2021-09-07T05:44:40.523' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2093, N'e7e38387-1494-4202-89ac-df4e5f557c76', 1109, CAST(N'2021-09-07T05:50:00.400' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2094, N'e7e38387-1494-4202-89ac-df4e5f557c76', 1108, CAST(N'2021-09-07T05:50:07.570' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2095, N'e7e38387-1494-4202-89ac-df4e5f557c76', 1104, CAST(N'2021-09-07T05:50:20.303' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2096, N'e7e38387-1494-4202-89ac-df4e5f557c76', 1110, CAST(N'2021-09-07T06:38:00.867' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2097, N'e7e38387-1494-4202-89ac-df4e5f557c76', 1105, CAST(N'2021-09-07T13:25:27.300' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2098, N'b6069759-0a6c-4033-a7be-1dd9721acdaa', 22, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2099, N'b6069759-0a6c-4033-a7be-1dd9721acdaa', 26, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2100, N'b6069759-0a6c-4033-a7be-1dd9721acdaa', 30, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2101, N'b6069759-0a6c-4033-a7be-1dd9721acdaa', 1063, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2102, N'b6069759-0a6c-4033-a7be-1dd9721acdaa', 1065, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2103, N'b6069759-0a6c-4033-a7be-1dd9721acdaa', 1066, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2104, N'b6069759-0a6c-4033-a7be-1dd9721acdaa', 1067, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2105, N'b6069759-0a6c-4033-a7be-1dd9721acdaa', 1068, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2106, N'b6069759-0a6c-4033-a7be-1dd9721acdaa', 1070, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2107, N'b6069759-0a6c-4033-a7be-1dd9721acdaa', 1071, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2108, N'b6069759-0a6c-4033-a7be-1dd9721acdaa', 1072, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2109, N'b6069759-0a6c-4033-a7be-1dd9721acdaa', 1073, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2110, N'b6069759-0a6c-4033-a7be-1dd9721acdaa', 1074, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2111, N'b6069759-0a6c-4033-a7be-1dd9721acdaa', 1077, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2112, N'b6069759-0a6c-4033-a7be-1dd9721acdaa', 1078, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2113, N'b6069759-0a6c-4033-a7be-1dd9721acdaa', 1079, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2114, N'b6069759-0a6c-4033-a7be-1dd9721acdaa', 1080, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2115, N'b6069759-0a6c-4033-a7be-1dd9721acdaa', 1081, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2116, N'b6069759-0a6c-4033-a7be-1dd9721acdaa', 1082, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2117, N'b6069759-0a6c-4033-a7be-1dd9721acdaa', 1083, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2118, N'b6069759-0a6c-4033-a7be-1dd9721acdaa', 1084, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2119, N'b6069759-0a6c-4033-a7be-1dd9721acdaa', 1085, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2120, N'b6069759-0a6c-4033-a7be-1dd9721acdaa', 1086, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2121, N'b6069759-0a6c-4033-a7be-1dd9721acdaa', 1087, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2122, N'b6069759-0a6c-4033-a7be-1dd9721acdaa', 1088, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2123, N'b6069759-0a6c-4033-a7be-1dd9721acdaa', 1089, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2124, N'b6069759-0a6c-4033-a7be-1dd9721acdaa', 1090, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2125, N'b6069759-0a6c-4033-a7be-1dd9721acdaa', 1091, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2126, N'b6069759-0a6c-4033-a7be-1dd9721acdaa', 1092, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2133, N'b6069759-0a6c-4033-a7be-1dd9721acdaa', 1101, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2134, N'b6069759-0a6c-4033-a7be-1dd9721acdaa', 1103, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2135, N'b6069759-0a6c-4033-a7be-1dd9721acdaa', 1104, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2136, N'b6069759-0a6c-4033-a7be-1dd9721acdaa', 1105, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2137, N'b6069759-0a6c-4033-a7be-1dd9721acdaa', 1106, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2138, N'b6069759-0a6c-4033-a7be-1dd9721acdaa', 1107, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2139, N'b6069759-0a6c-4033-a7be-1dd9721acdaa', 1108, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2140, N'b6069759-0a6c-4033-a7be-1dd9721acdaa', 1109, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2141, N'b6069759-0a6c-4033-a7be-1dd9721acdaa', 1110, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2142, N'0b365bc6-2d06-4015-8cb8-57ab60f28921', 22, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2143, N'0b365bc6-2d06-4015-8cb8-57ab60f28921', 26, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2144, N'0b365bc6-2d06-4015-8cb8-57ab60f28921', 30, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2145, N'0b365bc6-2d06-4015-8cb8-57ab60f28921', 1063, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2146, N'0b365bc6-2d06-4015-8cb8-57ab60f28921', 1065, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2147, N'0b365bc6-2d06-4015-8cb8-57ab60f28921', 1066, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2148, N'0b365bc6-2d06-4015-8cb8-57ab60f28921', 1067, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2149, N'0b365bc6-2d06-4015-8cb8-57ab60f28921', 1068, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2150, N'0b365bc6-2d06-4015-8cb8-57ab60f28921', 1070, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2151, N'0b365bc6-2d06-4015-8cb8-57ab60f28921', 1071, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2152, N'0b365bc6-2d06-4015-8cb8-57ab60f28921', 1072, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2153, N'0b365bc6-2d06-4015-8cb8-57ab60f28921', 1073, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2154, N'0b365bc6-2d06-4015-8cb8-57ab60f28921', 1074, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2155, N'0b365bc6-2d06-4015-8cb8-57ab60f28921', 1077, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2156, N'0b365bc6-2d06-4015-8cb8-57ab60f28921', 1078, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2157, N'0b365bc6-2d06-4015-8cb8-57ab60f28921', 1079, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2158, N'0b365bc6-2d06-4015-8cb8-57ab60f28921', 1080, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2159, N'0b365bc6-2d06-4015-8cb8-57ab60f28921', 1081, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2160, N'0b365bc6-2d06-4015-8cb8-57ab60f28921', 1082, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2161, N'0b365bc6-2d06-4015-8cb8-57ab60f28921', 1083, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2162, N'0b365bc6-2d06-4015-8cb8-57ab60f28921', 1084, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2163, N'0b365bc6-2d06-4015-8cb8-57ab60f28921', 1085, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2164, N'0b365bc6-2d06-4015-8cb8-57ab60f28921', 1086, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2165, N'0b365bc6-2d06-4015-8cb8-57ab60f28921', 1087, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2166, N'0b365bc6-2d06-4015-8cb8-57ab60f28921', 1088, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2167, N'0b365bc6-2d06-4015-8cb8-57ab60f28921', 1089, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2168, N'0b365bc6-2d06-4015-8cb8-57ab60f28921', 1090, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2169, N'0b365bc6-2d06-4015-8cb8-57ab60f28921', 1091, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2175, N'0b365bc6-2d06-4015-8cb8-57ab60f28921', 1099, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2176, N'0b365bc6-2d06-4015-8cb8-57ab60f28921', 1100, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2177, N'0b365bc6-2d06-4015-8cb8-57ab60f28921', 1101, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2178, N'0b365bc6-2d06-4015-8cb8-57ab60f28921', 1103, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2179, N'0b365bc6-2d06-4015-8cb8-57ab60f28921', 1104, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
GO
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2180, N'0b365bc6-2d06-4015-8cb8-57ab60f28921', 1105, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2181, N'0b365bc6-2d06-4015-8cb8-57ab60f28921', 1106, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2182, N'0b365bc6-2d06-4015-8cb8-57ab60f28921', 1107, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2183, N'0b365bc6-2d06-4015-8cb8-57ab60f28921', 1108, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2184, N'0b365bc6-2d06-4015-8cb8-57ab60f28921', 1109, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2185, N'0b365bc6-2d06-4015-8cb8-57ab60f28921', 1110, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2186, N'1ee5711e-d695-42dc-885c-11af190ff90e', 22, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2187, N'1ee5711e-d695-42dc-885c-11af190ff90e', 26, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2188, N'1ee5711e-d695-42dc-885c-11af190ff90e', 30, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2189, N'1ee5711e-d695-42dc-885c-11af190ff90e', 1063, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2190, N'1ee5711e-d695-42dc-885c-11af190ff90e', 1065, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2191, N'1ee5711e-d695-42dc-885c-11af190ff90e', 1066, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2192, N'1ee5711e-d695-42dc-885c-11af190ff90e', 1067, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2193, N'1ee5711e-d695-42dc-885c-11af190ff90e', 1068, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2194, N'1ee5711e-d695-42dc-885c-11af190ff90e', 1070, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2195, N'1ee5711e-d695-42dc-885c-11af190ff90e', 1071, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2196, N'1ee5711e-d695-42dc-885c-11af190ff90e', 1072, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2197, N'1ee5711e-d695-42dc-885c-11af190ff90e', 1073, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2198, N'1ee5711e-d695-42dc-885c-11af190ff90e', 1074, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2199, N'1ee5711e-d695-42dc-885c-11af190ff90e', 1077, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2202, N'1ee5711e-d695-42dc-885c-11af190ff90e', 1080, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2203, N'1ee5711e-d695-42dc-885c-11af190ff90e', 1081, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2204, N'1ee5711e-d695-42dc-885c-11af190ff90e', 1082, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2205, N'1ee5711e-d695-42dc-885c-11af190ff90e', 1083, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2206, N'1ee5711e-d695-42dc-885c-11af190ff90e', 1084, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2207, N'1ee5711e-d695-42dc-885c-11af190ff90e', 1085, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2208, N'1ee5711e-d695-42dc-885c-11af190ff90e', 1086, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2209, N'1ee5711e-d695-42dc-885c-11af190ff90e', 1087, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2210, N'1ee5711e-d695-42dc-885c-11af190ff90e', 1088, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2211, N'1ee5711e-d695-42dc-885c-11af190ff90e', 1089, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2212, N'1ee5711e-d695-42dc-885c-11af190ff90e', 1090, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2213, N'1ee5711e-d695-42dc-885c-11af190ff90e', 1091, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2214, N'1ee5711e-d695-42dc-885c-11af190ff90e', 1092, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2215, N'1ee5711e-d695-42dc-885c-11af190ff90e', 1093, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2216, N'1ee5711e-d695-42dc-885c-11af190ff90e', 1094, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2221, N'1ee5711e-d695-42dc-885c-11af190ff90e', 1101, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2222, N'1ee5711e-d695-42dc-885c-11af190ff90e', 1103, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2223, N'1ee5711e-d695-42dc-885c-11af190ff90e', 1104, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2224, N'1ee5711e-d695-42dc-885c-11af190ff90e', 1105, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2225, N'1ee5711e-d695-42dc-885c-11af190ff90e', 1106, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2226, N'1ee5711e-d695-42dc-885c-11af190ff90e', 1107, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2227, N'1ee5711e-d695-42dc-885c-11af190ff90e', 1108, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2228, N'1ee5711e-d695-42dc-885c-11af190ff90e', 1109, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2229, N'1ee5711e-d695-42dc-885c-11af190ff90e', 1110, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2230, N'c891b97b-04b1-4602-8908-cd24d1bcd095', 22, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2231, N'c891b97b-04b1-4602-8908-cd24d1bcd095', 26, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2232, N'c891b97b-04b1-4602-8908-cd24d1bcd095', 30, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2233, N'c891b97b-04b1-4602-8908-cd24d1bcd095', 1063, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2234, N'c891b97b-04b1-4602-8908-cd24d1bcd095', 1065, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2235, N'c891b97b-04b1-4602-8908-cd24d1bcd095', 1066, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2236, N'c891b97b-04b1-4602-8908-cd24d1bcd095', 1067, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2237, N'c891b97b-04b1-4602-8908-cd24d1bcd095', 1068, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2238, N'c891b97b-04b1-4602-8908-cd24d1bcd095', 1070, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2239, N'c891b97b-04b1-4602-8908-cd24d1bcd095', 1071, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2240, N'c891b97b-04b1-4602-8908-cd24d1bcd095', 1072, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2241, N'c891b97b-04b1-4602-8908-cd24d1bcd095', 1073, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2242, N'c891b97b-04b1-4602-8908-cd24d1bcd095', 1074, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2243, N'c891b97b-04b1-4602-8908-cd24d1bcd095', 1077, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2244, N'c891b97b-04b1-4602-8908-cd24d1bcd095', 1078, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2245, N'c891b97b-04b1-4602-8908-cd24d1bcd095', 1079, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2246, N'c891b97b-04b1-4602-8908-cd24d1bcd095', 1080, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2247, N'c891b97b-04b1-4602-8908-cd24d1bcd095', 1081, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2248, N'c891b97b-04b1-4602-8908-cd24d1bcd095', 1082, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2249, N'c891b97b-04b1-4602-8908-cd24d1bcd095', 1083, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2250, N'c891b97b-04b1-4602-8908-cd24d1bcd095', 1084, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2251, N'c891b97b-04b1-4602-8908-cd24d1bcd095', 1085, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2252, N'c891b97b-04b1-4602-8908-cd24d1bcd095', 1086, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2253, N'c891b97b-04b1-4602-8908-cd24d1bcd095', 1087, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2254, N'c891b97b-04b1-4602-8908-cd24d1bcd095', 1088, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2255, N'c891b97b-04b1-4602-8908-cd24d1bcd095', 1089, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2256, N'c891b97b-04b1-4602-8908-cd24d1bcd095', 1090, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2260, N'c891b97b-04b1-4602-8908-cd24d1bcd095', 1094, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2261, N'c891b97b-04b1-4602-8908-cd24d1bcd095', 1095, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2262, N'c891b97b-04b1-4602-8908-cd24d1bcd095', 1096, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2263, N'c891b97b-04b1-4602-8908-cd24d1bcd095', 1099, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2264, N'c891b97b-04b1-4602-8908-cd24d1bcd095', 1100, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2265, N'c891b97b-04b1-4602-8908-cd24d1bcd095', 1101, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2266, N'c891b97b-04b1-4602-8908-cd24d1bcd095', 1103, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2267, N'c891b97b-04b1-4602-8908-cd24d1bcd095', 1104, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2268, N'c891b97b-04b1-4602-8908-cd24d1bcd095', 1105, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2269, N'c891b97b-04b1-4602-8908-cd24d1bcd095', 1106, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2270, N'c891b97b-04b1-4602-8908-cd24d1bcd095', 1107, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2271, N'c891b97b-04b1-4602-8908-cd24d1bcd095', 1108, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2272, N'c891b97b-04b1-4602-8908-cd24d1bcd095', 1109, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2273, N'c891b97b-04b1-4602-8908-cd24d1bcd095', 1110, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2274, N'4d0ca1c2-be62-482c-8e4a-0fb499465cc5', 22, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2275, N'4d0ca1c2-be62-482c-8e4a-0fb499465cc5', 26, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2276, N'4d0ca1c2-be62-482c-8e4a-0fb499465cc5', 30, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2277, N'4d0ca1c2-be62-482c-8e4a-0fb499465cc5', 1063, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2278, N'4d0ca1c2-be62-482c-8e4a-0fb499465cc5', 1065, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2279, N'4d0ca1c2-be62-482c-8e4a-0fb499465cc5', 1066, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2280, N'4d0ca1c2-be62-482c-8e4a-0fb499465cc5', 1067, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2281, N'4d0ca1c2-be62-482c-8e4a-0fb499465cc5', 1068, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2282, N'4d0ca1c2-be62-482c-8e4a-0fb499465cc5', 1070, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2283, N'4d0ca1c2-be62-482c-8e4a-0fb499465cc5', 1071, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2284, N'4d0ca1c2-be62-482c-8e4a-0fb499465cc5', 1072, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2287, N'4d0ca1c2-be62-482c-8e4a-0fb499465cc5', 1077, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2288, N'4d0ca1c2-be62-482c-8e4a-0fb499465cc5', 1078, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2289, N'4d0ca1c2-be62-482c-8e4a-0fb499465cc5', 1079, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2290, N'4d0ca1c2-be62-482c-8e4a-0fb499465cc5', 1080, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
GO
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2291, N'4d0ca1c2-be62-482c-8e4a-0fb499465cc5', 1081, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2292, N'4d0ca1c2-be62-482c-8e4a-0fb499465cc5', 1082, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2293, N'4d0ca1c2-be62-482c-8e4a-0fb499465cc5', 1083, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2294, N'4d0ca1c2-be62-482c-8e4a-0fb499465cc5', 1084, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2295, N'4d0ca1c2-be62-482c-8e4a-0fb499465cc5', 1085, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2296, N'4d0ca1c2-be62-482c-8e4a-0fb499465cc5', 1086, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2297, N'4d0ca1c2-be62-482c-8e4a-0fb499465cc5', 1087, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2298, N'4d0ca1c2-be62-482c-8e4a-0fb499465cc5', 1088, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2299, N'4d0ca1c2-be62-482c-8e4a-0fb499465cc5', 1089, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2300, N'4d0ca1c2-be62-482c-8e4a-0fb499465cc5', 1090, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2301, N'4d0ca1c2-be62-482c-8e4a-0fb499465cc5', 1091, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2302, N'4d0ca1c2-be62-482c-8e4a-0fb499465cc5', 1092, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2303, N'4d0ca1c2-be62-482c-8e4a-0fb499465cc5', 1093, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2304, N'4d0ca1c2-be62-482c-8e4a-0fb499465cc5', 1094, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2305, N'4d0ca1c2-be62-482c-8e4a-0fb499465cc5', 1095, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2306, N'4d0ca1c2-be62-482c-8e4a-0fb499465cc5', 1096, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2307, N'4d0ca1c2-be62-482c-8e4a-0fb499465cc5', 1099, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2308, N'4d0ca1c2-be62-482c-8e4a-0fb499465cc5', 1100, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2309, N'4d0ca1c2-be62-482c-8e4a-0fb499465cc5', 1101, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2310, N'4d0ca1c2-be62-482c-8e4a-0fb499465cc5', 1103, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2311, N'4d0ca1c2-be62-482c-8e4a-0fb499465cc5', 1104, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2312, N'4d0ca1c2-be62-482c-8e4a-0fb499465cc5', 1105, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2313, N'4d0ca1c2-be62-482c-8e4a-0fb499465cc5', 1106, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2314, N'4d0ca1c2-be62-482c-8e4a-0fb499465cc5', 1107, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2315, N'4d0ca1c2-be62-482c-8e4a-0fb499465cc5', 1108, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2316, N'4d0ca1c2-be62-482c-8e4a-0fb499465cc5', 1109, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2317, N'4d0ca1c2-be62-482c-8e4a-0fb499465cc5', 1110, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2318, N'f93b5371-da6e-4af9-9033-44083e5758c4', 22, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2319, N'f93b5371-da6e-4af9-9033-44083e5758c4', 26, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2320, N'f93b5371-da6e-4af9-9033-44083e5758c4', 30, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2321, N'f93b5371-da6e-4af9-9033-44083e5758c4', 1063, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2322, N'f93b5371-da6e-4af9-9033-44083e5758c4', 1065, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2323, N'f93b5371-da6e-4af9-9033-44083e5758c4', 1066, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2324, N'f93b5371-da6e-4af9-9033-44083e5758c4', 1067, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2325, N'f93b5371-da6e-4af9-9033-44083e5758c4', 1068, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2326, N'f93b5371-da6e-4af9-9033-44083e5758c4', 1070, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2327, N'f93b5371-da6e-4af9-9033-44083e5758c4', 1071, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2328, N'f93b5371-da6e-4af9-9033-44083e5758c4', 1072, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2329, N'f93b5371-da6e-4af9-9033-44083e5758c4', 1073, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2330, N'f93b5371-da6e-4af9-9033-44083e5758c4', 1074, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2331, N'f93b5371-da6e-4af9-9033-44083e5758c4', 1077, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2332, N'f93b5371-da6e-4af9-9033-44083e5758c4', 1078, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2333, N'f93b5371-da6e-4af9-9033-44083e5758c4', 1079, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2334, N'f93b5371-da6e-4af9-9033-44083e5758c4', 1080, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2335, N'f93b5371-da6e-4af9-9033-44083e5758c4', 1081, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2336, N'f93b5371-da6e-4af9-9033-44083e5758c4', 1082, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2337, N'f93b5371-da6e-4af9-9033-44083e5758c4', 1083, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2338, N'f93b5371-da6e-4af9-9033-44083e5758c4', 1084, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2339, N'f93b5371-da6e-4af9-9033-44083e5758c4', 1085, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2340, N'f93b5371-da6e-4af9-9033-44083e5758c4', 1086, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2341, N'f93b5371-da6e-4af9-9033-44083e5758c4', 1087, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2342, N'f93b5371-da6e-4af9-9033-44083e5758c4', 1088, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2343, N'f93b5371-da6e-4af9-9033-44083e5758c4', 1089, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2344, N'f93b5371-da6e-4af9-9033-44083e5758c4', 1090, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2345, N'f93b5371-da6e-4af9-9033-44083e5758c4', 1091, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2346, N'f93b5371-da6e-4af9-9033-44083e5758c4', 1092, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2347, N'f93b5371-da6e-4af9-9033-44083e5758c4', 1093, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2348, N'f93b5371-da6e-4af9-9033-44083e5758c4', 1094, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2349, N'f93b5371-da6e-4af9-9033-44083e5758c4', 1095, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2350, N'f93b5371-da6e-4af9-9033-44083e5758c4', 1096, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2351, N'f93b5371-da6e-4af9-9033-44083e5758c4', 1099, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2352, N'f93b5371-da6e-4af9-9033-44083e5758c4', 1100, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2353, N'f93b5371-da6e-4af9-9033-44083e5758c4', 1101, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2354, N'f93b5371-da6e-4af9-9033-44083e5758c4', 1103, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2355, N'f93b5371-da6e-4af9-9033-44083e5758c4', 1104, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2356, N'f93b5371-da6e-4af9-9033-44083e5758c4', 1105, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2357, N'f93b5371-da6e-4af9-9033-44083e5758c4', 1106, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2358, N'f93b5371-da6e-4af9-9033-44083e5758c4', 1107, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2359, N'f93b5371-da6e-4af9-9033-44083e5758c4', 1108, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2360, N'f93b5371-da6e-4af9-9033-44083e5758c4', 1109, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2361, N'f93b5371-da6e-4af9-9033-44083e5758c4', 1110, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2362, N'9dcadbad-5f6a-4620-9cbe-40db670a0862', 22, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2363, N'9dcadbad-5f6a-4620-9cbe-40db670a0862', 26, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2364, N'9dcadbad-5f6a-4620-9cbe-40db670a0862', 30, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2365, N'9dcadbad-5f6a-4620-9cbe-40db670a0862', 1063, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2366, N'9dcadbad-5f6a-4620-9cbe-40db670a0862', 1065, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2367, N'9dcadbad-5f6a-4620-9cbe-40db670a0862', 1066, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2368, N'9dcadbad-5f6a-4620-9cbe-40db670a0862', 1067, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2369, N'9dcadbad-5f6a-4620-9cbe-40db670a0862', 1068, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2370, N'9dcadbad-5f6a-4620-9cbe-40db670a0862', 1070, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2371, N'9dcadbad-5f6a-4620-9cbe-40db670a0862', 1071, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2372, N'9dcadbad-5f6a-4620-9cbe-40db670a0862', 1072, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2373, N'9dcadbad-5f6a-4620-9cbe-40db670a0862', 1073, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2374, N'9dcadbad-5f6a-4620-9cbe-40db670a0862', 1074, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2375, N'9dcadbad-5f6a-4620-9cbe-40db670a0862', 1077, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2376, N'9dcadbad-5f6a-4620-9cbe-40db670a0862', 1078, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2377, N'9dcadbad-5f6a-4620-9cbe-40db670a0862', 1079, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2378, N'9dcadbad-5f6a-4620-9cbe-40db670a0862', 1080, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2379, N'9dcadbad-5f6a-4620-9cbe-40db670a0862', 1081, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2380, N'9dcadbad-5f6a-4620-9cbe-40db670a0862', 1082, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2381, N'9dcadbad-5f6a-4620-9cbe-40db670a0862', 1083, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2382, N'9dcadbad-5f6a-4620-9cbe-40db670a0862', 1084, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2383, N'9dcadbad-5f6a-4620-9cbe-40db670a0862', 1085, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2384, N'9dcadbad-5f6a-4620-9cbe-40db670a0862', 1086, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2385, N'9dcadbad-5f6a-4620-9cbe-40db670a0862', 1087, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2386, N'9dcadbad-5f6a-4620-9cbe-40db670a0862', 1088, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2387, N'9dcadbad-5f6a-4620-9cbe-40db670a0862', 1089, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2388, N'9dcadbad-5f6a-4620-9cbe-40db670a0862', 1090, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2389, N'9dcadbad-5f6a-4620-9cbe-40db670a0862', 1091, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2390, N'9dcadbad-5f6a-4620-9cbe-40db670a0862', 1092, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
GO
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2391, N'9dcadbad-5f6a-4620-9cbe-40db670a0862', 1093, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2392, N'9dcadbad-5f6a-4620-9cbe-40db670a0862', 1094, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2393, N'9dcadbad-5f6a-4620-9cbe-40db670a0862', 1095, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2394, N'9dcadbad-5f6a-4620-9cbe-40db670a0862', 1096, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2395, N'9dcadbad-5f6a-4620-9cbe-40db670a0862', 1099, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2396, N'9dcadbad-5f6a-4620-9cbe-40db670a0862', 1100, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2397, N'9dcadbad-5f6a-4620-9cbe-40db670a0862', 1101, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2398, N'9dcadbad-5f6a-4620-9cbe-40db670a0862', 1103, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2399, N'9dcadbad-5f6a-4620-9cbe-40db670a0862', 1104, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2400, N'9dcadbad-5f6a-4620-9cbe-40db670a0862', 1105, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2401, N'9dcadbad-5f6a-4620-9cbe-40db670a0862', 1106, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2402, N'9dcadbad-5f6a-4620-9cbe-40db670a0862', 1107, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2403, N'9dcadbad-5f6a-4620-9cbe-40db670a0862', 1108, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2404, N'9dcadbad-5f6a-4620-9cbe-40db670a0862', 1109, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2405, N'9dcadbad-5f6a-4620-9cbe-40db670a0862', 1110, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2406, N'07d82bbb-1537-4ee5-8385-b817c1e96622', 22, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2407, N'07d82bbb-1537-4ee5-8385-b817c1e96622', 26, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2408, N'07d82bbb-1537-4ee5-8385-b817c1e96622', 30, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2409, N'07d82bbb-1537-4ee5-8385-b817c1e96622', 1063, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2410, N'07d82bbb-1537-4ee5-8385-b817c1e96622', 1065, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2411, N'07d82bbb-1537-4ee5-8385-b817c1e96622', 1066, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2412, N'07d82bbb-1537-4ee5-8385-b817c1e96622', 1067, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2413, N'07d82bbb-1537-4ee5-8385-b817c1e96622', 1068, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2414, N'07d82bbb-1537-4ee5-8385-b817c1e96622', 1070, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2415, N'07d82bbb-1537-4ee5-8385-b817c1e96622', 1071, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2416, N'07d82bbb-1537-4ee5-8385-b817c1e96622', 1072, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2417, N'07d82bbb-1537-4ee5-8385-b817c1e96622', 1073, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2418, N'07d82bbb-1537-4ee5-8385-b817c1e96622', 1074, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2419, N'07d82bbb-1537-4ee5-8385-b817c1e96622', 1077, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2420, N'07d82bbb-1537-4ee5-8385-b817c1e96622', 1078, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2421, N'07d82bbb-1537-4ee5-8385-b817c1e96622', 1079, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2422, N'07d82bbb-1537-4ee5-8385-b817c1e96622', 1080, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2423, N'07d82bbb-1537-4ee5-8385-b817c1e96622', 1081, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2424, N'07d82bbb-1537-4ee5-8385-b817c1e96622', 1082, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2425, N'07d82bbb-1537-4ee5-8385-b817c1e96622', 1083, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2426, N'07d82bbb-1537-4ee5-8385-b817c1e96622', 1084, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2427, N'07d82bbb-1537-4ee5-8385-b817c1e96622', 1085, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2428, N'07d82bbb-1537-4ee5-8385-b817c1e96622', 1086, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2429, N'07d82bbb-1537-4ee5-8385-b817c1e96622', 1087, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2430, N'07d82bbb-1537-4ee5-8385-b817c1e96622', 1088, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2431, N'07d82bbb-1537-4ee5-8385-b817c1e96622', 1089, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2432, N'07d82bbb-1537-4ee5-8385-b817c1e96622', 1090, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2433, N'07d82bbb-1537-4ee5-8385-b817c1e96622', 1091, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2434, N'07d82bbb-1537-4ee5-8385-b817c1e96622', 1092, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2435, N'07d82bbb-1537-4ee5-8385-b817c1e96622', 1093, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2436, N'07d82bbb-1537-4ee5-8385-b817c1e96622', 1094, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2437, N'07d82bbb-1537-4ee5-8385-b817c1e96622', 1095, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2438, N'07d82bbb-1537-4ee5-8385-b817c1e96622', 1096, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2439, N'07d82bbb-1537-4ee5-8385-b817c1e96622', 1099, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2440, N'07d82bbb-1537-4ee5-8385-b817c1e96622', 1100, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2441, N'07d82bbb-1537-4ee5-8385-b817c1e96622', 1101, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2442, N'07d82bbb-1537-4ee5-8385-b817c1e96622', 1103, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2443, N'07d82bbb-1537-4ee5-8385-b817c1e96622', 1104, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2444, N'07d82bbb-1537-4ee5-8385-b817c1e96622', 1105, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2445, N'07d82bbb-1537-4ee5-8385-b817c1e96622', 1106, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2446, N'07d82bbb-1537-4ee5-8385-b817c1e96622', 1107, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2447, N'07d82bbb-1537-4ee5-8385-b817c1e96622', 1108, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2448, N'07d82bbb-1537-4ee5-8385-b817c1e96622', 1109, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2449, N'07d82bbb-1537-4ee5-8385-b817c1e96622', 1110, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2450, N'd32e7708-3ead-4ab9-8de0-05e965ec940e', 22, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2451, N'd32e7708-3ead-4ab9-8de0-05e965ec940e', 26, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2452, N'd32e7708-3ead-4ab9-8de0-05e965ec940e', 30, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2453, N'd32e7708-3ead-4ab9-8de0-05e965ec940e', 1063, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2454, N'd32e7708-3ead-4ab9-8de0-05e965ec940e', 1065, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2455, N'd32e7708-3ead-4ab9-8de0-05e965ec940e', 1066, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2456, N'd32e7708-3ead-4ab9-8de0-05e965ec940e', 1067, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2457, N'd32e7708-3ead-4ab9-8de0-05e965ec940e', 1068, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2458, N'd32e7708-3ead-4ab9-8de0-05e965ec940e', 1070, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2459, N'd32e7708-3ead-4ab9-8de0-05e965ec940e', 1071, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2460, N'd32e7708-3ead-4ab9-8de0-05e965ec940e', 1072, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2461, N'd32e7708-3ead-4ab9-8de0-05e965ec940e', 1073, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2462, N'd32e7708-3ead-4ab9-8de0-05e965ec940e', 1074, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2463, N'd32e7708-3ead-4ab9-8de0-05e965ec940e', 1077, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2464, N'd32e7708-3ead-4ab9-8de0-05e965ec940e', 1078, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2465, N'd32e7708-3ead-4ab9-8de0-05e965ec940e', 1079, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2466, N'd32e7708-3ead-4ab9-8de0-05e965ec940e', 1080, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2467, N'd32e7708-3ead-4ab9-8de0-05e965ec940e', 1081, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2468, N'd32e7708-3ead-4ab9-8de0-05e965ec940e', 1082, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2469, N'd32e7708-3ead-4ab9-8de0-05e965ec940e', 1083, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2470, N'd32e7708-3ead-4ab9-8de0-05e965ec940e', 1084, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2471, N'd32e7708-3ead-4ab9-8de0-05e965ec940e', 1085, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2472, N'd32e7708-3ead-4ab9-8de0-05e965ec940e', 1086, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2473, N'd32e7708-3ead-4ab9-8de0-05e965ec940e', 1087, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2474, N'd32e7708-3ead-4ab9-8de0-05e965ec940e', 1088, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2475, N'd32e7708-3ead-4ab9-8de0-05e965ec940e', 1089, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2476, N'd32e7708-3ead-4ab9-8de0-05e965ec940e', 1090, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2477, N'd32e7708-3ead-4ab9-8de0-05e965ec940e', 1091, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2478, N'd32e7708-3ead-4ab9-8de0-05e965ec940e', 1092, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2479, N'd32e7708-3ead-4ab9-8de0-05e965ec940e', 1093, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2480, N'd32e7708-3ead-4ab9-8de0-05e965ec940e', 1094, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2481, N'd32e7708-3ead-4ab9-8de0-05e965ec940e', 1095, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2482, N'd32e7708-3ead-4ab9-8de0-05e965ec940e', 1096, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2483, N'd32e7708-3ead-4ab9-8de0-05e965ec940e', 1099, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2484, N'd32e7708-3ead-4ab9-8de0-05e965ec940e', 1100, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2485, N'd32e7708-3ead-4ab9-8de0-05e965ec940e', 1101, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2486, N'd32e7708-3ead-4ab9-8de0-05e965ec940e', 1103, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2487, N'd32e7708-3ead-4ab9-8de0-05e965ec940e', 1104, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2488, N'd32e7708-3ead-4ab9-8de0-05e965ec940e', 1105, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2489, N'd32e7708-3ead-4ab9-8de0-05e965ec940e', 1106, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2490, N'd32e7708-3ead-4ab9-8de0-05e965ec940e', 1107, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
GO
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2491, N'd32e7708-3ead-4ab9-8de0-05e965ec940e', 1108, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2492, N'd32e7708-3ead-4ab9-8de0-05e965ec940e', 1109, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2493, N'd32e7708-3ead-4ab9-8de0-05e965ec940e', 1110, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2494, N'6c0a310b-75c9-436e-9b1a-22aabb05dbc8', 22, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2495, N'6c0a310b-75c9-436e-9b1a-22aabb05dbc8', 26, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2496, N'6c0a310b-75c9-436e-9b1a-22aabb05dbc8', 30, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2497, N'6c0a310b-75c9-436e-9b1a-22aabb05dbc8', 1063, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2498, N'6c0a310b-75c9-436e-9b1a-22aabb05dbc8', 1065, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2499, N'6c0a310b-75c9-436e-9b1a-22aabb05dbc8', 1066, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2500, N'6c0a310b-75c9-436e-9b1a-22aabb05dbc8', 1067, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2501, N'6c0a310b-75c9-436e-9b1a-22aabb05dbc8', 1068, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2502, N'6c0a310b-75c9-436e-9b1a-22aabb05dbc8', 1070, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2503, N'6c0a310b-75c9-436e-9b1a-22aabb05dbc8', 1071, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2504, N'6c0a310b-75c9-436e-9b1a-22aabb05dbc8', 1072, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2505, N'6c0a310b-75c9-436e-9b1a-22aabb05dbc8', 1073, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2506, N'6c0a310b-75c9-436e-9b1a-22aabb05dbc8', 1074, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2507, N'6c0a310b-75c9-436e-9b1a-22aabb05dbc8', 1077, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2508, N'6c0a310b-75c9-436e-9b1a-22aabb05dbc8', 1078, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2509, N'6c0a310b-75c9-436e-9b1a-22aabb05dbc8', 1079, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2510, N'6c0a310b-75c9-436e-9b1a-22aabb05dbc8', 1080, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2511, N'6c0a310b-75c9-436e-9b1a-22aabb05dbc8', 1081, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2512, N'6c0a310b-75c9-436e-9b1a-22aabb05dbc8', 1082, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2513, N'6c0a310b-75c9-436e-9b1a-22aabb05dbc8', 1083, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2514, N'6c0a310b-75c9-436e-9b1a-22aabb05dbc8', 1084, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2515, N'6c0a310b-75c9-436e-9b1a-22aabb05dbc8', 1085, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2516, N'6c0a310b-75c9-436e-9b1a-22aabb05dbc8', 1086, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2517, N'6c0a310b-75c9-436e-9b1a-22aabb05dbc8', 1087, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2518, N'6c0a310b-75c9-436e-9b1a-22aabb05dbc8', 1088, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2519, N'6c0a310b-75c9-436e-9b1a-22aabb05dbc8', 1089, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2520, N'6c0a310b-75c9-436e-9b1a-22aabb05dbc8', 1090, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2521, N'6c0a310b-75c9-436e-9b1a-22aabb05dbc8', 1091, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2522, N'6c0a310b-75c9-436e-9b1a-22aabb05dbc8', 1092, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2523, N'6c0a310b-75c9-436e-9b1a-22aabb05dbc8', 1093, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2524, N'6c0a310b-75c9-436e-9b1a-22aabb05dbc8', 1094, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2525, N'6c0a310b-75c9-436e-9b1a-22aabb05dbc8', 1095, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2526, N'6c0a310b-75c9-436e-9b1a-22aabb05dbc8', 1096, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2527, N'6c0a310b-75c9-436e-9b1a-22aabb05dbc8', 1099, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2528, N'6c0a310b-75c9-436e-9b1a-22aabb05dbc8', 1100, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2529, N'6c0a310b-75c9-436e-9b1a-22aabb05dbc8', 1101, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2530, N'6c0a310b-75c9-436e-9b1a-22aabb05dbc8', 1103, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2531, N'6c0a310b-75c9-436e-9b1a-22aabb05dbc8', 1104, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2532, N'6c0a310b-75c9-436e-9b1a-22aabb05dbc8', 1105, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2533, N'6c0a310b-75c9-436e-9b1a-22aabb05dbc8', 1106, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2534, N'6c0a310b-75c9-436e-9b1a-22aabb05dbc8', 1107, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2535, N'6c0a310b-75c9-436e-9b1a-22aabb05dbc8', 1108, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2536, N'6c0a310b-75c9-436e-9b1a-22aabb05dbc8', 1109, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2537, N'6c0a310b-75c9-436e-9b1a-22aabb05dbc8', 1110, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2538, N'd73f5285-b58d-4056-a1f7-97de0c36f16e', 22, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2539, N'd73f5285-b58d-4056-a1f7-97de0c36f16e', 26, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2540, N'd73f5285-b58d-4056-a1f7-97de0c36f16e', 30, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2541, N'd73f5285-b58d-4056-a1f7-97de0c36f16e', 1063, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2542, N'd73f5285-b58d-4056-a1f7-97de0c36f16e', 1065, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2543, N'd73f5285-b58d-4056-a1f7-97de0c36f16e', 1066, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2544, N'd73f5285-b58d-4056-a1f7-97de0c36f16e', 1067, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2545, N'd73f5285-b58d-4056-a1f7-97de0c36f16e', 1068, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2546, N'd73f5285-b58d-4056-a1f7-97de0c36f16e', 1070, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2547, N'd73f5285-b58d-4056-a1f7-97de0c36f16e', 1071, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2548, N'd73f5285-b58d-4056-a1f7-97de0c36f16e', 1072, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2549, N'd73f5285-b58d-4056-a1f7-97de0c36f16e', 1073, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2550, N'd73f5285-b58d-4056-a1f7-97de0c36f16e', 1074, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2551, N'd73f5285-b58d-4056-a1f7-97de0c36f16e', 1077, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2552, N'd73f5285-b58d-4056-a1f7-97de0c36f16e', 1078, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2553, N'd73f5285-b58d-4056-a1f7-97de0c36f16e', 1079, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2554, N'd73f5285-b58d-4056-a1f7-97de0c36f16e', 1080, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2555, N'd73f5285-b58d-4056-a1f7-97de0c36f16e', 1081, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2556, N'd73f5285-b58d-4056-a1f7-97de0c36f16e', 1082, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2557, N'd73f5285-b58d-4056-a1f7-97de0c36f16e', 1083, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2558, N'd73f5285-b58d-4056-a1f7-97de0c36f16e', 1084, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2559, N'd73f5285-b58d-4056-a1f7-97de0c36f16e', 1085, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2560, N'd73f5285-b58d-4056-a1f7-97de0c36f16e', 1086, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2561, N'd73f5285-b58d-4056-a1f7-97de0c36f16e', 1087, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2562, N'd73f5285-b58d-4056-a1f7-97de0c36f16e', 1088, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2563, N'd73f5285-b58d-4056-a1f7-97de0c36f16e', 1089, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2564, N'd73f5285-b58d-4056-a1f7-97de0c36f16e', 1090, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2565, N'd73f5285-b58d-4056-a1f7-97de0c36f16e', 1091, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2566, N'd73f5285-b58d-4056-a1f7-97de0c36f16e', 1092, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2567, N'd73f5285-b58d-4056-a1f7-97de0c36f16e', 1093, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2568, N'd73f5285-b58d-4056-a1f7-97de0c36f16e', 1094, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2569, N'd73f5285-b58d-4056-a1f7-97de0c36f16e', 1095, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2570, N'd73f5285-b58d-4056-a1f7-97de0c36f16e', 1096, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2571, N'd73f5285-b58d-4056-a1f7-97de0c36f16e', 1099, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2572, N'd73f5285-b58d-4056-a1f7-97de0c36f16e', 1100, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2573, N'd73f5285-b58d-4056-a1f7-97de0c36f16e', 1101, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2574, N'd73f5285-b58d-4056-a1f7-97de0c36f16e', 1103, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2575, N'd73f5285-b58d-4056-a1f7-97de0c36f16e', 1104, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2576, N'd73f5285-b58d-4056-a1f7-97de0c36f16e', 1105, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2577, N'd73f5285-b58d-4056-a1f7-97de0c36f16e', 1106, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2578, N'd73f5285-b58d-4056-a1f7-97de0c36f16e', 1107, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2579, N'd73f5285-b58d-4056-a1f7-97de0c36f16e', 1108, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2580, N'd73f5285-b58d-4056-a1f7-97de0c36f16e', 1109, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2581, N'd73f5285-b58d-4056-a1f7-97de0c36f16e', 1110, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2582, N'1e5240e6-48b9-4673-928f-d583a82bb1bf', 22, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2583, N'1e5240e6-48b9-4673-928f-d583a82bb1bf', 26, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2584, N'1e5240e6-48b9-4673-928f-d583a82bb1bf', 30, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2585, N'1e5240e6-48b9-4673-928f-d583a82bb1bf', 1063, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2586, N'1e5240e6-48b9-4673-928f-d583a82bb1bf', 1065, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2587, N'1e5240e6-48b9-4673-928f-d583a82bb1bf', 1066, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2588, N'1e5240e6-48b9-4673-928f-d583a82bb1bf', 1067, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2589, N'1e5240e6-48b9-4673-928f-d583a82bb1bf', 1068, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2590, N'1e5240e6-48b9-4673-928f-d583a82bb1bf', 1070, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
GO
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2591, N'1e5240e6-48b9-4673-928f-d583a82bb1bf', 1071, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2592, N'1e5240e6-48b9-4673-928f-d583a82bb1bf', 1072, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2593, N'1e5240e6-48b9-4673-928f-d583a82bb1bf', 1073, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2594, N'1e5240e6-48b9-4673-928f-d583a82bb1bf', 1074, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2595, N'1e5240e6-48b9-4673-928f-d583a82bb1bf', 1077, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2596, N'1e5240e6-48b9-4673-928f-d583a82bb1bf', 1078, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2597, N'1e5240e6-48b9-4673-928f-d583a82bb1bf', 1079, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2598, N'1e5240e6-48b9-4673-928f-d583a82bb1bf', 1080, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2599, N'1e5240e6-48b9-4673-928f-d583a82bb1bf', 1081, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2600, N'1e5240e6-48b9-4673-928f-d583a82bb1bf', 1082, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2601, N'1e5240e6-48b9-4673-928f-d583a82bb1bf', 1083, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2602, N'1e5240e6-48b9-4673-928f-d583a82bb1bf', 1084, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2603, N'1e5240e6-48b9-4673-928f-d583a82bb1bf', 1085, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2604, N'1e5240e6-48b9-4673-928f-d583a82bb1bf', 1086, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2605, N'1e5240e6-48b9-4673-928f-d583a82bb1bf', 1087, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2606, N'1e5240e6-48b9-4673-928f-d583a82bb1bf', 1088, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2607, N'1e5240e6-48b9-4673-928f-d583a82bb1bf', 1089, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2608, N'1e5240e6-48b9-4673-928f-d583a82bb1bf', 1090, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2609, N'1e5240e6-48b9-4673-928f-d583a82bb1bf', 1091, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2610, N'1e5240e6-48b9-4673-928f-d583a82bb1bf', 1092, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2611, N'1e5240e6-48b9-4673-928f-d583a82bb1bf', 1093, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2612, N'1e5240e6-48b9-4673-928f-d583a82bb1bf', 1094, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2613, N'1e5240e6-48b9-4673-928f-d583a82bb1bf', 1095, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2614, N'1e5240e6-48b9-4673-928f-d583a82bb1bf', 1096, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2615, N'1e5240e6-48b9-4673-928f-d583a82bb1bf', 1099, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2616, N'1e5240e6-48b9-4673-928f-d583a82bb1bf', 1100, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2617, N'1e5240e6-48b9-4673-928f-d583a82bb1bf', 1101, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2618, N'1e5240e6-48b9-4673-928f-d583a82bb1bf', 1103, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2619, N'1e5240e6-48b9-4673-928f-d583a82bb1bf', 1104, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2620, N'1e5240e6-48b9-4673-928f-d583a82bb1bf', 1105, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2621, N'1e5240e6-48b9-4673-928f-d583a82bb1bf', 1106, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2622, N'1e5240e6-48b9-4673-928f-d583a82bb1bf', 1107, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2623, N'1e5240e6-48b9-4673-928f-d583a82bb1bf', 1108, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2624, N'1e5240e6-48b9-4673-928f-d583a82bb1bf', 1109, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2625, N'1e5240e6-48b9-4673-928f-d583a82bb1bf', 1110, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2626, N'15d058c2-2bbb-46fe-87bd-09fa835d10c1', 22, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2627, N'15d058c2-2bbb-46fe-87bd-09fa835d10c1', 26, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2628, N'15d058c2-2bbb-46fe-87bd-09fa835d10c1', 30, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2629, N'15d058c2-2bbb-46fe-87bd-09fa835d10c1', 1063, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2630, N'15d058c2-2bbb-46fe-87bd-09fa835d10c1', 1065, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2631, N'15d058c2-2bbb-46fe-87bd-09fa835d10c1', 1066, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2632, N'15d058c2-2bbb-46fe-87bd-09fa835d10c1', 1067, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2633, N'15d058c2-2bbb-46fe-87bd-09fa835d10c1', 1068, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2634, N'15d058c2-2bbb-46fe-87bd-09fa835d10c1', 1070, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2635, N'15d058c2-2bbb-46fe-87bd-09fa835d10c1', 1071, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2636, N'15d058c2-2bbb-46fe-87bd-09fa835d10c1', 1072, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2637, N'15d058c2-2bbb-46fe-87bd-09fa835d10c1', 1073, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2638, N'15d058c2-2bbb-46fe-87bd-09fa835d10c1', 1074, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2639, N'15d058c2-2bbb-46fe-87bd-09fa835d10c1', 1077, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2640, N'15d058c2-2bbb-46fe-87bd-09fa835d10c1', 1078, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2641, N'15d058c2-2bbb-46fe-87bd-09fa835d10c1', 1079, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2642, N'15d058c2-2bbb-46fe-87bd-09fa835d10c1', 1080, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2643, N'15d058c2-2bbb-46fe-87bd-09fa835d10c1', 1081, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2644, N'15d058c2-2bbb-46fe-87bd-09fa835d10c1', 1082, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2645, N'15d058c2-2bbb-46fe-87bd-09fa835d10c1', 1083, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2646, N'15d058c2-2bbb-46fe-87bd-09fa835d10c1', 1084, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2647, N'15d058c2-2bbb-46fe-87bd-09fa835d10c1', 1085, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2648, N'15d058c2-2bbb-46fe-87bd-09fa835d10c1', 1086, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2649, N'15d058c2-2bbb-46fe-87bd-09fa835d10c1', 1087, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2650, N'15d058c2-2bbb-46fe-87bd-09fa835d10c1', 1088, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2651, N'15d058c2-2bbb-46fe-87bd-09fa835d10c1', 1089, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2652, N'15d058c2-2bbb-46fe-87bd-09fa835d10c1', 1090, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2653, N'15d058c2-2bbb-46fe-87bd-09fa835d10c1', 1091, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2654, N'15d058c2-2bbb-46fe-87bd-09fa835d10c1', 1092, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2655, N'15d058c2-2bbb-46fe-87bd-09fa835d10c1', 1093, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2656, N'15d058c2-2bbb-46fe-87bd-09fa835d10c1', 1094, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2657, N'15d058c2-2bbb-46fe-87bd-09fa835d10c1', 1095, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2658, N'15d058c2-2bbb-46fe-87bd-09fa835d10c1', 1096, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2659, N'15d058c2-2bbb-46fe-87bd-09fa835d10c1', 1099, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2660, N'15d058c2-2bbb-46fe-87bd-09fa835d10c1', 1100, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2661, N'15d058c2-2bbb-46fe-87bd-09fa835d10c1', 1101, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2662, N'15d058c2-2bbb-46fe-87bd-09fa835d10c1', 1103, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2663, N'15d058c2-2bbb-46fe-87bd-09fa835d10c1', 1104, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2664, N'15d058c2-2bbb-46fe-87bd-09fa835d10c1', 1105, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2665, N'15d058c2-2bbb-46fe-87bd-09fa835d10c1', 1106, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2666, N'15d058c2-2bbb-46fe-87bd-09fa835d10c1', 1107, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2667, N'15d058c2-2bbb-46fe-87bd-09fa835d10c1', 1108, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2668, N'15d058c2-2bbb-46fe-87bd-09fa835d10c1', 1109, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2669, N'15d058c2-2bbb-46fe-87bd-09fa835d10c1', 1110, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2670, N'582cb132-4d53-4df3-a730-124d1a3f34d5', 22, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2671, N'582cb132-4d53-4df3-a730-124d1a3f34d5', 26, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2672, N'582cb132-4d53-4df3-a730-124d1a3f34d5', 30, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2673, N'582cb132-4d53-4df3-a730-124d1a3f34d5', 1063, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2674, N'582cb132-4d53-4df3-a730-124d1a3f34d5', 1065, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2675, N'582cb132-4d53-4df3-a730-124d1a3f34d5', 1066, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2676, N'582cb132-4d53-4df3-a730-124d1a3f34d5', 1067, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2677, N'582cb132-4d53-4df3-a730-124d1a3f34d5', 1068, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2678, N'582cb132-4d53-4df3-a730-124d1a3f34d5', 1070, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2679, N'582cb132-4d53-4df3-a730-124d1a3f34d5', 1071, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2680, N'582cb132-4d53-4df3-a730-124d1a3f34d5', 1072, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2681, N'582cb132-4d53-4df3-a730-124d1a3f34d5', 1073, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2682, N'582cb132-4d53-4df3-a730-124d1a3f34d5', 1074, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2683, N'582cb132-4d53-4df3-a730-124d1a3f34d5', 1077, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2684, N'582cb132-4d53-4df3-a730-124d1a3f34d5', 1078, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2685, N'582cb132-4d53-4df3-a730-124d1a3f34d5', 1079, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2686, N'582cb132-4d53-4df3-a730-124d1a3f34d5', 1080, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2687, N'582cb132-4d53-4df3-a730-124d1a3f34d5', 1081, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2688, N'582cb132-4d53-4df3-a730-124d1a3f34d5', 1082, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2689, N'582cb132-4d53-4df3-a730-124d1a3f34d5', 1083, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2690, N'582cb132-4d53-4df3-a730-124d1a3f34d5', 1084, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
GO
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2691, N'582cb132-4d53-4df3-a730-124d1a3f34d5', 1085, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2692, N'582cb132-4d53-4df3-a730-124d1a3f34d5', 1086, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2693, N'582cb132-4d53-4df3-a730-124d1a3f34d5', 1087, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2694, N'582cb132-4d53-4df3-a730-124d1a3f34d5', 1088, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2695, N'582cb132-4d53-4df3-a730-124d1a3f34d5', 1089, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2696, N'582cb132-4d53-4df3-a730-124d1a3f34d5', 1090, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2697, N'582cb132-4d53-4df3-a730-124d1a3f34d5', 1091, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2698, N'582cb132-4d53-4df3-a730-124d1a3f34d5', 1092, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2699, N'582cb132-4d53-4df3-a730-124d1a3f34d5', 1093, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2700, N'582cb132-4d53-4df3-a730-124d1a3f34d5', 1094, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2701, N'582cb132-4d53-4df3-a730-124d1a3f34d5', 1095, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2702, N'582cb132-4d53-4df3-a730-124d1a3f34d5', 1096, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2703, N'582cb132-4d53-4df3-a730-124d1a3f34d5', 1099, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2704, N'582cb132-4d53-4df3-a730-124d1a3f34d5', 1100, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2705, N'582cb132-4d53-4df3-a730-124d1a3f34d5', 1101, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2706, N'582cb132-4d53-4df3-a730-124d1a3f34d5', 1103, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2707, N'582cb132-4d53-4df3-a730-124d1a3f34d5', 1104, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2708, N'582cb132-4d53-4df3-a730-124d1a3f34d5', 1105, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2709, N'582cb132-4d53-4df3-a730-124d1a3f34d5', 1106, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2710, N'582cb132-4d53-4df3-a730-124d1a3f34d5', 1107, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2711, N'582cb132-4d53-4df3-a730-124d1a3f34d5', 1108, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2712, N'582cb132-4d53-4df3-a730-124d1a3f34d5', 1109, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2713, N'582cb132-4d53-4df3-a730-124d1a3f34d5', 1110, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2714, N'503b6137-8a22-40f5-ad09-7c15e4dd355a', 22, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2715, N'503b6137-8a22-40f5-ad09-7c15e4dd355a', 26, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2716, N'503b6137-8a22-40f5-ad09-7c15e4dd355a', 30, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2717, N'503b6137-8a22-40f5-ad09-7c15e4dd355a', 1063, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2718, N'503b6137-8a22-40f5-ad09-7c15e4dd355a', 1065, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2719, N'503b6137-8a22-40f5-ad09-7c15e4dd355a', 1066, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2720, N'503b6137-8a22-40f5-ad09-7c15e4dd355a', 1067, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2721, N'503b6137-8a22-40f5-ad09-7c15e4dd355a', 1068, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2722, N'503b6137-8a22-40f5-ad09-7c15e4dd355a', 1070, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2723, N'503b6137-8a22-40f5-ad09-7c15e4dd355a', 1071, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2724, N'503b6137-8a22-40f5-ad09-7c15e4dd355a', 1072, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2725, N'503b6137-8a22-40f5-ad09-7c15e4dd355a', 1073, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2726, N'503b6137-8a22-40f5-ad09-7c15e4dd355a', 1074, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2727, N'503b6137-8a22-40f5-ad09-7c15e4dd355a', 1077, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2728, N'503b6137-8a22-40f5-ad09-7c15e4dd355a', 1078, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2729, N'503b6137-8a22-40f5-ad09-7c15e4dd355a', 1079, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2730, N'503b6137-8a22-40f5-ad09-7c15e4dd355a', 1080, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2731, N'503b6137-8a22-40f5-ad09-7c15e4dd355a', 1081, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2732, N'503b6137-8a22-40f5-ad09-7c15e4dd355a', 1082, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2733, N'503b6137-8a22-40f5-ad09-7c15e4dd355a', 1083, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2734, N'503b6137-8a22-40f5-ad09-7c15e4dd355a', 1084, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2735, N'503b6137-8a22-40f5-ad09-7c15e4dd355a', 1085, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2736, N'503b6137-8a22-40f5-ad09-7c15e4dd355a', 1086, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2737, N'503b6137-8a22-40f5-ad09-7c15e4dd355a', 1087, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2738, N'503b6137-8a22-40f5-ad09-7c15e4dd355a', 1088, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2739, N'503b6137-8a22-40f5-ad09-7c15e4dd355a', 1089, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2740, N'503b6137-8a22-40f5-ad09-7c15e4dd355a', 1090, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2741, N'503b6137-8a22-40f5-ad09-7c15e4dd355a', 1091, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2742, N'503b6137-8a22-40f5-ad09-7c15e4dd355a', 1092, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2743, N'503b6137-8a22-40f5-ad09-7c15e4dd355a', 1093, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2744, N'503b6137-8a22-40f5-ad09-7c15e4dd355a', 1094, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2745, N'503b6137-8a22-40f5-ad09-7c15e4dd355a', 1095, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2746, N'503b6137-8a22-40f5-ad09-7c15e4dd355a', 1096, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2747, N'503b6137-8a22-40f5-ad09-7c15e4dd355a', 1099, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2748, N'503b6137-8a22-40f5-ad09-7c15e4dd355a', 1100, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2749, N'503b6137-8a22-40f5-ad09-7c15e4dd355a', 1101, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2750, N'503b6137-8a22-40f5-ad09-7c15e4dd355a', 1103, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2751, N'503b6137-8a22-40f5-ad09-7c15e4dd355a', 1104, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2752, N'503b6137-8a22-40f5-ad09-7c15e4dd355a', 1105, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2753, N'503b6137-8a22-40f5-ad09-7c15e4dd355a', 1106, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2754, N'503b6137-8a22-40f5-ad09-7c15e4dd355a', 1107, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2755, N'503b6137-8a22-40f5-ad09-7c15e4dd355a', 1108, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2756, N'503b6137-8a22-40f5-ad09-7c15e4dd355a', 1109, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2757, N'503b6137-8a22-40f5-ad09-7c15e4dd355a', 1110, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2758, N'245354b4-ad8d-4e95-88c0-fec91c15c179', 22, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2759, N'245354b4-ad8d-4e95-88c0-fec91c15c179', 26, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2760, N'245354b4-ad8d-4e95-88c0-fec91c15c179', 30, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2761, N'245354b4-ad8d-4e95-88c0-fec91c15c179', 1063, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2762, N'245354b4-ad8d-4e95-88c0-fec91c15c179', 1065, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2763, N'245354b4-ad8d-4e95-88c0-fec91c15c179', 1066, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2764, N'245354b4-ad8d-4e95-88c0-fec91c15c179', 1067, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2765, N'245354b4-ad8d-4e95-88c0-fec91c15c179', 1068, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2766, N'245354b4-ad8d-4e95-88c0-fec91c15c179', 1070, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2767, N'245354b4-ad8d-4e95-88c0-fec91c15c179', 1071, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2768, N'245354b4-ad8d-4e95-88c0-fec91c15c179', 1072, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2769, N'245354b4-ad8d-4e95-88c0-fec91c15c179', 1073, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2770, N'245354b4-ad8d-4e95-88c0-fec91c15c179', 1074, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2771, N'245354b4-ad8d-4e95-88c0-fec91c15c179', 1077, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2772, N'245354b4-ad8d-4e95-88c0-fec91c15c179', 1078, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2773, N'245354b4-ad8d-4e95-88c0-fec91c15c179', 1079, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2774, N'245354b4-ad8d-4e95-88c0-fec91c15c179', 1080, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2775, N'245354b4-ad8d-4e95-88c0-fec91c15c179', 1081, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2776, N'245354b4-ad8d-4e95-88c0-fec91c15c179', 1082, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2777, N'245354b4-ad8d-4e95-88c0-fec91c15c179', 1083, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2778, N'245354b4-ad8d-4e95-88c0-fec91c15c179', 1084, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2779, N'245354b4-ad8d-4e95-88c0-fec91c15c179', 1085, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2780, N'245354b4-ad8d-4e95-88c0-fec91c15c179', 1086, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2781, N'245354b4-ad8d-4e95-88c0-fec91c15c179', 1087, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2782, N'245354b4-ad8d-4e95-88c0-fec91c15c179', 1088, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2783, N'245354b4-ad8d-4e95-88c0-fec91c15c179', 1089, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2784, N'245354b4-ad8d-4e95-88c0-fec91c15c179', 1090, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2785, N'245354b4-ad8d-4e95-88c0-fec91c15c179', 1091, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2786, N'245354b4-ad8d-4e95-88c0-fec91c15c179', 1092, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2787, N'245354b4-ad8d-4e95-88c0-fec91c15c179', 1093, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2788, N'245354b4-ad8d-4e95-88c0-fec91c15c179', 1094, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2789, N'245354b4-ad8d-4e95-88c0-fec91c15c179', 1095, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2790, N'245354b4-ad8d-4e95-88c0-fec91c15c179', 1096, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
GO
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2791, N'245354b4-ad8d-4e95-88c0-fec91c15c179', 1099, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2792, N'245354b4-ad8d-4e95-88c0-fec91c15c179', 1100, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2793, N'245354b4-ad8d-4e95-88c0-fec91c15c179', 1101, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2794, N'245354b4-ad8d-4e95-88c0-fec91c15c179', 1103, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2795, N'245354b4-ad8d-4e95-88c0-fec91c15c179', 1104, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2796, N'245354b4-ad8d-4e95-88c0-fec91c15c179', 1105, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2797, N'245354b4-ad8d-4e95-88c0-fec91c15c179', 1106, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2798, N'245354b4-ad8d-4e95-88c0-fec91c15c179', 1107, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2799, N'245354b4-ad8d-4e95-88c0-fec91c15c179', 1108, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2800, N'245354b4-ad8d-4e95-88c0-fec91c15c179', 1109, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2801, N'245354b4-ad8d-4e95-88c0-fec91c15c179', 1110, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2802, N'f92d9dc5-c258-45a4-9e16-f54580cdffe6', 22, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2803, N'f92d9dc5-c258-45a4-9e16-f54580cdffe6', 26, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2804, N'f92d9dc5-c258-45a4-9e16-f54580cdffe6', 30, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2805, N'f92d9dc5-c258-45a4-9e16-f54580cdffe6', 1063, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2806, N'f92d9dc5-c258-45a4-9e16-f54580cdffe6', 1065, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2807, N'f92d9dc5-c258-45a4-9e16-f54580cdffe6', 1066, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2808, N'f92d9dc5-c258-45a4-9e16-f54580cdffe6', 1067, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2809, N'f92d9dc5-c258-45a4-9e16-f54580cdffe6', 1068, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2810, N'f92d9dc5-c258-45a4-9e16-f54580cdffe6', 1070, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2811, N'f92d9dc5-c258-45a4-9e16-f54580cdffe6', 1071, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2812, N'f92d9dc5-c258-45a4-9e16-f54580cdffe6', 1072, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2813, N'f92d9dc5-c258-45a4-9e16-f54580cdffe6', 1073, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2814, N'f92d9dc5-c258-45a4-9e16-f54580cdffe6', 1074, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2815, N'f92d9dc5-c258-45a4-9e16-f54580cdffe6', 1077, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2816, N'f92d9dc5-c258-45a4-9e16-f54580cdffe6', 1078, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2817, N'f92d9dc5-c258-45a4-9e16-f54580cdffe6', 1079, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2818, N'f92d9dc5-c258-45a4-9e16-f54580cdffe6', 1080, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2819, N'f92d9dc5-c258-45a4-9e16-f54580cdffe6', 1081, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2820, N'f92d9dc5-c258-45a4-9e16-f54580cdffe6', 1082, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2821, N'f92d9dc5-c258-45a4-9e16-f54580cdffe6', 1083, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2822, N'f92d9dc5-c258-45a4-9e16-f54580cdffe6', 1084, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2823, N'f92d9dc5-c258-45a4-9e16-f54580cdffe6', 1085, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2824, N'f92d9dc5-c258-45a4-9e16-f54580cdffe6', 1086, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2825, N'f92d9dc5-c258-45a4-9e16-f54580cdffe6', 1087, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2826, N'f92d9dc5-c258-45a4-9e16-f54580cdffe6', 1088, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2827, N'f92d9dc5-c258-45a4-9e16-f54580cdffe6', 1089, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2828, N'f92d9dc5-c258-45a4-9e16-f54580cdffe6', 1090, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2829, N'f92d9dc5-c258-45a4-9e16-f54580cdffe6', 1091, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2830, N'f92d9dc5-c258-45a4-9e16-f54580cdffe6', 1092, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2831, N'f92d9dc5-c258-45a4-9e16-f54580cdffe6', 1093, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2832, N'f92d9dc5-c258-45a4-9e16-f54580cdffe6', 1094, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2833, N'f92d9dc5-c258-45a4-9e16-f54580cdffe6', 1095, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2834, N'f92d9dc5-c258-45a4-9e16-f54580cdffe6', 1096, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2835, N'f92d9dc5-c258-45a4-9e16-f54580cdffe6', 1099, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2836, N'f92d9dc5-c258-45a4-9e16-f54580cdffe6', 1100, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2837, N'f92d9dc5-c258-45a4-9e16-f54580cdffe6', 1101, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2838, N'f92d9dc5-c258-45a4-9e16-f54580cdffe6', 1103, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2839, N'f92d9dc5-c258-45a4-9e16-f54580cdffe6', 1104, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2840, N'f92d9dc5-c258-45a4-9e16-f54580cdffe6', 1105, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2841, N'f92d9dc5-c258-45a4-9e16-f54580cdffe6', 1106, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2842, N'f92d9dc5-c258-45a4-9e16-f54580cdffe6', 1107, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2843, N'f92d9dc5-c258-45a4-9e16-f54580cdffe6', 1108, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2844, N'f92d9dc5-c258-45a4-9e16-f54580cdffe6', 1109, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2845, N'f92d9dc5-c258-45a4-9e16-f54580cdffe6', 1110, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2846, N'f3626a35-4112-4bc7-925b-d31f196c9dba', 22, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2847, N'f3626a35-4112-4bc7-925b-d31f196c9dba', 26, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2848, N'f3626a35-4112-4bc7-925b-d31f196c9dba', 30, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2849, N'f3626a35-4112-4bc7-925b-d31f196c9dba', 1063, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2850, N'f3626a35-4112-4bc7-925b-d31f196c9dba', 1065, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2851, N'f3626a35-4112-4bc7-925b-d31f196c9dba', 1066, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2852, N'f3626a35-4112-4bc7-925b-d31f196c9dba', 1067, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2853, N'f3626a35-4112-4bc7-925b-d31f196c9dba', 1068, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2854, N'f3626a35-4112-4bc7-925b-d31f196c9dba', 1070, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2855, N'f3626a35-4112-4bc7-925b-d31f196c9dba', 1071, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2856, N'f3626a35-4112-4bc7-925b-d31f196c9dba', 1072, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2857, N'f3626a35-4112-4bc7-925b-d31f196c9dba', 1073, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2858, N'f3626a35-4112-4bc7-925b-d31f196c9dba', 1074, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2859, N'f3626a35-4112-4bc7-925b-d31f196c9dba', 1077, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2860, N'f3626a35-4112-4bc7-925b-d31f196c9dba', 1078, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2861, N'f3626a35-4112-4bc7-925b-d31f196c9dba', 1079, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2862, N'f3626a35-4112-4bc7-925b-d31f196c9dba', 1080, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2863, N'f3626a35-4112-4bc7-925b-d31f196c9dba', 1081, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2864, N'f3626a35-4112-4bc7-925b-d31f196c9dba', 1082, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2865, N'f3626a35-4112-4bc7-925b-d31f196c9dba', 1083, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2866, N'f3626a35-4112-4bc7-925b-d31f196c9dba', 1084, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2867, N'f3626a35-4112-4bc7-925b-d31f196c9dba', 1085, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2868, N'f3626a35-4112-4bc7-925b-d31f196c9dba', 1086, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2869, N'f3626a35-4112-4bc7-925b-d31f196c9dba', 1087, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2870, N'f3626a35-4112-4bc7-925b-d31f196c9dba', 1088, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2871, N'f3626a35-4112-4bc7-925b-d31f196c9dba', 1089, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2872, N'f3626a35-4112-4bc7-925b-d31f196c9dba', 1090, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2873, N'f3626a35-4112-4bc7-925b-d31f196c9dba', 1091, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2874, N'f3626a35-4112-4bc7-925b-d31f196c9dba', 1092, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2875, N'f3626a35-4112-4bc7-925b-d31f196c9dba', 1093, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2876, N'f3626a35-4112-4bc7-925b-d31f196c9dba', 1094, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2877, N'f3626a35-4112-4bc7-925b-d31f196c9dba', 1095, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2878, N'f3626a35-4112-4bc7-925b-d31f196c9dba', 1096, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2879, N'f3626a35-4112-4bc7-925b-d31f196c9dba', 1099, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2880, N'f3626a35-4112-4bc7-925b-d31f196c9dba', 1100, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2881, N'f3626a35-4112-4bc7-925b-d31f196c9dba', 1101, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2882, N'f3626a35-4112-4bc7-925b-d31f196c9dba', 1103, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2883, N'f3626a35-4112-4bc7-925b-d31f196c9dba', 1104, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2884, N'f3626a35-4112-4bc7-925b-d31f196c9dba', 1105, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2885, N'f3626a35-4112-4bc7-925b-d31f196c9dba', 1106, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2886, N'f3626a35-4112-4bc7-925b-d31f196c9dba', 1107, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2887, N'f3626a35-4112-4bc7-925b-d31f196c9dba', 1108, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2888, N'f3626a35-4112-4bc7-925b-d31f196c9dba', 1109, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2889, N'f3626a35-4112-4bc7-925b-d31f196c9dba', 1110, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2890, N'cb08efa4-5aea-49a1-a82b-5876a0c6c428', 22, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
GO
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2891, N'cb08efa4-5aea-49a1-a82b-5876a0c6c428', 26, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2892, N'cb08efa4-5aea-49a1-a82b-5876a0c6c428', 30, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2893, N'cb08efa4-5aea-49a1-a82b-5876a0c6c428', 1063, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2894, N'cb08efa4-5aea-49a1-a82b-5876a0c6c428', 1065, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2895, N'cb08efa4-5aea-49a1-a82b-5876a0c6c428', 1066, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2896, N'cb08efa4-5aea-49a1-a82b-5876a0c6c428', 1067, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2897, N'cb08efa4-5aea-49a1-a82b-5876a0c6c428', 1068, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2898, N'cb08efa4-5aea-49a1-a82b-5876a0c6c428', 1070, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2899, N'cb08efa4-5aea-49a1-a82b-5876a0c6c428', 1071, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2900, N'cb08efa4-5aea-49a1-a82b-5876a0c6c428', 1072, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2901, N'cb08efa4-5aea-49a1-a82b-5876a0c6c428', 1073, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2902, N'cb08efa4-5aea-49a1-a82b-5876a0c6c428', 1074, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2903, N'cb08efa4-5aea-49a1-a82b-5876a0c6c428', 1077, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2904, N'cb08efa4-5aea-49a1-a82b-5876a0c6c428', 1078, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2905, N'cb08efa4-5aea-49a1-a82b-5876a0c6c428', 1079, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2906, N'cb08efa4-5aea-49a1-a82b-5876a0c6c428', 1080, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2907, N'cb08efa4-5aea-49a1-a82b-5876a0c6c428', 1081, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2908, N'cb08efa4-5aea-49a1-a82b-5876a0c6c428', 1082, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2909, N'cb08efa4-5aea-49a1-a82b-5876a0c6c428', 1083, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2910, N'cb08efa4-5aea-49a1-a82b-5876a0c6c428', 1084, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2911, N'cb08efa4-5aea-49a1-a82b-5876a0c6c428', 1085, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2912, N'cb08efa4-5aea-49a1-a82b-5876a0c6c428', 1086, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2913, N'cb08efa4-5aea-49a1-a82b-5876a0c6c428', 1087, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2914, N'cb08efa4-5aea-49a1-a82b-5876a0c6c428', 1088, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2915, N'cb08efa4-5aea-49a1-a82b-5876a0c6c428', 1089, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2916, N'cb08efa4-5aea-49a1-a82b-5876a0c6c428', 1090, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2917, N'cb08efa4-5aea-49a1-a82b-5876a0c6c428', 1091, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2918, N'cb08efa4-5aea-49a1-a82b-5876a0c6c428', 1092, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2919, N'cb08efa4-5aea-49a1-a82b-5876a0c6c428', 1093, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2920, N'cb08efa4-5aea-49a1-a82b-5876a0c6c428', 1094, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2921, N'cb08efa4-5aea-49a1-a82b-5876a0c6c428', 1095, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2922, N'cb08efa4-5aea-49a1-a82b-5876a0c6c428', 1096, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2923, N'cb08efa4-5aea-49a1-a82b-5876a0c6c428', 1099, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2924, N'cb08efa4-5aea-49a1-a82b-5876a0c6c428', 1100, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2925, N'cb08efa4-5aea-49a1-a82b-5876a0c6c428', 1101, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2926, N'cb08efa4-5aea-49a1-a82b-5876a0c6c428', 1103, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2927, N'cb08efa4-5aea-49a1-a82b-5876a0c6c428', 1104, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2928, N'cb08efa4-5aea-49a1-a82b-5876a0c6c428', 1105, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2929, N'cb08efa4-5aea-49a1-a82b-5876a0c6c428', 1106, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2930, N'cb08efa4-5aea-49a1-a82b-5876a0c6c428', 1107, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2931, N'cb08efa4-5aea-49a1-a82b-5876a0c6c428', 1108, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2932, N'cb08efa4-5aea-49a1-a82b-5876a0c6c428', 1109, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2933, N'cb08efa4-5aea-49a1-a82b-5876a0c6c428', 1110, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2934, N'8edcc91b-dedd-45c1-a2e0-37543fdf58b3', 22, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2935, N'8edcc91b-dedd-45c1-a2e0-37543fdf58b3', 26, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2936, N'8edcc91b-dedd-45c1-a2e0-37543fdf58b3', 30, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2937, N'8edcc91b-dedd-45c1-a2e0-37543fdf58b3', 1063, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2938, N'8edcc91b-dedd-45c1-a2e0-37543fdf58b3', 1065, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2939, N'8edcc91b-dedd-45c1-a2e0-37543fdf58b3', 1066, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2940, N'8edcc91b-dedd-45c1-a2e0-37543fdf58b3', 1067, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2941, N'8edcc91b-dedd-45c1-a2e0-37543fdf58b3', 1068, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2942, N'8edcc91b-dedd-45c1-a2e0-37543fdf58b3', 1070, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2943, N'8edcc91b-dedd-45c1-a2e0-37543fdf58b3', 1071, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2944, N'8edcc91b-dedd-45c1-a2e0-37543fdf58b3', 1072, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2945, N'8edcc91b-dedd-45c1-a2e0-37543fdf58b3', 1073, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2946, N'8edcc91b-dedd-45c1-a2e0-37543fdf58b3', 1074, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2947, N'8edcc91b-dedd-45c1-a2e0-37543fdf58b3', 1077, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2948, N'8edcc91b-dedd-45c1-a2e0-37543fdf58b3', 1078, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2949, N'8edcc91b-dedd-45c1-a2e0-37543fdf58b3', 1079, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2950, N'8edcc91b-dedd-45c1-a2e0-37543fdf58b3', 1080, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2951, N'8edcc91b-dedd-45c1-a2e0-37543fdf58b3', 1081, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2952, N'8edcc91b-dedd-45c1-a2e0-37543fdf58b3', 1082, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2953, N'8edcc91b-dedd-45c1-a2e0-37543fdf58b3', 1083, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2954, N'8edcc91b-dedd-45c1-a2e0-37543fdf58b3', 1084, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2955, N'8edcc91b-dedd-45c1-a2e0-37543fdf58b3', 1085, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2956, N'8edcc91b-dedd-45c1-a2e0-37543fdf58b3', 1086, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2957, N'8edcc91b-dedd-45c1-a2e0-37543fdf58b3', 1087, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2958, N'8edcc91b-dedd-45c1-a2e0-37543fdf58b3', 1088, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2959, N'8edcc91b-dedd-45c1-a2e0-37543fdf58b3', 1089, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2960, N'8edcc91b-dedd-45c1-a2e0-37543fdf58b3', 1090, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2961, N'8edcc91b-dedd-45c1-a2e0-37543fdf58b3', 1091, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2962, N'8edcc91b-dedd-45c1-a2e0-37543fdf58b3', 1092, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2963, N'8edcc91b-dedd-45c1-a2e0-37543fdf58b3', 1093, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2964, N'8edcc91b-dedd-45c1-a2e0-37543fdf58b3', 1094, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2965, N'8edcc91b-dedd-45c1-a2e0-37543fdf58b3', 1095, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2966, N'8edcc91b-dedd-45c1-a2e0-37543fdf58b3', 1096, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2967, N'8edcc91b-dedd-45c1-a2e0-37543fdf58b3', 1099, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2968, N'8edcc91b-dedd-45c1-a2e0-37543fdf58b3', 1100, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2969, N'8edcc91b-dedd-45c1-a2e0-37543fdf58b3', 1101, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2970, N'8edcc91b-dedd-45c1-a2e0-37543fdf58b3', 1103, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2971, N'8edcc91b-dedd-45c1-a2e0-37543fdf58b3', 1104, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2972, N'8edcc91b-dedd-45c1-a2e0-37543fdf58b3', 1105, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2973, N'8edcc91b-dedd-45c1-a2e0-37543fdf58b3', 1106, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2974, N'8edcc91b-dedd-45c1-a2e0-37543fdf58b3', 1107, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2975, N'8edcc91b-dedd-45c1-a2e0-37543fdf58b3', 1108, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2976, N'8edcc91b-dedd-45c1-a2e0-37543fdf58b3', 1109, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2977, N'8edcc91b-dedd-45c1-a2e0-37543fdf58b3', 1110, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2978, N'f9c4c9c0-e852-49da-a939-b108472069ac', 22, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2979, N'f9c4c9c0-e852-49da-a939-b108472069ac', 26, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2980, N'f9c4c9c0-e852-49da-a939-b108472069ac', 30, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2981, N'f9c4c9c0-e852-49da-a939-b108472069ac', 1063, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2982, N'f9c4c9c0-e852-49da-a939-b108472069ac', 1065, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2983, N'f9c4c9c0-e852-49da-a939-b108472069ac', 1066, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2984, N'f9c4c9c0-e852-49da-a939-b108472069ac', 1067, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2985, N'f9c4c9c0-e852-49da-a939-b108472069ac', 1068, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2986, N'f9c4c9c0-e852-49da-a939-b108472069ac', 1070, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2987, N'f9c4c9c0-e852-49da-a939-b108472069ac', 1071, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2988, N'f9c4c9c0-e852-49da-a939-b108472069ac', 1072, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2989, N'f9c4c9c0-e852-49da-a939-b108472069ac', 1073, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2990, N'f9c4c9c0-e852-49da-a939-b108472069ac', 1074, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
GO
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2991, N'f9c4c9c0-e852-49da-a939-b108472069ac', 1077, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2992, N'f9c4c9c0-e852-49da-a939-b108472069ac', 1078, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2993, N'f9c4c9c0-e852-49da-a939-b108472069ac', 1079, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2994, N'f9c4c9c0-e852-49da-a939-b108472069ac', 1080, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2995, N'f9c4c9c0-e852-49da-a939-b108472069ac', 1081, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2996, N'f9c4c9c0-e852-49da-a939-b108472069ac', 1082, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2997, N'f9c4c9c0-e852-49da-a939-b108472069ac', 1083, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2998, N'f9c4c9c0-e852-49da-a939-b108472069ac', 1084, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (2999, N'f9c4c9c0-e852-49da-a939-b108472069ac', 1085, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3000, N'f9c4c9c0-e852-49da-a939-b108472069ac', 1086, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3001, N'f9c4c9c0-e852-49da-a939-b108472069ac', 1087, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3002, N'f9c4c9c0-e852-49da-a939-b108472069ac', 1088, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3003, N'f9c4c9c0-e852-49da-a939-b108472069ac', 1089, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3004, N'f9c4c9c0-e852-49da-a939-b108472069ac', 1090, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3005, N'f9c4c9c0-e852-49da-a939-b108472069ac', 1091, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3006, N'f9c4c9c0-e852-49da-a939-b108472069ac', 1092, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3007, N'f9c4c9c0-e852-49da-a939-b108472069ac', 1093, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3008, N'f9c4c9c0-e852-49da-a939-b108472069ac', 1094, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3009, N'f9c4c9c0-e852-49da-a939-b108472069ac', 1095, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3010, N'f9c4c9c0-e852-49da-a939-b108472069ac', 1096, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3011, N'f9c4c9c0-e852-49da-a939-b108472069ac', 1099, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3012, N'f9c4c9c0-e852-49da-a939-b108472069ac', 1100, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3013, N'f9c4c9c0-e852-49da-a939-b108472069ac', 1101, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3014, N'f9c4c9c0-e852-49da-a939-b108472069ac', 1103, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3015, N'f9c4c9c0-e852-49da-a939-b108472069ac', 1104, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3016, N'f9c4c9c0-e852-49da-a939-b108472069ac', 1105, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3017, N'f9c4c9c0-e852-49da-a939-b108472069ac', 1106, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3018, N'f9c4c9c0-e852-49da-a939-b108472069ac', 1107, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3019, N'f9c4c9c0-e852-49da-a939-b108472069ac', 1108, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3020, N'f9c4c9c0-e852-49da-a939-b108472069ac', 1109, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3021, N'f9c4c9c0-e852-49da-a939-b108472069ac', 1110, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3022, N'60174670-1428-4e32-ad26-b7cef2e6fb72', 22, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3023, N'60174670-1428-4e32-ad26-b7cef2e6fb72', 26, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3024, N'60174670-1428-4e32-ad26-b7cef2e6fb72', 30, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3025, N'60174670-1428-4e32-ad26-b7cef2e6fb72', 1063, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3026, N'60174670-1428-4e32-ad26-b7cef2e6fb72', 1065, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3027, N'60174670-1428-4e32-ad26-b7cef2e6fb72', 1066, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3028, N'60174670-1428-4e32-ad26-b7cef2e6fb72', 1067, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3029, N'60174670-1428-4e32-ad26-b7cef2e6fb72', 1068, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3030, N'60174670-1428-4e32-ad26-b7cef2e6fb72', 1070, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3031, N'60174670-1428-4e32-ad26-b7cef2e6fb72', 1071, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3032, N'60174670-1428-4e32-ad26-b7cef2e6fb72', 1072, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3033, N'60174670-1428-4e32-ad26-b7cef2e6fb72', 1073, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3034, N'60174670-1428-4e32-ad26-b7cef2e6fb72', 1074, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3035, N'60174670-1428-4e32-ad26-b7cef2e6fb72', 1077, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3036, N'60174670-1428-4e32-ad26-b7cef2e6fb72', 1078, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3037, N'60174670-1428-4e32-ad26-b7cef2e6fb72', 1079, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3038, N'60174670-1428-4e32-ad26-b7cef2e6fb72', 1080, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3039, N'60174670-1428-4e32-ad26-b7cef2e6fb72', 1081, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3040, N'60174670-1428-4e32-ad26-b7cef2e6fb72', 1082, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3041, N'60174670-1428-4e32-ad26-b7cef2e6fb72', 1083, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3042, N'60174670-1428-4e32-ad26-b7cef2e6fb72', 1084, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3043, N'60174670-1428-4e32-ad26-b7cef2e6fb72', 1085, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3044, N'60174670-1428-4e32-ad26-b7cef2e6fb72', 1086, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3045, N'60174670-1428-4e32-ad26-b7cef2e6fb72', 1087, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3046, N'60174670-1428-4e32-ad26-b7cef2e6fb72', 1088, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3047, N'60174670-1428-4e32-ad26-b7cef2e6fb72', 1089, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3048, N'60174670-1428-4e32-ad26-b7cef2e6fb72', 1090, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3049, N'60174670-1428-4e32-ad26-b7cef2e6fb72', 1091, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3050, N'60174670-1428-4e32-ad26-b7cef2e6fb72', 1092, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3051, N'60174670-1428-4e32-ad26-b7cef2e6fb72', 1093, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3052, N'60174670-1428-4e32-ad26-b7cef2e6fb72', 1094, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3053, N'60174670-1428-4e32-ad26-b7cef2e6fb72', 1095, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3054, N'60174670-1428-4e32-ad26-b7cef2e6fb72', 1096, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3055, N'60174670-1428-4e32-ad26-b7cef2e6fb72', 1099, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3056, N'60174670-1428-4e32-ad26-b7cef2e6fb72', 1100, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3057, N'60174670-1428-4e32-ad26-b7cef2e6fb72', 1101, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3058, N'60174670-1428-4e32-ad26-b7cef2e6fb72', 1103, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3059, N'60174670-1428-4e32-ad26-b7cef2e6fb72', 1104, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3060, N'60174670-1428-4e32-ad26-b7cef2e6fb72', 1105, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3061, N'60174670-1428-4e32-ad26-b7cef2e6fb72', 1106, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3062, N'60174670-1428-4e32-ad26-b7cef2e6fb72', 1107, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3063, N'60174670-1428-4e32-ad26-b7cef2e6fb72', 1108, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3064, N'60174670-1428-4e32-ad26-b7cef2e6fb72', 1109, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3065, N'60174670-1428-4e32-ad26-b7cef2e6fb72', 1110, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3066, N'f6336e9c-4dc0-4b62-ab3a-08d8bffeb5bd', 22, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3067, N'f6336e9c-4dc0-4b62-ab3a-08d8bffeb5bd', 26, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3068, N'f6336e9c-4dc0-4b62-ab3a-08d8bffeb5bd', 30, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3069, N'f6336e9c-4dc0-4b62-ab3a-08d8bffeb5bd', 1063, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3070, N'f6336e9c-4dc0-4b62-ab3a-08d8bffeb5bd', 1065, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3071, N'f6336e9c-4dc0-4b62-ab3a-08d8bffeb5bd', 1066, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3072, N'f6336e9c-4dc0-4b62-ab3a-08d8bffeb5bd', 1067, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3073, N'f6336e9c-4dc0-4b62-ab3a-08d8bffeb5bd', 1068, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3074, N'f6336e9c-4dc0-4b62-ab3a-08d8bffeb5bd', 1070, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3075, N'f6336e9c-4dc0-4b62-ab3a-08d8bffeb5bd', 1071, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3076, N'f6336e9c-4dc0-4b62-ab3a-08d8bffeb5bd', 1072, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3077, N'f6336e9c-4dc0-4b62-ab3a-08d8bffeb5bd', 1073, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3078, N'f6336e9c-4dc0-4b62-ab3a-08d8bffeb5bd', 1074, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3079, N'f6336e9c-4dc0-4b62-ab3a-08d8bffeb5bd', 1077, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3080, N'f6336e9c-4dc0-4b62-ab3a-08d8bffeb5bd', 1078, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3081, N'f6336e9c-4dc0-4b62-ab3a-08d8bffeb5bd', 1079, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3082, N'f6336e9c-4dc0-4b62-ab3a-08d8bffeb5bd', 1080, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3083, N'f6336e9c-4dc0-4b62-ab3a-08d8bffeb5bd', 1081, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3084, N'f6336e9c-4dc0-4b62-ab3a-08d8bffeb5bd', 1082, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3085, N'f6336e9c-4dc0-4b62-ab3a-08d8bffeb5bd', 1083, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3086, N'f6336e9c-4dc0-4b62-ab3a-08d8bffeb5bd', 1084, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3087, N'f6336e9c-4dc0-4b62-ab3a-08d8bffeb5bd', 1085, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3088, N'f6336e9c-4dc0-4b62-ab3a-08d8bffeb5bd', 1086, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3089, N'f6336e9c-4dc0-4b62-ab3a-08d8bffeb5bd', 1087, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3090, N'f6336e9c-4dc0-4b62-ab3a-08d8bffeb5bd', 1088, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
GO
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3091, N'f6336e9c-4dc0-4b62-ab3a-08d8bffeb5bd', 1089, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3092, N'f6336e9c-4dc0-4b62-ab3a-08d8bffeb5bd', 1090, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3093, N'f6336e9c-4dc0-4b62-ab3a-08d8bffeb5bd', 1091, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3094, N'f6336e9c-4dc0-4b62-ab3a-08d8bffeb5bd', 1092, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3095, N'f6336e9c-4dc0-4b62-ab3a-08d8bffeb5bd', 1093, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3096, N'f6336e9c-4dc0-4b62-ab3a-08d8bffeb5bd', 1094, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3097, N'f6336e9c-4dc0-4b62-ab3a-08d8bffeb5bd', 1095, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3098, N'f6336e9c-4dc0-4b62-ab3a-08d8bffeb5bd', 1096, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3099, N'f6336e9c-4dc0-4b62-ab3a-08d8bffeb5bd', 1099, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3100, N'f6336e9c-4dc0-4b62-ab3a-08d8bffeb5bd', 1100, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3101, N'f6336e9c-4dc0-4b62-ab3a-08d8bffeb5bd', 1101, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3102, N'f6336e9c-4dc0-4b62-ab3a-08d8bffeb5bd', 1103, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3103, N'f6336e9c-4dc0-4b62-ab3a-08d8bffeb5bd', 1104, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3104, N'f6336e9c-4dc0-4b62-ab3a-08d8bffeb5bd', 1105, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3105, N'f6336e9c-4dc0-4b62-ab3a-08d8bffeb5bd', 1106, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3106, N'f6336e9c-4dc0-4b62-ab3a-08d8bffeb5bd', 1107, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3107, N'f6336e9c-4dc0-4b62-ab3a-08d8bffeb5bd', 1108, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3108, N'f6336e9c-4dc0-4b62-ab3a-08d8bffeb5bd', 1109, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3109, N'f6336e9c-4dc0-4b62-ab3a-08d8bffeb5bd', 1110, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3110, N'03df81aa-a6f4-4deb-88c0-ca2cbfc1c82f', 22, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3111, N'03df81aa-a6f4-4deb-88c0-ca2cbfc1c82f', 26, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3112, N'03df81aa-a6f4-4deb-88c0-ca2cbfc1c82f', 30, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3113, N'03df81aa-a6f4-4deb-88c0-ca2cbfc1c82f', 1063, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3114, N'03df81aa-a6f4-4deb-88c0-ca2cbfc1c82f', 1065, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3115, N'03df81aa-a6f4-4deb-88c0-ca2cbfc1c82f', 1066, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3116, N'03df81aa-a6f4-4deb-88c0-ca2cbfc1c82f', 1067, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3117, N'03df81aa-a6f4-4deb-88c0-ca2cbfc1c82f', 1068, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3118, N'03df81aa-a6f4-4deb-88c0-ca2cbfc1c82f', 1070, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3119, N'03df81aa-a6f4-4deb-88c0-ca2cbfc1c82f', 1071, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3120, N'03df81aa-a6f4-4deb-88c0-ca2cbfc1c82f', 1072, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3121, N'03df81aa-a6f4-4deb-88c0-ca2cbfc1c82f', 1073, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3122, N'03df81aa-a6f4-4deb-88c0-ca2cbfc1c82f', 1074, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3123, N'03df81aa-a6f4-4deb-88c0-ca2cbfc1c82f', 1077, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3124, N'03df81aa-a6f4-4deb-88c0-ca2cbfc1c82f', 1078, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3125, N'03df81aa-a6f4-4deb-88c0-ca2cbfc1c82f', 1079, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3126, N'03df81aa-a6f4-4deb-88c0-ca2cbfc1c82f', 1080, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3127, N'03df81aa-a6f4-4deb-88c0-ca2cbfc1c82f', 1081, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3128, N'03df81aa-a6f4-4deb-88c0-ca2cbfc1c82f', 1082, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3129, N'03df81aa-a6f4-4deb-88c0-ca2cbfc1c82f', 1083, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3130, N'03df81aa-a6f4-4deb-88c0-ca2cbfc1c82f', 1084, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3131, N'03df81aa-a6f4-4deb-88c0-ca2cbfc1c82f', 1085, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3132, N'03df81aa-a6f4-4deb-88c0-ca2cbfc1c82f', 1086, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3133, N'03df81aa-a6f4-4deb-88c0-ca2cbfc1c82f', 1087, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3134, N'03df81aa-a6f4-4deb-88c0-ca2cbfc1c82f', 1088, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3135, N'03df81aa-a6f4-4deb-88c0-ca2cbfc1c82f', 1089, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3136, N'03df81aa-a6f4-4deb-88c0-ca2cbfc1c82f', 1090, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3137, N'03df81aa-a6f4-4deb-88c0-ca2cbfc1c82f', 1091, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3138, N'03df81aa-a6f4-4deb-88c0-ca2cbfc1c82f', 1092, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3139, N'03df81aa-a6f4-4deb-88c0-ca2cbfc1c82f', 1093, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3140, N'03df81aa-a6f4-4deb-88c0-ca2cbfc1c82f', 1094, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3141, N'03df81aa-a6f4-4deb-88c0-ca2cbfc1c82f', 1095, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3142, N'03df81aa-a6f4-4deb-88c0-ca2cbfc1c82f', 1096, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3143, N'03df81aa-a6f4-4deb-88c0-ca2cbfc1c82f', 1099, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3144, N'03df81aa-a6f4-4deb-88c0-ca2cbfc1c82f', 1100, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3145, N'03df81aa-a6f4-4deb-88c0-ca2cbfc1c82f', 1101, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3146, N'03df81aa-a6f4-4deb-88c0-ca2cbfc1c82f', 1103, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3147, N'03df81aa-a6f4-4deb-88c0-ca2cbfc1c82f', 1104, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3148, N'03df81aa-a6f4-4deb-88c0-ca2cbfc1c82f', 1105, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3149, N'03df81aa-a6f4-4deb-88c0-ca2cbfc1c82f', 1106, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3150, N'03df81aa-a6f4-4deb-88c0-ca2cbfc1c82f', 1107, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3151, N'03df81aa-a6f4-4deb-88c0-ca2cbfc1c82f', 1108, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3152, N'03df81aa-a6f4-4deb-88c0-ca2cbfc1c82f', 1109, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3153, N'03df81aa-a6f4-4deb-88c0-ca2cbfc1c82f', 1110, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3154, N'e7e38387-1494-4202-89ac-df4e5f557c76', 22, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3155, N'e7e38387-1494-4202-89ac-df4e5f557c76', 26, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3156, N'e7e38387-1494-4202-89ac-df4e5f557c76', 30, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3157, N'e7e38387-1494-4202-89ac-df4e5f557c76', 1063, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3158, N'e7e38387-1494-4202-89ac-df4e5f557c76', 1065, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3159, N'e7e38387-1494-4202-89ac-df4e5f557c76', 1066, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3160, N'e7e38387-1494-4202-89ac-df4e5f557c76', 1067, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3161, N'e7e38387-1494-4202-89ac-df4e5f557c76', 1068, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3162, N'e7e38387-1494-4202-89ac-df4e5f557c76', 1070, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3163, N'e7e38387-1494-4202-89ac-df4e5f557c76', 1071, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3164, N'e7e38387-1494-4202-89ac-df4e5f557c76', 1072, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3165, N'e7e38387-1494-4202-89ac-df4e5f557c76', 1073, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3166, N'e7e38387-1494-4202-89ac-df4e5f557c76', 1074, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3167, N'e7e38387-1494-4202-89ac-df4e5f557c76', 1077, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3168, N'e7e38387-1494-4202-89ac-df4e5f557c76', 1078, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3169, N'e7e38387-1494-4202-89ac-df4e5f557c76', 1079, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3170, N'e7e38387-1494-4202-89ac-df4e5f557c76', 1080, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3171, N'e7e38387-1494-4202-89ac-df4e5f557c76', 1081, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3172, N'e7e38387-1494-4202-89ac-df4e5f557c76', 1082, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3173, N'e7e38387-1494-4202-89ac-df4e5f557c76', 1083, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3174, N'e7e38387-1494-4202-89ac-df4e5f557c76', 1084, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3175, N'e7e38387-1494-4202-89ac-df4e5f557c76', 1085, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3176, N'e7e38387-1494-4202-89ac-df4e5f557c76', 1086, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3177, N'e7e38387-1494-4202-89ac-df4e5f557c76', 1087, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3178, N'e7e38387-1494-4202-89ac-df4e5f557c76', 1088, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3179, N'e7e38387-1494-4202-89ac-df4e5f557c76', 1089, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3180, N'e7e38387-1494-4202-89ac-df4e5f557c76', 1090, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3181, N'e7e38387-1494-4202-89ac-df4e5f557c76', 1091, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3182, N'e7e38387-1494-4202-89ac-df4e5f557c76', 1092, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3183, N'e7e38387-1494-4202-89ac-df4e5f557c76', 1093, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3184, N'e7e38387-1494-4202-89ac-df4e5f557c76', 1094, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3185, N'e7e38387-1494-4202-89ac-df4e5f557c76', 1095, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3186, N'e7e38387-1494-4202-89ac-df4e5f557c76', 1096, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3187, N'e7e38387-1494-4202-89ac-df4e5f557c76', 1099, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3188, N'e7e38387-1494-4202-89ac-df4e5f557c76', 1100, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3189, N'e7e38387-1494-4202-89ac-df4e5f557c76', 1101, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3190, N'e7e38387-1494-4202-89ac-df4e5f557c76', 1103, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
GO
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3191, N'e7e38387-1494-4202-89ac-df4e5f557c76', 1104, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3192, N'e7e38387-1494-4202-89ac-df4e5f557c76', 1105, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3193, N'e7e38387-1494-4202-89ac-df4e5f557c76', 1106, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3194, N'e7e38387-1494-4202-89ac-df4e5f557c76', 1107, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3195, N'e7e38387-1494-4202-89ac-df4e5f557c76', 1108, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3196, N'e7e38387-1494-4202-89ac-df4e5f557c76', 1109, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3197, N'e7e38387-1494-4202-89ac-df4e5f557c76', 1110, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3198, N'd7320c28-78d5-4f27-95b1-b29c411fe9a0', 22, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3199, N'd7320c28-78d5-4f27-95b1-b29c411fe9a0', 26, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3200, N'd7320c28-78d5-4f27-95b1-b29c411fe9a0', 30, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3201, N'd7320c28-78d5-4f27-95b1-b29c411fe9a0', 1063, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3202, N'd7320c28-78d5-4f27-95b1-b29c411fe9a0', 1065, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3203, N'd7320c28-78d5-4f27-95b1-b29c411fe9a0', 1066, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3204, N'd7320c28-78d5-4f27-95b1-b29c411fe9a0', 1067, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3205, N'd7320c28-78d5-4f27-95b1-b29c411fe9a0', 1068, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3206, N'd7320c28-78d5-4f27-95b1-b29c411fe9a0', 1070, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3207, N'd7320c28-78d5-4f27-95b1-b29c411fe9a0', 1071, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3208, N'd7320c28-78d5-4f27-95b1-b29c411fe9a0', 1072, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3209, N'd7320c28-78d5-4f27-95b1-b29c411fe9a0', 1073, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3210, N'd7320c28-78d5-4f27-95b1-b29c411fe9a0', 1074, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3211, N'd7320c28-78d5-4f27-95b1-b29c411fe9a0', 1077, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3212, N'd7320c28-78d5-4f27-95b1-b29c411fe9a0', 1078, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3213, N'd7320c28-78d5-4f27-95b1-b29c411fe9a0', 1079, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3214, N'd7320c28-78d5-4f27-95b1-b29c411fe9a0', 1080, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3215, N'd7320c28-78d5-4f27-95b1-b29c411fe9a0', 1081, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3216, N'd7320c28-78d5-4f27-95b1-b29c411fe9a0', 1082, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3217, N'd7320c28-78d5-4f27-95b1-b29c411fe9a0', 1083, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3218, N'd7320c28-78d5-4f27-95b1-b29c411fe9a0', 1084, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3219, N'd7320c28-78d5-4f27-95b1-b29c411fe9a0', 1085, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3220, N'd7320c28-78d5-4f27-95b1-b29c411fe9a0', 1086, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3221, N'd7320c28-78d5-4f27-95b1-b29c411fe9a0', 1087, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3222, N'd7320c28-78d5-4f27-95b1-b29c411fe9a0', 1088, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3223, N'd7320c28-78d5-4f27-95b1-b29c411fe9a0', 1089, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3224, N'd7320c28-78d5-4f27-95b1-b29c411fe9a0', 1090, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3225, N'd7320c28-78d5-4f27-95b1-b29c411fe9a0', 1091, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3226, N'd7320c28-78d5-4f27-95b1-b29c411fe9a0', 1092, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3227, N'd7320c28-78d5-4f27-95b1-b29c411fe9a0', 1093, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3228, N'd7320c28-78d5-4f27-95b1-b29c411fe9a0', 1094, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3229, N'd7320c28-78d5-4f27-95b1-b29c411fe9a0', 1095, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3230, N'd7320c28-78d5-4f27-95b1-b29c411fe9a0', 1096, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3231, N'd7320c28-78d5-4f27-95b1-b29c411fe9a0', 1099, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3232, N'd7320c28-78d5-4f27-95b1-b29c411fe9a0', 1100, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3233, N'd7320c28-78d5-4f27-95b1-b29c411fe9a0', 1101, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3234, N'd7320c28-78d5-4f27-95b1-b29c411fe9a0', 1103, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3235, N'd7320c28-78d5-4f27-95b1-b29c411fe9a0', 1104, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3236, N'd7320c28-78d5-4f27-95b1-b29c411fe9a0', 1105, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3237, N'd7320c28-78d5-4f27-95b1-b29c411fe9a0', 1106, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3238, N'd7320c28-78d5-4f27-95b1-b29c411fe9a0', 1107, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3239, N'd7320c28-78d5-4f27-95b1-b29c411fe9a0', 1108, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3240, N'd7320c28-78d5-4f27-95b1-b29c411fe9a0', 1109, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3241, N'd7320c28-78d5-4f27-95b1-b29c411fe9a0', 1110, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3242, N'9221fc3d-de50-42ac-9f22-99f771c9be83', 22, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3243, N'9221fc3d-de50-42ac-9f22-99f771c9be83', 26, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3244, N'9221fc3d-de50-42ac-9f22-99f771c9be83', 30, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3245, N'9221fc3d-de50-42ac-9f22-99f771c9be83', 1063, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3246, N'9221fc3d-de50-42ac-9f22-99f771c9be83', 1065, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3247, N'9221fc3d-de50-42ac-9f22-99f771c9be83', 1066, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3248, N'9221fc3d-de50-42ac-9f22-99f771c9be83', 1067, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3249, N'9221fc3d-de50-42ac-9f22-99f771c9be83', 1068, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3250, N'9221fc3d-de50-42ac-9f22-99f771c9be83', 1070, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3251, N'9221fc3d-de50-42ac-9f22-99f771c9be83', 1071, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3252, N'9221fc3d-de50-42ac-9f22-99f771c9be83', 1072, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3253, N'9221fc3d-de50-42ac-9f22-99f771c9be83', 1073, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3254, N'9221fc3d-de50-42ac-9f22-99f771c9be83', 1074, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3255, N'9221fc3d-de50-42ac-9f22-99f771c9be83', 1077, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3256, N'9221fc3d-de50-42ac-9f22-99f771c9be83', 1078, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3257, N'9221fc3d-de50-42ac-9f22-99f771c9be83', 1079, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3258, N'9221fc3d-de50-42ac-9f22-99f771c9be83', 1080, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3259, N'9221fc3d-de50-42ac-9f22-99f771c9be83', 1081, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3260, N'9221fc3d-de50-42ac-9f22-99f771c9be83', 1082, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3261, N'9221fc3d-de50-42ac-9f22-99f771c9be83', 1083, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3262, N'9221fc3d-de50-42ac-9f22-99f771c9be83', 1084, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3263, N'9221fc3d-de50-42ac-9f22-99f771c9be83', 1085, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3264, N'9221fc3d-de50-42ac-9f22-99f771c9be83', 1086, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3265, N'9221fc3d-de50-42ac-9f22-99f771c9be83', 1087, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3266, N'9221fc3d-de50-42ac-9f22-99f771c9be83', 1088, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3267, N'9221fc3d-de50-42ac-9f22-99f771c9be83', 1089, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3268, N'9221fc3d-de50-42ac-9f22-99f771c9be83', 1090, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3269, N'9221fc3d-de50-42ac-9f22-99f771c9be83', 1091, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3270, N'9221fc3d-de50-42ac-9f22-99f771c9be83', 1092, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3271, N'9221fc3d-de50-42ac-9f22-99f771c9be83', 1093, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3272, N'9221fc3d-de50-42ac-9f22-99f771c9be83', 1094, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3273, N'9221fc3d-de50-42ac-9f22-99f771c9be83', 1095, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3274, N'9221fc3d-de50-42ac-9f22-99f771c9be83', 1096, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3275, N'9221fc3d-de50-42ac-9f22-99f771c9be83', 1099, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3276, N'9221fc3d-de50-42ac-9f22-99f771c9be83', 1100, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3277, N'9221fc3d-de50-42ac-9f22-99f771c9be83', 1101, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3278, N'9221fc3d-de50-42ac-9f22-99f771c9be83', 1103, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3279, N'9221fc3d-de50-42ac-9f22-99f771c9be83', 1104, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3280, N'9221fc3d-de50-42ac-9f22-99f771c9be83', 1105, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3281, N'9221fc3d-de50-42ac-9f22-99f771c9be83', 1106, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3282, N'9221fc3d-de50-42ac-9f22-99f771c9be83', 1107, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3283, N'9221fc3d-de50-42ac-9f22-99f771c9be83', 1108, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3284, N'9221fc3d-de50-42ac-9f22-99f771c9be83', 1109, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3285, N'9221fc3d-de50-42ac-9f22-99f771c9be83', 1110, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3286, N'9dd226eb-0836-4d1a-bfe5-459feec6cfac', 22, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3287, N'9dd226eb-0836-4d1a-bfe5-459feec6cfac', 26, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3288, N'9dd226eb-0836-4d1a-bfe5-459feec6cfac', 30, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3289, N'9dd226eb-0836-4d1a-bfe5-459feec6cfac', 1063, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3290, N'9dd226eb-0836-4d1a-bfe5-459feec6cfac', 1065, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
GO
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3291, N'9dd226eb-0836-4d1a-bfe5-459feec6cfac', 1066, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3292, N'9dd226eb-0836-4d1a-bfe5-459feec6cfac', 1067, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3293, N'9dd226eb-0836-4d1a-bfe5-459feec6cfac', 1068, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3294, N'9dd226eb-0836-4d1a-bfe5-459feec6cfac', 1070, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3295, N'9dd226eb-0836-4d1a-bfe5-459feec6cfac', 1071, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3296, N'9dd226eb-0836-4d1a-bfe5-459feec6cfac', 1072, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3297, N'9dd226eb-0836-4d1a-bfe5-459feec6cfac', 1073, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3298, N'9dd226eb-0836-4d1a-bfe5-459feec6cfac', 1074, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3299, N'9dd226eb-0836-4d1a-bfe5-459feec6cfac', 1077, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3300, N'9dd226eb-0836-4d1a-bfe5-459feec6cfac', 1078, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3301, N'9dd226eb-0836-4d1a-bfe5-459feec6cfac', 1079, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3302, N'9dd226eb-0836-4d1a-bfe5-459feec6cfac', 1080, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3303, N'9dd226eb-0836-4d1a-bfe5-459feec6cfac', 1081, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3304, N'9dd226eb-0836-4d1a-bfe5-459feec6cfac', 1082, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3305, N'9dd226eb-0836-4d1a-bfe5-459feec6cfac', 1083, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3306, N'9dd226eb-0836-4d1a-bfe5-459feec6cfac', 1084, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3307, N'9dd226eb-0836-4d1a-bfe5-459feec6cfac', 1085, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3308, N'9dd226eb-0836-4d1a-bfe5-459feec6cfac', 1086, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3309, N'9dd226eb-0836-4d1a-bfe5-459feec6cfac', 1087, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3310, N'9dd226eb-0836-4d1a-bfe5-459feec6cfac', 1088, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3311, N'9dd226eb-0836-4d1a-bfe5-459feec6cfac', 1089, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3312, N'9dd226eb-0836-4d1a-bfe5-459feec6cfac', 1090, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3313, N'9dd226eb-0836-4d1a-bfe5-459feec6cfac', 1091, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3314, N'9dd226eb-0836-4d1a-bfe5-459feec6cfac', 1092, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3315, N'9dd226eb-0836-4d1a-bfe5-459feec6cfac', 1093, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3316, N'9dd226eb-0836-4d1a-bfe5-459feec6cfac', 1094, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3317, N'9dd226eb-0836-4d1a-bfe5-459feec6cfac', 1095, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3318, N'9dd226eb-0836-4d1a-bfe5-459feec6cfac', 1096, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3319, N'9dd226eb-0836-4d1a-bfe5-459feec6cfac', 1099, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3320, N'9dd226eb-0836-4d1a-bfe5-459feec6cfac', 1100, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3321, N'9dd226eb-0836-4d1a-bfe5-459feec6cfac', 1101, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3322, N'9dd226eb-0836-4d1a-bfe5-459feec6cfac', 1103, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3323, N'9dd226eb-0836-4d1a-bfe5-459feec6cfac', 1104, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3324, N'9dd226eb-0836-4d1a-bfe5-459feec6cfac', 1105, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3325, N'9dd226eb-0836-4d1a-bfe5-459feec6cfac', 1106, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3326, N'9dd226eb-0836-4d1a-bfe5-459feec6cfac', 1107, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3327, N'9dd226eb-0836-4d1a-bfe5-459feec6cfac', 1108, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3328, N'9dd226eb-0836-4d1a-bfe5-459feec6cfac', 1109, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3329, N'9dd226eb-0836-4d1a-bfe5-459feec6cfac', 1110, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3330, N'68eb6d86-e980-405f-8012-32784b61ade5', 22, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3331, N'68eb6d86-e980-405f-8012-32784b61ade5', 26, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3332, N'68eb6d86-e980-405f-8012-32784b61ade5', 30, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3333, N'68eb6d86-e980-405f-8012-32784b61ade5', 1063, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3334, N'68eb6d86-e980-405f-8012-32784b61ade5', 1065, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3335, N'68eb6d86-e980-405f-8012-32784b61ade5', 1066, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3336, N'68eb6d86-e980-405f-8012-32784b61ade5', 1067, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3337, N'68eb6d86-e980-405f-8012-32784b61ade5', 1068, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3338, N'68eb6d86-e980-405f-8012-32784b61ade5', 1070, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3339, N'68eb6d86-e980-405f-8012-32784b61ade5', 1071, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3340, N'68eb6d86-e980-405f-8012-32784b61ade5', 1072, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3341, N'68eb6d86-e980-405f-8012-32784b61ade5', 1073, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3342, N'68eb6d86-e980-405f-8012-32784b61ade5', 1074, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3343, N'68eb6d86-e980-405f-8012-32784b61ade5', 1077, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3344, N'68eb6d86-e980-405f-8012-32784b61ade5', 1078, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3345, N'68eb6d86-e980-405f-8012-32784b61ade5', 1079, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3346, N'68eb6d86-e980-405f-8012-32784b61ade5', 1080, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3347, N'68eb6d86-e980-405f-8012-32784b61ade5', 1081, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3348, N'68eb6d86-e980-405f-8012-32784b61ade5', 1082, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3349, N'68eb6d86-e980-405f-8012-32784b61ade5', 1083, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3350, N'68eb6d86-e980-405f-8012-32784b61ade5', 1084, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3351, N'68eb6d86-e980-405f-8012-32784b61ade5', 1085, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3352, N'68eb6d86-e980-405f-8012-32784b61ade5', 1086, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3353, N'68eb6d86-e980-405f-8012-32784b61ade5', 1087, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3354, N'68eb6d86-e980-405f-8012-32784b61ade5', 1088, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3355, N'68eb6d86-e980-405f-8012-32784b61ade5', 1089, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3356, N'68eb6d86-e980-405f-8012-32784b61ade5', 1090, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3357, N'68eb6d86-e980-405f-8012-32784b61ade5', 1091, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3358, N'68eb6d86-e980-405f-8012-32784b61ade5', 1092, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3359, N'68eb6d86-e980-405f-8012-32784b61ade5', 1093, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3360, N'68eb6d86-e980-405f-8012-32784b61ade5', 1094, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3361, N'68eb6d86-e980-405f-8012-32784b61ade5', 1095, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3362, N'68eb6d86-e980-405f-8012-32784b61ade5', 1096, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3363, N'68eb6d86-e980-405f-8012-32784b61ade5', 1099, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3364, N'68eb6d86-e980-405f-8012-32784b61ade5', 1100, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3365, N'68eb6d86-e980-405f-8012-32784b61ade5', 1101, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3366, N'68eb6d86-e980-405f-8012-32784b61ade5', 1103, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3367, N'68eb6d86-e980-405f-8012-32784b61ade5', 1104, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3368, N'68eb6d86-e980-405f-8012-32784b61ade5', 1105, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3369, N'68eb6d86-e980-405f-8012-32784b61ade5', 1106, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3370, N'68eb6d86-e980-405f-8012-32784b61ade5', 1107, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3371, N'68eb6d86-e980-405f-8012-32784b61ade5', 1108, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3372, N'68eb6d86-e980-405f-8012-32784b61ade5', 1109, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3373, N'68eb6d86-e980-405f-8012-32784b61ade5', 1110, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3374, N'836edf0f-2e58-4767-b6f3-04ce05f22e2f', 22, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3375, N'836edf0f-2e58-4767-b6f3-04ce05f22e2f', 26, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3376, N'836edf0f-2e58-4767-b6f3-04ce05f22e2f', 30, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3377, N'836edf0f-2e58-4767-b6f3-04ce05f22e2f', 1063, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3378, N'836edf0f-2e58-4767-b6f3-04ce05f22e2f', 1065, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3379, N'836edf0f-2e58-4767-b6f3-04ce05f22e2f', 1066, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3380, N'836edf0f-2e58-4767-b6f3-04ce05f22e2f', 1067, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3381, N'836edf0f-2e58-4767-b6f3-04ce05f22e2f', 1068, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3382, N'836edf0f-2e58-4767-b6f3-04ce05f22e2f', 1070, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3383, N'836edf0f-2e58-4767-b6f3-04ce05f22e2f', 1071, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3384, N'836edf0f-2e58-4767-b6f3-04ce05f22e2f', 1072, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3385, N'836edf0f-2e58-4767-b6f3-04ce05f22e2f', 1073, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3386, N'836edf0f-2e58-4767-b6f3-04ce05f22e2f', 1074, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3387, N'836edf0f-2e58-4767-b6f3-04ce05f22e2f', 1077, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3388, N'836edf0f-2e58-4767-b6f3-04ce05f22e2f', 1078, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3389, N'836edf0f-2e58-4767-b6f3-04ce05f22e2f', 1079, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3390, N'836edf0f-2e58-4767-b6f3-04ce05f22e2f', 1080, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
GO
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3391, N'836edf0f-2e58-4767-b6f3-04ce05f22e2f', 1081, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3392, N'836edf0f-2e58-4767-b6f3-04ce05f22e2f', 1082, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3393, N'836edf0f-2e58-4767-b6f3-04ce05f22e2f', 1083, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3394, N'836edf0f-2e58-4767-b6f3-04ce05f22e2f', 1084, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3395, N'836edf0f-2e58-4767-b6f3-04ce05f22e2f', 1085, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3396, N'836edf0f-2e58-4767-b6f3-04ce05f22e2f', 1086, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3397, N'836edf0f-2e58-4767-b6f3-04ce05f22e2f', 1087, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3398, N'836edf0f-2e58-4767-b6f3-04ce05f22e2f', 1088, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3399, N'836edf0f-2e58-4767-b6f3-04ce05f22e2f', 1089, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3400, N'836edf0f-2e58-4767-b6f3-04ce05f22e2f', 1090, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3401, N'836edf0f-2e58-4767-b6f3-04ce05f22e2f', 1091, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3402, N'836edf0f-2e58-4767-b6f3-04ce05f22e2f', 1092, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3403, N'836edf0f-2e58-4767-b6f3-04ce05f22e2f', 1093, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3404, N'836edf0f-2e58-4767-b6f3-04ce05f22e2f', 1094, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3405, N'836edf0f-2e58-4767-b6f3-04ce05f22e2f', 1095, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3406, N'836edf0f-2e58-4767-b6f3-04ce05f22e2f', 1096, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3407, N'836edf0f-2e58-4767-b6f3-04ce05f22e2f', 1099, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3408, N'836edf0f-2e58-4767-b6f3-04ce05f22e2f', 1100, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3409, N'836edf0f-2e58-4767-b6f3-04ce05f22e2f', 1101, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3410, N'836edf0f-2e58-4767-b6f3-04ce05f22e2f', 1103, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3411, N'836edf0f-2e58-4767-b6f3-04ce05f22e2f', 1104, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3412, N'836edf0f-2e58-4767-b6f3-04ce05f22e2f', 1105, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3413, N'836edf0f-2e58-4767-b6f3-04ce05f22e2f', 1106, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3414, N'836edf0f-2e58-4767-b6f3-04ce05f22e2f', 1107, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3415, N'836edf0f-2e58-4767-b6f3-04ce05f22e2f', 1108, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3416, N'836edf0f-2e58-4767-b6f3-04ce05f22e2f', 1109, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3417, N'836edf0f-2e58-4767-b6f3-04ce05f22e2f', 1110, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3418, N'479813cb-ba49-4f65-9448-54e2d34d835d', 22, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3419, N'479813cb-ba49-4f65-9448-54e2d34d835d', 26, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3420, N'479813cb-ba49-4f65-9448-54e2d34d835d', 30, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3421, N'479813cb-ba49-4f65-9448-54e2d34d835d', 1063, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3422, N'479813cb-ba49-4f65-9448-54e2d34d835d', 1065, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3423, N'479813cb-ba49-4f65-9448-54e2d34d835d', 1066, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3424, N'479813cb-ba49-4f65-9448-54e2d34d835d', 1067, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3425, N'479813cb-ba49-4f65-9448-54e2d34d835d', 1068, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3426, N'479813cb-ba49-4f65-9448-54e2d34d835d', 1070, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3427, N'479813cb-ba49-4f65-9448-54e2d34d835d', 1071, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3428, N'479813cb-ba49-4f65-9448-54e2d34d835d', 1072, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3429, N'479813cb-ba49-4f65-9448-54e2d34d835d', 1073, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3430, N'479813cb-ba49-4f65-9448-54e2d34d835d', 1074, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3431, N'479813cb-ba49-4f65-9448-54e2d34d835d', 1077, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3432, N'479813cb-ba49-4f65-9448-54e2d34d835d', 1078, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3433, N'479813cb-ba49-4f65-9448-54e2d34d835d', 1079, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3434, N'479813cb-ba49-4f65-9448-54e2d34d835d', 1080, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3435, N'479813cb-ba49-4f65-9448-54e2d34d835d', 1081, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3436, N'479813cb-ba49-4f65-9448-54e2d34d835d', 1082, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3437, N'479813cb-ba49-4f65-9448-54e2d34d835d', 1083, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3438, N'479813cb-ba49-4f65-9448-54e2d34d835d', 1084, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3439, N'479813cb-ba49-4f65-9448-54e2d34d835d', 1085, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3440, N'479813cb-ba49-4f65-9448-54e2d34d835d', 1086, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3441, N'479813cb-ba49-4f65-9448-54e2d34d835d', 1087, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3442, N'479813cb-ba49-4f65-9448-54e2d34d835d', 1088, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3443, N'479813cb-ba49-4f65-9448-54e2d34d835d', 1089, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3444, N'479813cb-ba49-4f65-9448-54e2d34d835d', 1090, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3445, N'479813cb-ba49-4f65-9448-54e2d34d835d', 1091, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3446, N'479813cb-ba49-4f65-9448-54e2d34d835d', 1092, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3447, N'479813cb-ba49-4f65-9448-54e2d34d835d', 1093, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3448, N'479813cb-ba49-4f65-9448-54e2d34d835d', 1094, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3449, N'479813cb-ba49-4f65-9448-54e2d34d835d', 1095, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3450, N'479813cb-ba49-4f65-9448-54e2d34d835d', 1096, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3451, N'479813cb-ba49-4f65-9448-54e2d34d835d', 1099, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3452, N'479813cb-ba49-4f65-9448-54e2d34d835d', 1100, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3453, N'479813cb-ba49-4f65-9448-54e2d34d835d', 1101, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3454, N'479813cb-ba49-4f65-9448-54e2d34d835d', 1103, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3455, N'479813cb-ba49-4f65-9448-54e2d34d835d', 1104, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3456, N'479813cb-ba49-4f65-9448-54e2d34d835d', 1105, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3457, N'479813cb-ba49-4f65-9448-54e2d34d835d', 1106, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3458, N'479813cb-ba49-4f65-9448-54e2d34d835d', 1107, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3459, N'479813cb-ba49-4f65-9448-54e2d34d835d', 1108, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3460, N'479813cb-ba49-4f65-9448-54e2d34d835d', 1109, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
INSERT [dbo].[Fan] ([ID], [UserID], [BusinessID], [Date]) VALUES (3461, N'479813cb-ba49-4f65-9448-54e2d34d835d', 1110, CAST(N'2021-10-04T09:58:12.397' AS DateTime))
SET IDENTITY_INSERT [dbo].[Fan] OFF
GO
SET IDENTITY_INSERT [dbo].[FundingPlan] ON 

INSERT [dbo].[FundingPlan] ([FundingPlanID], [BusinessID], [FundingTypeID], [PlanTerms], [PlanComments], [PlanPublicizeDate], [PlanFulfilledDate]) VALUES (2, 1099, 1, N'Buy $500 in meals and get 25% off', NULL, CAST(N'2021-07-01T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[FundingPlan] ([FundingPlanID], [BusinessID], [FundingTypeID], [PlanTerms], [PlanComments], [PlanPublicizeDate], [PlanFulfilledDate]) VALUES (3, 1103, 1, N'Purchse the two-year plan, and save 10%', NULL, CAST(N'2021-07-01T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[FundingPlan] ([FundingPlanID], [BusinessID], [FundingTypeID], [PlanTerms], [PlanComments], [PlanPublicizeDate], [PlanFulfilledDate]) VALUES (4, 1096, 3, N'$20,000 to help the Co-op purchase a new building', NULL, CAST(N'2021-07-01T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[FundingPlan] ([FundingPlanID], [BusinessID], [FundingTypeID], [PlanTerms], [PlanComments], [PlanPublicizeDate], [PlanFulfilledDate]) VALUES (5, 1093, 3, N'$75,000 sought to add a food truck.', NULL, CAST(N'2021-07-01T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[FundingPlan] ([FundingPlanID], [BusinessID], [FundingTypeID], [PlanTerms], [PlanComments], [PlanPublicizeDate], [PlanFulfilledDate]) VALUES (6, 1101, 2, N'Buy $500 in meals, and get 25% off', NULL, CAST(N'2021-07-01T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[FundingPlan] ([FundingPlanID], [BusinessID], [FundingTypeID], [PlanTerms], [PlanComments], [PlanPublicizeDate], [PlanFulfilledDate]) VALUES (7, 1095, 2, N'Bring massages to elderly veterans', NULL, CAST(N'2021-07-01T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[FundingPlan] ([FundingPlanID], [BusinessID], [FundingTypeID], [PlanTerms], [PlanComments], [PlanPublicizeDate], [PlanFulfilledDate]) VALUES (8, 1068, 1, N'Buy $500 in meals and get 25% off', NULL, CAST(N'2021-07-01T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[FundingPlan] ([FundingPlanID], [BusinessID], [FundingTypeID], [PlanTerms], [PlanComments], [PlanPublicizeDate], [PlanFulfilledDate]) VALUES (9, 26, 1, N'Purchase kitchen remodel, get bathroom 1/2 off', NULL, CAST(N'2021-07-01T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[FundingPlan] ([FundingPlanID], [BusinessID], [FundingTypeID], [PlanTerms], [PlanComments], [PlanPublicizeDate], [PlanFulfilledDate]) VALUES (10, 1063, 3, N'$20,000 to help expand building', NULL, CAST(N'2021-07-01T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[FundingPlan] ([FundingPlanID], [BusinessID], [FundingTypeID], [PlanTerms], [PlanComments], [PlanPublicizeDate], [PlanFulfilledDate]) VALUES (11, 1072, 3, N'$75,000 sought to add a food truck.', NULL, CAST(N'2021-07-01T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[FundingPlan] ([FundingPlanID], [BusinessID], [FundingTypeID], [PlanTerms], [PlanComments], [PlanPublicizeDate], [PlanFulfilledDate]) VALUES (12, 1070, 2, N'Buy $500 in meals, and get 25% off', NULL, CAST(N'2021-07-01T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[FundingPlan] ([FundingPlanID], [BusinessID], [FundingTypeID], [PlanTerms], [PlanComments], [PlanPublicizeDate], [PlanFulfilledDate]) VALUES (13, 22, 2, N'Purchase 4 weeks in meals and receive 6 weeks', NULL, CAST(N'2021-07-01T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[FundingPlan] ([FundingPlanID], [BusinessID], [FundingTypeID], [PlanTerms], [PlanComments], [PlanPublicizeDate], [PlanFulfilledDate]) VALUES (14, 1084, 1, N'Buy $500 in meals and get 25% off', NULL, CAST(N'2021-07-01T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[FundingPlan] ([FundingPlanID], [BusinessID], [FundingTypeID], [PlanTerms], [PlanComments], [PlanPublicizeDate], [PlanFulfilledDate]) VALUES (15, 1092, 1, N'Buy one annual pass and recive two', NULL, CAST(N'2021-07-01T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[FundingPlan] ([FundingPlanID], [BusinessID], [FundingTypeID], [PlanTerms], [PlanComments], [PlanPublicizeDate], [PlanFulfilledDate]) VALUES (16, 1096, 3, N'$20,000 to help the Co-op purchase a new building', NULL, CAST(N'2021-07-01T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[FundingPlan] ([FundingPlanID], [BusinessID], [FundingTypeID], [PlanTerms], [PlanComments], [PlanPublicizeDate], [PlanFulfilledDate]) VALUES (17, 1088, 3, N'$75,000 sought to add a food truck.', NULL, CAST(N'2021-07-01T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[FundingPlan] ([FundingPlanID], [BusinessID], [FundingTypeID], [PlanTerms], [PlanComments], [PlanPublicizeDate], [PlanFulfilledDate]) VALUES (18, 1086, 2, N'Buy $500 in meals, and get 25% off', NULL, CAST(N'2021-07-01T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[FundingPlan] ([FundingPlanID], [BusinessID], [FundingTypeID], [PlanTerms], [PlanComments], [PlanPublicizeDate], [PlanFulfilledDate]) VALUES (19, 1078, 2, N'Purchase 4 weeks of daycare and receive 6 weeks', NULL, CAST(N'2021-07-01T00:00:00.000' AS DateTime), NULL)
SET IDENTITY_INSERT [dbo].[FundingPlan] OFF
GO
SET IDENTITY_INSERT [dbo].[FundingType] ON 

INSERT [dbo].[FundingType] ([FundingTypeID], [Description]) VALUES (1, N'Pre-Purchase')
INSERT [dbo].[FundingType] ([FundingTypeID], [Description]) VALUES (2, N'Donation')
INSERT [dbo].[FundingType] ([FundingTypeID], [Description]) VALUES (3, N'Investment')
SET IDENTITY_INSERT [dbo].[FundingType] OFF
GO
SET IDENTITY_INSERT [dbo].[GenericLocalizationKeyValues] ON 

INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (1, N'Password', N'Contraseña', 2, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (2, N'Password', N'Password', 1, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (3, N'ActivatePhone', N'Activate my Mobile Features.', 1, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (4, N'add2Q', N'Add to my Print Queue', 1, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (5, N'ALERT', N'ALERT', 1, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (6, N'ChangePassword', N'Change Password', 1, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (7, N'ConfirmEmail', N'Confirm E-Mail:', 1, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (8, N'confirmpassword', N'Confirm Password:', 1, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (9, N'Continue', N'Continue', 1, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (10, N'Createanewaccount', N'Create a new account', 1, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (11, N'CreateUser', N'Create User', 1, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (12, N'createusertext', N'Joining us for the first time?', 1, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (13, N'CurrentCrowdfundingOfferings', N'Current Crowdfunding Offerings', 1, N'INVESTNET')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (14, N'DuplicateEmail', N'The e-mail address that you entered is already in use. Please enter a different e-mail address.', 1, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (15, N'Email', N'E-Mail:', 1, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (16, N'EmailAst', N'E-Mail*', 1, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (17, N'emailcompare', N'The e-mail that you entered is already in use. Please enter a different e-mail.', 1, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (18, N'EmailConform', N'Your Email has not been confirmed yet. In order to see all the features on the site, please check your email and click the Confirm hyperlink.', 1, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (19, N'EmailRequired', N'A valid email address is required.', 1, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (20, N'English', N'English', 1, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (21, N'est_useridtooltip', N'Your unique account name', 1, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (22, N'Events', N'Events', 1, N'INVESTNET')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (23, N'failuretext', N'Your login attempt was not successful. Please try again.', 1, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (24, N'FinalStep', N'Check your email now for the final step to log in.', 1, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (25, N'FinalStepTitle', N'Final Step', 1, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (26, N'FinalStepToJoin', N'Final Step to Join', 1, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (27, N'FindMore', N'find more', 1, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (28, N'Finish', N'Finish', 1, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (29, N'firstnamecol', N'First Name:', 1, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (30, N'FirstNameReq', N'The First Name field is required.', 1, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (31, N'ForgotPassword', N'Forgot your password?', 1, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (32, N'French', N'French', 1, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (33, N'FriendOf', N'Friend of', 1, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (34, N'From', N'from', 1, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (35, N'Here', N'Here', 1, N'INVESTNET')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (36, N'ImgURL', N'~/Images/Common/login.gif', 1, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (37, N'LABEL_LG_BUSINESSES', N'Looking for capital?', 1, N'BUSINESSES')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (38, N'LABEL_LG_INVESTNET', N'Local Investment Network', 1, N'INVESTNET')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (39, N'LABEL_LG_INVESTORS', N'Want to help your favorite businesses?', 1, N'INVESTORS')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (40, N'LABEL_MD_BUSINESSES', N'Follow our three simple steps:', 1, N'BUSINESSES')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (41, N'LABEL_MD_INVESTNET', N'Connecting Local Business with Local Dollars', 1, N'INVESTNET')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (42, N'LABEL_MD_INVESTORS', N'Follow our three simple steps:', 1, N'INVESTORS')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (43, N'lastnamecol', N'Last Name:', 1, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (44, N'LastNameReq', N'The Last Name field is required.', 1, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (45, N'login', N'Login', 1, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (46, N'login2Phone', N'Login to add to your mobile favorites.', 1, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (47, N'login2Q', N'Login to your Print Queue', 1, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (48, N'loginadd2favs_adv', N'Login to add this Location to your Favorites', 1, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (49, N'loginadd2Q', N'Login to add to your Print Q', 1, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (50, N'loginbuttontext', N'Log In', 1, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (51, N'loginexpl', N'Sign in for add''l offers', 1, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (52, N'loginFavs', N'Login to get your Favorites', 1, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (53, N'loginfeedback', N'Login to send Feedback', 1, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (54, N'loginfeedback_cou', N'Login to send Feedback About This Coupon', 1, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (55, N'LoginFlyBy', N'Login to post a Fly By', 1, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (56, N'loginforprivategroups', N'Login to see Private Groups', 1, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (57, N'loginfriends_cou', N'Login to send this Offer to my Friend(s)', 1, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (58, N'loginfundraise', N'Login to Fundraise', 1, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (59, N'loginlongexpl', N'Login to see many more offers', 1, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (60, N'LoginMemberOffers', N'Login to see member offers', 1, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (61, N'LoginMore', N'login for more', 1, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (62, N'loginmygroups', N'Login to see your groups', 1, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (63, N'LoginOptions', N'Login for more options', 1, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (64, N'LoginRate', N'Login to Rate this Location', 1, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (65, N'loginSaveSearch', N'Login to save this Search', 1, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (66, N'loginSaveSearchCol', N'Login to Save Search:', 1, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (67, N'loginSeeMyMobileQ', N'Login to see your Mobile Queue', 1, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (68, N'loginSeeMyQ', N'Login to see your Print Queue', 1, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (69, N'Logintoactivate', N'Login to activate this feature', 1, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (70, N'LoginTocol', N'Login to:', 1, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (71, N'logintohome', N'Login to go to your Home Page', 1, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (72, N'logintoposttrade', N'Login To Post a Trade', 1, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (73, N'logintoprint', N'Login to add to print Queue.', 1, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (74, N'LogintoQs', N'Login to add to Queues', 1, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (75, N'LogintoSend', N'Login to send to your Queues or friends', 1, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (76, N'LoginToSendcol', N'Login to send to:', 1, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (77, N'logintotrade', N'Login to access trading', 1, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (78, N'logintotreasure', N'Login to open your Treasure Chest', 1, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (79, N'LogOff', N'Log Off', 1, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (80, N'logout', N'logout', 1, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (81, N'Membersgetrewards', N'Members get rewards', 1, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (82, N'Membersgetrewards2', N'on an ongoing basis', 1, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (83, N'MyAccount', N'My Account', 1, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (84, N'MyFriends', N'My Friends', 1, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (85, N'MyMobileFavs', N'My Mobile Favs', 1, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (86, N'MyPrintQ', N'My Print Q', 1, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (87, N'Name', N'Name', 1, N'INVESTNET')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (88, N'Next', N'Next', 1, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (89, N'OneLastStepToJoin', N'One last step to join up with', 1, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (90, N'orFacebook', N'OR Login using your Facebook account', 1, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (91, N'orFacebook1', N'OR Login using your ', 1, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (92, N'orFacebook2', N'account:', 1, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (93, N'orLoginTo', N'or login to:', 1, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (94, N'PasswordCompare', N'The Password and Confirmation Password must match.', 1, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (95, N'passwordlabeltext', N'Password:', 1, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (96, N'passwordrecoverytext', N'Forgot your password?', 1, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (97, N'passwordrequirederrormessage', N'Password is required.', 1, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (98, N'PhoneNumbercol', N'Phone Number:', 1, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (99, N'Picturecol', N'Picture:', 1, N'LOGIN')
GO
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (100, N'Place', N'Place', 1, N'INVESTNET')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (101, N'PostalCodelRequired', N'A valid zip code is required.', 1, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (102, N'prefpasswordlabeltext', N'Preferred Password:', 1, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (103, N'PrintQ', N'Print Queue', 1, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (104, N'Privacy', N'Privacy: We will not share your contact information with anyone.', 1, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (105, N'recoverpassword', N'Enter your User Name to receive your password via email.', 1, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (106, N'Register', N'Register', 1, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (107, N'RegisterNew', N'Register as a new user', 1, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (108, N'RememberMe', N'Remember Me', 1, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (109, N'remembermetext', N'Remember me on this computer', 1, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (110, N'screennamecol', N'Screen Name:', 1, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (111, N'securityanswer', N'Security Answer:', 1, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (112, N'securityanswerrequired', N'Security answer is required.', 1, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (113, N'securityquestion', N'Security Question:', 1, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (114, N'securityquestionrequired', N'Security question is required.', 1, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (115, N'SignIn', N'Sign in', 1, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (116, N'SignInForMore', N'Sign in for additional offers and rewards:', 1, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (117, N'signupgreeting', N'Welcome Aboard!', 1, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (118, N'Spanish', N'Spanish', 1, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (119, N'Submit', N'Submit', 1, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (120, N'Successfulcreation', N'Your account has been successfully created. ', 1, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (121, N'ThisWeek', N'This Week', 1, N'INVESTNET')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (122, N'titletext', N'Member Log In', 1, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (123, N'TotalFans', N'Total Fans', 1, N'INVESTNET')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (124, N'UpdateProfile', N'Update your Profile', 1, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (125, N'UserID', N'User ID:', 1, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (126, N'useridtooltip', N'Make up a screen name just for you', 1, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (127, N'usernamecompare', N'The user name that you entered is already in use. Please enter a different name.', 1, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (128, N'usernamelabeltext', N'Member Name:', 1, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (129, N'usernamerequirederrormessage', N'User ID is required.', 1, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (130, N'Visitor', N'Visitor', 1, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (131, N'VisitorFrom', N'visitor from', 1, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (132, N'WhatIs', N'What is', 1, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (133, N'WhosWinning', N'Who''s Winning the Race For Fans?', 1, N'INVESTNET')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (134, N'WhySignIn', N'Why Sign In?', 1, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (135, N'Zip', N'Zip:', 1, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (136, N'ActivatePhone', N'Active sus características móviles.', 2, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (137, N'add2Q', N'Agregue a la coleta', 2, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (138, N'ALERT', N'ALERTA', 2, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (139, N'ChangePassword', N'Cambie la Contraseña', 2, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (140, N'confirmpassword', N'Confirme la Contraseña:', 2, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (141, N'Continue', N'Continúe', 2, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (142, N'Createanewaccount', N'Crear una nueva cuenta', 2, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (143, N'CreateUser', N'Cree a Miembro', 2, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (144, N'createusertext', N'¿Ensamblarnos para la primera vez?', 2, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (145, N'CurrentCrowdfundingOfferings', N'Ofertas de Crowdfunding', 2, N'INVESTNET')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (146, N'DuplicateEmail', N'La dirección del E-mail que usted incorporó es ya adentro uso. Incorpore por favor una diversa dirección del E-mail.', 2, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (147, N'Email', N'Correo electrónico:', 2, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (148, N'EmailAst', N'Correo electrónico*', 2, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (149, N'emailcompare', N'El correo electrónico que usted sometió es ya adentro uso. Incorpore por favor un diverso correo electrónico.', 2, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (150, N'EmailConform', N'Su correo electrónico aún no ha sido confirmado, compruebe su correo y haga clic en Confirmar hipervínculo', 2, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (151, N'EmailRequired', N'Se requiere el correo electrónico.', 2, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (152, N'English', N'Inglés', 2, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (153, N'est_useridtooltip', N'Su único nombre de cuenta', 2, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (154, N'Events', N'Eventos', 2, N'INVESTNET')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (155, N'failuretext', N'Su tentativa de la conexión no era acertada. Por favor intento otra vez.', 2, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (156, N'FinalStep', N'Ahora compruebe su email para saber si hay el paso final para abrirse una sesión.', 2, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (157, N'FinalStepTitle', N'el Paso Final', 2, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (158, N'FinalStepToJoin', N'El paso final para unirse a', 2, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (159, N'FindMore', N'ver más', 2, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (160, N'Finish', N'Completo', 2, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (161, N'firstnamecol', N'Prénom:', 2, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (162, N'FirstNameReq', N'El campo Nombre es obligatorio.', 2, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (163, N'ForgotPassword', N'¿Olvidaste tu contraseña?', 2, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (164, N'French', N'Francés', 2, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (165, N'FriendOf', N'Amigo de', 2, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (166, N'From', N'de', 2, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (167, N'Here', N'Aquí', 2, N'INVESTNET')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (168, N'ImgURL', N'~/Images/Common/login_es.gif', 2, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (169, N'lastnamecol', N'Apellido:', 2, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (170, N'LastNameReq', N'El campo Apellido es obligatorio.', 2, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (171, N'login', N'Entrar', 2, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (172, N'login2Phone', N'Ábrase una sesión para agregar a sus favoritos móviles.', 2, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (173, N'login2Q', N'Entrar a la Cola de Impresión', 2, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (174, N'loginadd2favs_adv', N'Entrar para agregar este anunciante a tus favoritos', 2, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (175, N'loginadd2Q', N'Entrar para agregue a la coleta de impresión', 2, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (176, N'loginbuttontext', N'Entrar', 2, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (177, N'loginexpl', N'Entrar para las cupones adicionales', 2, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (178, N'loginFavs', N'Entrar para obtener sus Favoritos', 2, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (179, N'loginfeedback', N'Entrar para enviar la regeneración.', 2, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (180, N'loginfeedback_cou', N'Entrar para enviar la regeneración sobre esta cupón', 2, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (181, N'LoginFlyBy', N'Entre para enviar Rápidos', 2, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (182, N'loginforprivategroups', N'Entre para ver a Grupos Privados', 2, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (183, N'loginfriends_cou', N'Entrar para enviar esta Cupón a Mis Amigo(s)', 2, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (184, N'loginfundraise', N'Entre para Recaude de Fondos', 2, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (185, N'loginlongexpl', N'Entrar para ver más ofertas', 2, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (186, N'LoginMemberOffers', N'Enter para ver ofertas para los miembros', 2, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (187, N'LoginMore', N'entrada para más', 2, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (188, N'loginmygroups', N'Inicie sesión para ver tus grupos', 2, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (189, N'LoginOptions', N'Ingresa para ver más opciones', 2, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (190, N'LoginRate', N'Inicie sesión para Califica esta localización', 2, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (191, N'loginSaveSearch', N'Entre para ahorrar esta búsqueda', 2, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (192, N'loginSaveSearchCol', N'Entre para ahorrar búsqueda:', 2, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (193, N'loginSeeMyMobileQ', N'Inicie sesión para ver mi cola móvil', 2, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (194, N'loginSeeMyQ', N'Ábrase una sesión para ver su cola de impresión', 2, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (195, N'Logintoactivate', N'Entrar para activar esta característica', 2, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (196, N'LoginTocol', N'Entre al:', 2, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (197, N'logintohome', N'Entre a ir a su hogar', 2, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (198, N'logintoposttrade', N'Entre para enviar un comercio', 2, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (199, N'logintoprint', N'Ábrase una sesión para agregar a la coleta de impresión.', 2, N'LOGIN')
GO
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (200, N'LogintoQs', N'Ingresar para agregar a las colas', 2, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (201, N'LogintoSend', N'Entre para enviar a tus amigos o colas', 2, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (202, N'LoginToSendcol', N'Entre para enviar a:', 2, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (203, N'logintotrade', N'Entre al trueque', 2, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (204, N'logintotreasure', N'Entre para abrirse el pecho del tesoro', 2, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (205, N'LogOff', N'Salida', 2, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (206, N'logout', N'Salida', 2, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (207, N'Membersgetrewards', N'Miembros recibe premios', 2, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (208, N'Membersgetrewards2', N'sobre una base continua', 2, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (209, N'MyAccount', N'Mi Cuenta', 2, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (210, N'MyFriends', N'Mis Amigo(s)', 2, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (211, N'MyMobileFavs', N'Fav Móviles', 2, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (212, N'MyPrintQ', N'Coleta de Impresión', 2, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (213, N'Name', N'Nombre', 2, N'INVESTNET')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (214, N'Next', N'Después', 2, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (215, N'OneLastStepToJoin', N'Un último paso para unirse a', 2, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (216, N'orFacebook', N'O inicie sesión con su cuenta de Facebook', 2, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (217, N'orFacebook1', N'O inicie sesión con su cuenta de', 2, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (218, N'orFacebook2', N':', 2, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (219, N'orLoginTo', N'o ingresa a:', 2, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (220, N'PasswordCompare', N'La contraseña y la contraseña de la confirmación deben emparejar.', 2, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (221, N'passwordlabeltext', N'Contraseña:', 2, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (222, N'passwordrecoverytext', N'¿Ha olvidado su contraseña?', 2, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (223, N'passwordrequirederrormessage', N'Se requiere la contraseña.', 2, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (224, N'PhoneNumbercol', N'Número de Teléfono:', 2, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (225, N'Picturecol', N'Imagen:', 2, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (226, N'Place', N'Lugar', 2, N'INVESTNET')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (227, N'PostalCodelRequired', N'Se requiere el postal.', 2, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (228, N'prefpasswordlabeltext', N'Contraseña Preferida:', 2, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (229, N'Privacy', N'Seguridad: No daremos su información del contacto a cualquier persona, y NO a los publicistas en este sitio.', 2, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (230, N'recoverpassword', N'Incorpore su nombre del usuario para recibir su contraseña vía el email.', 2, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (231, N'Register', N'Registro', 2, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (232, N'RegisterNew', N'Regístrese como nuevo usuario', 2, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (233, N'RememberMe', N'Recuérdame', 2, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (234, N'remembermetext', N'Recordarme en este equipo.', 2, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (235, N'screennamecol', N'Nombre de Usuario:', 2, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (236, N'securityanswer', N'Respuesta de la Seguridad:', 2, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (237, N'securityanswerrequired', N'Se requiere el respuesta de la seguridad.', 2, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (238, N'securityquestion', N'Pregunta de la Seguridad:', 2, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (239, N'securityquestionrequired', N'Se requiere el pregunta de la seguridad.', 2, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (240, N'SignIn', N'Entrar', 2, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (241, N'SignInForMore', N'Identifícate para conocer las ofertas adicionales y premios:', 2, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (242, N'signupgreeting', N'¡Recepción A bordo!', 2, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (243, N'Spanish', N'Español', 2, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (244, N'Submit', N'Envíe', 2, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (245, N'Successfulcreation', N'Su cuenta se ha creado con éxito. ', 2, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (246, N'ThisWeek', N'Esta semana', 2, N'INVESTNET')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (247, N'titletext', N'Conexión Del Miembro', 2, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (248, N'TotalFans', N'Partidarios', 2, N'INVESTNET')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (249, N'UpdateProfile', N'Actualiza tu perfil', 2, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (250, N'UserID', N'ID del Usuario:', 2, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (251, N'useridtooltip', N'Componen un nombre de cuenta para usted', 2, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (252, N'usernamecompare', N'El nombre del usuario que usted sometió es ya adentro uso. Incorpore por favor un diverso nombre.', 2, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (253, N'usernamelabeltext', N'Nombre Del Miembro:', 2, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (254, N'usernamerequirederrormessage', N'Se requiere el ID del Usuario.', 2, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (255, N'Visitor', N'Visitante', 2, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (256, N'VisitorFrom', N'visitante de', 2, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (257, N'WhatIs', N'¿Qué es', 2, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (258, N'WhosWinning', N'¿Quién está ganando la carrera para los aficionados?', 2, N'INVESTNET')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (259, N'WhySignIn', N'¿Por qué Entrar?', 2, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (260, N'Zip', N'Postal:', 2, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (261, N'ActivatePhone', N'Activez vos dispositifs mobiles.', 3, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (262, N'add2Q', N'Ajoutez à ce qui est coleta', 3, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (263, N'ALERT', N'ALERTE', 3, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (264, N'ChangePassword', N'Changez le Mot de passe', 3, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (265, N'confirmpassword', N'Confirmez le mot de Passe:', 3, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (266, N'Continue', N'Continuez', 3, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (267, N'Createanewaccount', N'Créer un nouveau compte', 3, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (268, N'CreateUser', N'Créez Le Membre', 3, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (269, N'createusertext', N'Nous joignant pour la première fois ?', 3, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (270, N'DuplicateEmail', N'L''adresse de E-mail que vous avez écrite est déjà en service. Veuillez écrire une adresse différente de E-mail.', 3, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (271, N'Email', N'E-mail:', 3, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (272, N'EmailAst', N'E-Mail*', 3, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (273, N'emailcompare', N'Le E-mail que vous avez écrit est déjà en service. Veuillez écrire un E-mail différent.', 3, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (274, N'EmailConform', N'Votre e-mail n''a pas encore été confirmé, s''il vous plaît vérifier votre courrier et cliquez sur l''hyperlien Confirm', 3, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (275, N'EmailRequired', N'E-mail est exigé.', 3, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (276, N'English', N'Anglais', 3, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (277, N'est_useridtooltip', N'Votre nom de compte', 3, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (278, N'failuretext', N'Votre tentative d''ouverture n''était pas réussie. Svp essai encore.', 3, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (279, N'FinalStep', N'Vérifiez maintenant son email pour savoir s''il y a le pas final pour s''ouvrir une session.', 3, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (280, N'FinalStepTitle', N'le Pas Final', 3, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (281, N'FinalStepToJoin', N'Dernière étape pour rejoindre', 3, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (282, N'FindMore', N'trouver plus', 3, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (283, N'Finish', N'Complet', 3, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (284, N'firstnamecol', N'Prénom:', 3, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (285, N'FirstNameReq', N'Le champ premier nom est requis.', 3, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (286, N'ForgotPassword', N'Vous avez oublié votre mot de passe ?', 3, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (287, N'French', N'Français', 3, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (288, N'FriendOf', N'Ami de', 3, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (289, N'From', N'de', 3, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (290, N'ImgURL', N'~/Images/Common/login_fr.gif', 3, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (291, N'lastnamecol', N'Nom de famille:', 3, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (292, N'LastNameReq', N'Le champ Nom de famille est requis.', 3, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (293, N'login', N'Se Connecter', 3, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (294, N'login2Phone', N'Entreé pour s''ajouter à vos favoris mobiles.', 3, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (295, N'login2Q', N'Entrer à votre file d''impression', 3, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (296, N'loginadd2favs_adv', N'Entrée pour ajouter cette localité à vos favoris', 3, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (297, N'loginadd2Q', N'Entrée pour l''ajouter à votre coleta d''impression', 3, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (298, N'loginbuttontext', N'Se Connecter', 3, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (299, N'loginexpl', N'Entreé pour les coupons additionnels', 3, N'LOGIN')
GO
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (300, N'loginFavs', N'Entrée pour obtenir vos favoris', 3, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (301, N'loginfeedback', N'Entreé pour envoyer la rétroaction.', 3, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (302, N'loginfeedback_cou', N'Entre au envoyer la régénération sur celle-ci coupon', 3, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (303, N'LoginFlyBy', N'Entreé pour poster les Rapides', 3, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (304, N'loginforprivategroups', N'Entreé pour voir les groupes privés', 3, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (305, N'loginfriends_cou', N'Entre au envoyer celle-ci Coupon à Mes Ami(s)', 3, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (306, N'loginfundraise', N'Collecte pas d''argent', 3, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (307, N'loginlongexpl', N'Entrez pour voir plus d''offres', 3, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (308, N'LoginMemberOffers', N'Entrez pour connaître les offres pour les membres', 3, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (309, N'LoginMore', N'pour plus d''entrer', 3, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (310, N'loginmygroups', N'Entrez pour voir vos groupes', 3, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (311, N'LoginOptions', N'Entrez pour plus d''options', 3, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (312, N'LoginRate', N'Entrez pour noter ce Lieu', 3, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (313, N'loginSaveSearch', N'Entrez pour sauver cette recherche', 3, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (314, N'loginSaveSearchCol', N'Entrez sauver recherche:', 3, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (315, N'loginSeeMyMobileQ', N'Entrez pour voir votre file d''attente Mobile', 3, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (316, N'loginSeeMyQ', N'Entrez pour voir votre file d''attente à l''impression', 3, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (317, N'Logintoactivate', N'Entreé pour activer ce dispositif', 3, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (318, N'LoginTocol', N'Entreé pour:', 3, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (319, N'logintohome', N'Entrez pour aller à votre maison', 3, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (320, N'logintoposttrade', N'Entreé pour poster un commerce', 3, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (321, N'logintoprint', N'Entreé pour s''ajouter à la file d''attente à l''impression.', 3, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (322, N'LogintoQs', N'Entreé pour ajouter aux files d''attente', 3, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (323, N'LogintoSend', N'Entrée pour l''envoyer à vos amis ou des files d''attente', 3, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (324, N'LoginToSendcol', N'Entreé pour envoyer à:', 3, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (325, N'logintotrade', N'Entre au troc', 3, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (326, N'logintotreasure', N'Entrez pour ouvrir votre coffre de trésor', 3, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (327, N'LogOff', N'Déconnexion', 3, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (328, N'logout', N'déconnexion', 3, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (329, N'Membersgetrewards', N'Les membres obtiennent des récompenses', 3, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (330, N'Membersgetrewards2', N'sur une base continue', 3, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (331, N'MyAccount', N'Mon Compte', 3, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (332, N'MyFriends', N'Mes Amis', 3, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (333, N'MyMobileFavs', N'Vos Fav Mobiles', 3, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (334, N'MyPrintQ', N'File d''attente à l''impression', 3, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (335, N'Next', N'Après', 3, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (336, N'OneLastStepToJoin', N'Une dernière étape pour rejoindre', 3, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (337, N'orFacebook', N'OU Connectez-vous à l''aide de votre compte Facebook', 3, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (338, N'orFacebook1', N'OU Connectez-vous à l''aide de votre compte', 3, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (339, N'orFacebook2', N':', 3, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (340, N'orLoginTo', N'ou entrer à :', 3, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (341, N'PasswordCompare', N'Le mot de passe et le mot de passe de confirmation doivent s''assortir.', 3, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (342, N'passwordlabeltext', N'Mot de Passe:', 3, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (343, N'passwordrecoverytext', N'Mot de Passe Oublié ?', 3, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (344, N'passwordrequirederrormessage', N'Le mot de passe est exigé.', 3, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (345, N'PhoneNumbercol', N'Numéro de Téléphone:', 3, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (346, N'Picturecol', N'Image:', 3, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (347, N'PostalCodelRequired', N'Postal est exigé.', 3, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (348, N'prefpasswordlabeltext', N'Mot de passe Préféré :', 3, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (349, N'Privacy', N'Sécurité : Nous ne fournirons pas votre information de contact à n''importe qui, et PAS aux annonceurs sur cet emplacement.', 3, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (350, N'recoverpassword', N'Écrivez votre nom d''utilisateur pour recevoir votre mot de passe par l''intermédiaire d''email.', 3, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (351, N'Register', N'Registre', 3, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (352, N'RegisterNew', N'Inscrivez-vous en tant que nouvel utilisateur', 3, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (353, N'RememberMe', N'Souvenez-vous de moi', 3, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (354, N'remembermetext', N'Mémoriser mes informations sur cet ordinateur.', 3, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (355, N'screennamecol', N'Nom de l''écran:', 3, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (356, N'securityanswer', N'Réponse de Sécurité:', 3, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (357, N'securityanswerrequired', N'Réponse de Sécurité est exigé.', 3, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (358, N'securityquestion', N'Question de Sécurité:', 3, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (359, N'securityquestionrequired', N'Question de Sécurité est exigé.', 3, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (360, N'SignIn', N'Entreé', 3, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (361, N'SignInForMore', N'Identifiez-vous pour des offres supplémentaires et récompenses:', 3, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (362, N'signupgreeting', N'Bienvenue À bord !', 3, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (363, N'Spanish', N'Espagnol', 3, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (364, N'Submit', N'Envoyez', 3, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (365, N'Successfulcreation', N'Votre compte a été avec succès créé. ', 3, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (366, N'titletext', N'S''identifier De Membre', 3, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (367, N'UserID', N'ID de l''utilisateur:', 3, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (368, N'useridtooltip', N'Compléter un nom de compte, juste pour vous', 3, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (369, N'usernamecompare', N'Le nom d''utilisateur que vous avez soumis est déjà en service. Veuillez écrire un nom différent.', 3, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (370, N'usernamelabeltext', N'Nom De Membre:', 3, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (371, N'usernamerequirederrormessage', N'ID de l''utilisateur est exigé.', 3, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (372, N'Visitor', N'Visiteur', 3, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (373, N'VisitorFrom', N'visiteur de', 3, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (374, N'WhatIs', N'Qu''est-ce que', 3, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (375, N'WhySignIn', N'Pourquoi Entreé?', 3, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (376, N'Zip', N'Postal:', 3, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (377, N'ALERT', N'警告', 4, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (378, N'ChangePassword', N'パスワードの変更', 4, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (379, N'confirmpassword', N'パスワードの確認:', 4, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (380, N'Continue', N'続行', 4, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (381, N'Createanewaccount', N'新しいアカウントを作成する', 4, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (382, N'CreateUser', N'ユーザーの作成', 4, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (383, N'createusertext', N'初めて参加しますか?', 4, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (384, N'DuplicateEmail', N'入力した電子メール アドレスは既に使用されています。別の電子メール アドレスを入力してください。', 4, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (385, N'Email', N'電子メール：', 4, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (386, N'EmailAst', N'電子メール', 4, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (387, N'emailcompare', N'入力した電子メールは既に使用されています。別の電子メールを入力してください。', 4, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (388, N'EmailConform', N'メールはまだ確認されていませんが、メールを確認して[確認]ハイパーリンクをクリックしてください。', 4, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (389, N'EmailRequired', N'メールアドレスが必要です。', 4, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (390, N'English', N'英語', 4, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (391, N'est_useridtooltip', N'一意のアカウント名', 4, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (392, N'failuretext', N'ログインの試行に失敗しました。もう一度やり直してください。', 4, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (393, N'FinalStep', N'ログインする最後の手順については、メールで確認してください。', 4, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (394, N'FinalStepTitle', N'最終ステップ', 4, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (395, N'FinalStepToJoin', N'参加する最後のステップ', 4, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (396, N'FindMore', N'もっと見つける', 4, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (397, N'Finish', N'完了', 4, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (398, N'firstnamecol', N'ファーストネーム:', 4, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (399, N'FirstNameReq', N'名フィールドが必須です。', 4, N'LOGIN')
GO
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (400, N'ForgotPassword', N'パスワードをお忘れですか?', 4, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (401, N'French', N'フランス語', 4, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (402, N'FriendOf', N'の友人', 4, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (403, N'From', N'差出人', 4, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (404, N'lastnamecol', N'姓:', 4, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (405, N'LastNameReq', N'姓フィールドが必要です。', 4, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (406, N'login', N'ログイン', 4, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (407, N'loginbuttontext', N'ログイン', 4, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (408, N'loginexpl', N'ログイン', 4, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (409, N'loginFavs', N'ログインしてお気に入りを取得', 4, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (410, N'loginfeedback', N'ログインしてフィードバックを送信します。', 4, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (411, N'LoginFlyBy', N'フライバイを投稿するログイン', 4, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (412, N'LoginMore', N'より多くのログイン', 4, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (413, N'LoginOptions', N'その他のオプションにログインする', 4, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (414, N'loginSaveSearch', N'ログインしてこの検索を保存する', 4, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (415, N'LoginTocol', N'ログイン先:', 4, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (416, N'logintohome', N'ログインしてホームページに移動', 4, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (417, N'logintoposttrade', N'ログインして取引を投稿する', 4, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (418, N'LoginToSendcol', N'送信先:', 4, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (419, N'logintotrade', N'ログインして取引にアクセスする', 4, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (420, N'LogOff', N'ログアウト', 4, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (421, N'logout', N'ログアウト', 4, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (422, N'MyAccount', N'自分のアカウント', 4, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (423, N'Next', N'次に', 4, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (424, N'OneLastStepToJoin', N'参加する最後のステップ', 4, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (425, N'orFacebook', N'またはFacebookアカウントを使用してログイン', 4, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (426, N'orFacebook1', N'または', 4, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (427, N'orFacebook2', N'アカウントを使用してログイン :', 4, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (428, N'orLoginTo', N'またはログイン先:', 4, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (429, N'PasswordCompare', N'パスワードと確認パスワードが一致する必要があります。', 4, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (430, N'passwordlabeltext', N'パスワード：', 4, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (431, N'passwordrecoverytext', N'パスワードをお忘れですか?', 4, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (432, N'passwordrequirederrormessage', N'パスワードが必要です。', 4, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (433, N'PhoneNumbercol', N'電話番号:', 4, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (434, N'Picturecol', N'画像：', 4, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (435, N'PostalCodelRequired', N'有効な郵便番号が必要です。', 4, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (436, N'Privacy', N'プライバシー', 4, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (437, N'recoverpassword', N'ユーザー名を入力して、電子メールでパスワードを受け取ります。', 4, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (438, N'Register', N'登録', 4, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (439, N'RegisterNew', N'新しいユーザーとして登録する', 4, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (440, N'RememberMe', N'リメンバー・ミー', 4, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (441, N'remembermetext', N'このコンピューターで私を覚えておいてください。', 4, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (442, N'screennamecol', N'画面名:', 4, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (443, N'securityanswer', N'セキュリティの回答:', 4, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (444, N'securityanswerrequired', N'セキュリティの答えが必要です。', 4, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (445, N'securityquestion', N'セキュリティに関する質問:', 4, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (446, N'securityquestionrequired', N'セキュリティの質問が必要です。', 4, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (447, N'SignIn', N'サインイン', 4, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (448, N'signupgreeting', N'搭乗ありがとうございます！', 4, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (449, N'Spanish', N'スペイン語', 4, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (450, N'Submit', N'送信', 4, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (451, N'Successfulcreation', N'アカウントは正常に作成されました。今すぐログインできます。', 4, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (452, N'titletext', N'メンバーログイン', 4, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (453, N'UpdateProfile', N'プロフィールを更新する', 4, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (454, N'UserID', N'ユーザー ID:', 4, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (455, N'useridtooltip', N'あなただけのアカウント名を作成する', 4, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (456, N'usernamecompare', N'入力したユーザー名は既に使用されています。別の名前を入力してください。', 4, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (457, N'usernamelabeltext', N'メンバー名:', 4, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (458, N'usernamerequirederrormessage', N'メンバー名が必要です。', 4, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (459, N'Visitor', N'訪問 者', 4, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (460, N'VisitorFrom', N'訪問者', 4, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (461, N'WhatIs', N'何が', 4, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (462, N'WhySignIn', N'サインインする理由', 4, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (463, N'Zip', N'郵便 番号', 4, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (464, N'ALERT', N'警报', 5, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (465, N'ChangePassword', N'更改密码', 5, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (466, N'confirmpassword', N'确认密码：', 5, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (467, N'Continue', N'继续', 5, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (468, N'Createanewaccount', N'创建新帐户', 5, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (469, N'CreateUser', N'创建用户', 5, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (470, N'createusertext', N'第一次加入我们？', 5, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (471, N'DuplicateEmail', N'您输入的电子邮件地址已在使用中。请输入其他电子邮件地址。', 5, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (472, N'Email', N'电子邮件：', 5, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (473, N'EmailAst', N'电子邮件', 5, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (474, N'emailcompare', N'您输入的电子邮件已在使用中。请输入其他电子邮件。', 5, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (475, N'EmailConform', N'您的电子邮件尚未确认，请检查您的邮件并单击"确认"超链接', 5, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (476, N'EmailRequired', N'电子邮件是必需的。', 5, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (477, N'English', N'英语', 5, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (478, N'est_useridtooltip', N'您唯一的帐户名称', 5, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (479, N'failuretext', N'您的登录尝试未成功。请重试。', 5, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (480, N'FinalStep', N'请检查您的电子邮件，了解登录的最后一步。', 5, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (481, N'FinalStepTitle', N'最后一步', 5, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (482, N'FinalStepToJoin', N'加入的最后一步', 5, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (483, N'FindMore', N'查找更多', 5, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (484, N'Finish', N'完成', 5, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (485, N'firstnamecol', N'名字：', 5, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (486, N'FirstNameReq', N'"名字"字段为必填项。', 5, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (487, N'ForgotPassword', N'忘记密码了？', 5, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (488, N'French', N'法语', 5, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (489, N'FriendOf', N'朋友', 5, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (490, N'From', N'从', 5, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (491, N'lastnamecol', N'姓氏：', 5, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (492, N'LastNameReq', N'"姓氏"字段为必填项。', 5, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (493, N'login', N'登录', 5, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (494, N'loginbuttontext', N'登录', 5, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (495, N'loginexpl', N'登录', 5, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (496, N'loginFavs', N'输入以获取收藏夹', 5, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (497, N'LoginFlyBy', N'登录以发布"飞经"', 5, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (498, N'LoginMore', N'登录更多', 5, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (499, N'LoginOptions', N'登录更多选项', 5, N'LOGIN')
GO
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (500, N'loginSaveSearch', N'登录以保存此搜索', 5, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (501, N'loginSaveSearchCol', N'登录以保存此搜索', 5, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (502, N'Logintoactivate', N'登录以激活此功能', 5, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (503, N'LoginTocol', N'登录至：', 5, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (504, N'logintohome', N'登录主页', 5, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (505, N'logintoposttrade', N'登录以发布交易', 5, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (506, N'LoginToSendcol', N'登录以发送到：', 5, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (507, N'logintotrade', N'登录以访问交易', 5, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (508, N'LogOff', N'注销', 5, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (509, N'logout', N'注销', 5, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (510, N'Membersgetrewards', N'会员获得奖励', 5, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (511, N'Membersgetrewards2', N'持续', 5, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (512, N'MyAccount', N'我的帐户', 5, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (513, N'MyFriends', N'我的朋友', 5, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (514, N'Next', N'下', 5, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (515, N'OneLastStepToJoin', N'加入的最后一步', 5, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (516, N'orFacebook', N'或使用您的 Facebook 帐户登录', 5, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (517, N'orFacebook1', N'或使用您的', 5, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (518, N'orFacebook2', N'帐户登录 :', 5, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (519, N'orLoginTo', N'或登录至：', 5, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (520, N'PasswordCompare', N'密码和确认密码必须匹配。', 5, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (521, N'passwordlabeltext', N'密码：', 5, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (522, N'passwordrecoverytext', N'忘记密码了？', 5, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (523, N'passwordrequirederrormessage', N'密码是必需的。', 5, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (524, N'PhoneNumbercol', N'电话号码：', 5, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (525, N'Picturecol', N'图片：', 5, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (526, N'PostalCodelRequired', N'需要有效的邮政编码。', 5, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (527, N'prefpasswordlabeltext', N'首选密码：', 5, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (528, N'Privacy', N'隐私', 5, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (529, N'recoverpassword', N'输入您的用户名以通过电子邮件接收您的密码。', 5, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (530, N'Register', N'注册', 5, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (531, N'RegisterNew', N'注册为新用户', 5, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (532, N'RememberMe', N'记住我', 5, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (533, N'remembermetext', N'记住我在这台电脑上。', 5, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (534, N'screennamecol', N'屏幕名称：', 5, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (535, N'securityanswer', N'安全答案：', 5, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (536, N'securityanswerrequired', N'需要安全答案。', 5, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (537, N'securityquestion', N'安全问题：', 5, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (538, N'securityquestionrequired', N'安全问题是必需的。', 5, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (539, N'SignIn', N'登录', 5, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (540, N'signupgreeting', N'欢迎登机！', 5, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (541, N'Spanish', N'西班牙语', 5, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (542, N'Submit', N'提交', 5, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (543, N'Successfulcreation', N'您的帐户已成功创建。您现在可以登录。', 5, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (544, N'titletext', N'成员登录', 5, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (545, N'UpdateProfile', N'更新您的个人资料', 5, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (546, N'UserID', N'用户 ID：', 5, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (547, N'useridtooltip', N'只为您制作一个帐户名称', 5, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (548, N'usernamecompare', N'您输入的用户名已在使用中。请输入其他名称。', 5, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (549, N'usernamelabeltext', N'成员名称：', 5, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (550, N'usernamerequirederrormessage', N'成员名称为必填项。', 5, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (551, N'Visitor', N'游客', 5, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (552, N'VisitorFrom', N'访客来自', 5, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (553, N'WhatIs', N'什么', 5, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (554, N'WhySignIn', N'为什么要登录？', 5, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (555, N'Zip', N'邮政编码', 5, N'LOGIN')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (556, N'LABEL_LG_BUSINESSES', N'¿Buscas capital?', 2, N'BUSINESSES')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (557, N'LABEL_LG_INVESTNET', N'Red de Inversión Local', 2, N'INVESTNET')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (558, N'LABEL_LG_INVESTORS', N'¿Quieres ayudar a tus negocios favoritos?', 2, N'INVESTORS')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (559, N'LABEL_MD_BUSINESSES', N'Siga nuestros tres sencillos pasos:', 2, N'BUSINESSES')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (560, N'LABEL_MD_INVESTNET', N'Conectando negocios locales con dólares locales', 2, N'INVESTNET')
INSERT [dbo].[GenericLocalizationKeyValues] ([KeyValueID], [Key], [Value], [LanguageId], [Comment]) VALUES (561, N'LABEL_MD_INVESTORS', N'Siga nuestros tres sencillos pasos:', 2, N'INVESTORS')
SET IDENTITY_INSERT [dbo].[GenericLocalizationKeyValues] OFF
GO
SET IDENTITY_INSERT [dbo].[Language] ON 

INSERT [dbo].[Language] ([LanguageID], [LanguageCode], [LanguageDescription]) VALUES (1, N'EN-US     ', N'English, United States')
INSERT [dbo].[Language] ([LanguageID], [LanguageCode], [LanguageDescription]) VALUES (2, N'ES-MX', N'Spanish, Mexico')
INSERT [dbo].[Language] ([LanguageID], [LanguageCode], [LanguageDescription]) VALUES (3, N'FR-CA', N'French, Canada')
SET IDENTITY_INSERT [dbo].[Language] OFF
GO
SET IDENTITY_INSERT [dbo].[Localization] ON 

INSERT [dbo].[Localization] ([LocalizationID], [LanguageID], [SiteID]) VALUES (1, 1, 8)
INSERT [dbo].[Localization] ([LocalizationID], [LanguageID], [SiteID]) VALUES (2, 2, 8)
INSERT [dbo].[Localization] ([LocalizationID], [LanguageID], [SiteID]) VALUES (3, 3, 8)
SET IDENTITY_INSERT [dbo].[Localization] OFF
GO
SET IDENTITY_INSERT [dbo].[Site] ON 

INSERT [dbo].[Site] ([SiteID], [Guid], [Name], [URL], [Comments], [IsMasterSite], [ParentID], [DefaultLanguageID], [DateAdded], [AddedByUserID]) VALUES (1, N'b43de734-8094-44e6-be76-ddfe4e336ca4', N'My Community Builder', N'www.mycommunitybuilder.org', N'', 1, 0, 1, CAST(N'2021-09-24T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Site] ([SiteID], [Guid], [Name], [URL], [Comments], [IsMasterSite], [ParentID], [DefaultLanguageID], [DateAdded], [AddedByUserID]) VALUES (2, N'35cf9575-ad5c-49fd-a626-d124508fe9d3', N'Adopt Local Business', N'www.adoptlocalbusiness.org', N'', 1, 0, 1, CAST(N'2021-09-24T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Site] ([SiteID], [Guid], [Name], [URL], [Comments], [IsMasterSite], [ParentID], [DefaultLanguageID], [DateAdded], [AddedByUserID]) VALUES (3, N'1b6a8b32-8835-4215-b294-cc7de9756785', N'Market Center', N'www.MARKETCENTERBALTIMORE.BIZ', N'', 0, 0, 1, CAST(N'2021-09-24T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Site] ([SiteID], [Guid], [Name], [URL], [Comments], [IsMasterSite], [ParentID], [DefaultLanguageID], [DateAdded], [AddedByUserID]) VALUES (4, N'04c9e139-390f-461e-9500-046f8337a0c4', N'South Central Pennsylvania', N'www.mycommunitybuilder.org', N'', 0, 0, 1, CAST(N'2021-09-24T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Site] ([SiteID], [Guid], [Name], [URL], [Comments], [IsMasterSite], [ParentID], [DefaultLanguageID], [DateAdded], [AddedByUserID]) VALUES (5, N'f06ba038-4724-4fef-a7bb-5a7a14dba177', N'Las Cruces', N'www.las-cruces.biz', N'', 0, 0, 1, CAST(N'2021-09-24T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Site] ([SiteID], [Guid], [Name], [URL], [Comments], [IsMasterSite], [ParentID], [DefaultLanguageID], [DateAdded], [AddedByUserID]) VALUES (6, N'58882e88-ce1f-4543-a3d0-ac07ca0d6b47', N'Broward', N'www.mycommunitybuilder.org', N'', 0, 0, 1, CAST(N'2021-09-24T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Site] ([SiteID], [Guid], [Name], [URL], [Comments], [IsMasterSite], [ParentID], [DefaultLanguageID], [DateAdded], [AddedByUserID]) VALUES (7, N'4fec99cf-4dfc-4f12-935e-258cee4dae46', N'Shuman Economics', N'www.ShumanEconomics.com', N'', 0, 0, 1, CAST(N'2021-09-24T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Site] ([SiteID], [Guid], [Name], [URL], [Comments], [IsMasterSite], [ParentID], [DefaultLanguageID], [DateAdded], [AddedByUserID]) VALUES (8, N'4fec99cf-4dfc-4f12-935e-258cee4dae47', N'Local Site', N'http://localhost:5000/', N'', 0, 0, 1, CAST(N'2021-10-08T13:48:10.453' AS DateTime), NULL)
SET IDENTITY_INSERT [dbo].[Site] OFF
GO
INSERT [dbo].[SiteEvents] ([SiteID], [EventID]) VALUES (3, 11)
INSERT [dbo].[SiteEvents] ([SiteID], [EventID]) VALUES (3, 12)
INSERT [dbo].[SiteEvents] ([SiteID], [EventID]) VALUES (3, 13)
INSERT [dbo].[SiteEvents] ([SiteID], [EventID]) VALUES (3, 14)
INSERT [dbo].[SiteEvents] ([SiteID], [EventID]) VALUES (3, 15)
INSERT [dbo].[SiteEvents] ([SiteID], [EventID]) VALUES (5, 1)
INSERT [dbo].[SiteEvents] ([SiteID], [EventID]) VALUES (5, 2)
INSERT [dbo].[SiteEvents] ([SiteID], [EventID]) VALUES (5, 3)
INSERT [dbo].[SiteEvents] ([SiteID], [EventID]) VALUES (5, 4)
INSERT [dbo].[SiteEvents] ([SiteID], [EventID]) VALUES (5, 5)
INSERT [dbo].[SiteEvents] ([SiteID], [EventID]) VALUES (7, 6)
INSERT [dbo].[SiteEvents] ([SiteID], [EventID]) VALUES (7, 7)
INSERT [dbo].[SiteEvents] ([SiteID], [EventID]) VALUES (7, 8)
INSERT [dbo].[SiteEvents] ([SiteID], [EventID]) VALUES (7, 9)
INSERT [dbo].[SiteEvents] ([SiteID], [EventID]) VALUES (7, 10)
GO
SET IDENTITY_INSERT [dbo].[SiteHeader] ON 

INSERT [dbo].[SiteHeader] ([SiteHeaderID], [Image], [Title], [Text], [DateAdded], [DateUpdated], [SiteID], [SitePageID]) VALUES (1, N'http://www.las-cruces.biz/Images/Saas/Structures/las-crucesbiz/lcb2.jpg', N'LC Local Investment Network', N'Connecting Local Business with Local Dollars', CAST(N'2021-10-21T00:00:00.0000000' AS DateTime2), NULL, 8, 1)
INSERT [dbo].[SiteHeader] ([SiteHeaderID], [Image], [Title], [Text], [DateAdded], [DateUpdated], [SiteID], [SitePageID]) VALUES (2, N'http://www.las-cruces.biz/Images/Saas/Logos/las-crucesbiz/lcnm.PNG', N'Want to help your favorite businesses?', N'Follow our three simple steps:', CAST(N'2021-10-21T00:00:00.0000000' AS DateTime2), NULL, 8, 2)
SET IDENTITY_INSERT [dbo].[SiteHeader] OFF
GO
SET IDENTITY_INSERT [dbo].[SitePage] ON 

INSERT [dbo].[SitePage] ([SitePageID], [Name]) VALUES (1, N'Investnet')
INSERT [dbo].[SitePage] ([SitePageID], [Name]) VALUES (2, N'Investor')
SET IDENTITY_INSERT [dbo].[SitePage] OFF
GO
SET IDENTITY_INSERT [dbo].[SubComment] ON 

INSERT [dbo].[SubComment] ([SubCommentID], [CommentID], [UserID], [PublishDate], [Comment]) VALUES (3, 1083, N'4d0ca1c2-be62-482c-8e4a-0fb499465cc5', CAST(N'2021-08-19T20:49:49.420' AS DateTime), N'Do you have fortnite?')
INSERT [dbo].[SubComment] ([SubCommentID], [CommentID], [UserID], [PublishDate], [Comment]) VALUES (4, 1083, N'4d0ca1c2-be62-482c-8e4a-0fb499465cc5', CAST(N'2021-08-19T20:48:34.253' AS DateTime), N'You know that''s actually a good idea.')
INSERT [dbo].[SubComment] ([SubCommentID], [CommentID], [UserID], [PublishDate], [Comment]) VALUES (5, 1088, N'4d0ca1c2-be62-482c-8e4a-0fb499465cc5', CAST(N'2021-08-19T20:59:40.583' AS DateTime), N'Thank you I hadn''t thought of that and you''re right!  Check us out in a few weeks!')
INSERT [dbo].[SubComment] ([SubCommentID], [CommentID], [UserID], [PublishDate], [Comment]) VALUES (6, 1090, N'e7e38387-1494-4202-89ac-df4e5f557c76', CAST(N'2021-09-07T05:43:10.397' AS DateTime), N'Yes I''m sure we''d be happy to do that.  We would trade for our products at cost.')
INSERT [dbo].[SubComment] ([SubCommentID], [CommentID], [UserID], [PublishDate], [Comment]) VALUES (7, 1091, N'e7e38387-1494-4202-89ac-df4e5f557c76', CAST(N'2021-09-07T05:49:21.490' AS DateTime), N'Yes!  If you send me your email or phone number, I''ll have the produce manager alert you when it comes in.')
SET IDENTITY_INSERT [dbo].[SubComment] OFF
GO
ALTER TABLE [dbo].[Business] ADD  CONSTRAINT [DF_Business_SortIndex]  DEFAULT ((0)) FOR [SortIndex]
GO
ALTER TABLE [dbo].[Business] ADD  CONSTRAINT [DF_Business_BusinessNumber]  DEFAULT ((0)) FOR [BusinessNumber]
GO
ALTER TABLE [dbo].[Business] ADD  CONSTRAINT [DF_Business_Visible]  DEFAULT ((0)) FOR [Visible]
GO
ALTER TABLE [dbo].[Business] ADD  CONSTRAINT [DF_Business_NumberOfFloors]  DEFAULT ((0)) FOR [NumberOfFans]
GO
ALTER TABLE [dbo].[Business] ADD  CONSTRAINT [DF_Business_SiteID]  DEFAULT ((0)) FOR [SiteID]
GO
ALTER TABLE [dbo].[Business] ADD  CONSTRAINT [DF_Business_LocallyOwned]  DEFAULT ((-1)) FOR [LocallyOwned]
GO
ALTER TABLE [dbo].[Business] ADD  CONSTRAINT [DF_Business_Published]  DEFAULT ((0)) FOR [Published]
GO
ALTER TABLE [dbo].[Business] ADD  CONSTRAINT [DF_Business_PublishDate]  DEFAULT (getdate()) FOR [PublishDate]
GO
ALTER TABLE [dbo].[Business] ADD  CONSTRAINT [DF_Business_Inactive]  DEFAULT ((0)) FOR [Inactive]
GO
ALTER TABLE [dbo].[Business] ADD  CONSTRAINT [DF_Business_DateAdded]  DEFAULT (getdate()) FOR [DateAdded]
GO
ALTER TABLE [dbo].[BusinessFile] ADD  CONSTRAINT [DF_BusinessFile_SortIndex]  DEFAULT ((0)) FOR [SortIndex]
GO
ALTER TABLE [dbo].[BusinessFile] ADD  CONSTRAINT [DF_BusinessFile_Stamp]  DEFAULT (getdate()) FOR [Stamp]
GO
ALTER TABLE [dbo].[Client] ADD  CONSTRAINT [DF_Client_Website]  DEFAULT (N'USA') FOR [Website]
GO
ALTER TABLE [dbo].[Client] ADD  CONSTRAINT [DF_Client_DateAdded]  DEFAULT (getdate()) FOR [DateAdded]
GO
ALTER TABLE [dbo].[ClientContacts] ADD  CONSTRAINT [DF_ClientContacts_DateAdded]  DEFAULT (getdate()) FOR [DateAdded]
GO
ALTER TABLE [dbo].[ClientSites] ADD  CONSTRAINT [DF_ClientSites_DateAdded]  DEFAULT (getdate()) FOR [DateAdded]
GO
ALTER TABLE [dbo].[Country] ADD  CONSTRAINT [DF_Country_CountryName]  DEFAULT ('') FOR [Name]
GO
ALTER TABLE [dbo].[Country] ADD  CONSTRAINT [DF_Country_CountryNameLong]  DEFAULT ('') FOR [NameLong]
GO
ALTER TABLE [dbo].[Country] ADD  CONSTRAINT [DF_Country_CountryLanguageID]  DEFAULT ((1)) FOR [DefaultLanguageID]
GO
ALTER TABLE [dbo].[Event] ADD  CONSTRAINT [DF_Event_TimeZone]  DEFAULT (N'EST') FOR [TimeZone]
GO
ALTER TABLE [dbo].[Event] ADD  CONSTRAINT [DF_Event_CreatedOn]  DEFAULT (getdate()) FOR [DateAdded]
GO
ALTER TABLE [dbo].[Event] ADD  CONSTRAINT [DF_Event_Inactive]  DEFAULT ((0)) FOR [Inactive]
GO
ALTER TABLE [dbo].[Fan] ADD  CONSTRAINT [DF_Favorite_Date]  DEFAULT (getdate()) FOR [Date]
GO
ALTER TABLE [dbo].[FundingType] ADD  CONSTRAINT [DF_Funding_Description]  DEFAULT ('') FOR [Description]
GO
ALTER TABLE [dbo].[Language] ADD  CONSTRAINT [DF_Language_LanguageCode]  DEFAULT (N'Need Language Code') FOR [LanguageCode]
GO
ALTER TABLE [dbo].[Language] ADD  CONSTRAINT [DF_Language_LanguageDescription]  DEFAULT (N'Need Language Description') FOR [LanguageDescription]
GO
ALTER TABLE [dbo].[LocalizationKeyValues] ADD  CONSTRAINT [DF_LocalizationKeyValues_Key]  DEFAULT ('') FOR [Key]
GO
ALTER TABLE [dbo].[LocalizationKeyValues] ADD  CONSTRAINT [DF_LocalizationKeyValues_Value]  DEFAULT ('') FOR [Value]
GO
ALTER TABLE [dbo].[Referral] ADD  CONSTRAINT [DF_Referral_DateAdded]  DEFAULT (getdate()) FOR [DateAdded]
GO
ALTER TABLE [dbo].[Site] ADD  CONSTRAINT [DF_SiteID_SiteNo]  DEFAULT (newid()) FOR [Guid]
GO
ALTER TABLE [dbo].[Site] ADD  CONSTRAINT [DF_SiteID_SiteName]  DEFAULT ('') FOR [Name]
GO
ALTER TABLE [dbo].[Site] ADD  CONSTRAINT [DF_SiteID_SiteURL]  DEFAULT ('') FOR [URL]
GO
ALTER TABLE [dbo].[Site] ADD  CONSTRAINT [DF_SiteID_SiteInternalComments]  DEFAULT ('') FOR [Comments]
GO
ALTER TABLE [dbo].[Site] ADD  CONSTRAINT [DF_SiteID_MasterSite]  DEFAULT ((0)) FOR [IsMasterSite]
GO
ALTER TABLE [dbo].[Site] ADD  CONSTRAINT [DF_Site_SiteParentID]  DEFAULT ((0)) FOR [ParentID]
GO
ALTER TABLE [dbo].[Site] ADD  CONSTRAINT [DF_Site_LanguageID]  DEFAULT ((1)) FOR [DefaultLanguageID]
GO
ALTER TABLE [dbo].[Site] ADD  CONSTRAINT [DF_Site_DateAdded]  DEFAULT (getdate()) FOR [DateAdded]
GO
ALTER TABLE [dbo].[SiteEvents] ADD  CONSTRAINT [DF_SiteEvents_SiteID]  DEFAULT ((0)) FOR [SiteID]
GO
ALTER TABLE [dbo].[SiteEvents] ADD  CONSTRAINT [DF_SiteEvents_EventID]  DEFAULT ((0)) FOR [EventID]
GO
ALTER TABLE [dbo].[Fan]  WITH CHECK ADD  CONSTRAINT [FK_Favorite_Business] FOREIGN KEY([BusinessID])
REFERENCES [dbo].[Business] ([BusinessID])
GO
ALTER TABLE [dbo].[Fan] CHECK CONSTRAINT [FK_Favorite_Business]
GO
ALTER TABLE [dbo].[LocalizationKeyValues]  WITH CHECK ADD  CONSTRAINT [FK_LocalizationID_Localization] FOREIGN KEY([LocalizationID])
REFERENCES [dbo].[Localization] ([LocalizationID])
GO
ALTER TABLE [dbo].[LocalizationKeyValues] CHECK CONSTRAINT [FK_LocalizationID_Localization]
GO
ALTER TABLE [dbo].[SiteHeader]  WITH CHECK ADD  CONSTRAINT [FK_SiteHeader_Site_SiteID] FOREIGN KEY([SiteID])
REFERENCES [dbo].[Site] ([SiteID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[SiteHeader] CHECK CONSTRAINT [FK_SiteHeader_Site_SiteID]
GO
ALTER TABLE [dbo].[SiteHeader]  WITH CHECK ADD  CONSTRAINT [FK_SiteHeader_SitePage_SitePageID] FOREIGN KEY([SitePageID])
REFERENCES [dbo].[SitePage] ([SitePageID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[SiteHeader] CHECK CONSTRAINT [FK_SiteHeader_SitePage_SitePageID]
GO
/****** Object:  StoredProcedure [dbo].[sp_GetBusinessFans]    Script Date: 10/21/2021 11:42:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_GetBusinessFans] 
	
AS
BEGIN
	select top 10 b.BusinessName,COUNT(fa.UserID) NumberOfFans,
	(select Count(fa.UserID) from Fan fa where fa.Date 
	BETWEEN DATEADD(DAY, -7, GETDATE()) AND DATEADD(DAY, 1, GETDATE()) 
	and fa.BusinessID = b.BusinessID) as ThisWeek
	from Fan fa 
	inner join Business b on b.BusinessID = fa.BusinessID
	and isnull(b.Inactive, 0) = 0 
	group by b.BusinessID,b.BusinessName
	order by NumberOfFans desc
END
GO
/****** Object:  StoredProcedure [dbo].[spGetBusinessBySiteID]    Script Date: 10/21/2021 11:42:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Arqam Awan>
-- Create date: <10-5-2021>
-- Description:	<spGetBusinessBySiteID>
-- exec spGetBusinessBySiteID 4, 'null'
CREATE PROCEDURE [dbo].[spGetBusinessBySiteID]
@SiteID int,
@SearchText nvarchar(100) = ''
AS
BEGIN
	Begin Try
	    if(@SearchText = '' or @SearchText is null)
		begin
		select b.BusinessID, b.BusinessName, b.Type, bf.IconURL from Business b inner join BusinessFile bf on b.BusinessID = bf.BusinessID where b.SiteID = @SiteID and bf.SortIndex = 1
		end
		else
		begin
		select distinct b.BusinessID, b.BusinessName, b.Type, bf.IconURL from Business b inner join BusinessFile bf on b.BusinessID = bf.BusinessID 
		where b.SiteID = @SiteID and bf.SortIndex = 1 and (b.BusinessName like '%' + @SearchText + '%' or b.Type like '%' + @SearchText + '%' or b.BusinessNumber like '%' + @SearchText + '%')
		end

	End Try
	Begin Catch
		
	End Catch
END




GO
/****** Object:  StoredProcedure [dbo].[spGetGenericLocalization]    Script Date: 10/21/2021 11:42:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Arqam Awan>
-- Create date: <10-5-2021>
-- Description:	<spGetGenericLocalization>
-- exec spGetGenericLocalization 1
CREATE PROCEDURE [dbo].[spGetGenericLocalization]
@LanguageId int
AS
BEGIN
	Begin Try

		select * from GenericLocalizationKeyValues where LanguageId = @LanguageId

	End Try
	Begin Catch
		
	End Catch
END




GO
/****** Object:  StoredProcedure [dbo].[spGetHeaderBySiteIDAndSitePage]    Script Date: 10/21/2021 11:42:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Arqam Awan>
-- Create date: <10-5-2021>
-- Description:	<spGetBusinessBySiteID>
-- exec spGetHeaderBySiteIDAndSitePage 8, 'Investnet'
CREATE PROCEDURE [dbo].[spGetHeaderBySiteIDAndSitePage]
@SiteID int,
@SitePage nvarchar(MAX)
AS
BEGIN
	Begin Try
	   Declare @SitePageID int = (Select SitePageID from SitePage where Name = @SitePage)

	   Select * from SiteHeader where SiteID = @SiteID and SitePageID = @SitePageID
	End Try
	Begin Catch
		
	End Catch
END




GO
/****** Object:  StoredProcedure [dbo].[spGetLanguageBySiteID]    Script Date: 10/21/2021 11:42:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Arqam Awan>
-- Create date: <10-5-2021>
-- Description:	<spGetLocalization>
-- exec spGetLanguageBySiteURL 8
create PROCEDURE [dbo].[spGetLanguageBySiteID]
	--@SiteURL nvarchar(150)
	@SiteID int
AS
BEGIN
	Begin Try

		--DECLARE @SiteID AS INT = (Select SiteID from Site where URL = @SiteURL);

		select la.*, s.DefaultLanguageID from [Language] la with (nolock) inner join Localization lo  with (nolock) on la.LanguageID = lo.LanguageID  inner join Site s with (nolock) on s.SiteID = lo.SiteID where lo.SiteID = @SiteID

	End Try
	Begin Catch
		
	End Catch
END





GO
/****** Object:  StoredProcedure [dbo].[spGetLocalizationBySiteID]    Script Date: 10/21/2021 11:42:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Arqam Awan>
-- Create date: <10-5-2021>
-- Description:	<spGetLocalization>
-- exec spGetLocalization 'http://localhost:1667/'
Create PROCEDURE [dbo].[spGetLocalizationBySiteID]
	--@SiteURL nvarchar(150)
	@SiteID int
AS
BEGIN
	Begin Try

		--DECLARE @SiteID AS INT = (Select SiteID from Site where URL = @SiteURL);

		select lo.*, l.LanguageID, l.SiteID, la.LanguageDescription, la.LanguageCode from LocalizationKeyValues lo inner join Localization l on lo.LocalizationID = l.LocalizationID
		inner join [Language] la on la.LanguageID = l.LanguageID and l.SiteID = @SiteID 

	End Try
	Begin Catch
		
	End Catch
END




GO
/****** Object:  StoredProcedure [dbo].[spGetSites]    Script Date: 10/21/2021 11:42:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Arqam Awan>
-- Create date: <10-5-2021>
-- Description:	<spGetSites>
-- exec spGetSites 
Create PROCEDURE [dbo].[spGetSites]
AS
BEGIN
	Begin Try

		select * from [Site]

	End Try
	Begin Catch
		
	End Catch
END




GO
/****** Object:  StoredProcedure [dbo].[spGetTopFans]    Script Date: 10/21/2021 11:42:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create PROCEDURE [dbo].[spGetTopFans] 
	
AS
BEGIN
	select top 10 b.BusinessName,COUNT(fa.UserID) NumberOfFans,
	(select Count(fa.UserID) from Fan fa where fa.Date 
	BETWEEN DATEADD(DAY, -7, GETDATE()) AND DATEADD(DAY, 1, GETDATE()) 
	and fa.BusinessID = b.BusinessID) as ThisWeek
	from Fan fa 
	inner join Business b on b.BusinessID = fa.BusinessID
	and isnull(b.Inactive, 0) = 0 
	group by b.BusinessID,b.BusinessName
	order by NumberOfFans desc
END
GO
