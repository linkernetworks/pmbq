source("data-raw/util.R")


pm_count_by_hour <- "
SELECT
  pokemonId,
  hour_created,
  count(*) as cnt
FROM [sunny-573:pokodata.gridview]
WHERE date_created BETWEEN '2016-08-24' AND '2016-08-29'
GROUP BY pokemonId, hour_created
LIMIT 10000" %>%
  query

pm_count_by_hour %<>%
  mutate(hour_created = (hour_created + 8) %% 24)

pm_freq_by_hour <- pm_count_by_hour %>%
  group_by(pokemonId) %>%
  mutate(freq= cnt/sum(cnt)) %>%
  ungroup()

devtools::use_data(pm_count_by_hour, overwrite = T)
devtools::use_data(pm_freq_by_hour, overwrite = T)
