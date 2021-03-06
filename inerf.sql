USE [master]
GO
/****** Object:  Database [Агентство 1]    Script Date: 08.06.2022 14:09:01 ******/
CREATE DATABASE [Агентство 1]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Агентство 1', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER1\MSSQL\DATA\Агентство 1.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Агентство 1_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER1\MSSQL\DATA\Агентство 1_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [Агентство 1] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Агентство 1].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Агентство 1] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Агентство 1] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Агентство 1] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Агентство 1] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Агентство 1] SET ARITHABORT OFF 
GO
ALTER DATABASE [Агентство 1] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Агентство 1] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Агентство 1] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Агентство 1] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Агентство 1] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Агентство 1] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Агентство 1] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Агентство 1] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Агентство 1] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Агентство 1] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Агентство 1] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Агентство 1] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Агентство 1] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Агентство 1] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Агентство 1] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Агентство 1] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Агентство 1] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Агентство 1] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Агентство 1] SET  MULTI_USER 
GO
ALTER DATABASE [Агентство 1] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Агентство 1] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Агентство 1] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Агентство 1] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Агентство 1] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Агентство 1] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [Агентство 1] SET QUERY_STORE = OFF
GO
USE [Агентство 1]
GO
/****** Object:  Table [dbo].[Авторизация]    Script Date: 08.06.2022 14:09:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Авторизация](
	[ID пользователя] [int] NOT NULL,
	[Логин] [nvarchar](50) NULL,
	[Пароль] [nvarchar](50) NULL,
 CONSTRAINT [PK_Авторизация] PRIMARY KEY CLUSTERED 
(
	[ID пользователя] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Вид дома]    Script Date: 08.06.2022 14:09:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Вид дома](
	[ID вида] [int] NOT NULL,
	[Вид дома] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Вид дома] PRIMARY KEY CLUSTERED 
(
	[ID вида] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Договор на оказание услуг]    Script Date: 08.06.2022 14:09:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Договор на оказание услуг](
	[ID договора] [int] NOT NULL,
	[Дата] [date] NULL,
	[Код риелтора] [int] NULL,
	[Код недвижимости] [int] NULL,
	[Код клиента] [int] NULL,
	[Сумма] [int] NULL,
 CONSTRAINT [PK_Договор на оказание услуг] PRIMARY KEY CLUSTERED 
(
	[ID договора] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Запрос]    Script Date: 08.06.2022 14:09:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Запрос](
	[ID запроса] [int] NOT NULL,
	[Площадь помещения] [int] NULL,
	[Тип] [nvarchar](max) NULL,
	[Бюджет] [nvarchar](50) NULL,
	[ID клиента] [int] NULL,
 CONSTRAINT [PK_Запрос] PRIMARY KEY CLUSTERED 
(
	[ID запроса] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Клиент]    Script Date: 08.06.2022 14:09:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Клиент](
	[ID клиента] [int] NOT NULL,
	[Фамилия] [nvarchar](max) NULL,
	[Имя] [nvarchar](max) NULL,
	[Отчество] [nvarchar](max) NULL,
	[Телефон] [nvarchar](50) NULL,
	[Паспортные данные] [nvarchar](50) NULL,
	[[ID платежа] [int] NULL,
	[ID договора] [int] NULL,
 CONSTRAINT [PK_Клиент] PRIMARY KEY CLUSTERED 
(
	[ID клиента] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Недвижимость]    Script Date: 08.06.2022 14:09:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Недвижимость](
	[ID недвижимости] [int] NOT NULL,
	[Стоимость] [nvarchar](50) NULL,
	[ID статуса] [int] NULL,
	[ID района] [int] NULL,
	[Адрес] [nvarchar](max) NULL,
	[ID вида] [int] NULL,
	[количество комнат] [nvarchar](50) NULL,
	[метраж] [nvarchar](50) NULL,
	[ID риелтора] [int] NOT NULL,
 CONSTRAINT [PK_Недвижимость] PRIMARY KEY CLUSTERED 
(
	[ID недвижимости] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Оплата]    Script Date: 08.06.2022 14:09:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Оплата](
	[ID платежа] [int] NOT NULL,
	[Дата платежа] [date] NULL,
	[Сумма платежа] [money] NULL,
	[ID счёта] [int] NULL,
 CONSTRAINT [PK_Оплата] PRIMARY KEY CLUSTERED 
(
	[ID платежа] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Район]    Script Date: 08.06.2022 14:09:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Район](
	[ID района] [int] NOT NULL,
	[Название] [nvarchar](max) NULL,
 CONSTRAINT [PK_Район] PRIMARY KEY CLUSTERED 
(
	[ID района] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Риелтор]    Script Date: 08.06.2022 14:09:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Риелтор](
	[ID риелтора] [int] NOT NULL,
	[Фамилия] [nvarchar](max) NULL,
	[Имя] [nvarchar](max) NULL,
	[Отчество] [nvarchar](max) NULL,
	[ID запроса] [int] NULL,
	[ID помещения] [int] NULL,
 CONSTRAINT [PK_Риелтор] PRIMARY KEY CLUSTERED 
(
	[ID риелтора] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Справочник помещения]    Script Date: 08.06.2022 14:09:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Справочник помещения](
	[ID помещения] [int] NOT NULL,
	[Площадь помещения] [nvarchar](max) NULL,
	[Тип] [nvarchar](max) NULL,
	[Цена] [money] NULL,
	[ID района] [int] NULL,
 CONSTRAINT [PK_Справочник помещения] PRIMARY KEY CLUSTERED 
(
	[ID помещения] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Статус оплаты]    Script Date: 08.06.2022 14:09:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Статус оплаты](
	[ID статуса] [int] NOT NULL,
	[Статус оплаты] [nvarchar](50) NULL,
 CONSTRAINT [PK_Статус оплаты] PRIMARY KEY CLUSTERED 
(
	[ID статуса] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Счёт]    Script Date: 08.06.2022 14:09:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Счёт](
	[ID счёта] [int] NOT NULL,
	[Реквизиты банка] [nvarchar](50) NULL,
 CONSTRAINT [PK_Счёт] PRIMARY KEY CLUSTERED 
(
	[ID счёта] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Договор на оказание услуг]  WITH CHECK ADD  CONSTRAINT [FK_Договор на оказание услуг_Риелтор] FOREIGN KEY([Код риелтора])
REFERENCES [dbo].[Риелтор] ([ID риелтора])
GO
ALTER TABLE [dbo].[Договор на оказание услуг] CHECK CONSTRAINT [FK_Договор на оказание услуг_Риелтор]
GO
ALTER TABLE [dbo].[Запрос]  WITH CHECK ADD  CONSTRAINT [FK_Запрос_Клиент] FOREIGN KEY([ID клиента])
REFERENCES [dbo].[Клиент] ([ID клиента])
GO
ALTER TABLE [dbo].[Запрос] CHECK CONSTRAINT [FK_Запрос_Клиент]
GO
ALTER TABLE [dbo].[Клиент]  WITH CHECK ADD  CONSTRAINT [FK_Клиент_Договор на оказание услуг] FOREIGN KEY([ID договора])
REFERENCES [dbo].[Договор на оказание услуг] ([ID договора])
GO
ALTER TABLE [dbo].[Клиент] CHECK CONSTRAINT [FK_Клиент_Договор на оказание услуг]
GO
ALTER TABLE [dbo].[Клиент]  WITH CHECK ADD  CONSTRAINT [FK_Клиент_Оплата] FOREIGN KEY([[ID платежа])
REFERENCES [dbo].[Оплата] ([ID платежа])
GO
ALTER TABLE [dbo].[Клиент] CHECK CONSTRAINT [FK_Клиент_Оплата]
GO
ALTER TABLE [dbo].[Недвижимость]  WITH CHECK ADD  CONSTRAINT [FK_Недвижимость_Вид дома] FOREIGN KEY([ID вида])
REFERENCES [dbo].[Вид дома] ([ID вида])
GO
ALTER TABLE [dbo].[Недвижимость] CHECK CONSTRAINT [FK_Недвижимость_Вид дома]
GO
ALTER TABLE [dbo].[Недвижимость]  WITH CHECK ADD  CONSTRAINT [FK_Недвижимость_Район] FOREIGN KEY([ID района])
REFERENCES [dbo].[Район] ([ID района])
GO
ALTER TABLE [dbo].[Недвижимость] CHECK CONSTRAINT [FK_Недвижимость_Район]
GO
ALTER TABLE [dbo].[Недвижимость]  WITH CHECK ADD  CONSTRAINT [FK_Недвижимость_Риелтор] FOREIGN KEY([ID риелтора])
REFERENCES [dbo].[Риелтор] ([ID риелтора])
GO
ALTER TABLE [dbo].[Недвижимость] CHECK CONSTRAINT [FK_Недвижимость_Риелтор]
GO
ALTER TABLE [dbo].[Недвижимость]  WITH CHECK ADD  CONSTRAINT [FK_Недвижимость_Статус оплаты] FOREIGN KEY([ID статуса])
REFERENCES [dbo].[Статус оплаты] ([ID статуса])
GO
ALTER TABLE [dbo].[Недвижимость] CHECK CONSTRAINT [FK_Недвижимость_Статус оплаты]
GO
ALTER TABLE [dbo].[Оплата]  WITH CHECK ADD  CONSTRAINT [FK_Оплата_Счёт] FOREIGN KEY([ID счёта])
REFERENCES [dbo].[Счёт] ([ID счёта])
GO
ALTER TABLE [dbo].[Оплата] CHECK CONSTRAINT [FK_Оплата_Счёт]
GO
ALTER TABLE [dbo].[Риелтор]  WITH CHECK ADD  CONSTRAINT [FK_Риелтор_Справочник помещения] FOREIGN KEY([ID помещения])
REFERENCES [dbo].[Справочник помещения] ([ID помещения])
GO
ALTER TABLE [dbo].[Риелтор] CHECK CONSTRAINT [FK_Риелтор_Справочник помещения]
GO
USE [master]
GO
ALTER DATABASE [Агентство 1] SET  READ_WRITE 
GO
