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


parser <- newJSONParser()
parser$addData( json_data )
food <- parser$getObject()
print( food )


test_df <- data.frame(
  "Dates" = c("2022-04-01", "2022-03-31", "2022-03-30", "2022-03-29"),
  "Weekday" = c("Freitag", "Donnerstag", "Mittwoch", "Dienstag")
)

weekday_json <- toJSON(test_df)
print(weekday_json)
write(weekday_json, file = "test_file.json")
