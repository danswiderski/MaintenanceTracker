USE [master]
GO

/****** Object:  Database [MaintenanceTracker]    Script Date: 8/10/2023 7:02:46 PM ******/
CREATE DATABASE [MaintenanceTracker]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'MaintenanceTracker', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\MaintenanceTracker.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'MaintenanceTracker_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\MaintenanceTracker_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO

IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [MaintenanceTracker].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO

ALTER DATABASE [MaintenanceTracker] SET ANSI_NULL_DEFAULT OFF 
GO

ALTER DATABASE [MaintenanceTracker] SET ANSI_NULLS OFF 
GO

ALTER DATABASE [MaintenanceTracker] SET ANSI_PADDING OFF 
GO

ALTER DATABASE [MaintenanceTracker] SET ANSI_WARNINGS OFF 
GO

ALTER DATABASE [MaintenanceTracker] SET ARITHABORT OFF 
GO

ALTER DATABASE [MaintenanceTracker] SET AUTO_CLOSE OFF 
GO

ALTER DATABASE [MaintenanceTracker] SET AUTO_SHRINK OFF 
GO

ALTER DATABASE [MaintenanceTracker] SET AUTO_UPDATE_STATISTICS ON 
GO

ALTER DATABASE [MaintenanceTracker] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO

ALTER DATABASE [MaintenanceTracker] SET CURSOR_DEFAULT  GLOBAL 
GO

ALTER DATABASE [MaintenanceTracker] SET CONCAT_NULL_YIELDS_NULL OFF 
GO

ALTER DATABASE [MaintenanceTracker] SET NUMERIC_ROUNDABORT OFF 
GO

ALTER DATABASE [MaintenanceTracker] SET QUOTED_IDENTIFIER OFF 
GO

ALTER DATABASE [MaintenanceTracker] SET RECURSIVE_TRIGGERS OFF 
GO

ALTER DATABASE [MaintenanceTracker] SET  DISABLE_BROKER 
GO

ALTER DATABASE [MaintenanceTracker] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO

ALTER DATABASE [MaintenanceTracker] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO

ALTER DATABASE [MaintenanceTracker] SET TRUSTWORTHY OFF 
GO

ALTER DATABASE [MaintenanceTracker] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO

ALTER DATABASE [MaintenanceTracker] SET PARAMETERIZATION SIMPLE 
GO

ALTER DATABASE [MaintenanceTracker] SET READ_COMMITTED_SNAPSHOT OFF 
GO

ALTER DATABASE [MaintenanceTracker] SET HONOR_BROKER_PRIORITY OFF 
GO

ALTER DATABASE [MaintenanceTracker] SET RECOVERY SIMPLE 
GO

ALTER DATABASE [MaintenanceTracker] SET  MULTI_USER 
GO

ALTER DATABASE [MaintenanceTracker] SET PAGE_VERIFY CHECKSUM  
GO

ALTER DATABASE [MaintenanceTracker] SET DB_CHAINING OFF 
GO

ALTER DATABASE [MaintenanceTracker] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO

ALTER DATABASE [MaintenanceTracker] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO

ALTER DATABASE [MaintenanceTracker] SET DELAYED_DURABILITY = DISABLED 
GO

ALTER DATABASE [MaintenanceTracker] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO

ALTER DATABASE [MaintenanceTracker] SET QUERY_STORE = OFF
GO

ALTER DATABASE [MaintenanceTracker] SET  READ_WRITE 
GO

