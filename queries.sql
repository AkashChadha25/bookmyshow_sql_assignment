
-- Query to fetch all shows on a given date and theatre
SELECT 
    M.title AS movie_title,
    M.language,
    M.certification,
    M.format,
    S.show_time
FROM 
    Show S
JOIN 
    Movie M ON S.movie_id = M.movie_id
JOIN 
    Screen SC ON S.screen_id = SC.screen_id
JOIN 
    Theatre T ON SC.theatre_id = T.theatre_id
WHERE 
    S.show_date = '2023-04-25'
    AND T.name = 'PVR: Nexus'
ORDER BY 
    S.show_time;
