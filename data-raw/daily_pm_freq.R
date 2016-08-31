source("data-raw/util.R")
library(pokemongor)


daily_pm_count <- "
SELECT
  date_created,
  pokemonId,
  count(*) as cnt
FROM [sunny-573:pokodata.gridview]
GROUP BY pokemonId, date_created
LIMIT 10000" %>%
  query

pm_freq <- daily_pm_count %>%
  filter(
    date_created >= "2016-08-24" &
    date_created <= "2016-08-29") %>%
  group_by(pokemonId) %>%
  summarise(cnt=sum(cnt)) %>%
  mutate(freq= cnt/sum(cnt)) %>%
  arrange(freq) %>%
  left_join(pokemon_names, by=c("pokemonId"="index")) %>%
  select(pokemonId, name, freq)

devtools::use_data(daily_pm_count, overwrite = T)
devtools::use_data(pm_freq, overwrite = T)
