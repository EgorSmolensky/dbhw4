SELECT g.name, COUNT(*) 
  FROM genres AS g
	   LEFT JOIN performing AS p ON g.id = p.genre_id
	   LEFT JOIN artists AS a ON p.artist_id = a.id
 GROUP BY g.name;

SELECT COUNT(*)
  FROM tracks AS t
  	   LEFT JOIN albums AS a ON t.album_id = a.id 
 WHERE a.year BETWEEN 2019 AND 2020;

SELECT a.name, AVG(duration) 
  FROM tracks AS t 
  	   LEFT JOIN albums AS a ON t.album_id = a.id
 GROUP BY a.name;

SELECT name 
  FROM artists AS ar
 WHERE name NOT IN (SELECT ar.name 
  					  FROM artists AS ar
  					       LEFT JOIN records AS r ON r.artist_id = ar.id
  	  				       LEFT JOIN albums AS al ON r.album_id  = al.id 
  	   				 WHERE al.year = 2020
  	   				 GROUP BY ar.name);


SELECT c.name 
  FROM collections AS c 
  	   LEFT JOIN listing AS l ON c.id = l.collection_id 
  	   LEFT JOIN tracks AS t ON t.id = l.track_id
  	   LEFT JOIN records AS r ON r.album_id = t.album_id 
  	   LEFT JOIN artists AS a ON r.artist_id = a.id  
 WHERE a.name = 'ах-2'
 GROUP BY c.name;

SELECT al.name
  FROM albums AS al
  	   LEFT JOIN records AS r ON r.album_id = al.id
  	   LEFT JOIN artists AS ar ON r.artist_id = ar.id
 WHERE ar.name IN (SELECT a.name
 			  		 FROM artists AS a
 			  	   	 	  LEFT JOIN performing AS p ON p.artist_id = a.id 
 			  	   		  LEFT JOIN genres AS g ON p.genre_id = g.id
 			 		GROUP BY a.name
 			 	   HAVING COUNT(g.name) > 1); 
 			  
 SELECT name
   FROM tracks 
  WHERE name NOT IN (SELECT t.name
 					   FROM tracks AS t
 							LEFT JOIN listing AS l ON l.track_id = t.id
 							LEFT JOIN collections AS c ON l.collection_id = c.id
 				      GROUP BY t.name
 				     HAVING COUNT(c.name) > 0);

SELECT a.name 
  FROM artists AS a
	   LEFT JOIN records AS r ON a.id = r.artist_id 
	   LEFT JOIN tracks AS t ON r.album_id = t.album_id  
 WHERE t.duration = (SELECT MIN(duration)
					   FROM tracks) 

SELECT a.name
  FROM albums AS a
	   LEFT JOIN tracks AS t ON t.album_id = a.id  
 GROUP BY a.name
HAVING COUNT(*) = (SELECT MIN(total)
 					FROM (SELECT COUNT(*) AS total
 							FROM tracks AS t
 							GROUP BY t.album_id) AS f); 
 
 
 	