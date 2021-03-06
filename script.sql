USE [master]
GO
/****** Object:  Database [ASSIGNMENT]    Script Date: 10/20/2020 12:57:47 AM ******/
CREATE DATABASE [ASSIGNMENT]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'ASSIGNMENT', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\ASSIGNMENT.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'ASSIGNMENT_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\ASSIGNMENT_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [ASSIGNMENT] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ASSIGNMENT].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ASSIGNMENT] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ASSIGNMENT] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ASSIGNMENT] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ASSIGNMENT] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ASSIGNMENT] SET ARITHABORT OFF 
GO
ALTER DATABASE [ASSIGNMENT] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [ASSIGNMENT] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ASSIGNMENT] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ASSIGNMENT] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ASSIGNMENT] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ASSIGNMENT] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ASSIGNMENT] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ASSIGNMENT] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ASSIGNMENT] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ASSIGNMENT] SET  DISABLE_BROKER 
GO
ALTER DATABASE [ASSIGNMENT] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ASSIGNMENT] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ASSIGNMENT] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ASSIGNMENT] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ASSIGNMENT] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ASSIGNMENT] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [ASSIGNMENT] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ASSIGNMENT] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [ASSIGNMENT] SET  MULTI_USER 
GO
ALTER DATABASE [ASSIGNMENT] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ASSIGNMENT] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ASSIGNMENT] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ASSIGNMENT] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [ASSIGNMENT] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [ASSIGNMENT] SET QUERY_STORE = OFF
GO
USE [ASSIGNMENT]
GO
/****** Object:  Table [dbo].[Account]    Script Date: 10/20/2020 12:57:47 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Account](
	[AccountID] [int] IDENTITY(1,1) NOT NULL,
	[CustomersID] [int] NOT NULL,
	[AccountType] [nvarchar](10) NULL,
	[Fee] [int] NULL,
	[EmployeeID] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Customers]    Script Date: 10/20/2020 12:57:47 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customers](
	[CustomersID] [int] IDENTITY(1,1) NOT NULL,
	[CustomersName] [nvarchar](50) NULL,
	[CustomersPhone] [varchar](10) NULL,
	[CustomersCMND] [varchar](8) NULL,
	[Nationality] [nvarchar](10) NULL,
	[CustomersEmail] [nvarchar](50) NULL,
	[Sex] [nvarchar](1) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Department]    Script Date: 10/20/2020 12:57:47 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Department](
	[DepartmentID] [int] IDENTITY(1,1) NOT NULL,
	[DepartmentName] [nvarchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Employee]    Script Date: 10/20/2020 12:57:47 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employee](
	[EmployeeID] [int] IDENTITY(1,1) NOT NULL,
	[EmployeeName] [nvarchar](40) NULL,
	[EmployeeRole] [nvarchar](20) NULL,
	[EmployeeSalary] [int] NULL,
	[DepartmentID] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Transaction]    Script Date: 10/20/2020 12:57:47 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Transaction](
	[TransID] [int] IDENTITY(1,1) NOT NULL,
	[AccountID] [int] NULL,
	[TransType] [nvarchar](10) NULL,
	[Ammount] [int] NULL,
	[TransDate] [date] NULL
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Account] ON 

INSERT [dbo].[Account] ([AccountID], [CustomersID], [AccountType], [Fee], [EmployeeID]) VALUES (1, 1, N'Member', 50000, 2)
INSERT [dbo].[Account] ([AccountID], [CustomersID], [AccountType], [Fee], [EmployeeID]) VALUES (2, 3, N'Member', 50000, 5)
INSERT [dbo].[Account] ([AccountID], [CustomersID], [AccountType], [Fee], [EmployeeID]) VALUES (3, 5, N'VIP', 150000, 2)
INSERT [dbo].[Account] ([AccountID], [CustomersID], [AccountType], [Fee], [EmployeeID]) VALUES (4, 7, N'Member', 50000, 1)
INSERT [dbo].[Account] ([AccountID], [CustomersID], [AccountType], [Fee], [EmployeeID]) VALUES (5, 8, N'Member', 50000, 6)
INSERT [dbo].[Account] ([AccountID], [CustomersID], [AccountType], [Fee], [EmployeeID]) VALUES (6, 9, N'VIP', 150000, 7)
INSERT [dbo].[Account] ([AccountID], [CustomersID], [AccountType], [Fee], [EmployeeID]) VALUES (7, 10, N'VIP', 150000, 3)
SET IDENTITY_INSERT [dbo].[Account] OFF
GO
SET IDENTITY_INSERT [dbo].[Customers] ON 

INSERT [dbo].[Customers] ([CustomersID], [CustomersName], [CustomersPhone], [CustomersCMND], [Nationality], [CustomersEmail], [Sex]) VALUES (1, N'Lê Trung Kiên', N'0979582000', N'11112222', N'Vietnam', N'kien@gmail.com', N'M')
INSERT [dbo].[Customers] ([CustomersID], [CustomersName], [CustomersPhone], [CustomersCMND], [Nationality], [CustomersEmail], [Sex]) VALUES (2, N'Nguyễn Văn Lâm', N'0123456789', N'22223333', N'Vietnam', N'lam@gmail.com', N'M')
INSERT [dbo].[Customers] ([CustomersID], [CustomersName], [CustomersPhone], [CustomersCMND], [Nationality], [CustomersEmail], [Sex]) VALUES (3, N'Nguyễn Thị Thủy Tiên', N'0112233445', N'33334444', N'Vietnam', N'tien@gmail.com', N'F')
INSERT [dbo].[Customers] ([CustomersID], [CustomersName], [CustomersPhone], [CustomersCMND], [Nationality], [CustomersEmail], [Sex]) VALUES (4, N'Nguyễn Tiến Đạt', N'0999999999', N'44445555', N'Vietnam', N'dat@gmail.com', N'M')
INSERT [dbo].[Customers] ([CustomersID], [CustomersName], [CustomersPhone], [CustomersCMND], [Nationality], [CustomersEmail], [Sex]) VALUES (5, N'Nguyễn Thị Hồng', N'0888888888', N'55554444', N'Vietnam', N'hong@gmail.com', N'F')
INSERT [dbo].[Customers] ([CustomersID], [CustomersName], [CustomersPhone], [CustomersCMND], [Nationality], [CustomersEmail], [Sex]) VALUES (6, N'Đinh Văn Trường', N'0777777777', N'66665555', N'Vietnam', N'truong@yahoo.com.vn', N'M')
INSERT [dbo].[Customers] ([CustomersID], [CustomersName], [CustomersPhone], [CustomersCMND], [Nationality], [CustomersEmail], [Sex]) VALUES (7, N'Lê Hồng Long', N'0666666666', N'77778888', N'Vietnam', N'long@fpt.edu.vn', N'M')
INSERT [dbo].[Customers] ([CustomersID], [CustomersName], [CustomersPhone], [CustomersCMND], [Nationality], [CustomersEmail], [Sex]) VALUES (8, N'Nguyễn Đức Hiệp', N'0555555555', N'99991212', N'Vietnam', N'hiep@fpt.edu.vn', N'M')
INSERT [dbo].[Customers] ([CustomersID], [CustomersName], [CustomersPhone], [CustomersCMND], [Nationality], [CustomersEmail], [Sex]) VALUES (9, N'Posty', N'0444444444', N'68688686', N'England', N'posty@yonmail.com', N'M')
INSERT [dbo].[Customers] ([CustomersID], [CustomersName], [CustomersPhone], [CustomersCMND], [Nationality], [CustomersEmail], [Sex]) VALUES (10, N'Lê Quang Duy', N'0333333333', N'32529342', N'Vietnam', N'duy@facebook.com', N'M')
SET IDENTITY_INSERT [dbo].[Customers] OFF
GO
SET IDENTITY_INSERT [dbo].[Department] ON 

INSERT [dbo].[Department] ([DepartmentID], [DepartmentName]) VALUES (1, N'TPBank - Hoan Kiem')
INSERT [dbo].[Department] ([DepartmentID], [DepartmentName]) VALUES (2, N'TPBank - Hang Bong')
INSERT [dbo].[Department] ([DepartmentID], [DepartmentName]) VALUES (3, N'TPBank - Ao Sen')
INSERT [dbo].[Department] ([DepartmentID], [DepartmentName]) VALUES (4, N'TPBank - Cau Giay')
INSERT [dbo].[Department] ([DepartmentID], [DepartmentName]) VALUES (5, N'TPBank - Dong Da')
INSERT [dbo].[Department] ([DepartmentID], [DepartmentName]) VALUES (6, N'TPBank - Hoa Lac')
INSERT [dbo].[Department] ([DepartmentID], [DepartmentName]) VALUES (7, N'TPBank - Dong Cac')
INSERT [dbo].[Department] ([DepartmentID], [DepartmentName]) VALUES (8, N'TPBank - Cua Nam')
INSERT [dbo].[Department] ([DepartmentID], [DepartmentName]) VALUES (9, N'TPBank - Cua Bac')
INSERT [dbo].[Department] ([DepartmentID], [DepartmentName]) VALUES (10, N'TPBank - Thach That')
INSERT [dbo].[Department] ([DepartmentID], [DepartmentName]) VALUES (11, N'TPBank - Son Tay')
SET IDENTITY_INSERT [dbo].[Department] OFF
GO
SET IDENTITY_INSERT [dbo].[Employee] ON 

INSERT [dbo].[Employee] ([EmployeeID], [EmployeeName], [EmployeeRole], [EmployeeSalary], [DepartmentID]) VALUES (1, N'Lê Văn A', N'Manager', 500000, 1)
INSERT [dbo].[Employee] ([EmployeeID], [EmployeeName], [EmployeeRole], [EmployeeSalary], [DepartmentID]) VALUES (2, N'Nguyễn Văn B', N'Accountant', 100000, 1)
INSERT [dbo].[Employee] ([EmployeeID], [EmployeeName], [EmployeeRole], [EmployeeSalary], [DepartmentID]) VALUES (3, N'Hồ Thị C', N'Accountant', 100000, 2)
INSERT [dbo].[Employee] ([EmployeeID], [EmployeeName], [EmployeeRole], [EmployeeSalary], [DepartmentID]) VALUES (4, N'Trần Tiến D', N'Accountant', 100000, 4)
INSERT [dbo].[Employee] ([EmployeeID], [EmployeeName], [EmployeeRole], [EmployeeSalary], [DepartmentID]) VALUES (5, N'Nguyễn Thùy E', N'Accountant', 100000, 3)
INSERT [dbo].[Employee] ([EmployeeID], [EmployeeName], [EmployeeRole], [EmployeeSalary], [DepartmentID]) VALUES (6, N'Vũ Ngọc Châu', N'Chairman', 1000000, 1)
INSERT [dbo].[Employee] ([EmployeeID], [EmployeeName], [EmployeeRole], [EmployeeSalary], [DepartmentID]) VALUES (7, N'Nghiêm Xuân Ngọc', N'Director', 750000, 1)
INSERT [dbo].[Employee] ([EmployeeID], [EmployeeName], [EmployeeRole], [EmployeeSalary], [DepartmentID]) VALUES (8, N'Lê Thị Ngọc Lương', N'Director', 750000, 2)
INSERT [dbo].[Employee] ([EmployeeID], [EmployeeName], [EmployeeRole], [EmployeeSalary], [DepartmentID]) VALUES (9, N'Trần Bảo Ngọc', N'Director', 750000, 3)
INSERT [dbo].[Employee] ([EmployeeID], [EmployeeName], [EmployeeRole], [EmployeeSalary], [DepartmentID]) VALUES (10, N'Lê Ngọc Dung', N'Director', 750000, 4)
INSERT [dbo].[Employee] ([EmployeeID], [EmployeeName], [EmployeeRole], [EmployeeSalary], [DepartmentID]) VALUES (11, N'Nguyễn Tiến Lên', N'Manager', 500000, 7)
INSERT [dbo].[Employee] ([EmployeeID], [EmployeeName], [EmployeeRole], [EmployeeSalary], [DepartmentID]) VALUES (12, N'Trần Bình', N'Guard', 150000, 2)
INSERT [dbo].[Employee] ([EmployeeID], [EmployeeName], [EmployeeRole], [EmployeeSalary], [DepartmentID]) VALUES (13, N'Nguyễn Huỳnh Tiến', N'Guard', 150000, 6)
INSERT [dbo].[Employee] ([EmployeeID], [EmployeeName], [EmployeeRole], [EmployeeSalary], [DepartmentID]) VALUES (14, N'Trần Dần', N'Guard', 150000, 3)
INSERT [dbo].[Employee] ([EmployeeID], [EmployeeName], [EmployeeRole], [EmployeeSalary], [DepartmentID]) VALUES (15, N'Nguyễn Mai Chi', N'Guard', 150000, 5)
INSERT [dbo].[Employee] ([EmployeeID], [EmployeeName], [EmployeeRole], [EmployeeSalary], [DepartmentID]) VALUES (16, N'Nguyễn Vũ Mai Chi', N'Guard', 150000, 7)
INSERT [dbo].[Employee] ([EmployeeID], [EmployeeName], [EmployeeRole], [EmployeeSalary], [DepartmentID]) VALUES (17, N'Nguyễn Văn Bình', N'Guard', 150000, 8)
INSERT [dbo].[Employee] ([EmployeeID], [EmployeeName], [EmployeeRole], [EmployeeSalary], [DepartmentID]) VALUES (18, N'Đỗ Minh Tân', N'Manager', 500000, 9)
INSERT [dbo].[Employee] ([EmployeeID], [EmployeeName], [EmployeeRole], [EmployeeSalary], [DepartmentID]) VALUES (19, N'Vũ Xuân Tâm', N'CEO', 850000, 3)
INSERT [dbo].[Employee] ([EmployeeID], [EmployeeName], [EmployeeRole], [EmployeeSalary], [DepartmentID]) VALUES (20, N'Hoàng Anh Tâm', N'HR Manager', 300000, 4)
INSERT [dbo].[Employee] ([EmployeeID], [EmployeeName], [EmployeeRole], [EmployeeSalary], [DepartmentID]) VALUES (21, N'Vũ Thùy Linh', N'HR Manager', 300000, 8)
INSERT [dbo].[Employee] ([EmployeeID], [EmployeeName], [EmployeeRole], [EmployeeSalary], [DepartmentID]) VALUES (22, N'Bùi Xuân', N'Secretary', 400000, 1)
INSERT [dbo].[Employee] ([EmployeeID], [EmployeeName], [EmployeeRole], [EmployeeSalary], [DepartmentID]) VALUES (23, N'Mai Nam Hải', N'I.T Support', 450000, 3)
INSERT [dbo].[Employee] ([EmployeeID], [EmployeeName], [EmployeeRole], [EmployeeSalary], [DepartmentID]) VALUES (24, N'Bế Văn Trường', N'I.T Support', 450000, 4)
INSERT [dbo].[Employee] ([EmployeeID], [EmployeeName], [EmployeeRole], [EmployeeSalary], [DepartmentID]) VALUES (25, N'Trương Thị Ngọc', N'Cashier', 250000, 1)
INSERT [dbo].[Employee] ([EmployeeID], [EmployeeName], [EmployeeRole], [EmployeeSalary], [DepartmentID]) VALUES (26, N'Lê Thị Nụ', N'Cashier', 250000, 3)
INSERT [dbo].[Employee] ([EmployeeID], [EmployeeName], [EmployeeRole], [EmployeeSalary], [DepartmentID]) VALUES (27, N'Lê Quang Thành', N'Cashier', 250000, 4)
INSERT [dbo].[Employee] ([EmployeeID], [EmployeeName], [EmployeeRole], [EmployeeSalary], [DepartmentID]) VALUES (28, N'Phạm Thị Thu Nguyệt', N'Assistant', 275000, 6)
INSERT [dbo].[Employee] ([EmployeeID], [EmployeeName], [EmployeeRole], [EmployeeSalary], [DepartmentID]) VALUES (29, N'Đặng Minh Nguyệt', N'Assistant', 275000, 8)
INSERT [dbo].[Employee] ([EmployeeID], [EmployeeName], [EmployeeRole], [EmployeeSalary], [DepartmentID]) VALUES (30, N'Nguyễn Huy Khuyến', N'Collaborator', 35000, 3)
INSERT [dbo].[Employee] ([EmployeeID], [EmployeeName], [EmployeeRole], [EmployeeSalary], [DepartmentID]) VALUES (31, N'Nghiêm Hồ Tú', N'Telephonist', 65000, 7)
INSERT [dbo].[Employee] ([EmployeeID], [EmployeeName], [EmployeeRole], [EmployeeSalary], [DepartmentID]) VALUES (32, N'Tô Bách Việt', N'Marketing Director', 500000, 9)
INSERT [dbo].[Employee] ([EmployeeID], [EmployeeName], [EmployeeRole], [EmployeeSalary], [DepartmentID]) VALUES (33, N'Trịnh Duy Anh', N'Accountant', 100000, 5)
INSERT [dbo].[Employee] ([EmployeeID], [EmployeeName], [EmployeeRole], [EmployeeSalary], [DepartmentID]) VALUES (34, N'Đồng Văn Lên', N'Accountant', 100000, 10)
INSERT [dbo].[Employee] ([EmployeeID], [EmployeeName], [EmployeeRole], [EmployeeSalary], [DepartmentID]) VALUES (35, N'Lên Xong Xuống', N'Guard', 150000, 11)
INSERT [dbo].[Employee] ([EmployeeID], [EmployeeName], [EmployeeRole], [EmployeeSalary], [DepartmentID]) VALUES (36, N'Hồ Minh Cu', N'Guard', 150000, 2)
INSERT [dbo].[Employee] ([EmployeeID], [EmployeeName], [EmployeeRole], [EmployeeSalary], [DepartmentID]) VALUES (37, N'Lê Thế Anh', N'Accountant', 100000, 4)
INSERT [dbo].[Employee] ([EmployeeID], [EmployeeName], [EmployeeRole], [EmployeeSalary], [DepartmentID]) VALUES (38, N'Lê Huyền Trang', N'I.T Support', 450000, 5)
SET IDENTITY_INSERT [dbo].[Employee] OFF
GO
SET IDENTITY_INSERT [dbo].[Transaction] ON 

INSERT [dbo].[Transaction] ([TransID], [AccountID], [TransType], [Ammount], [TransDate]) VALUES (1, 1, N'Withdraw', 500000, CAST(N'2019-02-10' AS Date))
INSERT [dbo].[Transaction] ([TransID], [AccountID], [TransType], [Ammount], [TransDate]) VALUES (2, 4, N'Withdraw', 150000, CAST(N'2018-10-05' AS Date))
INSERT [dbo].[Transaction] ([TransID], [AccountID], [TransType], [Ammount], [TransDate]) VALUES (3, 2, N'Withdraw', 50000, CAST(N'2019-12-25' AS Date))
INSERT [dbo].[Transaction] ([TransID], [AccountID], [TransType], [Ammount], [TransDate]) VALUES (4, 5, N'Transfer', 25000, CAST(N'2019-10-20' AS Date))
INSERT [dbo].[Transaction] ([TransID], [AccountID], [TransType], [Ammount], [TransDate]) VALUES (5, 6, N'Deposit', 30000, CAST(N'2019-01-04' AS Date))
INSERT [dbo].[Transaction] ([TransID], [AccountID], [TransType], [Ammount], [TransDate]) VALUES (6, 1, N'Deposit', 169000, CAST(N'2018-05-04' AS Date))
INSERT [dbo].[Transaction] ([TransID], [AccountID], [TransType], [Ammount], [TransDate]) VALUES (7, 2, N'Deposit', 250000, CAST(N'2019-06-25' AS Date))
INSERT [dbo].[Transaction] ([TransID], [AccountID], [TransType], [Ammount], [TransDate]) VALUES (8, 4, N'Deposit', 5000, CAST(N'2019-07-13' AS Date))
INSERT [dbo].[Transaction] ([TransID], [AccountID], [TransType], [Ammount], [TransDate]) VALUES (9, 6, N'Withdraw', 230000, CAST(N'2019-02-20' AS Date))
INSERT [dbo].[Transaction] ([TransID], [AccountID], [TransType], [Ammount], [TransDate]) VALUES (10, 3, N'Transfer', 300000, CAST(N'2019-03-30' AS Date))
INSERT [dbo].[Transaction] ([TransID], [AccountID], [TransType], [Ammount], [TransDate]) VALUES (11, 6, N'Transfer', 400000, CAST(N'2018-01-10' AS Date))
SET IDENTITY_INSERT [dbo].[Transaction] OFF
GO
USE [master]
GO
ALTER DATABASE [ASSIGNMENT] SET  READ_WRITE 
GO

--Display all Employee 
SELECT * FROM dbo.Employee

--Display all Account
SELECT * FROM dbo.Account

--Display all Customers
SELECT * FROM dbo.Customers

--Display all Transactions
SELECT * FROM Transactions

--Display all Department of Bank
SELECT * FROM dbo.Department

--Display name of employee and department name ( where they work )
SELECT EmployeeName,DepartmentName 
FROM Employee,Department
WHERE Employee.DepartmentID = Department.DepartmentID

--Display AccountID(STK) of Customers have account in bank
SELECT CustomersName, AccountID
FROM Customers,Account
WHERE Customers.CustomersID = Account.CustomersID

--Display name of Employee and AccountID which they process and department
SELECT EmployeeName,AccountID,DepartmentName
FROM Employee,Account,Department
WHERE Employee.EmployeeID = Account.EmployeeID and Employee.DepartmentID = Department.DepartmentID