USE [master]
GO
/****** Object:  Database [University]    Script Date: 1/26/2018 02:42:14 ******/
CREATE DATABASE [University]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'University_Data', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\University.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'University_Log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\University.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [University] SET COMPATIBILITY_LEVEL = 130
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [University].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [University] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [University] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [University] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [University] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [University] SET ARITHABORT OFF 
GO
ALTER DATABASE [University] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [University] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [University] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [University] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [University] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [University] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [University] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [University] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [University] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [University] SET  DISABLE_BROKER 
GO
ALTER DATABASE [University] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [University] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [University] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [University] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [University] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [University] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [University] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [University] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [University] SET  MULTI_USER 
GO
ALTER DATABASE [University] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [University] SET DB_CHAINING OFF 
GO
ALTER DATABASE [University] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [University] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [University] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [University] SET QUERY_STORE = OFF
GO
USE [University]
GO
ALTER DATABASE SCOPED CONFIGURATION SET IDENTITY_CACHE = ON;
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
USE [University]
GO
/****** Object:  Table [dbo].[Admin]    Script Date: 1/26/2018 02:42:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Admin](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Email] [nvarchar](40) NULL,
	[Password] [nvarchar](40) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Exams]    Script Date: 1/26/2018 02:42:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Exams](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Subject_Id] [int] NULL,
	[QuestionNumber] [int] NULL,
	[Question] [nvarchar](max) NULL,
	[A] [nvarchar](max) NULL,
	[B] [nvarchar](max) NULL,
	[C] [nvarchar](max) NULL,
	[D] [nvarchar](max) NULL,
	[E] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Groups]    Script Date: 1/26/2018 02:42:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Groups](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](40) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Scores]    Script Date: 1/26/2018 02:42:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Scores](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Student_Id] [int] NULL,
	[Subject_Id] [int] NULL,
	[BeforeExamScore] [int] NULL,
	[AfterExamScore] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Students]    Script Date: 1/26/2018 02:42:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Students](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Firstname] [nvarchar](40) NULL,
	[Lastname] [nvarchar](40) NULL,
	[Email] [nvarchar](40) NULL,
	[Identification] [nvarchar](40) NULL,
	[Birthdate] [datetime] NULL,
	[Group_Id] [int] NULL,
	[Password] [nvarchar](40) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Subjects]    Script Date: 1/26/2018 02:42:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Subjects](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](40) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Teachers]    Script Date: 1/26/2018 02:42:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Teachers](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Firstname] [nvarchar](40) NULL,
	[Lastname] [nvarchar](40) NULL,
	[Email] [nvarchar](40) NULL,
	[Identification] [nvarchar](40) NULL,
	[Birthdate] [datetime] NULL,
	[Password] [nvarchar](40) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TGS]    Script Date: 1/26/2018 02:42:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TGS](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Group_Id] [int] NULL,
	[Teacher_Id] [int] NULL,
	[Subject_Id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Admin] ON 

INSERT [dbo].[Admin] ([Id], [Email], [Password]) VALUES (1, N'admin', N'admin123')
SET IDENTITY_INSERT [dbo].[Admin] OFF
SET IDENTITY_INSERT [dbo].[Exams] ON 

INSERT [dbo].[Exams] ([Id], [Subject_Id], [QuestionNumber], [Question], [A], [B], [C], [D], [E]) VALUES (1, 19, 1, N'1+1 ?', N'2', N'3', N'4', N'5', N'6')
INSERT [dbo].[Exams] ([Id], [Subject_Id], [QuestionNumber], [Question], [A], [B], [C], [D], [E]) VALUES (2, 19, 2, N' 4*4 ?', N'16', N'12', N'18', N'25', N'10')
INSERT [dbo].[Exams] ([Id], [Subject_Id], [QuestionNumber], [Question], [A], [B], [C], [D], [E]) VALUES (3, 19, 3, N' 7*7 ?', N'49', N'48', N'50', N'58', N'14')
INSERT [dbo].[Exams] ([Id], [Subject_Id], [QuestionNumber], [Question], [A], [B], [C], [D], [E]) VALUES (4, 19, 4, N'2/1 ?', N'2', N'1', N'3', N'4', N'7')
INSERT [dbo].[Exams] ([Id], [Subject_Id], [QuestionNumber], [Question], [A], [B], [C], [D], [E]) VALUES (5, 19, 5, N'8+8 ?', N'16', N'18', N'12', N'8', N'0')
INSERT [dbo].[Exams] ([Id], [Subject_Id], [QuestionNumber], [Question], [A], [B], [C], [D], [E]) VALUES (6, 19, 6, N'7+4 ?', N'11', N'12', N'13', N'14', N'7')
INSERT [dbo].[Exams] ([Id], [Subject_Id], [QuestionNumber], [Question], [A], [B], [C], [D], [E]) VALUES (7, 19, 7, N'10+10 ?', N'20', N'25', N'10', N'0', N'15')
INSERT [dbo].[Exams] ([Id], [Subject_Id], [QuestionNumber], [Question], [A], [B], [C], [D], [E]) VALUES (8, 19, 8, N'5+5?', N'10', N'15', N'10', N'20', N'5')
INSERT [dbo].[Exams] ([Id], [Subject_Id], [QuestionNumber], [Question], [A], [B], [C], [D], [E]) VALUES (9, 19, 9, N'50*2 ?', N'100', N'200', N'52', N'58', N'60')
INSERT [dbo].[Exams] ([Id], [Subject_Id], [QuestionNumber], [Question], [A], [B], [C], [D], [E]) VALUES (10, 19, 10, N'4*5 ?', N'20', N'25', N'30', N'15', N'5')
SET IDENTITY_INSERT [dbo].[Exams] OFF
SET IDENTITY_INSERT [dbo].[Groups] ON 

INSERT [dbo].[Groups] ([Id], [Name]) VALUES (6, N'P400')
INSERT [dbo].[Groups] ([Id], [Name]) VALUES (7, N'A400')
INSERT [dbo].[Groups] ([Id], [Name]) VALUES (12, N'T500')
INSERT [dbo].[Groups] ([Id], [Name]) VALUES (13, N'B600')
INSERT [dbo].[Groups] ([Id], [Name]) VALUES (14, N'P204')
INSERT [dbo].[Groups] ([Id], [Name]) VALUES (15, N'P102')
SET IDENTITY_INSERT [dbo].[Groups] OFF
SET IDENTITY_INSERT [dbo].[Scores] ON 

INSERT [dbo].[Scores] ([Id], [Student_Id], [Subject_Id], [BeforeExamScore], [AfterExamScore]) VALUES (4, 1, 19, 50, 5)
INSERT [dbo].[Scores] ([Id], [Student_Id], [Subject_Id], [BeforeExamScore], [AfterExamScore]) VALUES (5, 2, 19, 30, 10)
INSERT [dbo].[Scores] ([Id], [Student_Id], [Subject_Id], [BeforeExamScore], [AfterExamScore]) VALUES (8, 6, 19, 15, NULL)
INSERT [dbo].[Scores] ([Id], [Student_Id], [Subject_Id], [BeforeExamScore], [AfterExamScore]) VALUES (9, 7, 19, 10, NULL)
INSERT [dbo].[Scores] ([Id], [Student_Id], [Subject_Id], [BeforeExamScore], [AfterExamScore]) VALUES (10, 8, 19, 40, 0)
INSERT [dbo].[Scores] ([Id], [Student_Id], [Subject_Id], [BeforeExamScore], [AfterExamScore]) VALUES (11, 9, 19, 50, NULL)
SET IDENTITY_INSERT [dbo].[Scores] OFF
SET IDENTITY_INSERT [dbo].[Students] ON 

INSERT [dbo].[Students] ([Id], [Firstname], [Lastname], [Email], [Identification], [Birthdate], [Group_Id], [Password]) VALUES (1, N'Samir', N'Hasanov', N'samir@code.az', N'1', CAST(N'2018-01-23T22:19:32.953' AS DateTime), 6, N'samir123')
INSERT [dbo].[Students] ([Id], [Firstname], [Lastname], [Email], [Identification], [Birthdate], [Group_Id], [Password]) VALUES (2, N'Ruslan', N'Mammedov', N'ruslan@code.az', N'555', CAST(N'2018-01-22T03:48:57.507' AS DateTime), 6, N'ruslan123')
INSERT [dbo].[Students] ([Id], [Firstname], [Lastname], [Email], [Identification], [Birthdate], [Group_Id], [Password]) VALUES (4, N'Aqsin', N'Huseynov', N'aqshin@code.az', N'aqshin123', CAST(N'1997-01-22T20:01:20.000' AS DateTime), 14, N'aqshin123')
INSERT [dbo].[Students] ([Id], [Firstname], [Lastname], [Email], [Identification], [Birthdate], [Group_Id], [Password]) VALUES (5, N'Elbrus', N'Veliyev', N'elbrus@code.az', N'2', CAST(N'2018-01-23T22:00:11.240' AS DateTime), 14, N'elbrus123')
INSERT [dbo].[Students] ([Id], [Firstname], [Lastname], [Email], [Identification], [Birthdate], [Group_Id], [Password]) VALUES (6, N'Perviz', N'Emirov', N'perviz@code.az', N'90', CAST(N'2018-01-24T14:27:35.383' AS DateTime), 6, N'perviz123')
INSERT [dbo].[Students] ([Id], [Firstname], [Lastname], [Email], [Identification], [Birthdate], [Group_Id], [Password]) VALUES (7, N'Elvin', N'Semedov', N'elvin@code.az', N'3', CAST(N'2018-01-24T16:43:31.557' AS DateTime), 6, N'elvin123')
INSERT [dbo].[Students] ([Id], [Firstname], [Lastname], [Email], [Identification], [Birthdate], [Group_Id], [Password]) VALUES (8, N'Kerim', N'Sadiov', N'kerim@code.az', N'4', CAST(N'1999-07-25T20:49:31.000' AS DateTime), 6, N'kerim123')
INSERT [dbo].[Students] ([Id], [Firstname], [Lastname], [Email], [Identification], [Birthdate], [Group_Id], [Password]) VALUES (9, N'Vusal', N'Sadiqov', N'vusal@code.az', N'5', CAST(N'1995-07-21T21:01:50.000' AS DateTime), 6, N'vusal123')
SET IDENTITY_INSERT [dbo].[Students] OFF
SET IDENTITY_INSERT [dbo].[Subjects] ON 

INSERT [dbo].[Subjects] ([Id], [Name]) VALUES (9, N'Psihology')
INSERT [dbo].[Subjects] ([Id], [Name]) VALUES (10, N'Geometry')
INSERT [dbo].[Subjects] ([Id], [Name]) VALUES (17, N'Literature')
INSERT [dbo].[Subjects] ([Id], [Name]) VALUES (18, N'Mathematics')
INSERT [dbo].[Subjects] ([Id], [Name]) VALUES (19, N'History')
INSERT [dbo].[Subjects] ([Id], [Name]) VALUES (20, N'Chemicals')
SET IDENTITY_INSERT [dbo].[Subjects] OFF
SET IDENTITY_INSERT [dbo].[Teachers] ON 

INSERT [dbo].[Teachers] ([Id], [Firstname], [Lastname], [Email], [Identification], [Birthdate], [Password]) VALUES (2, N'Samir', N'Hasanov', N'samireh@code.edu.az', N'12', CAST(N'2018-01-23T22:24:21.683' AS DateTime), N'samir1234')
INSERT [dbo].[Teachers] ([Id], [Firstname], [Lastname], [Email], [Identification], [Birthdate], [Password]) VALUES (5, N'Elshen', N'Emirov', N'elshen@code.az', N'2', CAST(N'2018-01-21T14:07:48.000' AS DateTime), N'elshen123')
INSERT [dbo].[Teachers] ([Id], [Firstname], [Lastname], [Email], [Identification], [Birthdate], [Password]) VALUES (6, N'Arif', N'Nezirov', N'arif@code.az', N'3', CAST(N'1987-02-05T19:57:32.000' AS DateTime), N'arif1234')
INSERT [dbo].[Teachers] ([Id], [Firstname], [Lastname], [Email], [Identification], [Birthdate], [Password]) VALUES (7, N'Sultan', N'Esgerov', N'sultan@code.az', N'4', CAST(N'1986-03-07T19:57:32.000' AS DateTime), N'sultan123')
INSERT [dbo].[Teachers] ([Id], [Firstname], [Lastname], [Email], [Identification], [Birthdate], [Password]) VALUES (8, N'Memmed', N'Talibzade', N'memmed@code.az', N'45', CAST(N'1992-07-10T22:15:20.000' AS DateTime), N'memmed123')
SET IDENTITY_INSERT [dbo].[Teachers] OFF
SET IDENTITY_INSERT [dbo].[TGS] ON 

INSERT [dbo].[TGS] ([Id], [Group_Id], [Teacher_Id], [Subject_Id]) VALUES (6, 12, 6, 9)
INSERT [dbo].[TGS] ([Id], [Group_Id], [Teacher_Id], [Subject_Id]) VALUES (7, 7, 7, 17)
INSERT [dbo].[TGS] ([Id], [Group_Id], [Teacher_Id], [Subject_Id]) VALUES (8, 14, 5, 18)
INSERT [dbo].[TGS] ([Id], [Group_Id], [Teacher_Id], [Subject_Id]) VALUES (9, 6, 2, 19)
INSERT [dbo].[TGS] ([Id], [Group_Id], [Teacher_Id], [Subject_Id]) VALUES (10, 15, 8, 20)
SET IDENTITY_INSERT [dbo].[TGS] OFF
ALTER TABLE [dbo].[Exams]  WITH CHECK ADD FOREIGN KEY([Subject_Id])
REFERENCES [dbo].[Subjects] ([Id])
GO
ALTER TABLE [dbo].[Scores]  WITH CHECK ADD FOREIGN KEY([Student_Id])
REFERENCES [dbo].[Students] ([Id])
GO
ALTER TABLE [dbo].[Scores]  WITH CHECK ADD FOREIGN KEY([Subject_Id])
REFERENCES [dbo].[Subjects] ([Id])
GO
ALTER TABLE [dbo].[Students]  WITH CHECK ADD FOREIGN KEY([Group_Id])
REFERENCES [dbo].[Groups] ([Id])
GO
ALTER TABLE [dbo].[TGS]  WITH CHECK ADD FOREIGN KEY([Group_Id])
REFERENCES [dbo].[Groups] ([Id])
GO
ALTER TABLE [dbo].[TGS]  WITH CHECK ADD FOREIGN KEY([Subject_Id])
REFERENCES [dbo].[Subjects] ([Id])
GO
ALTER TABLE [dbo].[TGS]  WITH CHECK ADD FOREIGN KEY([Teacher_Id])
REFERENCES [dbo].[Teachers] ([Id])
GO
USE [master]
GO
ALTER DATABASE [University] SET  READ_WRITE 
GO
