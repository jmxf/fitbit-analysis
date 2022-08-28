library(tidyverse)
library(rjson)

json_data <- rjson::fromJSON(
  file = "MyFitbitData/Jessica/Physical Activity/heart_rate-2022-03-27.json"
  )

heart_rate_df <- data.frame(
  date_time  = lapply(json_data, ),
  bpm = "b"
)






