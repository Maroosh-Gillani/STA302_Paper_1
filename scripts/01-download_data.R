#### Preamble ####
# Purpose: Downloads and saves the data from OpenDataToronto's Neighbourhood Crime Rates dataset
# Author: Maroosh Gillani
# Date: 19 January 2024
# Contact: maroosh.gillani@mail.utoronto.ca
# License: MIT
# Pre-requisites: None


#### Workspace setup ####
library(opendatatoronto)
library(tidyverse)
library(janitor)
library(dplyr)

# get package
package <- show_package("neighbourhood-crime-rates")
package

# get all resources for this package
resources <- list_package_resources("neighbourhood-crime-rates")

# identify datastore resources; by default, Toronto Open Data sets datastore resource format to CSV for non-geospatial and GeoJSON for geospatial resources
datastore_resources <- filter(resources, tolower(format) %in% c('csv', 'geojson'))

# load the first datastore resource as a sample
data <- filter(datastore_resources, row_number()==1) %>% get_resource()

#### Save data ####
write_csv(x=data, file="inputs/data/unedited_data.csv") 
