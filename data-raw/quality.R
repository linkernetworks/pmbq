source("data-raw/util.R")

quality <- "SELECT * FROM [sunny-573:pokodata.data_quality]" %>% query

quality %>% write.csv("data-raw/quality.csv", row.names = F)
