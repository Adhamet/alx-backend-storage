-- script that ranks country origins of bands,
-- ordered by the number of (non-unique) fans
SELECT origin, COUNT(fan_id) AS nb_fans
FROM metal_bands
JOIN fans ON metal_bands.band_id = fans.band_id
GROUP by origin
ORDER by nb_fans DESC;