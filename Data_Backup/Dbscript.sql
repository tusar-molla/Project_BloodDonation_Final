USE [master]
GO
/****** Object:  Database [DbBloodfinal]    Script Date: 10/30/2023 2:36:55 PM ******/
CREATE DATABASE [DbBloodfinal]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'DbBloodfinal', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\DbBloodfinal.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'DbBloodfinal_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\DbBloodfinal_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [DbBloodfinal] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [DbBloodfinal].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [DbBloodfinal] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [DbBloodfinal] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [DbBloodfinal] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [DbBloodfinal] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [DbBloodfinal] SET ARITHABORT OFF 
GO
ALTER DATABASE [DbBloodfinal] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [DbBloodfinal] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [DbBloodfinal] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [DbBloodfinal] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [DbBloodfinal] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [DbBloodfinal] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [DbBloodfinal] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [DbBloodfinal] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [DbBloodfinal] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [DbBloodfinal] SET  DISABLE_BROKER 
GO
ALTER DATABASE [DbBloodfinal] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [DbBloodfinal] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [DbBloodfinal] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [DbBloodfinal] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [DbBloodfinal] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [DbBloodfinal] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [DbBloodfinal] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [DbBloodfinal] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [DbBloodfinal] SET  MULTI_USER 
GO
ALTER DATABASE [DbBloodfinal] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [DbBloodfinal] SET DB_CHAINING OFF 
GO
ALTER DATABASE [DbBloodfinal] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [DbBloodfinal] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [DbBloodfinal] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [DbBloodfinal] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'DbBloodfinal', N'ON'
GO
ALTER DATABASE [DbBloodfinal] SET QUERY_STORE = OFF
GO
USE [DbBloodfinal]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 10/30/2023 2:36:55 PM ******/
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
/****** Object:  Table [dbo].[Areas]    Script Date: 10/30/2023 2:36:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Areas](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[ThanaId] [int] NOT NULL,
 CONSTRAINT [PK_Areas] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 10/30/2023 2:36:56 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 10/30/2023 2:36:56 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 10/30/2023 2:36:56 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 10/30/2023 2:36:56 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 10/30/2023 2:36:56 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 10/30/2023 2:36:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](450) NOT NULL,
	[FirstName] [nvarchar](100) NOT NULL,
	[LastName] [nvarchar](100) NOT NULL,
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
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 10/30/2023 2:36:56 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Bloodgroups]    Script Date: 10/30/2023 2:36:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bloodgroups](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Description] [nvarchar](max) NULL,
 CONSTRAINT [PK_Bloodgroups] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BloodReqsts]    Script Date: 10/30/2023 2:36:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BloodReqsts](
	[BloodReqstId] [int] IDENTITY(1,1) NOT NULL,
	[PatientName] [nvarchar](max) NOT NULL,
	[PatientPhoneNo] [nvarchar](max) NOT NULL,
	[Address] [nvarchar](max) NOT NULL,
	[PatientDeases] [nvarchar](max) NOT NULL,
	[DonateDate] [datetime2](7) NOT NULL,
	[DonatePlace] [nvarchar](max) NOT NULL,
	[DonateTime] [datetime2](7) NOT NULL,
	[BloodGroupId] [int] NOT NULL,
	[Bloodqty] [int] NOT NULL,
	[ReferenceId] [int] NOT NULL,
 CONSTRAINT [PK_BloodReqsts] PRIMARY KEY CLUSTERED 
(
	[BloodReqstId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Countries]    Script Date: 10/30/2023 2:36:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Countries](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Countries] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Diseases]    Script Date: 10/30/2023 2:36:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Diseases](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[Description] [nvarchar](max) NOT NULL,
	[Symptoms] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Diseases] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Districts]    Script Date: 10/30/2023 2:36:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Districts](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[DivisionId] [int] NOT NULL,
 CONSTRAINT [PK_Districts] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Divisions]    Script Date: 10/30/2023 2:36:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Divisions](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[CountryId] [int] NOT NULL,
 CONSTRAINT [PK_Divisions] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Doctors]    Script Date: 10/30/2023 2:36:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Doctors](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[DateOfBirth] [datetime2](7) NULL,
	[DoctorTypeId] [int] NULL,
	[Designation] [nvarchar](60) NOT NULL,
	[RegistrationNumber] [nvarchar](25) NOT NULL,
	[CV] [varchar](100) NULL,
	[MemberId] [int] NOT NULL,
	[AreaOfConsultation] [nvarchar](40) NOT NULL,
	[BMDCNO] [nvarchar](25) NOT NULL,
	[Degree] [nvarchar](40) NOT NULL,
	[Institute] [nvarchar](100) NOT NULL,
	[SpecialInterest] [nvarchar](35) NOT NULL,
 CONSTRAINT [PK_Doctors] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DoctorTypes]    Script Date: 10/30/2023 2:36:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DoctorTypes](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](25) NOT NULL,
	[Description] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_DoctorTypes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Donars]    Script Date: 10/30/2023 2:36:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Donars](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Weight] [nvarchar](max) NOT NULL,
	[MemberId] [int] NOT NULL,
 CONSTRAINT [PK_Donars] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MemberDeseaseReports]    Script Date: 10/30/2023 2:36:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MemberDeseaseReports](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ReportsName] [nvarchar](max) NULL,
	[MemberDeseaseId] [int] NOT NULL,
	[StartingDate] [datetime2](7) NOT NULL,
	[ReportsPath] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_MemberDeseaseReports] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Members]    Script Date: 10/30/2023 2:36:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Members](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Passport] [nvarchar](40) NULL,
	[FirstName] [nvarchar](20) NOT NULL,
	[Address] [nvarchar](max) NULL,
	[Contact] [nvarchar](max) NULL,
	[Email] [nvarchar](max) NOT NULL,
	[Age] [nvarchar](max) NULL,
	[NID] [nvarchar](14) NULL,
	[SmartCard] [nvarchar](14) NULL,
	[MemberGender] [int] NULL,
	[ImageName] [nvarchar](100) NULL,
	[RegistrationDate] [nvarchar](max) NOT NULL,
	[BloodgroupId] [int] NULL,
	[AreaId] [int] NULL,
	[Role] [nvarchar](max) NULL,
	[LastName] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Members] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MembersDeseases]    Script Date: 10/30/2023 2:36:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MembersDeseases](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[MemberId] [int] NOT NULL,
	[DeseaseId] [int] NOT NULL,
 CONSTRAINT [PK_MembersDeseases] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[patients]    Script Date: 10/30/2023 2:36:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[patients](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[MemberId] [int] NOT NULL,
	[ChiefComplain] [nvarchar](max) NOT NULL,
	[DifferentDiagnosis] [nvarchar](max) NOT NULL,
	[LabrotoryFindings] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_patients] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Thanas]    Script Date: 10/30/2023 2:36:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Thanas](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[DistricId] [int] NOT NULL,
 CONSTRAINT [PK_Thanas] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230807150321_init', N'6.0.20')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230810045908_newtble', N'6.0.20')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230812070025_rolecs', N'6.0.20')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230817162428_flname', N'6.0.20')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230817184850_dnrnmermv', N'6.0.20')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230819071918_date', N'6.0.20')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230912054218_patient', N'6.0.20')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230912074135_patientupdate', N'6.0.21')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230912095850_nul', N'6.0.21')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230913050257_startingdate', N'6.0.21')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230916050756_docup', N'6.0.21')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20231005062301_bldrfrncee', N'6.0.21')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20231005071553_bldref', N'6.0.21')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20231005111649_newsss', N'6.0.21')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20231005112506_nukll', N'6.0.21')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20231005112819_paassnull', N'6.0.21')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20231005113235_paassnulldsgfs', N'6.0.21')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20231005113615_blfasfdas', N'6.0.21')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20231005114622_iddsasd', N'6.0.21')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20231005115601_slns', N'6.0.21')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20231005115912_rfrnc', N'6.0.21')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20231008062531_blood', N'6.0.21')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20231014095801_admin_Mdlt', N'6.0.21')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20231014100025_admin', N'6.0.21')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20231014104507_admindlt', N'6.0.21')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20231019085721_nullacpt', N'6.0.21')
GO
SET IDENTITY_INSERT [dbo].[Areas] ON 

INSERT [dbo].[Areas] ([Id], [Name], [ThanaId]) VALUES (1, N'Sankor', 1)
INSERT [dbo].[Areas] ([Id], [Name], [ThanaId]) VALUES (2, N'Natore', 2)
SET IDENTITY_INSERT [dbo].[Areas] OFF
GO
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'5ae16ffd-6935-4985-9a14-84793f82b2c1', N'Doctor', N'DOCTOR', N'f4ceadcb-3680-4bf5-9957-4261609950f9')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'7e2a0c16-9a47-4a4c-91db-1245d0dfec75', N'Patient', N'PATIENT', N'a2c25877-89e6-4b6c-893a-d72255e97ede')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'9a7d0d58-4511-4f1b-b79f-2eec2bff68dd', N'General Member', N'GENERAL MEMBER', N'07a5270c-2e2e-4ca0-b12d-c71774fece99')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'd12579d0-6a92-41f7-8dd7-3df365979880', N'Donar', N'DONAR', N'c98b927c-9a93-4529-bcb8-f5834e0c655e')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'd765ba54-c186-4fe2-9c59-49ade63633bb', N'Donor', N'DONOR', N'54c47b43-88c1-4536-9fb4-2914a186c6f1')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'eebbfde0-312e-44bf-8e07-23959d697919', N'Admin', N'ADMIN', N'a47e0de8-0577-4058-a087-67f4b6c10c81')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'00e8ad92-6801-493f-a9ed-d17d4dc34236', N'5ae16ffd-6935-4985-9a14-84793f82b2c1')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'02403557-b913-408b-b46b-c978de63195b', N'5ae16ffd-6935-4985-9a14-84793f82b2c1')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'0b26977b-aedd-4007-bd6b-4069b8f9d782', N'5ae16ffd-6935-4985-9a14-84793f82b2c1')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'0ea6f96d-e706-4015-94af-3dd4ad8520f0', N'5ae16ffd-6935-4985-9a14-84793f82b2c1')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'12b90395-b330-4127-ab45-0688a3a5a363', N'5ae16ffd-6935-4985-9a14-84793f82b2c1')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'160841de-2660-4923-a49c-557b16e18f73', N'5ae16ffd-6935-4985-9a14-84793f82b2c1')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'17e87e83-aeaf-4ae5-b4e9-77fae69b20a0', N'5ae16ffd-6935-4985-9a14-84793f82b2c1')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'1895408f-9b6f-4ded-8d7d-bcadc8564592', N'5ae16ffd-6935-4985-9a14-84793f82b2c1')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'2c67481a-495c-4aba-833a-67b1ad78f19c', N'5ae16ffd-6935-4985-9a14-84793f82b2c1')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'2e071373-5ce7-4200-bafd-2395d1320296', N'5ae16ffd-6935-4985-9a14-84793f82b2c1')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'34f642ef-4b39-42dc-9583-a684ab230160', N'5ae16ffd-6935-4985-9a14-84793f82b2c1')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'351ec8bd-251d-472a-8c5f-d8a41e0d5ad3', N'5ae16ffd-6935-4985-9a14-84793f82b2c1')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'3557b5dc-0809-4469-8050-9e0d77d94be0', N'5ae16ffd-6935-4985-9a14-84793f82b2c1')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'35734d45-ab18-42e6-9316-74b4e9fccd81', N'5ae16ffd-6935-4985-9a14-84793f82b2c1')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'3f720422-7b86-4f9c-ad63-4b82ac70eaf3', N'5ae16ffd-6935-4985-9a14-84793f82b2c1')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'41d168e0-45c0-442c-8b22-7b3eb90e8d55', N'5ae16ffd-6935-4985-9a14-84793f82b2c1')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'4a9f384f-eada-4df0-90ee-8a6ba3d45681', N'5ae16ffd-6935-4985-9a14-84793f82b2c1')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'4eb94a1d-92db-4572-9db8-0d862b9a4ac5', N'5ae16ffd-6935-4985-9a14-84793f82b2c1')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'564497cc-f1a7-41d3-b119-9f2c8301ee37', N'5ae16ffd-6935-4985-9a14-84793f82b2c1')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'5ad316b8-92af-4ba0-b152-e72ef5f5436f', N'5ae16ffd-6935-4985-9a14-84793f82b2c1')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'5e79d761-99ea-4f9c-b344-4b808fdc8221', N'5ae16ffd-6935-4985-9a14-84793f82b2c1')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'6862abfa-2ead-4b27-8814-c3bd2b662c18', N'5ae16ffd-6935-4985-9a14-84793f82b2c1')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'702d460c-32ad-402b-a8b0-2ac378effcc6', N'5ae16ffd-6935-4985-9a14-84793f82b2c1')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'7deef464-6417-4832-882e-572bafd4da5f', N'5ae16ffd-6935-4985-9a14-84793f82b2c1')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'7fc4e492-eab7-4a72-9e50-984329663301', N'5ae16ffd-6935-4985-9a14-84793f82b2c1')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'8222045a-8d73-4ed6-946e-e4214867d747', N'5ae16ffd-6935-4985-9a14-84793f82b2c1')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'85da27bd-474b-437a-af63-0771623f63ec', N'5ae16ffd-6935-4985-9a14-84793f82b2c1')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'875bf765-a1ad-4bf5-b479-3552c7afa2d1', N'5ae16ffd-6935-4985-9a14-84793f82b2c1')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'9975d635-1839-497c-ace1-8203778c0286', N'5ae16ffd-6935-4985-9a14-84793f82b2c1')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'9d0cea39-8eb0-4a0c-911c-973e0ef34457', N'5ae16ffd-6935-4985-9a14-84793f82b2c1')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'9f15cdcb-f14f-4d9e-9e1a-deabe8c534a6', N'5ae16ffd-6935-4985-9a14-84793f82b2c1')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'a3457f80-4ee7-47f0-8314-1fd89ce3dcd4', N'5ae16ffd-6935-4985-9a14-84793f82b2c1')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'a9a172eb-19ba-41d9-8c3d-d93fadb4b9dd', N'5ae16ffd-6935-4985-9a14-84793f82b2c1')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'aad4d0dd-809b-443f-8365-660af23ae37e', N'5ae16ffd-6935-4985-9a14-84793f82b2c1')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'ae5d49d8-b38b-402f-831d-c061585f503b', N'5ae16ffd-6935-4985-9a14-84793f82b2c1')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'b6a8ebf5-d4a5-45d3-aa51-7b2e47799fe8', N'5ae16ffd-6935-4985-9a14-84793f82b2c1')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'b78ab5e7-f093-449d-a89d-00c32516ef25', N'5ae16ffd-6935-4985-9a14-84793f82b2c1')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'b8c57a6a-2d0f-4f21-bd83-af11def4160e', N'5ae16ffd-6935-4985-9a14-84793f82b2c1')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'be69bd8e-68ba-4820-9392-45f8ca92c6ce', N'5ae16ffd-6935-4985-9a14-84793f82b2c1')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'bea40724-00a7-40c0-9d5c-e7201b1d4de3', N'5ae16ffd-6935-4985-9a14-84793f82b2c1')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'cee5c03b-2faa-4646-892f-bcca26fb3f18', N'5ae16ffd-6935-4985-9a14-84793f82b2c1')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'd27c946f-0767-4783-af6d-fba7cc76546c', N'5ae16ffd-6935-4985-9a14-84793f82b2c1')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'd311f106-00fb-4c63-bb56-9353e175c713', N'5ae16ffd-6935-4985-9a14-84793f82b2c1')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'd8a6cdaf-48e8-4ff8-a3ab-c7dabce3690c', N'5ae16ffd-6935-4985-9a14-84793f82b2c1')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'd92d0ac2-b2bd-44dc-877f-1f90f964dfd4', N'5ae16ffd-6935-4985-9a14-84793f82b2c1')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'd9f48ef6-d0a2-4263-9e51-3821b2d0513b', N'5ae16ffd-6935-4985-9a14-84793f82b2c1')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'dc03a397-132f-45b3-8754-f1d0dd62486d', N'5ae16ffd-6935-4985-9a14-84793f82b2c1')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'e37d2a48-9a24-4c06-a561-6855d11d4638', N'5ae16ffd-6935-4985-9a14-84793f82b2c1')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'e73e8d31-6f79-42f6-b57d-54c9196366c0', N'5ae16ffd-6935-4985-9a14-84793f82b2c1')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'eb69b831-9cde-40b5-8c3c-f7cd023d5e25', N'5ae16ffd-6935-4985-9a14-84793f82b2c1')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'ebbe06df-baaf-48cb-96ac-d73b9d3d93a3', N'5ae16ffd-6935-4985-9a14-84793f82b2c1')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'ef88410c-a718-4be3-b187-183a1452f86f', N'5ae16ffd-6935-4985-9a14-84793f82b2c1')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'f16a546d-4339-4a5b-bf61-ce168ba6c983', N'5ae16ffd-6935-4985-9a14-84793f82b2c1')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'f8d12f3c-ffa8-41a5-a2ae-06acaf827aac', N'5ae16ffd-6935-4985-9a14-84793f82b2c1')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'fdc53c88-c87e-41ea-b043-d50671f63d73', N'5ae16ffd-6935-4985-9a14-84793f82b2c1')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'070a6684-171b-406b-8536-ebaba6afa6d6', N'7e2a0c16-9a47-4a4c-91db-1245d0dfec75')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'33abf1ec-a10b-4bdd-a288-a55fa4f6cebb', N'7e2a0c16-9a47-4a4c-91db-1245d0dfec75')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'3827a239-4207-400a-96b9-011800f54a0e', N'7e2a0c16-9a47-4a4c-91db-1245d0dfec75')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'7c890051-dc6b-451a-8f49-c86ba6982ec0', N'7e2a0c16-9a47-4a4c-91db-1245d0dfec75')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'8a4a50af-0bb5-4431-b06d-5bd60d50a4d9', N'7e2a0c16-9a47-4a4c-91db-1245d0dfec75')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'ee58b0ab-7634-4ae8-9710-546c1a4ff3ec', N'7e2a0c16-9a47-4a4c-91db-1245d0dfec75')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'0522ca3a-c7cb-469d-9817-d1756e6d9c53', N'9a7d0d58-4511-4f1b-b79f-2eec2bff68dd')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'ca638939-8052-4543-9e72-782ad1f8b7ec', N'9a7d0d58-4511-4f1b-b79f-2eec2bff68dd')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'08bd534b-13da-4136-9728-7cf07d4aae7d', N'd765ba54-c186-4fe2-9c59-49ade63633bb')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'0d829346-23ca-4458-9902-682d0907b135', N'd765ba54-c186-4fe2-9c59-49ade63633bb')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'118a4389-077a-4a72-a335-e28b2b2ec532', N'd765ba54-c186-4fe2-9c59-49ade63633bb')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'1323bb7e-b0e5-4817-9177-be45eee3ca71', N'd765ba54-c186-4fe2-9c59-49ade63633bb')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'29db62f9-b0f6-4909-a773-cc25dee42a84', N'd765ba54-c186-4fe2-9c59-49ade63633bb')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'33d02c44-6364-437f-bcc4-20fc2a7eabb7', N'd765ba54-c186-4fe2-9c59-49ade63633bb')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'3b6b8bc7-9ac2-4330-af92-e2deb2e64b9e', N'd765ba54-c186-4fe2-9c59-49ade63633bb')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'533e8fe1-a2f2-4a99-9f4d-98a6b703ec61', N'd765ba54-c186-4fe2-9c59-49ade63633bb')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'55120ca3-c398-4033-9da6-f50127998a86', N'd765ba54-c186-4fe2-9c59-49ade63633bb')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'56cc4818-50fb-4b6d-a6f3-78f0cf0b6d43', N'd765ba54-c186-4fe2-9c59-49ade63633bb')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'5723ef72-0e11-470f-aced-b276b47a972b', N'd765ba54-c186-4fe2-9c59-49ade63633bb')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'6aa0e2d8-ee54-42b4-b89a-a42b1486dccb', N'd765ba54-c186-4fe2-9c59-49ade63633bb')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'6b86f33b-8b38-4fee-ab6c-39b6c75431bd', N'd765ba54-c186-4fe2-9c59-49ade63633bb')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'77634486-5bf0-4d36-9e46-4cd127c4d501', N'd765ba54-c186-4fe2-9c59-49ade63633bb')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'77adebb6-d11b-4a6b-999d-39ac69b96c22', N'd765ba54-c186-4fe2-9c59-49ade63633bb')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'8463ad5c-f306-485d-a52a-78dba21650b1', N'd765ba54-c186-4fe2-9c59-49ade63633bb')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'8b849f24-62e6-4296-b4d2-63f80c8e42a5', N'd765ba54-c186-4fe2-9c59-49ade63633bb')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'bceb7678-1497-4b53-9bf4-6d14fe71dbf9', N'd765ba54-c186-4fe2-9c59-49ade63633bb')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'08b1e6e0-9b86-4d24-9e02-1bd9fcec076c', N'eebbfde0-312e-44bf-8e07-23959d697919')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'0a7f3dbe-56bf-41c4-a3b0-d7c7cb28fbad', N'eebbfde0-312e-44bf-8e07-23959d697919')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'1133c099-bfcb-4de8-8040-7357b825a182', N'eebbfde0-312e-44bf-8e07-23959d697919')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'17d224e0-b954-4132-871e-00b138d55b34', N'eebbfde0-312e-44bf-8e07-23959d697919')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'245b1179-4d88-4fbd-8a24-6c388f1e85ab', N'eebbfde0-312e-44bf-8e07-23959d697919')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'27fbf453-dcc6-444e-b67b-9298c4731ac5', N'eebbfde0-312e-44bf-8e07-23959d697919')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'295c6d6a-e534-48f8-b311-e21181e9557c', N'eebbfde0-312e-44bf-8e07-23959d697919')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'3108aa99-ddfd-4cb0-8630-d6812d32774a', N'eebbfde0-312e-44bf-8e07-23959d697919')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'31d0070b-d7a1-4958-89ef-fc5eebd68578', N'eebbfde0-312e-44bf-8e07-23959d697919')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'38263b3b-b786-4794-8221-582320fdc7dc', N'eebbfde0-312e-44bf-8e07-23959d697919')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'39163f45-c57e-4d63-bc82-27a7e569f32b', N'eebbfde0-312e-44bf-8e07-23959d697919')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'3fd368f7-94c5-4fd1-8453-ffc921ad837e', N'eebbfde0-312e-44bf-8e07-23959d697919')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'4b17ff72-b135-4b4e-aafb-f0b31b76551f', N'eebbfde0-312e-44bf-8e07-23959d697919')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'57abbbf9-add2-47df-bd2d-f6f992a9814c', N'eebbfde0-312e-44bf-8e07-23959d697919')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'599b9fb7-cf82-42ae-9422-dd45989ce346', N'eebbfde0-312e-44bf-8e07-23959d697919')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'60538f67-d549-4e2a-a37d-dcaea65755b9', N'eebbfde0-312e-44bf-8e07-23959d697919')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'62971efc-23a4-4afc-8182-5f2b5d538ec4', N'eebbfde0-312e-44bf-8e07-23959d697919')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'6ce8f6df-6f17-4e0c-bc91-97a48655d7a2', N'eebbfde0-312e-44bf-8e07-23959d697919')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'6e6dca41-d7e4-44ac-8b43-2d9355b995c9', N'eebbfde0-312e-44bf-8e07-23959d697919')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'70128478-5fc6-4283-b5d3-80a889f75b73', N'eebbfde0-312e-44bf-8e07-23959d697919')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'81f173f4-ce05-4bbb-bcaa-7be00153b12b', N'eebbfde0-312e-44bf-8e07-23959d697919')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'83ace0d9-1a90-42e2-934a-1467b7adb249', N'eebbfde0-312e-44bf-8e07-23959d697919')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'901c4931-07f1-4248-9b76-f11b9268a5a6', N'eebbfde0-312e-44bf-8e07-23959d697919')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'96bb410a-7fb3-4208-a1fd-4fe2db221371', N'eebbfde0-312e-44bf-8e07-23959d697919')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'9d14bb93-9162-419d-a4a3-3cae60cac95a', N'eebbfde0-312e-44bf-8e07-23959d697919')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'9f590253-78fe-4a1a-968d-73980a01e2e4', N'eebbfde0-312e-44bf-8e07-23959d697919')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'a1647ed8-8ea4-4c0d-b438-227c33266cc8', N'eebbfde0-312e-44bf-8e07-23959d697919')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'b481b70e-30f3-4797-b5b7-f9fbe4ab3a13', N'eebbfde0-312e-44bf-8e07-23959d697919')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'b760b2aa-06d2-4684-86a1-0e98ff00b8c7', N'eebbfde0-312e-44bf-8e07-23959d697919')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'bd96d396-1118-4fd4-8091-cbcd9f98fdeb', N'eebbfde0-312e-44bf-8e07-23959d697919')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'c2295c5e-3f14-4a13-a521-3c83f6c75d29', N'eebbfde0-312e-44bf-8e07-23959d697919')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'c6610876-8456-4c82-90a1-70a63d9fa3d5', N'eebbfde0-312e-44bf-8e07-23959d697919')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'c729a4c1-caa1-494c-bcf9-5eee31b48735', N'eebbfde0-312e-44bf-8e07-23959d697919')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'ca4817c7-2756-4ad4-ab6e-d607becf1de7', N'eebbfde0-312e-44bf-8e07-23959d697919')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'ca4a2eec-a6ed-418c-a594-3f4aadcbea65', N'eebbfde0-312e-44bf-8e07-23959d697919')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'd146b96a-ce2a-488f-acbe-9261e2df5414', N'eebbfde0-312e-44bf-8e07-23959d697919')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'da18163f-4801-45a0-b2aa-379971972e70', N'eebbfde0-312e-44bf-8e07-23959d697919')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'e2cceed7-c67e-4bf8-a25f-cea4b58e0c1b', N'eebbfde0-312e-44bf-8e07-23959d697919')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'e8e52bdd-8182-4f48-bd11-a565c172f689', N'eebbfde0-312e-44bf-8e07-23959d697919')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'e9505628-17a7-448e-93e0-96c25cf5b6f5', N'eebbfde0-312e-44bf-8e07-23959d697919')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'eb094263-fe5a-49e3-b368-5209244e7277', N'eebbfde0-312e-44bf-8e07-23959d697919')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'f9a07a33-acc8-4c4a-85f4-7ddef14cf352', N'eebbfde0-312e-44bf-8e07-23959d697919')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'fd01090f-c01b-4cdf-8866-7213c8338ef8', N'eebbfde0-312e-44bf-8e07-23959d697919')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'fe77b434-e686-43af-9fb4-b40a2cde50b4', N'eebbfde0-312e-44bf-8e07-23959d697919')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'ff43764c-40e0-4aa5-bcea-8aa7f91e5ea8', N'eebbfde0-312e-44bf-8e07-23959d697919')
GO
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'00e8ad92-6801-493f-a9ed-d17d4dc34236', N'farjana', N'akhter', N'farjanash@gmail.com', N'FARJANASH@GMAIL.COM', N'farjanash@gmail.com', N'FARJANASH@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEIikJHr9DKjMA5Fj9uMKJVKrvR+Zha2ea/dFHNYtgUI65od1ICIUNpD9mr4yffc46Q==', N'UPOYDMECV6G4YZS33FD4L43I4ZYIWUEC', N'79dc75de-f72b-400a-89cd-226a52e5f78e', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'02403557-b913-408b-b46b-c978de63195b', N'Shamim', N'akter', N'shamim@gmail.com', N'SHAMIM@GMAIL.COM', N'shamim@gmail.com', N'SHAMIM@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEK+u1amf26ME2Xa+h7KsWwLilsNPbO5y9lpEgdDKNgXDQKGyJE/5a1o54aAxDsvu9g==', N'BQW4FMN7FUM4DPFHCIRQK5V7GP7JNDPY', N'05839923-eb05-48fd-987e-f1f13d8eb588', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'0522ca3a-c7cb-469d-9817-d1756e6d9c53', N'rizan', N'aasdg', N'rizanadf@gmail.com', N'RIZANADF@GMAIL.COM', N'rizanadf@gmail.com', N'RIZANADF@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAECPob0/jpxYmnyahEjq0fKJYyYtM3Smz6pPqIf7YbjAeSPPNyYbpfa6QuBeYHpgAaw==', N'G2WN2MPCGO3LHMY6MDFPFOB72MCHH665', N'ba737d49-2385-4324-ad6a-7e4541c88ae9', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'070a6684-171b-406b-8536-ebaba6afa6d6', N'tusar', N'ahmed', N'ahmesd@gmail.com', N'AHMESD@GMAIL.COM', N'ahmesd@gmail.com', N'AHMESD@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAENjvzg5xVnkAicd5SBkU3iL48C0WO3IYcniqMmFF+ovqK9db+PDGaaruFejyBwkZfA==', N'QIVX5LBD5APJQ5ZMCEFNP5ULKO6HUQCT', N'8eaf42a1-fcee-496f-80df-cf3765c5948a', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'0858b295-35b5-4871-834a-3a9de832d9bb', N'rajus', N'ahmed', N'rajus@gmail.com', N'RAJUS@GMAIL.COM', N'rajus@gmail.com', N'RAJUS@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEK9GQYKQQ9ASYVZ9cB0uNTw/+jz1We7S1MTEkP5F4ZxM9ZN96fh0L3ErK0awWDcC/w==', N'5JSZODZ3UUZKFHAFFBS4ZXSNXVNJD33U', N'71fabd94-4b5d-4e19-97a1-38e5adb44426', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'08b1e6e0-9b86-4d24-9e02-1bd9fcec076c', N'Ayman', N'r', N'aymansadik@gmail.com', N'AYMANSADIK@GMAIL.COM', N'aymansadik@gmail.com', N'AYMANSADIK@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEEX03sxXtraI/9Uk6tydp+exExLD+Xs3Agtlym7ANQX9yoP4PX2zQoaaUgDO0IR8Ng==', N'5DJKVWHYN3DUIJYO2YYIT4JOJY6QO6UF', N'44cbd441-8a7d-4650-82af-eae42945791a', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'08bd534b-13da-4136-9728-7cf07d4aae7d', N'ramit', N'r', N'ramita@gmail.com', N'RAMITA@GMAIL.COM', N'ramita@gmail.com', N'RAMITA@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEOCJIw0Kmv0e0RFBtgtTArdwaXGU5WgAyHBg2+vcRQLczdp7D2t4o9h6mRAiLwkZVQ==', N'5OO5KEYVQ57UQINM2UFUCT3GJ4YBLK2V', N'99d537ce-18bf-45ea-89b4-f0493f01f40a', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'0a7f3dbe-56bf-41c4-a3b0-d7c7cb28fbad', N'kamal', N'p', N'kamalsedtgsetg@gm.com', N'KAMALSEDTGSETG@GM.COM', N'kamalsedtgsetg@gm.com', N'KAMALSEDTGSETG@GM.COM', 0, N'AQAAAAEAACcQAAAAEDq5A8CtCKdu/EWeyCtJ5/7byqGHXanB2MMzbZdNWbvef20wjza7ROzu/psXZ8C5yw==', N'44KFBD3LLXNPVYSUMUXLUWHEHXVEREPK', N'0b7f32f4-330e-473d-909e-f3509a1c8e89', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'0b26977b-aedd-4007-bd6b-4069b8f9d782', N'shafin', N'molla', N'shafins@gmail.com', N'SHAFINS@GMAIL.COM', N'shafins@gmail.com', N'SHAFINS@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEIgNVIE6yYMNfuGrzbaPrKfLBygwTBuxgpmcAv9OI446WOoSoWKBdSuf80KU4D9v9g==', N'YVWNDGILEELDAE2FMKHWXFTOFGCHC7YY', N'b2729a0a-e464-46a2-90fb-9420e78a2311', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'0d829346-23ca-4458-9902-682d0907b135', N'badal', N'ahsan', N'badal@gmail.com', N'BADAL@GMAIL.COM', N'badal@gmail.com', N'BADAL@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEHyV2LE4Ev0ptJg8730KFga0tiNJo08wFGOEiuBGOBHfU2AQNB+SxuJ+4p3D/cma/g==', N'4CXPR6I4FO2DXUP3M35Q4NGJPURXFZBQ', N'221fe883-65c5-4a80-bb0e-411a6f2dea87', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'0ea6f96d-e706-4015-94af-3dd4ad8520f0', N'fahim', N'molla', N'fahimsa@gmail.com', N'FAHIMSA@GMAIL.COM', N'fahimsa@gmail.com', N'FAHIMSA@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEOiCHHka4bKj7/Sd3Ou6Vu/eFe4JPF+Teyn0WrbSH12rE37hZKtulO32lAbkP5MEcQ==', N'DJMZ77IYI4WVXKBSNFCRFYMOTAOFJE3V', N'cd26c6fe-fb5f-4aad-933a-8cf060ee85fe', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'1133c099-bfcb-4de8-8040-7357b825a182', N'babu', N'alom', N'babu@gm.com', N'BABU@GM.COM', N'babu@gm.com', N'BABU@GM.COM', 0, N'AQAAAAEAACcQAAAAEOPSWC65nO4vCSqsCfx6P5MAfZpCgOSQueK7uH3iZErW18RB/oyd/2wtXcY3N812Bw==', N'PAWFSUKNVROBA3Q5HOG774GADIKODEZI', N'36dc044d-b969-4562-a345-34e47afe3ada', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'118a4389-077a-4a72-a335-e28b2b2ec532', N'papon', N'ahmed', N'papon@gmail.com', N'PAPON@GMAIL.COM', N'papon@gmail.com', N'PAPON@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEFoKwOwvfyjOPgiodegk7hOICb4JIw5J7eNlz0zc0zC9JF0GOvg319qOmILqFzI1nA==', N'TD5LJGXM53WC2HLISHNP7UXMXFHICQ4O', N'f6f22921-e68f-47f1-930b-e6812cd84c27', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'12b90395-b330-4127-ab45-0688a3a5a363', N'romras', N'koris', N'Romras@gmail.com', N'ROMRAS@GMAIL.COM', N'Romras@gmail.com', N'ROMRAS@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEPKM9aIHiqfX1z4j38gW0vpun08VmNz00R0yEzF/FNGIUjVwYEI554kwC6huCPUTpA==', N'7PGYMLGNC44R5M2JXPOU52PUQIYDIL3A', N'23caf864-a6ba-4ed6-8de8-4da92e1f9ad7', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'1323bb7e-b0e5-4817-9177-be45eee3ca71', N'final', N'donor', N'final@gmail.com', N'FINAL@GMAIL.COM', N'final@gmail.com', N'FINAL@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEBS6dldqpz99xjJ0g+gS3g3PQdcjzSy6ArHk5rHyY1ICM++L3wJms08RpGnQai3TOA==', N'YSKLX7NBIYVWAT53GIVFKFFUJ7KEBBQX', N'80e13fe9-1bc4-4bbf-8087-f2700b4e2b71', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'160841de-2660-4923-a49c-557b16e18f73', N'karims', N'molla', N'karims@gmail.com', N'KARIMS@GMAIL.COM', N'karims@gmail.com', N'KARIMS@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAELGkUDk4FC7vdTeTX6Kx7v0sVMvKgxwujGwhB7gT+gYYMk0ThjQbifkvTjJhKCDw+g==', N'X6SSAJVLVMTYDPXFJTXA22CKHL6AAUJG', N'6462704f-5a46-4505-ab22-32942c0e17b9', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'17d224e0-b954-4132-871e-00b138d55b34', N'T', N'M', N'tmmollas@gmail.com', N'TMMOLLAS@GMAIL.COM', N'tmmollas@gmail.com', N'TMMOLLAS@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEJaNNcXnuUghytNpcRwigeFMZeeBaoRerDwenGDud9R4IzgXdQ36Q5CVaiNJNFtibQ==', N'QJTI7AVWIINOERZQQO5M7EKDMCTTQWAY', N'57b82620-e1ce-4f91-8076-cb6cea2723af', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'17e87e83-aeaf-4ae5-b4e9-77fae69b20a0', N'rar', N'afaf', N'rar@gmail.com', N'RAR@GMAIL.COM', N'rar@gmail.com', N'RAR@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEGHyhpR0s0YcVko07wp3mEWrHDSaSWEDN66GzbCXj9RU1VRBfHhNwSmYJRH8bnWQ3A==', N'PE7MUEWI2P7IHZ4EYJFUY43IVLCMVBAP', N'9fce7c69-66d3-4d00-906d-d9592f73a193', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'1895408f-9b6f-4ded-8d7d-bcadc8564592', N'rakin', N'hosen', N'rakin@gmail.com', N'RAKIN@GMAIL.COM', N'rakin@gmail.com', N'RAKIN@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEEjvm8CJ47pGMVJwaKNxviZS+A3s4d696AIXI9k9nV30Cv8oMKG5X0+XHQSDd2xPQg==', N'Z3QGFDFJPUY37VG55LZUS32PR7FDT67Y', N'129c6d93-e79d-40be-8069-bf59d65ad662', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'245b1179-4d88-4fbd-8a24-6c388f1e85ab', N'Ripon ', N'Mia', N'Ripons@gmail.com', N'RIPONS@GMAIL.COM', N'Ripons@gmail.com', N'RIPONS@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEO+l2Kz+/9/L6P+kozTEntixqYEfqwC6pY19jISCPs9jS77qdj/O/K+IGj4ncXw8fQ==', N'U2TR3H2CK6DJBSNPEX5OKPVBQDZLUNQP', N'de1d5d4f-c4ae-4392-8e88-cae007251b3c', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'2673024a-8a26-4156-bb5e-eb39f3d831ba', N'fazils', N'sss', N'fazils@gmail.com', N'FAZILS@GMAIL.COM', N'fazils@gmail.com', N'FAZILS@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEOxaDe6OPmMQXA2SqPMnMHjzUxER1ts4YE4lFeY+GtXDgT9sRctxZOEW4Y7tCAI5mA==', N'46NUZHL5K5GWHXJGR6QRP7GHNOFG3TTW', N'32dff74a-ca9b-477e-93b9-36d340530831', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'27fbf453-dcc6-444e-b67b-9298c4731ac5', N'dgdfh', N'kjfk', N'dghhfgh@gmail.com', N'DGHHFGH@GMAIL.COM', N'dghhfgh@gmail.com', N'DGHHFGH@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEGIYWlLw1KTpYoPBv9y5zQtI81FFx/oNv9naUJaiVkyCZ6pggtNP2m2lImKVEUXu/w==', N'I25QO3V7KLE7S5OS75C4ECG6GQQCAI7Y', N'dcf70f7a-99f6-438a-9dae-7674e5fa8b48', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'295c6d6a-e534-48f8-b311-e21181e9557c', N'habib', N'Islam', N'habib@gmail.com', N'HABIB@GMAIL.COM', N'habib@gmail.com', N'HABIB@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEPRHQthtWlU2jt7YjI5nQsumhqMgkkVqNs05YjZrxehEz7S4hXj+hza2tvFfkX/10w==', N'ARSLAL6NDUVRTSW5HD6HM7H7DCTTU3W6', N'84820240-194f-43c2-a6b7-2510356689cc', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'29db62f9-b0f6-4909-a773-cc25dee42a84', N'T', N'donar', N't@gmail.com', N'T@GMAIL.COM', N't@gmail.com', N'T@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEBBDjoJVGsQHATvXJ3+uFDSZago21LVOS0hS3G14JKVBKeNDZJrYmYrPJoMdvmUDJg==', N'M22IVJUY3KWONY4J4Y7PVFPIEHG4DEDK', N'4015f498-f861-49c8-b4ba-b6c414464732', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'2c67481a-495c-4aba-833a-67b1ad78f19c', N'Jamaika', N'alom', N'jamaika@gmail.com', N'JAMAIKA@GMAIL.COM', N'jamaika@gmail.com', N'JAMAIKA@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEBY0PEGUOqWSSk48gt4nnN9COUTGsaCaHBSPhedpx0o9/dKX/gF5sveuz0wem57m5g==', N'T2W3S5RCTGIWZDSIEH53UGEFJWO4GUPX', N'e2595edc-ae62-4638-a9f7-53ea98cbed22', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'2e071373-5ce7-4200-bafd-2395d1320296', N'kotha', N'k', N'kotha@gmail.com', N'KOTHA@GMAIL.COM', N'kotha@gmail.com', N'KOTHA@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEGtf8nnHH7r0+Gml0LieFB7zad0JYYnDOF/j2UKMV8+ETznIzhuXrsSadOcGgCeA2w==', N'QH6UMJG3VKODMBGMRHJU5LXTGZXD4YTE', N'a04d1439-2460-49c8-b0b4-1f5f051ea923', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'3108aa99-ddfd-4cb0-8630-d6812d32774a', N'ydyadfd', N'asdg', N'ydyadfdawrfas@gm.com', N'YDYADFDAWRFAS@GM.COM', N'ydyadfdawrfas@gm.com', N'YDYADFDAWRFAS@GM.COM', 0, N'AQAAAAEAACcQAAAAEIYhBozrix/n9fzSDp9ggpMLDwCBsuDTBcIBH+RqQXeJ73/zUc9Gzi8doSUScqrYiw==', N'OIDQMCZCPQLPNMYYZYHDO5CLGBRD4ZZ2', N'c6df3895-d305-43da-abef-c8f723bba1e8', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'31d0070b-d7a1-4958-89ef-fc5eebd68578', N'sharuk', N'hossen', N'sharukhk@gmail.com', N'SHARUKHK@GMAIL.COM', N'sharukhk@gmail.com', N'SHARUKHK@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEMeWFWc62ZZFQb+K6QfBF4JqNvtGJtskasX4oNYx9bRrR5zYABrUZFlnePbXMdZWdA==', N'4I2G7AYZIGNOBEPRK56JSIDWPWOUHUWX', N'2b3e3a53-646a-4785-b246-78de49aac80f', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'33abf1ec-a10b-4bdd-a288-a55fa4f6cebb', N'Faisul', N'karim', N'faizul@gmail.com', N'FAIZUL@GMAIL.COM', N'faizul@gmail.com', N'FAIZUL@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAENa201nn383ysyeX7AGKWkZwx/wKuOUd3AcqMnn2X9weyw6sULQsT7d1QeX19bubRA==', N'RKQRY2G4UZ4YYCJPZF4JTY45NMINRB4U', N'5c6f6349-674f-4596-980a-3dc8bb5de00d', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'33d02c44-6364-437f-bcc4-20fc2a7eabb7', N'donor1', N'ahmed', N'donor1@gmail.com', N'DONOR1@GMAIL.COM', N'donor1@gmail.com', N'DONOR1@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEFxrJwiWM0mxUYqtDqBPfsTmAXBqrK5XUXDm2dilLofDHog810ffxXk6FwYrMHty6Q==', N'PZ5TQ2M3R5YPSIFE5QFTTNXSAYWCCKI7', N'd5a1dbcb-3581-4a9a-882f-c168fdfa8033', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'34f642ef-4b39-42dc-9583-a684ab230160', N'aas', N'hsdakjhf', N'aas@gmail.com', N'AAS@GMAIL.COM', N'aas@gmail.com', N'AAS@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEBE+oSsoMvEv1mLdE/4B2CKI5vMadYs/XMVGFhBIFc3Rr/2xAVy5Y62uZwequNeHhg==', N'ER5DWVA5JGYD4MVLAVMLG4KUQOT66PIJ', N'8bc4c5a4-98e7-4339-b13d-8013a42156cc', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'351ec8bd-251d-472a-8c5f-d8a41e0d5ad3', N'raizurs', N'R', N'faizurs@gmail.com', N'FAIZURS@GMAIL.COM', N'faizurs@gmail.com', N'FAIZURS@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEOtXGvg1vvz8upMZ9SpW95Cr98FVs0JtEktDGdYzekNVzqt33uu+j8N7yHAazWyj5Q==', N'GLJ3DW5NU44X62AVVVDVERJITNHTFFVY', N'c2ead016-84d2-4db1-8229-9cb1e9c98754', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'3557b5dc-0809-4469-8050-9e0d77d94be0', N'Jokar', N'alom', N'jokar@gmail.com', N'JOKAR@GMAIL.COM', N'jokar@gmail.com', N'JOKAR@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEAuoUbrduOeBtbSPLqRxYbCMvXlIXftpNgKteZ9KfH3VFtxKCQ/reaNl2mCyeZq8Pg==', N'NSBYUAO6HNGP6VXN46FUM7O6MNKTJ2AX', N'9e7d93ec-675f-4dff-8524-818d7c5448fa', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'35734d45-ab18-42e6-9316-74b4e9fccd81', N'nokib', N'ahmed', N'nokib@gmail.com', N'NOKIB@GMAIL.COM', N'nokib@gmail.com', N'NOKIB@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEId3DbRoJGTlIzCptJPgeAG810jW7DIfB8e4oh8uIPDEK5yCggGETCg+1dtTcHgKOQ==', N'OWVI6EYISIP4YPLO4JN7VA2QQFX6BPHA', N'c03d7c7a-ac3c-4b24-b7cd-ef0e3cf429c3', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'3765c17d-7904-4277-be1c-771c93dfebbe', N'lupin', N'ahmed', N'lupin@g.com', N'LUPIN@G.COM', N'lupin@g.com', N'LUPIN@G.COM', 0, N'AQAAAAEAACcQAAAAEKsMgH3gTbqwIyA3UvcZVwMO1yL029UPL0yo0NTcj9B3dlBB1dPutAI+39cqgL/Y7g==', N'MBGG4I3JEIATS5IGHBNEGYSR6JT42Q5V', N'410dda0a-e79c-4304-b388-3c42f1e34da6', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'38263b3b-b786-4794-8221-582320fdc7dc', N'p', N'p', N'payel@p.com', N'PAYEL@P.COM', N'payel@p.com', N'PAYEL@P.COM', 0, N'AQAAAAEAACcQAAAAEGh5QmHZcS8pbBcrn5STazd2S53h3fPOlgnI9IzJsDIzfT8jF1XcnwU48IGQfvxurg==', N'2QHQSST7YWKLTGV3ZUQD3XVAPEMUCDKY', N'1c3f677e-d87c-4409-a5c9-5302157e5073', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'3827a239-4207-400a-96b9-011800f54a0e', N'tusar', N'ahmed', N'ahmed@gmail.com', N'AHMED@GMAIL.COM', N'ahmed@gmail.com', N'AHMED@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEIwLNE70DIPYx+jdtIjietWJeceEMtvEESjR/fi/YOwfscP7TaDsX0w8jSzjM5YUIQ==', N'JZTL3AF5FR6G4FH6IW57GDSWSPEHSYHP', N'c60d0632-e3fc-4312-bc8b-d2379bcdff3b', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'39163f45-c57e-4d63-bc82-27a7e569f32b', N'ydyad', N'asdg', N'yass@gmail.com', N'YASS@GMAIL.COM', N'yass@gmail.com', N'YASS@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEJWmdGoiWuAyKVR6bOctzf/DOPnLwWY/io6XgQWapxCi3MzTE4UB71KZ9z9DDmAR6g==', N'TSA6BKJ3RXISGHWJEVQ4HNQYIVYSPD2I', N'4a0ea2ce-0ec4-498c-a3c3-d454b2f1129e', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'39df438c-abed-44df-b711-f6d9fb354a25', N'rizan', N'ahmed', N'rizaan@gmail.com', N'RIZAAN@GMAIL.COM', N'rizaan@gmail.com', N'RIZAAN@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEMibXdtUbsJ8T7PFfTNNiIEnIUrB5Wsb/AcBsLiGwgtQpNzG3iaeAlKutnaNqIrt7g==', N'WKWRIT6JPC6TCIDQ5GKFTHWXYEYJJRHE', N'a53d7e34-a331-4bc8-bf2c-e3a345657de6', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'3b6b8bc7-9ac2-4330-af92-e2deb2e64b9e', N'p', N'p', N'pppp@p.com', N'PPPP@P.COM', N'pppp@p.com', N'PPPP@P.COM', 0, N'AQAAAAEAACcQAAAAEDR1wNvATzngDAhgsYY6RtR3cmzSHisT4j6ozukC8Dkm+zCopc3fJK0+edHCea1tHA==', N'V4BH2HMDHLB46ZKQS3TPHJKP37IRPN7J', N'e9f1c9d7-810c-447e-bd97-f28c97e57a19', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'3f720422-7b86-4f9c-ad63-4b82ac70eaf3', N'Tushars', N'Mollas', N'Tusharsss@gmail.com', N'TUSHARSSS@GMAIL.COM', N'Tusharsss@gmail.com', N'TUSHARSSS@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEGcdpsjchAm8nlIfrlpoMiyBswmpkDvcGGh/VkIv/AQ4ZYUhvy4crU0eXe7+nzzXyA==', N'M65CHZLGXFTCQFM5M5JAKBA4PRE3OTND', N'0a3649ae-72ce-41d5-b032-683e9f98b9c5', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'3fd368f7-94c5-4fd1-8453-ffc921ad837e', N'Amir', N'hossain', N'amir@gmail.com', N'AMIR@GMAIL.COM', N'amir@gmail.com', N'AMIR@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEF6tz6vMT1tb9uiBu+fwL/HnkTa0Kq0qxBi9oNlzTIWV1vv5nTMPqfwjyDVJEwdX0A==', N'JEBBD4OVB4Y7XM4LIAG6IBI2RNPDJ4U6', N'58cb00d4-2586-4227-b26a-df3c2e15d022', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'41d168e0-45c0-442c-8b22-7b3eb90e8d55', N'noman', N'ali', N'noman@gmail.com', N'NOMAN@GMAIL.COM', N'noman@gmail.com', N'NOMAN@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEC6t1aqjd7hZsm5E1JSZPdEzSmewx2hXUdTkpNRsKlCSr+1lTpgC3cMDJXULJvolzg==', N'IUPUXLFUNBUYGS5GJ7Q2SUBF635ZPBJ4', N'0b7b4d82-8cc8-4786-bc06-f3b7827bd7e2', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'4a9f384f-eada-4df0-90ee-8a6ba3d45681', N'laila', N'akter', N'laila@gmail.com', N'LAILA@GMAIL.COM', N'laila@gmail.com', N'LAILA@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEJo2eBMy7GWP0l3JAn5AMjer87yG4DFYfSK9xo769SLqdCPiEc3HGa9+JmzFxnG0BQ==', N'K6N5X56HAC3BGHSFQ5DLX3XK33RYDC57', N'50111446-30f3-4787-83c0-130ccf4d97c9', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'4b17ff72-b135-4b4e-aafb-f0b31b76551f', N'rizan', N'sa', N'rizanasf@gm.com', N'RIZANASF@GM.COM', N'rizanasf@gm.com', N'RIZANASF@GM.COM', 0, N'AQAAAAEAACcQAAAAEIauQ2yYFp/BJn3iHa3B2Ec1axg0g+VKKWJIWhhHA+GUgaaNP2JATLxROkWDvHsegA==', N'P3EGVSXQYN5QRWR5MJUCVFTDZAQH3PFO', N'b9a70a30-c1b7-47d1-be22-0b61defca0cb', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'4eb94a1d-92db-4572-9db8-0d862b9a4ac5', N'Noyan', N'Molla', N'noyans@gmail.com', N'NOYANS@GMAIL.COM', N'noyans@gmail.com', N'NOYANS@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEBNbpAO8bZKNefgdPdhF/7RGX/af675PCOeZ75bIg2sHHbGyMQZ5JnBoomY+fZKFgQ==', N'CZXA6ENDU4CDX4CRDRTLV2PECKGFVLQJ', N'c5f7d724-567d-4e9f-9d99-794d68c32fb1', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'533e8fe1-a2f2-4a99-9f4d-98a6b703ec61', N'tushar', N'donor', N'tushdonor@gmail.com', N'TUSHDONOR@GMAIL.COM', N'tushdonor@gmail.com', N'TUSHDONOR@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEFti1O0mhNmRsi9MgALy8dZQbhA3c3iHCGuj73p864WYl9VRbHOZpg7rKEP7BfeKeQ==', N'UA5QKCWGE4IVZSEYG4XNV5F437K6KZBE', N'eda382bd-2608-4138-a2e1-6c80c0f06142', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'55120ca3-c398-4033-9da6-f50127998a86', N'roktim', N'hosen', N'roktim@gmail.com', N'ROKTIM@GMAIL.COM', N'roktim@gmail.com', N'ROKTIM@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEE3haKxAh37jJCThvOA8vuYApqRwwQ8XODuSzeZAiwGFx231u8oFd94eqv1MA1gmEg==', N'45MXTXZ266GUASVZXQTXLDFSPDRUZY2V', N'd6ac19ae-09ed-4d69-b42a-a8cc39bf375d', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'564497cc-f1a7-41d3-b119-9f2c8301ee37', N'ashraf', N'uddin', N'ashraf@gmail.com', N'ASHRAF@GMAIL.COM', N'ashraf@gmail.com', N'ASHRAF@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEJhtfecBB+WQD9am/N6iQPBBoYkUBmt7+rRL8/Y2nXSpNP804vWbC3KVFNJVejVb4g==', N'77LIARCV4H77AZZ23CW7Z7DEF34WIB32', N'841a9456-f9ab-49f1-a9a9-8f91418d93b0', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'56cc4818-50fb-4b6d-a6f3-78f0cf0b6d43', N'donar', N'last', N'last@gmail.com', N'LAST@GMAIL.COM', N'last@gmail.com', N'LAST@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEOu4u6BZCLW4XVO8L7cWcL0evcEIBiuKDFupqvQvHs4sqsTSNUhaWeTD95bOr4mSxA==', N'P2JM7WJGCNGYJPQBJS45V7OF5C5KTCDA', N'f4708cfd-490b-4968-bd86-86a332703397', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'5723ef72-0e11-470f-aced-b276b47a972b', N'dhajg', N'ASFHJAH', N'ASJKFHJFHJH@GMAIL.COM', N'ASJKFHJFHJH@GMAIL.COM', N'ASJKFHJFHJH@GMAIL.COM', N'ASJKFHJFHJH@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAELrQTHeTlKBO4dO+vxKGzjrz8+yvk4CSDV+b/OUwy3SAX9/tKOtbfMGQDEX80nPH+g==', N'724FCXOD3BZUT74PCRY4JNJ5GX2J4GFC', N'ef3c6e45-999a-4055-89b0-57eeed80fdc8', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'57abbbf9-add2-47df-bd2d-f6f992a9814c', N'rahug', N'jha', N'rahujh@gmail.com', N'RAHUJH@GMAIL.COM', N'rahujh@gmail.com', N'RAHUJH@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEGRge2CouWOS+KqkfO1ZFfe5B57N1Uho5ATJghtAuZlGNK99tzE1GYFaAywydKWsbA==', N'NZS2AM3HUUXROOHWLF3QTHMZIFOWUAHW', N'd307629d-cd63-4975-b045-ce991a5d7d8f', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'599b9fb7-cf82-42ae-9422-dd45989ce346', N'kulsum', N'ahmed', N'kulsum@gm.com', N'KULSUM@GM.COM', N'kulsum@gm.com', N'KULSUM@GM.COM', 0, N'AQAAAAEAACcQAAAAEKQ3oBaRXOJOBcS7AvIx5Pgf5XNDJkQdJ+Ur3f1II/A5s+iVfvIouFFEBgyHW7FnZg==', N'2G2TFSKAHO4TYZ7XBS2PUMTM4G7RASPQ', N'8598cada-bb59-49ac-9a26-5fbf84f4da5a', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'5ad316b8-92af-4ba0-b152-e72ef5f5436f', N'rahul', N'ahsan', N'rahul@gmail.com', N'RAHUL@GMAIL.COM', N'rahul@gmail.com', N'RAHUL@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEFO8ftiyPVp7hIog4pDzVOqbBI+FdJUcuQCvhVSGGGOrPleERYwUWWbi9nID753OgA==', N'BSYDFBKHQNXCGKGNFW7GBCF5AVJ3ZIVH', N'433aa1d2-0d70-4295-8459-702c3a0725d1', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'5e79d761-99ea-4f9c-b344-4b808fdc8221', N'noyon', N'ahmed', N'noyon@yahoo.com', N'NOYON@YAHOO.COM', N'noyon@yahoo.com', N'NOYON@YAHOO.COM', 0, N'AQAAAAEAACcQAAAAEPkj6Jyk+HVXGt7nFSwx4gE5UOEbG7FI4f8a4sxIqJdvwmm6KU09L7+3FkaQFfOHAA==', N'6UFR23X37U62KPELJKNWLPHB4ZPBBGPK', N'6dd29f75-7cc4-4674-981a-442200ce8381', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'60538f67-d549-4e2a-a37d-dcaea65755b9', N'fazils', N'a', N'f@f.com', N'F@F.COM', N'f@f.com', N'F@F.COM', 0, N'AQAAAAEAACcQAAAAECoDUWUL86U5ABuqNdVTpr9NOQeSIvNkY/BYi3QtQFolAD3JWR6w4JhhTlm9L0eUZg==', N'GBUJZWKXQWYPZ7I3TM4KSCVCJAR67EFY', N'ec771eb0-300d-4298-8d81-23d05f220f6a', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'62971efc-23a4-4afc-8182-5f2b5d538ec4', N'update', N'ahmed', N'updatesfh3@gmail.com', N'UPDATESFH3@GMAIL.COM', N'updatesfh3@gmail.com', N'UPDATESFH3@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEIJtfhlCOUpAnERq7OGL0ybw/xrq7q744UgwzJDxouwhdWe/wFZpM3waUciEDblxBg==', N'HHPZ7UQNGMQWDQ327JWGYWJ6MVX65MWD', N'871f63a3-8803-4e51-a6cc-5f77809ab814', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'6862abfa-2ead-4b27-8814-c3bd2b662c18', N'radiant', N'ahmed', N'radiant@gmail.com', N'RADIANT@GMAIL.COM', N'radiant@gmail.com', N'RADIANT@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAED6+f3Myc72AIQsDBPWL0F3jIpHByCiq/nQrXqRgD6a9FskzbQr3DmXV6Yi79WkOdA==', N'SS6C5GSIJF5KNVWBOFIVF5MF7ASMAWCS', N'ea9f9f17-1574-4967-902e-2c5886df626f', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'6aa0e2d8-ee54-42b4-b89a-a42b1486dccb', N'ekib', N'na', N'ekib@gmail.com', N'EKIB@GMAIL.COM', N'ekib@gmail.com', N'EKIB@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAENV6RVDugtSwNdRgilHZKeQBsI1Tc8Kg8rjQbDSOLNylVR2+lrUBs2WisxgIj0402Q==', N'62R6KGK4APF4GSC7E4RLZGMGAP7EHEGC', N'6fbf535f-5f04-4c93-af61-dfac3db6a88c', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'6b86f33b-8b38-4fee-ab6c-39b6c75431bd', N'donor2', N'k', N'donor2@gmail.com', N'DONOR2@GMAIL.COM', N'donor2@gmail.com', N'DONOR2@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEOKdSOdOmVLLWdRdNMVmutaEbYy88NHqg9fX9vYJkSz8h30donZ8zstqq5/4kX098g==', N'22EQYBRBVEZPMXT6R2JWWHE2NRC3IEOR', N'94c1aff4-ee6c-4935-b39f-62d2e10cda3e', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'6ce8f6df-6f17-4e0c-bc91-97a48655d7a2', N'admin', N'alom', N'admin@admin.com', N'ADMIN@ADMIN.COM', N'admin@admin.com', N'ADMIN@ADMIN.COM', 0, N'AQAAAAEAACcQAAAAEFwcNRPfevZPf6ijqv1k5xP5zFAEsZo1QXLjDRmBB3cYYC6AdQZk8RPJJTWdNq0oTw==', N'ZAGPZUI7H4BU3PZD5YIYCOGJHJB3KDEZ', N'9e8ce4a6-9aff-4cb7-9883-fedadfd1bfb7', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'6d798306-8018-4955-a007-6cfd1ba12c79', N'GM', N'Two', N'gmtwo@gmail.com', N'GMTWO@GMAIL.COM', N'gmtwo@gmail.com', N'GMTWO@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEAsG/HjAMmwkKy0qrBkx10mTROsPwGvvkfzLFKMr/Mr2yH9LhlQ6nLx20yKkoFXyMQ==', N'BBFFQQFHDEIPS5QUNSNIUVPSQVHCT5OR', N'c8c733f8-3c9b-403d-bacd-6f77880a65ad', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'6e6dca41-d7e4-44ac-8b43-2d9355b995c9', N'ydyadfd', N'asdggd', N'yasssaasf@gmail.com', N'YASSSAASF@GMAIL.COM', N'yasssaasf@gmail.com', N'YASSSAASF@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAELkrsY2tq/RKBVI2YMpOKu0DKo4u35aTLKqcbI/KreUkJx1sb+DmFqICPZJgOfBQBw==', N'UZW6UGFZVHOFGGRCOE3Q2JBJ4IS6CFTZ', N'275efb61-bec8-44a2-8ed8-5e75696f1b2f', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'70128478-5fc6-4283-b5d3-80a889f75b73', N'Ayman', N'r', N'ayman@gmail.com', N'AYMAN@GMAIL.COM', N'ayman@gmail.com', N'AYMAN@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEEUS8PouktEMHNNNIkA5n6wDnSA2PN7C7VTzyc11mBm2W5On9ZCr6fapqmY+AL28cA==', N'U4YXJUVL4JXQEHVCHJRU6U5YMRUQ2PMF', N'c6493eb0-d134-4330-b282-62c69a227b59', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'702d460c-32ad-402b-a8b0-2ac378effcc6', N'tushardoc', N'doc', N'tusshdoc@gmail.com', N'TUSSHDOC@GMAIL.COM', N'tusshdoc@gmail.com', N'TUSSHDOC@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEPi/uaI3Fn7oKuP6/nBjRc6O6sqFsPEjPCeq4F1B3lnRPFxTeYW6zJURHrz79ZOlIw==', N'FXMIVMQOJOMHNKTKGMRCWNRZIX4RGR36', N'a4f1c2ba-f7df-4705-8b22-5439da1d968a', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'77634486-5bf0-4d36-9e46-4cd127c4d501', N'raiyan', N'molla', N'raiyan@gmail.com', N'RAIYAN@GMAIL.COM', N'raiyan@gmail.com', N'RAIYAN@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEGw98bBBLig1dRFiYiPnOEZ6c+Or3r9N5dcoDww376L9/nj11WOKbPrlZMH7qjhXuA==', N'AVTDPZMY3W4YIUD6VUJ5GPJZW2CQ4UMA', N'4b56f680-0cfe-432b-b094-7230f1865c21', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'77adebb6-d11b-4a6b-999d-39ac69b96c22', N'mehrab', N'hossain', N'mehrab@gmail.com', N'MEHRAB@GMAIL.COM', N'mehrab@gmail.com', N'MEHRAB@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAELRUE5ZdzPGeh/TCT753pTFHYfNl7OFVMFzrCA7YEAdc5PP+EusElITo84W1Kye26w==', N'NU45CKGQYPILA4UK3K2IHDPNZ4DTPGPE', N'c0ffbb54-b7ec-4651-b17e-929410b6be1f', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'7c890051-dc6b-451a-8f49-c86ba6982ec0', N'nehad', N'rk', N'nehad@gmail.com', N'NEHAD@GMAIL.COM', N'nehad@gmail.com', N'NEHAD@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEGvToRdYk7QPXDbwLNAeZAp1vpErMtavyfMqTjuqVQwod9zp+xYstl22Muxf9rEG9Q==', N'EMHF3WZ4L55QQGMMFGFBEZJIXWNJMFHS', N'c2a4780e-77c6-4c7f-a07f-b0a0c0353b3c', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'7deef464-6417-4832-882e-572bafd4da5f', N'habib', N'ahmed', N'habib11@gmail.com', N'HABIB11@GMAIL.COM', N'habib11@gmail.com', N'HABIB11@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEPT3g51WKuESyqVPaFRvHF/s5whAxaHKXHIVZL42igtAPTF6xcAcojYMLy9+7mPkIA==', N'YULTKPG725VFIUS2JIAYFDY43SZ5YZ27', N'bb1f14a1-26f6-4426-ae32-3d5416c37cb1', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'7fc4e492-eab7-4a72-9e50-984329663301', N'asfaq', N'udddin', N'asfdaq@gmail.com', N'ASFDAQ@GMAIL.COM', N'asfdaq@gmail.com', N'ASFDAQ@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEGuHRfb64NDE7d69URSwMu/PxCXhCo0o/STmFs+26WpY3970vohG7clf+B6AWZxA+g==', N'D7HFJR73EKFPCQKZN7PGZJ2SUSTK4NY5', N'40112ddf-f3cd-4edb-9c06-2848a6804a22', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'81f173f4-ce05-4bbb-bcaa-7be00153b12b', N'kamal', N'asdg', N'kamalsfa@gmail.com', N'KAMALSFA@GMAIL.COM', N'kamalsfa@gmail.com', N'KAMALSFA@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAELV96GIn02w7Uj6hKivWtELzDV9Fa5465CmDceHgwBeU86hhz/RKvlHcWnNIFweIDw==', N'HVT5Q6QYXLZ5GV3SHHNHR4HJK3Q3H6SK', N'7b313047-3333-41d5-8ec3-746d658957f6', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'8222045a-8d73-4ed6-946e-e4214867d747', N'Abir', N'Ahmedq', N'abir123@gmail.com', N'ABIR123@GMAIL.COM', N'abir123@gmail.com', N'ABIR123@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEK644L5m3McUAwmHbinKH3bv56+PccsIFB1J7PMvdx8SLYHmlRkFEyZD7zjaR3RDkQ==', N'MIU2VPNS6JQB4PKOE5ANVSPAM7KWM5QM', N'ff32addb-11fa-4813-94f9-76687f70f46c', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'83ace0d9-1a90-42e2-934a-1467b7adb249', N'JAMAL', N'AHMED', N'jamal@gm.com', N'JAMAL@GM.COM', N'jamal@gm.com', N'JAMAL@GM.COM', 0, N'AQAAAAEAACcQAAAAEFNLjYrNQTiLmWEpLdw+r42ra4qX0Tl0aO8TxrIHTXGrc9eRgUzkqFEJnh6R0uvs3A==', N'UHX7ZPJQPOUPUQWIZKFESMAKZCBC7YBG', N'56df42ef-7059-47f7-9632-933d6c0f9348', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'8463ad5c-f306-485d-a52a-78dba21650b1', N's', N'd', N'kulsum@gmail.com', N'KULSUM@GMAIL.COM', N'kulsum@gmail.com', N'KULSUM@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEKSDZeQGk5vKVqp2BOQzm6VxWQBcXsxrCtOreNXJhYa7P+bikHR9hJZIkiCZ0163DA==', N'GOXDYOC64PGMJLAUWIAEM7M5PNWZ2PMB', N'c896bf80-e7ef-4c96-9b71-6fd1aa929ffe', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'85da27bd-474b-437a-af63-0771623f63ec', N'falguni', N'f', N'falguni@gmail.com', N'FALGUNI@GMAIL.COM', N'falguni@gmail.com', N'FALGUNI@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEI6nlBZok504P1LjnMcRt/JmcIAaob+erdL/H94j7KIbMPMev7mmxBFuZgycd70ykw==', N'A3BERMKHR7SRBRX5B7IXSIVJAFBRRFMK', N'07763830-30a4-4c8c-96af-206d5dff614a', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'875bf765-a1ad-4bf5-b479-3552c7afa2d1', N'Nayan', N'Ahmed', N'NayanAhm@gmail.com', N'NAYANAHM@GMAIL.COM', N'NayanAhm@gmail.com', N'NAYANAHM@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEOEciDX+Mel0BX7A9CUAktw0//tQRaqLHYMyC3WwbA/hdQFaoCYu7zRVEYHmCs+3IA==', N'AA75WIXW7NWMTWX2ADQDHE3O7E5T7FR4', N'a8eb8706-a257-4252-8ca4-e88e1f22278f', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'8a4a50af-0bb5-4431-b06d-5bd60d50a4d9', N'ppp', N'pp', N'ppppp@p.com', N'PPPPP@P.COM', N'ppppp@p.com', N'PPPPP@P.COM', 0, N'AQAAAAEAACcQAAAAEBxd9Vqcp5Ay0G6J9y5ikI9lgKTz5N99cy2bAxdq96oi/3eDocQu18z8TjEUgMYpXA==', N'EVTHVJEPK6YOLDMQTL7HRR6YIP66LDBM', N'2f146c54-5c9c-4230-ae8a-7244918d11ff', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'8b849f24-62e6-4296-b4d2-63f80c8e42a5', N'faisam', N'ho', N'faisam@gmail.com', N'FAISAM@GMAIL.COM', N'faisam@gmail.com', N'FAISAM@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEBw2KmUJQuzF7wkZhBn0vgE/GGqUMBNcXe60ROGPgXsteq0eKkhFFKs/qkkOYpP4+w==', N'DUQOJZO5EMYHNMTFVTV3V4XAYBENSCY2', N'c263696c-6aac-416a-9aff-bf69f3a19eba', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'901c4931-07f1-4248-9b76-f11b9268a5a6', N'afklhafjh', N'safdhd', N'jkdha@gm.com', N'JKDHA@GM.COM', N'jkdha@gm.com', N'JKDHA@GM.COM', 0, N'AQAAAAEAACcQAAAAEEvJxKIJQ+9AQabXIHURoIpZGfTuqgycmU+ucD1Iu0I7qaRgncoSnIwag9fLW0z5lg==', N'QM236LZ5YHIH53V3Q2TGM36OUODZOTD3', N'7df752c4-c1da-4738-9043-ace3c94ccf5c', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'96bb410a-7fb3-4208-a1fd-4fe2db221371', N'update', N'2', N'update2@gm.com', N'UPDATE2@GM.COM', N'update2@gm.com', N'UPDATE2@GM.COM', 0, N'AQAAAAEAACcQAAAAEGtyNnwtt8HYgMoT3j0NXIz7B5r3US5bA/XhrJZRsZYe+ft2RV+M8ZFB/wEBieLXQw==', N'46QENLLHJUVUPOP7LWRVUA2C7ACBRJBN', N'f8e07e3d-d090-469a-9b1d-7a495ebe0ed2', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'9975d635-1839-497c-ace1-8203778c0286', N'obay', N'dulla', N'obedulla@gmail.com', N'OBEDULLA@GMAIL.COM', N'obedulla@gmail.com', N'OBEDULLA@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEEi/BxG5Tn8ivrFVhQl61N49lPi92szynFG/HODiB/zxbmV1Ps5lrXPhMw5P42NI2g==', N'GTGWD4GK4YAGW7FYTBJLYXDB5AKV5JZ3', N'93de4daa-23b6-452c-ba24-a8016085d10d', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'9d0cea39-8eb0-4a0c-911c-973e0ef34457', N'shohid', N'ahmed', N'shohid@gmail.com', N'SHOHID@GMAIL.COM', N'shohid@gmail.com', N'SHOHID@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEI9jDPrm4gczjoVRDLntgcvTF2gUDr3Llke2zFUaXv3kg2UNWh48fEQjjZoOnGK7Uw==', N'MROPK3GGPMEJFPTABCTCAAPN3Y3R7EBA', N'b7c552d4-c967-415b-91df-a94cf552c37d', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'9d14bb93-9162-419d-a4a3-3cae60cac95a', N'fazils', N'r', N'addfazils@gm.com', N'ADDFAZILS@GM.COM', N'addfazils@gm.com', N'ADDFAZILS@GM.COM', 0, N'AQAAAAEAACcQAAAAENiD8xqEjtoACaDRMqyTbw7gIIROmIoRH1Jxi9fFvCRPiBZkMxc7ToWLg3QvP7NrZg==', N'DL2H3SUS6L63RU3OWP7MCT4KFXAXGNTM', N'd0063507-1803-405d-a030-95e83cfcdd0c', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'9f15cdcb-f14f-4d9e-9e1a-deabe8c534a6', N'abjckbnjabfsb', N'asjknfgkjasb', N'asjkfnhj@gm.com', N'ASJKFNHJ@GM.COM', N'asjkfnhj@gm.com', N'ASJKFNHJ@GM.COM', 0, N'AQAAAAEAACcQAAAAEBf141ht22nPzpwT0j9sNL1iekwVTHe7LfcSN9qIcKtf/uCYTY8qOWFSvPAqi5E4FQ==', N'JHVLZOJNDYNABCBMLX7CELJYJJD2SHSI', N'9dc8dbd4-ca5b-4194-8480-1091e80c6645', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'9f590253-78fe-4a1a-968d-73980a01e2e4', N'update', N'3', N'update3@gmail.com', N'UPDATE3@GMAIL.COM', N'update3@gmail.com', N'UPDATE3@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEA5wMGYJeYfInx/LXeWCU/0DV9EwIcyAh2p2FOaRkE8Mib6Lnono1Mnda9SgUH+Qlw==', N'VSXKXFWJHPY7FQQZYAWEG6IX5U6AICY4', N'e2bee9b2-a726-4565-8e69-72b02038ae80', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'a1647ed8-8ea4-4c0d-b438-227c33266cc8', N'rizan', N'r', N'rizanq2qerw@gm.com', N'RIZANQ2QERW@GM.COM', N'rizanq2qerw@gm.com', N'RIZANQ2QERW@GM.COM', 0, N'AQAAAAEAACcQAAAAEMUhKjKf9ByBk6EOT6qIekA2mGpFJr1T+YYK3OirS/rEUYjVW0SIigbRHp69IAqiFA==', N'3VMAA4NY2XNJHASLBR5KBMKYTBEDHUGU', N'14b3eb19-2098-490b-9db6-af8f65901ba7', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'a3457f80-4ee7-47f0-8314-1fd89ce3dcd4', N'rakis', N'kk', N'rakis@gmail.com', N'RAKIS@GMAIL.COM', N'rakis@gmail.com', N'RAKIS@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEG/3Q9l6yY17dJkClx2FQRZh83dcQ1gMTCSWf7tB524KcqrJAaqie30fmFlvbWEWYA==', N'DU5QFFIAIGZT4HZGCUATWTQHKVRMJJDK', N'682faa8e-8e4e-477a-8462-27a040a5a091', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'a9a172eb-19ba-41d9-8c3d-d93fadb4b9dd', N'hfdag', N'ajf', N'shagjkh@gmail.com', N'SHAGJKH@GMAIL.COM', N'shagjkh@gmail.com', N'SHAGJKH@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEBqudVEW+Jj2MuRJ+dD7AhKrmqwjZYPFsG/sx5M9edwLoqnX2SQWOdmSrxF7Wi2iSA==', N'YCTX7WAVNOWGZGLAFOCR7YFE22VP2FA5', N'a8225fd0-d790-4602-9875-6730bb30167f', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'a9ac371b-5937-45c6-a683-66a3a3b0610a', N'Gm', N'one', N'gmone@gmail.com', N'GMONE@GMAIL.COM', N'gmone@gmail.com', N'GMONE@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEL2NkVmqLwcq4pBRQNf0S5NuS/ai8d4K6cUzxlyHE+HmGaSipTgyzT3pIP6ZaBY71g==', N'GOIKK6JKYQUOLJ6LH2WUDFGKFPCV47Z4', N'e1ec5ae2-b4fa-4028-babb-72542dd12760', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'aad4d0dd-809b-443f-8365-660af23ae37e', N'faruk', N'aa', N'faruk@gma.com', N'FARUK@GMA.COM', N'faruk@gma.com', N'FARUK@GMA.COM', 0, N'AQAAAAEAACcQAAAAEDUIZ7F6VrrnQgEVwchXXxGAhVt4Dkv6JAlvta94M1ouJUb2lJqMHgBVKIGbeOX0Fg==', N'EIOWXYZUIVDH7HG24VFKQM3A7ELVYMMT', N'ed670951-f847-4cc3-8d88-290d887b9fd8', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'ae5d49d8-b38b-402f-831d-c061585f503b', N'ali', N'mollla', N'alis@gmail.com', N'ALIS@GMAIL.COM', N'alis@gmail.com', N'ALIS@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAED19u7tjCnxrXrq7WcLPJaPz/QsbigM8DD2WFrzcIjFrCWBEpEbgg4xL4nrk4VpIig==', N'RJG3PKCCXJQIVJDW4WXTE6R46AMDRCW6', N'cf052ca0-6c19-473a-8279-165d978167d5', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'b481b70e-30f3-4797-b5b7-f9fbe4ab3a13', N'Asif', N'Asif', N'Asif@g.com', N'ASIF@G.COM', N'Asif@g.com', N'ASIF@G.COM', 0, N'AQAAAAEAACcQAAAAEDgyl/hV1H/bUo4+Q13qd72P9osDivqPk3uHp/5NiuNeq4vXqa0IcrdyfGT+RXGUxg==', N'M5FJJMTTBZY3DGFPINLWOOSEAXZX5QIC', N'0e8389f0-27c2-470b-8a59-659d44f60b2a', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'b6a8ebf5-d4a5-45d3-aa51-7b2e47799fe8', N'RUPAM', N'MOLLA', N'rupam@gmail.com', N'RUPAM@GMAIL.COM', N'rupam@gmail.com', N'RUPAM@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEEes5WDfRIMSLKJXXye1MgHA5pnnOv8JjFVpTIV2ck377EDgUJ0+Chhqe6y5HdCIsQ==', N'2SWMX4FIRYFMQLAKWABVKY2TQ4QAJ4XG', N'7fdc6a1b-c3af-40aa-a67d-2ec019317b1a', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'b760b2aa-06d2-4684-86a1-0e98ff00b8c7', N'fazils', N'p', N'fazilstus@gm.com', N'FAZILSTUS@GM.COM', N'fazilstus@gm.com', N'FAZILSTUS@GM.COM', 0, N'AQAAAAEAACcQAAAAEOCTY8arrYe3Rb/IKOa8K22Yqc6fsqoFCEFI+OorlgCLKyo0PtY6PzpwgLM/ipDiEQ==', N'JL5MISO57KQTGLJVLHE4TK5NTD3SHA7J', N'23d87185-f452-41da-9932-af4d3ad28b3f', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'b78ab5e7-f093-449d-a89d-00c32516ef25', N'amir new', N'hossen', N'amirsnew@gmail.com', N'AMIRSNEW@GMAIL.COM', N'amirsnew@gmail.com', N'AMIRSNEW@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEJ1MiFfWkYrMmw6ycRwQ85BadFFqyHrXVMcUisXGL2puEXHXWkNvvtPvER3EuIPD6Q==', N'IF5QV35QOPDQVCUIMQKCO6KIUKUCQ2RF', N'806b477a-b403-4aa0-8089-4963a545d1ce', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'b8c57a6a-2d0f-4f21-bd83-af11def4160e', N'ali', N'hossen', N'ali@gmail.com', N'ALI@GMAIL.COM', N'ali@gmail.com', N'ALI@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEOCkQkRON+vPn4k/5s4OAWip9wiqvvIP4Y/uDhMTwy6C7HPd+FTj7xiXRtqjrc1fRg==', N'2A3YS4LMHWAVLGYYUJ4VF4HKUBGALUSP', N'22480cff-96e4-43bd-b966-8e582adb2180', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'bceb7678-1497-4b53-9bf4-6d14fe71dbf9', N'rakul', N'donor', N'rakul@gmail.com', N'RAKUL@GMAIL.COM', N'rakul@gmail.com', N'RAKUL@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEFme2lCvIk3vEzy4XXCd/EgKYLJxP4amBvWGLbnrxsz9kj0+BnSwhGY6wh5ysR0/EQ==', N'YTU74XIPFIQYTPBQYGQONXYUZKG7RUN2', N'86366fd5-3bb5-4579-8946-386039b9f31f', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'bd50e039-0742-4821-be39-50326b5d581f', N'content', N'ahmed', N'content@gmail.com', N'CONTENT@GMAIL.COM', N'content@gmail.com', N'CONTENT@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEDdcweZveSu6S0IaSGUwz/qqptD+hyz9SSxDb+OumNM2TkwAXMHV6ndnQzkqYwktRg==', N'INBQ7HPANSPZQVRUQLTGPHTV7RRRWHME', N'97a67def-65f4-4841-ad10-6b08dea72412', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'bd96d396-1118-4fd4-8091-cbcd9f98fdeb', N'fazilsssa', N'aaaf', N'fazilsssa@gmail.com', N'FAZILSSSA@GMAIL.COM', N'fazilsssa@gmail.com', N'FAZILSSSA@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEBKXKLdldNYen49OeZm14jAC6ZOpfAhB56Wlj1ToXX/E4OFYr1NgEXfdJ+hJFrwEdA==', N'XD252SHNQGSTHC6TF6AA5MSHCD2BCNEE', N'e9e6a5d7-9be1-4403-bc4d-391ab3201828', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'be69bd8e-68ba-4820-9392-45f8ca92c6ce', N'doctor1', N'Ahmed', N'doctor1@gmail.com', N'DOCTOR1@GMAIL.COM', N'doctor1@gmail.com', N'DOCTOR1@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEPPBIKNDDuk3+u6gxJltD2pP/r6kq0Ti+Ifm1pqm0oQLwzhtC7L4ulOg9IlugdqGMg==', N'GCDXIWHSVBJBSQ7DYMEWZQ3K6M442Z2L', N'56fd5e6a-7594-474a-997b-b6b8b3d91c98', NULL, 0, 0, NULL, 1, 0)
GO
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'bea40724-00a7-40c0-9d5c-e7201b1d4de3', N'shafi', N'j', N'shafhie@gm.com', N'SHAFHIE@GM.COM', N'shafhie@gm.com', N'SHAFHIE@GM.COM', 0, N'AQAAAAEAACcQAAAAEBfBvEA6i8/HmV16OopJKpxB/gm3zPws35A5Uvvgxucb8KZJqzglFiN55CmYprUzAQ==', N'3MQEK4HOT6HLATVS73U6EZS3WWLFB7AB', N'2fecd054-6993-42de-b521-169476254d3d', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'c01472af-5fb9-4c60-8653-f5e45142fc03', N'abccc', N'aadd', N'abcb@gmail.com', N'ABCB@GMAIL.COM', N'abcb@gmail.com', N'ABCB@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEAr1nknHtJoL5BCAOFcwZAcKSdolpw/S/vBegz+9z33Hq7E9bkO+XSEdOf81f+qekQ==', N'N3JKE3AQE4S5O5AOT3SZDKW3VY3E3PMI', N'c995f3f0-82b4-42d3-bcce-090fad424cd7', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'c2295c5e-3f14-4a13-a521-3c83f6c75d29', N'hasi', N'ha', N'hasi@gm.com', N'HASI@GM.COM', N'hasi@gm.com', N'HASI@GM.COM', 0, N'AQAAAAEAACcQAAAAEAHwMo+k9xiLa11q2hSagJtrMdVgkmYnWr5NuU0kdPoSkfDrPmxDqWs71JERlviY7w==', N'MZEKJTKTLVKLYW332SFPCK2WBTG36JRE', N'2da4b1b8-3e22-4241-a84e-6b3ab6ddb643', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'c6610876-8456-4c82-90a1-70a63d9fa3d5', N'pikachu', N'Ahmed', N'picachu@gmail.com', N'PICACHU@GMAIL.COM', N'picachu@gmail.com', N'PICACHU@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEKPv//b8nJ6tOFTi+pyHtgo52MyoXK6VMxAZ9Ca+bkacrn+tqEyBi/tVbun1BBv+oQ==', N'YISXDGODDJTZQRMGTCWTD3XOEZZTY27D', N'7787554e-f131-4f6b-af71-bf3746a00ad7', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'c729a4c1-caa1-494c-bcf9-5eee31b48735', N'Ayman', N'Sadiq', N'sadiq@gm.com', N'SADIQ@GM.COM', N'sadiq@gm.com', N'SADIQ@GM.COM', 0, N'AQAAAAEAACcQAAAAEJblOgkWDperr1igqGUVSLgeGGhpLgYpVsVIjQ5Q7PChB4TG4xBEOjnebEHXSG6bNQ==', N'7D4KEWUKEAPYVHSAZNUJMAECQ5THUAEQ', N'741e7e42-511e-4547-9527-a9911d4a0757', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'ca4817c7-2756-4ad4-ab6e-d607becf1de7', N'ydyadfgsdg', N'asdgsgd', N'yassdgs@gmail.com', N'YASSDGS@GMAIL.COM', N'yassdgs@gmail.com', N'YASSDGS@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEKXQoILyqSM+zMaEuaorCKZbdJMYmfAIeYEQheH5aqcHpjZfUBNH41n9LldabtrCSg==', N'2YMCZWUDCAYEGYPBFKXYABOFDW6BB5BB', N'6662016b-aef5-4aa1-9d8a-a2559e0a7db1', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'ca4a2eec-a6ed-418c-a594-3f4aadcbea65', N'kamal', N'asdg', N'kamalqeeqf@gm.com', N'KAMALQEEQF@GM.COM', N'kamalqeeqf@gm.com', N'KAMALQEEQF@GM.COM', 0, N'AQAAAAEAACcQAAAAEHR7i3ln8asHIFJrBJOuju0JaCsQQSer3HsilId/o2B0eeHw8PpN8iumJ22vKZMH4Q==', N'FW5XJVN5AKS5YTTBRO6C5ENO4DZPCGCX', N'd6fe1acf-78a7-4e73-987c-2decf8980628', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'ca638939-8052-4543-9e72-782ad1f8b7ec', N'raki', N'hosen', N'raki@gmail.com', N'RAKI@GMAIL.COM', N'raki@gmail.com', N'RAKI@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEKBwfhQkzhJHA4tBl5UUTRsfrR68dNR+sFInk1nvbI6FLEpL/mErd6NE4TdpVqko3Q==', N'EMRXR35QDOBWF3S6HZ5VZQ2DSR3HI5V6', N'6d63853a-c460-4e47-a836-302d1ed50617', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'cee5c03b-2faa-4646-892f-bcca26fb3f18', N'shanto', N'tedu', N'tedu@gmail.com', N'TEDU@GMAIL.COM', N'tedu@gmail.com', N'TEDU@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEJ6ItfOI+95ee/YT6Gc0+KR0miIrKu28xN98WU/o9k7grY55IVuyAdfHsatXheOXYw==', N'CF2IR2B7AG3M5R2EOGX4H3VYF5K3O2J5', N'aca829e2-8845-4b7f-9373-8cf1801bdcb6', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'd146b96a-ce2a-488f-acbe-9261e2df5414', N'update', N'1', N'update1@gmail.com', N'UPDATE1@GMAIL.COM', N'update1@gmail.com', N'UPDATE1@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEPNn38l1EEKb6rk2Zg2nYmxmopejo8vKtexDoL5lmTyNwd/CtfFzHTCg3aPznNnbbg==', N'AEZEHUIVQ4WPC7HSQRJJ7B3RDKDX5USU', N'9fa7073c-f3f6-4c9e-bc60-ca32132f2a52', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'd27c946f-0767-4783-af6d-fba7cc76546c', N'safi', N'sa', N'safi@gmailc.om', N'SAFI@GMAILC.OM', N'safi@gmailc.om', N'SAFI@GMAILC.OM', 0, N'AQAAAAEAACcQAAAAEDr7WQKbXSAdOhPE4F7uiryiYCBbXF9NRRbkbLZlJ89a8v9s+zNfF/SstkPSjrHVkQ==', N'VEGLKPTDNBEV2DK37TGCA5XDLY7IRDZ7', N'b4df8181-eb03-4336-ac98-d79ba984cc3a', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'd311f106-00fb-4c63-bb56-9353e175c713', N'tusar', N'molla', N'tusar@gmail.com', N'TUSAR@GMAIL.COM', N'tusar@gmail.com', N'TUSAR@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEIlKV8LZLObjh8qknWy7Hc5nkiRoLEU4laEadE6I9J3OLZh2Av/ylD5LbbtzF+67/g==', N'C5N25O4NTDYFK6SXN4EWUKNLWG3KJNSA', N'dfd865ee-5328-4505-bb8c-45fa75d30b67', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'd8a6cdaf-48e8-4ff8-a3ab-c7dabce3690c', N'tedu', N'shanto', N'tedu1@gmail.com', N'TEDU1@GMAIL.COM', N'tedu1@gmail.com', N'TEDU1@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEEK3wWuL2tzeIBNYkAimP5WooRTUbseThk6C6jbHxDZSagfTi9KrtMguky8pbk4YCA==', N'N3L2QEKVORE53JARWCF3BR6V6MFT2OTD', N'63ea9ced-9512-4b5d-be28-bee20f0804d9', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'd92d0ac2-b2bd-44dc-877f-1f90f964dfd4', N'fauhfa', N'anjkfkj', N'fnjksgbjkgn@gmail.com', N'FNJKSGBJKGN@GMAIL.COM', N'fnjksgbjkgn@gmail.com', N'FNJKSGBJKGN@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEGyZ+d6fKgkkFusEanODsnelr68LNj6dJJtH2jRwV/9KvyAsO/C3AVgksKgs2E/EIw==', N'IMZSRZUX7JPC2VMKE6ZQK5PDTX36BM3S', N'2bcc6317-b063-4b6b-bd88-b7eda2e4416f', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'd9f48ef6-d0a2-4263-9e51-3821b2d0513b', N'royel', N'r', N'royel@gmail.com', N'ROYEL@GMAIL.COM', N'royel@gmail.com', N'ROYEL@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEKJVeeTaOHe+8Q3hjaa/uQrP8Q6geDxMxv5XAUgBFO8bVrz7yk0Qq8NFSsyGzww6mg==', N'TDCIJALHBYYPSGCS2F6MDGGEZV4FPEBW', N'65c6764a-a49e-4ce4-b90f-73682c3ec290', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'da18163f-4801-45a0-b2aa-379971972e70', N'update', N'4', N'update4@gmail.com', N'UPDATE4@GMAIL.COM', N'update4@gmail.com', N'UPDATE4@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEDzZzkPDWARcVeKpekEzNAkV/PYG96H4xrozGPo3EvOPmAgrv0XPRN4Hsmynbol3mQ==', N'7TKDBGVUXSFIIVZDXIFLKZI2LIQG6ZUI', N'1102c803-5511-41ac-9421-3fe766864071', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'dc03a397-132f-45b3-8754-f1d0dd62486d', N'faruk', N'ahmed', N'faruksss@gmail.com', N'FARUKSSS@GMAIL.COM', N'faruksss@gmail.com', N'FARUKSSS@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAECWCQdp7SdlaToxFxSBi2rpvmY+En+dC9jZXU1HTbYsxBDogQ41qCW4NuRUFhxQ+Mg==', N'F66DVOFS7KFP567C34HF3O2NXWWWQZQU', N'e319719c-256c-4653-914a-f1ec447d80be', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'e2cceed7-c67e-4bf8-a25f-cea4b58e0c1b', N'Ayman', N'r', N'Aymanpkpk@gm.com', N'AYMANPKPK@GM.COM', N'Aymanpkpk@gm.com', N'AYMANPKPK@GM.COM', 0, N'AQAAAAEAACcQAAAAEG6xFvhZrRIcFuGwDD6kgPnD4yYlSyeXT9p4x842VvkjwQCzKVmramcW4ns2kHWu4Q==', N'R5KPUA4HSJL5U642AFCJCH4FV5NKESDW', N'b723696a-64a0-430d-ac25-ee40577189d0', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'e37d2a48-9a24-4c06-a561-6855d11d4638', N'sagor', N'molla', N'sagor@gmail.com', N'SAGOR@GMAIL.COM', N'sagor@gmail.com', N'SAGOR@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEGERbWHdJ1/W1JsJ5eSizbZEaC0BiATBrBitkHiLDLkn9IgjHcwQ09zWxmTC5FyCKA==', N'HJDCKUUGNXXENGCV3VYI3APBY25EPMLK', N'9c785da9-3607-48d8-ad36-a09554c71ca6', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'e73e8d31-6f79-42f6-b57d-54c9196366c0', N'ramot', N'r', N'ramot@gm.com', N'RAMOT@GM.COM', N'ramot@gm.com', N'RAMOT@GM.COM', 0, N'AQAAAAEAACcQAAAAEEOSqBvFdaH+kLjTyBBpR3bWJcNcZR4LUXCykIOo9X8d1kqp7msYrHjHS6vXZgpQUg==', N'4PWBNEOH4WNUFNKVZFALWQD7UQDPFBXN', N'1ddd53c8-d8c2-41c3-bbc1-bddb3860468b', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'e8e52bdd-8182-4f48-bd11-a565c172f689', N'golap', N'p', N'g@g.com', N'G@G.COM', N'g@g.com', N'G@G.COM', 0, N'AQAAAAEAACcQAAAAEKXzs7Te/T6ckqTp3QvFASbhK6yLw/iOG+FcUJ/wW7eE7fkTsuNcj7QB4SwUeGE5Ew==', N'6AGZI7MSJASOO6572E3J3NFVJHAH32IP', N'd087cbc8-a825-4e74-930f-2e7879f56d5f', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'e9505628-17a7-448e-93e0-96c25cf5b6f5', N'kamal2', N'ahmed2', N'kamal@gmail.com', N'KAMAL@GMAIL.COM', N'kamal@gmail.com', N'KAMAL@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEJ+7ozHjZBgXgWO8OMO9XN7qdmA+UxoNrltopdZAl+EbdvRx38KdTWTfXCdb070K+g==', N'SLDJL7PTKMAFAVE66VVZG25GWXZ44PQ2', N'fd1d2556-03e5-42a4-b787-254c15a18373', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'eb094263-fe5a-49e3-b368-5209244e7277', N'raju', N'molla', N'rajuma@gmail.com', N'RAJUMA@GMAIL.COM', N'rajuma@gmail.com', N'RAJUMA@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEFxihbQpRNcJ7M1W2vCss8cGqm5ncOsg3MdEbZbumsks8O2XxYgLYaSnHUxFssi8SQ==', N'JQ2EIM4ZCQTDDIAWNK4WDFNJEFBIFWMR', N'3c8872d4-306b-48d4-89c7-c1ec3219b0ce', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'eb69b831-9cde-40b5-8c3c-f7cd023d5e25', N'rudro', N'molla', N'rudro@gmail.com', N'RUDRO@GMAIL.COM', N'rudro@gmail.com', N'RUDRO@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEFLGWwsylN0cRgoNOZ/BXNTDyvjuk5JtDOOtTI63HCmT5EnlRqdV04RI3ysJKzLpLg==', N'SPK46QWOWEDE7G5LUN5RMULTE2OO4OJE', N'af55f7e6-d136-4521-873e-aaf979f66441', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'ebbe06df-baaf-48cb-96ac-d73b9d3d93a3', N'jony', N'rahman', N'jony@gmail.com', N'JONY@GMAIL.COM', N'jony@gmail.com', N'JONY@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEKP3XyS8/IkKPHZwBxFK+QdDN9jxj5bd0bPRCOV6aGVA18ASsQhy0fesyQRg05sqJQ==', N'3PC26GTCBLZCICYU6FRGOL2VNMS3WTGU', N'29a73ed8-fe8a-4eb1-a40c-bd8d31186f53', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'ee58b0ab-7634-4ae8-9710-546c1a4ff3ec', N'rafsan', N'molla', N'rafsan@gmail.com', N'RAFSAN@GMAIL.COM', N'rafsan@gmail.com', N'RAFSAN@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEHBlkpS/UNqmkbv6Jk7CjXh7pYXgbx4o/D5sHJ8HridXfFiIRKQ8MSO2yXEa1KDk2g==', N'RMCCZET5MLF2HUQJF2KW7LBHQAUYYH52', N'862aaea8-98c7-48a2-a8f3-1e484411a0fc', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'ef88410c-a718-4be3-b187-183a1452f86f', N'shafiqul', N'islam', N'Shafiqulislam@gmail.com', N'SHAFIQULISLAM@GMAIL.COM', N'Shafiqulislam@gmail.com', N'SHAFIQULISLAM@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEAykOBcWITekvGJnmb/UZdnZu7/TNF3Ten+n2DmaEwiYYc7nCIFS4IDxyICN0s8Gag==', N'3HOYMNBUDWARADEPFK3453HUVG7ZTNZA', N'597f873e-bb11-454f-8d64-6fc5beee4756', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'f16a546d-4339-4a5b-bf61-ce168ba6c983', N'jack', N'mong', N'jack@gmail.com', N'JACK@GMAIL.COM', N'jack@gmail.com', N'JACK@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEDcJzW7cyxkzCaGX5Tv0PX1anR8pAsAhjArIGI7Rq6f0S3q4lQ6Er8Rr/U0dO3oSMg==', N'TL7MNXXHLLFD4RH26XJTIBLWWBCKH6PG', N'e67852d8-65e4-4237-be40-ab5858edd704', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'f8d12f3c-ffa8-41a5-a2ae-06acaf827aac', N'ratul', N'ahmed', N'ratulss@gmail.com', N'RATULSS@GMAIL.COM', N'ratulss@gmail.com', N'RATULSS@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEPuboPlp+9mCuInKgrGc/mYYbauj0QO1Y2oXaf9Rvt5ehJBs5VQewIGRLacVGQ+2KA==', N'FFF23SHI5UO4FAMAKGZNLLU4LG4LYBD3', N'4c93a502-e3e4-479e-bb3d-6e002d081cfb', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'f9a07a33-acc8-4c4a-85f4-7ddef14cf352', N'payel', N'alom', N'payel@gmail.com', N'PAYEL@GMAIL.COM', N'payel@gmail.com', N'PAYEL@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEBi0yWBAqLNGtBovVXwSdEJK+mjNv/RLwMUxJz6RSE8XCgEgAr91a7cy02x58L943w==', N'LLVLBFI35OIWJQZDJ5RYPJKLH4NBR7MJ', N'be4a903a-593f-49b0-9ff6-95e881041eb1', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'fd01090f-c01b-4cdf-8866-7213c8338ef8', N'Ashfaq', N'molla', N'Ashfaque@gmail.com', N'ASHFAQUE@GMAIL.COM', N'Ashfaque@gmail.com', N'ASHFAQUE@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEJayRgdNUDmw89L5sj95ulFSukwa5k6KHyaGui+gGuH5i9CI0MnAFD4w7IfwRaeHIA==', N'CXVAADYF3CBM3H4C23GXCGMTVPPFX525', N'0306a7ea-ad4b-435f-bad5-25502999329f', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'fdc53c88-c87e-41ea-b043-d50671f63d73', N'royel', N'molla', N'royeass@gmail.com', N'ROYEASS@GMAIL.COM', N'royeass@gmail.com', N'ROYEASS@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEIB0WTmyDLqbu/5sQMeh7MPUnbtyT3JZujmKcd1JHw0l+HsMmvruIQrSd2uxzwYaeg==', N'LRF52F2DMIUTNZV6DTQF42YSV7PLJ6XD', N'fc985892-1048-45dc-a61d-56cbc241b214', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'fe77b434-e686-43af-9fb4-b40a2cde50b4', N'kamal', N'ahmed', N'kamal@gm.com', N'KAMAL@GM.COM', N'kamal@gm.com', N'KAMAL@GM.COM', 0, N'AQAAAAEAACcQAAAAEMVqRW/i1lvWEy/AqilUHTA8Fzj7ycZpL3Ov2uRoyOag47itkJFlltCOVapo3wHHxg==', N'25XNZFA336QUT34PZXIY5CLUHOZPVSGL', N'4b288bf9-3a9e-4395-bf03-8bf33a9b5435', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'ff43764c-40e0-4aa5-bcea-8aa7f91e5ea8', N'dockaf', N'adkan', N'docs@gmail.com', N'DOCS@GMAIL.COM', N'docs@gmail.com', N'DOCS@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEId3mX13e3bJG0ebDkXkf/cUl0hekL3x0ijFNlZ9b4PPkkIbu4tYM50xVIoXnXCaOg==', N'6A2GGSKDYQBYPPGV5FSK5QZLX37QWNWF', N'45379ddf-b3a5-43f5-a5cc-d43cdff113c2', NULL, 0, 0, NULL, 1, 0)
GO
SET IDENTITY_INSERT [dbo].[Bloodgroups] ON 

INSERT [dbo].[Bloodgroups] ([Id], [Name], [Description]) VALUES (1, N'O+', N'O+')
INSERT [dbo].[Bloodgroups] ([Id], [Name], [Description]) VALUES (2, N'A-', N'A-')
INSERT [dbo].[Bloodgroups] ([Id], [Name], [Description]) VALUES (3, N'B+', N'B+')
SET IDENTITY_INSERT [dbo].[Bloodgroups] OFF
GO
SET IDENTITY_INSERT [dbo].[BloodReqsts] ON 

INSERT [dbo].[BloodReqsts] ([BloodReqstId], [PatientName], [PatientPhoneNo], [Address], [PatientDeases], [DonateDate], [DonatePlace], [DonateTime], [BloodGroupId], [Bloodqty], [ReferenceId]) VALUES (1, N'Sharukhsf', N'546456', N'4366tweftgg', N'tyuytuyt', CAST(N'1998-09-27T00:00:00.0000000' AS DateTime2), N'dhaka', CAST(N'2023-10-08T05:41:00.0000000' AS DateTime2), 1, 0, 3052)
INSERT [dbo].[BloodReqsts] ([BloodReqstId], [PatientName], [PatientPhoneNo], [Address], [PatientDeases], [DonateDate], [DonatePlace], [DonateTime], [BloodGroupId], [Bloodqty], [ReferenceId]) VALUES (2, N'34eyre', N'erw6364346', N'346 34dsghadh  h', N'ddfhdsf', CAST(N'2023-10-11T00:00:00.0000000' AS DateTime2), N'sdggagg', CAST(N'2023-10-08T15:46:00.0000000' AS DateTime2), 1, 0, 3053)
SET IDENTITY_INSERT [dbo].[BloodReqsts] OFF
GO
SET IDENTITY_INSERT [dbo].[Countries] ON 

INSERT [dbo].[Countries] ([Id], [Name]) VALUES (1, N'Bangladesh')
SET IDENTITY_INSERT [dbo].[Countries] OFF
GO
SET IDENTITY_INSERT [dbo].[Diseases] ON 

INSERT [dbo].[Diseases] ([Id], [Name], [Description], [Symptoms]) VALUES (19, N'Cancer', N'Cancer', N'Tiered')
INSERT [dbo].[Diseases] ([Id], [Name], [Description], [Symptoms]) VALUES (20, N'Diabetes', N'Diabetes', N'Fatigue')
INSERT [dbo].[Diseases] ([Id], [Name], [Description], [Symptoms]) VALUES (21, N'Fever', N'Fever', N'Sweating')
INSERT [dbo].[Diseases] ([Id], [Name], [Description], [Symptoms]) VALUES (22, N'cold', N'cold', N'Sneezing')
INSERT [dbo].[Diseases] ([Id], [Name], [Description], [Symptoms]) VALUES (23, N'Dengue', N'dengue', N'Fever')
INSERT [dbo].[Diseases] ([Id], [Name], [Description], [Symptoms]) VALUES (25, N'TieFoyed', N'Tiefoyed', N'Pain')
INSERT [dbo].[Diseases] ([Id], [Name], [Description], [Symptoms]) VALUES (26, N'Arthritis', N'Arthritis', N'Joint Pain')
SET IDENTITY_INSERT [dbo].[Diseases] OFF
GO
SET IDENTITY_INSERT [dbo].[Districts] ON 

INSERT [dbo].[Districts] ([Id], [Name], [DivisionId]) VALUES (1, N'Dhaka Dist', 1)
INSERT [dbo].[Districts] ([Id], [Name], [DivisionId]) VALUES (2, N'Rajshahi Dist', 2)
SET IDENTITY_INSERT [dbo].[Districts] OFF
GO
SET IDENTITY_INSERT [dbo].[Divisions] ON 

INSERT [dbo].[Divisions] ([Id], [Name], [CountryId]) VALUES (1, N'Dhaka', 1)
INSERT [dbo].[Divisions] ([Id], [Name], [CountryId]) VALUES (2, N'Rajshahi', 1)
SET IDENTITY_INSERT [dbo].[Divisions] OFF
GO
SET IDENTITY_INSERT [dbo].[Doctors] ON 

INSERT [dbo].[Doctors] ([Id], [DateOfBirth], [DoctorTypeId], [Designation], [RegistrationNumber], [CV], [MemberId], [AreaOfConsultation], [BMDCNO], [Degree], [Institute], [SpecialInterest]) VALUES (1011, CAST(N'1998-09-07T00:00:00.0000000' AS DateTime2), 1, N'Asst.prof.', N'889657', N'resume_001232703994.docx', 1016, N'Dhanmondi sankar', N'27836t72378', N'FCPS', N'Burigonga', N'Skin')
INSERT [dbo].[Doctors] ([Id], [DateOfBirth], [DoctorTypeId], [Designation], [RegistrationNumber], [CV], [MemberId], [AreaOfConsultation], [BMDCNO], [Degree], [Institute], [SpecialInterest]) VALUES (1012, CAST(N'1988-08-31T00:00:00.0000000' AS DateTime2), 1, N'Junior.Dr', N'889657', N'resume_001233333279.pdf', 1017, N'Dhanmondi', N'778965641564', N'778965641564', N'Dhaka Medical College', N'TNT')
INSERT [dbo].[Doctors] ([Id], [DateOfBirth], [DoctorTypeId], [Designation], [RegistrationNumber], [CV], [MemberId], [AreaOfConsultation], [BMDCNO], [Degree], [Institute], [SpecialInterest]) VALUES (1013, CAST(N'1923-09-13T00:00:00.0000000' AS DateTime2), 2, N'Junior.Dr', N'dfhgery463465465', N'resume_001231154070.docx', 1018, N'Dhanmondi', N'778965641564', N'778965641564', N'Dhaka Medical College', N'TNTs')
INSERT [dbo].[Doctors] ([Id], [DateOfBirth], [DoctorTypeId], [Designation], [RegistrationNumber], [CV], [MemberId], [AreaOfConsultation], [BMDCNO], [Degree], [Institute], [SpecialInterest]) VALUES (2013, CAST(N'1999-09-07T00:00:00.0000000' AS DateTime2), 1, N'Asst.prof.', N'889657', N'resume_001233138083.docx', 3024, N'Dhanmondi', N'778965641564', N'778965641564', N'Dhaka Medical College', N'TNT')
INSERT [dbo].[Doctors] ([Id], [DateOfBirth], [DoctorTypeId], [Designation], [RegistrationNumber], [CV], [MemberId], [AreaOfConsultation], [BMDCNO], [Degree], [Institute], [SpecialInterest]) VALUES (2014, CAST(N'2023-08-30T00:00:00.0000000' AS DateTime2), 1, N'Asst.prof.', N'778899', N'resume_001230440034.docx', 3025, N'Dhanmondi', N'778965641564', N'MBBS', N'Dhaka Medical College', N'TNT')
INSERT [dbo].[Doctors] ([Id], [DateOfBirth], [DoctorTypeId], [Designation], [RegistrationNumber], [CV], [MemberId], [AreaOfConsultation], [BMDCNO], [Degree], [Institute], [SpecialInterest]) VALUES (2016, CAST(N'1999-10-12T00:00:00.0000000' AS DateTime2), 1, N'afafas', N'346 3261643', N'sample-internship-offer-letter233444052.pdf', 3072, N'Dhanmondi', N'352353246346', N'MBBS', N'fasfasf', N'sdgsdgas')
INSERT [dbo].[Doctors] ([Id], [DateOfBirth], [DoctorTypeId], [Designation], [RegistrationNumber], [CV], [MemberId], [AreaOfConsultation], [BMDCNO], [Degree], [Institute], [SpecialInterest]) VALUES (2017, CAST(N'1998-10-26T00:00:00.0000000' AS DateTime2), 1, N'afafas', N'346 3261643', N'man2231210129.jpg', 3077, N'Dhanmondi', N'2353264778', N'MBBS', N'fasfasfsaf', N'sdgsdgas')
INSERT [dbo].[Doctors] ([Id], [DateOfBirth], [DoctorTypeId], [Designation], [RegistrationNumber], [CV], [MemberId], [AreaOfConsultation], [BMDCNO], [Degree], [Institute], [SpecialInterest]) VALUES (2018, CAST(N'1988-10-11T00:00:00.0000000' AS DateTime2), 1, N'Dr', N'252356re57', N'sample-internship-offer-letter230337659.pdf', 3078, N'Borishal', N'34662364', N'Fcps', N'Fsf', N'Diagnosis')
INSERT [dbo].[Doctors] ([Id], [DateOfBirth], [DoctorTypeId], [Designation], [RegistrationNumber], [CV], [MemberId], [AreaOfConsultation], [BMDCNO], [Degree], [Institute], [SpecialInterest]) VALUES (2019, CAST(N'1978-10-03T00:00:00.0000000' AS DateTime2), 1, N'Dr', N'564765', N'sample-internship-offer-letter230341148.pdf', 3079, N'Borishal', N'34662364', N'Fcps', N'Fsf', N'Diagnosis')
INSERT [dbo].[Doctors] ([Id], [DateOfBirth], [DoctorTypeId], [Designation], [RegistrationNumber], [CV], [MemberId], [AreaOfConsultation], [BMDCNO], [Degree], [Institute], [SpecialInterest]) VALUES (2020, CAST(N'1789-10-03T00:00:00.0000000' AS DateTime2), 1, N'Ass.prof', N'78784526', N'sample-internship-offer-letter232501355.pdf', 3081, N'Dhaka', N'89635248', N'FCPS', N'Dhaka Medical', N'TNT')
INSERT [dbo].[Doctors] ([Id], [DateOfBirth], [DoctorTypeId], [Designation], [RegistrationNumber], [CV], [MemberId], [AreaOfConsultation], [BMDCNO], [Degree], [Institute], [SpecialInterest]) VALUES (2021, CAST(N'8995-10-03T00:00:00.0000000' AS DateTime2), 1, N'Ass.prof', N'252356re57', N'resume_001231526152.pdf', 3082, N'Borishal', N'474864534d', N'FCPS', N'Fsf', N'Diagnosis')
INSERT [dbo].[Doctors] ([Id], [DateOfBirth], [DoctorTypeId], [Designation], [RegistrationNumber], [CV], [MemberId], [AreaOfConsultation], [BMDCNO], [Degree], [Institute], [SpecialInterest]) VALUES (2023, CAST(N'2023-10-11T00:00:00.0000000' AS DateTime2), 2, N'Ass.prof', N'564765', N'download235145577.jpg', 3084, N'Dhaka', N'34662364', N'FCPS', N'Borishal Medical', N'Diagnosis')
INSERT [dbo].[Doctors] ([Id], [DateOfBirth], [DoctorTypeId], [Designation], [RegistrationNumber], [CV], [MemberId], [AreaOfConsultation], [BMDCNO], [Degree], [Institute], [SpecialInterest]) VALUES (2024, CAST(N'1877-10-05T00:00:00.0000000' AS DateTime2), 2, N'Ass.prof', N'78784526', N'man3233123433.jpg', 3085, N'Dhaka', N'474864534d', N'FCPSsss', N'Fsf', N'TNT')
INSERT [dbo].[Doctors] ([Id], [DateOfBirth], [DoctorTypeId], [Designation], [RegistrationNumber], [CV], [MemberId], [AreaOfConsultation], [BMDCNO], [Degree], [Institute], [SpecialInterest]) VALUES (2025, CAST(N'4545-10-09T00:00:00.0000000' AS DateTime2), 1, N'Ass.prof', N'252356re57', N'sample-internship-offer-letter234704802.pdf', 3086, N'Borishal', N'474864534d', N'Fcps', N'Dhaka Medical', N'Diagnosis')
INSERT [dbo].[Doctors] ([Id], [DateOfBirth], [DoctorTypeId], [Designation], [RegistrationNumber], [CV], [MemberId], [AreaOfConsultation], [BMDCNO], [Degree], [Institute], [SpecialInterest]) VALUES (2026, CAST(N'1999-09-28T00:00:00.0000000' AS DateTime2), 1, N'Asss.profff', N'352653246346', N'sample-internship-offer-letter234749118.pdf', 3087, N'dhjaka', N'46574578566', N'FCPS', N'IDEAsassssssssss', N'afsaffs')
SET IDENTITY_INSERT [dbo].[Doctors] OFF
GO
SET IDENTITY_INSERT [dbo].[DoctorTypes] ON 

INSERT [dbo].[DoctorTypes] ([Id], [Name], [Description]) VALUES (1, N'Cardiologist', N'c')
INSERT [dbo].[DoctorTypes] ([Id], [Name], [Description]) VALUES (2, N'diabetics', N'd')
SET IDENTITY_INSERT [dbo].[DoctorTypes] OFF
GO
SET IDENTITY_INSERT [dbo].[Donars] ON 

INSERT [dbo].[Donars] ([Id], [Weight], [MemberId]) VALUES (1, N'45', 1025)
INSERT [dbo].[Donars] ([Id], [Weight], [MemberId]) VALUES (2, N'66', 2018)
INSERT [dbo].[Donars] ([Id], [Weight], [MemberId]) VALUES (3, N'34', 2019)
INSERT [dbo].[Donars] ([Id], [Weight], [MemberId]) VALUES (4, N'66', 2020)
INSERT [dbo].[Donars] ([Id], [Weight], [MemberId]) VALUES (5, N'45', 3073)
SET IDENTITY_INSERT [dbo].[Donars] OFF
GO
SET IDENTITY_INSERT [dbo].[MemberDeseaseReports] ON 

INSERT [dbo].[MemberDeseaseReports] ([Id], [ReportsName], [MemberDeseaseId], [StartingDate], [ReportsPath]) VALUES (12, NULL, 2, CAST(N'2023-09-12T16:04:14.7758345' AS DateTime2), N'man3230414760.jpg')
INSERT [dbo].[MemberDeseaseReports] ([Id], [ReportsName], [MemberDeseaseId], [StartingDate], [ReportsPath]) VALUES (13, NULL, 2, CAST(N'2023-09-12T16:04:14.7950718' AS DateTime2), N'resume_001230414793.docx')
INSERT [dbo].[MemberDeseaseReports] ([Id], [ReportsName], [MemberDeseaseId], [StartingDate], [ReportsPath]) VALUES (14, NULL, 2, CAST(N'2023-09-12T16:04:14.7992083' AS DateTime2), N'resume_001230414795.pdf')
INSERT [dbo].[MemberDeseaseReports] ([Id], [ReportsName], [MemberDeseaseId], [StartingDate], [ReportsPath]) VALUES (15, NULL, 1003, CAST(N'2023-09-13T12:06:13.4028647' AS DateTime2), N'man3230556747.jpg')
INSERT [dbo].[MemberDeseaseReports] ([Id], [ReportsName], [MemberDeseaseId], [StartingDate], [ReportsPath]) VALUES (16, NULL, 1003, CAST(N'2023-09-13T12:06:22.6139196' AS DateTime2), N'resume_001230620761.docx')
INSERT [dbo].[MemberDeseaseReports] ([Id], [ReportsName], [MemberDeseaseId], [StartingDate], [ReportsPath]) VALUES (17, NULL, 1003, CAST(N'2023-09-13T12:06:25.4444103' AS DateTime2), N'resume_001230624195.pdf')
INSERT [dbo].[MemberDeseaseReports] ([Id], [ReportsName], [MemberDeseaseId], [StartingDate], [ReportsPath]) VALUES (20, NULL, 1005, CAST(N'2023-09-13T14:32:08.1947813' AS DateTime2), N'resume_001233208192.docx')
INSERT [dbo].[MemberDeseaseReports] ([Id], [ReportsName], [MemberDeseaseId], [StartingDate], [ReportsPath]) VALUES (21, NULL, 1005, CAST(N'2023-09-13T14:32:08.2336940' AS DateTime2), N'resume_001233208194.pdf')
INSERT [dbo].[MemberDeseaseReports] ([Id], [ReportsName], [MemberDeseaseId], [StartingDate], [ReportsPath]) VALUES (22, NULL, 1006, CAST(N'2023-09-13T14:33:24.1767974' AS DateTime2), N'man2233324153.jpg')
INSERT [dbo].[MemberDeseaseReports] ([Id], [ReportsName], [MemberDeseaseId], [StartingDate], [ReportsPath]) VALUES (23, NULL, 1007, CAST(N'2023-09-13T14:47:00.8012637' AS DateTime2), N'resume_001234638375.docx')
INSERT [dbo].[MemberDeseaseReports] ([Id], [ReportsName], [MemberDeseaseId], [StartingDate], [ReportsPath]) VALUES (24, NULL, 1007, CAST(N'2023-09-13T14:47:06.6772415' AS DateTime2), N'resume_001234705322.pdf')
INSERT [dbo].[MemberDeseaseReports] ([Id], [ReportsName], [MemberDeseaseId], [StartingDate], [ReportsPath]) VALUES (25, NULL, 1008, CAST(N'2023-09-13T14:48:49.4338736' AS DateTime2), N'resume_001234849431.docx')
INSERT [dbo].[MemberDeseaseReports] ([Id], [ReportsName], [MemberDeseaseId], [StartingDate], [ReportsPath]) VALUES (26, NULL, 1008, CAST(N'2023-09-13T14:48:49.4445228' AS DateTime2), N'resume_001234849434.pdf')
SET IDENTITY_INSERT [dbo].[MemberDeseaseReports] OFF
GO
SET IDENTITY_INSERT [dbo].[Members] ON 

INSERT [dbo].[Members] ([Id], [Passport], [FirstName], [Address], [Contact], [Email], [Age], [NID], [SmartCard], [MemberGender], [ImageName], [RegistrationDate], [BloodgroupId], [AreaId], [Role], [LastName]) VALUES (8, N'54a5f4s524', N'ali', N'256/aaa/1', N'01191012', N'alis@gmail.com', N'29', N'78546545', N'785464511', 0, N'man1230829031.jpg', N'8/19/2023', 1, 1, N'Doctor', N'mollla')
INSERT [dbo].[Members] ([Id], [Passport], [FirstName], [Address], [Contact], [Email], [Age], [NID], [SmartCard], [MemberGender], [ImageName], [RegistrationDate], [BloodgroupId], [AreaId], [Role], [LastName]) VALUES (9, N'54a5f4s524', N'sagor', N'236.aflasd11', N'5651545', N'sagor@gmail.com', N'21', N'78546545', N'123458', 0, N'download235242761.jpg', N'9/4/2023', 1, 1, N'Doctor', N'molla')
INSERT [dbo].[Members] ([Id], [Passport], [FirstName], [Address], [Contact], [Email], [Age], [NID], [SmartCard], [MemberGender], [ImageName], [RegistrationDate], [BloodgroupId], [AreaId], [Role], [LastName]) VALUES (1009, N'Abbyhuagd78456454564', N'rudro', N'd5', N'0133669', N'rudro@gmail.com', N'28', N'5698127', N'5698127', 0, N'man2232843714.jpg', N'9/9/2023', 2, 1, N'Doctor', N'molla')
INSERT [dbo].[Members] ([Id], [Passport], [FirstName], [Address], [Contact], [Email], [Age], [NID], [SmartCard], [MemberGender], [ImageName], [RegistrationDate], [BloodgroupId], [AreaId], [Role], [LastName]) VALUES (1010, N'Abbyhuagd78456454564', N'jony', N'r4g', N'01910126335', N'jony@gmail.com', N'36', N'78546545', N'7854645', 0, N'man3234136038.jpg', N'9/9/2023', 1, 2, N'Doctor', N'rahman')
INSERT [dbo].[Members] ([Id], [Passport], [FirstName], [Address], [Contact], [Email], [Age], [NID], [SmartCard], [MemberGender], [ImageName], [RegistrationDate], [BloodgroupId], [AreaId], [Role], [LastName]) VALUES (1011, N'54a5f4s524', N'shohid', N'hh34d', N'9854444', N'shohid@gmail.com', N'53', N'78546545', N'7854645', 0, N'man1235104384.jpg', N'9/9/2023', 1, 1, N'Doctor', N'ahmed')
INSERT [dbo].[Members] ([Id], [Passport], [FirstName], [Address], [Contact], [Email], [Age], [NID], [SmartCard], [MemberGender], [ImageName], [RegistrationDate], [BloodgroupId], [AreaId], [Role], [LastName]) VALUES (1012, N'wetrwt', N'noyon', N'sadfsg', N'sdgs342', N'noyon@yahoo.com', N'23', N'tewettewecfdsg', N'234 234', 0, N'man3235515533.jpg', N'9/9/2023', 1, 2, N'Doctor', N'ahmed')
INSERT [dbo].[Members] ([Id], [Passport], [FirstName], [Address], [Contact], [Email], [Age], [NID], [SmartCard], [MemberGender], [ImageName], [RegistrationDate], [BloodgroupId], [AreaId], [Role], [LastName]) VALUES (1013, N'54a5f4s524', N'rakin', N'dsgsdgsd', N'dgsgd', N'rakin@gmail.com', N'24', N'5698127', N'234 234', 0, N'download235905515.jpg', N'9/9/2023', 1, 1, N'Doctor', N'hosen')
INSERT [dbo].[Members] ([Id], [Passport], [FirstName], [Address], [Contact], [Email], [Age], [NID], [SmartCard], [MemberGender], [ImageName], [RegistrationDate], [BloodgroupId], [AreaId], [Role], [LastName]) VALUES (1014, N'4323 5', N'faruk', N'sadfasf', N'fsaf', N'faruk@gma.com', N'32', N'wsdasfasf24244', N'2342', 0, N'1230216693.jpg', N'9/9/2023', 1, 1, N'Doctor', N'aa')
INSERT [dbo].[Members] ([Id], [Passport], [FirstName], [Address], [Contact], [Email], [Age], [NID], [SmartCard], [MemberGender], [ImageName], [RegistrationDate], [BloodgroupId], [AreaId], [Role], [LastName]) VALUES (1015, N'ewtet45325634', N'rahul', N'asfsdsd', N'sdgsd333', N'rahul@gmail.com', N'33', N'egt4t4454', N'343 646t', 0, N'man2231845821.jpg', N'9/9/2023', 1, 2, N'Doctor', N'ahsan')
INSERT [dbo].[Members] ([Id], [Passport], [FirstName], [Address], [Contact], [Email], [Age], [NID], [SmartCard], [MemberGender], [ImageName], [RegistrationDate], [BloodgroupId], [AreaId], [Role], [LastName]) VALUES (1016, N'4323 5', N'nokib', N'sdgsd444', N'sdgsg', N'nokib@gmail.com', N'22', N'egt4t4454', N'123458', 0, N'man3232640968.jpg', N'9/9/2023', 1, 2, N'Doctor', N'ahmed')
INSERT [dbo].[Members] ([Id], [Passport], [FirstName], [Address], [Contact], [Email], [Age], [NID], [SmartCard], [MemberGender], [ImageName], [RegistrationDate], [BloodgroupId], [AreaId], [Role], [LastName]) VALUES (1017, N'3255335', N'jack', N'sff325r34', N'etee43 54353', N'jack@gmail.com', N'54', N'533252fggr', N'355325', 0, N'download233315396.jpg', N'9/9/2023', 1, 1, N'Doctor', N'mong')
INSERT [dbo].[Members] ([Id], [Passport], [FirstName], [Address], [Contact], [Email], [Age], [NID], [SmartCard], [MemberGender], [ImageName], [RegistrationDate], [BloodgroupId], [AreaId], [Role], [LastName]) VALUES (1018, N'354fgfgdg', N'rofil', N'23434', N'352545634', N'rofik@gmail.com', N'523534', N'34543dr', N'reyt 436t34', 0, N'man3231126750.jpg', N'9/11/2023', 1, 1, N'Doctor', N'khan')
INSERT [dbo].[Members] ([Id], [Passport], [FirstName], [Address], [Contact], [Email], [Age], [NID], [SmartCard], [MemberGender], [ImageName], [RegistrationDate], [BloodgroupId], [AreaId], [Role], [LastName]) VALUES (1019, N'3255335', N'T', N'abc3333', N'0114448574', N't@gmail.com', N'22', N'5698127', N'234 234', 0, N'man1233250705.jpg', N'9/11/2023', 1, 2, N'Donor', N'donar')
INSERT [dbo].[Members] ([Id], [Passport], [FirstName], [Address], [Contact], [Email], [Age], [NID], [SmartCard], [MemberGender], [ImageName], [RegistrationDate], [BloodgroupId], [AreaId], [Role], [LastName]) VALUES (1020, N'wetrwt24324', N'roktim', N'45/askj21', N'55896445', N'roktim@gmail.com', N'33', N'5698127', N'78546545', 0, N'download233831164.jpg', N'9/11/2023', 1, 1, N'Donor', N'hosen')
INSERT [dbo].[Members] ([Id], [Passport], [FirstName], [Address], [Contact], [Email], [Age], [NID], [SmartCard], [MemberGender], [ImageName], [RegistrationDate], [BloodgroupId], [AreaId], [Role], [LastName]) VALUES (1021, N'4434 63364', N'badal', N'sdg43', N'4334466346', N'badal@gmail.com', N'43', N'344563466', N'34534fhg', 0, N'man1235528792.jpg', N'9/11/2023', 2, 1, N'Donor', N'ahsan')
INSERT [dbo].[Members] ([Id], [Passport], [FirstName], [Address], [Contact], [Email], [Age], [NID], [SmartCard], [MemberGender], [ImageName], [RegistrationDate], [BloodgroupId], [AreaId], [Role], [LastName]) VALUES (1022, N'Abbyhuagd78456454564', N's', N'sdfsdg', N'dgdsg', N'kulsum@gmail.com', N'22', N'tewettewecfdsg', N'123458', 0, N'man2231012391.jpg', N'9/11/2023', 1, 1, N'Donor', N'd')
INSERT [dbo].[Members] ([Id], [Passport], [FirstName], [Address], [Contact], [Email], [Age], [NID], [SmartCard], [MemberGender], [ImageName], [RegistrationDate], [BloodgroupId], [AreaId], [Role], [LastName]) VALUES (1023, N'ewtet45325634', N'p', N'uoio', N'iuuio', N'pppp@p.com', N'36', N'78546545', N'2342', 0, N'man2231349814.jpg', N'9/11/2023', 1, 1, N'Donor', N'p')
INSERT [dbo].[Members] ([Id], [Passport], [FirstName], [Address], [Contact], [Email], [Age], [NID], [SmartCard], [MemberGender], [ImageName], [RegistrationDate], [BloodgroupId], [AreaId], [Role], [LastName]) VALUES (1024, N'Abbyhuagd78456454564', N'faisam', N'aa', N'01191012', N'faisam@gmail.com', N'21', N'78546545', N'7854645', 0, N'man2231902177.jpg', N'9/11/2023', 3, 1, N'Donor', N'ho')
INSERT [dbo].[Members] ([Id], [Passport], [FirstName], [Address], [Contact], [Email], [Age], [NID], [SmartCard], [MemberGender], [ImageName], [RegistrationDate], [BloodgroupId], [AreaId], [Role], [LastName]) VALUES (1025, N'ewtet45325634', N'raiyan', N'352gg', N'01191012', N'raiyan@gmail.com', N'20', N'123458', N'5698127', 0, N'man1232259249.jpg', N'9/11/2023', 2, 1, N'Donor', N'molla')
INSERT [dbo].[Members] ([Id], [Passport], [FirstName], [Address], [Contact], [Email], [Age], [NID], [SmartCard], [MemberGender], [ImageName], [RegistrationDate], [BloodgroupId], [AreaId], [Role], [LastName]) VALUES (2018, N'4323 5', N'ekib', N'243', N'4334466346', N'ekib@gmail.com', N'33', N'wsdasfasf24244', N'5698127', 0, N'man3233307874.jpg', N'9/11/2023', 2, 2, N'Donor', N'na')
INSERT [dbo].[Members] ([Id], [Passport], [FirstName], [Address], [Contact], [Email], [Age], [NID], [SmartCard], [MemberGender], [ImageName], [RegistrationDate], [BloodgroupId], [AreaId], [Role], [LastName]) VALUES (2019, N'4323 5', N'donar', N'352', N'fdsgsd', N'last@gmail.com', N'33', N'123458', N'78546545', 0, N'download233634073.jpg', N'9/11/2023', 1, 2, N'Donor', N'last')
INSERT [dbo].[Members] ([Id], [Passport], [FirstName], [Address], [Contact], [Email], [Age], [NID], [SmartCard], [MemberGender], [ImageName], [RegistrationDate], [BloodgroupId], [AreaId], [Role], [LastName]) VALUES (2020, N'ewtet45325634', N'final', N'seafg', N'01191012', N'final@gmail.com', N'21', N'wsdasfasf24244', N'5698127', 0, N'man3234037448.jpg', N'9/11/2023', 1, 1, N'Donor', N'donor')
INSERT [dbo].[Members] ([Id], [Passport], [FirstName], [Address], [Contact], [Email], [Age], [NID], [SmartCard], [MemberGender], [ImageName], [RegistrationDate], [BloodgroupId], [AreaId], [Role], [LastName]) VALUES (2021, N'54a5f4s524', N'rafsan', N'afsf353', N'35532532', N'rafsan@gmail.com', N'3', N'3536433463', N'43643466', 0, N'man1234837631.jpg', N'9/13/2023', 3, 2, N'Patient', N'molla')
INSERT [dbo].[Members] ([Id], [Passport], [FirstName], [Address], [Contact], [Email], [Age], [NID], [SmartCard], [MemberGender], [ImageName], [RegistrationDate], [BloodgroupId], [AreaId], [Role], [LastName]) VALUES (2022, N'346346q36tq4', N'Faisul', N'wrqrwq3533', N'453535435', N'faizul@gmail.com', N'43', N'34636364346', N'346q3463466', 0, N'man2235153002.jpg', N'9/13/2023', 2, 1, N'Patient', N'karim')
INSERT [dbo].[Members] ([Id], [Passport], [FirstName], [Address], [Contact], [Email], [Age], [NID], [SmartCard], [MemberGender], [ImageName], [RegistrationDate], [BloodgroupId], [AreaId], [Role], [LastName]) VALUES (2023, N'4323 5', N'karims', N'5567/aa', N'01910126', N'karims@gmail.com', N'33', N'tewettewecfdsg', N'123458', 0, N'download231723092.jpg', N'9/16/2023', 1, 2, N'Doctor', N'molla')
INSERT [dbo].[Members] ([Id], [Passport], [FirstName], [Address], [Contact], [Email], [Age], [NID], [SmartCard], [MemberGender], [ImageName], [RegistrationDate], [BloodgroupId], [AreaId], [Role], [LastName]) VALUES (3024, NULL, N'noman', N'afr43', N'01191012asfsaffsfaf', N'noman@gmail.com', N'55', N'123458', N'78546545', 0, NULL, N'9/16/2023', NULL, NULL, NULL, N'ali')
INSERT [dbo].[Members] ([Id], [Passport], [FirstName], [Address], [Contact], [Email], [Age], [NID], [SmartCard], [MemberGender], [ImageName], [RegistrationDate], [BloodgroupId], [AreaId], [Role], [LastName]) VALUES (3025, N'wetrwt', N'aas', N'iuiu', N'01910126335', N'aas@gmail.com', N'36', N'78546545', N'78546545', 0, N'man1230417894.jpg', N'9/16/2023', 1, 2, N'Doctor', N'hsdakjhf')
INSERT [dbo].[Members] ([Id], [Passport], [FirstName], [Address], [Contact], [Email], [Age], [NID], [SmartCard], [MemberGender], [ImageName], [RegistrationDate], [BloodgroupId], [AreaId], [Role], [LastName]) VALUES (3026, N'4323 5', N'tusar', N'agfdg', N'lasfuioh86378 62378', N'ahmesd@gmail.com', N'22', N'78546545', N'78546545', 0, N'man3230707728.jpg', N'9/19/2023', 1, 1, N'Patient', N'ahmed')
INSERT [dbo].[Members] ([Id], [Passport], [FirstName], [Address], [Contact], [Email], [Age], [NID], [SmartCard], [MemberGender], [ImageName], [RegistrationDate], [BloodgroupId], [AreaId], [Role], [LastName]) VALUES (3027, N'46366463465', N'kotha', N'235ff/adah ', N'01457825', N'kotha@gmail.com', N'22', N'2352363477', N'35353623', 0, N'man1233911653.jpg', N'10/2/2023', 1, 1, N'Doctor', N'k')
INSERT [dbo].[Members] ([Id], [Passport], [FirstName], [Address], [Contact], [Email], [Age], [NID], [SmartCard], [MemberGender], [ImageName], [RegistrationDate], [BloodgroupId], [AreaId], [Role], [LastName]) VALUES (3028, N'4636646344', N'raizurs', N'235ff/adah', N'0145782536', N'faizurs@gmail.com', N'56', N'23523634774363', N'3535362323543', 0, N'man3235200890.jpg', N'10/2/2023', 1, 1, N'Doctor', N'R')
INSERT [dbo].[Members] ([Id], [Passport], [FirstName], [Address], [Contact], [Email], [Age], [NID], [SmartCard], [MemberGender], [ImageName], [RegistrationDate], [BloodgroupId], [AreaId], [Role], [LastName]) VALUES (3029, N'8923 7589289625385r', N'falguni', N'2334/acsf', N'0181713634131', N'falguni@gmail.com', N'33', N'6784687612486', N'72678126487612', 1, N'man2234735255.jpg', N'10/3/2023', 1, 1, N'Doctor', N'f')
INSERT [dbo].[Members] ([Id], [Passport], [FirstName], [Address], [Contact], [Email], [Age], [NID], [SmartCard], [MemberGender], [ImageName], [RegistrationDate], [BloodgroupId], [AreaId], [Role], [LastName]) VALUES (3030, N'4636646344', N'falguni', N'2334/acsf', N'01457825', N'falguni@gmail.com', N'33', N'23523634774363', N'3535362323543', 0, N'man3235001439.jpg', N'10/3/2023', 1, 1, N'Doctor', N'f')
INSERT [dbo].[Members] ([Id], [Passport], [FirstName], [Address], [Contact], [Email], [Age], [NID], [SmartCard], [MemberGender], [ImageName], [RegistrationDate], [BloodgroupId], [AreaId], [Role], [LastName]) VALUES (3031, N'463664634653223', N'ashraf', N'2334/acsf', N'0145782536', N'ashraf@gmail.com', N'33', N'23523634774363', N'35353623235431', 0, N'man3235216949.jpg', N'10/3/2023', 2, 1, N'Doctor', N'uddin')
INSERT [dbo].[Members] ([Id], [Passport], [FirstName], [Address], [Contact], [Email], [Age], [NID], [SmartCard], [MemberGender], [ImageName], [RegistrationDate], [BloodgroupId], [AreaId], [Role], [LastName]) VALUES (3038, NULL, N'sagsadghsdaf', N'dhhsfsdh', N'hdshfdfhhf', N'fazilstus@gmail.com,', NULL, NULL, NULL, NULL, NULL, N'10/5/2023', NULL, NULL, N'GENERAL MEMBER', N'gdsgdfhh')
INSERT [dbo].[Members] ([Id], [Passport], [FirstName], [Address], [Contact], [Email], [Age], [NID], [SmartCard], [MemberGender], [ImageName], [RegistrationDate], [BloodgroupId], [AreaId], [Role], [LastName]) VALUES (3039, NULL, N'erer', N'dgdhf', N'd5474', N'fazilstus@gmail.com,', NULL, NULL, NULL, NULL, NULL, N'10/5/2023', NULL, NULL, N'GENERAL MEMBER', N'etgdrg')
INSERT [dbo].[Members] ([Id], [Passport], [FirstName], [Address], [Contact], [Email], [Age], [NID], [SmartCard], [MemberGender], [ImageName], [RegistrationDate], [BloodgroupId], [AreaId], [Role], [LastName]) VALUES (3040, NULL, N'uyiyui', N'2334/acsf', N'0145782536', N'fazilstus@gmail.com,', NULL, NULL, NULL, NULL, NULL, N'10/5/2023', NULL, NULL, N'GENERAL MEMBER', N'yuiuy')
INSERT [dbo].[Members] ([Id], [Passport], [FirstName], [Address], [Contact], [Email], [Age], [NID], [SmartCard], [MemberGender], [ImageName], [RegistrationDate], [BloodgroupId], [AreaId], [Role], [LastName]) VALUES (3041, NULL, N'sagsadghsdaf', N'235ff/adah', N'ertert', N'kamalqeeqf@gm.com', NULL, NULL, NULL, NULL, NULL, N'10/5/2023', NULL, NULL, N'GENERAL MEMBER', N'yuiuy')
INSERT [dbo].[Members] ([Id], [Passport], [FirstName], [Address], [Contact], [Email], [Age], [NID], [SmartCard], [MemberGender], [ImageName], [RegistrationDate], [BloodgroupId], [AreaId], [Role], [LastName]) VALUES (3042, NULL, N'habib', N'habib', N'435345', N'habib@gg.com', NULL, NULL, NULL, NULL, NULL, N'10/5/2023', NULL, NULL, N'GENERAL MEMBER', N'habib')
INSERT [dbo].[Members] ([Id], [Passport], [FirstName], [Address], [Contact], [Email], [Age], [NID], [SmartCard], [MemberGender], [ImageName], [RegistrationDate], [BloodgroupId], [AreaId], [Role], [LastName]) VALUES (3043, NULL, N'ripom', N'23344/afakn', N'019378319734', N'ripons@gmail.com', NULL, NULL, NULL, NULL, NULL, N'10/7/2023', NULL, NULL, N'GENERAL MEMBER', N'mia')
INSERT [dbo].[Members] ([Id], [Passport], [FirstName], [Address], [Contact], [Email], [Age], [NID], [SmartCard], [MemberGender], [ImageName], [RegistrationDate], [BloodgroupId], [AreaId], [Role], [LastName]) VALUES (3044, NULL, N'ripom', N'23344/afakn', N'019378319734', N'ripons@gmail.com', NULL, NULL, NULL, NULL, NULL, N'10/7/2023', NULL, NULL, N'GENERAL MEMBER', N'mia')
INSERT [dbo].[Members] ([Id], [Passport], [FirstName], [Address], [Contact], [Email], [Age], [NID], [SmartCard], [MemberGender], [ImageName], [RegistrationDate], [BloodgroupId], [AreaId], [Role], [LastName]) VALUES (3045, NULL, N'Shahrukh', N'23344/afakn', N'0145782536', N'shahrukhk@gmail.com', NULL, NULL, NULL, NULL, NULL, N'10/7/2023', NULL, NULL, N'GENERAL MEMBER', N'kha')
INSERT [dbo].[Members] ([Id], [Passport], [FirstName], [Address], [Contact], [Email], [Age], [NID], [SmartCard], [MemberGender], [ImageName], [RegistrationDate], [BloodgroupId], [AreaId], [Role], [LastName]) VALUES (3046, NULL, N'Shahrukh', N'23344/afakn', N'0145782536', N'shahrukhk@gmail.com', NULL, NULL, NULL, NULL, NULL, N'10/7/2023', NULL, NULL, N'GENERAL MEMBER', N'kha')
INSERT [dbo].[Members] ([Id], [Passport], [FirstName], [Address], [Contact], [Email], [Age], [NID], [SmartCard], [MemberGender], [ImageName], [RegistrationDate], [BloodgroupId], [AreaId], [Role], [LastName]) VALUES (3047, NULL, N'payel', N'y68678', N'sadsad', N'payel@gmail.com', NULL, NULL, NULL, NULL, NULL, N'10/7/2023', NULL, NULL, N'GENERAL MEMBER', N'Alom')
INSERT [dbo].[Members] ([Id], [Passport], [FirstName], [Address], [Contact], [Email], [Age], [NID], [SmartCard], [MemberGender], [ImageName], [RegistrationDate], [BloodgroupId], [AreaId], [Role], [LastName]) VALUES (3048, NULL, N'update', N'235ff/adah', N'0145782536', N'update4@gmail.com', NULL, NULL, NULL, NULL, NULL, N'10/7/2023', NULL, NULL, N' General Member', N'4')
INSERT [dbo].[Members] ([Id], [Passport], [FirstName], [Address], [Contact], [Email], [Age], [NID], [SmartCard], [MemberGender], [ImageName], [RegistrationDate], [BloodgroupId], [AreaId], [Role], [LastName]) VALUES (3049, NULL, N'raju', N'2334/acsf', N'01457825', N'rajuma@gmail.com', NULL, NULL, NULL, NULL, NULL, N'10/7/2023', NULL, NULL, N' General Member', N'molla')
INSERT [dbo].[Members] ([Id], [Passport], [FirstName], [Address], [Contact], [Email], [Age], [NID], [SmartCard], [MemberGender], [ImageName], [RegistrationDate], [BloodgroupId], [AreaId], [Role], [LastName]) VALUES (3050, NULL, N'pikachu', N'23344/afakn', N'0145782536', N'picachu@gmail.com', NULL, NULL, NULL, NULL, NULL, N'10/7/2023', NULL, NULL, N' General Member', N'Ahmed')
INSERT [dbo].[Members] ([Id], [Passport], [FirstName], [Address], [Contact], [Email], [Age], [NID], [SmartCard], [MemberGender], [ImageName], [RegistrationDate], [BloodgroupId], [AreaId], [Role], [LastName]) VALUES (3051, NULL, N'dgdfh', N'2334/acsf', N'01457825', N'dghhfgh@gmail.com', NULL, NULL, NULL, NULL, NULL, N'10/8/2023', NULL, NULL, N' General Member', N'kjfk')
INSERT [dbo].[Members] ([Id], [Passport], [FirstName], [Address], [Contact], [Email], [Age], [NID], [SmartCard], [MemberGender], [ImageName], [RegistrationDate], [BloodgroupId], [AreaId], [Role], [LastName]) VALUES (3052, NULL, N'update', N'23344/afakn', N'01457825', N'updatesfh3@gmail.com', NULL, NULL, NULL, NULL, NULL, N'10/8/2023', NULL, NULL, N' General Member', N'ahmed')
INSERT [dbo].[Members] ([Id], [Passport], [FirstName], [Address], [Contact], [Email], [Age], [NID], [SmartCard], [MemberGender], [ImageName], [RegistrationDate], [BloodgroupId], [AreaId], [Role], [LastName]) VALUES (3053, NULL, N'afklhafjh', N'fsdafaf', N'asfafaf3263265', N'jkdha@gm.com', NULL, NULL, NULL, NULL, NULL, N'10/8/2023', NULL, NULL, N' General Member', N'safdhd')
INSERT [dbo].[Members] ([Id], [Passport], [FirstName], [Address], [Contact], [Email], [Age], [NID], [SmartCard], [MemberGender], [ImageName], [RegistrationDate], [BloodgroupId], [AreaId], [Role], [LastName]) VALUES (3054, N'2947189462156587', N'shafiqul', N'21233/asfdh', N'0139089078431', N'Shafiqulislam@gmail.com', N'22', N'48789653298bd2', N'837284684 216y', 0, N'man3232158619.jpg', N'10/12/2023', 1, 1, N' Doctor', N'islam')
INSERT [dbo].[Members] ([Id], [Passport], [FirstName], [Address], [Contact], [Email], [Age], [NID], [SmartCard], [MemberGender], [ImageName], [RegistrationDate], [BloodgroupId], [AreaId], [Role], [LastName]) VALUES (3055, N'2947189462156587', N'shafiqul', N'21233/asfdh', N'0139089078431', N'Shafiqulislam@gmail.com', N'22', N'48789653298bd2', N'837284684 216y', 0, N'man3232419067.jpg', N'10/12/2023', 1, 1, N' Doctor', N'islam')
INSERT [dbo].[Members] ([Id], [Passport], [FirstName], [Address], [Contact], [Email], [Age], [NID], [SmartCard], [MemberGender], [ImageName], [RegistrationDate], [BloodgroupId], [AreaId], [Role], [LastName]) VALUES (3056, N'294718946215gg', N'Shamim', N'21233/asfdh', N'0139089078431', N'shamim@gmail.com', N'22', N'48789653253', N'48789653253', 0, N'download232924762.jpg', N'10/12/2023', 1, 1, N' Doctor', N'akter')
INSERT [dbo].[Members] ([Id], [Passport], [FirstName], [Address], [Contact], [Email], [Age], [NID], [SmartCard], [MemberGender], [ImageName], [RegistrationDate], [BloodgroupId], [AreaId], [Role], [LastName]) VALUES (3057, N'4574747jhj', N'safi', N'4ttt466', N'475747', N'safi@gmailc.om', N'47', N'4574277423', N'7447377434', 0, N'1234005548.jpg', N'10/12/2023', 1, 1, N' Doctor', N'sa')
INSERT [dbo].[Members] ([Id], [Passport], [FirstName], [Address], [Contact], [Email], [Age], [NID], [SmartCard], [MemberGender], [ImageName], [RegistrationDate], [BloodgroupId], [AreaId], [Role], [LastName]) VALUES (3058, N'294718946215ggf', N'shafi', N'21233/asfdh', N'0139089078431', N'shafhie@gm.com', N'22', N'48789653298bd2', N'837284684 216y', 0, N'man2234359137.jpg', N'10/12/2023', 1, 1, N' Doctor', N'j')
INSERT [dbo].[Members] ([Id], [Passport], [FirstName], [Address], [Contact], [Email], [Age], [NID], [SmartCard], [MemberGender], [ImageName], [RegistrationDate], [BloodgroupId], [AreaId], [Role], [LastName]) VALUES (3059, N'636366463', N'shafin', N'sadgdshgs', N'46334636', N'shafins@gmail.com', N'35', N'34664346', N'346362346', 0, N'man3234809329.jpg', N'10/12/2023', 1, 2, N' Doctor', N'molla')
INSERT [dbo].[Members] ([Id], [Passport], [FirstName], [Address], [Contact], [Email], [Age], [NID], [SmartCard], [MemberGender], [ImageName], [RegistrationDate], [BloodgroupId], [AreaId], [Role], [LastName]) VALUES (3060, N'75457453773', N'ramit', N'21233/asfdh', N'45747', N'ramita@gmail.com', N'45', N'5474737', N'47573457457', 0, N'man3234936997.jpg', N'10/12/2023', 1, 2, N' Donor', N'r')
INSERT [dbo].[Members] ([Id], [Passport], [FirstName], [Address], [Contact], [Email], [Age], [NID], [SmartCard], [MemberGender], [ImageName], [RegistrationDate], [BloodgroupId], [AreaId], [Role], [LastName]) VALUES (3061, N'457445747', N'dhajg', N'21233/asfdh', N'45644 7', N'ASJKFHJFHJH@GMAIL.COM', N'75', N'457474574', N'457474474', 0, N'download235457342.jpg', N'10/12/2023', 1, 1, N' Donor', N'ASFHJAH')
INSERT [dbo].[Members] ([Id], [Passport], [FirstName], [Address], [Contact], [Email], [Age], [NID], [SmartCard], [MemberGender], [ImageName], [RegistrationDate], [BloodgroupId], [AreaId], [Role], [LastName]) VALUES (3062, N'2947189462156587', N'Tushars', N'21233/asfdh', N'0139089078431', N'Tusharsss@gmail.com', N'22', N'48789653298bd2', N'837284684 216y', 0, N'man2231607419.jpg', N'10/14/2023', 1, 1, N' Doctor', N'Mollas')
INSERT [dbo].[Members] ([Id], [Passport], [FirstName], [Address], [Contact], [Email], [Age], [NID], [SmartCard], [MemberGender], [ImageName], [RegistrationDate], [BloodgroupId], [AreaId], [Role], [LastName]) VALUES (3063, N'294718946215gg', N'Abir', N'21233/asfdh', N'0139089078431', N'abir123@gmail.com', N'22', N'48789653253', N'837284684 216y', 0, N'man3231911334.jpg', N'10/14/2023', 1, 1, N' Doctor', N'Ahmedq')
INSERT [dbo].[Members] ([Id], [Passport], [FirstName], [Address], [Contact], [Email], [Age], [NID], [SmartCard], [MemberGender], [ImageName], [RegistrationDate], [BloodgroupId], [AreaId], [Role], [LastName]) VALUES (3064, N'294718946215gg', N'laila', N'21233/asfdh', N'0139089078431', N'laila@gmail.com', N'22', N'48789653298bd2', N'837284684 216y', 0, N'man1232607572.jpg', N'10/14/2023', 1, 1, N' Doctor', N'akter')
INSERT [dbo].[Members] ([Id], [Passport], [FirstName], [Address], [Contact], [Email], [Age], [NID], [SmartCard], [MemberGender], [ImageName], [RegistrationDate], [BloodgroupId], [AreaId], [Role], [LastName]) VALUES (3065, N'294718946215ggf', N'habib', N'21233/asfdh', N'0139089078431', N'habib11@gmail.com', N'22', N'48789653298bd2', N'837284684 216y', 0, N'download232857299.jpg', N'10/14/2023', 1, 1, N' Doctor', N'ahmed')
INSERT [dbo].[Members] ([Id], [Passport], [FirstName], [Address], [Contact], [Email], [Age], [NID], [SmartCard], [MemberGender], [ImageName], [RegistrationDate], [BloodgroupId], [AreaId], [Role], [LastName]) VALUES (3066, N'294718946215ggf', N'papon', N'21233/asfdh', N'0139089078431', N'papon@gmail.com', N'22', N'48789653298bd2', N'837284684 216y', 0, N'download233638564.jpg', N'10/14/2023', 1, 1, N' Donor', N'ahmed')
INSERT [dbo].[Members] ([Id], [Passport], [FirstName], [Address], [Contact], [Email], [Age], [NID], [SmartCard], [MemberGender], [ImageName], [RegistrationDate], [BloodgroupId], [AreaId], [Role], [LastName]) VALUES (3067, N'294718946215gg', N'donor1', N'21233/asfdh', N'0139089078431', N'donor1@gmail.com', N'22', N'48789653298bd2', N'837284684 216y', 0, N'240_F_300697594_TJRTrB8RPfqqNydqL2lpunyMQfcdGdoZ-removebg-preview233818983.png', N'10/14/2023', 1, 1, N' Donor', N'ahmed')
INSERT [dbo].[Members] ([Id], [Passport], [FirstName], [Address], [Contact], [Email], [Age], [NID], [SmartCard], [MemberGender], [ImageName], [RegistrationDate], [BloodgroupId], [AreaId], [Role], [LastName]) VALUES (3068, N'294718946215gg', N'doctor1', N'21233/asfdh', N'0139089078431', N'doctor1@gmail.com', N'22', N'48789653298bd2', N'837284684 216y', 0, N'IMG_9428233951724.JPG', N'10/14/2023', 1, 1, N' Doctor', N'Ahmed')
INSERT [dbo].[Members] ([Id], [Passport], [FirstName], [Address], [Contact], [Email], [Age], [NID], [SmartCard], [MemberGender], [ImageName], [RegistrationDate], [BloodgroupId], [AreaId], [Role], [LastName]) VALUES (3069, N'294718946215gg', N'Jamaika', N'fsdafaf', N'0139089078431', N'jamaika@gmail.com', N'22', N'48789653298bd2', N'48789653253', 0, N'IMG_20220517_131007_6234208490.jpg', N'10/14/2023', 1, 1, N' Doctor', N'alom')
INSERT [dbo].[Members] ([Id], [Passport], [FirstName], [Address], [Contact], [Email], [Age], [NID], [SmartCard], [MemberGender], [ImageName], [RegistrationDate], [BloodgroupId], [AreaId], [Role], [LastName]) VALUES (3070, N'294718946215gg', N'Jokar', N'21233/asfdh', N'0139089078431', N'jokar@gmail.com', N'22', N'48789653298bd2', N'837284684 216y', 0, N'IMG_9428234400576.JPG', N'10/14/2023', 1, 1, N' Doctor', N'alom')
INSERT [dbo].[Members] ([Id], [Passport], [FirstName], [Address], [Contact], [Email], [Age], [NID], [SmartCard], [MemberGender], [ImageName], [RegistrationDate], [BloodgroupId], [AreaId], [Role], [LastName]) VALUES (3071, N'2947189462156587', N'donor2', N'21233/asfdh', N'0139089078431', N'donor2@gmail.com', N'22', N'48789653298bd2', N'837284684 216y', 0, N'240_F_300697594_TJRTrB8RPfqqNydqL2lpunyMQfcdGdoZ-removebg-preview234506932.png', N'10/14/2023', 1, 1, N' Donor', N'k')
INSERT [dbo].[Members] ([Id], [Passport], [FirstName], [Address], [Contact], [Email], [Age], [NID], [SmartCard], [MemberGender], [ImageName], [RegistrationDate], [BloodgroupId], [AreaId], [Role], [LastName]) VALUES (3072, N'4574747jhj', N'obay', N'21233/asfdh', N'0139089078431', N'obedulla@gmail.com', N'47', N'48789653298bd2', N'837284684 216y', NULL, NULL, N'10/18/2023', NULL, NULL, NULL, N'dulla')
INSERT [dbo].[Members] ([Id], [Passport], [FirstName], [Address], [Contact], [Email], [Age], [NID], [SmartCard], [MemberGender], [ImageName], [RegistrationDate], [BloodgroupId], [AreaId], [Role], [LastName]) VALUES (3073, N'2947189462156587', N'mehrab', N'fsdafaf', N'475747', N'mehrab@gmail.com', N'35', N'48789653253', N'48789653253', 0, N'man3233730523.jpg', N'10/14/2023', 1, 1, N' Donor', N'hossain')
INSERT [dbo].[Members] ([Id], [Passport], [FirstName], [Address], [Contact], [Email], [Age], [NID], [SmartCard], [MemberGender], [ImageName], [RegistrationDate], [BloodgroupId], [AreaId], [Role], [LastName]) VALUES (3074, N'2947189462156587', N'nehad', N'fsdafaf', N'45747', N'nehad@gmail.com', N'45', N'4574277423', N'48789653253', 0, N'man2233842202.jpg', N'10/14/2023', 1, 1, N' Patient', N'rk')
INSERT [dbo].[Members] ([Id], [Passport], [FirstName], [Address], [Contact], [Email], [Age], [NID], [SmartCard], [MemberGender], [ImageName], [RegistrationDate], [BloodgroupId], [AreaId], [Role], [LastName]) VALUES (3075, NULL, N'Noyan', NULL, N'0132442454', N'noyans@gmail.com', NULL, NULL, NULL, NULL, N'man1230828168.jpg', N'10/14/2023', 2, 1, NULL, N'Molla')
INSERT [dbo].[Members] ([Id], [Passport], [FirstName], [Address], [Contact], [Email], [Age], [NID], [SmartCard], [MemberGender], [ImageName], [RegistrationDate], [BloodgroupId], [AreaId], [Role], [LastName]) VALUES (3076, NULL, N'Noyan', NULL, N'0132442454', N'noyans@gmail.com', NULL, NULL, NULL, NULL, N'man1230923770.jpg', N'10/14/2023', 2, 1, NULL, N'Molla')
INSERT [dbo].[Members] ([Id], [Passport], [FirstName], [Address], [Contact], [Email], [Age], [NID], [SmartCard], [MemberGender], [ImageName], [RegistrationDate], [BloodgroupId], [AreaId], [Role], [LastName]) VALUES (3077, NULL, N'Nayansss', NULL, N'0139089078431', N'NayanAhm@gmail.com', NULL, NULL, NULL, 0, NULL, N'10/14/2023', NULL, NULL, NULL, N'Ahmed')
INSERT [dbo].[Members] ([Id], [Passport], [FirstName], [Address], [Contact], [Email], [Age], [NID], [SmartCard], [MemberGender], [ImageName], [RegistrationDate], [BloodgroupId], [AreaId], [Role], [LastName]) VALUES (3078, NULL, N'rayhan', N'345/2a', N'3474574578', N'fnjksgbjkgn@gmail.com', N'89', N'58632147', N'8963', NULL, N'download230308404.jpg', N'10/17/2023', 1, 1, N' Doctor', N'Molla')
INSERT [dbo].[Members] ([Id], [Passport], [FirstName], [Address], [Contact], [Email], [Age], [NID], [SmartCard], [MemberGender], [ImageName], [RegistrationDate], [BloodgroupId], [AreaId], [Role], [LastName]) VALUES (3079, NULL, N'asfaq', N'346/aA/22', N'0145782536241453465347', N'asfdaq@gmail.com', N'50', N'2352363477', N'35353623', 0, NULL, N'10/18/2023', NULL, NULL, NULL, N'udddin')
INSERT [dbo].[Members] ([Id], [Passport], [FirstName], [Address], [Contact], [Email], [Age], [NID], [SmartCard], [MemberGender], [ImageName], [RegistrationDate], [BloodgroupId], [AreaId], [Role], [LastName]) VALUES (3080, NULL, N'asfaq', NULL, N'0145782536', N'asfdaq@gmail.com', NULL, NULL, NULL, NULL, N'man2230227229.jpg', N'10/18/2023', 1, 1, N' Doctor', N'udddin')
INSERT [dbo].[Members] ([Id], [Passport], [FirstName], [Address], [Contact], [Email], [Age], [NID], [SmartCard], [MemberGender], [ImageName], [RegistrationDate], [BloodgroupId], [AreaId], [Role], [LastName]) VALUES (3081, NULL, N'RUPAM', NULL, N'4537636', N'rupam@gmail.com', N'55', NULL, NULL, 0, NULL, N'10/18/2023', 1, NULL, NULL, N'MOLLA')
INSERT [dbo].[Members] ([Id], [Passport], [FirstName], [Address], [Contact], [Email], [Age], [NID], [SmartCard], [MemberGender], [ImageName], [RegistrationDate], [BloodgroupId], [AreaId], [Role], [LastName]) VALUES (3082, N'31564156d4564', N'royelsdddd', N'235ff/adah', N'0145782536', N'royeass@gmail.com', N'86', N'56415641561', N'51456418541', NULL, NULL, N'10/18/2023', NULL, NULL, NULL, N'molla')
INSERT [dbo].[Members] ([Id], [Passport], [FirstName], [Address], [Contact], [Email], [Age], [NID], [SmartCard], [MemberGender], [ImageName], [RegistrationDate], [BloodgroupId], [AreaId], [Role], [LastName]) VALUES (3083, NULL, N'farjana', NULL, N'014578253600', N'farjanash@gmail.com', NULL, NULL, NULL, NULL, N'man3234831862.jpg', N'10/22/2023', 1, 1, N' Doctor', N'akhter')
INSERT [dbo].[Members] ([Id], [Passport], [FirstName], [Address], [Contact], [Email], [Age], [NID], [SmartCard], [MemberGender], [ImageName], [RegistrationDate], [BloodgroupId], [AreaId], [Role], [LastName]) VALUES (3084, N'896325', N'Ratuldddd', N'235ff/adah', N'0145782536', N'faruksss@gmail.com', N'59', N'589654', N'545852415', NULL, N'man3235108526.jpg', N'10/22/2023', 3, 1, N' Doctor', N'ahmedddd')
INSERT [dbo].[Members] ([Id], [Passport], [FirstName], [Address], [Contact], [Email], [Age], [NID], [SmartCard], [MemberGender], [ImageName], [RegistrationDate], [BloodgroupId], [AreaId], [Role], [LastName]) VALUES (3085, NULL, N'shanto', N'2334/acsf', N'784522', N'tedu@gmail.com', N'87', N'545231231', N'41230216', NULL, N'man2233054108.jpg', N'10/23/2023', NULL, 1, N' Doctor', N'tedu')
INSERT [dbo].[Members] ([Id], [Passport], [FirstName], [Address], [Contact], [Email], [Age], [NID], [SmartCard], [MemberGender], [ImageName], [RegistrationDate], [BloodgroupId], [AreaId], [Role], [LastName]) VALUES (3086, NULL, N'romras', N'asf353w563w46', N'5645145411', N'Romras@gmail.com', N'56', N'234156456456', N'12456456', NULL, N'man2234637138.jpg', N'10/23/2023', 2, 1, N' Doctor', N'koris')
INSERT [dbo].[Members] ([Id], [Passport], [FirstName], [Address], [Contact], [Email], [Age], [NID], [SmartCard], [MemberGender], [ImageName], [RegistrationDate], [BloodgroupId], [AreaId], [Role], [LastName]) VALUES (3087, NULL, N'rakis', NULL, N'46364346346', N'rakis@gmail.com', NULL, NULL, NULL, NULL, N'download234702499.jpg', N'10/25/2023', 1, 1, N' Doctor', N'kk')
SET IDENTITY_INSERT [dbo].[Members] OFF
GO
SET IDENTITY_INSERT [dbo].[MembersDeseases] ON 

INSERT [dbo].[MembersDeseases] ([Id], [MemberId], [DeseaseId]) VALUES (2, 2020, 19)
INSERT [dbo].[MembersDeseases] ([Id], [MemberId], [DeseaseId]) VALUES (3, 1016, 21)
INSERT [dbo].[MembersDeseases] ([Id], [MemberId], [DeseaseId]) VALUES (1003, 8, 20)
INSERT [dbo].[MembersDeseases] ([Id], [MemberId], [DeseaseId]) VALUES (1005, 8, 23)
INSERT [dbo].[MembersDeseases] ([Id], [MemberId], [DeseaseId]) VALUES (1006, 2018, 21)
INSERT [dbo].[MembersDeseases] ([Id], [MemberId], [DeseaseId]) VALUES (1007, 1025, 20)
INSERT [dbo].[MembersDeseases] ([Id], [MemberId], [DeseaseId]) VALUES (1008, 1025, 19)
INSERT [dbo].[MembersDeseases] ([Id], [MemberId], [DeseaseId]) VALUES (1010, 1025, 19)
INSERT [dbo].[MembersDeseases] ([Id], [MemberId], [DeseaseId]) VALUES (1011, 1025, 19)
INSERT [dbo].[MembersDeseases] ([Id], [MemberId], [DeseaseId]) VALUES (1012, 1025, 22)
INSERT [dbo].[MembersDeseases] ([Id], [MemberId], [DeseaseId]) VALUES (1013, 3026, 21)
INSERT [dbo].[MembersDeseases] ([Id], [MemberId], [DeseaseId]) VALUES (1014, 3026, 21)
INSERT [dbo].[MembersDeseases] ([Id], [MemberId], [DeseaseId]) VALUES (1015, 3026, 21)
INSERT [dbo].[MembersDeseases] ([Id], [MemberId], [DeseaseId]) VALUES (1016, 3026, 20)
SET IDENTITY_INSERT [dbo].[MembersDeseases] OFF
GO
SET IDENTITY_INSERT [dbo].[patients] ON 

INSERT [dbo].[patients] ([Id], [MemberId], [ChiefComplain], [DifferentDiagnosis], [LabrotoryFindings]) VALUES (1, 2022, N'complain1', N'digdiff1', N'labfinding1')
INSERT [dbo].[patients] ([Id], [MemberId], [ChiefComplain], [DifferentDiagnosis], [LabrotoryFindings]) VALUES (2, 3026, N'Headeche', N'X-Ray', N'popular')
INSERT [dbo].[patients] ([Id], [MemberId], [ChiefComplain], [DifferentDiagnosis], [LabrotoryFindings]) VALUES (3, 3074, N'blood sugar', N'afasfgsgd', N'sdgasg')
SET IDENTITY_INSERT [dbo].[patients] OFF
GO
SET IDENTITY_INSERT [dbo].[Thanas] ON 

INSERT [dbo].[Thanas] ([Id], [Name], [DistricId]) VALUES (1, N'Dhanmondi', 1)
INSERT [dbo].[Thanas] ([Id], [Name], [DistricId]) VALUES (2, N'Naoga', 2)
SET IDENTITY_INSERT [dbo].[Thanas] OFF
GO
/****** Object:  Index [IX_Areas_ThanaId]    Script Date: 10/30/2023 2:36:57 PM ******/
CREATE NONCLUSTERED INDEX [IX_Areas_ThanaId] ON [dbo].[Areas]
(
	[ThanaId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetRoleClaims_RoleId]    Script Date: 10/30/2023 2:36:57 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetRoleClaims_RoleId] ON [dbo].[AspNetRoleClaims]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [RoleNameIndex]    Script Date: 10/30/2023 2:36:57 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[NormalizedName] ASC
)
WHERE ([NormalizedName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserClaims_UserId]    Script Date: 10/30/2023 2:36:57 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserClaims_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserLogins_UserId]    Script Date: 10/30/2023 2:36:57 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserLogins_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserRoles_RoleId]    Script Date: 10/30/2023 2:36:57 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserRoles_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [EmailIndex]    Script Date: 10/30/2023 2:36:57 PM ******/
CREATE NONCLUSTERED INDEX [EmailIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedEmail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UserNameIndex]    Script Date: 10/30/2023 2:36:57 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedUserName] ASC
)
WHERE ([NormalizedUserName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_BloodReqsts_BloodGroupId]    Script Date: 10/30/2023 2:36:57 PM ******/
CREATE NONCLUSTERED INDEX [IX_BloodReqsts_BloodGroupId] ON [dbo].[BloodReqsts]
(
	[BloodGroupId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_BloodReqsts_ReferenceId]    Script Date: 10/30/2023 2:36:57 PM ******/
CREATE NONCLUSTERED INDEX [IX_BloodReqsts_ReferenceId] ON [dbo].[BloodReqsts]
(
	[ReferenceId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Districts_DivisionId]    Script Date: 10/30/2023 2:36:57 PM ******/
CREATE NONCLUSTERED INDEX [IX_Districts_DivisionId] ON [dbo].[Districts]
(
	[DivisionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Divisions_CountryId]    Script Date: 10/30/2023 2:36:57 PM ******/
CREATE NONCLUSTERED INDEX [IX_Divisions_CountryId] ON [dbo].[Divisions]
(
	[CountryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Doctors_DoctorTypeId]    Script Date: 10/30/2023 2:36:57 PM ******/
CREATE NONCLUSTERED INDEX [IX_Doctors_DoctorTypeId] ON [dbo].[Doctors]
(
	[DoctorTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Doctors_MemberId]    Script Date: 10/30/2023 2:36:57 PM ******/
CREATE NONCLUSTERED INDEX [IX_Doctors_MemberId] ON [dbo].[Doctors]
(
	[MemberId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Donars_MemberId]    Script Date: 10/30/2023 2:36:57 PM ******/
CREATE NONCLUSTERED INDEX [IX_Donars_MemberId] ON [dbo].[Donars]
(
	[MemberId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_MemberDeseaseReports_MemberDeseaseId]    Script Date: 10/30/2023 2:36:57 PM ******/
CREATE NONCLUSTERED INDEX [IX_MemberDeseaseReports_MemberDeseaseId] ON [dbo].[MemberDeseaseReports]
(
	[MemberDeseaseId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Members_AreaId]    Script Date: 10/30/2023 2:36:57 PM ******/
CREATE NONCLUSTERED INDEX [IX_Members_AreaId] ON [dbo].[Members]
(
	[AreaId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Members_BloodgroupId]    Script Date: 10/30/2023 2:36:57 PM ******/
CREATE NONCLUSTERED INDEX [IX_Members_BloodgroupId] ON [dbo].[Members]
(
	[BloodgroupId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_MembersDeseases_DeseaseId]    Script Date: 10/30/2023 2:36:57 PM ******/
CREATE NONCLUSTERED INDEX [IX_MembersDeseases_DeseaseId] ON [dbo].[MembersDeseases]
(
	[DeseaseId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_MembersDeseases_MemberId]    Script Date: 10/30/2023 2:36:57 PM ******/
CREATE NONCLUSTERED INDEX [IX_MembersDeseases_MemberId] ON [dbo].[MembersDeseases]
(
	[MemberId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_patients_MemberId]    Script Date: 10/30/2023 2:36:57 PM ******/
CREATE NONCLUSTERED INDEX [IX_patients_MemberId] ON [dbo].[patients]
(
	[MemberId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Thanas_DistricId]    Script Date: 10/30/2023 2:36:57 PM ******/
CREATE NONCLUSTERED INDEX [IX_Thanas_DistricId] ON [dbo].[Thanas]
(
	[DistricId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Doctors] ADD  DEFAULT (N'') FOR [AreaOfConsultation]
GO
ALTER TABLE [dbo].[Doctors] ADD  DEFAULT (N'') FOR [BMDCNO]
GO
ALTER TABLE [dbo].[Doctors] ADD  DEFAULT (N'') FOR [Degree]
GO
ALTER TABLE [dbo].[Doctors] ADD  DEFAULT (N'') FOR [Institute]
GO
ALTER TABLE [dbo].[Doctors] ADD  DEFAULT (N'') FOR [SpecialInterest]
GO
ALTER TABLE [dbo].[MemberDeseaseReports] ADD  DEFAULT ('0001-01-01T00:00:00.0000000') FOR [StartingDate]
GO
ALTER TABLE [dbo].[MemberDeseaseReports] ADD  DEFAULT (N'') FOR [ReportsPath]
GO
ALTER TABLE [dbo].[Members] ADD  DEFAULT (N'') FOR [LastName]
GO
ALTER TABLE [dbo].[patients] ADD  DEFAULT (N'') FOR [ChiefComplain]
GO
ALTER TABLE [dbo].[patients] ADD  DEFAULT (N'') FOR [DifferentDiagnosis]
GO
ALTER TABLE [dbo].[patients] ADD  DEFAULT (N'') FOR [LabrotoryFindings]
GO
ALTER TABLE [dbo].[Areas]  WITH CHECK ADD  CONSTRAINT [FK_Areas_Thanas_ThanaId] FOREIGN KEY([ThanaId])
REFERENCES [dbo].[Thanas] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Areas] CHECK CONSTRAINT [FK_Areas_Thanas_ThanaId]
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
ALTER TABLE [dbo].[BloodReqsts]  WITH CHECK ADD  CONSTRAINT [FK_BloodReqsts_Bloodgroups_BloodGroupId] FOREIGN KEY([BloodGroupId])
REFERENCES [dbo].[Bloodgroups] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[BloodReqsts] CHECK CONSTRAINT [FK_BloodReqsts_Bloodgroups_BloodGroupId]
GO
ALTER TABLE [dbo].[BloodReqsts]  WITH CHECK ADD  CONSTRAINT [FK_BloodReqsts_Members_ReferenceId] FOREIGN KEY([ReferenceId])
REFERENCES [dbo].[Members] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[BloodReqsts] CHECK CONSTRAINT [FK_BloodReqsts_Members_ReferenceId]
GO
ALTER TABLE [dbo].[Districts]  WITH CHECK ADD  CONSTRAINT [FK_Districts_Divisions_DivisionId] FOREIGN KEY([DivisionId])
REFERENCES [dbo].[Divisions] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Districts] CHECK CONSTRAINT [FK_Districts_Divisions_DivisionId]
GO
ALTER TABLE [dbo].[Divisions]  WITH CHECK ADD  CONSTRAINT [FK_Divisions_Countries_CountryId] FOREIGN KEY([CountryId])
REFERENCES [dbo].[Countries] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Divisions] CHECK CONSTRAINT [FK_Divisions_Countries_CountryId]
GO
ALTER TABLE [dbo].[Doctors]  WITH CHECK ADD  CONSTRAINT [FK_Doctors_DoctorTypes_DoctorTypeId] FOREIGN KEY([DoctorTypeId])
REFERENCES [dbo].[DoctorTypes] ([Id])
GO
ALTER TABLE [dbo].[Doctors] CHECK CONSTRAINT [FK_Doctors_DoctorTypes_DoctorTypeId]
GO
ALTER TABLE [dbo].[Doctors]  WITH CHECK ADD  CONSTRAINT [FK_Doctors_Members_MemberId] FOREIGN KEY([MemberId])
REFERENCES [dbo].[Members] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Doctors] CHECK CONSTRAINT [FK_Doctors_Members_MemberId]
GO
ALTER TABLE [dbo].[Donars]  WITH CHECK ADD  CONSTRAINT [FK_Donars_Members_MemberId] FOREIGN KEY([MemberId])
REFERENCES [dbo].[Members] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Donars] CHECK CONSTRAINT [FK_Donars_Members_MemberId]
GO
ALTER TABLE [dbo].[MemberDeseaseReports]  WITH CHECK ADD  CONSTRAINT [FK_MemberDeseaseReports_MembersDeseases_MemberDeseaseId] FOREIGN KEY([MemberDeseaseId])
REFERENCES [dbo].[MembersDeseases] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[MemberDeseaseReports] CHECK CONSTRAINT [FK_MemberDeseaseReports_MembersDeseases_MemberDeseaseId]
GO
ALTER TABLE [dbo].[Members]  WITH CHECK ADD  CONSTRAINT [FK_Members_Areas_AreaId] FOREIGN KEY([AreaId])
REFERENCES [dbo].[Areas] ([Id])
GO
ALTER TABLE [dbo].[Members] CHECK CONSTRAINT [FK_Members_Areas_AreaId]
GO
ALTER TABLE [dbo].[Members]  WITH CHECK ADD  CONSTRAINT [FK_Members_Bloodgroups_BloodgroupId] FOREIGN KEY([BloodgroupId])
REFERENCES [dbo].[Bloodgroups] ([Id])
GO
ALTER TABLE [dbo].[Members] CHECK CONSTRAINT [FK_Members_Bloodgroups_BloodgroupId]
GO
ALTER TABLE [dbo].[MembersDeseases]  WITH CHECK ADD  CONSTRAINT [FK_MembersDeseases_Diseases_DeseaseId] FOREIGN KEY([DeseaseId])
REFERENCES [dbo].[Diseases] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[MembersDeseases] CHECK CONSTRAINT [FK_MembersDeseases_Diseases_DeseaseId]
GO
ALTER TABLE [dbo].[MembersDeseases]  WITH CHECK ADD  CONSTRAINT [FK_MembersDeseases_Members_MemberId] FOREIGN KEY([MemberId])
REFERENCES [dbo].[Members] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[MembersDeseases] CHECK CONSTRAINT [FK_MembersDeseases_Members_MemberId]
GO
ALTER TABLE [dbo].[patients]  WITH CHECK ADD  CONSTRAINT [FK_patients_Members_MemberId] FOREIGN KEY([MemberId])
REFERENCES [dbo].[Members] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[patients] CHECK CONSTRAINT [FK_patients_Members_MemberId]
GO
ALTER TABLE [dbo].[Thanas]  WITH CHECK ADD  CONSTRAINT [FK_Thanas_Districts_DistricId] FOREIGN KEY([DistricId])
REFERENCES [dbo].[Districts] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Thanas] CHECK CONSTRAINT [FK_Thanas_Districts_DistricId]
GO
USE [master]
GO
ALTER DATABASE [DbBloodfinal] SET  READ_WRITE 
GO
