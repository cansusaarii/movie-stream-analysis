/*CREATING TABLE*/

CREATE TABLE Genres(
GenreID int PRIMARY KEY,
GenreName varchar(50)
)
CREATE TABLE Users(
UserId int PRIMARY KEY,
UserName varchar(100),
Email varchar(100),
JoinDate date,
Country varchar(50)
)

CREATE TABLE Movies(
MovieId int PRIMARY KEY,
Title varchar(100),
Genre int,
ReleaseYear int,
Duration int,
Language varchar(50),
Rating decimal(2,1),
FOREIGN KEY (Genre) REFERENCES Genres(GenreID)
)

CREATE TABLE Subscriptions(
SubscriptionID int PRIMARY KEY,
UserID int,
SubscriptionType varchar(50),
StartDate date,
EndDate date,
StatusT varchar(20),
FOREIGN KEY (UserID) REFERENCES Users(UserID)
)

CREATE TABLE WatchHistory(
WatchID int PRIMARY KEY,
UserID int,
MovieID int,
WatchDate date,
WatchTime int,
CompletionStatus varchar(20),
FOREIGN KEY (UserID) REFERENCES Users(UserID),
FOREIGN KEY (MovieID) REFERENCES Movies(MovieID)
)

/*POPULATING TABLE w sample data*/
INSERT INTO Genres (GenreID,GenreName) VALUES
(1, 'Action'),
(2, 'Comedy'),
(3, 'Drama'),
(4, 'Horror'),
(5, 'Sci-Fi'),
(6, 'Romance'),
(7, 'Thriller'),
(8, 'Adventure'),
(9, 'Documentary'),
(10, 'Animation'),
(11, 'Fantasy'),
(12, 'Mystery'),
(13, 'Western'),
(14, 'Crime'),
(15, 'Musical'),
(16, 'Family'),
(17, 'War'),
(18, 'Sport'),
(19, 'Biography'),
(20, 'History'),
(21, 'Music'),
(22, 'Short'),
(23, 'News'),
(24, 'Reality-TV'),
(25, 'Talk-Show'),
(26, 'Game-Show'),
(27, 'Film-Noir'),
(28, 'Adult'),
(29, 'Lifestyle'),
(30, 'Sci-Fi & Fantasy')

INSERT INTO Users (UserId,UserName,Email,JoinDate,Country) VALUES
(1,'John Doe','john@example.com','2022-01-15','USA'),
(2, 'Jane Smith', 'jane@example.com', '2021-11-20', 'UK'),
(3, 'Carlos Perez', 'carlos@example.com', '2022-06-05', 'Spain'),
(4, 'Li Wei', 'liwei@example.com', '2023-03-12', 'China'),
(5, 'Amelie Dupont', 'amelie@example.com', '2022-04-22', 'France'),
(6, 'Sara Kim', 'sara@example.com', '2023-01-08', 'South Korea'),
(7, 'Mohammed Ali', 'mohammed@example.com', '2021-09-17', 'UAE'),
(8, 'Olga Ivanova', 'olga@example.com', '2022-12-30', 'Russia'),
(9, 'Lucas Muller', 'lucas@example.com', '2021-08-14', 'Germany'),
(10, 'Priya Patel', 'priya@example.com', '2023-02-11', 'India'),
(11, 'Anna Rossi', 'anna@example.com', '2022-02-15', 'Italy'),
(12, 'James Wilson', 'james@example.com', '2023-03-01', 'USA'),
(13, 'Emily Johnson', 'emily@example.com', '2022-10-05', 'Canada'),
(14, 'Miguel Silva', 'miguel@example.com', '2023-04-10', 'Brazil'),
(15, 'Hiroshi Tanaka', 'hiroshi@example.com', '2022-11-25', 'Japan'),
(16, 'Fatima Zahir', 'fatima@example.com', '2021-06-15', 'Morocco'),
(17, 'Kofi Mensah', 'kofi@example.com', '2023-05-05', 'Ghana'),
(18, 'Isabella Garcia', 'isabella@example.com', '2022-03-18', 'Mexico'),
(19, 'Yusuf Hassan', 'yusuf@example.com', '2023-06-21', 'Egypt'),
(20, 'Elena Petrova', 'elena@example.com', '2022-07-07', 'Ukraine'),
(21, 'Lucas Hernandez', 'lucas.h@example.com', '2023-03-15', 'Argentina'),
(22, 'Sophia Lee', 'sophia@example.com', '2022-01-10', 'Singapore'),
(23, 'Aria Kapoor', 'aria@example.com', '2022-05-19', 'India'),
(24, 'Daniel Novak', 'daniel@example.com', '2022-06-26', 'Czech Republic'),
(25, 'Marta Kowalski', 'marta@example.com', '2023-01-18', 'Poland'),
(26, 'Jack Brown', 'jack@example.com', '2021-07-11', 'Australia'),
(27, 'Ayesha Khan', 'ayesha@example.com', '2022-08-30', 'Pakistan'),
(28, 'Dmitry Orlov', 'dmitry@example.com', '2022-04-04', 'Russia'),
(29, 'Nguyen Anh', 'nguyen@example.com', '2023-02-25', 'Vietnam'),
(30, 'Nina Rios', 'nina@example.com', '2022-09-14', 'Portugal')

