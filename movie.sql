
DROP TABLE IF EXISTS movie;
DROP TABLE IF EXISTS review;
CREATE TABLE movie(
 id INT NOT NULL,
 title VARCHAR(100) NOT NULL,
 genre VARCHAR(100) NOT NULL,
  PRIMARY KEY (id)
);

INSERT INTO movie 
    (id, title,genre) 
VALUES 
    (1,"Crazy Rich Asians ","Romance"),
    (2,"Good Boys","Adventure"),
    (3,"Spider-Man: Far from Home","Sci-Fi"),
    (4,"Scary Stories","Horror"),
    (5,"Blink Of An Eye","Documentary"),
    (6,"Overcomer","Drama");
select * from movie; 

CREATE TABLE review(
 num INT NOT NULL,
 personName VARCHAR(100) NOT NULL,
 movieID INT,
 score   INT
);

INSERT INTO review 
    (num, personName,movieID,score) 
VALUES 
    (1,"paul",1,5),
    (1,"paul",2,4),
	(1,"paul",3,5),
    (1,"paul",4,3),
    (1,"paul",5,4),
    (1,"paul",6,2),
    
    (2,"Linda",1,4),
    (2,"Linda",2,3),
    (2,"Linda",3,4),
    (2,"Linda",4,4),
    (2,"Linda",5,4),
    (2,"Linda",6,1),
    
    (3,"Stacy",1,4),
    (3,"Stacy",2,3),
    (3,"Stacy",3,5),
    (3,"Stacy",4,5),
    (3,"Stacy",5,3),
    (3,"Stacy",6,2),
    
    (4,"Andy",1,3),
    (4,"Andy",2,3),
    (4,"Andy",3,5),
    (4,"Andy",4,4),
    (4,"Andy",5,3),
    (4,"Andy",6,2),
    
    (5,"Tom",1,4),
    (5,"Tom",2,3),
    (5,"Tom",3,5),
    (5,"Tom",4,4),
    (5,"Tom",5,3),
    (5,"Tom",6,1);
    
select * from review; 



ALTER USER 'root'@'localhost'
IDENTIFIED WITH mysql_native_password BY 'password'