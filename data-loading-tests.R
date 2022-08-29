library(tidyverse)
library(rjson)
library(data.table)

json_data <- rjson::fromJSON(
  file = "MyFitbitData/Jessica/Physical Activity/heart_rate-2022-03-27.json"
  )


heart_rate_df <- data.frame(
  date_time  = sapply(json_data, `[[`, "dateTime"),
  bpm = sapply(json_data, `[[`, 2)[["bpm"]],
  confidence = sapply(json_data, `[[`, 2)[["confidence"]]
)



heart_rate_df2 <- data.frame(
  date_time  = sapply(json_data, `[[`, 1),
  bpm = sapply(sapply(json_data, `[[`, 2), `[[`, 1),
  confidence = sapply(json_data, `[[`, 2)[[2]]
)


inner_list <- sapply(json_data, `[[`, 2)

### maybe need to use unlist or rbindlist

bpm <- as.data.frame(inner_list["bpm", ])

hr_df_3 <- rbindlist(json_data)

hr_df_4 <- unlist(sapply(json_data, `[[`, 2))