INSERT INTO Movies (MovieId,Title,Genre,ReleaseYear,Duration,Language,Rating) VALUES
(1, 'Fast & Furious', 1, 2009, 120, 'English', 7.1),
(2, 'The Hangover', 2, 2009, 100, 'English', 7.7),
(3, 'The Godfather', 3, 1972, 175, 'English', 9.2),
(4, 'Parasite', 3, 2019, 132, 'Korean', 8.6),
(5, 'Inception', 5, 2010, 148, 'English', 8.8),
(6, 'Titanic', 6, 1997, 195, 'English', 7.8),
(7, 'The Conjuring', 4, 2013, 112, 'English', 7.5),
(8, 'The Dark Knight', 7, 2008, 152, 'English', 9.0),
(9, 'Finding Nemo', 10, 2003, 100, 'English', 8.1),
(10, 'The Social Dilemma', 9, 2020, 94, 'English', 7.6),
(11, 'Interstellar', 5, 2014, 169, 'English', 8.6),
(12, 'Mad Max: Fury Road', 1, 2015, 120, 'English', 8.1),
(13, 'Joker', 3, 2019, 122, 'English', 8.4),
(14, 'Toy Story', 10, 1995, 81, 'English', 8.3),
(15, 'The Matrix', 5, 1999, 136, 'English', 8.7),
(16, 'Shutter Island', 12, 2010, 138, 'English', 8.2),
(17, 'Gladiator', 8, 2000, 155, 'English', 8.5),
(18, 'Coco', 10, 2017, 105, 'English', 8.4),
(19, 'Frozen', 10, 2013, 102, 'English', 7.5),
(20, 'Avengers: Endgame', 1, 2019, 181, 'English', 8.4),
(21, 'Black Mirror: Bandersnatch', 30, 2018, 90, 'English', 7.2),
(22, 'Bohemian Rhapsody', 21, 2018, 134, 'English', 8.0),
(23, 'The Lion King', 10, 1994, 88, 'English', 8.5),
(24, 'Spider-Man: Into the Spider-Verse', 10, 2018, 117, 'English', 8.4),
(25, 'Zootopia', 10, 2016, 108, 'English', 8.0),
(26, 'Skyfall', 1, 2012, 143, 'English', 7.8),
(27, 'Jurassic Park', 8, 1993, 127, 'English', 8.1),
(28, 'The Avengers', 1, 2012, 143, 'English', 8.0),
(29, 'The Irishman', 14, 2019, 209, 'English', 7.9),
(30, 'Guardians of the Galaxy', 1, 2014, 121, 'English', 8.0)

