--Create Database libMGMT
USE MASTER
GO

IF EXISTS (SELECT * FROM sys.databases WHERE [name] = 'libMgmt')
DROP DATABASE libMgmt
GO

CREATE DATABASE libMgmt
GO

USE libMgmt
GO

--Add tables
CREATE TABLE book
(
bookID int PRIMARY KEY,
title varchar(30) NOT NULL,
publisherName varchar(30) NOT NULL
)
GO

CREATE TABLE publisher
(
name varchar(30) NOT NULL PRIMARY KEY,
[address] varchar(50) NOT NULL,
phone varchar(30) NOT NULL
)
GO

CREATE TABLE book_authors
(
bookID int PRIMARY KEY,
authorName varchar(30) NOT NULL
)
GO

CREATE TABLE book_copies
(
bookID int NOT NULL,
branchID int NOT NULL,
noOfCopies int NOT NULL,
PRIMARY KEY (bookID, branchID)
)
GO

CREATE TABLE book_loans
(
bookID int NOT NULL,
branchID int NOT NULL,
cardNO int NOT NULL,
dateOut date NULL,
dueDate date NULL,
PRIMARY KEY (bookID, branchID, cardNO)
)
GO

CREATE TABLE library_branch
(
branchID int PRIMARY KEY,
branchName varchar(30) NOT NULL,
[address] varchar(50) NOT NULL
)
GO

CREATE TABLE borrower
(
cardNo int PRIMARY KEY,
Name varchar(30) NOT NULL,
[address] varchar(50) NOT NULL,
phone varchar(30) NOT NULL
)
GO


