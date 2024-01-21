#### Preamble ####
# Purpose: Cleans the raw data recorded by OpenDataToronto's Neighbourhood Crime Rates dataset
# Author: Maroosh Gillani
# Date: 19 January 2024
# Contact: maroosh.gillani@mail.utoronto.ca
# License: MIT
# Pre-requisites: None

#### Workspace setup ####
library(tidyverse)
library(dplyr)

#### Clean data ####
raw_data <- read_csv("inputs/data/unedited_data.csv")

# Select the columns AUTOTHEFT_2014 - AUTOTHEFT_2023 and BIKETHEFT_2014 - BIKETHEFT_2023 only
columns_to_keep <- c(
  paste0("AUTOTHEFT_", 2014:2023),
  paste0("BIKETHEFT_", 2014:2023)
)

# Getting rid of any rows with NA values
cleaned_data <- raw_data %>%
  select(all_of(columns_to_keep)) %>%
  drop_na()

# Sum up the data for each column
sum_row <- cleaned_data %>%
  summarise(across(everything(), sum))

# Add the sum row to the cleaned_data
cleaned_data <- bind_rows(cleaned_data, sum_row)

#### Save data ####
write_csv(cleaned_data, "outputs/data/cleaned_data.csv")