INSERT INTO Subscriptions (SubscriptionID,UserID,SubscriptionType, StartDate, EndDate, StatusT) VALUES
(1, 1, 'Premium', '2023-01-01', '2024-01-01', 'Active'),
(2, 2, 'Basic', '2022-05-01', '2023-05-01', 'Expired'),
(3, 3, 'Standard', '2022-07-15', '2023-07-15', 'Active'),
(4, 4, 'Premium', '2023-03-12', '2024-03-12', 'Active'),
(5, 5, 'Basic', '2022-04-22', '2023-04-22', 'Expired'),
(6, 6, 'Standard', '2023-01-08', '2024-01-08', 'Active'),
(7, 7, 'Premium', '2021-09-17', '2023-09-17', 'Active'),
(8, 8, 'Basic', '2022-12-30', '2023-12-30', 'Active'),
(9, 9, 'Premium', '2021-08-14', '2023-08-14', 'Expired'),
(10, 10, 'Standard', '2023-02-11', '2024-02-11', 'Active'),
(11, 11, 'Premium', '2023-02-15', '2024-02-15', 'Active'),
(12, 12, 'Standard', '2023-03-01', '2024-03-01', 'Active'),
(13, 13, 'Basic', '2022-10-05', '2023-10-05', 'Active'),
(14, 14, 'Standard', '2023-04-10', '2024-04-10', 'Active'),
(15, 15, 'Basic', '2022-11-25', '2023-11-25', 'Active'),
(16, 16, 'Premium', '2021-06-15', '2023-06-15', 'Active'),
(17, 17, 'Standard', '2023-05-05', '2024-05-05', 'Active'),
(18, 18, 'Basic', '2022-03-18', '2023-03-18', 'Expired'),
(19, 19, 'Premium', '2023-06-21', '2024-06-21', 'Active'),
(20, 20, 'Standard', '2022-07-07', '2023-07-07', 'Active'),
(21, 21, 'Basic', '2023-03-15', '2024-03-15', 'Active'),
(22, 22, 'Standard', '2022-01-10', '2023-01-10', 'Expired'),
(23, 23, 'Premium', '2022-05-19', '2023-05-19', 'Expired'),
(24, 24, 'Basic', '2022-06-26', '2023-06-26', 'Expired'),
(25, 25, 'Standard', '2023-01-18', '2024-01-18', 'Active'),
(26, 26, 'Premium', '2021-07-11', '2023-07-11', 'Active'),
(27, 27, 'Standard', '2022-08-30', '2023-08-30', 'Active'),
(28, 28, 'Basic', '2022-04-04', '2023-04-04', 'Expired'),
(29, 29, 'Standard', '2023-02-25', '2024-02-25', 'Active'),
(30, 30, 'Premium', '2022-09-14', '2023-09-14', 'Active')

INSERT INTO WatchHistory (WatchID, UserID, MovieID, WatchDate, WatchTime, CompletionStatus) VALUES
(1, 1, 1, '2023-02-01', 90, 'Completed'),
(2, 2, 2, '2023-02-05', 100, 'Completed'),
(3, 1, 3, '2023-02-10', 120, 'In Progress'),
(4, 3, 4, '2023-03-01', 132, 'Completed'),
(5, 4, 5, '2023-03-15', 148, 'Completed'),
(6, 5, 6, '2023-04-10', 195, 'Completed'),
(7, 6, 7, '2023-05-05', 112, 'Completed'),
(8, 7, 8, '2023-05-20', 152, 'Completed'),
(9, 8, 9, '2023-06-01', 100, 'Completed'),
(10, 9, 10, '2023-06-15', 94, 'Completed'),
(11, 10, 11, '2023-07-01', 169, 'In Progress'),
(12, 1, 12, '2023-07-10', 120, 'Completed'),
(13, 2, 13, '2023-07-20', 122, 'Completed'),
(14, 3, 14, '2023-08-01', 81, 'Completed'),
(15, 4, 15, '2023-08-10', 136, 'Completed'),
(16, 5, 1, '2023-08-20', 120, 'Completed'),
(17, 6, 2, '2023-08-25', 100, 'Completed'),
(18, 7, 3, '2023-09-01', 175, 'Completed'),
(19, 8, 4, '2023-09-10', 132, 'Completed'),
(20, 9, 5, '2023-09-15', 148, 'In Progress'),
(21, 10, 6, '2023-10-01', 195, 'Completed'),
(22, 1, 7, '2023-10-05', 112, 'Completed'),
(23, 2, 8, '2023-10-10', 152, 'Completed'),
(24, 3, 9, '2023-10-15', 100, 'Completed'),
(25, 4, 10, '2023-10-20', 94, 'Completed'),
(26, 5, 11, '2023-10-25', 169, 'In Progress'),
(27, 6, 12, '2023-11-01', 120, 'Completed'),
(28, 7, 13, '2023-11-05', 122, 'Completed'),
(29, 8, 14, '2023-11-10', 81, 'Completed'),
(30, 9, 15, '2023-11-15', 136, 'Completed')

