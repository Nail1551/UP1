USE [master]
GO
/****** Object:  Database [UP_0101]    Script Date: 19.12.2024 15:42:59 ******/
CREATE DATABASE [UP_0101]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'UP_0101', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLSERVER\MSSQL\DATA\UP_0101.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'UP_0101_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLSERVER\MSSQL\DATA\UP_0101_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [UP_0101] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [UP_0101].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [UP_0101] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [UP_0101] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [UP_0101] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [UP_0101] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [UP_0101] SET ARITHABORT OFF 
GO
ALTER DATABASE [UP_0101] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [UP_0101] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [UP_0101] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [UP_0101] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [UP_0101] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [UP_0101] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [UP_0101] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [UP_0101] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [UP_0101] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [UP_0101] SET  DISABLE_BROKER 
GO
ALTER DATABASE [UP_0101] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [UP_0101] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [UP_0101] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [UP_0101] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [UP_0101] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [UP_0101] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [UP_0101] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [UP_0101] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [UP_0101] SET  MULTI_USER 
GO
ALTER DATABASE [UP_0101] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [UP_0101] SET DB_CHAINING OFF 
GO
ALTER DATABASE [UP_0101] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [UP_0101] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [UP_0101] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [UP_0101] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [UP_0101] SET QUERY_STORE = OFF
GO
USE [UP_0101]
GO
/****** Object:  Table [dbo].[Application]    Script Date: 19.12.2024 15:42:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Application](
	[Id] [int] IDENTITY(0,1) NOT NULL,
	[DateOfAdd] [date] NOT NULL,
	[DeffectType] [int] NOT NULL,
	[AppDescription] [varchar](1000) NULL,
	[Client] [int] NOT NULL,
	[AppStatus] [int] NOT NULL,
	[Responsible] [int] NULL,
	[DateOfEnd] [date] NULL,
	[Comment] [varchar](max) NULL,
	[Equipment] [int] NOT NULL,
	[DueDate] [date] NOT NULL,
 CONSTRAINT [PK__Applicat__3214EC073986E598] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AppStatus]    Script Date: 19.12.2024 15:42:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AppStatus](
	[Id] [int] IDENTITY(0,1) NOT NULL,
	[StatusName] [varchar](150) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Client]    Script Date: 19.12.2024 15:42:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Client](
	[Id] [int] IDENTITY(0,1) NOT NULL,
	[ClientName] [varchar](150) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DeffectType]    Script Date: 19.12.2024 15:42:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DeffectType](
	[Id] [int] IDENTITY(0,1) NOT NULL,
	[DeffectName] [varchar](150) NOT NULL,
	[DeffectDescription] [varchar](1000) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Equipment]    Script Date: 19.12.2024 15:42:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Equipment](
	[Id] [int] IDENTITY(0,1) NOT NULL,
	[EquipmentName] [varchar](150) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Roles]    Script Date: 19.12.2024 15:42:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Roles](
	[Id] [int] IDENTITY(0,1) NOT NULL,
	[RoleName] [varchar](150) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Worker]    Script Date: 19.12.2024 15:42:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Worker](
	[Id] [int] IDENTITY(0,1) NOT NULL,
	[WorkerName] [varchar](150) NOT NULL,
	[WorkerLogin] [varchar](159) NOT NULL,
	[WorkerPassword] [varchar](50) NOT NULL,
	[WorkerRole] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Application] ON 

INSERT [dbo].[Application] ([Id], [DateOfAdd], [DeffectType], [AppDescription], [Client], [AppStatus], [Responsible], [DateOfEnd], [Comment], [Equipment], [DueDate]) VALUES (5, CAST(N'2024-11-12' AS Date), 0, N'0', 0, 0, 0, NULL, NULL, 0, CAST(N'2024-11-20' AS Date))
INSERT [dbo].[Application] ([Id], [DateOfAdd], [DeffectType], [AppDescription], [Client], [AppStatus], [Responsible], [DateOfEnd], [Comment], [Equipment], [DueDate]) VALUES (6, CAST(N'2024-11-11' AS Date), 1, N'1', 1, 1, 1, NULL, NULL, 1, CAST(N'2024-11-20' AS Date))
INSERT [dbo].[Application] ([Id], [DateOfAdd], [DeffectType], [AppDescription], [Client], [AppStatus], [Responsible], [DateOfEnd], [Comment], [Equipment], [DueDate]) VALUES (9, CAST(N'2024-11-10' AS Date), 0, N'0', 1, 1, 1, NULL, NULL, 2, CAST(N'2024-11-20' AS Date))
INSERT [dbo].[Application] ([Id], [DateOfAdd], [DeffectType], [AppDescription], [Client], [AppStatus], [Responsible], [DateOfEnd], [Comment], [Equipment], [DueDate]) VALUES (10, CAST(N'2024-11-09' AS Date), 1, N'1', 0, 0, 1, NULL, NULL, 3, CAST(N'2024-11-20' AS Date))
SET IDENTITY_INSERT [dbo].[Application] OFF
GO
SET IDENTITY_INSERT [dbo].[AppStatus] ON 

INSERT [dbo].[AppStatus] ([Id], [StatusName]) VALUES (0, N'Создана')
INSERT [dbo].[AppStatus] ([Id], [StatusName]) VALUES (1, N'На распределении')
INSERT [dbo].[AppStatus] ([Id], [StatusName]) VALUES (2, N'В работе')
INSERT [dbo].[AppStatus] ([Id], [StatusName]) VALUES (3, N'Готова')
INSERT [dbo].[AppStatus] ([Id], [StatusName]) VALUES (4, N'Сдана')
SET IDENTITY_INSERT [dbo].[AppStatus] OFF
GO
SET IDENTITY_INSERT [dbo].[Client] ON 

INSERT [dbo].[Client] ([Id], [ClientName]) VALUES (0, N'Андрей.Ф')
INSERT [dbo].[Client] ([Id], [ClientName]) VALUES (1, N'Мария.С')
INSERT [dbo].[Client] ([Id], [ClientName]) VALUES (2, N'Сергей.Г')
INSERT [dbo].[Client] ([Id], [ClientName]) VALUES (3, N'Фатима.А')
INSERT [dbo].[Client] ([Id], [ClientName]) VALUES (4, N'Лиза.Л')
INSERT [dbo].[Client] ([Id], [ClientName]) VALUES (5, N'Ира.Г')
INSERT [dbo].[Client] ([Id], [ClientName]) VALUES (6, N'Наиль.К')
INSERT [dbo].[Client] ([Id], [ClientName]) VALUES (7, N'Даня.Т')
INSERT [dbo].[Client] ([Id], [ClientName]) VALUES (8, N'Ксюша.С')
SET IDENTITY_INSERT [dbo].[Client] OFF
GO
SET IDENTITY_INSERT [dbo].[DeffectType] ON 

INSERT [dbo].[DeffectType] ([Id], [DeffectName], [DeffectDescription]) VALUES (0, N'Поломка экрана', N'Сломанный экран')
INSERT [dbo].[DeffectType] ([Id], [DeffectName], [DeffectDescription]) VALUES (1, N'Дефект памяти', N'Ничего не работает')
INSERT [dbo].[DeffectType] ([Id], [DeffectName], [DeffectDescription]) VALUES (2, N'Дефект матрицы', N'Всё улетело нафиг')
INSERT [dbo].[DeffectType] ([Id], [DeffectName], [DeffectDescription]) VALUES (3, N'Дефект вентилятора0', N'Не вентилирует')
INSERT [dbo].[DeffectType] ([Id], [DeffectName], [DeffectDescription]) VALUES (4, N'Дефект камеры', N''')
INSERT [dbo].[DeffectType] ([Id], [DeffectName], [DeffectDescription]) VALUES (4, N''Дефект камеры'', N''')
SET IDENTITY_INSERT [dbo].[DeffectType] OFF
GO
SET IDENTITY_INSERT [dbo].[Equipment] ON 

INSERT [dbo].[Equipment] ([Id], [EquipmentName]) VALUES (0, N'Принтер')
INSERT [dbo].[Equipment] ([Id], [EquipmentName]) VALUES (1, N'Компьютер')
INSERT [dbo].[Equipment] ([Id], [EquipmentName]) VALUES (2, N'Смартфон')
INSERT [dbo].[Equipment] ([Id], [EquipmentName]) VALUES (3, N'Планшет')
INSERT [dbo].[Equipment] ([Id], [EquipmentName]) VALUES (4, N'Ноутбук')
SET IDENTITY_INSERT [dbo].[Equipment] OFF
GO
SET IDENTITY_INSERT [dbo].[Roles] ON 

INSERT [dbo].[Roles] ([Id], [RoleName]) VALUES (0, N'Менеджер')
INSERT [dbo].[Roles] ([Id], [RoleName]) VALUES (1, N'Пользователь')
INSERT [dbo].[Roles] ([Id], [RoleName]) VALUES (3, N'')
SET IDENTITY_INSERT [dbo].[Roles] OFF
GO
SET IDENTITY_INSERT [dbo].[Worker] ON 

INSERT [dbo].[Worker] ([Id], [WorkerName], [WorkerLogin], [WorkerPassword], [WorkerRole]) VALUES (0, N'Сергей', N'sergey', N'1234567', 0)
INSERT [dbo].[Worker] ([Id], [WorkerName], [WorkerLogin], [WorkerPassword], [WorkerRole]) VALUES (1, N'Афанасий', N'qwer', N'1234567', 0)
INSERT [dbo].[Worker] ([Id], [WorkerName], [WorkerLogin], [WorkerPassword], [WorkerRole]) VALUES (3, N'Екатерина', N'asdf', N'1234567', 1)
INSERT [dbo].[Worker] ([Id], [WorkerName], [WorkerLogin], [WorkerPassword], [WorkerRole]) VALUES (4, N'Анна', N'zxcv', N'1234567', 1)
INSERT [dbo].[Worker] ([Id], [WorkerName], [WorkerLogin], [WorkerPassword], [WorkerRole]) VALUES (5, N'Наиль', N'admin', N'admin', 1)
SET IDENTITY_INSERT [dbo].[Worker] OFF
GO
ALTER TABLE [dbo].[Application]  WITH CHECK ADD  CONSTRAINT [FK_Application_AppStatus] FOREIGN KEY([AppStatus])
REFERENCES [dbo].[AppStatus] ([Id])
GO
ALTER TABLE [dbo].[Application] CHECK CONSTRAINT [FK_Application_AppStatus]
GO
ALTER TABLE [dbo].[Application]  WITH CHECK ADD  CONSTRAINT [FK_Application_Client] FOREIGN KEY([Client])
REFERENCES [dbo].[Client] ([Id])
GO
ALTER TABLE [dbo].[Application] CHECK CONSTRAINT [FK_Application_Client]
GO
ALTER TABLE [dbo].[Application]  WITH CHECK ADD  CONSTRAINT [FK_Application_DeffectType] FOREIGN KEY([DeffectType])
REFERENCES [dbo].[DeffectType] ([Id])
GO
ALTER TABLE [dbo].[Application] CHECK CONSTRAINT [FK_Application_DeffectType]
GO
ALTER TABLE [dbo].[Application]  WITH CHECK ADD  CONSTRAINT [FK_Application_Equipment] FOREIGN KEY([Equipment])
REFERENCES [dbo].[Equipment] ([Id])
GO
ALTER TABLE [dbo].[Application] CHECK CONSTRAINT [FK_Application_Equipment]
GO
ALTER TABLE [dbo].[Application]  WITH CHECK ADD  CONSTRAINT [FK_Application_Worker] FOREIGN KEY([Responsible])
REFERENCES [dbo].[Worker] ([Id])
GO
ALTER TABLE [dbo].[Application] CHECK CONSTRAINT [FK_Application_Worker]
GO
ALTER TABLE [dbo].[Worker]  WITH CHECK ADD FOREIGN KEY([WorkerRole])
REFERENCES [dbo].[Roles] ([Id])
GO
USE [master]
GO
ALTER DATABASE [UP_0101] SET  READ_WRITE 
GO
