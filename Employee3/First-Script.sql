USE [EmployeeMGR]
GO
/****** Object:  Table [dbo].[tblDesignation]    Script Date: 2/15/2016 3:50:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblDesignation](
	[fldDesignationID] [int] IDENTITY(1,1) NOT NULL,
	[fldEmployeeID] [int] NOT NULL,
	[fldPostID] [int] NULL,
	[fldLevelID] [int] NULL,
	[fldStartDate] [date] NULL,
	[fldDocument] [nvarchar](200) NULL,
	[fldNote] [nvarchar](500) NULL,
 CONSTRAINT [PK_tblDesignation] PRIMARY KEY CLUSTERED 
(
	[fldDesignationID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblEducation]    Script Date: 2/15/2016 3:50:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblEducation](
	[fldEducationInfoID] [int] IDENTITY(1,1) NOT NULL,
	[fldEmployeeID] [int] NOT NULL,
	[fldLevel] [nvarchar](100) NULL,
	[fldBoardOrUniversity] [nvarchar](100) NULL,
	[fldPassedYear] [nvarchar](50) NULL,
	[fldPassedGrade] [nvarchar](50) NULL,
	[fldMajorSubjects] [nvarchar](200) NULL,
	[fldNote] [nvarchar](500) NULL,
 CONSTRAINT [PK_tblEducationInfo] PRIMARY KEY CLUSTERED 
(
	[fldEducationInfoID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblEmployee]    Script Date: 2/15/2016 3:50:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblEmployee](
	[fldEmployeeID] [int] IDENTITY(1,1) NOT NULL,
	[fldFirstName] [nvarchar](100) NULL,
	[fldMiddleName] [nvarchar](100) NULL,
	[fldLastName] [nvarchar](100) NULL,
	[fldGender] [nvarchar](50) NULL,
	[fldDob] [date] NULL,
	[fldPhoneNo] [nvarchar](50) NULL,
	[fldMobileNo] [nvarchar](50) NULL,
	[fldFaxNo] [nvarchar](50) NULL,
	[fldPersonalEmail] [nvarchar](100) NULL,
	[fldOfficialEmail] [nvarchar](100) NULL,
	[fldAddress] [nvarchar](200) NULL,
	[fldDistrict] [nvarchar](200) NULL,
	[fldCitizenshipNo] [nvarchar](100) NULL,
	[fldCitizenshipIssuedDate] [date] NULL,
	[fldCitzenshipIssuedDistrict] [nvarchar](100) NULL,
	[fldDateofJoin] [date] NULL,
	[fldDateofPermanent] [date] NULL,
	[fldDateofRetirement] [date] NULL,
	[fldMaritalStatus] [nvarchar](50) NULL,
	[fldChildBoy] [int] NULL,
	[fldChildGirl] [int] NULL,
	[fldPpPhoto] [nvarchar](200) NULL,
	[fldCitizenshipCopy] [nvarchar](200) NULL,
	[fldLeaveHome] [float] NULL,
	[fldLeaveSick] [float] NULL,
	[fldIsActive] [bit] NULL,
	[fldCreatedBy] [nvarchar](100) NULL,
	[fldCreatedDate] [datetime] NULL,
	[fldUpdatedBy] [nvarchar](100) NULL,
	[fldUpdatedDate] [datetime] NULL,
	[fldDocument] [nvarchar](200) NULL,
	[fldNote] [nvarchar](500) NULL,
 CONSTRAINT [PK_tblEmployeeInfo] PRIMARY KEY CLUSTERED 
(
	[fldEmployeeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblFamily]    Script Date: 2/15/2016 3:50:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblFamily](
	[fldFamilyID] [int] IDENTITY(1,1) NOT NULL,
	[fldEmployeeID] [int] NULL,
	[fldMemberName] [nvarchar](100) NULL,
	[fldGender] [char](1) NULL,
	[fldRelation] [nvarchar](50) NULL,
	[fldCurrentAge] [int] NULL,
	[fldCurrentEducation] [nvarchar](50) NULL,
	[fldContactNo] [nchar](10) NULL,
	[fldUpdatedDate] [date] NULL,
	[fldNote] [nvarchar](500) NULL,
 CONSTRAINT [PK_tblFamily] PRIMARY KEY CLUSTERED 
(
	[fldFamilyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblLeave]    Script Date: 2/15/2016 3:50:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblLeave](
	[fldLeaveID] [int] IDENTITY(1,1) NOT NULL,
	[fldLeaveDesc] [nvarchar](100) NULL,
	[fldTotalLeaveDaysPerYear] [int] NULL,
	[fldNote] [nvarchar](200) NULL,
 CONSTRAINT [PK_tblLeave_1] PRIMARY KEY CLUSTERED 
(
	[fldLeaveID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblLeaveDetails]    Script Date: 2/15/2016 3:50:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblLeaveDetails](
	[fldLeaveDetailsID] [int] IDENTITY(1,1) NOT NULL,
	[fldEmployerID] [int] NULL,
	[fldLeaveID] [int] NULL,
	[fldDaysTaken] [float] NULL,
	[fldTakenDate] [date] NULL,
	[fldNote] [nvarchar](200) NULL,
 CONSTRAINT [PK_tblLeave] PRIMARY KEY CLUSTERED 
(
	[fldLeaveDetailsID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblLevel]    Script Date: 2/15/2016 3:50:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblLevel](
	[fldLevelID] [int] IDENTITY(1,1) NOT NULL,
	[fldLevelDesc] [nvarchar](200) NULL,
	[fldNote] [nvarchar](200) NULL,
 CONSTRAINT [PK_tblLavel] PRIMARY KEY CLUSTERED 
(
	[fldLevelID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblOfficeItem]    Script Date: 2/15/2016 3:50:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblOfficeItem](
	[fldOfficeItemsID] [int] IDENTITY(1,1) NOT NULL,
	[fldEmployeeID] [int] NULL,
	[fldOfficeItemsDesc] [nvarchar](100) NULL,
	[fldTotalValue] [int] NULL,
	[fldTakenDate] [date] NULL,
	[fldNote] [nvarchar](200) NULL,
 CONSTRAINT [PK_fldOfficeItem] PRIMARY KEY CLUSTERED 
(
	[fldOfficeItemsID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblPost]    Script Date: 2/15/2016 3:50:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblPost](
	[fldPostID] [int] IDENTITY(1,1) NOT NULL,
	[fldPostDesc] [nvarchar](200) NULL,
	[fldNote] [nvarchar](200) NULL,
 CONSTRAINT [PK_tblPost] PRIMARY KEY CLUSTERED 
(
	[fldPostID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblTraining]    Script Date: 2/15/2016 3:50:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblTraining](
	[fldTrainingID] [int] IDENTITY(1,1) NOT NULL,
	[fldEmployeeId] [int] NOT NULL,
	[fldTitle] [nvarchar](200) NULL,
	[fldStartDate] [date] NULL,
	[fldEndDate] [date] NULL,
	[fldTrainingGrade] [nvarchar](50) NULL,
	[fldLocation] [nvarchar](50) NULL,
	[fldOrganizer] [nvarchar](200) NULL,
	[fldDocument] [nvarchar](200) NULL,
	[fldNote] [nvarchar](500) NULL,
 CONSTRAINT [PK_tblTraining] PRIMARY KEY CLUSTERED 
(
	[fldTrainingID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblUser]    Script Date: 2/15/2016 3:50:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblUser](
	[fldUserId] [int] IDENTITY(1,1) NOT NULL,
	[fldEmployeeId] [int] NULL,
	[fldLoginName] [varchar](200) NOT NULL,
	[fldUsername] [varchar](50) NOT NULL,
	[fldPassword] [varchar](50) NOT NULL,
	[fldUserType] [nvarchar](50) NOT NULL,
	[fldIsActive] [bit] NULL,
	[fldCreatedBy] [nvarchar](100) NULL,
	[fldCreatedDate] [datetime] NULL,
	[fldUpdatedBy] [nvarchar](100) NULL,
	[fldUpdatedDate] [datetime] NULL,
	[fldNote] [nvarchar](500) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[tblLeave] ON 

GO
INSERT [dbo].[tblLeave] ([fldLeaveID], [fldLeaveDesc], [fldTotalLeaveDaysPerYear], [fldNote]) VALUES (1, N'भैपरी', 6, NULL)
GO
INSERT [dbo].[tblLeave] ([fldLeaveID], [fldLeaveDesc], [fldTotalLeaveDaysPerYear], [fldNote]) VALUES (2, N'पर्व', 6, NULL)
GO
INSERT [dbo].[tblLeave] ([fldLeaveID], [fldLeaveDesc], [fldTotalLeaveDaysPerYear], [fldNote]) VALUES (3, N'विरामी', 12, N'सञ्चित')
GO
INSERT [dbo].[tblLeave] ([fldLeaveID], [fldLeaveDesc], [fldTotalLeaveDaysPerYear], [fldNote]) VALUES (4, N'घर बिदा', 30, N'१८० दिन सम्म सञ्चित हुने')
GO
SET IDENTITY_INSERT [dbo].[tblLeave] OFF
GO
ALTER TABLE [dbo].[tblDesignation]  WITH CHECK ADD  CONSTRAINT [FK_tblDesignation_tblEmployee] FOREIGN KEY([fldEmployeeID])
REFERENCES [dbo].[tblEmployee] ([fldEmployeeID])
GO
ALTER TABLE [dbo].[tblDesignation] CHECK CONSTRAINT [FK_tblDesignation_tblEmployee]
GO
ALTER TABLE [dbo].[tblDesignation]  WITH CHECK ADD  CONSTRAINT [FK_tblDesignation_tblLavel] FOREIGN KEY([fldLevelID])
REFERENCES [dbo].[tblLevel] ([fldLevelID])
GO
ALTER TABLE [dbo].[tblDesignation] CHECK CONSTRAINT [FK_tblDesignation_tblLavel]
GO
ALTER TABLE [dbo].[tblDesignation]  WITH CHECK ADD  CONSTRAINT [FK_tblDesignation_tblPost] FOREIGN KEY([fldPostID])
REFERENCES [dbo].[tblPost] ([fldPostID])
GO
ALTER TABLE [dbo].[tblDesignation] CHECK CONSTRAINT [FK_tblDesignation_tblPost]
GO
ALTER TABLE [dbo].[tblEducation]  WITH CHECK ADD  CONSTRAINT [FK_tblEducation_tblEmployee] FOREIGN KEY([fldEmployeeID])
REFERENCES [dbo].[tblEmployee] ([fldEmployeeID])
GO
ALTER TABLE [dbo].[tblEducation] CHECK CONSTRAINT [FK_tblEducation_tblEmployee]
GO
ALTER TABLE [dbo].[tblFamily]  WITH CHECK ADD  CONSTRAINT [FK_tblFamily_tblEmployee] FOREIGN KEY([fldEmployeeID])
REFERENCES [dbo].[tblEmployee] ([fldEmployeeID])
GO
ALTER TABLE [dbo].[tblFamily] CHECK CONSTRAINT [FK_tblFamily_tblEmployee]
GO
ALTER TABLE [dbo].[tblLeaveDetails]  WITH CHECK ADD  CONSTRAINT [FK_tblLeave_tblLeave] FOREIGN KEY([fldEmployerID])
REFERENCES [dbo].[tblEmployee] ([fldEmployeeID])
GO
ALTER TABLE [dbo].[tblLeaveDetails] CHECK CONSTRAINT [FK_tblLeave_tblLeave]
GO
ALTER TABLE [dbo].[tblLeaveDetails]  WITH CHECK ADD  CONSTRAINT [FK_tblLeaveDetails_tblLeave] FOREIGN KEY([fldLeaveID])
REFERENCES [dbo].[tblLeave] ([fldLeaveID])
GO
ALTER TABLE [dbo].[tblLeaveDetails] CHECK CONSTRAINT [FK_tblLeaveDetails_tblLeave]
GO
ALTER TABLE [dbo].[tblOfficeItem]  WITH CHECK ADD  CONSTRAINT [FK_fldOfficeItem_tblEmployee] FOREIGN KEY([fldOfficeItemsID])
REFERENCES [dbo].[tblEmployee] ([fldEmployeeID])
GO
ALTER TABLE [dbo].[tblOfficeItem] CHECK CONSTRAINT [FK_fldOfficeItem_tblEmployee]
GO
ALTER TABLE [dbo].[tblTraining]  WITH CHECK ADD  CONSTRAINT [FK_tblTraining_tblEmployee] FOREIGN KEY([fldEmployeeId])
REFERENCES [dbo].[tblEmployee] ([fldEmployeeID])
GO
ALTER TABLE [dbo].[tblTraining] CHECK CONSTRAINT [FK_tblTraining_tblEmployee]
GO
/****** Object:  StoredProcedure [dbo].[sp_delete_Education]    Script Date: 2/15/2016 3:50:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_delete_Education]
(@EducationInfoID int)
AS

BEGIN
DELETE FROM [dbo].[tblEducation]
      WHERE fldEducationInfoID=@EducationInfoID
END




GO
/****** Object:  StoredProcedure [dbo].[sp_get_Education]    Script Date: 2/15/2016 3:50:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_get_Education]
(@EmployeeId int)
AS
BEGIN
SELECT [fldEducationInfoID]
      ,[fldEmployeeID]
      ,[fldLevel]
      ,[fldBoardOrUniversity]
      ,[fldPassedYear]
      ,[fldPassedGrade]
      ,[fldMajorSubjects]
      ,[fldNote]
  FROM [dbo].[tblEducation]
  WHERE fldEmployeeID=@EmployeeId
END




GO
/****** Object:  StoredProcedure [dbo].[sp_get_LeaveDetails]    Script Date: 2/15/2016 3:50:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_get_LeaveDetails]
(@EmployeeId int)
AS
BEGIN
SELECT [fldLeaveDetailsID]
      ,[fldEmployerID]
      ,[fldLeaveID]
      ,[fldDaysTaken]
      ,[fldTakenDate]
      ,[fldNote]
  FROM [EmployeeMGR].[dbo].[tblLeaveDetails]
  WHERE [fldEmployerID]=@EmployeeId
END

GO
/****** Object:  StoredProcedure [dbo].[sp_Insert_Designation]    Script Date: 2/15/2016 3:50:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Insert_Designation]
(
		   @EmployeeID int,
           @PostID int,
           @LevelID int,
           @StartDate date,
           @Document nvarchar(200),
           @Note nvarchar(500)
)
AS

INSERT INTO [dbo].[tblDesignation]
           ([fldEmployeeID]
           ,[fldPostID]
           ,[fldLevelID]
           ,[fldStartDate]
           ,[fldDocument]
           ,[fldNote])
     VALUES
           (@EmployeeID,
           @PostID,
           @LevelID,
           @StartDate,
           @Document,
           @Note)



GO
/****** Object:  StoredProcedure [dbo].[sp_Insert_Education]    Script Date: 2/15/2016 3:50:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Insert_Education]       
(   
			@EmployeeID int
           ,@Level nvarchar(100)
           ,@BoardOrUniversity nvarchar(100)
           ,@PassedYear nvarchar(50)
           ,@PassedGrade nvarchar(50)
           ,@MajorSubjects nvarchar(200)
           ,@Note nvarchar(500)       
)      
AS       
 INSERT INTO [dbo].[tblEducation]
			([fldEmployeeID]
           ,[fldLevel]
           ,[fldBoardOrUniversity]
           ,[fldPassedYear]
           ,[fldPassedGrade]
           ,[fldMajorSubjects]
           ,[fldNote])
     VALUES
           (
		    @EmployeeID
           ,@Level
           ,@BoardOrUniversity
           ,@PassedYear
           ,@PassedGrade
           ,@MajorSubjects
           ,@Note )




GO
/****** Object:  StoredProcedure [dbo].[sp_Insert_tblEmployee]    Script Date: 2/15/2016 3:50:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[sp_Insert_tblEmployee]
	@fldFirstName nvarchar(200)=NULL,
	@fldMiddleName nvarchar(200)=NULL,
	@fldLastName	nvarchar(200)=NULL,
	@fldGender	nvarchar(100)=NULL,
	@fldDob	datetime=NULL,
	@fldPhoneNo	nvarchar(100)=NULL,
	@fldMobileNo	nvarchar(100)=NULL,
	@fldFaxNo	nvarchar(100)=NULL,
	@fldPersonalEmail	nvarchar(200)=NULL,
	@fldOfficialEmail	nvarchar(200)=NULL,
	@fldAddress	nvarchar(400)=NULL,
	@fldDistrict	nvarchar(400)=NULL,
	@fldCitizenshipNo	nvarchar(200)=NULL,
	@fldCitizenshipIssuedDate	datetime=NULL,
	@fldCitzenshipIssuedDistrict	nvarchar(200)=NULL,
	@fldDateofJoin	datetime=NULL,
	@fldDateofPermanent	datetime=NULL,
	@fldDateofRetirement	datetime=NULL,
	@fldMaritalStatus	nvarchar(100)=NULL,
	@fldChildBoy	smallint=NULL,
	@fldChildGirl	smallint=NULL,
	@fldPpPhoto	nvarchar(400)=NULL,
	@fldCitizenshipCopy	nvarchar(400)=NULL,
	@fldLeaveHome	float=NULL,
	@fldLeaveSick	float=NULL,
	@fldIsActive	bit=NULL,
	@fldCreatedBy	nvarchar(200)=NULL,
	@fldCreatedDate	datetime=NULL,
	@fldUpdatedBy	nvarchar(200)=NULL,
	@fldUpdatedDate	datetime=NULL,
	@fldDocument	nvarchar(400)=NULL,
	@fldNote	nvarchar(Max)=NULLASBEGIN	INSERT INTO tblEmployee(
		[fldFirstName],
		[fldMiddleName],
		[fldLastName],
		[fldGender],
		[fldDob],
		[fldPhoneNo],
		[fldMobileNo],
		[fldFaxNo],
		[fldPersonalEmail],
		[fldOfficialEmail],
		[fldAddress],
		[fldDistrict],
		[fldCitizenshipNo],
		[fldCitizenshipIssuedDate],
		[fldCitzenshipIssuedDistrict],
		[fldDateofJoin],
		[fldDateofPermanent],
		[fldDateofRetirement],
		[fldMaritalStatus],
		[fldChildBoy],
		[fldChildGirl],
		[fldPpPhoto],
		[fldCitizenshipCopy],
		[fldLeaveHome],
		[fldLeaveSick],
		[fldIsActive],
		[fldCreatedBy],
		[fldCreatedDate],
		[fldUpdatedBy],
		[fldUpdatedDate],
		[fldDocument],
		[fldNote]	)	VALUES (
	@fldFirstName,
	@fldMiddleName,
	@fldLastName,
	@fldGender,
	@fldDob,
	@fldPhoneNo,
	@fldMobileNo,
	@fldFaxNo,
	@fldPersonalEmail,
	@fldOfficialEmail,
	@fldAddress,
	@fldDistrict,
	@fldCitizenshipNo,
	@fldCitizenshipIssuedDate,
	@fldCitzenshipIssuedDistrict,
	@fldDateofJoin,
	@fldDateofPermanent,
	@fldDateofRetirement,
	@fldMaritalStatus,
	@fldChildBoy,
	@fldChildGirl,
	@fldPpPhoto,
	@fldCitizenshipCopy,
	@fldLeaveHome,
	@fldLeaveSick,
	@fldIsActive,
	@fldCreatedBy,
	@fldCreatedDate,
	@fldUpdatedBy,
	@fldUpdatedDate,
	@fldDocument,
	@fldNote	)	SELECT SCOPE_IDENTITY() As InsertedIDEND

GO
/****** Object:  StoredProcedure [dbo].[sp_insert_Training]    Script Date: 2/15/2016 3:50:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_insert_Training]
			(
			@EmployeeId int
           ,@Title nvarchar(200)
           ,@StartDate date
           ,@EndDate date
           ,@Location nvarchar(50)
		   ,@TrainingGrade nvarchar(50)
           ,@Organizer nvarchar(200)
           ,@Document nvarchar(200)
           ,@Note nvarchar(500)
		   )
AS
INSERT INTO [dbo].[tblTraining]
           ([fldEmployeeId]
           ,[fldTitle]
           ,[fldStartDate]
           ,[fldEndDate]
           ,[fldLocation]
		   ,[fldtrainingGrade]
           ,[fldOrganizer]
           ,[fldDocument]
           ,[fldNote])
     VALUES
           (@EmployeeId
           ,@Title
           ,@StartDate
           ,@EndDate
           ,@Location
		   ,@TrainingGrade
           ,@Organizer
           ,@Document
           ,@Note
		   )



GO
