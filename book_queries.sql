SELECT CONCAT(title, "was released in ", released_year) AS " when books were released " 

FROM books ORDER BY released_year;


SELECT CONCAT(SUBSTR(title, 1, 10), "...") AS "short title", 

       CONCAT(author_Lname,",",author_fname) AS author,

       CONCAT(stock_quantity, " copies are in stock") AS quantity

    FROM books ORDER BY stock_quantity ASC;



SELECT CONCAT(author_lname, " ", author_fname) AS Author, 

       title AS Book,

       pages AS "book length",

    CASE
        WHEN pages BETWEEN 0 and 200 THEN '5th grade reading level'
    
        WHEN pages BETWEEN 201 and 300 THEN '6th grade reading level ' 
    
        ELSE 'ready for junior high'
    
    END AS 'reading level'

FROM books 

GROUP BY Author, title, pages

ORDER BY title ASC;


SELECT title, CHAR_LENGTH(title) AS "title length " FROM books

ORDER BY CHAR_LENGTH(title) DESC;


SELECT CONCAT(author_lname, " ", author_fname) AS Author,

       COUNT(*) AS "number of books written"

    FROM books 
    
    GROUP BY Author;


SELECT CONCAT (author_lname," " ,author_fname) AS FULL_name,

        SUM(pages) AS "total pages written",

        AVG(pages) AS "average number of pages written given the number of books each have wrote",

        COUNT(pages) AS "number of books written"

    FROM books GROUP BY FULL_NAME
    
    ORDER BY 4 DESC;




