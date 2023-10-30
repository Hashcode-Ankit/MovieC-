-- MySQL doesn't use "GO" statements; you can remove them.

-- Create the Genre table
CREATE TABLE Genre (
    GenreID INT AUTO_INCREMENT PRIMARY KEY,
    GenreName VARCHAR(20) NOT NULL
);

-- Create the Movie table
CREATE TABLE Movie (
    MovieID INT AUTO_INCREMENT PRIMARY KEY,
    Title VARCHAR(100) NOT NULL,
    Overview VARCHAR(1024) NOT NULL,
    Genre VARCHAR(20) NOT NULL,
    Language VARCHAR(20) NOT NULL,
    Duration INT NOT NULL,
    Rating DECIMAL(2, 1),
    PosterPath VARCHAR(100)
);

-- Create the UserMaster table
CREATE TABLE UserMaster (
    UserID INT AUTO_INCREMENT PRIMARY KEY,
    FirstName VARCHAR(20) NOT NULL,
    LastName VARCHAR(20) NOT NULL,
    Username VARCHAR(20) NOT NULL,
    Password VARCHAR(40) NOT NULL,
    Gender VARCHAR(6) NOT NULL,
    UserTypeName VARCHAR(20) NOT NULL
);

-- Create the UserType table
CREATE TABLE UserType (
    UserTypeID INT AUTO_INCREMENT PRIMARY KEY,
    UserTypeName VARCHAR(20) NOT NULL
);

-- Create the Watchlist table
CREATE TABLE Watchlist (
    WatchlistId VARCHAR(36) PRIMARY KEY,
    UserID INT NOT NULL,
    DateCreated DATETIME NOT NULL
);

-- Create the WatchlistItems table
CREATE TABLE WatchlistItems (
    WatchlistItemId INT AUTO_INCREMENT PRIMARY KEY,
    WatchlistId VARCHAR(36) NOT NULL,
    MovieId INT NOT NULL
);
