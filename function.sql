-- ФУНКЦІЯ (кількість поем заданого жанру)

DROP FUNCTION poems_count;

CREATE OR REPLACE FUNCTION poems_count(genre text) 
RETURNS INTEGER
LANGUAGE 'plpgsql'
AS $$
   BEGIN
      RETURN (SELECT COUNT(*)
      FROM poems INNER JOIN genres ON poems.genre_id = genres.genre_id
      WHERE genres.genre_name = genre);            
   END;
$$

SELECT poems_count('Folklore')