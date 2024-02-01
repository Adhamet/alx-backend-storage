-- Script that lists all bands with Glam Rock as their main style, 
-- ranked by longevity
SELECT band_name, (IFNULL(split, 2022) - formed) As lifespan
FROM metal_bands WHERE style = '%Glam Rock%' ORDER by lifespan DESC;