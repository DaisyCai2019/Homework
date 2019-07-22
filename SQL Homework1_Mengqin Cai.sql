#1.furthest distance
select dest, max(distance) from flights;

#2.different numbers of engines, which aircraft have the most number of seats
select engine, count(*), manufacturer,max(seats) from planes group by engine ;

#3 Show the total number of flights.
select count(*) from flights; 

#4.Show the total number of flights by airline (carrier)
select carrier,count(*) from flights group by carrier;

#5.Show all of the airlines, ordered by number of flights in descending order.
select carrier,count(*) from flights 
group by carrier
order by count(*) desc;

#6.Show only the top 5 airlines, by number of flights, ordered by number of flights in descending order.
select carrier,count(*) from flights 
group by carrier
order by count(*) desc
LIMIT 5;

#7.Show only the top 5 airlines, by number of flights of distance 1,000 miles or greater, ordered by number of flights in descending order.
select carrier,count(*) from flights 
where distance >=1000
group by carrier
order by count(*) desc
LIMIT 5;

#8Create a question that (a) uses data from the flights database, and (b) requires aggregation to answer it, and write down both the question, and the query that answers the question.
#Question: Show the longest airtime of each airline (carrier) in descending order.
Select carrier, max(air_time) from flights
group by carrier
order by count(*) desc;





