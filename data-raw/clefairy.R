source("data-raw/util.R")

clefairy <- "
SELECT *
FROM [sunny-573:pokodata.by_block_occurrence]
WHERE
pokemonId = 35 AND
latitude BETWEEN 25.003679 AND 25.070902 AND
longitude BETWEEN 121.508421 AND 121.571054 AND
created >= '2016-08-24 00:00:00'
" %>% query


devtools::use_data(clefairy, overwrite = T)