/* TOTAL WATCH TIME PER USER */
SELECT 
u.UserName,
SUM(wh.WatchTime) AS TotalWatchTime
FROM
Users u
JOIN 
WatchHistory wh ON u.UserId=wh.UserID
GROUP BY
u.UserName
ORDER BY
TotalWatchTime desc

/* COUNT OF USERS PER SUBSCRIPTION TYPE */
SELECT
SubscriptionType,
COUNT(UserID) AS NumberofUsers
FROM
Subscriptions
GROUP BY
SubscriptionType
ORDER BY 
NumberofUsers DESC

/* MOST POPULAR GENRES BASED ON WATCH COUNT */
SELECT
g.GenreName,
COUNT(wh.WatchID) AS WatchCount
FROM
WatchHistory wh
JOIN
Movies m ON wh.MovieID=m.MovieId
JOIN
Genres g ON m.Genre=g.GenreID
GROUP BY
g.GenreName
ORDER BY
WatchCount DESC

/* NUMBER OF MOVIES PER GENRE */
SELECT
g.GenreName,
COUNT(m.MovieID) AS NumberofMovies
FROM
Movies m
JOIN
Genres g ON m.Genre=g.GenreID
GROUP BY
g.GenreName
ORDER BY
NumberofMovies DESC

SELECT COUNT(MovieID) AS TotalNumberofMovies FROM Movies

/* TOP 5 MOVIES BY RATING */
SELECT TOP 5
Title,
Rating
FROM
Movies
ORDER BY
Rating DESC

/* COUNT OF ACTIVE vs. EXPIRED SUBSCRIPTIONS */
SELECT
StatusT,
COUNT(SubscriptionID) AS NumberofSubscriptions
FROM Subscriptions
GROUP BY
StatusT

/* NUMBER OF MOVIES WATCHED BY EACH USER */
SELECT
u.UserName,
COUNT(wh.WatchId) AS NumberofWatchedMovies
FROM
Users u
JOIN
WatchHistory wh ON u.UserId=wh.UserID
GROUP BY
u.UserName
ORDER BY
NumberofWatchedMovies DESC

/* AVERAGE WATCH TIME PER MOVIE */
SELECT
m.Title,
AVG(wh.WatchTime) AS AvgWatchTime
FROM
WatchHistory wh
JOIN
Movies m ON m.MovieId=wh.MovieID
GROUP BY
m.Title
ORDER BY
AvgWatchTime DESC

/* MOST WATCHED MOVIES */
SELECT TOP 10
m.Title,
COUNT(wh.WatchID) AS CountMoviesWatch
FROM
WatchHistory wh
JOIN
Movies m ON m.MovieId=wh.MovieID
GROUP BY
m.Title
ORDER BY
CountMoviesWatch DESC

/* SUBSCRIPTIONS EXPIRING SOON */
SELECT
u.UserName,
s.SubscriptionType,
s.EndDate
FROM Subscriptions s
JOIN
Users u ON u.UserId=s.SubscriptionID
WHERE 
s.EndDate BETWEEN GETDATE() AND DATEADD(DAY, 30, GETDATE())
ORDER BY
s.EndDate