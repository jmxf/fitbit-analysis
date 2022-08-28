library(tidyverse)
library(rjson)
### likely not needed
# library(RJSONIO)

json_data <- rjson::fromJSON(
  file = "MyFitbitData/Jessica/Physical Activity/heart_rate-2022-03-27.json"
  )

heart_rate_df <- data.frame(
  date_time  = lapply(json_data, ),
  bpm = "b"
)





### likely not needed
# json_data2 <- RJSONIO::fromJSON(
  # content = "MyFitbitData/Jessica/Physical Activity/heart_rate-2022-03-27.json",
  # simplify = TRUE
# )

