#### Preamble ####
# Purpose: Simulates the relationship between the number of bikes and automobiles theft
# Author: Maroosh Gillani
# Date: 20 January 2024
# Contact: maroosh.gillani@mail.utoronto.ca
# License: MIT
# Pre-requisites: None


#### Workspace setup ####
library(tidyverse)
library(dplyr)

#### Simulate data ####

set.seed(777) # Ensures reproducibility

# I'd imagine a lot more bikes get stolen than cars (never had a stolen car, but had bike stolen twice).
# I also think that during COVID, due to lock down, thefts might have increased (as less people outside, meaning easier to commit crime)
# It would make sense if during economic difficulties (inflation), crimes such as these would see an increase.

# Simulating data for bike thefts from 2014 to 2023
bike_theft_data <- data.frame(
  Year = 2014:2019,
  theft_count = round(rnorm(6, mean = 500, sd = 100))
)

# Increase in 2020 due to COVID
bike_theft_data <- bind_rows(bike_theft_data, data.frame(Year = 2020, theft_count = round(rnorm(1, mean = 550, sd = 100))))

# 2021
bike_theft_data <- bind_rows(bike_theft_data, data.frame(Year = 2021, theft_count = round(rnorm(1, mean = 500, sd = 100))))

# Increase in 2022 due to inflation
bike_theft_data <- bind_rows(bike_theft_data, data.frame(Year = 2022, theft_count = round(rnorm(1, mean = 580, sd = 100))))

# Increase in 2023 due to inflation
bike_theft_data <- bind_rows(bike_theft_data, data.frame(Year = 2023, theft_count = round(rnorm(1, mean = 600, sd = 100))))



# Simulating data for auto thefts from 2014 to 2023
auto_theft_data <- data.frame(
  Year = 2014:2019,
  theft_count = round(rnorm(6, mean = 100, sd = 50))
)

# Increase in 2020 due to COVID
auto_theft_data <- bind_rows(auto_theft_data, data.frame(Year = 2020, theft_count = round(rnorm(1, mean = 110, sd = 50))))

# 2021
auto_theft_data <- bind_rows(auto_theft_data, data.frame(Year = 2021, theft_count = round(rnorm(1, mean = 100, sd = 50))))

# Increase in 2022 due to inflation
auto_theft_data <- bind_rows(auto_theft_data, data.frame(Year = 2022, theft_count = round(rnorm(1, mean = 125, sd = 50))))

# Increase in 2023 due to inflation
auto_theft_data <- bind_rows(auto_theft_data, data.frame(Year = 2023, theft_count = round(rnorm(1, mean = 150, sd = 50))))

