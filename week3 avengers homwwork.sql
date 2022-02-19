

ALTER TABLE dc ADD favoriteAvenger VARCHAR(50);
UPDATE dc SET favoriteAvenger = CASE WHEN RAND() <0.4 THEN "Anthony Edward Stark"  WHEN RAND() <0.7 THEN "Robert Bruce Banner" ELSE  "Victor Shade" END;
SELECT * FROM avengers.dc;

SELECT dc.name
FROM dc
INNER JOIN avengers on avengers.name = dc.favoriteAvenger where dc.newSuperHeros = "yes";

SELECT name, appearances
FROM avengers
WHERE appearances > 1000 ORDER BY name ASC;

SELECT name, appearances
FROM avengers
WHERE appearances < 1000 ORDER BY name ASC;

SELECT name, appearances
FROM avengers
WHERE appearances < 50 AND gender = "female" ORDER BY name ASC;

SELECT name, appearances
FROM avengers
WHERE appearances < 150 AND gender = "male" AND honorary = "Full"  ORDER BY name ASC;