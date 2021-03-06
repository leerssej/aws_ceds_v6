/*    Common Education Data Standards (CEDS)
      Version 6
      Normalized Data Schema (NDS)
      MODEL DATABASE
      This script creates the tables, constraints, and relationships defined in 
      version 6 of the CEDS NDS.  The script was generated from a model database 
      hosted on a Microsoft SQL Server 2008 R2 platform.  
      Questions on this script can be sent to ceds@ed.gov
      More information on the data model is available at the CEDS website:  
      http:ceds.ed.gov.  The website also has additional files to populate 
	  the Ref tables with CEDS option sets and a script to update a Version 4 
	  model database to Version 6.
      WARNING: This script creates a database named CEDS-NDS-V6 on the default 
      file location for the database.
*/

USE [master];
/****** Object:  Database [CEDS-TSQL-V6]  ******/
CREATE DATABASE [CEDS-TSQL-V6];
ALTER DATABASE [CEDS-TSQL-V6] SET COMPATIBILITY_LEVEL = 100;

IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [CEDS-TSQL-V6].[dbo].[sp_fulltext_database] @action = 'enable'
end;

ALTER DATABASE [CEDS-TSQL-V6] SET ANSI_NULL_DEFAULT OFF ;
ALTER DATABASE [CEDS-TSQL-V6] SET ANSI_NULLS OFF ;
ALTER DATABASE [CEDS-TSQL-V6] SET ANSI_PADDING OFF ;
ALTER DATABASE [CEDS-TSQL-V6] SET ANSI_WARNINGS OFF ;
ALTER DATABASE [CEDS-TSQL-V6] SET ARITHABORT OFF ;
ALTER DATABASE [CEDS-TSQL-V6] SET AUTO_CLOSE OFF ;
ALTER DATABASE [CEDS-TSQL-V6] SET AUTO_CREATE_STATISTICS ON ;
ALTER DATABASE [CEDS-TSQL-V6] SET AUTO_SHRINK OFF ;
ALTER DATABASE [CEDS-TSQL-V6] SET AUTO_UPDATE_STATISTICS ON ;
ALTER DATABASE [CEDS-TSQL-V6] SET CURSOR_CLOSE_ON_COMMIT OFF ;
ALTER DATABASE [CEDS-TSQL-V6] SET CURSOR_DEFAULT  GLOBAL ;
ALTER DATABASE [CEDS-TSQL-V6] SET CONCAT_NULL_YIELDS_NULL OFF ;
ALTER DATABASE [CEDS-TSQL-V6] SET NUMERIC_ROUNDABORT OFF ;
ALTER DATABASE [CEDS-TSQL-V6] SET QUOTED_IDENTIFIER OFF ;
ALTER DATABASE [CEDS-TSQL-V6] SET RECURSIVE_TRIGGERS OFF ;
ALTER DATABASE [CEDS-TSQL-V6] SET  ENABLE_BROKER ;
ALTER DATABASE [CEDS-TSQL-V6] SET AUTO_UPDATE_STATISTICS_ASYNC OFF ;
ALTER DATABASE [CEDS-TSQL-V6] SET DATE_CORRELATION_OPTIMIZATION OFF ;
ALTER DATABASE [CEDS-TSQL-V6] SET TRUSTWORTHY OFF ;
ALTER DATABASE [CEDS-TSQL-V6] SET ALLOW_SNAPSHOT_ISOLATION OFF ;
ALTER DATABASE [CEDS-TSQL-V6] SET PARAMETERIZATION SIMPLE ;
ALTER DATABASE [CEDS-TSQL-V6] SET READ_COMMITTED_SNAPSHOT OFF ;
ALTER DATABASE [CEDS-TSQL-V6] SET HONOR_BROKER_PRIORITY OFF ;
ALTER DATABASE [CEDS-TSQL-V6] SET  READ_WRITE ;
ALTER DATABASE [CEDS-TSQL-V6] SET RECOVERY FULL ;
ALTER DATABASE [CEDS-TSQL-V6] SET  MULTI_USER ;
ALTER DATABASE [CEDS-TSQL-V6] SET PAGE_VERIFY CHECKSUM  ;
ALTER DATABASE [CEDS-TSQL-V6] SET DB_CHAINING OFF ;


USE [CEDS-TSQL-V6];

