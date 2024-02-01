-- Script that lists band with Glam Rock
-- As their main style, ranked by their
-- longevity.
SELECT band_name, (IFNULL(split, 2022) - formed) As lifespan
FROM metal_bands WHERE style = 'Glam Rock' ORDER by lifespan DESC;