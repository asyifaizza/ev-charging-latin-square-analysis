# EV Charging Energy Consumption — Latin Square Design
#
# Portfolio reproduction script based on the accompanying report.
# The source project applies CRD, RCBD, and Latin Square Design to
# observational EV charging data.
#
# Expected data file:
#   data/electric-vehicle-charging-data.csv
#
# Packages:
#   tidyverse, lubridate, agricolae, car, nortest

library(tidyverse)
library(lubridate)
library(agricolae)
library(car)

data_path <- "data/electric-vehicle-charging-data.csv"
ev <- read.csv(data_path, stringsAsFactors = FALSE)

# Inspect
str(ev)
summary(ev)

# Feature engineering
# Adapt column names below if the source CSV uses different capitalization.
# The original analysis defines:
#   Charging Power (kW) = Energy (kWh) / Duration (hours)
# and groups charging sessions into four time blocks and four location groups.

# Example:
# ev <- ev %>%
#   mutate(
#     duration_hours = `Charging Duration (minutes)` / 60,
#     charging_power_kw = `Energy Consumed (kWh)` / duration_hours,
#     time_block = case_when(
#       hour(Start.Time) < 12 ~ "Morning",
#       hour(Start.Time) < 17 ~ "Afternoon",
#       hour(Start.Time) < 22 ~ "Evening",
#       TRUE ~ "Night"
#     )
#   )

# The final Latin Square construction and ANOVA are documented in reports/final-report.pdf.
# Keep the report as the authoritative source for the exact analytical output.