/****** Object:  Table [dbo].[Achievement]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[Achievement](
	[AchievementId] [int] IDENTITY(1,1) NOT NULL,
	[PersonId] [int] NOT NULL,
	[Title] [nvarchar](300) NULL,
	[Description] [nvarchar](300) NULL,
	[Category] [nvarchar](60) NULL,
	[CategorySystem] [nvarchar](50) NULL,
	[ImageUrl] [nvarchar](300) NULL,
	[Criteria] [nvarchar](300) NULL,
	[CriteriaUrl] [nvarchar](300) NULL,
	[CompetencySetId] [int] NULL,
	[StartDate] [date] NULL,
	[EndDate] [date] NULL,
	[AwardIssuerName] [nvarchar](128) NULL,
	[AwardIssuerOriginURL] [nvarchar](300) NULL,
 CONSTRAINT [PK_Achievement] PRIMARY KEY CLUSTERED 
(
	[AchievementId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[AchievementEvidence]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[AchievementEvidence](
	[AchievementEvidenceId] [int] IDENTITY(1,1) NOT NULL,
	[AchievementId] [int] NULL,
	[Statement] [nvarchar](300) NULL,
	[AssessmentSubtestResultId] [int] NULL,
 CONSTRAINT [PK_AchievementEvidence] PRIMARY KEY CLUSTERED 
(
	[AchievementEvidenceId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[Activity]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[Activity](
	[OrganizationId] [int] NOT NULL,
	[ActivityDescription] [nvarchar](300) NULL,
 CONSTRAINT [PK_Activity] PRIMARY KEY CLUSTERED 
(
	[OrganizationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[ActivityRecognition]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[ActivityRecognition](
	[ActivityRecognitionId] [int] IDENTITY(1,1) NOT NULL,
	[OrganizationPersonRoleId] [int] NOT NULL,
	[RefActivityRecognitionTypeId] [int] NOT NULL,
 CONSTRAINT [PK_ActivityRecognition] PRIMARY KEY CLUSTERED 
(
	[ActivityRecognitionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[AeCourse]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[AeCourse](
	[OrganizationId] [int] NOT NULL,
	[RefCourseLevelTypeId] [int] NULL,
	[RefCareerClusterId] [int] NULL,
 CONSTRAINT [PK_AeCourse] PRIMARY KEY CLUSTERED 
(
	[OrganizationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[AeProvider]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[AeProvider](
	[OrganizationId] [int] NOT NULL,
	[RefLevelOfInstitutionId] [int] NOT NULL,
 CONSTRAINT [PK_AEProvider] PRIMARY KEY CLUSTERED 
(
	[OrganizationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[AeStaff]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[AeStaff](
	[OrganizationPersonRoleId] [int] NOT NULL,
	[RefAeStaffClassificationId] [int] NULL,
	[RefAeStaffEmploymentStatusId] [int] NULL,
	[YearsOfPriorAeTeachingExperience] [decimal](4, 2) NULL,
	[RefAeCertificationTypeId] [int] NULL,
 CONSTRAINT [PK_AEStaff] PRIMARY KEY CLUSTERED 
(
	[OrganizationPersonRoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[AeStudentAcademicRecord]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[AeStudentAcademicRecord](
	[OrganizationPersonRoleId] [int] NOT NULL,
	[RefHighSchoolDiplomaTypeId] [int] NULL,
	[DiplomaOrCredentialAwardDate] [nchar](7) NULL,
	[RefProfessionalTechnicalCredentialTypeId] [int] NULL,
 CONSTRAINT [PK_AeStudentAcademicRecord] PRIMARY KEY CLUSTERED 
(
	[OrganizationPersonRoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[AeStudentEmployment]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[AeStudentEmployment](
	[OrganizationPersonRoleId] [int] NOT NULL,
	[RefEmployedWhileEnrolledId] [int] NULL,
	[RefEmployedAfterExitId] [int] NULL,
	[EmploymentNaicsCode] [nchar](6) NULL,
 CONSTRAINT [PK_AeStudentEmployment] PRIMARY KEY CLUSTERED 
(
	[OrganizationPersonRoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[ApipInteraction]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[ApipInteraction](
	[ApipInteractionId] [int] IDENTITY(1,1) NOT NULL,
	[AssessmentItemId] [int] NOT NULL,
	[RefApipInteractionTypeId] [int] NULL,
	[Xml] [nvarchar](max) NULL,
	[SequenceNumber] [int] NULL,
	[APIPInteractionSequenceNumber] [decimal](9, 2) NULL,
 CONSTRAINT [PK_ApipInteraction] PRIMARY KEY CLUSTERED 
(
	[ApipInteractionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
;
/****** Object:  Table [dbo].[Application]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[Application](
	[ApplicationId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](120) NOT NULL,
	[Uri] [nvarchar](300) NULL,
 CONSTRAINT [PK_Application] PRIMARY KEY CLUSTERED 
(
	[ApplicationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[Assessment]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[Assessment](
	[AssessmentId] [int] IDENTITY(1,1) NOT NULL,
	[Identifier] [nvarchar](40) NULL,
	[IdentificationSystem] [int] NULL,
	[GUID] [nvarchar](40) NULL,
	[Title] [nvarchar](60) NULL,
	[ShortName] [nvarchar](30) NULL,
	[RefAcademicSubjectId] [int] NOT NULL,
	[Objective] [nvarchar](100) NULL,
	[Provider] [nvarchar](30) NULL,
	[RefAssessmentPurposeId] [int] NULL,
	[RefAssessmentTypeId] [int] NULL,
	[RefAssessmentTypeChildrenWithDisabilitiesId] [int] NULL,
	[AssessmentRevisionDate] [date] NULL,
	[AssessmentFamilyTitle] [nvarchar](60) NOT NULL,
	[AssessmentFamilyShortName] [nvarchar](30) NULL,
 CONSTRAINT [PK_Assessment] PRIMARY KEY CLUSTERED 
(
	[AssessmentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[Assessment_AssessmentAdministration]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[Assessment_AssessmentAdministration](
	[Assessment_AssessmentAdministrationId] [int] IDENTITY(1,1) NOT NULL,
	[AssessmentId] [int] NOT NULL,
	[AssessmentAdministrationId] [int] NOT NULL,
 CONSTRAINT [PK_Assessment_AssessmentAdministration] PRIMARY KEY CLUSTERED 
(
	[Assessment_AssessmentAdministrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [IX_Assessment_AssessmentAdministration] UNIQUE NONCLUSTERED 
(
	[AssessmentId] ASC,
	[AssessmentAdministrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[AssessmentAdministration]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[AssessmentAdministration](
	[AssessmentAdministrationId] [int] IDENTITY(1,1) NOT NULL,
	[AssessmentId] [int] NULL,
	[Name] [nvarchar](30) NULL,
	[Code] [nvarchar](30) NULL,
	[StartDate] [date] NULL,
	[StartTime] [time](7) NULL,
	[FinishDate] [date] NULL,
	[FinishTime] [time](7) NULL,
	[RefAssessmentReportingMethodId] [int] NULL,
	[AssessmentSecureIndicator] [bit] NULL,
	[AssessmentAdministrationPeriodDescription] [nvarchar](300) NULL,
 CONSTRAINT [PK_AssessmentAdministration] PRIMARY KEY CLUSTERED 
(
	[AssessmentAdministrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[AssessmentAdministration_Organization]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[AssessmentAdministration_Organization](
	[AssessmentAdministration_OrganizationId] [int] IDENTITY(1,1) NOT NULL,
	[AssessmentAdministrationId] [int] NOT NULL,
	[OrganizationId] [int] NOT NULL,
 CONSTRAINT [PK_AssessmentAdministration_Organization] PRIMARY KEY CLUSTERED 
(
	[AssessmentAdministration_OrganizationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [IX_AssessmentAdministration_Organization] UNIQUE NONCLUSTERED 
(
	[AssessmentAdministrationId] ASC,
	[OrganizationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[AssessmentAsset]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[AssessmentAsset](
	[AssessmentAssetId] [int] IDENTITY(1,1) NOT NULL,
	[Version] [nvarchar](30) NULL,
	[PublishedDate] [date] NULL,
	[Identifier] [nvarchar](40) NULL,
	[RefAssessmentAssestIdentifierType] [int] NULL,
	[Name] [nvarchar](60) NULL,
	[RefAssessmentAssetTypeId] [int] NULL,
	[Owner] [nvarchar](60) NULL,
	[RefAssessmentLanguageId] [int] NULL,
	[ContentXML] [nvarchar](max) NULL,
	[ContentMimeType] [nvarchar](max) NULL,
	[ContentUrl] [nvarchar](300) NULL,
	[LearningResourceId] [int] NULL,
 CONSTRAINT [PK_AssessmentAsset] PRIMARY KEY CLUSTERED 
(
	[AssessmentAssetId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
;
/****** Object:  Table [dbo].[AssessmentELDevelopmentalDomain]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[AssessmentELDevelopmentalDomain](
	[AssessmentELDevelopmentalDomainId] [int] IDENTITY(1,1) NOT NULL,
	[AssessmentId] [int] NOT NULL,
	[RefAssessmentELDevelopmentalDomainId] [int] NOT NULL,
 CONSTRAINT [PK_AssessmentELDevelopmentalDomain] PRIMARY KEY CLUSTERED 
(
	[AssessmentELDevelopmentalDomainId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [IX_AssessmentELDevelopmentalDomain] UNIQUE NONCLUSTERED 
(
	[AssessmentId] ASC,
	[RefAssessmentELDevelopmentalDomainId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[AssessmentForm]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[AssessmentForm](
	[AssessmentFormId] [int] IDENTITY(1,1) NOT NULL,
	[AssessmentId] [int] NOT NULL,
	[FormNumber] [nvarchar](30) NULL,
	[Name] [nvarchar](40) NULL,
	[Version] [nvarchar](30) NULL,
	[PublishedDate] [date] NULL,
	[AccommodationList] [nvarchar](max) NULL,
	[IntendedAdministrationStartDate] [date] NULL,
	[IntendedAdministrationEndDate] [date] NULL,
	[AssessmentItemBankIdentifier] [nvarchar](40) NULL,
	[AssessmentItemBankName] [nvarchar](60) NULL,
	[PlatformsSupported] [nvarchar](max) NULL,
	[RefAssessmentLanguageId] [int] NULL,
	[AssessmentSecureIndicator] [bit] NULL,
	[LearningResourceId] [int] NULL,
	[AssessmentFormAdaptiveIndicator] [bit] NULL,
	[AssessmentFormAlgorithmIdentifier] [nvarchar](40) NULL,
	[AssessmentFormAlgorithmVersion] [nvarchar](40) NULL,
	[AssessmentFormGUID] [nvarchar](40) NULL,
 CONSTRAINT [PK_AssessmentForm] PRIMARY KEY CLUSTERED 
(
	[AssessmentFormId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
;
/****** Object:  Table [dbo].[AssessmentForm_AssessmentAsset]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[AssessmentForm_AssessmentAsset](
	[AssessmentForm_AssessmentAssetId] [int] IDENTITY(1,1) NOT NULL,
	[AssessmentFormId] [int] NOT NULL,
	[AssessmentAssetId] [int] NOT NULL,
 CONSTRAINT [PK_AssessmentForm_AssessmentAsset] PRIMARY KEY CLUSTERED 
(
	[AssessmentForm_AssessmentAssetId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [IX_AssessmentForm_AssessmentAsset] UNIQUE NONCLUSTERED 
(
	[AssessmentFormId] ASC,
	[AssessmentAssetId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[AssessmentForm_AssessmentFormSection]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[AssessmentForm_AssessmentFormSection](
	[AssessmentForm_AssessmentFormSectionId] [int] IDENTITY(1,1) NOT NULL,
	[AssessmentFormId] [int] NOT NULL,
	[AssessmentFormSectionId] [int] NOT NULL,
	[SequenceNumber] [int] NULL,
 CONSTRAINT [PK_AssessmentForm_AssessmentFormSection] PRIMARY KEY CLUSTERED 
(
	[AssessmentForm_AssessmentFormSectionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[AssessmentFormSection]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[AssessmentFormSection](
	[AssessmentFormSectionId] [int] IDENTITY(1,1) NOT NULL,
	[Identifier] [nvarchar](40) NULL,
	[RefAssessmentFormSectionIdentificationSystemId] [int] NULL,
	[PublishedDate] [date] NULL,
	[Version] [nvarchar](30) NULL,
	[SectionTimeLimit] [time](7) NULL,
	[SectionSealed] [bit] NULL,
	[SectionReentry] [bit] NULL,
	[AssessmentItemBankIdentifier] [nvarchar](40) NULL,
	[AssessmentItemBankName] [nvarchar](60) NULL,
	[ChildOf_FormSectionId] [int] NULL,
	[LearningResourceId] [int] NULL,
	[GUID] [nvarchar](40) NULL,
 CONSTRAINT [PK_AssessmentFormSection] PRIMARY KEY CLUSTERED 
(
	[AssessmentFormSectionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[AssessmentFormSection_AssessmentAsset]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[AssessmentFormSection_AssessmentAsset](
	[AssessmentFormSection_AssessmentAssetId] [int] IDENTITY(1,1) NOT NULL,
	[AssessmentFormSectionId] [int] NOT NULL,
	[AssessmentAssetId] [int] NOT NULL,
 CONSTRAINT [PK_AssessmentFormSection_AssessmentAsset_1] PRIMARY KEY CLUSTERED 
(
	[AssessmentFormSection_AssessmentAssetId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [IX_AssessmentFormSection_AssessmentAsset] UNIQUE NONCLUSTERED 
(
	[AssessmentFormSectionId] ASC,
	[AssessmentAssetId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[AssessmentFormSection_AssessmentItem]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[AssessmentFormSection_AssessmentItem](
	[AssessmentFormSectionItemId] [int] IDENTITY(1,1) NOT NULL,
	[SequenceNumber] [int] NOT NULL,
	[AssessmentFormSectionId] [int] NOT NULL,
	[AssessmentItemId] [int] NOT NULL,
 CONSTRAINT [PK_AssessmentFormSection_AssessmentItem] PRIMARY KEY CLUSTERED 
(
	[AssessmentFormSectionItemId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[AssessmentItem]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[AssessmentItem](
	[AssessmentItemId] [int] IDENTITY(1,1) NOT NULL,
	[Identifier] [nvarchar](40) NULL,
	[AssessmentItemBankIdentifier] [nvarchar](40) NULL,
	[AssessmentItemBankName] [nvarchar](60) NULL,
	[RefAssessmentItemTypeId] [int] NULL,
	[BodyText] [nvarchar](max) NULL,
	[Stimulus] [nvarchar](max) NULL,
	[Stem] [nvarchar](max) NULL,
	[AdaptiveIndicator] [bit] NULL,
	[MaximumScore] [nvarchar](300) NULL,
	[MinimumScore] [nvarchar](300) NULL,
	[DistractorAnalysis] [nvarchar](100) NULL,
	[AllottedTime] [time](7) NULL,
	[RefNaepMathComplexityLevelId] [int] NULL,
	[RefNaepAspectsOfReadingId] [int] NULL,
	[Difficulty] [decimal](5, 2) NULL,
	[RefTextComplexitySystemId] [int] NULL,
	[TextComplexityValue] [nvarchar](30) NULL,
	[LinkingItemIndicator] [bit] NULL,
	[ReleaseStatus] [bit] NULL,
	[RubricId] [int] NULL,
	[LearningResourceId] [int] NULL,
	[AssessmentFormSectionItemFieldTestIndicator] [bit] NULL,
 CONSTRAINT [PK_AssessmentItem] PRIMARY KEY CLUSTERED 
(
	[AssessmentItemId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
;
/****** Object:  Table [dbo].[AssessmentItemApip]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[AssessmentItemApip](
	[AssessmentItemId] [int] NOT NULL,
	[AdaptiveIndicator] [bit] NULL,
	[ResponseProcessingTemplateUrl] [nvarchar](300) NULL,
	[ResponseProcessingXml] [nvarchar](max) NULL,
	[ResponseDeclarationXml] [nvarchar](max) NULL,
	[OutcomeDeclarationXml] [nvarchar](max) NULL,
	[TemplateDeclarationXml] [nvarchar](max) NULL,
	[TemplateProcessingXml] [nvarchar](max) NULL,
	[ModalFeedbackXml] [nvarchar](max) NULL,
	[ItemBodyXml] [nvarchar](max) NULL,
 CONSTRAINT [PK_AssessmentItemBody] PRIMARY KEY CLUSTERED 
(
	[AssessmentItemId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
;
/****** Object:  Table [dbo].[AssessmentItemApipDescription]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[AssessmentItemApipDescription](
	[AssessmentItemId] [int] NOT NULL,
	[RefHazardTypeId] [int] NULL,
	[RefSupportToolTypeId] [int] NULL,
	[CognitiveGuidanceActivateByDefaultIndicator] [bit] NULL,
	[CognitiveGuidanceAssignedSupportIndicator] [bit] NULL,
	[ScaffoldingAssignedSupportIndicator] [bit] NULL,
	[ScaffoldingActivateByDefaultIndicator] [bit] NULL,
	[ChunkingAssignedSupportIndicator] [bit] NULL,
	[ChunkingActivateByDefaultIndicator] [bit] NULL,
	[KeywordEmphasisAssignedSupportIndicator] [bit] NULL,
	[KeywordEmphasisActivateByDefaultIndicator] [bit] NULL,
	[ReducedAnswersAssignedSupportIndicator] [bit] NULL,
	[ReducedAnswersActivateByDefaultIndicator] [bit] NULL,
	[NegativesRemovedAssignedSupportIndicator] [bit] NULL,
	[NegativesRemovedActivateByDefaultIndicator] [bit] NULL,
	[RefKeywordTranslationLanguageId] [int] NULL,
	[KeywordTranslationsAssignedSupportIndicator] [bit] NULL,
	[KeywordTranslationsActivateByDefaultIndicator] [bit] NULL,
	[BrailleIndicator] [bit] NULL,
	[TextOnlyIndicator] [bit] NULL,
	[TextOnlyOnDemandIndicator] [bit] NULL,
	[TextGraphicsIndicator] [bit] NULL,
	[GraphicsOnlyIndicator] [bit] NULL,
	[NonVisualIndicator] [bit] NULL,
	[AslIndicator] [bit] NULL,
	[AslOnDemandIndicator] [bit] NULL,
	[SignedEnglishIndicator] [bit] NULL,
	[SignedEnglishOnDemandIndicator] [bit] NULL,
 CONSTRAINT [PK_AssessmentItemApipDescription] PRIMARY KEY CLUSTERED 
(
	[AssessmentItemId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[AssessmentItemCharacteristic]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[AssessmentItemCharacteristic](
	[AssessmentItemCharacteristicId] [int] IDENTITY(1,1) NOT NULL,
	[AssessmentItemId] [int] NOT NULL,
	[RefAssessmentItemCharacteristicTypeId] [int] NULL,
	[Value] [nvarchar](30) NULL,
	[ResponseChoicePattern] [nvarchar](100) NULL,
 CONSTRAINT [PK_AssessmentItemCharacteristic] PRIMARY KEY CLUSTERED 
(
	[AssessmentItemCharacteristicId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[AssessmentItemPossibleResponse]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[AssessmentItemPossibleResponse](
	[AssessmentItemPossibleResponseId] [int] IDENTITY(1,1) NOT NULL,
	[AssessmentItemId] [int] NOT NULL,
	[PossibleResponseOption] [nvarchar](max) NULL,
	[Value] [nvarchar](300) NULL,
	[CorrectIndicator] [bit] NULL,
	[FeedbackMessage] [nvarchar](300) NULL,
	[SequenceNumber] [int] NULL,
 CONSTRAINT [PK_AssessmentItemPossibleResponse] PRIMARY KEY CLUSTERED 
(
	[AssessmentItemPossibleResponseId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
;
/****** Object:  Table [dbo].[AssessmentItemResponse]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[AssessmentItemResponse](
	[AssessmentItemResponseId] [int] IDENTITY(1,1) NOT NULL,
	[Value] [nvarchar](300) NULL,
	[ScoreValue] [nvarchar](60) NULL,
	[RefAssessItemResponseStatusId] [int] NULL,
	[RefProficiencyStatusId] [int] NULL,
	[AidSetUsed] [nvarchar](30) NULL,
	[DescriptiveFeedback] [nvarchar](300) NULL,
	[ScaffoldingItemFlag] [bit] NULL,
	[HintCount] [int] NULL,
	[HintIncludedAnswer] [bit] NULL,
	[Duration] [time](7) NULL,
	[FirstAttemptDuration] [time](7) NULL,
	[StartTime] [time](7) NULL,
	[StartDate] [date] NULL,
	[SecurityIssue] [nvarchar](300) NULL,
	[AssessmentItemId] [int] NOT NULL,
	[AssessmentParticipantSessionId] [int] NOT NULL,
	[ResultXML] [nvarchar](max) NULL,
	[AssessmentItemResponseDescriptiveFeedbackDate] [datetime] NULL,
	[RefAssessmentItemResponseScoreStatusId] [int] NULL,
 CONSTRAINT [PK_AssessmentItemResponse] PRIMARY KEY CLUSTERED 
(
	[AssessmentItemResponseId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
;
/****** Object:  Table [dbo].[AssessmentItemResponseTheory]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[AssessmentItemResponseTheory](
	[AssessmentItemId] [int] NOT NULL,
	[ParameterA] [int] NULL,
	[ParameterB] [int] NULL,
	[RefItemResponseTheoryDifficultyCategoryId] [int] NULL,
	[ParameterC] [int] NULL,
	[ParameterD1] [int] NULL,
	[ParameterD2] [int] NULL,
	[ParameterD3] [int] NULL,
	[ParameterD4] [int] NULL,
	[ParameterD5] [int] NULL,
	[ParameterD6] [int] NULL,
	[PointBiserialCorrelationValue] [int] NULL,
	[DIFValue] [int] NULL,
	[KappaValue] [int] NULL,
	[RefItemResponseTheoryKappaAlgorithmId] [int] NULL,
 CONSTRAINT [PK_AssessmentItemResponseTheory] PRIMARY KEY CLUSTERED 
(
	[AssessmentItemId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[AssessmentItemRubricCriterionResult]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[AssessmentItemRubricCriterionResult](
	[AssessmentItemResponseId] [int] NOT NULL,
	[RubricCriterionLevelId] [int] NOT NULL,
 CONSTRAINT [PK_AssessmentItemRubricCriterionResult] PRIMARY KEY CLUSTERED 
(
	[AssessmentItemResponseId] ASC,
	[RubricCriterionLevelId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[AssessmentLanguage]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[AssessmentLanguage](
	[AssessmentLanguageId] [int] IDENTITY(1,1) NOT NULL,
	[AssessmentId] [int] NOT NULL,
	[RefLanguageId] [int] NOT NULL,
 CONSTRAINT [PK_AssessmentLanguage_1] PRIMARY KEY CLUSTERED 
(
	[AssessmentLanguageId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [IX_AssessmentLanguage] UNIQUE NONCLUSTERED 
(
	[AssessmentId] ASC,
	[RefLanguageId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[AssessmentLevelsForWhichDesigned]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[AssessmentLevelsForWhichDesigned](
	[AssessmentLevelsForWhichDesignedId] [int] IDENTITY(1,1) NOT NULL,
	[AssessmentId] [int] NOT NULL,
	[RefGradeLevelId] [int] NOT NULL,
 CONSTRAINT [PK_AssessmentLevelsForWhichDesigned] PRIMARY KEY CLUSTERED 
(
	[AssessmentLevelsForWhichDesignedId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [IX_AssessmentLevelsForWhichDesigned] UNIQUE NONCLUSTERED 
(
	[AssessmentId] ASC,
	[RefGradeLevelId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[AssessmentNeedApipContent]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[AssessmentNeedApipContent](
	[AssessmentNeedApipContentId] [int] IDENTITY(1,1) NOT NULL,
	[AssessmentPersonalNeedsProfileContentId] [int] NOT NULL,
	[ItemTranslationDisplayLanguageTypeId] [int] NULL,
	[KeywordTranslationLanguageTypeId] [int] NULL,
	[RefAssessmentNeedSigningTypeId] [int] NULL,
	[RefAssessmentNeedAlternativeRepresentationTypeId] [int] NULL,
	[RefAssessmentNeedSpokenSourcePreferenceTypeId] [int] NULL,
	[ReadAtStartPreferenceIndicator] [bit] NULL,
	[RefAssessmentNeedUserSpokenPreferenceTypeId] [int] NULL,
	[AssessmentNeedDirectionsOnlyIndicator] [bit] NULL,
 CONSTRAINT [PK_AssessmentNeedApipContent] PRIMARY KEY CLUSTERED 
(
	[AssessmentNeedApipContentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[AssessmentNeedApipControl]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[AssessmentNeedApipControl](
	[AssessmentNeedApipControlId] [int] IDENTITY(1,1) NOT NULL,
	[AssessmentPersonalNeedsProfileControlId] [int] NOT NULL,
	[AssessmentNeedTimeMultiplier] [nvarchar](9) NULL,
	[LineReaderHighlightColor] [nchar](6) NULL,
	[OverlayColor] [nchar](6) NULL,
	[BackgroundColor] [nchar](6) NULL,
	[RefAssessmentNeedIncreasedWhitespacingTypeId] [int] NULL,
 CONSTRAINT [PK_AssessmentNeedApipControl] PRIMARY KEY CLUSTERED 
(
	[AssessmentNeedApipControlId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[AssessmentNeedApipDisplay]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[AssessmentNeedApipDisplay](
	[AssessmentNeedApipDisplayId] [int] IDENTITY(1,1) NOT NULL,
	[AssessmentPersonalNeedsProfileDisplayId] [int] NOT NULL,
	[MaskingAssignedSupportIndicator] [bit] NULL,
	[MaskingActivateByDefaultIndicator] [bit] NULL,
	[RefAssessmentNeedMaskingTypeId] [int] NULL,
	[EncouragementAssignedSupportIndicator] [bit] NULL,
	[EncouragementActivateByDefaultIndicator] [bit] NULL,
	[EncouragementTextMessagingString] [nvarchar](4000) NULL,
	[EncouragementSoundFileUrl] [nvarchar](300) NULL,
 CONSTRAINT [PK_AssessmentNeedApipDisplay] PRIMARY KEY CLUSTERED 
(
	[AssessmentNeedApipDisplayId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[AssessmentNeedBraille]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[AssessmentNeedBraille](
	[AssessmentNeedBrailleId] [int] IDENTITY(1,1) NOT NULL,
	[AssessmentPersonalNeedsProfileDisplayId] [int] NULL,
	[RefAssessmentNeedUsageTypeId] [int] NULL,
	[RefAssessmentNeedBrailleGradeTypeId] [int] NULL,
	[RefAssessmentNeedNumberOfBrailleDotsId] [int] NULL,
	[NumberOfBrailleCells] [int] NULL,
	[RefAssessmentNeedBrailleMarkTypeId] [int] NULL,
	[BrailleDotPressure] [decimal](10, 4) NULL,
	[RefAssessmentNeedBrailleStatusCellTypeId] [int] NULL,
 CONSTRAINT [PK_AssessmentNeedBraille] PRIMARY KEY CLUSTERED 
(
	[AssessmentNeedBrailleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[AssessmentNeedScreenEnhancement]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[AssessmentNeedScreenEnhancement](
	[AssessmentNeedScreenEnhancementId] [int] IDENTITY(1,1) NOT NULL,
	[AssessmentPersonalNeedsProfileDisplayId] [int] NOT NULL,
	[InvertColorChoice] [bit] NULL,
	[Magnification] [decimal](10, 4) NULL,
	[AssessmentPersonalNeedsProfileScreenEnhancementId] [int] NULL,
	[ForegroundColor] [nchar](6) NULL,
 CONSTRAINT [PK_AssessmentNeedScreenEnhancement] PRIMARY KEY CLUSTERED 
(
	[AssessmentNeedScreenEnhancementId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[AssessmentParticipantSession]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[AssessmentParticipantSession](
	[AssessmentParticipantSessionId] [int] IDENTITY(1,1) NOT NULL,
	[ActualStartDateTime] [datetime] NULL,
	[ActualEndDateTime] [datetime] NULL,
	[TimeAssessed] [nvarchar](30) NULL,
	[RefAssessmentPlatformTypeId] [int] NULL,
	[DeliveryDeviceDetails] [nvarchar](300) NULL,
	[SecurityIssue] [nvarchar](300) NULL,
	[RefAssessmentSessionSpecialCircumstanceTypeId] [int] NULL,
	[SpecialEventDescription] [nvarchar](60) NULL,
	[LocationId] [int] NULL,
	[RefLanguageId] [int] NULL,
	[AssessmentFormSectionId] [int] NULL,
	[AssessmentSessionId] [int] NOT NULL,
	[AssessmentRegistrationId] [int] NULL,
	[AssessmentParticipantSessionDatabaseName] [nvarchar](300) NULL,
	[AssessmentParticipantSessionGUID] [nvarchar](40) NULL,
 CONSTRAINT [PK_AssessmentParticipantSession] PRIMARY KEY CLUSTERED 
(
	[AssessmentParticipantSessionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[AssessmentParticipantSession_Accommodation]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[AssessmentParticipantSession_Accommodation](
	[AssessmentParticipantSession_AccommodationId] [int] IDENTITY(1,1) NOT NULL,
	[AssessmentParticipantSessionId] [int] NOT NULL,
	[RefAssessmentAccommodationTypeId] [int] NOT NULL,
	[RefAssessmentAccommodationCategoryId] [int] NULL,
 CONSTRAINT [PK_AssessmentParticipantSession_Accomodation] PRIMARY KEY CLUSTERED 
(
	[AssessmentParticipantSession_AccommodationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [IX_AssessmentParticipantSession_Accomodation] UNIQUE NONCLUSTERED 
(
	[AssessmentParticipantSessionId] ASC,
	[RefAssessmentAccommodationTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[AssessmentPerformanceLevel]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[AssessmentPerformanceLevel](
	[AssessmentPerformanceLevelId] [int] IDENTITY(1,1) NOT NULL,
	[Identifier] [nvarchar](40) NULL,
	[AssessmentSubtestId] [int] NULL,
	[ScoreMetric] [nvarchar](30) NULL,
	[Label] [nvarchar](20) NULL,
	[LowerCutScore] [nvarchar](30) NULL,
	[UpperCutScore] [nvarchar](30) NULL,
	[DescriptiveFeedback] [nvarchar](max) NULL,
 CONSTRAINT [PK_AssessmentPerformanceLevel] PRIMARY KEY CLUSTERED 
(
	[AssessmentPerformanceLevelId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
;
/****** Object:  Table [dbo].[AssessmentPersonalNeedLanguageLearner]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[AssessmentPersonalNeedLanguageLearner](
	[AssessmentPersonalNeedLanguageLearnerId] [int] IDENTITY(1,1) NOT NULL,
	[AssessmentNeedsProfileContentId] [int] NOT NULL,
	[AssignedSupport] [bit] NULL,
	[ActivateByDefault] [bit] NULL,
	[RefAssessmentNeedsProfileContentLanguageLearnerTypeId] [int] NOT NULL,
 CONSTRAINT [PK_AssessmentNeedsProfileContentLanguageLearner] PRIMARY KEY CLUSTERED 
(
	[AssessmentPersonalNeedLanguageLearnerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[AssessmentPersonalNeedScreenReader]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[AssessmentPersonalNeedScreenReader](
	[AssessmentPersonalNeedScreenReaderId] [int] IDENTITY(1,1) NOT NULL,
	[AssessmentPersonalNeedsProfileDisplayId] [int] NOT NULL,
	[RefAssessmentNeedUsageTypeId] [int] NULL,
	[SpeechRate] [int] NULL,
	[Pitch] [decimal](10, 4) NULL,
	[Volume] [decimal](10, 4) NULL,
 CONSTRAINT [PK_AssessmentPersonalNeedScreenReader] PRIMARY KEY CLUSTERED 
(
	[AssessmentPersonalNeedScreenReaderId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[AssessmentPersonalNeedsProfile]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[AssessmentPersonalNeedsProfile](
	[AssessmentPersonalNeedsProfileId] [int] IDENTITY(1,1) NOT NULL,
	[AssessmentNeedType] [nvarchar](max) NOT NULL,
	[AssignedSupportFlag] [bit] NULL,
	[ActivateByDefault] [bit] NULL,
 CONSTRAINT [PK_AssessmentNeedsProfile] PRIMARY KEY CLUSTERED 
(
	[AssessmentPersonalNeedsProfileId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
;
/****** Object:  Table [dbo].[AssessmentPersonalNeedsProfileContent]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[AssessmentPersonalNeedsProfileContent](
	[AssessmentPersonalNeedsProfileContentId] [int] IDENTITY(1,1) NOT NULL,
	[AssessmentPersonalNeedsProfileId] [int] NOT NULL,
	[RefAssessmentNeedHazardTypeId] [int] NULL,
	[RefAssessmentNeedSupportToolId] [int] NULL,
	[CognitiveGuidanceActivateByDefaultIndicator] [bit] NULL,
	[CognitiveGuidanceAssignedSupportIndicator] [bit] NULL,
	[ScaffoldingAssignedSupportIndicator] [bit] NULL,
	[ScaffoldingActivateByDefaultIndicator] [bit] NULL,
	[ChunkingAssignedSupportIndicator] [bit] NULL,
	[ChunkingActivateByDefaultIndicator] [bit] NULL,
	[KeywordEmphasisAssignedSupportIndicator] [bit] NULL,
	[KeywordEmphasisActivateByDefaultIndicator] [bit] NULL,
	[ReducedAnswersAssignedSupportIndicator] [bit] NULL,
	[ReducedAnswersActivateByDefaultIndicator] [bit] NULL,
	[NegativesRemovedAssignedSupportIndicator] [bit] NULL,
	[NegativesRemovedActivateByDefaultIndicator] [bit] NULL,
	[RefKeywordTranslationsLanguageId] [int] NULL,
	[KeywordTranslationsAssignedSupportIndicator] [bit] NULL,
	[KeywordTranslationsActivateByDefaultIndicator] [bit] NULL,
 CONSTRAINT [PK_AssessmentNeedsProfileContent] PRIMARY KEY CLUSTERED 
(
	[AssessmentPersonalNeedsProfileContentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[AssessmentPersonalNeedsProfileControl]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[AssessmentPersonalNeedsProfileControl](
	[AssessmentPersonalNeedsProfileControlId] [int] IDENTITY(1,1) NOT NULL,
	[AssessmentPersonalNeedsProfileId] [int] NOT NULL,
 CONSTRAINT [PK_AssessmentPersonalNeedsProfileControl] PRIMARY KEY CLUSTERED 
(
	[AssessmentPersonalNeedsProfileControlId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[AssessmentPersonalNeedsProfileDisplay]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[AssessmentPersonalNeedsProfileDisplay](
	[AssessmentPersonalNeedsProfileDisplayId] [int] IDENTITY(1,1) NOT NULL,
	[AssessmentPersonalNeedsProfileId] [int] NOT NULL,
 CONSTRAINT [PK_AssessmentPersonalNeedsProfileDisplay] PRIMARY KEY CLUSTERED 
(
	[AssessmentPersonalNeedsProfileDisplayId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[AssessmentPersonalNeedsProfileScreenEnhancement]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[AssessmentPersonalNeedsProfileScreenEnhancement](
	[AssessmentPersonalNeedsProfileScreenEnhancementId] [int] IDENTITY(1,1) NOT NULL,
	[AssessmentPersonalNeedsProfileId] [int] NOT NULL,
 CONSTRAINT [PK_AssessmentPersonalNeedsProfileScreenEnhancement] PRIMARY KEY CLUSTERED 
(
	[AssessmentPersonalNeedsProfileScreenEnhancementId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[AssessmentRegistration]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[AssessmentRegistration](
	[AssessmentRegistrationId] [int] IDENTITY(1,1) NOT NULL,
	[CreationDate] [datetime] NULL,
	[DaysOfInstructionPriorToAssessment] [int] NULL,
	[ScorePublishDate] [date] NULL,
	[TestAttemptIdentifier] [nvarchar](40) NULL,
	[RetestIndicator] [bit] NULL,
	[CourseSectionOrganizationId] [int] NULL,
	[RefAssessmentParticipationIndicatorId] [int] NULL,
	[TestingIndicator] [nvarchar](300) NULL,
	[RefAssessmentPurposeId] [int] NULL,
	[RefAssessmentReasonNotTestedId] [int] NULL,
	[RefAssessmentReasonNotCompletingId] [int] NULL,
	[RefGradeLevelToBeAssessedId] [int] NULL,
	[RefGradeLevelWhenAssessedId] [int] NULL,
	[PersonId] [int] NOT NULL,
	[AssessmentFormId] [int] NOT NULL,
	[OrganizationId] [int] NULL,
	[SchoolOrganizationId] [int] NULL,
	[LeaOrganizationId] [int] NULL,
	[AssessmentAdministrationId] [int] NULL,
	[AssignedByPersonId] [int] NULL,
	[AssessmentRegistrationCompletionStatusDateTime] [datetime] NULL,
	[RefAssessmentRegistrationCompletionStatusId] [int] NULL,
 CONSTRAINT [PK_AssessmentRegistration] PRIMARY KEY CLUSTERED 
(
	[AssessmentRegistrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[AssessmentRegistration_Accommodation]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[AssessmentRegistration_Accommodation](
	[AssessmentRegistration_AccommodationId] [int] IDENTITY(1,1) NOT NULL,
	[AssessmentRegistrationId] [int] NOT NULL,
	[RefAssessmentAccommodationTypeId] [int] NOT NULL,
	[OtherDescription] [nvarchar](30) NULL,
	[RefAssessmentAccommodationCategoryId] [int] NULL,
 CONSTRAINT [PK_AssessmentRegistration_Accommodation] PRIMARY KEY CLUSTERED 
(
	[AssessmentRegistration_AccommodationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [IX_AssessmentRegistration_Accommodation] UNIQUE NONCLUSTERED 
(
	[AssessmentRegistrationId] ASC,
	[RefAssessmentAccommodationTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[AssessmentResult]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[AssessmentResult](
	[AssessmentResultId] [int] IDENTITY(1,1) NOT NULL,
	[ScoreValue] [nvarchar](35) NULL,
	[RefScoreMetricTypeId] [int] NULL,
	[PreliminaryIndicator] [bit] NULL,
	[RefAssessmentPretestOutcomeId] [int] NULL,
	[NumberOfResponses] [int] NULL,
	[DiagnosticStatement] [nvarchar](max) NULL,
	[DiagnosticStatementSource] [nvarchar](300) NULL,
	[DescriptiveFeedback] [nvarchar](300) NULL,
	[DescriptiveFeedbackSource] [nvarchar](60) NULL,
	[InstructionalRecommendation] [nvarchar](100) NULL,
	[IncludedInAypCalculation] [bit] NULL,
	[DateUpdated] [date] NULL,
	[DateCreated] [date] NULL,
	[AssessmentSubtestId] [int] NOT NULL,
	[AssessmentRegistrationId] [int] NOT NULL,
	[RefELOutcomeMeasurementLevelId] [int] NULL,
	[RefOutcomeTimePointId] [int] NULL,
	[AssessmentResultDescriptiveFeedbackDateTime] [datetime] NULL,
	[AssessmentResultScoreStandardError] [decimal](9, 2) NULL,
	[RefAssessmentResultDataTypeId] [int] NULL,
	[RefAssessmentResultScoreTypeId] [int] NULL,
 CONSTRAINT [PK_AssessmentResult] PRIMARY KEY CLUSTERED 
(
	[AssessmentResultId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
;
/****** Object:  Table [dbo].[AssessmentResult_PerformanceLevel]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[AssessmentResult_PerformanceLevel](
	[AssessmentResult_PerformanceLevelId] [int] IDENTITY(1,1) NOT NULL,
	[AssessmentResultId] [int] NOT NULL,
	[AssessmentPerformanceLevelId] [int] NOT NULL,
 CONSTRAINT [PK_AssessmentResult_PerformanceLevel] PRIMARY KEY NONCLUSTERED 
(
	[AssessmentResult_PerformanceLevelId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[AssessmentResultRubricCriterionResult]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[AssessmentResultRubricCriterionResult](
	[AssessmentResultRubricCriterionResultId] [int] IDENTITY(1,1) NOT NULL,
	[AssessmentResultId] [int] NOT NULL,
	[RubricCriterionLevelId] [int] NOT NULL,
 CONSTRAINT [PK_AssessmentResultRubricCriterionResult] PRIMARY KEY CLUSTERED 
(
	[AssessmentResultRubricCriterionResultId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [IX_AssessmentResult_RubricCriterionLevel] UNIQUE NONCLUSTERED 
(
	[AssessmentResultId] ASC,
	[RubricCriterionLevelId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[AssessmentSession]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[AssessmentSession](
	[AssessmentSessionId] [int] IDENTITY(1,1) NOT NULL,
	[AssessmentAdministrationId] [int] NULL,
	[ScheduledStartDateTime] [datetime] NULL,
	[ScheduledEndDateTime] [datetime] NULL,
	[ActualStartDateTime] [datetime] NULL,
	[ActualEndDateTime] [datetime] NULL,
	[AllottedTime] [time](7) NULL,
	[RefAssessmentSessionTypeId] [int] NULL,
	[SecurityIssue] [nvarchar](300) NULL,
	[RefAssessmentSessionSpecialCircumstanceTypeId] [int] NULL,
	[SpecialEventDescription] [nvarchar](60) NULL,
	[Location] [nvarchar](45) NULL,
	[OrganizationId] [int] NULL,
	[Lea_OrganizationId] [int] NULL,
	[School_OrganizationId] [int] NULL,
 CONSTRAINT [PK_AssessmentSession] PRIMARY KEY CLUSTERED 
(
	[AssessmentSessionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[AssessmentSessionStaffRole]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[AssessmentSessionStaffRole](
	[AssessmentSessionStaffRoleId] [int] IDENTITY(1,1) NOT NULL,
	[RefAssessmentSessionStaffRoleTypeId] [int] NULL,
	[PersonId] [int] NOT NULL,
	[AssessmentSessionId] [int] NULL,
	[AssessmentParticipantSessionId] [int] NULL,
 CONSTRAINT [PK_AssessmentSessionStaffRole] PRIMARY KEY CLUSTERED 
(
	[AssessmentSessionStaffRoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[AssessmentSubtest]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[AssessmentSubtest](
	[AssessmentSubtestId] [int] IDENTITY(1,1) NOT NULL,
	[Identifier] [nvarchar](40) NULL,
	[RefAssessmentSubtestIdentifierTypeId] [int] NULL,
	[Title] [nvarchar](60) NULL,
	[Version] [nvarchar](30) NULL,
	[PublishedDate] [date] NULL,
	[Abbreviation] [nvarchar](30) NULL,
	[RefScoreMetricTypeId] [int] NULL,
	[MinimumValue] [nvarchar](30) NULL,
	[MaximumValue] [nvarchar](30) NULL,
	[OptimalValue] [nvarchar](30) NULL,
	[Tier] [int] NULL,
	[ContainerOnly] [nvarchar](30) NULL,
	[RefAssessmentPurposeId] [int] NULL,
	[Description] [nvarchar](60) NULL,
	[Rules] [nvarchar](max) NULL,
	[RefContentStandardTypeId] [int] NULL,
	[RefAcademicSubjectId] [int] NULL,
	[ChildOf_AssessmentSubtestId] [int] NULL,
	[AssessmentFormId] [int] NULL,
 CONSTRAINT [XPKAssessmentSubTest] PRIMARY KEY CLUSTERED 
(
	[AssessmentSubtestId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
;
/****** Object:  Table [dbo].[AssessmentSubtest_AssessmentItem]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[AssessmentSubtest_AssessmentItem](
	[AssessmentSubtestItemId] [int] IDENTITY(1,1) NOT NULL,
	[AssessmentSubtestId] [int] NOT NULL,
	[AssessmentItemId] [int] NOT NULL,
	[ItemWeightCorrect] [decimal](3, 2) NULL,
	[ItemWeightIncorrect] [decimal](3, 2) NULL,
	[ItemWeightNotAttempted] [decimal](3, 2) NULL,
 CONSTRAINT [PK_AssessmentSubtest_AssessmentItem] PRIMARY KEY CLUSTERED 
(
	[AssessmentSubtestItemId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[AssessmentSubtest_LearningStandardItem]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[AssessmentSubtest_LearningStandardItem](
	[AssessmentSubTest_LearningStandardItemId] [int] IDENTITY(1,1) NOT NULL,
	[AssessmentSubtestId] [int] NOT NULL,
	[LearningStandardItemId] [int] NOT NULL,
 CONSTRAINT [PK_AssessmentSubtestLearningStandardItem] PRIMARY KEY CLUSTERED 
(
	[AssessmentSubTest_LearningStandardItemId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [IX_AssessmentSubtest_LearningStandardItem] UNIQUE NONCLUSTERED 
(
	[AssessmentSubtestId] ASC,
	[LearningStandardItemId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[AssessmentSubtestELDevelopmentalDomain]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[AssessmentSubtestELDevelopmentalDomain](
	[AssessmentSubtestELDevelopmentalDomainId] [int] IDENTITY(1,1) NOT NULL,
	[AssessmentSubtestId] [int] NOT NULL,
	[RefAssessmentELDevelopmentalDomainId] [int] NOT NULL,
 CONSTRAINT [PK_AssessmentSubtestELDevelopmentalDomain] PRIMARY KEY CLUSTERED 
(
	[AssessmentSubtestELDevelopmentalDomainId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [IX_AssessmentSubtestELDevelopmentalDomain] UNIQUE NONCLUSTERED 
(
	[AssessmentSubtestId] ASC,
	[RefAssessmentELDevelopmentalDomainId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[AssessmentSubtestLevelsForWhichDesigned]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[AssessmentSubtestLevelsForWhichDesigned](
	[AssessmentSubtestLevelsForWhichDesignedId] [int] IDENTITY(1,1) NOT NULL,
	[AssessmentSubTestId] [int] NOT NULL,
	[RefGradeId] [int] NOT NULL,
 CONSTRAINT [PK_AssessmentSubtestLevelsForWhichDesigned] PRIMARY KEY CLUSTERED 
(
	[AssessmentSubtestLevelsForWhichDesignedId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [IX_AssessmentSubtestLevelsForWhichDesigned] UNIQUE NONCLUSTERED 
(
	[AssessmentSubTestId] ASC,
	[RefGradeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[Authentication]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[Authentication](
	[AuthenticationId] [int] IDENTITY(1,1) NOT NULL,
	[OrganizationPersonRoleId] [int] NOT NULL,
	[IdentityProviderName] [nvarchar](60) NULL,
	[IdentityProviderUri] [nvarchar](300) NULL,
	[LoginIdentifier] [nvarchar](40) NULL,
	[StartDate] [date] NULL,
	[EndDate] [date] NULL,
 CONSTRAINT [PK_Authentication] PRIMARY KEY CLUSTERED 
(
	[AuthenticationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[Authorization]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[Authorization](
	[AuthorizationId] [int] IDENTITY(1,1) NOT NULL,
	[OrganizationPersonRoleId] [int] NOT NULL,
	[ApplicationId] [int] NULL,
	[ApplicationRoleName] [nvarchar](60) NOT NULL,
	[StartDate] [date] NULL,
	[EndDate] [date] NULL,
 CONSTRAINT [PK_Authorization] PRIMARY KEY CLUSTERED 
(
	[AuthorizationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[Classroom]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[Classroom](
	[LocationId] [int] NOT NULL,
	[ClassroomIdentifier] [nvarchar](40) NULL,
 CONSTRAINT [PK_Classroom] PRIMARY KEY CLUSTERED 
(
	[LocationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[CompetencyItem_CompetencySet]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[CompetencyItem_CompetencySet](
	[CompetencyItem_CompetencySetId] [int] IDENTITY(1,1) NOT NULL,
	[LearningStandardItemId] [int] NOT NULL,
	[CompetencySetId] [int] NOT NULL,
 CONSTRAINT [PK_CompetencyItem_CompetencySet] PRIMARY KEY CLUSTERED 
(
	[CompetencyItem_CompetencySetId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [IX_CompetencyItem_CompetencySet] UNIQUE NONCLUSTERED 
(
	[LearningStandardItemId] ASC,
	[CompetencySetId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[CompetencySet]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[CompetencySet](
	[CompetencySetId] [int] IDENTITY(1,1) NOT NULL,
	[ChildOf_CompetencySet] [int] NULL,
	[RefCompletionCriteriaId] [int] NULL,
	[CompletionCriteriaThreshold] [int] NULL,
 CONSTRAINT [PK_CompetencySet] PRIMARY KEY CLUSTERED 
(
	[CompetencySetId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[CoreKnowledgeArea]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[CoreKnowledgeArea](
	[CoreKnowledgeAreaId] [int] IDENTITY(1,1) NOT NULL,
	[ProfessionalDevelopmentActivityId] [int] NOT NULL,
	[RefCoreKnowledgeAreaId] [int] NOT NULL,
 CONSTRAINT [PK_CoreKnowledgeArea] PRIMARY KEY CLUSTERED 
(
	[CoreKnowledgeAreaId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [IX_CoreKnowledgeArea] UNIQUE NONCLUSTERED 
(
	[ProfessionalDevelopmentActivityId] ASC,
	[RefCoreKnowledgeAreaId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[Course]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[Course](
	[OrganizationId] [int] NOT NULL,
	[Description] [nvarchar](60) NULL,
	[SubjectAbbreviation] [nvarchar](50) NULL,
	[SCEDSequenceOfCourse] [nvarchar](50) NULL,
	[InstructionalMinutes] [int] NULL,
	[RefCourseLevelCharacteristicsId] [int] NULL,
	[RefCourseCreditUnitId] [int] NULL,
	[CreditValue] [decimal](9, 2) NULL,
	[RefInstructionLanguage] [int] NULL,
	[CertificationDescription] [nvarchar](300) NULL,
	[RefCourseApplicableEducationLevelId] [int] NULL,
 CONSTRAINT [PK_Course] PRIMARY KEY CLUSTERED 
(
	[OrganizationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[CourseSection]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[CourseSection](
	[OrganizationId] [int] NOT NULL,
	[AvailableCarnegieUnitCredit] [decimal](9, 2) NULL,
	[RefCourseSectionDeliveryModeId] [int] NULL,
	[RefSingleSexClassStatusId] [int] NULL,
	[TimeRequiredForCompletion] [decimal](9, 0) NULL,
	[CourseId] [int] NOT NULL,
	[RefAdditionalCreditTypeId] [int] NULL,
	[RefInstructionLanguageId] [int] NULL,
	[VirtualIndicator] [bit] NULL,
	[OrganizationCalendarSessionId] [int] NULL,
	[RefCreditTypeEarnedId] [int] NULL,
	[RelatedLearningStandards] [nvarchar](60) NULL,
	[RefAdvancedPlacementCourseCodeId] [int] NULL,
	[MaximumCapacity] [int] NULL,
 CONSTRAINT [PK_CourseSection] PRIMARY KEY CLUSTERED 
(
	[OrganizationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[CourseSectionAssessmentReporting]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[CourseSectionAssessmentReporting](
	[CourseSectionAssessmentReportingId] [int] IDENTITY(1,1) NOT NULL,
	[OrganizationId] [int] NULL,
	[RefCourseSectionAssessmentReportingMethodId] [int] NULL,
 CONSTRAINT [PK_CourseSectionAssessmentReporting] PRIMARY KEY CLUSTERED 
(
	[CourseSectionAssessmentReportingId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[CourseSectionLocation]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[CourseSectionLocation](
	[CourseSectionLocationId] [int] IDENTITY(1,1) NOT NULL,
	[LocationId] [int] NOT NULL,
	[OrganizationId] [int] NOT NULL,
	[RefInstructionLocationTypeId] [int] NULL,
 CONSTRAINT [PK_CourseSectionLocation] PRIMARY KEY CLUSTERED 
(
	[CourseSectionLocationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[CourseSectionSchedule]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[CourseSectionSchedule](
	[CourseSectionScheduleId] [int] IDENTITY(1,1) NOT NULL,
	[OrganizationId] [int] NOT NULL,
	[ClassMeetingDays] [nvarchar](60) NULL,
	[ClassBeginningTime] [time](7) NULL,
	[ClassEndingTime] [time](7) NULL,
	[ClassPeriod] [nvarchar](30) NULL,
	[TimeDayIdentifier] [nvarchar](40) NULL,
 CONSTRAINT [PK_CourseSectionSchedule] PRIMARY KEY CLUSTERED 
(
	[CourseSectionScheduleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[CteCourse]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[CteCourse](
	[OrganizationId] [int] NOT NULL,
	[AvailableCarnegieUnitCredit] [decimal](9, 2) NULL,
	[RefAdditionalCreditTypeId] [int] NULL,
	[RefCreditTypeEarnedId] [int] NULL,
	[HighSchoolCourseRequirement] [bit] NULL,
	[RefCourseGpaApplicabilityId] [int] NULL,
	[CoreAcademicCourse] [bit] NULL,
	[RefCurriculumFrameworkTypeId] [int] NULL,
	[CourseAlignedWithStandards] [bit] NULL,
	[SCEDCourseCode] [nchar](5) NULL,
	[RefSCEDCourseLevelId] [int] NULL,
	[RefSCEDCourseSubjectAreaId] [int] NULL,
	[RefCareerClusterId] [int] NULL,
	[CourseDepartmentName] [nvarchar](60) NULL,
 CONSTRAINT [PK_CteCourse] PRIMARY KEY CLUSTERED 
(
	[OrganizationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[CteStudentAcademicRecord]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[CteStudentAcademicRecord](
	[OrganizationPersonRoleId] [int] NOT NULL,
	[CreditsAttemptedCumulative] [decimal](9, 2) NULL,
	[CreditsEarnedCumulative] [decimal](9, 2) NULL,
	[RefProfessionalTechnicalCredentialTypeId] [int] NULL,
	[DiplomaOrCredentialAwardDate] [nchar](7) NULL,
 CONSTRAINT [PK_CteStudentAcademicRecord] PRIMARY KEY CLUSTERED 
(
	[OrganizationPersonRoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[EarlyChildhoodCredential]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[EarlyChildhoodCredential](
	[PersonCredentialId] [int] NOT NULL,
	[RefEarlyChildhoodCredentialId] [int] NOT NULL,
 CONSTRAINT [PK_EarlyChildhoodCredential] PRIMARY KEY CLUSTERED 
(
	[PersonCredentialId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[EarlyChildhoodProgramTypeOffered]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[EarlyChildhoodProgramTypeOffered](
	[EarlyChildhoodProgramTypeOfferedId] [int] IDENTITY(1,1) NOT NULL,
	[OrganizationId] [int] NOT NULL,
	[RefEarlyChildhoodProgramEnrollmentTypeId] [int] NOT NULL,
	[InclusiveSettingIndicator] [bit] NULL,
	[RefCommunityBasedTypeId] [int] NULL,
 CONSTRAINT [PK_EarlyChildhoodProgramTypeOffered] PRIMARY KEY CLUSTERED 
(
	[EarlyChildhoodProgramTypeOfferedId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [IX_EarlyChildhoodProgramTypeOffered] UNIQUE NONCLUSTERED 
(
	[OrganizationId] ASC,
	[RefEarlyChildhoodProgramEnrollmentTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[ELChildDemographic]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[ELChildDemographic](
	[PersonId] [int] NOT NULL,
	[FosterCareStartDate] [date] NULL,
	[FosterCareEndDate] [date] NULL,
	[OtherRaceIndicator] [bit] NULL,
 CONSTRAINT [PK_ELChildDemographic] PRIMARY KEY CLUSTERED 
(
	[PersonId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[ELChildDevelopmentalAssessment]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[ELChildDevelopmentalAssessment](
	[PersonId] [int] NOT NULL,
	[RefChildDevelopmentalScreeningStatusId] [int] NULL,
	[RefDevelopmentalEvaluationFindingId] [int] NULL,
 CONSTRAINT [PK_ELChildDevelopmentalAssessment] PRIMARY KEY CLUSTERED 
(
	[PersonId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[ELChildHealth]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[ELChildHealth](
	[PersonId] [int] NOT NULL,
	[WellChildScreeningReceivedDate] [date] NULL,
	[RefScheduledWellChildScreeningId] [int] NULL,
 CONSTRAINT [PK_ELChildHealth] PRIMARY KEY CLUSTERED 
(
	[PersonId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[ELChildIndividualizedProgram]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[ELChildIndividualizedProgram](
	[PersonId] [int] NOT NULL,
	[RefIDEAIEPStatusId] [int] NULL,
	[IndividualizedProgramId] [int] NULL,
	[RefIDEAPartCEligibilityCategoryId] [int] NULL,
 CONSTRAINT [PK_ELChildIndividualizedProgram] PRIMARY KEY CLUSTERED 
(
	[PersonId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[ELChildOutcomeSummary]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[ELChildOutcomeSummary](
	[PersonId] [int] NOT NULL,
	[COSProgressAIndicator] [bit] NULL,
	[COSProgressBIndicator] [bit] NULL,
	[COSProgressCIndicator] [bit] NULL,
	[COSRatingAId] [int] NULL,
	[COSRatingBId] [int] NULL,
	[COSRatingCId] [int] NULL,
 CONSTRAINT [PK_ELChildOutcomeSummary] PRIMARY KEY CLUSTERED 
(
	[PersonId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[ELChildProgramEligibility]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[ELChildProgramEligibility](
	[OrganizationPersonRoleId] [int] NOT NULL,
	[RefELProgramEligibilityStatusId] [int] NULL,
	[StatusDate] [date] NULL,
	[ExpirationDate] [date] NULL,
 CONSTRAINT [PK_ELChildProgramEligibility] PRIMARY KEY CLUSTERED 
(
	[OrganizationPersonRoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[ELChildService]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[ELChildService](
	[OrganizationPersonRoleId] [int] NOT NULL,
	[ECEAPEligibility] [bit] NULL,
	[EligibilityPriorityPoints] [nvarchar](100) NULL,
	[ReasonForDeclinedServices] [nvarchar](max) NULL,
	[ServiceDate] [date] NULL,
	[RefEarlyChildhoodServicesOfferedId] [int] NULL,
	[RefEarlyChildhoodServicesReceivedId] [int] NULL,
	[RefELServiceTypeId] [int] NULL,
 CONSTRAINT [PK_ELChildService] PRIMARY KEY CLUSTERED 
(
	[OrganizationPersonRoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
;
/****** Object:  Table [dbo].[ELChildServicesApplication]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[ELChildServicesApplication](
	[OrganizationPersonRoleId] [int] NOT NULL,
	[ELApplicationIdentifier] [nvarchar](40) NULL,
	[ApplicationDate] [date] NULL,
	[ELEnrollmentApplicationDocumentIdentifier] [nvarchar](40) NULL,
	[ELEnrollmentApplicationDocumentName] [nvarchar](60) NULL,
	[ELEnrollmentApplicationDocumentType] [nvarchar](100) NULL,
	[ELApplicationRequiredDocument] [bit] NULL,
	[ELEnrollmentApplicationVerificationDate] [date] NULL,
	[ELEnrollmentApplicationVerificationReasonType] [nvarchar](100) NULL,
	[SitePreferenceRank] [nvarchar](300) NULL,
 CONSTRAINT [PK_ELChildServicesApplication] PRIMARY KEY CLUSTERED 
(
	[OrganizationPersonRoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[ELChildTransitionPlan]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[ELChildTransitionPlan](
	[PersonId] [int] NOT NULL,
	[PartB619PotentialEligibilityInd] [bit] NULL,
	[IDEAPartCToPartBNotificationDate] [date] NULL,
	[TransitionConferenceDate] [date] NULL,
	[TransitionConferenceDeclineDate] [date] NULL,
	[DateOfTransitionPlan] [date] NULL,
	[IDEAPartCToPartBNotificationOptOutDate] [date] NULL,
	[IDEAPartCToPartBNotificationOptOutIndicator] [bit] NULL,
	[RefReasonDelayTransitionConfId] [int] NULL,
	[IndividualizedProgramId] [int] NULL,
 CONSTRAINT [PK_ELChildIDEA] PRIMARY KEY CLUSTERED 
(
	[PersonId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[ELClassSection]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[ELClassSection](
	[OrganizationId] [int] NOT NULL,
	[RefServiceOptionId] [int] NULL,
	[HoursAvailablePerDay] [decimal](4, 2) NULL,
	[DaysAvailablePerWeek] [int] NULL,
	[RefEnvironmentSettingId] [int] NULL,
	[ELProgramAnnualOperatingWeeks] [int] NULL,
	[LanguageTranslationPolicy] [bit] NULL,
	[GroupSize] [int] NULL,
 CONSTRAINT [PK_ELClassSection] PRIMARY KEY CLUSTERED 
(
	[OrganizationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[ELClassSectionService]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[ELClassSectionService](
	[ELClassSectionServiceId] [int] IDENTITY(1,1) NOT NULL,
	[OrganizationId] [int] NOT NULL,
	[YoungestAgeServed] [int] NULL,
	[OldestAgeServed] [int] NULL,
	[ServesChildrenWithSpecialNeeds] [bit] NULL,
	[RefELGroupSizeStandardMetId] [int] NULL,
	[ELClassGroupCurriculumType] [nvarchar](60) NULL,
	[RefFrequencyOfServiceId] [int] NULL,
 CONSTRAINT [PK_ELClassSectionService] PRIMARY KEY CLUSTERED 
(
	[ELClassSectionServiceId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[ELEnrollment]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[ELEnrollment](
	[OrganizationPersonRoleId] [int] NOT NULL,
	[ApplicationDate] [date] NULL,
	[EnrollmentDate] [date] NULL,
	[RefIDEAEnvironmentELId] [int] NULL,
	[NumberOfDaysInAttendance] [decimal](8, 2) NULL,
	[RefFoodServiceParticipationId] [int] NULL,
	[RefServiceOptionId] [int] NULL,
	[ELClassSectionId] [int] NULL,
	[RefELFederalFundingTypeId] [int] NULL,
 CONSTRAINT [XPKECEnrollment] PRIMARY KEY CLUSTERED 
(
	[OrganizationPersonRoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[ELEnrollmentOtherFunding]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[ELEnrollmentOtherFunding](
	[ELEnrollmentOtherFundingId] [int] IDENTITY(1,1) NOT NULL,
	[PersonId] [int] NOT NULL,
	[RefELOtherFederalFundingSourcesId] [int] NOT NULL,
 CONSTRAINT [PK_ELEnrollmentOtherFunding] PRIMARY KEY CLUSTERED 
(
	[ELEnrollmentOtherFundingId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[ELFacilityLicensing]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[ELFacilityLicensing](
	[ELFacilityLicensingId] [int] IDENTITY(1,1) NOT NULL,
	[OrganizationId] [int] NOT NULL,
	[RefELFacilityLicensingStatusId] [int] NULL,
	[StateLicensedFacilityCapacity] [int] NULL,
	[InitialLicensingDate] [date] NULL,
	[ContinuingLicenseDate] [date] NULL,
	[RefLicenseExemptId] [int] NULL,
 CONSTRAINT [PK_ELFacilityLicensing] PRIMARY KEY CLUSTERED 
(
	[ELFacilityLicensingId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[ELOrganizationAvailability]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[ELOrganizationAvailability](
	[OrganizationId] [int] NOT NULL,
	[DaysAvailablePerWeek] [int] NULL,
	[HoursAvailablePerDay] [int] NULL,
	[YoungestAgeServed] [int] NULL,
	[OldestAgeServed] [int] NULL,
	[AgeUnit] [nvarchar](10) NULL,
	[RefEnvironmentSettingId] [int] NULL,
	[NumberOfClassrooms] [int] NULL,
	[RefServiceOptionId] [int] NULL,
	[RefPopulationServedId] [int] NULL,
	[AnnualOperatingWeeks] [int] NULL,
 CONSTRAINT [PK_ELOrganizationAvailability] PRIMARY KEY CLUSTERED 
(
	[OrganizationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[ELOrganizationFunds]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[ELOrganizationFunds](
	[OrganizationId] [int] NOT NULL,
	[RefELFederalFundingTypeId] [int] NULL,
	[RefELLocalRevenueSourceId] [int] NULL,
	[RefELOtherFederalFundingSourcesId] [int] NULL,
	[RefELStateRevenueSourceId] [int] NULL,
	[RefBillableBasisTypeId] [int] NULL,
	[RefReimbursementTypeId] [int] NULL,
 CONSTRAINT [PK_ELOrganizationFunds] PRIMARY KEY CLUSTERED 
(
	[OrganizationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[ELOrganizationMonitoring]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[ELOrganizationMonitoring](
	[ELOrganizationMonitoringId] [int] IDENTITY(1,1) NOT NULL,
	[OrganizationId] [int] NOT NULL,
	[VisitStartDate] [date] NULL,
	[VisitEndDate] [date] NULL,
	[RefPurposeOfMonitoringVisitId] [int] NULL,
	[TypeOfMonitoring] [nvarchar](300) NULL,
	[RefOrganizationMonitoringNotificationsId] [int] NULL,
 CONSTRAINT [PK_ELOrganizationMonitoring] PRIMARY KEY CLUSTERED 
(
	[ELOrganizationMonitoringId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[ELProgramLicensing]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[ELProgramLicensing](
	[ELProgramLicensingId] [int] IDENTITY(1,1) NOT NULL,
	[OrganizationId] [int] NOT NULL,
	[RefELProgramLicenseStatusId] [int] NULL,
	[InitialLicenseDate] [date] NULL,
	[ContinuingLicenseDate] [date] NULL,
	[LicenseSuspensionStatus] [bit] NULL,
	[LicenseRevocationStatus] [bit] NULL,
	[NumberOfFatalities] [int] NULL,
	[NumberOfInjuries] [int] NULL,
	[RefLicenseExemptId] [int] NULL,
 CONSTRAINT [PK_ELProgramLicensing] PRIMARY KEY CLUSTERED 
(
	[ELProgramLicensingId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[ELQualityInitiative]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[ELQualityInitiative](
	[ELQualityInitiativeId] [int] IDENTITY(1,1) NOT NULL,
	[OrganizationId] [int] NOT NULL,
	[MaximumScore] [nvarchar](30) NULL,
	[MinimumScore] [nvarchar](30) NULL,
	[ScoreLevel] [nvarchar](30) NULL,
	[ParticipationIndicator] [bit] NULL,
	[ParticipationStartDate] [date] NULL,
	[ParticipationEndDate] [date] NULL,
 CONSTRAINT [PK_ELQualityInitiative] PRIMARY KEY CLUSTERED 
(
	[ELQualityInitiativeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[ELQualityRatingImprovement]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[ELQualityRatingImprovement](
	[ELQualityRatingImprovementId] [int] IDENTITY(1,1) NOT NULL,
	[OrganizationId] [int] NOT NULL,
	[NumberQrisLevels] [int] NULL,
	[QrisAwardDate] [date] NULL,
	[QRISExpirationDate] [date] NULL,
	[RefQrisParticipationId] [int] NULL,
	[QrisScore] [nvarchar](45) NULL,
 CONSTRAINT [PK_ELQualityRatingImprovement] PRIMARY KEY CLUSTERED 
(
	[ELQualityRatingImprovementId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[ELServicePartner]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[ELServicePartner](
	[OrganizationId] [int] NOT NULL,
	[ServicePartnerName] [nvarchar](100) NULL,
	[ServicePartnerDescription] [nvarchar](300) NULL,
	[MemorandumOfUnderstandingEndDate] [date] NULL,
	[MemorandumOfUnderstandingStartDate] [date] NULL,
 CONSTRAINT [PK_ELServicePartner] PRIMARY KEY CLUSTERED 
(
	[OrganizationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[ELStaff]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[ELStaff](
	[OrganizationPersonRoleId] [int] NOT NULL,
	[RefChildDevelopmentAssociateTypeId] [int] NULL,
 CONSTRAINT [PK_ELStaff] PRIMARY KEY CLUSTERED 
(
	[OrganizationPersonRoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[ELStaffAssignment]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[ELStaffAssignment](
	[OrganizationPersonRoleId] [int] NOT NULL,
	[ItinerantProvider] [bit] NOT NULL,
 CONSTRAINT [PK_ELStaffAssignment] PRIMARY KEY CLUSTERED 
(
	[OrganizationPersonRoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[ELStaffEducation]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[ELStaffEducation](
	[OrganizationPersonRoleId] [int] NOT NULL,
	[ECDegreeOrCertificateHolder] [bit] NULL,
	[TotalCollegeCreditsEarned] [decimal](10, 2) NULL,
	[RefELLevelOfSpecializationId] [int] NULL,
	[TotalApprovedECCreditsEarned] [decimal](10, 2) NULL,
	[SchoolAgeEducationPSCredits] [decimal](10, 2) NULL,
	[RefELProfessionalDevelopmentTopicAreaId] [int] NULL,
 CONSTRAINT [PK_ELStaffEducation] PRIMARY KEY CLUSTERED 
(
	[OrganizationPersonRoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[ELStaffEmployment]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[ELStaffEmployment](
	[StaffEmploymentId] [int] NOT NULL,
	[RefEmploymentStatusId] [int] NULL,
	[HoursWorkedPerWeek] [decimal](5, 2) NULL,
	[HourlyWage] [decimal](5, 2) NULL,
	[RefWageCollectionMethodId] [int] NULL,
	[RefWageVerificationId] [int] NULL,
	[UnionMembershipStatus] [bit] NULL,
	[StaffApprovalIndicator] [bit] NULL,
	[RefELEducationStaffClassificationId] [int] NULL,
	[RefELEmploymentSeparationReasonId] [int] NULL,
	[RefELServiceProfessionalStaffClassificationId] [int] NULL,
 CONSTRAINT [PK_ELStaffEmployment] PRIMARY KEY CLUSTERED 
(
	[StaffEmploymentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[Facility]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[Facility](
	[LocationId] [int] NOT NULL,
	[Identifier] [nvarchar](40) NULL,
	[BuildingName] [nvarchar](60) NULL,
	[SpaceDescription] [nvarchar](300) NULL,
	[RefSpaceUseTypeId] [int] NULL,
	[BuildingSiteNumber] [nvarchar](30) NULL,
	[RefBuildingUseTypeId] [int] NULL,
 CONSTRAINT [PK_Facility] PRIMARY KEY CLUSTERED 
(
	[LocationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[FinancialAccount]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[FinancialAccount](
	[FinancialAccountId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[Description] [nvarchar](300) NULL,
	[AccountNumber] [nvarchar](30) NULL,
	[RefFinancialAccountCategoryId] [int] NULL,
	[RefFinancialAccountFundClassificationId] [int] NULL,
	[RefFinancialAccountProgramCodeId] [int] NULL,
	[RefFinancialAccountBalanceSheetCodeId] [int] NULL,
	[RefFinancialExpenditureFunctionCodeId] [int] NULL,
	[RefFinancialExpenditureObjectCodeId] [int] NULL,
	[FinancialAccountNumber] [nvarchar](30) NULL,
	[FinancialExpenditureProjectReportingCode] [decimal](3, 0) NULL,
	[RefFinancialExpenditureLevelOfInstructionCodeId] [int] NULL,
	[RefFinancialAccountRevenueCodeId] [int] NULL,
 CONSTRAINT [PK_FinancialAccount] PRIMARY KEY CLUSTERED 
(
	[FinancialAccountId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[FinancialAccountProgram]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[FinancialAccountProgram](
	[FinancialAccountProgramId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NULL,
	[ProgramNumber] [nvarchar](30) NULL,
 CONSTRAINT [PK_FinancialAccountProgram] PRIMARY KEY CLUSTERED 
(
	[FinancialAccountProgramId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[FinancialAidApplication]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[FinancialAidApplication](
	[FinancialAidApplicationId] [int] IDENTITY(1,1) NOT NULL,
	[OrganizationPersonRoleId] [int] NOT NULL,
	[RefFinancialAidApplicationTypeId] [int] NOT NULL,
	[FinancialAidYearDesignator] [nchar](9) NULL,
 CONSTRAINT [PK_FinancialAidApplication] PRIMARY KEY CLUSTERED 
(
	[FinancialAidApplicationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[FinancialAidAward]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[FinancialAidAward](
	[FinancialAidAwardId] [int] IDENTITY(1,1) NOT NULL,
	[OrganizationPersonRoleId] [int] NOT NULL,
	[RefFinancialAidAwardTypeId] [int] NULL,
	[RefFinancialAidStatusId] [int] NULL,
	[FinancialAidAwardAmount] [decimal](9, 2) NULL,
	[FinancialAidYearDesignator] [nchar](9) NULL,
 CONSTRAINT [PK_FinancialAidAward] PRIMARY KEY CLUSTERED 
(
	[FinancialAidAwardId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[Incident]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[Incident](
	[IncidentId] [int] IDENTITY(1,1) NOT NULL,
	[IncidentIdentifier] [nvarchar](40) NULL,
	[IncidentDate] [date] NULL,
	[IncidentTime] [time](7) NULL,
	[RefIncidentTimeDescriptionCodeId] [int] NULL,
	[IncidentDescription] [nvarchar](max) NULL,
	[RefIncidentBehaviorId] [int] NULL,
	[RefIncidentBehaviorSecondaryId] [int] NULL,
	[RefIncidentInjuryTypeId] [int] NULL,
	[RefWeaponTypeId] [int] NULL,
	[IncidentCost] [nvarchar](30) NULL,
	[OrganizationPersonRoleId] [int] NULL,
	[IncidentReporterId] [int] NULL,
	[RefIncidentReporterTypeId] [int] NULL,
	[RefIncidentLocationId] [int] NULL,
	[RefFirearmTypeId] [int] NULL,
	[RegulationViolatedDescription] [nvarchar](100) NULL,
	[RelatedToDisabilityManifestationInd] [bit] NULL,
	[ReportedToLawEnforcementInd] [bit] NULL,
	[RefIncidentMultipleOffenseTypeId] [int] NULL,
	[RefIncidentPerpetratorInjuryTypeId] [int] NULL,
 CONSTRAINT [PK_Incident] PRIMARY KEY CLUSTERED 
(
	[IncidentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
;
/****** Object:  Table [dbo].[IncidentPerson]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[IncidentPerson](
	[IncidentId] [int] NOT NULL,
	[PersonId] [int] NOT NULL,
	[Identifier] [nvarchar](40) NULL,
	[RefIncidentPersonRoleTypeId] [int] NOT NULL,
	[RefIncidentPersonTypeId] [int] NULL,
 CONSTRAINT [PK_IncidentPerson] PRIMARY KEY NONCLUSTERED 
(
	[IncidentId] ASC,
	[PersonId] ASC,
	[RefIncidentPersonRoleTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[IndividualizedProgram]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[IndividualizedProgram](
	[IndividualizedProgramId] [int] IDENTITY(1,1) NOT NULL,
	[OrganizationPersonRoleId] [int] NOT NULL,
	[RefIndividualizedProgramDateType] [int] NULL,
	[IndividualizedProgramDate] [date] NULL,
	[NonInclusionMinutesPerWeek] [int] NULL,
	[InclusionMinutesPerWeek] [int] NULL,
	[RefIndividualizedProgramTransitionTypeId] [int] NULL,
	[RefIndividualizedProgramTypeId] [int] NULL,
	[ServicePlanDate] [date] NULL,
	[RefIndividualizedProgramLocationId] [int] NULL,
	[ServicePlanMeetingParticipants] [nvarchar](4000) NULL,
	[ServicePlanSignedBy] [nvarchar](4000) NULL,
	[ServicePlanSignatureDate] [date] NULL,
	[ServicePlanReevaluationDate] [date] NULL,
	[RefStudentSupportServiceTypeId] [int] NULL,
 CONSTRAINT [XPKIndividualizedProgram] PRIMARY KEY CLUSTERED 
(
	[IndividualizedProgramId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[IndividualizedProgramService]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[IndividualizedProgramService](
	[IndividualizedProgramServiceId] [int] IDENTITY(1,1) NOT NULL,
	[PersonId] [int] NOT NULL,
	[RefIndividualizedProgramPlannedServiceTypeId] [int] NULL,
	[RefMethodOfServiceDeliveryId] [int] NULL,
	[RefServiceFrequencyId] [int] NULL,
	[PlannedServiceDuration] [decimal](6, 2) NULL,
	[PlannedServiceStartDate] [date] NULL,
 CONSTRAINT [PK_IndividualizedProgramService] PRIMARY KEY CLUSTERED 
(
	[IndividualizedProgramServiceId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[K12Course]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[K12Course](
	[OrganizationId] [int] NOT NULL,
	[HighSchoolCourseRequirement] [bit] NULL,
	[RefAdditionalCreditTypeId] [int] NULL,
	[AvailableCarnegieUnitCredit] [decimal](9, 2) NULL,
	[RefCourseGpaApplicabilityId] [int] NULL,
	[CoreAcademicCourse] [bit] NULL,
	[RefCurriculumFrameworkTypeId] [int] NULL,
	[CourseAlignedWithStandards] [bit] NULL,
	[RefCreditTypeEarnedId] [int] NOT NULL,
	[FundingProgram] [nvarchar](30) NULL,
	[FamilyConsumerSciencesCourseInd] [bit] NULL,
	[SCEDCourseCode] [nchar](5) NULL,
	[SCEDGradeSpan] [nchar](4) NULL,
	[RefSCEDCourseLevelId] [int] NULL,
	[RefSCEDCourseSubjectAreaId] [int] NULL,
	[RefCareerClusterId] [int] NULL,
	[RefBlendedLearningModelTypeId] [int] NULL,
	[RefCourseInteractionModeId] [int] NULL,
	[RefK12EndOfCourseRequirementId] [int] NULL,
	[RefWorkbasedLearningOpportunityTypeId] [int] NULL,
	[CourseDepartmentName] [nvarchar](60) NULL,
 CONSTRAINT [PK_K12Course] PRIMARY KEY CLUSTERED 
(
	[OrganizationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[K12Lea]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[K12Lea](
	[OrganizationId] [int] NOT NULL,
	[RefLeaTypeId] [int] NULL,
	[SupervisoryUnionIdentificationNumber] [nchar](3) NULL,
	[RefLEAImprovementStatusId] [int] NULL,
	[RefPublicSchoolChoiceStatusId] [int] NULL,
 CONSTRAINT [XPKK12Lea] PRIMARY KEY CLUSTERED 
(
	[OrganizationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[K12LeaFederalFunds]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[K12LeaFederalFunds](
	[OrganizationId] [int] NOT NULL,
	[FederalProgramsFundingAllocation] [numeric](12, 2) NULL,
	[RefFederalProgramFundingAllocationTypeId] [int] NULL,
	[FundsTransferAmount] [numeric](12, 2) NULL,
	[InnovativeProgramsFundsReceived] [numeric](12, 2) NULL,
	[InnovativeDollarsSpent] [numeric](12, 2) NULL,
	[InnovativeDollarsSpentOnStrategicPriorities] [numeric](12, 2) NULL,
	[LeaTransferabilityOfFunds] [bit] NULL,
	[RefLeaFundsTransferTypeId] [int] NULL,
	[PublicSchoolChoiceFundsSpent] [numeric](12, 2) NULL,
	[SchoolImprovementReservedPercent] [numeric](5, 2) NULL,
	[SchoolImprovementAllocation] [numeric](12, 2) NULL,
	[SesFundsSpent] [numeric](12, 2) NULL,
	[SesPerPupilExpenditure] [numeric](12, 2) NULL,
	[SesSchoolChoice20PercentObligation] [numeric](12, 2) NULL,
	[RefRlisProgramUseId] [int] NULL,
	[RefReapAlternativeFundingStatusId] [int] NULL,
	[NumberOfImmigrantProgramSubgrants] [int] NULL,
 CONSTRAINT [PK_K12LEAFederalFunds] PRIMARY KEY CLUSTERED 
(
	[OrganizationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[K12LeaFederalReporting]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[K12LeaFederalReporting](
	[OrganizationId] [int] NOT NULL,
	[RefBarrierToEducatingHomelessId] [int] NULL,
	[DesegregationOrderOrPlan] [bit] NULL,
	[HarassmentOrBullyingPolicy] [bit] NULL,
	[RefIntegratedTechnologyStatusId] [int] NULL,
	[StateAssessmentAdminFunding] [numeric](5, 2) NULL,
	[StateAssessStandardsFunding] [numeric](5, 2) NULL,
	[TerminatedTitleIIIProgramFailure] [bit] NULL,
	[InterscholasticSportsMaleOnly] [int] NULL,
	[InterscholasticSportsFemaleOnly] [int] NULL,
	[InterscholasticTeamsMaleOnly] [int] NULL,
	[InterscholasticTeamsFemaleOnly] [int] NULL,
	[InterscholasticSportParticipantsMale] [int] NULL,
	[InterscholasticSportParticipantsFemale] [int] NULL,
 CONSTRAINT [PK_K12LEAFederalReporting] PRIMARY KEY CLUSTERED 
(
	[OrganizationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[K12LeaPreKEligibility]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[K12LeaPreKEligibility](
	[K12LEAPreKEligibilityId] [int] IDENTITY(1,1) NOT NULL,
	[OrganizationId] [int] NOT NULL,
	[RefPrekindergartenEligibilityId] [int] NOT NULL,
 CONSTRAINT [PK_K12LeaPreKEligibility] PRIMARY KEY CLUSTERED 
(
	[K12LEAPreKEligibilityId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [IX_K12LeaPreKEligibility] UNIQUE NONCLUSTERED 
(
	[OrganizationId] ASC,
	[RefPrekindergartenEligibilityId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[K12LeaPreKEligibleAgesIDEA]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[K12LeaPreKEligibleAgesIDEA](
	[K12LEAPreKEligibleAgesIDEAId] [int] IDENTITY(1,1) NOT NULL,
	[OrganizationId] [int] NOT NULL,
	[RefPreKEligibleAgesNonIDEAId] [int] NOT NULL,
 CONSTRAINT [PK_K12LEAPreKEligibleAgesIDEA] PRIMARY KEY CLUSTERED 
(
	[K12LEAPreKEligibleAgesIDEAId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[K12LeaSafeDrugFree]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[K12LeaSafeDrugFree](
	[OrganizationId] [int] NOT NULL,
	[Baseline] [nvarchar](60) NULL,
	[BaselineYear] [nvarchar](20) NULL,
	[CollectionFrequency] [nvarchar](60) NULL,
	[IndicatorName] [nvarchar](60) NULL,
	[Instrument] [nvarchar](100) NULL,
	[Performance] [nvarchar](20) NULL,
	[Target] [nvarchar](20) NULL,
	[MostRecentCollection] [nvarchar](20) NULL,
 CONSTRAINT [XPKK12SchoolSafeDrugFree] PRIMARY KEY CLUSTERED 
(
	[OrganizationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[K12LeaTitleIIIProfessionalDevelopment]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[K12LeaTitleIIIProfessionalDevelopment](
	[K12LEATitleIIIProfessionalDevelopmentId] [int] IDENTITY(1,1) NOT NULL,
	[OrganizationId] [int] NOT NULL,
	[RefTitleIIIProfessionalDevelopmentTypeId] [int] NOT NULL,
 CONSTRAINT [PK_K12LEATitleIIIProfessionalDev] PRIMARY KEY CLUSTERED 
(
	[K12LEATitleIIIProfessionalDevelopmentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [IX_K12LeaTitleIIIProfessionalDevelopment] UNIQUE NONCLUSTERED 
(
	[OrganizationId] ASC,
	[RefTitleIIIProfessionalDevelopmentTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[K12LeaTitleISupportService]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[K12LeaTitleISupportService](
	[K12LeaTitleISupportServiceId] [int] IDENTITY(1,1) NOT NULL,
	[OrganizationId] [int] NOT NULL,
	[RefK12LeaTitleISupportServiceId] [int] NOT NULL,
 CONSTRAINT [PK_K12LEATitleISupportService] PRIMARY KEY CLUSTERED 
(
	[K12LeaTitleISupportServiceId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[K12OrganizationStudentResponsibility]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[K12OrganizationStudentResponsibility](
	[K12OrganizationStudentResponsibilityId] [int] IDENTITY(1,1) NOT NULL,
	[OrganizationPersonRoleId] [int] NOT NULL,
	[RefK12ResponsibilityTypeId] [int] NOT NULL,
 CONSTRAINT [PK_K12OrgStudentResponsibility] PRIMARY KEY CLUSTERED 
(
	[K12OrganizationStudentResponsibilityId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [IX_K12OrganizationStudentResponsibility] UNIQUE NONCLUSTERED 
(
	[OrganizationPersonRoleId] ASC,
	[RefK12ResponsibilityTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[K12ProgramOrService]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[K12ProgramOrService](
	[OrganizationId] [int] NOT NULL,
	[RefPrekindergartenDailyLengthId] [int] NULL,
	[RefKindergartenDailyLengthId] [int] NULL,
	[RefProgramGiftedEligibilityId] [int] NULL,
	[RefMepSessionTypeId] [int] NULL,
	[RefMepProjectTypeId] [int] NULL,
	[ProgramInMultiplePurposeFacility] [bit] NULL,
	[RefTitleIInstructionalServicesId] [int] NULL,
	[RefTitleIProgramTypeId] [int] NULL,
 CONSTRAINT [PK_K12LEAProgram] PRIMARY KEY CLUSTERED 
(
	[OrganizationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[K12School]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[K12School](
	[OrganizationId] [int] NOT NULL,
	[RefSchoolTypeId] [int] NULL,
	[RefSchoolLevelId] [int] NULL,
	[RefAdministrativeFundingControlId] [int] NULL,
	[CharterSchoolIndicator] [bit] NULL,
	[RefCharterSchoolTypeId] [int] NULL,
	[RefIncreasedLearningTimeTypeId] [int] NULL,
	[RefStatePovertyDesignationId] [int] NULL,
	[CharterSchoolApprovalYear] [nvarchar](9) NULL,
	[RefCharterSchoolApprovalAgencyTypeId] [int] NULL,
	[AccreditationAgencyName] [nvarchar](300) NULL,
	[CharterSchoolOpenEnrollmentIndicator] [bit] NULL,
	[CharterSchoolContractApprovalDate] [date] NULL,
	[CharterSchoolContractIdNumber] [nvarchar](30) NULL,
	[CharterSchoolContractRenewalDate] [date] NULL,
	[RefCharterSchoolManagementOrganizationTypeId] [int] NULL,
 CONSTRAINT [XPKK12School] PRIMARY KEY CLUSTERED 
(
	[OrganizationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[K12SchoolCorrectiveAction]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[K12SchoolCorrectiveAction](
	[K12SchoolCorrectiveActionId] [int] IDENTITY(1,1) NOT NULL,
	[OrganizationId] [int] NOT NULL,
	[RefCorrectiveActionTypeId] [int] NOT NULL,
 CONSTRAINT [PK_K12SchoolCorrectiveAction] PRIMARY KEY CLUSTERED 
(
	[K12SchoolCorrectiveActionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[K12SchoolGradeOffered]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[K12SchoolGradeOffered](
	[K12SchoolGradeOfferedId] [int] IDENTITY(1,1) NOT NULL,
	[OrganizationId] [int] NOT NULL,
	[RefGradeLevelId] [int] NOT NULL,
 CONSTRAINT [PK_K12SchoolGradeOffered] PRIMARY KEY CLUSTERED 
(
	[K12SchoolGradeOfferedId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[K12SchoolImprovement]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[K12SchoolImprovement](
	[K12SchoolImprovementId] [int] IDENTITY(1,1) NOT NULL,
	[OrganizationId] [int] NOT NULL,
	[RefSchoolImprovementStatusId] [int] NULL,
	[RefSchoolImprovementFundsId] [int] NULL,
	[RefSigInterventionTypeId] [int] NULL,
	[SchoolImprovementExitDate] [date] NULL,
 CONSTRAINT [XPKK12SchoolImprovement] PRIMARY KEY CLUSTERED 
(
	[K12SchoolImprovementId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[K12SchoolStatus]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[K12SchoolStatus](
	[OrganizationId] [int] NOT NULL,
	[RefMagnetSpecialProgramId] [int] NULL,
	[RefAlternativeSchoolFocusId] [int] NULL,
	[RefInternetAccessId] [int] NULL,
	[RefRestructuringActionId] [int] NULL,
	[RefTitleISchoolStatusId] [int] NULL,
	[ConsolidatedMepFundsStatus] [bit] NULL,
 CONSTRAINT [PK_K12SchoolStatus] PRIMARY KEY CLUSTERED 
(
	[OrganizationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[K12Sea]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
SET ANSI_PADDING ON;
CREATE TABLE [dbo].[K12Sea](
	[OrganizationId] [int] NOT NULL,
	[RefStateANSICode] [char](2) NULL,
 CONSTRAINT [XPKK12Sea] PRIMARY KEY CLUSTERED 
(
	[OrganizationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
SET ANSI_PADDING OFF;
/****** Object:  Table [dbo].[K12SeaAlternateFundUse]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[K12SeaAlternateFundUse](
	[K12SEAlternateFundUseId] [int] IDENTITY(1,1) NOT NULL,
	[OrganizationId] [int] NOT NULL,
	[RefAlternateFundUsesId] [int] NOT NULL,
 CONSTRAINT [PK_K12SEAAlternateFundUse] PRIMARY KEY CLUSTERED 
(
	[K12SEAlternateFundUseId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [IX_K12SeaAlternateFundUse] UNIQUE NONCLUSTERED 
(
	[OrganizationId] ASC,
	[RefAlternateFundUsesId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[K12SeaFederalFundAllocation]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[K12SeaFederalFundAllocation](
	[K12SEAFederalFundAllocationId] [int] IDENTITY(1,1) NOT NULL,
	[OrganizationId] [int] NOT NULL,
	[FederalProgramCode] [nvarchar](10) NOT NULL,
	[RefFederalProgramFundingAllocationTypeId] [int] NULL,
	[FederalProgramsFundingAllocation] [numeric](18, 2) NULL,
 CONSTRAINT [PK_K12SEAFederalFundAllocation] PRIMARY KEY CLUSTERED 
(
	[K12SEAFederalFundAllocationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[K12SeaFederalFunds]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[K12SeaFederalFunds](
	[OrganizationId] [int] NOT NULL,
	[StateTransferabilityOfFunds] [bit] NULL,
	[DateStateReceivedTitleIIIAllocation] [date] NULL,
	[DateTitleIIIFundsAvailableToSubgrantees] [date] NULL,
	[NumberOfDaysForTitleIIISubgrants] [numeric](6, 2) NULL,
 CONSTRAINT [PK_K12SEAFederalFunds] PRIMARY KEY CLUSTERED 
(
	[OrganizationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[K12StaffAssignment]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[K12StaffAssignment](
	[OrganizationPersonRoleId] [int] NOT NULL,
	[RefK12StaffClassificationId] [int] NULL,
	[RefProfessionalEducationJobClassificationId] [int] NULL,
	[RefTeachingAssignmentRoleId] [int] NULL,
	[PrimaryAssignment] [bit] NULL,
	[TeacherOfRecord] [bit] NULL,
	[RefClassroomPositionTypeId] [int] NULL,
	[FullTimeEquivalency] [decimal](5, 4) NULL,
	[ContributionPercentage] [decimal](5, 2) NULL,
	[ItinerantTeacher] [bit] NULL,
	[HighlyQualifiedTeacherIndicator] [bit] NULL,
	[SpecialEducationTeacher] [bit] NULL,
	[RefSpecialEducationStaffCategoryId] [int] NULL,
	[SpecialEducationRelatedServicesPersonnel] [bit] NULL,
	[SpecialEducationParaprofessional] [bit] NULL,
	[RefSpecialEducationAgeGroupTaughtId] [int] NULL,
	[RefMepStaffCategoryId] [int] NULL,
	[RefTitleIProgramStaffCategoryId] [int] NULL,
 CONSTRAINT [PK_K12StaffAssignment] PRIMARY KEY CLUSTERED 
(
	[OrganizationPersonRoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[K12StaffEmployment]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[K12StaffEmployment](
	[StaffEmploymentId] [int] NOT NULL,
	[RefK12StaffClassificationId] [int] NULL,
	[RefEmploymentStatusId] [int] NULL,
	[ContractDaysOfServicePerYear] [decimal](5, 2) NULL,
	[StaffCompensationBaseSalary] [decimal](9, 2) NULL,
	[StaffCompensationRetirementBenefits] [decimal](9, 2) NULL,
	[StaffCompensationHealthBenefits] [decimal](9, 2) NULL,
	[StaffCompensationOtherBenefits] [decimal](9, 2) NULL,
	[StaffCompensationTotalBenefits] [decimal](9, 2) NULL,
	[StaffCompensationTotalSalary] [decimal](9, 2) NULL,
	[MepPersonnelIndicator] [bit] NULL,
	[TitleITargetedAssistanceStaffFunded] [bit] NULL,
	[SalaryForTeachingAssignmentOnlyIndicator] [bit] NULL,
 CONSTRAINT [PK_K12StaffEmployment] PRIMARY KEY CLUSTERED 
(
	[StaffEmploymentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[K12StudentAcademicHonor]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[K12StudentAcademicHonor](
	[K12StudentAcademicHonorId] [int] IDENTITY(1,1) NOT NULL,
	[OrganizationPersonRoleId] [int] NOT NULL,
	[RefAcademicHonorTypeId] [int] NULL,
	[HonorDescription] [nvarchar](80) NULL,
 CONSTRAINT [PK_K12StudentAcademicHonor] PRIMARY KEY CLUSTERED 
(
	[K12StudentAcademicHonorId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[K12StudentAcademicRecord]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[K12StudentAcademicRecord](
	[OrganizationPersonRoleId] [int] NOT NULL,
	[CreditsAttemptedCumulative] [decimal](9, 2) NULL,
	[CreditsEarnedCumulative] [decimal](9, 2) NULL,
	[GradePointsEarnedCumulative] [decimal](9, 2) NULL,
	[GradePointAverageCumulative] [decimal](9, 4) NULL,
	[RefGpaWeightedIndicatorId] [int] NULL,
	[ProjectedGraduationDate] [nchar](7) NULL,
	[HighSchoolStudentClassRank] [int] NULL,
	[ClassRankingDate] [nvarchar](10) NULL,
	[TotalNumberInClass] [int] NULL,
	[DiplomaOrCredentialAwardDate] [nchar](7) NULL,
	[RefHighSchoolDiplomaTypeId] [int] NULL,
	[RefHighSchoolDiplomaDistinctionTypeId] [int] NULL,
	[RefTechnologyLiteracyStatusId] [int] NULL,
	[RefPsEnrollmentActionId] [int] NULL,
	[RefPreAndPostTestIndicatorId] [int] NULL,
	[RefProfessionalTechnicalCredentialTypeId] [int] NULL,
	[RefProgressLevelId] [int] NULL,
 CONSTRAINT [PK_K12StudentAcademicRecord] PRIMARY KEY CLUSTERED 
(
	[OrganizationPersonRoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[K12StudentActivity]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[K12StudentActivity](
	[OrganizationPersonRoleId] [int] NOT NULL,
	[ActivityTimeInvolved] [decimal](9, 2) NULL,
	[RefActivityTimeMeasurementTypeId] [int] NULL,
 CONSTRAINT [PK_K12StudentActivity] PRIMARY KEY CLUSTERED 
(
	[OrganizationPersonRoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[K12StudentCohort]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[K12StudentCohort](
	[OrganizationPersonRoleId] [int] NOT NULL,
	[CohortYear] [nchar](4) NULL,
	[CohortGraduationYear] [nchar](4) NULL,
	[GraduationRateSurveyCohortYear] [nchar](4) NULL,
	[GraduationRateSurveyIndicator] [bit] NULL,
	[CohortDescription] [nvarchar](30) NULL,
 CONSTRAINT [PK_K12StudentCohort] PRIMARY KEY CLUSTERED 
(
	[OrganizationPersonRoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[K12StudentCourseSection]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[K12StudentCourseSection](
	[OrganizationPersonRoleId] [int] NOT NULL,
	[RefCourseRepeatCodeId] [int] NULL,
	[RefCourseSectionEnrollmentStatusTypeId] [int] NULL,
	[RefCourseSectionEntryTypeId] [int] NULL,
	[RefCourseSectionExitTypeId] [int] NULL,
	[RefExitOrWithdrawalStatusId] [int] NULL,
	[RefGradeLevelWhenCourseTakenId] [int] NULL,
	[GradeEarned] [nvarchar](15) NULL,
	[GradeValueQualifier] [nvarchar](100) NULL,
	[NumberOfCreditsAttempted] [decimal](9, 2) NULL,
	[RefCreditTypeEarnedId] [int] NULL,
	[RefAdditionalCreditTypeId] [int] NULL,
	[RefPreAndPostTestIndicatorId] [int] NULL,
	[RefProgressLevelId] [int] NULL,
	[RefCourseGpaApplicabilityId] [int] NULL,
	[NumberOfCreditsEarned] [decimal](9, 2) NULL,
	[TuitionFunded] [bit] NULL,
 CONSTRAINT [PK_K12StudentCourseSection] PRIMARY KEY CLUSTERED 
(
	[OrganizationPersonRoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[K12StudentCourseSectionMark]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[K12StudentCourseSectionMark](
	[K12StudentCourseSectionMarkId] [int] IDENTITY(1,1) NOT NULL,
	[OrganizationPersonRoleId] [int] NOT NULL,
	[MarkingPeriodName] [nvarchar](30) NULL,
	[FinalIndicator] [bit] NULL,
	[GradeEarned] [nvarchar](15) NULL,
	[MidTermMark] [nvarchar](15) NULL,
	[GradeValueQualifier] [nvarchar](100) NULL,
	[StudentCourseSectionGradeNarrative] [nvarchar](300) NULL,
 CONSTRAINT [PK_K12StudentCourseSectionMark] PRIMARY KEY CLUSTERED 
(
	[K12StudentCourseSectionMarkId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[K12StudentDiscipline]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[K12StudentDiscipline](
	[K12StudentDisciplineId] [int] IDENTITY(1,1) NOT NULL,
	[OrganizationPersonRoleId] [int] NOT NULL,
	[RefDisciplineReasonId] [int] NULL,
	[RefDisciplinaryActionTakenId] [int] NULL,
	[DisciplinaryActionStartDate] [date] NULL,
	[DisciplinaryActionEndDate] [date] NULL,
	[DurationOfDisciplinaryAction] [decimal](9, 2) NULL,
	[RefDisciplineLengthDifferenceReasonId] [int] NULL,
	[FullYearExpulsion] [bit] NULL,
	[ShortenedExpulsion] [bit] NULL,
	[EducationalServicesAfterRemoval] [bit] NULL,
	[RefIdeaInterimRemovalId] [int] NULL,
	[RefIdeaInterimRemovalReasonId] [int] NULL,
	[RelatedToZeroTolerancePolicy] [bit] NULL,
	[IncidentId] [int] NULL,
	[IEPPlacementMeetingIndicator] [bit] NULL,
	[RefDisciplineMethodFirearmsId] [int] NULL,
	[RefDisciplineMethodOfCwdId] [int] NULL,
	[RefIDEADisciplineMethodFirearmId] [int] NULL,
 CONSTRAINT [PK_K12StudentDiscipline] PRIMARY KEY CLUSTERED 
(
	[K12StudentDisciplineId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[K12StudentEmployment]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[K12StudentEmployment](
	[OrganizationPersonRoleId] [int] NOT NULL,
	[RefEmployedWhileEnrolledId] [int] NULL,
	[RefEmployedAfterExitId] [int] NULL,
	[EmploymentNaicsCode] [nchar](6) NULL,
 CONSTRAINT [PK_K12StudentEmployment] PRIMARY KEY CLUSTERED 
(
	[OrganizationPersonRoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[K12StudentEnrollment]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[K12StudentEnrollment](
	[OrganizationPersonRoleId] [int] NOT NULL,
	[RefEntryGradeLevelId] [int] NULL,
	[RefPublicSchoolResidence] [int] NULL,
	[RefEnrollmentStatusId] [int] NULL,
	[RefEntryType] [int] NULL,
	[RefExitGradeLevel] [int] NULL,
	[RefExitOrWithdrawalStatusId] [int] NULL,
	[RefExitOrWithdrawalTypeId] [int] NULL,
	[DisplacedStudentStatus] [bit] NULL,
	[RefEndOfTermStatusId] [int] NULL,
	[RefPromotionReasonId] [int] NULL,
	[RefNonPromotionReasonId] [int] NULL,
	[RefFoodServiceEligibilityId] [int] NULL,
	[FirstEntryDateIntoUSSchool] [date] NULL,
	[RefDirectoryInformationBlockStatusId] [int] NULL,
	[NSLPDirectCertificationIndicator] [bit] NULL,
 CONSTRAINT [XPKK12EnrollmentMember] PRIMARY KEY CLUSTERED 
(
	[OrganizationPersonRoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[K12StudentGraduationPlan]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[K12StudentGraduationPlan](
	[OrganizationPersonRoleId] [int] NOT NULL,
	[K12CourseId] [int] NOT NULL,
	[CreditsRequired] [decimal](9, 2) NULL,
	[RefSCEDCourseSubjectAreaId] [int] NULL,
	[RefGradeLevelWhenCourseTakenId] [int] NULL,
 CONSTRAINT [PK_K12StudentGraduationPlan] PRIMARY KEY CLUSTERED 
(
	[OrganizationPersonRoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[K12StudentLiteracyAssessment]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[K12StudentLiteracyAssessment](
	[OrganizationPersonRoleId] [int] NOT NULL,
	[RefLiteracyAssessmentId] [int] NULL,
	[LiteracyPreTestStatus] [bit] NULL,
	[LiteracyPostTestStatus] [bit] NULL,
	[LiteracyGoalMetStatus] [bit] NULL,
 CONSTRAINT [PK_K12StudentLiteracyAssessment] PRIMARY KEY CLUSTERED 
(
	[OrganizationPersonRoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[K12StudentSession]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[K12StudentSession](
	[K12StudentSessionId] [int] IDENTITY(1,1) NOT NULL,
	[OrganizationPersonRoleId] [int] NOT NULL,
	[OrganizationCalendarSessionId] [int] NULL,
	[GradePointAverageGivenSession] [decimal](9, 4) NULL,
 CONSTRAINT [PK_K12StudentSession] PRIMARY KEY CLUSTERED 
(
	[K12StudentSessionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[K12TitleIIILanguageInstruction]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[K12TitleIIILanguageInstruction](
	[K12TitleIIILanguageInstructionId] [int] IDENTITY(1,1) NOT NULL,
	[OrganizationId] [int] NOT NULL,
	[RefTitleIIILanguageInstructionProgramTypeId] [int] NOT NULL,
 CONSTRAINT [PK_K12LEATitleIIILanguageInstr] PRIMARY KEY CLUSTERED 
(
	[K12TitleIIILanguageInstructionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [IX_K12LeaTitleIIILanguageInstruction] UNIQUE NONCLUSTERED 
(
	[OrganizationId] ASC,
	[RefTitleIIILanguageInstructionProgramTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[LearnerAction]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[LearnerAction](
	[LearnerActionId] [int] IDENTITY(1,1) NOT NULL,
	[AssessmentItemResponseId] [int] NULL,
	[RefLearnerActionTypeId] [int] NULL,
	[Value] [nvarchar](max) NULL,
	[LearnerActionDateTime] [datetime] NULL,
	[LearnerActionActorIdentifier] [nvarchar](40) NULL,
	[LearnerActionObjectDescription] [nvarchar](300) NULL,
	[LearnerActionObjectIdentifier] [nvarchar](40) NULL,
	[LearnerActionObjectType] [nvarchar](60) NULL,
 CONSTRAINT [PK_AssessmentItemLearnerAction] PRIMARY KEY CLUSTERED 
(
	[LearnerActionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
;
/****** Object:  Table [dbo].[LearnerActivity]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[LearnerActivity](
	[LearnerActivityId] [int] IDENTITY(1,1) NOT NULL,
	[PersonId] [int] NOT NULL,
	[AssessmentRegistrationId] [int] NULL,
	[CourseSectionId] [int] NULL,
	[OrganizationCalendarSessionId] [int] NULL,
	[Title] [nvarchar](30) NULL,
	[Description] [nvarchar](300) NULL,
	[Prerequisite] [nvarchar](300) NULL,
	[RefLearnerActivityTypeId] [int] NULL,
	[RubricUrl] [nvarchar](300) NULL,
	[CreationDate] [date] NULL,
	[MaximumTimeAllowed] [decimal](9, 0) NULL,
	[RefLearnerActivityMaximumTimeAllowedUnitsId] [int] NULL,
	[DueDate] [date] NULL,
	[DueTime] [time](7) NULL,
	[MaximumAttemptsAllowed] [decimal](9, 0) NULL,
	[RefLearnerActivityAddToGradeBookFlagId] [int] NULL,
	[ReleaseDate] [date] NULL,
	[Weight] [decimal](9, 2) NULL,
	[PossiblePoints] [decimal](9, 2) NULL,
	[RefLanguageId] [int] NULL,
	[AssignedByPersonId] [int] NULL,
	[SchoolOrganizationId] [int] NULL,
	[LeaOrganizationId] [int] NULL,
 CONSTRAINT [PK_LearnerActivity] PRIMARY KEY CLUSTERED 
(
	[LearnerActivityId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[LearnerActivity_LearningResource]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[LearnerActivity_LearningResource](
	[LearnerActivity_LearningResourceId] [int] IDENTITY(1,1) NOT NULL,
	[LearnerActivityId] [int] NOT NULL,
	[LearningResourceId] [int] NOT NULL,
 CONSTRAINT [PK_LearnerActivity_LearningResource] PRIMARY KEY CLUSTERED 
(
	[LearnerActivity_LearningResourceId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [IX_LearnerActivity_LearningResource] UNIQUE NONCLUSTERED 
(
	[LearnerActivityId] ASC,
	[LearningResourceId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[LearningGoal]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[LearningGoal](
	[LearningGoalId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](300) NULL,
	[SuccessCriteria] [nvarchar](300) NULL,
	[StartDate] [date] NULL,
	[EndDate] [date] NULL,
	[PersonId] [int] NULL,
	[CompetencySetId] [int] NULL,
 CONSTRAINT [PK_LearningGoal] PRIMARY KEY CLUSTERED 
(
	[LearningGoalId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[LearningResource]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[LearningResource](
	[LearningResourceId] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](30) NULL,
	[Description] [nvarchar](300) NULL,
	[Url] [nvarchar](300) NULL,
	[ConceptKeyword] [nvarchar](300) NULL,
	[SubjectName] [nvarchar](30) NULL,
	[SubjectCode] [nvarchar](30) NULL,
	[SubjectCodeSystem] [nvarchar](30) NULL,
	[RefLearningResourceTypeId] [int] NULL,
	[DateCreated] [date] NULL,
	[Version] [nvarchar](30) NULL,
	[Creator] [nvarchar](60) NULL,
	[PublisherName] [nvarchar](60) NULL,
	[PublishedDate] [date] NULL,
	[CopyrightHolderName] [nvarchar](60) NULL,
	[CopyrightYear] [nchar](4) NULL,
	[LearningResourceLicenseURL] [nvarchar](300) NULL,
	[BasedOnUrl] [nvarchar](300) NULL,
	[RefLearningResourceIntendedEndUserRoleId] [int] NULL,
	[RefLearningResourceEducationalUseId] [int] NULL,
	[RefLearningResourceInteractivityTypeId] [int] NULL,
	[RefLanguageId] [int] NULL,
	[TimeRequired] [decimal](9, 2) NULL,
	[TypicalAgeRangeMinimum] [tinyint] NULL,
	[TypicalAgeRangeMaximum] [tinyint] NULL,
	[TextComplexityValue] [nvarchar](30) NULL,
	[TextComplexitySystem] [nvarchar](30) NULL,
	[AdaptedFromURL] [nvarchar](300) NULL,
	[AssistiveTechnologiesCompatibleInd] [bit] NULL,
	[PeerRatingSampleSize] [int] NULL,
	[RefLearningResourceAccessAPITypeId] [int] NULL,
	[RefLearningResourceAccessHazardTypeId] [int] NULL,
	[RefLearningResourceAccessModeTypeId] [int] NULL,
	[RefLearningResourceBookFormatTypeId] [int] NULL,
	[RefLearningResourceControlFlexibilityTypeId] [int] NULL,
	[RefLearningResourceDigitalMediaSubTypeId] [int] NULL,
	[RefLearningResourceDigitalMediaTypeId] [int] NULL,
	[LearningResourceAuthorEmail] [nvarchar](128) NULL,
	[LearningResourceAuthorURL] [nvarchar](300) NULL,
	[LearningResourceDateModified] [date] NULL,
	[LearningResourcePublisherEmail] [nvarchar](128) NULL,
	[LearningResourcePublisherURL] [nvarchar](300) NULL,
	[RefLearningResourceAccessRightsUrlId] [int] NULL,
	[RefLearningResourceAuthorTypeId] [int] NULL,
	[RefLearningResourceInteractionModeId] [int] NULL,
 CONSTRAINT [PK_LearningResource] PRIMARY KEY CLUSTERED 
(
	[LearningResourceId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[LearningResourceAdaptation]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[LearningResourceAdaptation](
	[LearningResourceAdaptationId] [int] IDENTITY(1,1) NOT NULL,
	[LearningResourceId] [int] NOT NULL,
	[AdaptationURL] [nvarchar](300) NOT NULL,
 CONSTRAINT [PK_LearningResourceAdaptation] PRIMARY KEY NONCLUSTERED 
(
	[LearningResourceAdaptationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[LearningResourceEducationLevel]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[LearningResourceEducationLevel](
	[LearningResourceEducationLevelId] [int] IDENTITY(1,1) NOT NULL,
	[LearningResourceId] [int] NOT NULL,
	[RefEducationLevelId] [int] NOT NULL,
 CONSTRAINT [PK_LearningResourceEducationLvl] PRIMARY KEY CLUSTERED 
(
	[LearningResourceEducationLevelId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [IX_LearningResourceEducationLevel] UNIQUE NONCLUSTERED 
(
	[LearningResourceId] ASC,
	[RefEducationLevelId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[LearningResourceMediaFeature]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[LearningResourceMediaFeature](
	[LearningResourceMediaFeatureId] [int] IDENTITY(1,1) NOT NULL,
	[LearningResourceId] [int] NOT NULL,
	[RefLearningResourceMediaFeatureTypeId] [int] NOT NULL,
 CONSTRAINT [PK_LearningResourceMediaFeature] PRIMARY KEY NONCLUSTERED 
(
	[LearningResourceMediaFeatureId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[LearningResourcePeerRating]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[LearningResourcePeerRating](
	[LearningResourcePeerRatingId] [int] IDENTITY(1,1) NOT NULL,
	[LearningResourceId] [int] NOT NULL,
	[PersonId] [int] NOT NULL,
	[PeerRatingSystemId] [int] NOT NULL,
	[Value] [numeric](18, 4) NULL,
	[Date] [date] NULL,
 CONSTRAINT [PK_LearningResourcePeerRating_1] PRIMARY KEY CLUSTERED 
(
	[LearningResourcePeerRatingId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[LearningResourcePhysicalMedia]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[LearningResourcePhysicalMedia](
	[LearningResourcePhysicalMediaId] [int] IDENTITY(1,1) NOT NULL,
	[LearningResourceId] [int] NOT NULL,
	[RefLearningResourcePhysicalMediaTypeId] [int] NOT NULL,
 CONSTRAINT [PK_LearningResourcePhysicalMedia] PRIMARY KEY NONCLUSTERED 
(
	[LearningResourcePhysicalMediaId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[LearningStandardDocument]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[LearningStandardDocument](
	[LearningStandardDocumentId] [int] IDENTITY(1,1) NOT NULL,
	[URI] [nvarchar](300) NULL,
	[Title] [nvarchar](120) NULL,
	[Subject] [nvarchar](30) NULL,
	[Version] [nvarchar](30) NULL,
	[Creator] [nvarchar](120) NULL,
	[Jurisdiction] [nvarchar](120) NULL,
	[Description] [nvarchar](300) NULL,
	[Publisher] [nvarchar](30) NULL,
	[RefLearningStandardDocumentPublicationStatusId] [int] NULL,
	[ValidStartDate] [date] NOT NULL,
	[ValidEndDate] [date] NOT NULL,
	[RefLanguageId] [int] NULL,
	[License] [nvarchar](300) NULL,
	[Rights] [nvarchar](300) NULL,
	[RightsHolder] [nvarchar](30) NULL,
	[LearningStandardDocumentPublicationDate] [date] NULL,
 CONSTRAINT [PK_LearningStandardDocument] PRIMARY KEY CLUSTERED 
(
	[LearningStandardDocumentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[LearningStandardItem]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[LearningStandardItem](
	[LearningStandardItemId] [int] IDENTITY(1,1) NOT NULL,
	[Identifier] [nvarchar](40) NULL,
	[Code] [nvarchar](30) NULL,
	[URL] [nvarchar](300) NULL,
	[Type] [nvarchar](60) NULL,
	[Statement] [nvarchar](max) NULL,
	[Version] [nvarchar](max) NULL,
	[TypicalAgeRange] [nvarchar](20) NULL,
	[RefLanguageId] [int] NULL,
	[TextComplexitySystem] [nvarchar](30) NULL,
	[TextComplexityMinimumValue] [decimal](18, 4) NULL,
	[TextComplexityMaximumValue] [decimal](18, 4) NULL,
	[RefBloomsTaxonomyDomainId] [int] NULL,
	[RefMultipleIntelligenceTypeId] [int] NULL,
	[ConceptTerm] [nvarchar](30) NULL,
	[ConceptKeyword] [nvarchar](300) NULL,
	[License] [nvarchar](300) NULL,
	[Notes] [nvarchar](max) NULL,
	[LearningStandardItemParentId] [nvarchar](40) NULL,
	[LearningStandardItemParentCode] [nvarchar](30) NULL,
	[LearningStandardItemParentURL] [nvarchar](300) NULL,
	[ChildOf_LearningStandardItem] [int] NULL,
	[LearningStandardDocumentId] [int] NOT NULL,
	[CurrentVersionIndicator] [bit] NULL,
	[PreviousVersionIdentifier] [nvarchar](40) NULL,
	[ValidStartDate] [date] NULL,
	[ValidEndDate] [date] NULL,
	[NodeName] [nvarchar](30) NULL,
	[RefLearningStandardItemNodeAccessibilityProfileId] [int] NULL,
	[RefLearningStandardItemTestabilityTypeId] [int] NULL,
	[LearningStandardItemSequence] [nvarchar](60) NULL,
 CONSTRAINT [XPKLearningStandardItem] PRIMARY KEY CLUSTERED 
(
	[LearningStandardItemId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
;
/****** Object:  Table [dbo].[LearningStandardItemAssociation]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[LearningStandardItemAssociation](
	[LearningStandardItemAssociationId] [int] IDENTITY(1,1) NOT NULL,
	[LearningStandardItemId] [int] NOT NULL,
	[RefEntityTypeId] [int] NOT NULL,
	[AssociatedEntityId] [int] NOT NULL,
	[RefLearningStandardItemAssociationTypeId] [int] NULL,
	[LearningStandardItemAssociationIdentifierURI] [nvarchar](300) NULL,
	[ConnectionCitation] [nvarchar](300) NULL,
	[OriginNodeName] [nvarchar](30) NULL,
	[OriginNodeURI] [nvarchar](300) NULL,
	[DestinationNodeName] [nvarchar](30) NULL,
	[DestinationNodeURI] [nvarchar](300) NULL,
	[Weight] [decimal](9, 3) NULL,
 CONSTRAINT [PK_LearningStandardItemAssociation] PRIMARY KEY CLUSTERED 
(
	[LearningStandardItemAssociationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[LearningStandardItemEducationLevel]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[LearningStandardItemEducationLevel](
	[LearningStandardItemEducationLevelId] [int] IDENTITY(1,1) NOT NULL,
	[LearningStandardsItemId] [int] NOT NULL,
	[RefEducationLevelId] [int] NOT NULL,
 CONSTRAINT [PK_LearningStandardItemEducationLevel] PRIMARY KEY CLUSTERED 
(
	[LearningStandardItemEducationLevelId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [IX_LearningStandardItemEducationLevel] UNIQUE NONCLUSTERED 
(
	[LearningStandardsItemId] ASC,
	[RefEducationLevelId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[Location]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[Location](
	[LocationId] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_Location] PRIMARY KEY CLUSTERED 
(
	[LocationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[LocationAddress]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[LocationAddress](
	[LocationId] [int] NOT NULL,
	[StreetNumberAndName] [nvarchar](40) NULL,
	[ApartmentRoomOrSuiteNumber] [nvarchar](30) NULL,
	[BuildingSiteNumber] [nvarchar](30) NULL,
	[City] [nvarchar](30) NULL,
	[RefStateId] [int] NULL,
	[PostalCode] [nvarchar](17) NULL,
	[CountyName] [nvarchar](30) NULL,
	[RefCountyId] [int] NULL,
	[RefCountryId] [int] NULL,
	[Latitude] [nvarchar](20) NULL,
	[Longitude] [nvarchar](20) NULL,
	[RefERSRuralUrbanContinuumCodeId] [int] NULL,
 CONSTRAINT [PK_Address] PRIMARY KEY CLUSTERED 
(
	[LocationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[Organization]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[Organization](
	[OrganizationId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](60) NULL,
	[RefOrganizationTypeId] [int] NULL,
	[ShortName] [nvarchar](30) NULL,
 CONSTRAINT [PK_Organization] PRIMARY KEY CLUSTERED 
(
	[OrganizationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[OrganizationAccreditation]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[OrganizationAccreditation](
	[OrganizationAccreditationId] [int] IDENTITY(1,1) NOT NULL,
	[OrganizationId] [int] NOT NULL,
	[AccreditationStatus] [bit] NULL,
	[RefAccreditationAgencyId] [int] NULL,
	[AccreditationAwardDate] [date] NULL,
	[AccreditationExpirationDate] [date] NULL,
	[SeekingAccreditationDate] [date] NULL,
 CONSTRAINT [PK_OrganizationAccreditation] PRIMARY KEY CLUSTERED 
(
	[OrganizationAccreditationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[OrganizationCalendar]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[OrganizationCalendar](
	[OrganizationCalendarId] [int] IDENTITY(1,1) NOT NULL,
	[OrganizationId] [int] NOT NULL,
	[CalendarCode] [nvarchar](30) NULL,
	[CalendarDescription] [nvarchar](60) NOT NULL,
	[CalendarYear] [nchar](4) NULL,
 CONSTRAINT [PK_OrganizationCalendar] PRIMARY KEY CLUSTERED 
(
	[OrganizationCalendarId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[OrganizationCalendarCrisis]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[OrganizationCalendarCrisis](
	[OrganizationCalendarCrisisId] [int] IDENTITY(1,1) NOT NULL,
	[OrganizationId] [int] NOT NULL,
	[Code] [nvarchar](30) NULL,
	[Name] [nvarchar](50) NULL,
	[StartDate] [date] NULL,
	[EndDate] [date] NULL,
	[Type] [nvarchar](50) NULL,
	[CrisisDescription] [nvarchar](300) NULL,
	[CrisisEndDate] [date] NULL,
 CONSTRAINT [PK_OrganizationCalendarCrisis] PRIMARY KEY CLUSTERED 
(
	[OrganizationCalendarCrisisId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[OrganizationCalendarDay]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[OrganizationCalendarDay](
	[OrganizationCalendarDayId] [int] IDENTITY(1,1) NOT NULL,
	[OrganizationCalendarId] [int] NOT NULL,
	[DayName] [nvarchar](30) NOT NULL,
	[AlternateDayName] [nvarchar](30) NULL,
 CONSTRAINT [PK_OrganizationCalendarDay] PRIMARY KEY CLUSTERED 
(
	[OrganizationCalendarDayId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[OrganizationCalendarEvent]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[OrganizationCalendarEvent](
	[OrganizationCalendarEventId] [int] IDENTITY(1,1) NOT NULL,
	[OrganizationCalendarId] [int] NOT NULL,
	[Name] [nvarchar](30) NOT NULL,
	[EventDate] [date] NOT NULL,
	[RefCalendarEventType] [int] NULL,
 CONSTRAINT [PK_OrganizationCalendarEvent] PRIMARY KEY CLUSTERED 
(
	[OrganizationCalendarEventId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[OrganizationCalendarSession]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[OrganizationCalendarSession](
	[OrganizationCalendarSessionId] [int] IDENTITY(1,1) NOT NULL,
	[Designator] [nvarchar](7) NULL,
	[BeginDate] [date] NULL,
	[EndDate] [date] NULL,
	[RefSessionTypeId] [int] NULL,
	[InstructionalMinutes] [numeric](18, 0) NULL,
	[Code] [nvarchar](30) NULL,
	[Description] [nvarchar](max) NULL,
	[MarkingTermIndicator] [bit] NULL,
	[SchedulingTermIndicator] [bit] NULL,
	[AttendanceTermIndicator] [bit] NULL,
	[OrganizationCalendarId] [int] NULL,
	[DaysInSession] [int] NULL,
	[FirstInstructionDate] [date] NULL,
	[LastInstructionDate] [date] NULL,
	[MinutesPerDay] [int] NULL,
	[SessionStartTime] [time](7) NULL,
	[SessionEndTime] [time](7) NULL,
 CONSTRAINT [PK_OrganizationCalendarSession] PRIMARY KEY CLUSTERED 
(
	[OrganizationCalendarSessionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
;
/****** Object:  Table [dbo].[OrganizationEmail]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[OrganizationEmail](
	[OrganizationEmailId] [int] IDENTITY(1,1) NOT NULL,
	[OrganizationId] [int] NOT NULL,
	[ElectronicMailAddress] [nvarchar](128) NULL,
	[RefEmailTypeId] [int] NULL,
 CONSTRAINT [PK_OrganizationEmail] PRIMARY KEY CLUSTERED 
(
	[OrganizationEmailId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[OrganizationFederalAccountability]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[OrganizationFederalAccountability](
	[OrganizationFederalAccountabilityId] [int] IDENTITY(1,1) NOT NULL,
	[OrganizationId] [int] NOT NULL,
	[RefAypStatusId] [int] NULL,
	[AlternateAypApproachIndicator] [bit] NULL,
	[AypAppealChangedDesignation] [bit] NULL,
	[AypAppealProcessDate] [date] NULL,
	[AypAppealProcessDesignation] [bit] NULL,
	[AmaoAypProgressAttainmentLepStudents] [int] NULL,
	[AmaoProficiencyAttainmentLepStudents] [int] NULL,
	[AmaoProgressAttainmentLepStudents] [int] NULL,
	[RefGunFreeSchoolsActStatusReportingId] [int] NULL,
	[RefHighSchoolGraduationRateIndicator] [int] NULL,
	[RefParticipationStatusMathId] [int] NULL,
	[RefParticipationStatusRlaId] [int] NULL,
	[RefProficiencyTargetStatusMathId] [int] NULL,
	[RefProficiencyTargetStatusRLAId] [int] NULL,
	[PersistentlyDangerousStatus] [bit] NULL,
	[RefReconstitutedStatusId] [int] NULL,
	[RefElementaryMiddleAdditionalId] [int] NULL,
	[AccountabilityReportTitle] [nvarchar](80) NULL,
	[RefCteGraduationRateInclusionId] [int] NULL,
 CONSTRAINT [PK_OrganizationFederalAccountability] PRIMARY KEY CLUSTERED 
(
	[OrganizationFederalAccountabilityId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[OrganizationFinancial]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[OrganizationFinancial](
	[OrganizationFinancialId] [int] IDENTITY(1,1) NOT NULL,
	[FinancialAccountId] [int] NOT NULL,
	[OrganizationCalendarSessionId] [int] NOT NULL,
	[ActualValue] [decimal](12, 2) NULL,
	[BudgetedValue] [decimal](12, 1) NULL,
	[Date] [date] NULL,
	[EncumberedValue] [decimal](9, 2) NULL,
	[Value] [decimal](9, 2) NULL,
	[FiscalPeriodBeginDate] [date] NULL,
	[FiscalPeriodEndDate] [date] NULL,
	[FiscalYear] [nchar](4) NULL,
	[FinancialAccountProgramId] [int] NULL,
 CONSTRAINT [PK_OrganizationFinancial] PRIMARY KEY CLUSTERED 
(
	[OrganizationFinancialId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[OrganizationIdentifier]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[OrganizationIdentifier](
	[OrganizationIdentifierId] [int] IDENTITY(1,1) NOT NULL,
	[Identifier] [nvarchar](40) NULL,
	[RefOrganizationIdentificationSystemId] [int] NULL,
	[OrganizationId] [int] NOT NULL,
	[RefOrganizationIdentifierTypeId] [int] NULL,
 CONSTRAINT [PK_OrganizationIdentifier] PRIMARY KEY CLUSTERED 
(
	[OrganizationIdentifierId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[OrganizationIndicator]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[OrganizationIndicator](
	[OrganizationIndicatorId] [int] IDENTITY(1,1) NOT NULL,
	[OrganizationId] [int] NOT NULL,
	[IndicatorValue] [nvarchar](50) NOT NULL,
	[RefOrganizationIndicatorId] [int] NOT NULL,
 CONSTRAINT [PK_OrganizationIndicator] PRIMARY KEY CLUSTERED 
(
	[OrganizationIndicatorId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[OrganizationLocation]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[OrganizationLocation](
	[OrganizationLocationId] [int] IDENTITY(1,1) NOT NULL,
	[OrganizationId] [int] NOT NULL,
	[LocationId] [int] NOT NULL,
	[RefOrganizationLocationTypeId] [int] NULL,
 CONSTRAINT [PK_OrganizationLocation] PRIMARY KEY CLUSTERED 
(
	[OrganizationLocationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[OrganizationOperationalStatus]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[OrganizationOperationalStatus](
	[OrganizationOperationalStatusId] [int] IDENTITY(1,1) NOT NULL,
	[OrganizationId] [int] NOT NULL,
	[RefOperationalStatusId] [int] NOT NULL,
	[OperationalStatusEffectiveDate] [date] NULL,
 CONSTRAINT [PK_OrganizationOperationalStatus] PRIMARY KEY CLUSTERED 
(
	[OrganizationOperationalStatusId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[OrganizationPersonRole]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[OrganizationPersonRole](
	[OrganizationPersonRoleId] [int] IDENTITY(1,1) NOT NULL,
	[OrganizationId] [int] NOT NULL,
	[PersonId] [int] NOT NULL,
	[RoleId] [int] NOT NULL,
	[EntryDate] [datetime] NULL,
	[ExitDate] [datetime] NULL,
 CONSTRAINT [PK_OrganizationPersonRole] PRIMARY KEY CLUSTERED 
(
	[OrganizationPersonRoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[OrganizationPolicy]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[OrganizationPolicy](
	[OrganizationPolicyId] [int] IDENTITY(1,1) NOT NULL,
	[OrganizationId] [int] NOT NULL,
	[PolicyType] [nvarchar](100) NOT NULL,
	[Value] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_OrganizationPolicy] PRIMARY KEY CLUSTERED 
(
	[OrganizationPolicyId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[OrganizationProgramType]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[OrganizationProgramType](
	[OrganizationProgramTypeId] [int] IDENTITY(1,1) NOT NULL,
	[OrganizationId] [int] NOT NULL,
	[RefProgramTypeId] [int] NOT NULL,
 CONSTRAINT [PK_OrganizationProgramType] PRIMARY KEY CLUSTERED 
(
	[OrganizationProgramTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[OrganizationRelationship]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[OrganizationRelationship](
	[OrganizationRelationshipId] [int] IDENTITY(1,1) NOT NULL,
	[Parent_OrganizationId] [int] NOT NULL,
	[OrganizationId] [int] NULL,
	[RefOrganizationRelationshipId] [int] NOT NULL,
 CONSTRAINT [PK_OrganizationRelationship] PRIMARY KEY CLUSTERED 
(
	[OrganizationRelationshipId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[OrganizationTechnicalAssistance]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[OrganizationTechnicalAssistance](
	[OrganizationTechnicalAssistanceId] [int] IDENTITY(1,1) NOT NULL,
	[OrganizationId] [int] NOT NULL,
	[RefTechnicalAssistanceTypeId] [int] NULL,
	[RefTechnicalAssistanceDeliveryTypeId] [int] NULL,
	[TechnicalAssistanceApprovedInd] [bit] NULL,
 CONSTRAINT [PK_OrganizationTechnicalAssistance] PRIMARY KEY CLUSTERED 
(
	[OrganizationTechnicalAssistanceId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[OrganizationTelephone]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[OrganizationTelephone](
	[OrganizationTelephoneId] [int] IDENTITY(1,1) NOT NULL,
	[OrganizationId] [int] NOT NULL,
	[TelephoneNumber] [nvarchar](24) NOT NULL,
	[PrimaryTelephoneNumberIndicator] [bit] NOT NULL,
	[RefInstitutionTelephoneTypeId] [int] NULL,
 CONSTRAINT [PK_OrganizationPhonePhone] PRIMARY KEY CLUSTERED 
(
	[OrganizationTelephoneId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[OrganizationWebsite]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[OrganizationWebsite](
	[OrganizationId] [int] NOT NULL,
	[Website] [nvarchar](300) NULL,
 CONSTRAINT [PK_OrganizationWebsite] PRIMARY KEY CLUSTERED 
(
	[OrganizationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[PDActivityEducationLevel]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[PDActivityEducationLevel](
	[PDActivityEducationLevelId] [int] IDENTITY(1,1) NOT NULL,
	[ProfessionalDevelopmentActivityId] [int] NOT NULL,
	[RefPDActivityEducationLevelsAddressedId] [int] NOT NULL,
 CONSTRAINT [PK_PDActivityEducationLevel] PRIMARY KEY NONCLUSTERED 
(
	[PDActivityEducationLevelId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[PeerRatingSystem]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[PeerRatingSystem](
	[PeerRatingSystemId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](60) NOT NULL,
	[MaximumValue] [numeric](18, 4) NULL,
	[MinimumValue] [numeric](18, 4) NOT NULL,
	[OptimumValue] [numeric](18, 4) NULL,
 CONSTRAINT [PK_PeerRatingSystem] PRIMARY KEY CLUSTERED 
(
	[PeerRatingSystemId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[Person]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[Person](
	[PersonId] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](35) NULL,
	[MiddleName] [nvarchar](35) NULL,
	[LastName] [nvarchar](35) NOT NULL,
	[GenerationCode] [nvarchar](10) NULL,
	[Prefix] [nvarchar](30) NULL,
	[Birthdate] [date] NULL,
	[RefSexId] [int] NULL,
	[HispanicLatinoEthnicity] [bit] NULL,
	[RefUSCitizenshipStatusId] [int] NULL,
	[RefVisaTypeId] [int] NULL,
	[RefStateOfResidenceId] [int] NULL,
	[RefProofOfResidencyTypeId] [int] NULL,
	[RefHighestEducationLevelCompletedId] [int] NULL,
	[RefPersonalInformationVerificationId] [int] NULL,
	[BirthdateVerification] [nvarchar](60) NULL,
	[RefTribalAffiliationId] [int] NULL,
 CONSTRAINT [XPKPerson] PRIMARY KEY CLUSTERED 
(
	[PersonId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[Person_AssessmentPersonalNeedsProfile]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[Person_AssessmentPersonalNeedsProfile](
	[Person_AssessmentPersonalNeedsProfileId] [int] IDENTITY(1,1) NOT NULL,
	[PersonId] [int] NOT NULL,
	[AssessmentPersonalNeedsProfileId] [int] NOT NULL,
 CONSTRAINT [PK_Person_AssessmentPersonalNeedsProfile] PRIMARY KEY CLUSTERED 
(
	[Person_AssessmentPersonalNeedsProfileId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [IX_Person_AssessmentPersonalNeedsProfile] UNIQUE NONCLUSTERED 
(
	[PersonId] ASC,
	[AssessmentPersonalNeedsProfileId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[PersonAddress]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[PersonAddress](
	[PersonAddressId] [int] IDENTITY(1,1) NOT NULL,
	[PersonId] [int] NOT NULL,
	[RefPersonLocationTypeId] [int] NOT NULL,
	[StreetNumberAndName] [nvarchar](40) NULL,
	[ApartmentRoomOrSuiteNumber] [nvarchar](30) NULL,
	[City] [nvarchar](30) NULL,
	[RefStateId] [int] NULL,
	[PostalCode] [nvarchar](17) NULL,
	[AddressCountyName] [nvarchar](30) NULL,
	[RefCountyId] [int] NULL,
	[RefCountryId] [int] NULL,
	[Latitude] [nvarchar](20) NULL,
	[Longitude] [nvarchar](20) NULL,
	[RefPersonalInformationVerificationId] [int] NULL,
 CONSTRAINT [PK_PersonAddress] PRIMARY KEY CLUSTERED 
(
	[PersonAddressId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[PersonAllergy]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[PersonAllergy](
	[PersonAllergyId] [int] IDENTITY(1,1) NOT NULL,
	[PersonId] [int] NOT NULL,
	[RefAllergyTypeId] [int] NOT NULL,
	[RefAllergySeverityId] [int] NULL,
	[ReactionDescription] [nvarchar](2000) NULL,
 CONSTRAINT [PK_PersonAllergy] PRIMARY KEY CLUSTERED 
(
	[PersonAllergyId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[PersonBirthplace]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[PersonBirthplace](
	[PersonId] [int] NOT NULL,
	[City] [nvarchar](30) NULL,
	[RefStateId] [int] NULL,
	[RefCountryId] [int] NULL,
 CONSTRAINT [XPKPersonBirthplace] PRIMARY KEY CLUSTERED 
(
	[PersonId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[PersonCareerEducationPlan]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[PersonCareerEducationPlan](
	[PersonCareerEducationPlanId] [int] IDENTITY(1,1) NOT NULL,
	[PersonId] [int] NOT NULL,
	[LastUpdated] [date] NULL,
	[RefCareerEducationPlanTypeId] [int] NULL,
	[ProfessionalDevelopmentPlanApprovedBySupervisor] [bit] NULL,
	[ProfessionalDevelopmentPlanCompletion] [date] NULL,
	[TuitionFunded] [bit] NULL,
 CONSTRAINT [PK_PersonCareerEducationPlan] PRIMARY KEY CLUSTERED 
(
	[PersonCareerEducationPlanId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[PersonCredential]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[PersonCredential](
	[PersonCredentialId] [int] IDENTITY(1,1) NOT NULL,
	[PersonId] [int] NOT NULL,
	[CredentialName] [nvarchar](60) NULL,
	[RefCredentialTypeId] [int] NULL,
	[IssuanceDate] [date] NULL,
	[ExpirationDate] [date] NULL,
	[RefIssuingStateId] [int] NULL,
	[ProfessionalCertificateOrLicenseNumber] [nvarchar](30) NULL,
	[CredentialOrLicenseAwardEntity] [nvarchar](60) NULL,
 CONSTRAINT [PK_PersonCredential] PRIMARY KEY CLUSTERED 
(
	[PersonCredentialId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[PersonDegreeOrCertificate]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[PersonDegreeOrCertificate](
	[PersonDegreeOrCertificateId] [int] IDENTITY(1,1) NOT NULL,
	[PersonId] [int] NOT NULL,
	[DegreeOrCertificateTitleOrSubject] [nvarchar](45) NULL,
	[RefDegreeOrCertificateTypeId] [int] NULL,
	[AwardDate] [date] NULL,
	[NameOfInstitution] [nvarchar](60) NULL,
	[RefHigherEducationInstitutionAccreditationStatusId] [int] NULL,
	[RefEducationVerificationMethodId] [int] NULL,
 CONSTRAINT [XPKPersonDegreeOrCertificate] PRIMARY KEY CLUSTERED 
(
	[PersonDegreeOrCertificateId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[PersonDemographicRace]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[PersonDemographicRace](
	[PersonDemographicRaceId] [int] IDENTITY(1,1) NOT NULL,
	[PersonId] [int] NOT NULL,
	[RefRaceId] [int] NOT NULL,
 CONSTRAINT [XPKDemographicRace] PRIMARY KEY CLUSTERED 
(
	[PersonDemographicRaceId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[PersonDisability]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[PersonDisability](
	[PersonId] [int] NOT NULL,
	[PrimaryDisabilityTypeId] [int] NULL,
	[DisabilityStatus] [bit] NULL,
	[RefAccommodationsNeededTypeId] [int] NULL,
	[RefDisabilityConditionTypeId] [int] NULL,
	[RefDisabilityDeterminationSourceTypeId] [int] NULL,
	[RefDisabilityConditionStatusCodeId] [int] NULL,
 CONSTRAINT [PK_PersonDisability] PRIMARY KEY CLUSTERED 
(
	[PersonId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[PersonEmailAddress]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[PersonEmailAddress](
	[PersonEmailAddressId] [int] IDENTITY(1,1) NOT NULL,
	[PersonId] [int] NOT NULL,
	[EmailAddress] [nvarchar](128) NULL,
	[RefEmailTypeId] [int] NULL,
 CONSTRAINT [PK_PersonEmailAddress] PRIMARY KEY CLUSTERED 
(
	[PersonEmailAddressId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[PersonFamily]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[PersonFamily](
	[PersonFamilyId] [int] IDENTITY(1,1) NOT NULL,
	[PersonId] [int] NOT NULL,
	[FamilyIdentifier] [nvarchar](40) NULL,
	[NumberOfPeopleInFamily] [int] NULL,
	[NumberOfPeopleInHousehold] [int] NULL,
	[FamilyIncome] [decimal](10, 2) NULL,
	[RefFamilyIncomeSourceId] [int] NULL,
	[RefIncomeCalculationMethodId] [int] NULL,
	[RefProofOfResidencyTypeId] [int] NULL,
	[RefELProgramEligibilityId] [int] NULL,
	[RefHighestEducationLevelCompletedId] [int] NULL,
	[RefCommunicationMethodId] [int] NULL,
	[IncludedInCountedFamilySize] [bit] NULL,
 CONSTRAINT [XPKPersonFamily] PRIMARY KEY CLUSTERED 
(
	[PersonFamilyId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[PersonHealth]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[PersonHealth](
	[PersonHealthId] [int] IDENTITY(1,1) NOT NULL,
	[PersonId] [int] NOT NULL,
	[VisionScreeningDate] [date] NULL,
	[RefVisionScreeningStatusId] [int] NULL,
	[HearingScreeningDate] [date] NULL,
	[RefHearingScreeningStatusId] [int] NULL,
	[DentalScreeningDate] [date] NOT NULL,
	[RefDentalScreeningStatusId] [int] NULL,
	[RefHealthInsuranceCoverageId] [int] NULL,
	[RefDentalInsuranceCoverageTypeId] [int] NULL,
	[RefMedicalAlertIndicatorId] [int] NULL,
	[HealthScreeningEquipmentUsed] [nvarchar](300) NULL,
	[HealthScreeningFollowUpRecommendation] [nvarchar](max) NULL,
 CONSTRAINT [XPKPersonHealth] PRIMARY KEY CLUSTERED 
(
	[PersonHealthId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
;
/****** Object:  Table [dbo].[PersonHealthBirth]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[PersonHealthBirth](
	[PersonId] [int] NOT NULL,
	[WeeksOfGestation] [int] NULL,
	[MultipleBirthIndicator] [bit] NULL,
	[WeightAtBirth] [nvarchar](20) NULL,
	[RefTrimesterWhenPrenatalCareBeganId] [int] NULL,
 CONSTRAINT [PK_PersonHealthBirth] PRIMARY KEY CLUSTERED 
(
	[PersonId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[PersonHomelessness]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[PersonHomelessness](
	[PersonId] [int] NOT NULL,
	[HomelessnessStatus] [bit] NOT NULL,
	[RefHomelessNighttimeResidenceId] [int] NOT NULL,
 CONSTRAINT [PK_HomelessPrimaryNighttimeResidence] PRIMARY KEY CLUSTERED 
(
	[PersonId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[PersonIdentifier]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[PersonIdentifier](
	[PersonIdentifierId] [int] IDENTITY(1,1) NOT NULL,
	[PersonId] [int] NOT NULL,
	[Identifier] [nvarchar](40) NULL,
	[RefPersonIdentificationSystemId] [int] NOT NULL,
	[RefPersonalInformationVerificationId] [int] NULL,
 CONSTRAINT [XPKPersonIdentifier] PRIMARY KEY CLUSTERED 
(
	[PersonIdentifierId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[PersonImmunization]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[PersonImmunization](
	[PersonImmunizationId] [int] IDENTITY(1,1) NOT NULL,
	[PersonId] [int] NOT NULL,
	[ImmunizationDate] [date] NOT NULL,
	[RefImmunizationTypeId] [int] NOT NULL,
 CONSTRAINT [PK_PersonImmunization] PRIMARY KEY CLUSTERED 
(
	[PersonImmunizationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[PersonLanguage]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[PersonLanguage](
	[PersonLanguageId] [int] IDENTITY(1,1) NOT NULL,
	[PersonId] [int] NOT NULL,
	[RefLanguageId] [int] NOT NULL,
	[RefLanguageUseTypeId] [int] NOT NULL,
 CONSTRAINT [PK_PersonLanguage] PRIMARY KEY CLUSTERED 
(
	[PersonLanguageId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[PersonMilitary]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[PersonMilitary](
	[PersonId] [int] NOT NULL,
	[RefMilitaryActiveStudentIndicatorId] [int] NULL,
	[RefMilitaryConnectedStudentIndicatorId] [int] NULL,
	[RefMilitaryVeteranStudentIndicatorId] [int] NULL,
	[RefMilitaryBranchId] [int] NULL,
 CONSTRAINT [PK_PersonMilitary] PRIMARY KEY CLUSTERED 
(
	[PersonId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[PersonOtherName]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[PersonOtherName](
	[PersonOtherNameId] [int] IDENTITY(1,1) NOT NULL,
	[PersonId] [int] NOT NULL,
	[RefOtherNameTypeId] [int] NULL,
	[OtherName] [nvarchar](40) NULL,
	[FirstName] [nvarchar](35) NULL,
	[MiddleName] [nvarchar](35) NULL,
	[LastName] [nvarchar](35) NULL,
 CONSTRAINT [PK_PersonOtherName] PRIMARY KEY CLUSTERED 
(
	[PersonOtherNameId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[PersonProgramParticipation]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[PersonProgramParticipation](
	[OrganizationPersonRoleId] [int] NOT NULL,
	[RefParticipationTypeId] [int] NULL,
	[RefProgramExitReasonId] [int] NULL,
 CONSTRAINT [PK_PersonProgramParticipation_1] PRIMARY KEY CLUSTERED 
(
	[OrganizationPersonRoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[PersonReferral]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[PersonReferral](
	[PersonReferralId] [int] IDENTITY(1,1) NOT NULL,
	[PersonId] [int] NOT NULL,
	[ReferralDate] [date] NULL,
	[Reason] [nvarchar](max) NULL,
	[Source] [nvarchar](60) NULL,
	[ReferralTypeReceived] [nvarchar](60) NULL,
	[ReferredTo] [nvarchar](60) NULL,
	[RefReferralOutcomeId] [int] NULL,
 CONSTRAINT [PK_PersonReferral] PRIMARY KEY CLUSTERED 
(
	[PersonReferralId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
;
/****** Object:  Table [dbo].[PersonRelationship]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[PersonRelationship](
	[PersonRelationshipId] [int] IDENTITY(1,1) NOT NULL,
	[PersonId] [int] NOT NULL,
	[RelatedPersonId] [int] NOT NULL,
	[RefPersonRelationshipId] [int] NULL,
	[CustodialRelationshipIndicator] [bit] NULL,
	[EmergencyContactInd] [bit] NULL,
	[ContactPriorityNumber] [int] NULL,
	[ContactRestrictions] [nvarchar](2000) NULL,
	[LivesWithIndicator] [bit] NULL,
	[PrimaryContactIndicator] [bit] NULL,
 CONSTRAINT [XPKPersonRelationship] PRIMARY KEY CLUSTERED 
(
	[PersonRelationshipId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[PersonStatus]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[PersonStatus](
	[PersonStatusId] [int] IDENTITY(1,1) NOT NULL,
	[PersonId] [int] NOT NULL,
	[RefPersonStatusTypeId] [int] NOT NULL,
	[StatusValue] [bit] NOT NULL,
	[StatusStartDate] [date] NULL,
	[StatusEndDate] [date] NULL,
 CONSTRAINT [PK_PersonStatus] PRIMARY KEY CLUSTERED 
(
	[PersonStatusId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[PersonTelephone]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[PersonTelephone](
	[PersonTelephoneId] [int] IDENTITY(1,1) NOT NULL,
	[PersonId] [int] NOT NULL,
	[TelephoneNumber] [nvarchar](24) NULL,
	[PrimaryTelephoneNumberIndicator] [bit] NOT NULL,
	[RefPersonTelephoneNumberTypeId] [int] NULL,
 CONSTRAINT [XPKPersonPhone] PRIMARY KEY CLUSTERED 
(
	[PersonTelephoneId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[ProfessionalDevelopmentActivity]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[ProfessionalDevelopmentActivity](
	[ProfessionalDevelopmentActivityId] [int] IDENTITY(1,1) NOT NULL,
	[CourseId] [int] NULL,
	[ProfessionalDevelopmentRequirementId] [int] NOT NULL,
	[Title] [nvarchar](50) NULL,
	[ActivityIdentifier] [nvarchar](40) NULL,
	[Description] [nvarchar](2000) NULL,
	[Objective] [nvarchar](2000) NULL,
	[ActivityCode] [nvarchar](30) NULL,
	[ApprovalCode] [nvarchar](30) NULL,
	[Cost] [decimal](6, 2) NULL,
	[Credits] [decimal](6, 2) NULL,
	[RefCourseCreditUnitId] [int] NULL,
	[ScholarshipStatus] [bit] NULL,
	[RefProfessionalDevelopmentFinancialSupportId] [int] NULL,
	[PublishIndicator] [bit] NULL,
	[RefPDAudienceTypeId] [int] NULL,
	[RefPDActivityApprovedPurposeId] [int] NULL,
	[RefPDActivityCreditTypeId] [int] NULL,
	[RefPDActivityLevelId] [int] NULL,
	[RefPDActivityTypeId] [int] NULL,
	[ProfessionalDevelopmentActivityStateApprovedStatus] [bit] NULL,
 CONSTRAINT [PK_ProfessionalDevelopmentActivity] PRIMARY KEY CLUSTERED 
(
	[ProfessionalDevelopmentActivityId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[ProfessionalDevelopmentRequirement]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[ProfessionalDevelopmentRequirement](
	[ProfessionalDevelopmentRequirementId] [int] IDENTITY(1,1) NOT NULL,
	[OrganizationPersonRoleId] [int] NOT NULL,
	[RequiredTrainingClockHours] [decimal](6, 2) NULL,
	[CompetencySetId] [int] NULL,
 CONSTRAINT [PK_ProfessionalDevelopmentRequirement] PRIMARY KEY CLUSTERED 
(
	[ProfessionalDevelopmentRequirementId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[ProfessionalDevelopmentSession]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[ProfessionalDevelopmentSession](
	[ProfessionalDevelopmentSessionId] [int] IDENTITY(1,1) NOT NULL,
	[ProfessionalDevelopmentActivityId] [int] NOT NULL,
	[SessionIdentifier] [nvarchar](40) NULL,
	[RefPDDeliveryMethodId] [int] NULL,
	[Capacity] [int] NULL,
	[StartDate] [date] NULL,
	[StartTime] [nvarchar](15) NULL,
	[EndDate] [date] NULL,
	[EndTime] [nvarchar](15) NULL,
	[LocationName] [nvarchar](60) NULL,
	[EvaluationMethod] [nvarchar](30) NULL,
	[EvaluationScore] [nvarchar](30) NULL,
	[ExpirationDate] [date] NULL,
	[RefPDSessionStatusId] [int] NULL,
	[RefPDInstructionalDeliveryModeId] [int] NULL,
	[SponsoringAgencyName] [nvarchar](60) NULL,
	[RefLanguageId] [int] NULL,
	[FundingSource] [nvarchar](30) NULL,
	[TrainingAndTechnicalAssistanceLevel] [nvarchar](100) NULL,
	[RefELTrainerCoreKnowledgeAreaId] [int] NULL,
 CONSTRAINT [PK_ProfessionalDevelopmentSession] PRIMARY KEY CLUSTERED 
(
	[ProfessionalDevelopmentSessionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[ProfessionalDevelopmentSessionInstructor]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[ProfessionalDevelopmentSessionInstructor](
	[ProfessionalDevelopmentSessionInstructorId] [int] IDENTITY(1,1) NOT NULL,
	[ProfessionalDevelopmentSessionId] [int] NOT NULL,
	[OrganizationPersonRoleId] [int] NOT NULL,
 CONSTRAINT [PK_ProfessionalDevelopmentSessionInstructor] PRIMARY KEY NONCLUSTERED 
(
	[ProfessionalDevelopmentSessionInstructorId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[Program]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[Program](
	[OrganizationId] [int] NOT NULL,
	[CreditsRequired] [decimal](9, 2) NULL,
 CONSTRAINT [PK_Program] PRIMARY KEY CLUSTERED 
(
	[OrganizationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[ProgramParticipationAE]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[ProgramParticipationAE](
	[OrganizationPersonRoleId] [int] NOT NULL,
	[RefAeInstructionalProgramTypeId] [int] NULL,
	[RefAePostsecondaryTransitionActionId] [int] NULL,
	[PostsecondaryTransitionDate] [date] NULL,
	[RefAeSpecialProgramTypeId] [int] NULL,
	[RefAeFunctioningLevelAtIntakeId] [int] NULL,
	[RefAeFunctioningLevelAtPosttestId] [int] NULL,
	[RefGoalsForAttendingAdultEducationId] [int] NULL,
	[DisplacedHomemakerIndicator] [bit] NULL,
	[ProxyContactHours] [decimal](5, 1) NULL,
	[InstructionalActivityHoursCompleted] [decimal](9, 2) NULL,
	[RefCorrectionalEducationFacilityTypeId] [int] NULL,
	[RefWorkbasedLearningOpportunityTypeId] [int] NULL,
 CONSTRAINT [PK_ProgramParticipationAE] PRIMARY KEY CLUSTERED 
(
	[OrganizationPersonRoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[ProgramParticipationCte]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[ProgramParticipationCte](
	[OrganizationPersonRoleId] [int] NOT NULL,
	[CteParticipant] [bit] NULL,
	[CteConcentrator] [bit] NULL,
	[CteCompleter] [bit] NULL,
	[SingleParentOrSinglePregnantWoman] [bit] NULL,
	[DisplacedHomemakerIndicator] [bit] NULL,
	[CteNonTraditionalCompletion] [bit] NULL,
	[RefNonTraditionalGenderStatusId] [int] NULL,
	[RefWorkbasedLearningOpportunityTypeId] [int] NULL,
	[CareerPathwaysProgramParticipationExitDate] [date] NULL,
	[CareerPathwaysProgramParticipationStartDate] [date] NULL,
 CONSTRAINT [PK_ProgramParticipationCte] PRIMARY KEY CLUSTERED 
(
	[OrganizationPersonRoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[ProgramParticipationFoodService]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[ProgramParticipationFoodService](
	[ProgramParticipationFoodServiceId] [int] IDENTITY(1,1) NOT NULL,
	[OrganizationPersonRoleId] [int] NOT NULL,
	[RefSchoolFoodServiceProgramId] [int] NOT NULL,
 CONSTRAINT [PK_ProgramParticipationFoodService] PRIMARY KEY CLUSTERED 
(
	[ProgramParticipationFoodServiceId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[ProgramParticipationMigrant]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[ProgramParticipationMigrant](
	[OrganizationPersonRoleId] [int] NOT NULL,
	[RefMepEnrollmentTypeId] [int] NULL,
	[RefMepProjectBasedId] [int] NULL,
	[RefMepServiceTypeId] [int] NULL,
	[MepEligibilityExpirationDate] [date] NULL,
	[ContinuationOfServicesStatus] [bit] NULL,
	[RefContinuationOfServicesReasonId] [int] NULL,
	[BirthdateVerification] [nvarchar](60) NULL,
	[ImmunizationRecordFlag] [bit] NULL,
	[MigrantStudentQualifyingArrivalDate] [date] NULL,
	[LastQualifyingMoveDate] [date] NULL,
	[QualifyingMoveFromCity] [nvarchar](30) NULL,
	[RefQualifyingMoveFromStateId] [int] NULL,
	[RefQualifyingMoveFromCountryId] [int] NULL,
	[DesignatedGraduationSchoolId] [int] NULL,
 CONSTRAINT [PK_ProgramParticipationMigrant] PRIMARY KEY CLUSTERED 
(
	[OrganizationPersonRoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[ProgramParticipationNeglected]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[ProgramParticipationNeglected](
	[OrganizationPersonRoleId] [int] NOT NULL,
	[RefNeglectedProgramTypeId] [int] NULL,
	[AchievementIndicator] [bit] NULL,
	[OutcomeIndicator] [bit] NULL,
	[ObtainedEmployment] [bit] NULL,
 CONSTRAINT [PK_ProgramParticipationNeglected] PRIMARY KEY CLUSTERED 
(
	[OrganizationPersonRoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[ProgramParticipationSpecialEducation]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[ProgramParticipationSpecialEducation](
	[OrganizationPersonRoleId] [int] NOT NULL,
	[AwaitingInitialIDEAEvaluationStatus] [bit] NULL,
	[RefIDEAEducationalEnvironmentECId] [int] NULL,
	[RefIDEAEdEnvironmentSchoolAgeId] [int] NULL,
	[SpecialEducationFTE] [decimal](5, 4) NULL,
	[RefSpecialEducationExitReasonId] [int] NULL,
	[SpecialEducationServicesExitDate] [date] NULL,
 CONSTRAINT [PK_ProgramParticipationSpecialEducation] PRIMARY KEY CLUSTERED 
(
	[OrganizationPersonRoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[ProgramParticipationTeacherPrep]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[ProgramParticipationTeacherPrep](
	[OrganizationPersonRoleId] [int] NOT NULL,
	[RefTeacherPrepEnrollmentStatusId] [int] NULL,
	[RefTeacherPrepCompleterStatusId] [int] NULL,
	[RefSupervisedClinicalExperienceId] [int] NULL,
	[ClinicalExperienceClockHours] [int] NULL,
	[RefTeachingCredentialBasisId] [int] NULL,
	[RefTeachingCredentialTypeId] [int] NULL,
	[RefCriticalTeacherShortageCandidateId] [int] NULL,
	[RefAltRouteToCertificationOrLicensureId] [int] NULL,
 CONSTRAINT [PK_PrgmParticipationTeacherPrep] PRIMARY KEY CLUSTERED 
(
	[OrganizationPersonRoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[ProgramParticipationTitleI]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[ProgramParticipationTitleI](
	[OrganizationPersonRoleId] [int] NOT NULL,
	[RefTitleIIndicatorId] [int] NULL,
 CONSTRAINT [PK_ProgramParticipationTitleI] PRIMARY KEY CLUSTERED 
(
	[OrganizationPersonRoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[ProgramParticipationTitleIIILep]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[ProgramParticipationTitleIIILep](
	[OrganizationPersonRoleId] [int] NOT NULL,
	[RefTitleIIIAccountabilityId] [int] NULL,
	[RefTitleIIILanguageInstructionProgramTypeId] [int] NULL,
 CONSTRAINT [PK_ProgramParticipationTitleIII] PRIMARY KEY CLUSTERED 
(
	[OrganizationPersonRoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[PsCourse]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[PsCourse](
	[OrganizationId] [int] NOT NULL,
	[RefCourseCreditBasisTypeId] [int] NULL,
	[RefCourseCreditLevelTypeId] [int] NULL,
	[CourseNumber] [nvarchar](30) NULL,
	[OriginalCourseIdentifier] [nvarchar](40) NULL,
	[OverrideSchoolCourseNumber] [nvarchar](30) NULL,
	[RefNCESCollegeCourseMapCodeId] [int] NULL,
	[NCAAEligibilityInd] [int] NULL,
	[RefCipCodeId] [int] NULL,
 CONSTRAINT [PK_PsCourse] PRIMARY KEY CLUSTERED 
(
	[OrganizationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[PsInstitution]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[PsInstitution](
	[OrganizationId] [int] NOT NULL,
	[RefCarnegieBasicClassificationId] [int] NULL,
	[RefControlOfInstitutionId] [int] NULL,
	[RefLevelOfInstitutionId] [int] NULL,
	[RefPredominantCalendarSystemId] [int] NULL,
	[RefTenureSystemId] [int] NULL,
	[VirtualIndicator] [bit] NULL,
	[InstitutionallyControlledHousingStatus] [bit] NULL,
	[RefAdmissionConsiderationLevelId] [int] NULL,
	[RefAdmissionConsiderationTypeId] [int] NULL,
 CONSTRAINT [PK_PsInstitution] PRIMARY KEY CLUSTERED 
(
	[OrganizationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[PsPriceOfAttendance]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[PsPriceOfAttendance](
	[PSPriceOfAttendanceId] [int] IDENTITY(1,1) NOT NULL,
	[OrganizationId] [int] NOT NULL,
	[SessionDesignator] [nchar](7) NULL,
	[TuitionPublished] [decimal](9, 2) NULL,
	[RefTuitionUnitId] [int] NULL,
	[BoardCharges] [decimal](9, 2) NULL,
	[RoomCharges] [decimal](9, 2) NULL,
	[BooksAndSuppliesCosts] [decimal](9, 2) NULL,
	[RequiredStudentFees] [decimal](9, 2) NULL,
	[ComprehensiveFee] [decimal](9, 2) NULL,
	[OtherStudentExpenses] [decimal](9, 2) NULL,
	[PriceOfAttendance] [decimal](9, 2) NULL,
	[IPEDSCollectionYearDesignator] [nchar](9) NULL,
 CONSTRAINT [PK_PSPriceOfAttendance] PRIMARY KEY CLUSTERED 
(
	[PSPriceOfAttendanceId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[PsProgram]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[PsProgram](
	[PsProgramId] [int] IDENTITY(1,1) NOT NULL,
	[OrganizationId] [int] NOT NULL,
	[RefCipVersionId] [int] NULL,
	[RefCipCodeId] [int] NULL,
	[ProgramLengthHours] [decimal](9, 2) NULL,
	[RefProgramLengthHoursTypeId] [int] NULL,
	[NormalLengthTimeForCompletion] [nvarchar](60) NULL,
	[RefTimeForCompletionUnitsId] [int] NULL,
	[RefPSExitOrWithdrawalTypeId] [int] NULL,
	[RefPSProgramLevelId] [int] NULL,
	[RefDQPCategoriesOfLearningId] [int] NULL,
 CONSTRAINT [PK_PsProgram] PRIMARY KEY CLUSTERED 
(
	[PsProgramId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[PsSection]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[PsSection](
	[OrganizationId] [int] NOT NULL,
	[GradeValueQualifier] [nchar](2) NULL,
	[RefCipCodeId] [int] NULL,
	[RefCourseGpaApplicabilityId] [int] NULL,
	[RefCourseHonorsTypeId] [int] NULL,
	[RefCourseInstructionMethodId] [int] NULL,
	[RefCourseLevelTypeId] [int] NULL,
	[RefDevelopmentalEducationTypeId] [int] NULL,
	[RefWorkbasedLearningOpportunityTypeId] [int] NULL,
 CONSTRAINT [PK_PsSection] PRIMARY KEY CLUSTERED 
(
	[OrganizationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[PsSectionLocation]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[PsSectionLocation](
	[OrganizationId] [int] NOT NULL,
	[CourseInstructionSiteName] [nvarchar](60) NULL,
	[RefCourseInstructionSiteTypeId] [int] NULL,
 CONSTRAINT [PK_PsSectionLocation] PRIMARY KEY CLUSTERED 
(
	[OrganizationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[PsStaffEmployment]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[PsStaffEmployment](
	[StaffEmploymentId] [int] NOT NULL,
	[RefFullTimeStatusId] [int] NULL,
	[FacultyStatus] [bit] NULL,
	[RefEmploymentContractTypeId] [int] NULL,
	[StandardOccupationalClass] [nchar](7) NULL,
	[RefIpedsOccupationalCategoryId] [int] NULL,
	[InstructionalStaffStatus] [bit] NULL,
	[MedicalSchoolStaffStatus] [bit] NULL,
	[RefInstructionalStaffContractLengthId] [int] NULL,
	[RefInstructionalStaffFacultyTenureId] [int] NULL,
	[RefAcademicRankId] [int] NULL,
	[RefInstructionCreditTypeId] [int] NULL,
	[GraduateAssistantStatus] [bit] NULL,
	[RefGraduateAssistantIpedsCategoryId] [int] NULL,
	[AnnualBaseContractualSalary] [decimal](9, 2) NULL,
 CONSTRAINT [PK_PsStaffEmployment] PRIMARY KEY CLUSTERED 
(
	[StaffEmploymentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[PsStudentAcademicAward]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[PsStudentAcademicAward](
	[PsStudentAcademicAwardId] [int] IDENTITY(1,1) NOT NULL,
	[OrganizationPersonRoleId] [int] NOT NULL,
	[AcademicAwardDate] [nvarchar](14) NULL,
	[RefAcademicAwardLevelId] [int] NULL,
	[AcademicAwardTitle] [nvarchar](80) NULL,
 CONSTRAINT [PK_PsStudentAcademicAward] PRIMARY KEY CLUSTERED 
(
	[PsStudentAcademicAwardId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[PsStudentAcademicRecord]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[PsStudentAcademicRecord](
	[PsStudentAcademicRecordId] [int] IDENTITY(1,1) NOT NULL,
	[OrganizationPersonRoleId] [int] NOT NULL,
	[AcademicYearDesignator] [nchar](9) NULL,
	[RefAcademicTermDesignatorId] [int] NULL,
	[GradePointAverage] [decimal](9, 4) NULL,
	[GradePointAverageCumulative] [decimal](9, 4) NULL,
	[DualCreditDualEnrollmentCredits] [decimal](9, 4) NULL,
	[AdvancedPlacementCreditsAwarded] [int] NULL,
	[RefProfessionalTechCredentialTypeId] [int] NULL,
	[DiplomaOrCredentialAwardDate] [nchar](7) NULL,
	[EnteringTerm] [nvarchar](30) NULL,
	[CourseTotal] [int] NULL,
	[RefCreditHoursAppliedOtherProgramId] [int] NULL,
 CONSTRAINT [PK_PsStudentAcademicRecord] PRIMARY KEY CLUSTERED 
(
	[PsStudentAcademicRecordId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[PsStudentAdmissionTest]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[PsStudentAdmissionTest](
	[PsStudentAdmissionTestId] [int] IDENTITY(1,1) NOT NULL,
	[OrganizationPersonRoleId] [int] NOT NULL,
	[RefStandardizedAdmissionTestId] [int] NOT NULL,
	[StandardizedAdmissionTestScore] [decimal](9, 2) NULL,
 CONSTRAINT [PK_PsAdmissionTest] PRIMARY KEY CLUSTERED 
(
	[PsStudentAdmissionTestId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[PsStudentApplication]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[PsStudentApplication](
	[OrganizationPersonRoleId] [int] NOT NULL,
	[PostsecondaryApplicant] [bit] NULL,
	[GradePointAverageCumulative] [decimal](9, 2) NULL,
	[RefGradePointAverageDomainId] [int] NULL,
	[RefGpaWeightedIndicatorId] [int] NULL,
	[HighSchoolPercentile] [decimal](5, 4) NULL,
	[HighSchoolStudentClassRank] [int] NULL,
	[HighSchoolGraduatingClassSize] [int] NULL,
	[RefAdmittedStudentId] [int] NULL,
	[WaitListedStudent] [bit] NULL,
 CONSTRAINT [PK_PsStudentApplication] PRIMARY KEY CLUSTERED 
(
	[OrganizationPersonRoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[PsStudentCohort]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[PsStudentCohort](
	[OrganizationPersonRoleId] [int] NOT NULL,
	[CohortGraduationYear] [nchar](4) NULL,
 CONSTRAINT [PK_PsStudentCohort] PRIMARY KEY CLUSTERED 
(
	[OrganizationPersonRoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[PsStudentCourseSectionMark]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[PsStudentCourseSectionMark](
	[OrganizationPersonRoleId] [int] NOT NULL,
	[RefCourseAcademicGradeStatusCodeId] [int] NULL,
	[CourseNarrativeExplanationGrade] [nvarchar](300) NULL,
	[StudentCourseSectionGradeNarrative] [nvarchar](300) NULL,
 CONSTRAINT [PK_PsStudentCourseSectionMark] PRIMARY KEY CLUSTERED 
(
	[OrganizationPersonRoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[PsStudentDemographic]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[PsStudentDemographic](
	[OrganizationPersonRoleId] [int] NOT NULL,
	[RefDependencyStatusId] [int] NULL,
	[RefTuitionResidencyTypeId] [int] NULL,
	[RefCampusResidencyTypeId] [int] NULL,
	[RefPsLepTypeId] [int] NULL,
	[RefPaternalEducationLevelId] [int] NULL,
	[RefMaternalEducationLevelId] [int] NULL,
	[RefCohortExclusionId] [int] NULL,
	[NumberOfDependents] [int] NULL,
 CONSTRAINT [PK_PsStudentDemographic] PRIMARY KEY CLUSTERED 
(
	[OrganizationPersonRoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[PsStudentEmployment]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[PsStudentEmployment](
	[OrganizationPersonRoleId] [int] NOT NULL,
	[RefEmployedWhileEnrolledId] [int] NULL,
	[RefEmployedAfterExitId] [int] NULL,
	[EmploymentNaicsCode] [nchar](6) NULL,
	[RefEmploymentStatusWhileEnrolledId] [int] NULL,
 CONSTRAINT [PK_PsStudentEmployment] PRIMARY KEY CLUSTERED 
(
	[OrganizationPersonRoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[PsStudentEnrollment]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[PsStudentEnrollment](
	[PSStudentEnrollmentId] [int] IDENTITY(1,1) NOT NULL,
	[OrganizationPersonRoleId] [int] NOT NULL,
	[RefPsEnrollmentTypeId] [int] NULL,
	[RefPsEnrollmentStatusId] [int] NULL,
	[DegreeOrCertificateSeekingStudent] [bit] NULL,
	[FirstTimePostsecondaryStudent] [bit] NULL,
	[RefPsStudentLevelId] [int] NULL,
	[RefPsEnrollmentAwardTypeId] [int] NULL,
	[InitialEnrollmentTerm] [nvarchar](30) NULL,
	[RefTransferReadyId] [int] NULL,
	[InstructionalActivityHoursAttempted] [decimal](9, 2) NULL,
	[InstructionalActivityHoursCompleted] [decimal](9, 2) NULL,
	[RefInstructionalActivityHoursId] [int] NULL,
	[RefDistanceEducationCourseEnrollmentId] [int] NULL,
	[HousingOnCampus] [bit] NULL,
	[FraternityParticipationStatus] [bit] NULL,
	[SororityParticipationStatus] [bit] NULL,
	[EntryDateIntoPostsecondary] [date] NULL,
	[DistanceEducationProgramEnrollmentInd] [bit] NULL,
	[DoctoralCandidacyAdmitInd] [bit] NULL,
	[DoctoralCandidacyDate] [date] NULL,
	[DoctoralExamTakenDate] [date] NULL,
	[RefDoctoralExamsRequiredCodeId] [int] NULL,
	[RefGraduateOrDoctoralExamResultsStatusId] [int] NULL,
	[OralDefenseCompletedIndicator] [bit] NULL,
	[OralDefenseDate] [date] NULL,
	[PostsecondaryEnteringStudentInd] [bit] NULL,
	[ThesisOrDissertationTitle] [nvarchar](300) NULL,
	[RefDevelopmentalEducationReferralStatusId] [int] NULL,
	[RefDevelopmentalEducationTypeId] [int] NULL,
 CONSTRAINT [PK_PsStudentEnrollment] PRIMARY KEY CLUSTERED 
(
	[PSStudentEnrollmentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[PsStudentFinancialAid]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[PsStudentFinancialAid](
	[OrganizationPersonRoleId] [int] NOT NULL,
	[FinancialAidApplicant] [bit] NULL,
	[FinancialNeed] [decimal](9, 2) NULL,
	[RefNeedDeterminationMethodId] [int] NULL,
	[TitleIVParticipantAndRecipient] [bit] NULL,
	[FinancialAidIncomeLevel] [decimal](9, 2) NULL,
	[RefFinancialAidVeteransBenefitStatusId] [int] NULL,
	[RefFinancialAidVeteransBenefitTypeId] [int] NULL,
 CONSTRAINT [PK_PsStudentFinancialAid] PRIMARY KEY CLUSTERED 
(
	[OrganizationPersonRoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[PSStudentProgram]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[PSStudentProgram](
	[PSStudentProgramId] [int] IDENTITY(1,1) NOT NULL,
	[OrganizationPersonRoleId] [int] NOT NULL,
	[RefCipUseId] [int] NULL,
	[PsProgramId] [int] NULL,
	[RefWorkbasedLearningOpportunityTypeId] [int] NULL,
	[RefTransferOutIndicatorId] [int] NULL,
 CONSTRAINT [PK_PSStudentEnrollmentCIP] PRIMARY KEY CLUSTERED 
(
	[PSStudentProgramId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[PsStudentSection]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[PsStudentSection](
	[OrganizationPersonRoleId] [int] IDENTITY(1,1) NOT NULL,
	[CourseOverrideSchool] [nvarchar](80) NULL,
	[DegreeApplicability] [bit] NULL,
	[AcademicGrade] [nvarchar](15) NULL,
	[NumberOfCreditsEarned] [decimal](9, 2) NULL,
	[QualityPointsEarned] [decimal](9, 2) NULL,
	[RefCourseRepeatCodeId] [int] NULL,
	[RefCourseAcademicGradeStatusCodeId] [int] NULL,
 CONSTRAINT [PK_PsStudentSection] PRIMARY KEY CLUSTERED 
(
	[OrganizationPersonRoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[QuarterlyEmploymentRecord]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[QuarterlyEmploymentRecord](
	[QuarterlyEmploymentRecordId] [int] IDENTITY(1,1) NOT NULL,
	[PersonId] [int] NOT NULL,
	[Earnings] [decimal](9, 0) NULL,
	[EmploymentNAICSCode] [nvarchar](50) NULL,
	[ReferencePeriodStartDate] [date] NULL,
	[ReferencePeriodEndDate] [date] NULL,
	[RefERAdministrativeDataSourceId] [int] NULL,
	[RefEmploymentLocationId] [int] NULL,
	[RefEmployedPriorToEnrollmentId] [int] NULL,
 CONSTRAINT [PK_WorkforceEmploymentRecord] PRIMARY KEY CLUSTERED 
(
	[QuarterlyEmploymentRecordId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[RefAbsentAttendanceCategory]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[RefAbsentAttendanceCategory](
	[RefAbsentAttendanceCategoryId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefAbsentAttendanceCategory] PRIMARY KEY CLUSTERED 
(
	[RefAbsentAttendanceCategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[RefAcademicAwardLevel]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[RefAcademicAwardLevel](
	[RefAcademicAwardLevelId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [XPKRefAcademicAwardLevel] PRIMARY KEY CLUSTERED 
(
	[RefAcademicAwardLevelId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[RefAcademicHonorType]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[RefAcademicHonorType](
	[RefAcademicHonorTypeId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefAcademicHonorType] PRIMARY KEY CLUSTERED 
(
	[RefAcademicHonorTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[RefAcademicRank]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[RefAcademicRank](
	[RefAcademicRankId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefAcademicRank] PRIMARY KEY CLUSTERED 
(
	[RefAcademicRankId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[RefAcademicSubject]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[RefAcademicSubject](
	[RefAcademicSubjectId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [XPKRefAcademicRank] PRIMARY KEY CLUSTERED 
(
	[RefAcademicSubjectId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[RefAcademicTermDesignator]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[RefAcademicTermDesignator](
	[RefAcademicTermDesignatorId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefAcademicTermDesignator] PRIMARY KEY CLUSTERED 
(
	[RefAcademicTermDesignatorId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[RefAccommodationsNeededType]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[RefAccommodationsNeededType](
	[RefAccommodationsNeededTypeId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefAccommodationsNeededType] PRIMARY KEY CLUSTERED 
(
	[RefAccommodationsNeededTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[RefAccreditationAgency]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[RefAccreditationAgency](
	[RefAccreditationAgencyId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefAccreditationAgency] PRIMARY KEY CLUSTERED 
(
	[RefAccreditationAgencyId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[RefActivityRecognitionType]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[RefActivityRecognitionType](
	[RefActivityRecognitionTypeId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefActivityRecognitionType] PRIMARY KEY CLUSTERED 
(
	[RefActivityRecognitionTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[RefActivityTimeMeasurementType]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[RefActivityTimeMeasurementType](
	[RefActivityTimeMeasurementTypeId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefActivityTimeMeasurementType] PRIMARY KEY CLUSTERED 
(
	[RefActivityTimeMeasurementTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[RefAdditionalCreditType]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[RefAdditionalCreditType](
	[RefAdditionalCreditTypeId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefAdditionalCreditType] PRIMARY KEY CLUSTERED 
(
	[RefAdditionalCreditTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[RefAddressType]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[RefAddressType](
	[RefAddressTypeId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefAddressType] PRIMARY KEY CLUSTERED 
(
	[RefAddressTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[RefAdministrativeFundingControl]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[RefAdministrativeFundingControl](
	[RefAdministrativeFundingControlId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefAdminFundingControl] PRIMARY KEY CLUSTERED 
(
	[RefAdministrativeFundingControlId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[RefAdmissionConsiderationLevel]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[RefAdmissionConsiderationLevel](
	[RefAdmissionConsiderationLevelId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefAdmissionConsiderationLevel] PRIMARY KEY CLUSTERED 
(
	[RefAdmissionConsiderationLevelId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[RefAdmissionConsiderationType]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[RefAdmissionConsiderationType](
	[RefAdmissionConsiderationTypeId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](150) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefAdmissionConsiderationType] PRIMARY KEY CLUSTERED 
(
	[RefAdmissionConsiderationTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[RefAdmittedStudent]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[RefAdmittedStudent](
	[RefAdmittedStudentId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefAdmittedStudent] PRIMARY KEY CLUSTERED 
(
	[RefAdmittedStudentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[RefAdvancedPlacementCourseCode]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[RefAdvancedPlacementCourseCode](
	[RefAdvancedPlacementCourseCodeId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefAdvancedPlacementCourseCode] PRIMARY KEY CLUSTERED 
(
	[RefAdvancedPlacementCourseCodeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[RefAeCertificationType]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[RefAeCertificationType](
	[RefAeCertificationTypeId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK__RefAeCertificationType] PRIMARY KEY CLUSTERED 
(
	[RefAeCertificationTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[RefAeFunctioningLevelAtIntake]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[RefAeFunctioningLevelAtIntake](
	[RefAeFunctioningLevelAtIntakeId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefAEFunctioningLevelAtIntake] PRIMARY KEY CLUSTERED 
(
	[RefAeFunctioningLevelAtIntakeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[RefAeFunctioningLevelAtPosttest]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[RefAeFunctioningLevelAtPosttest](
	[RefAeFunctioningLevelAtPosttestId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefAEFunctioningLevelAtPosttest] PRIMARY KEY CLUSTERED 
(
	[RefAeFunctioningLevelAtPosttestId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[RefAeInstructionalProgramType]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[RefAeInstructionalProgramType](
	[RefAeInstructionalProgramTypeId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK__RefAeInstructionalProgramType] PRIMARY KEY CLUSTERED 
(
	[RefAeInstructionalProgramTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[RefAePostsecondaryTransitionAction]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[RefAePostsecondaryTransitionAction](
	[RefAePostsecondaryTransitionActionId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefAEPostsecondaryTransitionAction] PRIMARY KEY CLUSTERED 
(
	[RefAePostsecondaryTransitionActionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[RefAeSpecialProgramType]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[RefAeSpecialProgramType](
	[RefAeSpecialProgramTypeId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefAeSpecialProgramType] PRIMARY KEY CLUSTERED 
(
	[RefAeSpecialProgramTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[RefAeStaffClassification]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[RefAeStaffClassification](
	[RefAeStaffClassificationId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefAeStaffClassification] PRIMARY KEY CLUSTERED 
(
	[RefAeStaffClassificationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[RefAeStaffEmploymentStatus]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[RefAeStaffEmploymentStatus](
	[RefAeStaffEmploymentStatusId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefAeStaffEmploymentStatus] PRIMARY KEY CLUSTERED 
(
	[RefAeStaffEmploymentStatusId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[RefAllergySeverity]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[RefAllergySeverity](
	[RefAllergySeverityId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefAllergySeverity] PRIMARY KEY CLUSTERED 
(
	[RefAllergySeverityId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[RefAllergyType]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[RefAllergyType](
	[RefAllergyTypeId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefAllergyType] PRIMARY KEY CLUSTERED 
(
	[RefAllergyTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[RefAlternateFundUses]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[RefAlternateFundUses](
	[RefAlternateFundUsesId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefAlternateFundUses] PRIMARY KEY CLUSTERED 
(
	[RefAlternateFundUsesId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[RefAlternativeSchoolFocus]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[RefAlternativeSchoolFocus](
	[RefAlternativeSchoolFocusId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [XPKRefAlternativeFocus] PRIMARY KEY CLUSTERED 
(
	[RefAlternativeSchoolFocusId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[RefAltRouteToCertificationOrLicensure]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[RefAltRouteToCertificationOrLicensure](
	[RefAltRouteToCertificationOrLicensureId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefAltRouteToCertificationOrLicensure] PRIMARY KEY CLUSTERED 
(
	[RefAltRouteToCertificationOrLicensureId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[RefAmaoAttainmentStatus]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[RefAmaoAttainmentStatus](
	[RefAmaoAttainmentStatusId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK__RefAmaoAttainmentStatus] PRIMARY KEY CLUSTERED 
(
	[RefAmaoAttainmentStatusId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[RefApipInteractionType]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[RefApipInteractionType](
	[RefAPIPInteractionTypeId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK__RefApipInteractionType] PRIMARY KEY CLUSTERED 
(
	[RefAPIPInteractionTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[RefAssessmentAccommodationCategory]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[RefAssessmentAccommodationCategory](
	[RefAssessmentAccommodationCategoryId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefAssessmentAccommodationCategory] PRIMARY KEY CLUSTERED 
(
	[RefAssessmentAccommodationCategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[RefAssessmentAccommodationType]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[RefAssessmentAccommodationType](
	[RefAssessmentAccommodationTypeId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_AssessmentAccommodationType] PRIMARY KEY CLUSTERED 
(
	[RefAssessmentAccommodationTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[RefAssessmentAssetIdentifierType]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[RefAssessmentAssetIdentifierType](
	[RefAssessmentAssetIdentifierTypeId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK__RefAssesmentAssestIdentifierType] PRIMARY KEY CLUSTERED 
(
	[RefAssessmentAssetIdentifierTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[RefAssessmentAssetType]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[RefAssessmentAssetType](
	[RefAssessmentAssetTypeId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefAssessmentAssetType] PRIMARY KEY CLUSTERED 
(
	[RefAssessmentAssetTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[RefAssessmentELDevelopmentalDomain]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[RefAssessmentELDevelopmentalDomain](
	[RefAssessmentELDevelopmentalDomainId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](60) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](6, 2) NULL,
 CONSTRAINT [PK_RefAssessmentELDevelopmentalDomain] PRIMARY KEY CLUSTERED 
(
	[RefAssessmentELDevelopmentalDomainId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[RefAssessmentFormSectionIdentificationSystem]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[RefAssessmentFormSectionIdentificationSystem](
	[RefAssessmentFormSectionIdentificationSystemId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK__RefAssessmentFormSectionIdentificationSystem] PRIMARY KEY CLUSTERED 
(
	[RefAssessmentFormSectionIdentificationSystemId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[RefAssessmentItemCharacteristicType]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[RefAssessmentItemCharacteristicType](
	[RefAssessmentItemCharacteristicTypeId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK__RefAssessmentItemCharacteristicType] PRIMARY KEY CLUSTERED 
(
	[RefAssessmentItemCharacteristicTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[RefAssessmentItemResponseScoreStatus]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[RefAssessmentItemResponseScoreStatus](
	[RefAssessmentItemResponseScoreStatusId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefAssessmentItemResponseScoreStatus] PRIMARY KEY CLUSTERED 
(
	[RefAssessmentItemResponseScoreStatusId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[RefAssessmentItemResponseStatus]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[RefAssessmentItemResponseStatus](
	[RefAssessmentItemResponseStatusId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK__RefAssessmentItemResponseStatus] PRIMARY KEY CLUSTERED 
(
	[RefAssessmentItemResponseStatusId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[RefAssessmentItemType]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[RefAssessmentItemType](
	[RefAssessmentItemTypeId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK__RefAssessmentItemType] PRIMARY KEY CLUSTERED 
(
	[RefAssessmentItemTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[RefAssessmentNeedAlternativeRepresentationType]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[RefAssessmentNeedAlternativeRepresentationType](
	[RefAssessmentNeedAlternativeRepresentationTypeId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefAssessmentNeedAlternativeRepresentationType] PRIMARY KEY CLUSTERED 
(
	[RefAssessmentNeedAlternativeRepresentationTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[RefAssessmentNeedBrailleGradeType]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[RefAssessmentNeedBrailleGradeType](
	[RefAssessmentNeedBrailleGradeTypeId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_AssessmentNeedBrailleGradeTypeId] PRIMARY KEY CLUSTERED 
(
	[RefAssessmentNeedBrailleGradeTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[RefAssessmentNeedBrailleMarkType]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[RefAssessmentNeedBrailleMarkType](
	[RefAssessmentNeedBrailleMarkTypeId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefAssessmentNeedBrailleMarkType] PRIMARY KEY CLUSTERED 
(
	[RefAssessmentNeedBrailleMarkTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[RefAssessmentNeedBrailleStatusCellType]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[RefAssessmentNeedBrailleStatusCellType](
	[RefAssessmentNeedBrailleStatusCellTypeId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefAssessmentNeedBrailleStatusCellType] PRIMARY KEY CLUSTERED 
(
	[RefAssessmentNeedBrailleStatusCellTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[RefAssessmentNeedHazardType]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[RefAssessmentNeedHazardType](
	[RefAssessmentNeedHazardTypeId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefAssessmentNeedHazardType] PRIMARY KEY CLUSTERED 
(
	[RefAssessmentNeedHazardTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[RefAssessmentNeedIncreasedWhitespacingType]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[RefAssessmentNeedIncreasedWhitespacingType](
	[RefAssessmentNeedIncreasedWhitespacingTypeId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefAssessmentNeedIncreasedWhitespacingType] PRIMARY KEY CLUSTERED 
(
	[RefAssessmentNeedIncreasedWhitespacingTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[RefAssessmentNeedLanguageLearnerType]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[RefAssessmentNeedLanguageLearnerType](
	[RefAssessmentNeedLanguageLearnerTypeId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefAssessmentNeedsProfileContentLanguageLearnerType] PRIMARY KEY CLUSTERED 
(
	[RefAssessmentNeedLanguageLearnerTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[RefAssessmentNeedMaskingType]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[RefAssessmentNeedMaskingType](
	[RefAssessmentNeedMaskingTypeId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefAssessmentNeedDisplayMaskingType] PRIMARY KEY CLUSTERED 
(
	[RefAssessmentNeedMaskingTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[RefAssessmentNeedNumberOfBrailleDots]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[RefAssessmentNeedNumberOfBrailleDots](
	[RefAssessmentNeedNumberOfBrailleDotsId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefAssessmentNeedNumberOfBrailleDots] PRIMARY KEY CLUSTERED 
(
	[RefAssessmentNeedNumberOfBrailleDotsId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[RefAssessmentNeedSigningType]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[RefAssessmentNeedSigningType](
	[RefAssessmentNeedSigningTypeId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefAssessmentNeedSigningType] PRIMARY KEY CLUSTERED 
(
	[RefAssessmentNeedSigningTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[RefAssessmentNeedSpokenSourcePreferenceType]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[RefAssessmentNeedSpokenSourcePreferenceType](
	[RefAssessmentNeedSpokenSourcePreferenceTypeId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefAssessmentNeedSpokenSourcePreferenceType] PRIMARY KEY CLUSTERED 
(
	[RefAssessmentNeedSpokenSourcePreferenceTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[RefAssessmentNeedSupportTool]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[RefAssessmentNeedSupportTool](
	[RefAssessmentNeedSupportToolId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefAssessmentNeedSupportTool] PRIMARY KEY CLUSTERED 
(
	[RefAssessmentNeedSupportToolId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[RefAssessmentNeedUsageType]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[RefAssessmentNeedUsageType](
	[RefAssessmentNeedUsageTypeId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefAssessmentNeedUsageType] PRIMARY KEY CLUSTERED 
(
	[RefAssessmentNeedUsageTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[RefAssessmentNeedUserSpokenPreferenceType]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[RefAssessmentNeedUserSpokenPreferenceType](
	[RefAssessmentNeedUserSpokenPreferenceTypeId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefAssessmentNeedUserSpokenPreferenceType] PRIMARY KEY CLUSTERED 
(
	[RefAssessmentNeedUserSpokenPreferenceTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[RefAssessmentParticipationIndicator]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[RefAssessmentParticipationIndicator](
	[RefAssessmentParticipationIndicatorId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefAssessmentParticipationIndicator] PRIMARY KEY CLUSTERED 
(
	[RefAssessmentParticipationIndicatorId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[RefAssessmentPlatformType]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[RefAssessmentPlatformType](
	[RefAssessmentPlatformTypeId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK__RefAssesessmentPlatformType] PRIMARY KEY CLUSTERED 
(
	[RefAssessmentPlatformTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[RefAssessmentPretestOutcome]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[RefAssessmentPretestOutcome](
	[RefAssessmentPretestOutcomeId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_AssessmentPretestOutcome] PRIMARY KEY CLUSTERED 
(
	[RefAssessmentPretestOutcomeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[RefAssessmentPurpose]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[RefAssessmentPurpose](
	[RefAssessmentPurposeId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefAssessmentPurpose] PRIMARY KEY CLUSTERED 
(
	[RefAssessmentPurposeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[RefAssessmentReasonNotCompleting]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[RefAssessmentReasonNotCompleting](
	[RefAssessmentReasonNotCompletingId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefAssessmentReasonNotCompleting] PRIMARY KEY CLUSTERED 
(
	[RefAssessmentReasonNotCompletingId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[RefAssessmentReasonNotTested]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[RefAssessmentReasonNotTested](
	[RefAssessmentReasonNotTestedId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefAssessmentReasonNotTested] PRIMARY KEY CLUSTERED 
(
	[RefAssessmentReasonNotTestedId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[RefAssessmentRegistrationCompletionStatus]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[RefAssessmentRegistrationCompletionStatus](
	[RefAssessmentRegistrationCompletionStatusId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefAssessmentRegistrationCompletionStatus] PRIMARY KEY CLUSTERED 
(
	[RefAssessmentRegistrationCompletionStatusId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[RefAssessmentReportingMethod]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[RefAssessmentReportingMethod](
	[RefAssessmentReportingMethodId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefAssessmentReportingMethod] PRIMARY KEY CLUSTERED 
(
	[RefAssessmentReportingMethodId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[RefAssessmentResultDataType]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[RefAssessmentResultDataType](
	[RefAssessmentResultDataTypeId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefAssessmentResultDataType] PRIMARY KEY CLUSTERED 
(
	[RefAssessmentResultDataTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[RefAssessmentResultScoreType]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[RefAssessmentResultScoreType](
	[RefAssessmentResultScoreTypeId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](150) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefAssessmentResultScoreType] PRIMARY KEY CLUSTERED 
(
	[RefAssessmentResultScoreTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[RefAssessmentSessionSpecialCircumstanceType]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[RefAssessmentSessionSpecialCircumstanceType](
	[RefAssessmentSessionSpecialCircumstanceTypeId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK__RefAssessmentSpecialCircumstance] PRIMARY KEY CLUSTERED 
(
	[RefAssessmentSessionSpecialCircumstanceTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[RefAssessmentSessionStaffRoleType]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[RefAssessmentSessionStaffRoleType](
	[RefAssessmentSessionStaffRoleTypeId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefAssessmentSesstionStaffRoleType] PRIMARY KEY CLUSTERED 
(
	[RefAssessmentSessionStaffRoleTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[RefAssessmentSessionType]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[RefAssessmentSessionType](
	[RefAssessmentSessionTypeId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefAssessmentSessionType] PRIMARY KEY CLUSTERED 
(
	[RefAssessmentSessionTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[RefAssessmentSubtestIdentifierType]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[RefAssessmentSubtestIdentifierType](
	[RefAssessmentSubtestIdentifierTypeId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefAssessmentSubtestIdentifierType] PRIMARY KEY CLUSTERED 
(
	[RefAssessmentSubtestIdentifierTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[RefAssessmentType]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[RefAssessmentType](
	[RefAssessmentTypeId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefAssessmentType] PRIMARY KEY CLUSTERED 
(
	[RefAssessmentTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[RefAssessmentTypeChildrenWithDisabilities]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[RefAssessmentTypeChildrenWithDisabilities](
	[RefAssessmentTypeChildrenWithDisabilitiesId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefAssessmentTypeChildrenWithDisabilities] PRIMARY KEY CLUSTERED 
(
	[RefAssessmentTypeChildrenWithDisabilitiesId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[RefAttendanceEventType]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[RefAttendanceEventType](
	[RefAttendanceEventTypeId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefAttendanceEventType] PRIMARY KEY CLUSTERED 
(
	[RefAttendanceEventTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[RefAttendanceStatus]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[RefAttendanceStatus](
	[RefAttendanceStatusId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefAttendanceStatus] PRIMARY KEY CLUSTERED 
(
	[RefAttendanceStatusId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[RefAypStatus]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[RefAypStatus](
	[RefAypStatusId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_AypStatus] PRIMARY KEY CLUSTERED 
(
	[RefAypStatusId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[RefBarrierToEducatingHomeless]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[RefBarrierToEducatingHomeless](
	[RefBarrierToEducatingHomelessId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefBarrierToEducatingHomeless] PRIMARY KEY CLUSTERED 
(
	[RefBarrierToEducatingHomelessId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[RefBillableBasisType]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[RefBillableBasisType](
	[RefBillableBasisTypeId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefBillableBasisType] PRIMARY KEY CLUSTERED 
(
	[RefBillableBasisTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[RefBlendedLearningModelType]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[RefBlendedLearningModelType](
	[RefBlendedLearningModelTypeId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefBlendedLearningModelType] PRIMARY KEY CLUSTERED 
(
	[RefBlendedLearningModelTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[RefBloomsTaxonomyDomain]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[RefBloomsTaxonomyDomain](
	[RefBloomsTaxonomyDomainId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK__RefBloomTaxonomyDomain] PRIMARY KEY CLUSTERED 
(
	[RefBloomsTaxonomyDomainId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[RefBuildingUseType]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[RefBuildingUseType](
	[RefBuildingUseTypeId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_BuildingUseType] PRIMARY KEY CLUSTERED 
(
	[RefBuildingUseTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[RefCalendarEventType]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[RefCalendarEventType](
	[RefCalendarEventTypeId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK__RefCalendarEventType] PRIMARY KEY CLUSTERED 
(
	[RefCalendarEventTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[RefCampusResidencyType]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[RefCampusResidencyType](
	[RefCampusResidencyTypeId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefCampusResidencyType] PRIMARY KEY CLUSTERED 
(
	[RefCampusResidencyTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[RefCareerCluster]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[RefCareerCluster](
	[RefCareerClusterId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefCareerCluster] PRIMARY KEY CLUSTERED 
(
	[RefCareerClusterId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[RefCareerEducationPlanType]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[RefCareerEducationPlanType](
	[RefCareerEducationPlanTypeId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefCareerEducationPlanType] PRIMARY KEY CLUSTERED 
(
	[RefCareerEducationPlanTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[RefCarnegieBasicClassification]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[RefCarnegieBasicClassification](
	[RefCarnegieBasicClassificationId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [XPKRefClassification] PRIMARY KEY CLUSTERED 
(
	[RefCarnegieBasicClassificationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[RefCharterSchoolApprovalAgencyType]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[RefCharterSchoolApprovalAgencyType](
	[RefCharterSchoolApprovalAgencyTypeId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefCharterSchoolApprovalAgencyType] PRIMARY KEY CLUSTERED 
(
	[RefCharterSchoolApprovalAgencyTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[RefCharterSchoolManagementOrganizationType]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[RefCharterSchoolManagementOrganizationType](
	[RefCharterSchoolManagementOrganizationTypeId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](60) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](6, 2) NULL,
 CONSTRAINT [PK_RefCharterSchoolManagementOrganizationType] PRIMARY KEY CLUSTERED 
(
	[RefCharterSchoolManagementOrganizationTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[RefCharterSchoolType]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[RefCharterSchoolType](
	[RefCharterSchoolTypeId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefCharterSchoolType] PRIMARY KEY CLUSTERED 
(
	[RefCharterSchoolTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[RefChildDevelopmentalScreeningStatus]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[RefChildDevelopmentalScreeningStatus](
	[RefChildDevelopmentalScreeningStatusId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefChildDevelopmentalScreeningStatus] PRIMARY KEY CLUSTERED 
(
	[RefChildDevelopmentalScreeningStatusId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[RefChildDevelopmentAssociateType]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[RefChildDevelopmentAssociateType](
	[RefChildDevelopmentAssociateTypeId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefChildEDevelopmentAssociateType] PRIMARY KEY CLUSTERED 
(
	[RefChildDevelopmentAssociateTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[RefChildOutcomesSummaryRating]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[RefChildOutcomesSummaryRating](
	[RefChildOutcomesSummaryRatingId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefChildOutcomesSummaryRating] PRIMARY KEY CLUSTERED 
(
	[RefChildOutcomesSummaryRatingId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[RefCipCode]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[RefCipCode](
	[RefCipCodeId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefCipCode] PRIMARY KEY CLUSTERED 
(
	[RefCipCodeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[RefCipUse]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[RefCipUse](
	[RefCipUseId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefCipUse] PRIMARY KEY CLUSTERED 
(
	[RefCipUseId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[RefCipVersion]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[RefCipVersion](
	[RefCipVersionId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefCipVersion] PRIMARY KEY CLUSTERED 
(
	[RefCipVersionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[RefClassroomPositionType]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[RefClassroomPositionType](
	[RefClassroomPositionTypeId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefClassroomPositionType] PRIMARY KEY CLUSTERED 
(
	[RefClassroomPositionTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[RefCohortExclusion]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[RefCohortExclusion](
	[RefCohortExclusionId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefCohortExclusion] PRIMARY KEY CLUSTERED 
(
	[RefCohortExclusionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[RefCommunicationMethod]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[RefCommunicationMethod](
	[RefCommunicationMethodId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_CommunicationMethod] PRIMARY KEY CLUSTERED 
(
	[RefCommunicationMethodId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[RefCommunityBasedType]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[RefCommunityBasedType](
	[RefCommunityBasedTypeId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefCommunityBasedType] PRIMARY KEY CLUSTERED 
(
	[RefCommunityBasedTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[RefCompetencySetCompletionCriteria]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[RefCompetencySetCompletionCriteria](
	[RefCompetencySetCompletionCriteriaId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefCompetencySetCompletionCriteria] PRIMARY KEY CLUSTERED 
(
	[RefCompetencySetCompletionCriteriaId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[RefContentStandardType]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[RefContentStandardType](
	[RefContentStandardTypeId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefContentStandardType] PRIMARY KEY CLUSTERED 
(
	[RefContentStandardTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[RefContinuationOfServices]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[RefContinuationOfServices](
	[RefContinuationOfServicesReasonId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefContinuationOfServices] PRIMARY KEY CLUSTERED 
(
	[RefContinuationOfServicesReasonId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[RefControlOfInstitution]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[RefControlOfInstitution](
	[RefControlOfInstitutionId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefControlOfInstitution] PRIMARY KEY CLUSTERED 
(
	[RefControlOfInstitutionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[RefCoreKnowledgeArea]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[RefCoreKnowledgeArea](
	[RefCoreKnowledgeAreaId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefCoreKnowledgeArea] PRIMARY KEY CLUSTERED 
(
	[RefCoreKnowledgeAreaId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[RefCorrectionalEducationFacilityType]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[RefCorrectionalEducationFacilityType](
	[RefCorrectionalEducationFacilityTypeId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefCorrectionalEducationFacilityType] PRIMARY KEY CLUSTERED 
(
	[RefCorrectionalEducationFacilityTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[RefCorrectiveActionType]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[RefCorrectiveActionType](
	[RefCorrectiveActionId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefCorrectiveAction] PRIMARY KEY CLUSTERED 
(
	[RefCorrectiveActionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[RefCountry]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[RefCountry](
	[RefCountryId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefCountry] PRIMARY KEY CLUSTERED 
(
	[RefCountryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[RefCounty]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[RefCounty](
	[RefCountyId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [XPKRefCounty] PRIMARY KEY CLUSTERED 
(
	[RefCountyId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[RefCourseAcademicGradeStatusCode]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[RefCourseAcademicGradeStatusCode](
	[RefCourseAcademicGradeStatusCodeId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefCourseAcademicGradeStatusCode] PRIMARY KEY CLUSTERED 
(
	[RefCourseAcademicGradeStatusCodeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[RefCourseApplicableEducationLevel]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[RefCourseApplicableEducationLevel](
	[RefCourseApplicableEducationLevelId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefCourseApplicableEducationLevel] PRIMARY KEY CLUSTERED 
(
	[RefCourseApplicableEducationLevelId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[RefCourseCreditBasisType]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[RefCourseCreditBasisType](
	[RefCourseCreditBasisTypeId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefCourseCreditBasisType] PRIMARY KEY CLUSTERED 
(
	[RefCourseCreditBasisTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[RefCourseCreditLevelType]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[RefCourseCreditLevelType](
	[RefCourseCreditLevelTypeId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefCourseCreditLevelType] PRIMARY KEY CLUSTERED 
(
	[RefCourseCreditLevelTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[RefCourseCreditUnit]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[RefCourseCreditUnit](
	[RefCourseCreditUnitId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefCourseCreditUnit] PRIMARY KEY CLUSTERED 
(
	[RefCourseCreditUnitId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[RefCourseGpaApplicability]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[RefCourseGpaApplicability](
	[RefCourseGPAApplicabilityId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefCourseGpaApplicability] PRIMARY KEY CLUSTERED 
(
	[RefCourseGPAApplicabilityId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[RefCourseHonorsType]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[RefCourseHonorsType](
	[RefCourseHonorsTypeId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefCourseHonorsType] PRIMARY KEY CLUSTERED 
(
	[RefCourseHonorsTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[RefCourseInstructionMethod]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[RefCourseInstructionMethod](
	[RefCourseInstructionMethodId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefCourseInstructionMethod] PRIMARY KEY CLUSTERED 
(
	[RefCourseInstructionMethodId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[RefCourseInstructionSiteType]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[RefCourseInstructionSiteType](
	[RefCourseInstructionSiteTypeId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefCourseInstructionSiteType] PRIMARY KEY CLUSTERED 
(
	[RefCourseInstructionSiteTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[RefCourseInteractionMode]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[RefCourseInteractionMode](
	[RefCourseInteractionModeId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefCourseInteractionMode] PRIMARY KEY CLUSTERED 
(
	[RefCourseInteractionModeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[RefCourseLevelCharacteristic]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[RefCourseLevelCharacteristic](
	[RefCourseLevelCharacteristicId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefCourseLevelCharacteristic] PRIMARY KEY CLUSTERED 
(
	[RefCourseLevelCharacteristicId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[RefCourseLevelType]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[RefCourseLevelType](
	[RefCourseLevelTypeId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefCourseLevelType] PRIMARY KEY CLUSTERED 
(
	[RefCourseLevelTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[RefCourseRepeatCode]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[RefCourseRepeatCode](
	[RefCourseRepeatCodeId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefCourseRepeatCode] PRIMARY KEY CLUSTERED 
(
	[RefCourseRepeatCodeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[RefCourseSectionAssessmentReportingMethod]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[RefCourseSectionAssessmentReportingMethod](
	[RefCourseSectionAssessmentReportingMethodId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefCourseSectionAssessmentReportingMethod] PRIMARY KEY CLUSTERED 
(
	[RefCourseSectionAssessmentReportingMethodId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[RefCourseSectionDeliveryMode]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[RefCourseSectionDeliveryMode](
	[RefCourseSectionDeliveryModeId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefCourseSectionDeliveryMode] PRIMARY KEY CLUSTERED 
(
	[RefCourseSectionDeliveryModeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[RefCourseSectionEnrollmentStatusType]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[RefCourseSectionEnrollmentStatusType](
	[RefCourseSectionEnrollmentStatusTypeId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefCourseSectionEnrollmentStatus] PRIMARY KEY CLUSTERED 
(
	[RefCourseSectionEnrollmentStatusTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[RefCourseSectionEntryType]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[RefCourseSectionEntryType](
	[RefCourseSectionEntryTypeId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefCourseSectionEntryType] PRIMARY KEY CLUSTERED 
(
	[RefCourseSectionEntryTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[RefCourseSectionExitType]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[RefCourseSectionExitType](
	[RefCourseSectionExitTypeId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefCourseSectionExitType] PRIMARY KEY CLUSTERED 
(
	[RefCourseSectionExitTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[RefCredentialType]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[RefCredentialType](
	[RefCredentialTypeId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [XPKRefCredential] PRIMARY KEY CLUSTERED 
(
	[RefCredentialTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[RefCreditHoursAppliedOtherProgram]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[RefCreditHoursAppliedOtherProgram](
	[RefCreditHoursAppliedOtherProgramId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefCreditHoursAppliedOtherProgram] PRIMARY KEY CLUSTERED 
(
	[RefCreditHoursAppliedOtherProgramId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[RefCreditTypeEarned]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[RefCreditTypeEarned](
	[RefCreditTypeEarnedId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefCreditTypeEarned] PRIMARY KEY CLUSTERED 
(
	[RefCreditTypeEarnedId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[RefCriticalTeacherShortageCandidate]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[RefCriticalTeacherShortageCandidate](
	[RefCriticalTeacherShortageCandidateId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefCriticalTeacherShortageCandidate] PRIMARY KEY CLUSTERED 
(
	[RefCriticalTeacherShortageCandidateId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[RefCteGraduationRateInclusion]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[RefCteGraduationRateInclusion](
	[RefCteGraduationRateInclusionId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefCteGraduationRateInclusion] PRIMARY KEY CLUSTERED 
(
	[RefCteGraduationRateInclusionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[RefCteNonTraditionalGenderStatus]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[RefCteNonTraditionalGenderStatus](
	[RefCTENonTraditionalGenderStatusId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefCTENonTraditionalGenderStatusId] PRIMARY KEY CLUSTERED 
(
	[RefCTENonTraditionalGenderStatusId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[RefCurriculumFrameworkType]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[RefCurriculumFrameworkType](
	[RefCurriculumFrameworkTypeId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefCurriculumFrameworkType] PRIMARY KEY CLUSTERED 
(
	[RefCurriculumFrameworkTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[RefDegreeOrCertificateType]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[RefDegreeOrCertificateType](
	[RefDegreeOrCertificateTypeId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefDegreeOrCertificateType] PRIMARY KEY CLUSTERED 
(
	[RefDegreeOrCertificateTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[RefDentalInsuranceCoverageType]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[RefDentalInsuranceCoverageType](
	[RefDentalInsuranceCoverageTypeId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefDentalInsuranceCoverageType] PRIMARY KEY CLUSTERED 
(
	[RefDentalInsuranceCoverageTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[RefDentalScreeningStatus]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[RefDentalScreeningStatus](
	[RefDentalScreeningStatusId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [XPKRefDentalScreen] PRIMARY KEY CLUSTERED 
(
	[RefDentalScreeningStatusId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[RefDependencyStatus]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[RefDependencyStatus](
	[RefDependencyStatusId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefDependencyStatus] PRIMARY KEY CLUSTERED 
(
	[RefDependencyStatusId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[RefDevelopmentalEducationReferralStatus]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[RefDevelopmentalEducationReferralStatus](
	[RefDevelopmentalEducationReferralStatusId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefDevelopmentalEducationReferralStatus] PRIMARY KEY CLUSTERED 
(
	[RefDevelopmentalEducationReferralStatusId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[RefDevelopmentalEducationType]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[RefDevelopmentalEducationType](
	[RefDevelopmentalEducationTypeId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefDevelopmentalEducationType] PRIMARY KEY CLUSTERED 
(
	[RefDevelopmentalEducationTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[RefDevelopmentalEvaluationFinding]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[RefDevelopmentalEvaluationFinding](
	[RefDevelopmentalEvaluationFindingId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefDevelopmentalEvaluationFinding] PRIMARY KEY CLUSTERED 
(
	[RefDevelopmentalEvaluationFindingId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[RefDirectoryInformationBlockStatus]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[RefDirectoryInformationBlockStatus](
	[RefDirectoryInformationBlockStatusId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefDirectoryInformationBlockStatus] PRIMARY KEY CLUSTERED 
(
	[RefDirectoryInformationBlockStatusId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[RefDisabilityConditionStatusCode]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[RefDisabilityConditionStatusCode](
	[RefDisabilityConditionStatusCodeId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefDisabilityConditionStatusCode] PRIMARY KEY CLUSTERED 
(
	[RefDisabilityConditionStatusCodeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[RefDisabilityConditionType]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[RefDisabilityConditionType](
	[RefDisabilityConditionTypeId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefDisabilityConditionType] PRIMARY KEY CLUSTERED 
(
	[RefDisabilityConditionTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[RefDisabilityDeterminationSourceType]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[RefDisabilityDeterminationSourceType](
	[RefDisabilityDeterminationSourceTypeId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefDisabilityDeterminationSourceType] PRIMARY KEY CLUSTERED 
(
	[RefDisabilityDeterminationSourceTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[RefDisabilityType]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[RefDisabilityType](
	[RefDisabilityTypeId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefDisabilityType] PRIMARY KEY CLUSTERED 
(
	[RefDisabilityTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[RefDisciplinaryActionTaken]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[RefDisciplinaryActionTaken](
	[RefDisciplinaryActionTakenId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefDisciplinaryActionTaken] PRIMARY KEY CLUSTERED 
(
	[RefDisciplinaryActionTakenId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[RefDisciplineLengthDifferenceReason]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[RefDisciplineLengthDifferenceReason](
	[RefDisciplineLengthDifferenceReasonId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefDisciplineLengthDifferenceReason] PRIMARY KEY CLUSTERED 
(
	[RefDisciplineLengthDifferenceReasonId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[RefDisciplineMethodFirearms]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[RefDisciplineMethodFirearms](
	[RefDisciplineMethodFirearmsId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefDiscineMethodFirearms] PRIMARY KEY CLUSTERED 
(
	[RefDisciplineMethodFirearmsId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[RefDisciplineMethodOfCwd]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[RefDisciplineMethodOfCwd](
	[RefDisciplineMethodOfCwdId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefDisciplineMethodOfCWD] PRIMARY KEY CLUSTERED 
(
	[RefDisciplineMethodOfCwdId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[RefDisciplineReason]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[RefDisciplineReason](
	[RefDisciplineReasonId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [XPKRefDisciplineReason] PRIMARY KEY CLUSTERED 
(
	[RefDisciplineReasonId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[RefDistanceEducationCourseEnrollment]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[RefDistanceEducationCourseEnrollment](
	[RefDistanceEducationCourseEnrollmentId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefDistanceEducationCourseEnr] PRIMARY KEY CLUSTERED 
(
	[RefDistanceEducationCourseEnrollmentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[RefDoctoralExamsRequiredCode]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[RefDoctoralExamsRequiredCode](
	[RefDoctoralExamsRequiredCodeId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefDoctoralExamsRequiredCode] PRIMARY KEY CLUSTERED 
(
	[RefDoctoralExamsRequiredCodeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[RefDQPCategoriesOfLearning]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[RefDQPCategoriesOfLearning](
	[RefDQPCategoriesOfLearningId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](60) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](6, 2) NULL,
 CONSTRAINT [PK_RefDQPCategoriesOfLearning] PRIMARY KEY CLUSTERED 
(
	[RefDQPCategoriesOfLearningId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[RefEarlyChildhoodCredential]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[RefEarlyChildhoodCredential](
	[RefEarlyChildhoodCredentialId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefEarlyChildhoodCredential] PRIMARY KEY CLUSTERED 
(
	[RefEarlyChildhoodCredentialId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[RefEarlyChildhoodProgramEnrollmentType]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[RefEarlyChildhoodProgramEnrollmentType](
	[RefEarlyChildhoodProgramTypeId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefEarlyLearningProgramType] PRIMARY KEY CLUSTERED 
(
	[RefEarlyChildhoodProgramTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[RefEarlyChildhoodServices]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[RefEarlyChildhoodServices](
	[RefEarlyChildhoodServicesId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefEarlyChildhoodServices] PRIMARY KEY CLUSTERED 
(
	[RefEarlyChildhoodServicesId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[RefEducationLevel]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[RefEducationLevel](
	[RefEducationLevelId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[RefEducationLevelTypeId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [XPKRefEducationLevel] PRIMARY KEY CLUSTERED 
(
	[RefEducationLevelId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[RefEducationLevelType]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[RefEducationLevelType](
	[RefEducationLevelTypeId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefEducationLevelType] PRIMARY KEY CLUSTERED 
(
	[RefEducationLevelTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[RefEducationVerificationMethod]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[RefEducationVerificationMethod](
	[RefEducationVerificationMethodId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefEducationVerificationMethod] PRIMARY KEY CLUSTERED 
(
	[RefEducationVerificationMethodId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[RefELEducationStaffClassification]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[RefELEducationStaffClassification](
	[RefELEducationStaffClassificationId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefELEducationStaffClassification] PRIMARY KEY CLUSTERED 
(
	[RefELEducationStaffClassificationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[RefElementaryMiddleAdditional]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[RefElementaryMiddleAdditional](
	[RefElementaryMiddleAdditionalId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [XPKRefElementaryMiddleAdditional] PRIMARY KEY CLUSTERED 
(
	[RefElementaryMiddleAdditionalId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[RefELEmploymentSeparationReason]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[RefELEmploymentSeparationReason](
	[RefELEmploymentSeparationReasonId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefELEmploymentSeparationReason] PRIMARY KEY CLUSTERED 
(
	[RefELEmploymentSeparationReasonId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[RefELFacilityLicensingStatus]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[RefELFacilityLicensingStatus](
	[RefELFacilityLicensingStatusId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefELFacilityLicensingStatus] PRIMARY KEY CLUSTERED 
(
	[RefELFacilityLicensingStatusId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[RefELFederalFundingType]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[RefELFederalFundingType](
	[RefELFederalFundingTypeId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefELFederalFundingType] PRIMARY KEY CLUSTERED 
(
	[RefELFederalFundingTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[RefELGroupSizeStandardMet]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[RefELGroupSizeStandardMet](
	[RefELGroupSizeStandardMetId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefELGroupSizeStandardMet] PRIMARY KEY CLUSTERED 
(
	[RefELGroupSizeStandardMetId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[RefELLevelOfSpecialization]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[RefELLevelOfSpecialization](
	[RefELLevelOfSpecializationId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefELLevelOfSpecialization] PRIMARY KEY CLUSTERED 
(
	[RefELLevelOfSpecializationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[RefELLocalRevenueSource]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[RefELLocalRevenueSource](
	[RefELLocalRevenueSourceId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefELLocalRevenueSource] PRIMARY KEY CLUSTERED 
(
	[RefELLocalRevenueSourceId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[RefELOtherFederalFundingSources]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[RefELOtherFederalFundingSources](
	[RefELOtherFederalFundingSourcesId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefELOtherFederalFundingSources] PRIMARY KEY CLUSTERED 
(
	[RefELOtherFederalFundingSourcesId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[RefELOutcomeMeasurementLevel]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[RefELOutcomeMeasurementLevel](
	[RefELOutcomeMeasurementLevelId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefELOutcomeMeasurementLevel] PRIMARY KEY CLUSTERED 
(
	[RefELOutcomeMeasurementLevelId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[RefELProfessionalDevelopmentTopicArea]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[RefELProfessionalDevelopmentTopicArea](
	[RefELProfessionalDevelopmentTopicAreaId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefELProfessionalDevelopmentTopicArea] PRIMARY KEY CLUSTERED 
(
	[RefELProfessionalDevelopmentTopicAreaId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[RefELProgramEligibility]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[RefELProgramEligibility](
	[RefELProgramEligibilityId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [XPKRefELProgramEligibility] PRIMARY KEY CLUSTERED 
(
	[RefELProgramEligibilityId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[RefELProgramEligibilityStatus]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[RefELProgramEligibilityStatus](
	[RefELProgramEligibilityStatusId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefELProgramEligibilityStatus] PRIMARY KEY CLUSTERED 
(
	[RefELProgramEligibilityStatusId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[RefELProgramLicenseStatus]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[RefELProgramLicenseStatus](
	[RefELProgramLicenseStatusId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefELProgramLicenseStatus] PRIMARY KEY CLUSTERED 
(
	[RefELProgramLicenseStatusId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[RefELServiceProfessionalStaffClassification]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[RefELServiceProfessionalStaffClassification](
	[RefELServiceProfessionalStaffClassificationId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefELServiceProfessionalStaffClassification] PRIMARY KEY CLUSTERED 
(
	[RefELServiceProfessionalStaffClassificationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[RefELServiceType]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[RefELServiceType](
	[RefELServiceTypeId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefELServiceType] PRIMARY KEY CLUSTERED 
(
	[RefELServiceTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[RefELStateRevenueSource]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[RefELStateRevenueSource](
	[RefELStateRevenueSourceId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefELStateRevenueSource] PRIMARY KEY CLUSTERED 
(
	[RefELStateRevenueSourceId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[RefELTrainerCoreKnowledgeArea]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[RefELTrainerCoreKnowledgeArea](
	[RefELTrainerCoreKnowledgeAreaId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefELTrainerCoreKnowledgeArea] PRIMARY KEY CLUSTERED 
(
	[RefELTrainerCoreKnowledgeAreaId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[RefEmailType]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[RefEmailType](
	[RefEmailTypeId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [XPKRefEmailType] PRIMARY KEY CLUSTERED 
(
	[RefEmailTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[RefEmployedAfterExit]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[RefEmployedAfterExit](
	[RefEmployedAfterExitId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefEmployedAfterExit] PRIMARY KEY CLUSTERED 
(
	[RefEmployedAfterExitId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[RefEmployedPriorToEnrollment]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[RefEmployedPriorToEnrollment](
	[RefEmployedPriorToEnrollmentId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefEmployedPriorToEnrollment] PRIMARY KEY CLUSTERED 
(
	[RefEmployedPriorToEnrollmentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[RefEmployedWhileEnrolled]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[RefEmployedWhileEnrolled](
	[RefEmployedWhileEnrolledId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefEmployedWhileEnrolled] PRIMARY KEY CLUSTERED 
(
	[RefEmployedWhileEnrolledId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[RefEmploymentContractType]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[RefEmploymentContractType](
	[RefEmploymentContractTypeId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefEmploymentContractType] PRIMARY KEY CLUSTERED 
(
	[RefEmploymentContractTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[RefEmploymentLocation]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[RefEmploymentLocation](
	[RefEmploymentLocationId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefEmploymentLocation] PRIMARY KEY CLUSTERED 
(
	[RefEmploymentLocationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[RefEmploymentSeparationReason]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[RefEmploymentSeparationReason](
	[RefEmploymentSeparationReasonId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefEmploymentSeparationReason] PRIMARY KEY CLUSTERED 
(
	[RefEmploymentSeparationReasonId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[RefEmploymentSeparationType]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[RefEmploymentSeparationType](
	[RefEmploymentSeparationTypeId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefEmploymentSeparationType] PRIMARY KEY CLUSTERED 
(
	[RefEmploymentSeparationTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[RefEmploymentStatus]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[RefEmploymentStatus](
	[RefEmploymentStatusId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefEmploymentStatus] PRIMARY KEY CLUSTERED 
(
	[RefEmploymentStatusId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[RefEmploymentStatusWhileEnrolled]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[RefEmploymentStatusWhileEnrolled](
	[RefEmploymentStatusWhileEnrolledId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefEmploymentStatusWhileEnrolled] PRIMARY KEY CLUSTERED 
(
	[RefEmploymentStatusWhileEnrolledId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[RefEndOfTermStatus]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[RefEndOfTermStatus](
	[RefEndOfTermStatusId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefEndOfTermStatus] PRIMARY KEY CLUSTERED 
(
	[RefEndOfTermStatusId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[RefEnrollmentStatus]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[RefEnrollmentStatus](
	[RefEnrollmentStatusId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefEnrollmentStatus] PRIMARY KEY CLUSTERED 
(
	[RefEnrollmentStatusId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[RefEntityType]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[RefEntityType](
	[RefEntityTypeId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefAssociatedEntityType] PRIMARY KEY CLUSTERED 
(
	[RefEntityTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[RefEntryType]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[RefEntryType](
	[RefEntryTypeId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefEntryType] PRIMARY KEY CLUSTERED 
(
	[RefEntryTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[RefEnvironmentSetting]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[RefEnvironmentSetting](
	[RefEnvironmentSettingId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefEnvironmentSetting] PRIMARY KEY CLUSTERED 
(
	[RefEnvironmentSettingId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[RefERAdministrativeDataSource]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[RefERAdministrativeDataSource](
	[RefERAdministrativeDataSourceId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefERAdministrativeDataSource] PRIMARY KEY CLUSTERED 
(
	[RefERAdministrativeDataSourceId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[RefERSRuralUrbanContinuumCode]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[RefERSRuralUrbanContinuumCode](
	[RefERSRuralUrbanContinuumCodeId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefERSRuralUrbanContinuumCode] PRIMARY KEY CLUSTERED 
(
	[RefERSRuralUrbanContinuumCodeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[RefExitOrWithdrawalStatus]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[RefExitOrWithdrawalStatus](
	[RefExitOrWithdrawalStatusId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefExitOrWithdrawelStatus] PRIMARY KEY CLUSTERED 
(
	[RefExitOrWithdrawalStatusId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[RefExitOrWithdrawalType]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[RefExitOrWithdrawalType](
	[RefExitOrWithdrawalTypeId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefExitOrWithdrawalType] PRIMARY KEY CLUSTERED 
(
	[RefExitOrWithdrawalTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[RefFamilyIncomeSource]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[RefFamilyIncomeSource](
	[RefFamilyIncomeSourceId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [XPKRefFamilyIncomeSource] PRIMARY KEY CLUSTERED 
(
	[RefFamilyIncomeSourceId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[RefFederalProgramFundingAllocationType]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[RefFederalProgramFundingAllocationType](
	[RefFederalProgramFundingAllocationTypeId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefFederalProgramFundingAllocationType] PRIMARY KEY CLUSTERED 
(
	[RefFederalProgramFundingAllocationTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[RefFinancialAccountBalanceSheetCode]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[RefFinancialAccountBalanceSheetCode](
	[RefFinancialBalanceSheetAccountCodeId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefFinancialBalanceSheetAccountCode] PRIMARY KEY CLUSTERED 
(
	[RefFinancialBalanceSheetAccountCodeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[RefFinancialAccountCategory]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[RefFinancialAccountCategory](
	[RefFinancialAccountCategoryId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefFinancialAccountCategory] PRIMARY KEY CLUSTERED 
(
	[RefFinancialAccountCategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[RefFinancialAccountFundClassification]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[RefFinancialAccountFundClassification](
	[RefFinancialAccountFundClassificationId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefFinancialAccountFundClassification] PRIMARY KEY CLUSTERED 
(
	[RefFinancialAccountFundClassificationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[RefFinancialAccountProgramCode]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[RefFinancialAccountProgramCode](
	[RefFinancialAccountProgramCodeId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefFinancialAccountProgramCode] PRIMARY KEY CLUSTERED 
(
	[RefFinancialAccountProgramCodeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[RefFinancialAccountRevenueCode]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[RefFinancialAccountRevenueCode](
	[RefFinancialAccountRevenueCodeId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefFinancialRevenueAccountCode] PRIMARY KEY CLUSTERED 
(
	[RefFinancialAccountRevenueCodeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[RefFinancialAidApplicationType]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[RefFinancialAidApplicationType](
	[RefFinancialAidApplicationTypeId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefFinancialAidApplType] PRIMARY KEY CLUSTERED 
(
	[RefFinancialAidApplicationTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[RefFinancialAidAwardStatus]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[RefFinancialAidAwardStatus](
	[RefFinancialAidStatusId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_FinancialAidAwardStatus] PRIMARY KEY CLUSTERED 
(
	[RefFinancialAidStatusId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[RefFinancialAidAwardType]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[RefFinancialAidAwardType](
	[RefFinancialAidAwardTypeId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefFinancialAidAwardType] PRIMARY KEY CLUSTERED 
(
	[RefFinancialAidAwardTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[RefFinancialAidVeteransBenefitStatus]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[RefFinancialAidVeteransBenefitStatus](
	[RefFinancialAidVeteransBenefitStatusId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefFinancialAidVeteransBenefitStatus] PRIMARY KEY CLUSTERED 
(
	[RefFinancialAidVeteransBenefitStatusId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[RefFinancialAidVeteransBenefitType]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[RefFinancialAidVeteransBenefitType](
	[RefFinancialAidVeteransBenefitTypeId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefFinancialAidVeteransBenefitType] PRIMARY KEY CLUSTERED 
(
	[RefFinancialAidVeteransBenefitTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[RefFinancialExpenditureFunctionCode]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[RefFinancialExpenditureFunctionCode](
	[RefFinancialExpenditureFunctionCodeId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefFinancialExpenditureFunctionCode] PRIMARY KEY CLUSTERED 
(
	[RefFinancialExpenditureFunctionCodeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[RefFinancialExpenditureLevelOfInstructionCode]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[RefFinancialExpenditureLevelOfInstructionCode](
	[RefFinancialExpenditureLevelOfInstructionCodeId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefFinancialExpenditureLevelOfInstructionCode] PRIMARY KEY CLUSTERED 
(
	[RefFinancialExpenditureLevelOfInstructionCodeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[RefFinancialExpenditureObjectCode]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[RefFinancialExpenditureObjectCode](
	[RefFinancialExpenditureObjectCodeId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefFinancialExpenditureObjectCode] PRIMARY KEY CLUSTERED 
(
	[RefFinancialExpenditureObjectCodeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[RefFirearmType]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[RefFirearmType](
	[RefFirearmTypeId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_FirearmType] PRIMARY KEY CLUSTERED 
(
	[RefFirearmTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[RefFoodServiceEligibility]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[RefFoodServiceEligibility](
	[RefFoodServiceEligibilityId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdiction] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefFoodServiceEligibility] PRIMARY KEY CLUSTERED 
(
	[RefFoodServiceEligibilityId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[RefFoodServiceParticipation]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[RefFoodServiceParticipation](
	[RefFoodServiceParticipationId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefFoodServiceParticipation] PRIMARY KEY CLUSTERED 
(
	[RefFoodServiceParticipationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[RefFrequencyOfService]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[RefFrequencyOfService](
	[RefFrequencyOfServiceId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefFrequencyOfService] PRIMARY KEY CLUSTERED 
(
	[RefFrequencyOfServiceId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[RefFullTimeStatus]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[RefFullTimeStatus](
	[RefFullTimeStatusId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefFullTimeStatus] PRIMARY KEY CLUSTERED 
(
	[RefFullTimeStatusId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[RefGoalsForAttendingAdultEducation]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[RefGoalsForAttendingAdultEducation](
	[RefGoalsForAttendingAdultEducationId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefGoalsForAttendingAdultEducation] PRIMARY KEY CLUSTERED 
(
	[RefGoalsForAttendingAdultEducationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[RefGpaWeightedIndicator]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[RefGpaWeightedIndicator](
	[RefGpaWeightedIndicatorId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefGpaWeightedIndicator] PRIMARY KEY CLUSTERED 
(
	[RefGpaWeightedIndicatorId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[RefGradeLevel]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[RefGradeLevel](
	[RefGradeLevelId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[RefGradeLevelTypeId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [XPKRefGrade] PRIMARY KEY CLUSTERED 
(
	[RefGradeLevelId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[RefGradeLevelType]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[RefGradeLevelType](
	[RefGradeLevelTypeId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefGradeLevelType] PRIMARY KEY CLUSTERED 
(
	[RefGradeLevelTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[RefGradePointAverageDomain]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[RefGradePointAverageDomain](
	[RefGradePointAverageDomainId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefGradePointAverageDomain] PRIMARY KEY CLUSTERED 
(
	[RefGradePointAverageDomainId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[RefGraduateAssistantIpedsCategory]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[RefGraduateAssistantIpedsCategory](
	[RefGraduateAssistantIpedsCategoryId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefGraduateAssistIpedsCategory] PRIMARY KEY CLUSTERED 
(
	[RefGraduateAssistantIpedsCategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[RefGraduateOrDoctoralExamResultsStatus]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[RefGraduateOrDoctoralExamResultsStatus](
	[RefGraduateOrDoctoralExamResultsStatusId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefGraduateOrDoctoralExamResultsStatus] PRIMARY KEY CLUSTERED 
(
	[RefGraduateOrDoctoralExamResultsStatusId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[RefGunFreeSchoolsActReportingStatus]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[RefGunFreeSchoolsActReportingStatus](
	[RefGunFreeSchoolsActStatusReportingId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefGunFreeSchoolsActStatusReporting] PRIMARY KEY CLUSTERED 
(
	[RefGunFreeSchoolsActStatusReportingId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[RefHealthInsuranceCoverage]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[RefHealthInsuranceCoverage](
	[RefHealthInsuranceCoverageId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [XPKRefInsurance] PRIMARY KEY CLUSTERED 
(
	[RefHealthInsuranceCoverageId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[RefHearingScreeningStatus]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[RefHearingScreeningStatus](
	[RefHearingScreeningStatusId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [XPKRefHearingScreen] PRIMARY KEY CLUSTERED 
(
	[RefHearingScreeningStatusId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[RefHigherEducationInstitutionAccreditationStatus]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[RefHigherEducationInstitutionAccreditationStatus](
	[RefHigherEducationInstitutionAccreditationStatusId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_HigherEducationInstitutionAccreditationStatus] PRIMARY KEY CLUSTERED 
(
	[RefHigherEducationInstitutionAccreditationStatusId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[RefHighSchoolDiplomaDistinctionType]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[RefHighSchoolDiplomaDistinctionType](
	[RefHighSchoolDiplomaDistinctionTypeId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefHSDiplomaDistinctionType] PRIMARY KEY CLUSTERED 
(
	[RefHighSchoolDiplomaDistinctionTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[RefHighSchoolDiplomaType]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[RefHighSchoolDiplomaType](
	[RefHighSchoolDiplomaTypeId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefHighSchoolDiplomaType] PRIMARY KEY CLUSTERED 
(
	[RefHighSchoolDiplomaTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[RefHighSchoolGraduationRateIndicator]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[RefHighSchoolGraduationRateIndicator](
	[RefHSGraduationRateIndicatorId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefHSGraduationRateIndicator] PRIMARY KEY CLUSTERED 
(
	[RefHSGraduationRateIndicatorId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[RefHomelessNighttimeResidence]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[RefHomelessNighttimeResidence](
	[RefHomelessNighttimeResidenceId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefHomelessNighttimeResidence] PRIMARY KEY CLUSTERED 
(
	[RefHomelessNighttimeResidenceId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[RefIDEADisciplineMethodFirearm]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[RefIDEADisciplineMethodFirearm](
	[RefIDEADisciplineMethodFirearmId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefIDEADisciplineMethodFirearm] PRIMARY KEY CLUSTERED 
(
	[RefIDEADisciplineMethodFirearmId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[RefIDEAEducationalEnvironmentEC]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[RefIDEAEducationalEnvironmentEC](
	[RefIDEAEducationalEnvironmentECId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefIDEAEducationalEnvironmentEC] PRIMARY KEY CLUSTERED 
(
	[RefIDEAEducationalEnvironmentECId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[RefIDEAEducationalEnvironmentSchoolAge]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[RefIDEAEducationalEnvironmentSchoolAge](
	[RefIDESEducationalEnvironmentSchoolAge] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefIDEAEducationalEnvironmentSchoolAge] PRIMARY KEY CLUSTERED 
(
	[RefIDESEducationalEnvironmentSchoolAge] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[RefIDEAEnvironmentEL]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[RefIDEAEnvironmentEL](
	[RefIDEAEnvironmentELId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefIDEAEnvironmentEL] PRIMARY KEY CLUSTERED 
(
	[RefIDEAEnvironmentELId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[RefIDEAIEPStatus]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[RefIDEAIEPStatus](
	[RefIDEAIEPStatusId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefIDEAIEPStatus] PRIMARY KEY CLUSTERED 
(
	[RefIDEAIEPStatusId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[RefIDEAInterimRemoval]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[RefIDEAInterimRemoval](
	[RefIDEAInterimRemovalId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefIDEAInterimRemovalId] PRIMARY KEY CLUSTERED 
(
	[RefIDEAInterimRemovalId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[RefIDEAInterimRemovalReason]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[RefIDEAInterimRemovalReason](
	[RefIDEAInterimRemovalReasonId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefIDEAInterimRemovalReason] PRIMARY KEY CLUSTERED 
(
	[RefIDEAInterimRemovalReasonId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[RefIDEAPartCEligibilityCategory]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[RefIDEAPartCEligibilityCategory](
	[RefIDEAPartCEligibilityCategoryId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](60) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](6, 2) NULL,
 CONSTRAINT [PK_RefIDEAPartCEligibilityCategory] PRIMARY KEY CLUSTERED 
(
	[RefIDEAPartCEligibilityCategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[RefImmunizationType]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[RefImmunizationType](
	[RefImmunizationTypeId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefImmunizationType] PRIMARY KEY CLUSTERED 
(
	[RefImmunizationTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[RefIncidentBehavior]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[RefIncidentBehavior](
	[RefIncidentBehaviorId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_IncidentBehavior] PRIMARY KEY CLUSTERED 
(
	[RefIncidentBehaviorId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[RefIncidentBehaviorSecondary]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[RefIncidentBehaviorSecondary](
	[RefIncidentBehaviorSecondaryId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_IncidentBehaviorSecondary] PRIMARY KEY CLUSTERED 
(
	[RefIncidentBehaviorSecondaryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[RefIncidentInjuryType]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[RefIncidentInjuryType](
	[RefIncidentInjuryTypeId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_IncidentInjuryType] PRIMARY KEY CLUSTERED 
(
	[RefIncidentInjuryTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[RefIncidentLocation]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[RefIncidentLocation](
	[RefIncidentLocationId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_InciddentLocation] PRIMARY KEY CLUSTERED 
(
	[RefIncidentLocationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[RefIncidentMultipleOffenseType]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[RefIncidentMultipleOffenseType](
	[RefIncidentMultipleOffenseTypeId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefIncidentMultipleOffenseType] PRIMARY KEY CLUSTERED 
(
	[RefIncidentMultipleOffenseTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[RefIncidentPerpetratorInjuryType]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[RefIncidentPerpetratorInjuryType](
	[RefIncidentPerpetratorInjuryTypeId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefIncidentPerpetratorInjuryType] PRIMARY KEY CLUSTERED 
(
	[RefIncidentPerpetratorInjuryTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[RefIncidentPersonRoleType]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[RefIncidentPersonRoleType](
	[RefIncidentPersonRoleTypeId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefIncidentPersonRoleType] PRIMARY KEY CLUSTERED 
(
	[RefIncidentPersonRoleTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[RefIncidentPersonType]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[RefIncidentPersonType](
	[RefIncidentPersonTypeId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefIncidentPersonType] PRIMARY KEY CLUSTERED 
(
	[RefIncidentPersonTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[RefIncidentReporterType]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[RefIncidentReporterType](
	[RefIncidentReporterTypeId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefIncidentReporterType] PRIMARY KEY CLUSTERED 
(
	[RefIncidentReporterTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[RefIncidentTimeDescriptionCode]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[RefIncidentTimeDescriptionCode](
	[RefIncidentTimeDescriptionCodeId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefIncidentTimeDescriptionCode] PRIMARY KEY CLUSTERED 
(
	[RefIncidentTimeDescriptionCodeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[RefIncomeCalculationMethod]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[RefIncomeCalculationMethod](
	[RefIncomeCalculationMethodId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [XPKRefIncomeCalculation] PRIMARY KEY CLUSTERED 
(
	[RefIncomeCalculationMethodId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[RefIncreasedLearningTimeType]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[RefIncreasedLearningTimeType](
	[RefIncreasedLearningTimeTypeId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_IncreasedLearningTimeType] PRIMARY KEY CLUSTERED 
(
	[RefIncreasedLearningTimeTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[RefIndividualizedProgramDateType]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[RefIndividualizedProgramDateType](
	[RefIndividualizedProgramDateTypeId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [XPKRefIndividualizedProgramDateType] PRIMARY KEY CLUSTERED 
(
	[RefIndividualizedProgramDateTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[RefIndividualizedProgramLocation]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[RefIndividualizedProgramLocation](
	[RefIndividualizedProgramLocationId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [XPKRefIndividualizedProgramLocation] PRIMARY KEY CLUSTERED 
(
	[RefIndividualizedProgramLocationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[RefIndividualizedProgramPlannedServiceType]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[RefIndividualizedProgramPlannedServiceType](
	[RefIndividualizedProgramPlannedServiceTypeId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefIndividualizedProgramPlannedServiceType] PRIMARY KEY CLUSTERED 
(
	[RefIndividualizedProgramPlannedServiceTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[RefIndividualizedProgramTransitionType]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[RefIndividualizedProgramTransitionType](
	[RefIndividualizedProgramTransitionTypeId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [XPKRefIndividualizedProgramTransitionType] PRIMARY KEY CLUSTERED 
(
	[RefIndividualizedProgramTransitionTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[RefIndividualizedProgramType]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[RefIndividualizedProgramType](
	[RefIndividualizedProgramTypeId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [XPKRefIndividualizedProgramType] PRIMARY KEY CLUSTERED 
(
	[RefIndividualizedProgramTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[RefInstitutionTelephoneType]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[RefInstitutionTelephoneType](
	[RefInstitutionTelephoneTypeId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [XPKRefInstitutionTelephone] PRIMARY KEY CLUSTERED 
(
	[RefInstitutionTelephoneTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[RefInstructionalActivityHours]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[RefInstructionalActivityHours](
	[RefInstructionalActivityHoursId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefInstructionalActivityHours] PRIMARY KEY CLUSTERED 
(
	[RefInstructionalActivityHoursId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[RefInstructionalStaffContractLength]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[RefInstructionalStaffContractLength](
	[RefInstructionalStaffContractLengthId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefInstructStaffContractLength] PRIMARY KEY CLUSTERED 
(
	[RefInstructionalStaffContractLengthId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[RefInstructionalStaffFacultyTenure]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[RefInstructionalStaffFacultyTenure](
	[RefInstructionalStaffFacultyTenureId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefInstructStaffFacultyTenure] PRIMARY KEY CLUSTERED 
(
	[RefInstructionalStaffFacultyTenureId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[RefInstructionCreditType]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[RefInstructionCreditType](
	[RefInstructionCreditTypeId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_InstructionCreditType] PRIMARY KEY CLUSTERED 
(
	[RefInstructionCreditTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[RefInstructionLocationType]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[RefInstructionLocationType](
	[RefInstructionLocationTypeId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefInstructionLocationType] PRIMARY KEY CLUSTERED 
(
	[RefInstructionLocationTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[RefIntegratedTechnologyStatus]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[RefIntegratedTechnologyStatus](
	[RefIntegratedTechnologyStatusId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefIntegratedTechnologyStatus] PRIMARY KEY CLUSTERED 
(
	[RefIntegratedTechnologyStatusId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[RefInternetAccess]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[RefInternetAccess](
	[RefInternetAccessId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefInternetAccess] PRIMARY KEY CLUSTERED 
(
	[RefInternetAccessId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[RefIpedsOccupationalCategory]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[RefIpedsOccupationalCategory](
	[RefIpedsOccupationalCategoryId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefIPEDSOccupationalCategory] PRIMARY KEY CLUSTERED 
(
	[RefIpedsOccupationalCategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[RefISO6392Language]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[RefISO6392Language](
	[RefISO6392LanguageId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](60) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](6, 2) NULL,
 CONSTRAINT [PK_RefISO6392Language] PRIMARY KEY CLUSTERED 
(
	[RefISO6392LanguageId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[RefISO6393Language]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[RefISO6393Language](
	[RefISO6393LanguageId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](60) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](6, 2) NULL,
 CONSTRAINT [PK_RefISO6393Language] PRIMARY KEY CLUSTERED 
(
	[RefISO6393LanguageId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[RefISO6395LanguageFamily]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[RefISO6395LanguageFamily](
	[RefISO6395LanguageFamilyId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](60) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](6, 2) NULL,
 CONSTRAINT [PK_RefISO6395LanguageFamily] PRIMARY KEY CLUSTERED 
(
	[RefISO6395LanguageFamilyId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[RefItemResponseTheoryDifficultyCategory]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[RefItemResponseTheoryDifficultyCategory](
	[RefItemResponseTheoryDifficultyCategoryId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefItemResponsseTheoryDifficultyCategory] PRIMARY KEY CLUSTERED 
(
	[RefItemResponseTheoryDifficultyCategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[RefItemResponseTheoryKappaAlgorithm]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[RefItemResponseTheoryKappaAlgorithm](
	[RefItemResponseTheoryKappaAlgorithmId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefItemResponseTheoryKappaAlgorithm] PRIMARY KEY CLUSTERED 
(
	[RefItemResponseTheoryKappaAlgorithmId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[RefK12EndOfCourseRequirement]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[RefK12EndOfCourseRequirement](
	[RefK12EndOfCourseRequirementId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefK12EndOfCourseRequirement] PRIMARY KEY CLUSTERED 
(
	[RefK12EndOfCourseRequirementId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[RefK12LeaTitleISupportService]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[RefK12LeaTitleISupportService](
	[RefK12LEATitleISupportServiceId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefK12LEATitleISupportService] PRIMARY KEY CLUSTERED 
(
	[RefK12LEATitleISupportServiceId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[RefK12ResponsibilityType]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[RefK12ResponsibilityType](
	[RefK12ResponsibilityTypeId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefK12ResponsibilityType] PRIMARY KEY CLUSTERED 
(
	[RefK12ResponsibilityTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[RefK12StaffClassification]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[RefK12StaffClassification](
	[RefEducationStaffClassificationId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefEducationStaffClassification] PRIMARY KEY CLUSTERED 
(
	[RefEducationStaffClassificationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[RefLanguage]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[RefLanguage](
	[RefLanguageId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](max) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Language] PRIMARY KEY CLUSTERED 
(
	[RefLanguageId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
;
/****** Object:  Table [dbo].[RefLanguageUseType]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[RefLanguageUseType](
	[RefLanguageUseTypeId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_LanguageUseType] PRIMARY KEY CLUSTERED 
(
	[RefLanguageUseTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[RefLeaFundsTransferType]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[RefLeaFundsTransferType](
	[RefLeaFundsTransferTypeId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefLEAFundsTransferType] PRIMARY KEY CLUSTERED 
(
	[RefLeaFundsTransferTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[RefLeaImprovementStatus]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[RefLeaImprovementStatus](
	[RefLeaImprovementStatusId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefLeaImprovementStatus] PRIMARY KEY CLUSTERED 
(
	[RefLeaImprovementStatusId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[RefLearnerActionType]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[RefLearnerActionType](
	[RefLearnerActionTypeId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](150) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK__RefLearnerActionType] PRIMARY KEY CLUSTERED 
(
	[RefLearnerActionTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[RefLearnerActivityMaximumTimeAllowedUnits]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[RefLearnerActivityMaximumTimeAllowedUnits](
	[RefLearnerActivityMaximumTimeAllowedUnitsId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefLearnerActivityMaximumTimeAllowedUnits] PRIMARY KEY CLUSTERED 
(
	[RefLearnerActivityMaximumTimeAllowedUnitsId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[RefLearnerActivityType]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[RefLearnerActivityType](
	[RefLearnerActivityTypeId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefLearnerActivityType] PRIMARY KEY CLUSTERED 
(
	[RefLearnerActivityTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[RefLearningResourceAccessAPIType]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[RefLearningResourceAccessAPIType](
	[RefLearningResourceAccessAPITypeId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefLearningResourceAccessAPIType] PRIMARY KEY CLUSTERED 
(
	[RefLearningResourceAccessAPITypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[RefLearningResourceAccessHazardType]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[RefLearningResourceAccessHazardType](
	[RefLearningResourceAccessHazardTypeId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefLearningResourceAccessHazardType] PRIMARY KEY CLUSTERED 
(
	[RefLearningResourceAccessHazardTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[RefLearningResourceAccessModeType]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[RefLearningResourceAccessModeType](
	[RefLearningResourceAccessModeTypeId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefLearningResourceAccessModeType] PRIMARY KEY CLUSTERED 
(
	[RefLearningResourceAccessModeTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[RefLearningResourceAccessRightsUrl]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[RefLearningResourceAccessRightsUrl](
	[RefLearningResourceAccessRightsUrlId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefLearningResourceAccessRightsUrl] PRIMARY KEY CLUSTERED 
(
	[RefLearningResourceAccessRightsUrlId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[RefLearningResourceAuthorType]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[RefLearningResourceAuthorType](
	[RefLearningResourceAuthorTypeId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefLearningResourceAuthorType] PRIMARY KEY CLUSTERED 
(
	[RefLearningResourceAuthorTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[RefLearningResourceBookFormatType]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[RefLearningResourceBookFormatType](
	[RefLearningResourceBookFormatTypeId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefLearningResourceBookFormatType] PRIMARY KEY CLUSTERED 
(
	[RefLearningResourceBookFormatTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[RefLearningResourceCompetencyAlignmentType]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[RefLearningResourceCompetencyAlignmentType](
	[RefLearningResourceCompetencyAlignmentTypeId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefLearningResourceCompetencyAlignmentType] PRIMARY KEY CLUSTERED 
(
	[RefLearningResourceCompetencyAlignmentTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[RefLearningResourceControlFlexibilityType]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[RefLearningResourceControlFlexibilityType](
	[RefLearningResourceControlFlexibilityTypeId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefLearningResourceControlFlexibilityType] PRIMARY KEY CLUSTERED 
(
	[RefLearningResourceControlFlexibilityTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[RefLearningResourceDigitalMediaSubType]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[RefLearningResourceDigitalMediaSubType](
	[RefLearningResourceDigitalMediaSubTypeId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefLearningResourceDigitalMediaSubType] PRIMARY KEY CLUSTERED 
(
	[RefLearningResourceDigitalMediaSubTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[RefLearningResourceDigitalMediaType]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[RefLearningResourceDigitalMediaType](
	[RefLearningResourceDigitalMediaTypeId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefLearningResourceDigitalMediaType] PRIMARY KEY CLUSTERED 
(
	[RefLearningResourceDigitalMediaTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[RefLearningResourceEducationalUse]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[RefLearningResourceEducationalUse](
	[RefLearningResourceEducationalUseId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefLearningResourceEducationalUse] PRIMARY KEY CLUSTERED 
(
	[RefLearningResourceEducationalUseId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[RefLearningResourceIntendedEndUserRole]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[RefLearningResourceIntendedEndUserRole](
	[RefLearningResourceIntendedEndUserRoleId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefLearningResourceIntendedUse] PRIMARY KEY CLUSTERED 
(
	[RefLearningResourceIntendedEndUserRoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[RefLearningResourceInteractionMode]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[RefLearningResourceInteractionMode](
	[RefLearningResourceInteractionModeId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](150) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefLearningResourceInteractionMode] PRIMARY KEY CLUSTERED 
(
	[RefLearningResourceInteractionModeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[RefLearningResourceInteractivityType]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[RefLearningResourceInteractivityType](
	[RefLearningResourceInteractivityTypeId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefLearningResourceInteractivityType] PRIMARY KEY CLUSTERED 
(
	[RefLearningResourceInteractivityTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[RefLearningResourceMediaFeatureType]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[RefLearningResourceMediaFeatureType](
	[RefLearningResourceMediaFeatureTypeId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefLearningResourceMediaFeatureType] PRIMARY KEY CLUSTERED 
(
	[RefLearningResourceMediaFeatureTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[RefLearningResourcePhysicalMediaType]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[RefLearningResourcePhysicalMediaType](
	[RefLearningResourcePhysicalMediaTypeId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefLearningResourcePhysicalMediaType] PRIMARY KEY CLUSTERED 
(
	[RefLearningResourcePhysicalMediaTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[RefLearningResourceType]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[RefLearningResourceType](
	[RefLearningResourceTypeId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefLearningResourceType] PRIMARY KEY CLUSTERED 
(
	[RefLearningResourceTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[RefLearningStandardDocumentPublicationStatus]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[RefLearningStandardDocumentPublicationStatus](
	[RefLearningStandardDocumentPublicationStatusId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefLearningStandardDocumentPublicationStatus] PRIMARY KEY CLUSTERED 
(
	[RefLearningStandardDocumentPublicationStatusId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[RefLearningStandardItemAssociationType]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[RefLearningStandardItemAssociationType](
	[RefLearningStandardItemAssociationTypeId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefLearningStandardItemAssociationType] PRIMARY KEY CLUSTERED 
(
	[RefLearningStandardItemAssociationTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[RefLearningStandardItemNodeAccessibilityProfile]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[RefLearningStandardItemNodeAccessibilityProfile](
	[RefLearningStandardItemNodeAccessibilityProfileId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefLearningStandardItemNodeAccessibilityProfile] PRIMARY KEY CLUSTERED 
(
	[RefLearningStandardItemNodeAccessibilityProfileId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[RefLearningStandardItemTestabilityType]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[RefLearningStandardItemTestabilityType](
	[RefLearningStandardItemTestabilityTypeId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefLearningStandardItemTestabilityType] PRIMARY KEY CLUSTERED 
(
	[RefLearningStandardItemTestabilityTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[RefLeaType]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[RefLeaType](
	[RefLeaTypeId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefLeaType] PRIMARY KEY CLUSTERED 
(
	[RefLeaTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[RefLeaveEventType]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[RefLeaveEventType](
	[RefLeaveEventTypeId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefLeaveEventType] PRIMARY KEY CLUSTERED 
(
	[RefLeaveEventTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[RefLevelOfInstitution]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[RefLevelOfInstitution](
	[RefLevelOfInstitutionId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefLevelOfInstitution] PRIMARY KEY CLUSTERED 
(
	[RefLevelOfInstitutionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[RefLicenseExempt]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[RefLicenseExempt](
	[RefLicenseExemptId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefLicenseExempt] PRIMARY KEY CLUSTERED 
(
	[RefLicenseExemptId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[RefLiteracyAssessment]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[RefLiteracyAssessment](
	[RefLiteracyAssessmentId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefLiteracyAssessment] PRIMARY KEY CLUSTERED 
(
	[RefLiteracyAssessmentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[RefMagnetSpecialProgram]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[RefMagnetSpecialProgram](
	[RefMagnetSpecialProgramId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [XPKRefMagnetStatus] PRIMARY KEY CLUSTERED 
(
	[RefMagnetSpecialProgramId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[RefMedicalAlertIndicator]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[RefMedicalAlertIndicator](
	[RefMedicalAlertIndicatorId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [XPKRefMedAlert] PRIMARY KEY CLUSTERED 
(
	[RefMedicalAlertIndicatorId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[RefMepEnrollmentType]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[RefMepEnrollmentType](
	[RefMepEnrollmentTypeId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefMepEnrollmentType] PRIMARY KEY CLUSTERED 
(
	[RefMepEnrollmentTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[RefMepProjectBased]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[RefMepProjectBased](
	[RefMepProjectBasedId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefMepProjectBased] PRIMARY KEY CLUSTERED 
(
	[RefMepProjectBasedId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[RefMepProjectType]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[RefMepProjectType](
	[RefMepProjectTypeId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefMepProjectType] PRIMARY KEY CLUSTERED 
(
	[RefMepProjectTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[RefMepServiceType]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[RefMepServiceType](
	[RefMepServiceTypeId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefMEPServiceType] PRIMARY KEY CLUSTERED 
(
	[RefMepServiceTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[RefMepSessionType]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[RefMepSessionType](
	[RefMepSessionTypeId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefMepSessionType] PRIMARY KEY CLUSTERED 
(
	[RefMepSessionTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[RefMepStaffCategory]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[RefMepStaffCategory](
	[RefMepStaffCategoryId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_MepStaffCategory] PRIMARY KEY CLUSTERED 
(
	[RefMepStaffCategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[RefMethodOfServiceDelivery]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[RefMethodOfServiceDelivery](
	[RefMethodOfServiceDeliveryId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefMethodOfServiceDelivery] PRIMARY KEY CLUSTERED 
(
	[RefMethodOfServiceDeliveryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[RefMilitaryActiveStudentIndicator]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[RefMilitaryActiveStudentIndicator](
	[RefMilitaryActiveStudentIndicatorId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefMilitaryActiveStudentIndicator] PRIMARY KEY CLUSTERED 
(
	[RefMilitaryActiveStudentIndicatorId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[RefMilitaryBranch]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[RefMilitaryBranch](
	[RefMilitaryBranchId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](60) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](6, 2) NULL,
 CONSTRAINT [PK_RefMilitaryBranch] PRIMARY KEY CLUSTERED 
(
	[RefMilitaryBranchId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[RefMilitaryConnectedStudentIndicator]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[RefMilitaryConnectedStudentIndicator](
	[RefMilitaryConnectedStudentIndicatorId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefMilitaryConnectedStudentIndicator] PRIMARY KEY CLUSTERED 
(
	[RefMilitaryConnectedStudentIndicatorId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[RefMilitaryVeteranStudentIndicator]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[RefMilitaryVeteranStudentIndicator](
	[RefMilitaryVeteranStudentIndicatorId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefMilitaryVeteranStudentIndicator] PRIMARY KEY CLUSTERED 
(
	[RefMilitaryVeteranStudentIndicatorId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[RefMultipleIntelligenceType]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[RefMultipleIntelligenceType](
	[RefMultipleIntelligenceTypeId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefMultipleIntelligenceType] PRIMARY KEY CLUSTERED 
(
	[RefMultipleIntelligenceTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[RefNaepAspectsOfReading]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[RefNaepAspectsOfReading](
	[RefNaepAspectsOfReadingId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK__RefNaepAspecsOfReading] PRIMARY KEY CLUSTERED 
(
	[RefNaepAspectsOfReadingId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[RefNaepMathComplexityLevel]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[RefNaepMathComplexityLevel](
	[RefNaepMathComplexityLevelId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK__RefNaepMathComplexity] PRIMARY KEY CLUSTERED 
(
	[RefNaepMathComplexityLevelId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[RefNCESCollegeCourseMapCode]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[RefNCESCollegeCourseMapCode](
	[RefNCESCollegeCourseMapCodeId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefNCESCollegeCourseMapCode] PRIMARY KEY CLUSTERED 
(
	[RefNCESCollegeCourseMapCodeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[RefNeedDeterminationMethod]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[RefNeedDeterminationMethod](
	[RefNeedDeterminationMethodId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefNeedDeterminationMethod] PRIMARY KEY CLUSTERED 
(
	[RefNeedDeterminationMethodId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[RefNeglectedProgramType]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[RefNeglectedProgramType](
	[RefNeglectedProgramTypeId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefNeglectedProgramType] PRIMARY KEY CLUSTERED 
(
	[RefNeglectedProgramTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[RefNonPromotionReason]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[RefNonPromotionReason](
	[RefNonPromotionReasonId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefNonPromotionReason] PRIMARY KEY CLUSTERED 
(
	[RefNonPromotionReasonId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[RefNonTraditionalGenderStatus]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[RefNonTraditionalGenderStatus](
	[RefNonTraditionalGenderStatusId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefNonTraditionalGenderStatus] PRIMARY KEY CLUSTERED 
(
	[RefNonTraditionalGenderStatusId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[RefOperationalStatus]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[RefOperationalStatus](
	[RefOperationalStatusId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[RefOperationalStatusTypeId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [XPKRefOperationalStatus] PRIMARY KEY CLUSTERED 
(
	[RefOperationalStatusId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[RefOperationalStatusType]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[RefOperationalStatusType](
	[RefOperationalStatusTypeId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefOperationalStatusType] PRIMARY KEY CLUSTERED 
(
	[RefOperationalStatusTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[RefOrganizationElementType]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[RefOrganizationElementType](
	[RefOrganizationElementTypeId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefOrganizationElementType] PRIMARY KEY CLUSTERED 
(
	[RefOrganizationElementTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[RefOrganizationIdentificationSystem]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[RefOrganizationIdentificationSystem](
	[RefOrganizationIdentificationSystemId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[RefOrganizationIdentifierTypeId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_OrganizationIdentificationSystem] PRIMARY KEY CLUSTERED 
(
	[RefOrganizationIdentificationSystemId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[RefOrganizationIdentifierType]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[RefOrganizationIdentifierType](
	[RefOrganizationIdentifierTypeId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefOrganizationIdentifierType] PRIMARY KEY CLUSTERED 
(
	[RefOrganizationIdentifierTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[RefOrganizationIndicator]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[RefOrganizationIndicator](
	[RefOrganizationIndicatorId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[RefOrganizationTypeId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefOrganizationIndicator] PRIMARY KEY CLUSTERED 
(
	[RefOrganizationIndicatorId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[RefOrganizationLocationType]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[RefOrganizationLocationType](
	[RefOrganizationLocationTypeId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefOrganizationLocation] PRIMARY KEY CLUSTERED 
(
	[RefOrganizationLocationTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[RefOrganizationMonitoringNotifications]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[RefOrganizationMonitoringNotifications](
	[RefOrganizationMonitoringNotificationsId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefOrganizationMonitoringNotifications] PRIMARY KEY CLUSTERED 
(
	[RefOrganizationMonitoringNotificationsId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[RefOrganizationRelationship]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[RefOrganizationRelationship](
	[RefOrganizationRelationshipId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefOrganizationRelationship] PRIMARY KEY CLUSTERED 
(
	[RefOrganizationRelationshipId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[RefOrganizationType]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[RefOrganizationType](
	[RefOrganizationTypeId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[RefOrganizationElementTypeId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [XPKRefOrganization] PRIMARY KEY CLUSTERED 
(
	[RefOrganizationTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[RefOtherNameType]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[RefOtherNameType](
	[RefOtherNameTypeId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefOtherNameType] PRIMARY KEY CLUSTERED 
(
	[RefOtherNameTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[RefOutcomeTimePoint]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[RefOutcomeTimePoint](
	[RefOutcomeTimePointId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefOutcomeTimePoint] PRIMARY KEY CLUSTERED 
(
	[RefOutcomeTimePointId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
/****** Object:  Table [dbo].[RefParaprofessionalQualification]  ******/
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
CREATE TABLE [dbo].[RefParaprofessionalQualification](
	[RefParaprofessionalQualificationId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Definition] [nvarchar](4000) NULL,
	[RefJurisdictionId] [int] NULL,
	[SortOrder] [decimal](5, 2) NULL,
 CONSTRAINT [PK_RefParapaprofessionalQualification] PRIMARY KEY CLUSTERED 
(
	[RefParaprofessionalQualificationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;