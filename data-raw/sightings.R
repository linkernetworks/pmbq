source("data-raw/util.R")

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
    WHERE date_created BETWEEN '2016-08-24' AND '2016-08-29'
    GROUP BY cell_x, cell_y, date_created
  )
  GROUP BY cell_x, cell_y
  LIMIT 10000" %>%
  query

sightings_grid_latlon <- sightings_grid %>%
  mutate(x = cell_x*0.05 + 120, y=cell_y*0.05+22)

devtools::use_data(sightings_grid_latlon, overwrite = T)
