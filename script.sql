USE [RepairInfo]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 24-06-2020 12:40:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 24-06-2020 12:40:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 24-06-2020 12:40:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](128) NOT NULL,
	[ProviderKey] [nvarchar](128) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC,
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 24-06-2020 12:40:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](128) NOT NULL,
	[RoleId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 24-06-2020 12:40:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](128) NOT NULL,
	[Email] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEndDateUtc] [datetime] NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[UserName] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[IssueRepairModels]    Script Date: 24-06-2020 12:40:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IssueRepairModels](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IssueTitle] [nvarchar](max) NOT NULL,
	[IssueDescription] [nvarchar](max) NOT NULL,
	[IssueStatus] [int] NOT NULL,
	[IssueCreatedDate] [nvarchar](max) NULL,
	[IssueCloseDate] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.IssueRepairModels] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[IssueTrackingModels]    Script Date: 24-06-2020 12:40:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IssueTrackingModels](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](max) NULL,
	[IssueStatus] [int] NOT NULL,
	[ClerkTimeSpent] [int] NOT NULL,
	[TechnicianTimeSpent] [int] NOT NULL,
	[QualityControlTimeSpent] [int] NOT NULL,
	[ShippingTimeSpent] [int] NOT NULL,
	[IssueRepairModel_Id] [int] NULL,
 CONSTRAINT [PK_dbo.IssueTrackingModels] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'1', N'Clerk')
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'3', N'Quality Control')
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'4', N'Shipping')
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'2', N'Technician')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'08adb669-5f14-4b56-a407-692328df49e7', N'1')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'1ec757ef-adaa-4af1-9061-d7f56c86eea2', N'2')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'e4302e41-2517-4197-a3a6-09e914e32c96', N'2')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'6d5318c7-18f7-407f-a994-44e2fb125fc6', N'3')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'0ffa025c-dff1-4acf-b70f-7ad55c70e53b', N'4')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'd0bcd1c0-9373-4da5-be6b-e2d2f7a52b5e', N'4')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'08adb669-5f14-4b56-a407-692328df49e7', N'maya123@gmail.com', 0, N'ACXQe5LyevKxUKOSAM27OC1w8miqDOCo3ZeHn8U/5mMERGB/Giqu3/GhiHhS6CGXpA==', N'a1ab019a-f996-46ce-88b7-8cdebf2d6124', NULL, 0, 0, NULL, 1, 0, N'maya123@gmail.com')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'0ffa025c-dff1-4acf-b70f-7ad55c70e53b', N'test@test.com', 0, N'ABEeXJa6CcXG62KIbMVaEJM7Z8F9ypNpAfMNXIUSrT74ykq6FxIQDIUgKpXQN/ITCw==', N'7e5a3ea8-ab4c-4542-9245-e363e7a39c44', NULL, 0, 0, NULL, 1, 0, N'test@test.com')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'1ec757ef-adaa-4af1-9061-d7f56c86eea2', N'shubham123@gmail.com', 0, N'APBSUW62Q0U3Mnl+SfLLjwD4fClrKBXSVLwV0vososdQ11Db+C383wkepymASL6ySw==', N'8c3c41c8-9569-4d27-8144-159c12f021b1', NULL, 0, 0, NULL, 1, 0, N'shubham123@gmail.com')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'6d5318c7-18f7-407f-a994-44e2fb125fc6', N'mayatrivedi@gamil.com', 0, N'AHqw5sfZRsmFdXfbqORC1PjefR5m2tKl3CDymaN0gxl6MjXclDUmMmVVwZkUqr87eg==', N'e26db8f1-d06d-4a11-b2b2-bb4380ac8551', NULL, 0, 0, NULL, 1, 0, N'mayatrivedi@gamil.com')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'd0bcd1c0-9373-4da5-be6b-e2d2f7a52b5e', N'shubhamGarg123@gmail.com', 0, N'AGJhegzW9ycfafbAlWW85ar14HRjm17iBEv08G5TGJpScw4xKkxJI1UYRzN2pL7BFA==', N'c4268a6d-6fdb-426b-97c2-5852b51e12ab', NULL, 0, 0, NULL, 1, 0, N'shubhamGarg123@gmail.com')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'e4302e41-2517-4197-a3a6-09e914e32c96', N'new@new.com', 0, N'ACAuvz98LZ6Xt4BNYXP2X2ktoPXjaUOtUMzWTG7c0btYXwA7gcurCa0SHGUPp2+nVQ==', N'22aa2fa1-7555-4eb8-8746-15008642a9d2', NULL, 0, 0, NULL, 1, 0, N'new@new.com')
SET IDENTITY_INSERT [dbo].[IssueRepairModels] ON 

INSERT [dbo].[IssueRepairModels] ([Id], [IssueTitle], [IssueDescription], [IssueStatus], [IssueCreatedDate], [IssueCloseDate]) VALUES (7, N'Test Issue', N'Issue is trial run', 0, N'20-06-2020 09:40:12 PM', NULL)
INSERT [dbo].[IssueRepairModels] ([Id], [IssueTitle], [IssueDescription], [IssueStatus], [IssueCreatedDate], [IssueCloseDate]) VALUES (8, N'Test 2', N'TEst 2 trial run', 2, N'20-06-2020 09:40:29 PM', NULL)
SET IDENTITY_INSERT [dbo].[IssueRepairModels] OFF
SET IDENTITY_INSERT [dbo].[IssueTrackingModels] ON 

INSERT [dbo].[IssueTrackingModels] ([Id], [UserId], [IssueStatus], [ClerkTimeSpent], [TechnicianTimeSpent], [QualityControlTimeSpent], [ShippingTimeSpent], [IssueRepairModel_Id]) VALUES (2, N'08adb669-5f14-4b56-a407-692328df49e7', 0, 10, 0, 0, 0, 7)
SET IDENTITY_INSERT [dbo].[IssueTrackingModels] OFF
ALTER TABLE [dbo].[IssueTrackingModels] ADD  DEFAULT ((0)) FOR [IssueStatus]
GO
ALTER TABLE [dbo].[IssueTrackingModels] ADD  DEFAULT ((0)) FOR [ClerkTimeSpent]
GO
ALTER TABLE [dbo].[IssueTrackingModels] ADD  DEFAULT ((0)) FOR [TechnicianTimeSpent]
GO
ALTER TABLE [dbo].[IssueTrackingModels] ADD  DEFAULT ((0)) FOR [QualityControlTimeSpent]
GO
ALTER TABLE [dbo].[IssueTrackingModels] ADD  DEFAULT ((0)) FOR [ShippingTimeSpent]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[IssueTrackingModels]  WITH CHECK ADD  CONSTRAINT [FK_dbo.IssueTrackingModels_dbo.IssueRepairModels_IssueRepairModel_Id] FOREIGN KEY([IssueRepairModel_Id])
REFERENCES [dbo].[IssueRepairModels] ([Id])
GO
ALTER TABLE [dbo].[IssueTrackingModels] CHECK CONSTRAINT [FK_dbo.IssueTrackingModels_dbo.IssueRepairModels_IssueRepairModel_Id]
GO
