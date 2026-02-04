/*Q1: Who is the seniormost employee based on the job title
 
select * from employee 
 order by levels desc
 limit 1*/

 /*q2: Which countries has most invoices?

select count(*) as c, billing_country
from invoice
group by billing_country
order by c desc  */

/*q3 : What are the top 3 values of invoice

select * from invoice 
order by total desc
limit 3*/

/*q4 Which city has best customers?We would like to throw  promotional MusicFestivalin 
the city we made the most money. Write a query that returns one city that has the highest 
sum of invoice totals. Write the city name and sum of all invoice totals 

select sum(total) as inv_t, billing_city 
from invoice
group by billing_city
order by inv_t desc
limit 1 */


/*q5 : who is the best customer? the customer who has spent the most money will be
declared the best customer, write a query that returns the person who has spent 
the most money

select customer.customer_id,customer.first_name,customer.last_name, sum(invoice.total) as total 
from customer
join invoice on customer.customer_id = invoice.customer_id
group by customer.customer_id
order by total desc
limit 1;*/

/*6 Write a query to return the email,first name, last name and genre of all rock 
music listeners. Return your list ordered alphabetically  by email starting with A.

select  DISTINCT email,first_name, last_name 
from customer
join invoice on customer.customer_id = invoice.customer_id
join invoice_line on invoice.invoice_id=invoice_line.invoice_id
where track_id  in(
	select track_id from track
	join genre on genre.genre_id=track.genre_id
	where genre.name LIKE 'Rock'
)
order by email;  */

/* 7	lets invite the artists who have written the most rock music in our dataset
Write a query that returns the artist name and total track count of the top 10 rock bands*

select artist.artist_id,artist.name , count(artist.artist_id) as number_of_songs
from track
join album on album.album_id=track.album_id
join artist on artist.artist_id = album.artist_id
join genre on genre.genre_id = track.genre_id
where genre.name LIKE 'Rock'
group by artist.artist_id
order by number_of_songs DESC
limit 10*/

/*Q8 Return all the track names that have the song length longer than the average song length. Return 
the name and milliseconds for each track. Order by the song length with the longest songs listed first

select name, milliseconds
from track
where milliseconds>(
	select avg(milliseconds) from track)
order by milliseconds  DESC*/

/*9fIND HOW MUCH AMOUNT SPENT BY EACH CUSTOMER ON ARTISTS? Write  a query to return customer name,
artist name and total spent

with best_selling_artist as (
	select artist.artist_id as Artist_id,artist.name AS Artist_name,
	sum(invoice_line.unit_price *invoice_line.quantity) as Total_Sales
	from invoice_line
	Join track on track.track_id =invoice_line.track_id
	join album on album.album_id = track.album_id
	join artist on artist.artist_id =album.artist_id
	group by 1
	order by 3 desc
	limit 1
)
select c.customer_id,c.first_name,c.last_name,bsa.artist_name,sum(il.unit_price*il.quantity) as amount_Spent
from invoice i
join customer c  on c.customer_id = i.customer_id
join invoice_line il on il.invoice_id = i.invoice_id
join track t on t.track_id = il.track_id
join album alb on alb.album_id = t.album_id
join best_selling_artist bsa on bsa.artist_id = alb.artist_id
group by 1 , 2, 3, 4
order by 5 desc;*/

/* q10 We want to find out the most popular music genre for each country
we determine the most popular genre as the genre with the highest amount of purchases .
write a query that returns each country along with the top genre . For countries where the
maximumnumber of purchases is shared return all genres.

WITH popular_genre AS
(
	SELECT COUNT(invoice_line.quantity) as purchases, customer.country,genre.name,genre.genre_id,
	ROW_NUMBER() OVER(PARTITION BY customer.country order by count(invoice_line.quantity) desc) as RowNo
	from invoice_line
	join invoice on invoice.invoice_id = invoice_line.invoice_id
	join customer on customer.customer_id = invoice.customer_id
	join track on track.track_id = invoice_line.track_id
	join genre on genre.genre_id = track.genre_id
	group by 2,3,4
	order by 2 asc,1 desc
)
select * from popular_genre where RowNo<=1*/

/*11Write a query that determines the customer that has spent the most on music for each country.
Write a query that returns the country along with the top customer and how much thay spent.
for countries where top amount spent is shared , provide all customers who spent this amount
*/

with customer_with_country AS(
	SELECT customer.customer_id,first_name,last_name,billing_country,sum(total ) as total_spending,
    ROW_NUMBER() OVER(partition by billing_country order by sum(total) DESC) AS Rowno
	from invoice
	join customer on customer.customer_id = invoice.customer_id
	group by 1,2,3,4
	order by 4 asc, 5 desc)
select * from Customer_with_country where Rowno<=1


