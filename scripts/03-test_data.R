#### Preamble ####
# Author: Maroosh Gillani
# Date: 20 January 2024
# Contact: maroosh.gillani@mail.utoronto.ca
# License: MIT
# Pre-requisites: Make sure that 00-simulate_data.R has been ran successfully so auto_theft_data and bike_theft_data are present in your global environment


#### Workspace setup ####
library(tidyverse)

#### Test data ####

## Testing auto thefts ##

# Smallest possible year is 2014
auto_theft_data$Year |> min() == 2014

# Largest possible year is 2023
auto_theft_data$Year |> max() == 2023

# There are at least 0 automobiles stolen
auto_theft_data$theft_count |> min() >= 0

## Testing bike thefts ##

# Smallest possible year is 2014
bike_theft_data$Year |> min() == 2014

# Largest possible year is 2023
bike_theft_data$Year |> max() == 2023

# There are at least 0 bikes stolen
bike_theft_data$theft_count |> min() >= 0

