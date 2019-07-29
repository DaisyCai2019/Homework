#Create one table to keep track of the videos. This table should include a unique ID, the title of the video, the length in minutes, and the URL.
CREATE TABLE videos (
 id INT NOT NULL,
 title VARCHAR(100) NOT NULL,
 minutes Time,
 theUrl VARCHAR(100) NOT NULL,
  PRIMARY KEY (id)
);

INSERT INTO videos 
    (id, title,minutes,theUrl) 
VALUES 
    (1,"One to Many Relationships in SQL","23:31","https://youtu.be/tz6wooXhMMc"),
    (2,"SQL Server 8 - One-to-Many Relationship","07:17","https://www.youtube.com/watch?v=3grhQWDpFm0"),
    (3,"How to work with relationships in SQL Server","09:58","https://www.youtube.com/watch?v=4q-keGvUnag");
select * from videos; 

#Create and populate Reviewers table. Create a second table that provides at least two user reviews for each of at least two of the videos.
CREATE TABLE reviews (
 id INT NOT NULL,
 personName VARCHAR(50),
 rating INT,
 textReviews VARCHAR(200)
);

INSERT INTO reviews 
    (id, personName,rating,textReviews) 
VALUES 
    (1,"Jason",5,"Really helpful."),
    (1,"Amandeep",4,"Love it."),
    (3,"Daisy",4,"Good video."),
    (3,"Jane",2, "Too simple."),
    (2,"John",5," Excellet! ");
select * from reviews; 


#Write a JOIN statement that shows information from both tables
select *
from videos
left join reviews
on videos.id=reviews.id;

