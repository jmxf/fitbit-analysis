library(tidyverse)
library(rjson)
library(RJSONIO)

json_data <- rjson::fromJSON(
  file = "MyFitbitData/Jessica/Physical Activity/heart_rate-2022-03-27.json"
  )
df <- as.data.frame(json_data)

json_data2 <- RJSONIO::fromJSON(
  content = "MyFitbitData/Jessica/Physical Activity/heart_rate-2022-03-27.json",
  simplify = TRUE
)

