library(bigrquery)
library(magrittr)
library(dplyr)

query <- function(sql){
  query_exec(sql, project = "sunny-573") %>% tbl_df()
}

sightings_grid <- "
  SELECT
    cell_x,
    cell_y,
    AVG(cnt) as avg_cnt
  FROM (
    SELECT
      cell_x,
      cell_y,
      count(pokemonId) as cnt,
      date_created
    FROM [sunny-573:pokodata.gridview]
    GROUP BY cell_x, cell_y, date_created
  )
  GROUP BY cell_x, cell_y
  LIMIT 1000" %>%
  query

sightings_grid_latlon <- sightings_grid %>%
  mutate(x = cell_x*0.05 + 120, y=cell_y*0.05+22)

devtools::use_data(sightings_grid, overwrite = T)
devtools::use_data(sightings_grid_latlon, overwrite = T)
