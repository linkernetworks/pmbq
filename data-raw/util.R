library(bigrquery)
library(magrittr)
library(dplyr)

query <- function(sql){
  query_exec(sql, project = "sunny-573") %>% tbl_df()
}
