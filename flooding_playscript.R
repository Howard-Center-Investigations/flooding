###GET noaa package
install.packages"rnoaa"
library(rnoaa)

install.packages("hazus")
library(hazus)


##TO BE CONTINUED 

##examine floodplain data----

library(tidyverse)
library(readr)

floodplains2016 <- 
  read_csv('data/source/Floodplains_from_2016.csv')

glimpse(floodplains2016)
unique(floodplains2016$FLD_ZONE)


##create look up table for floodzones (source https://snmapmod.snco.us/fmm/document/fema-flood-zone-definitions.pdf)

flood_zone_lkp <-  data.frame(
  "FLD_ZONE" = c('X', 'AE', 'A', '0.2 PCT ANNUAL CHANCE FLOOD HAZARD'),
  "flood_zone" = c('Area of minimal flood hazard,Zone X is the area
determined to be outside the 500‐year flood and protected by levee from 100‐
year flood.', 'Areas subject to inundation by the 1-%-annual-chance flood event determined by detailed methods. Base Flood Elevations (BFEs) are shown', 'Areas with a 1% annual chance of flooding and a 26% chance of flooding over the life of
a 30‐year mortgage. Because detailed analyses are not performed for such areas; no
depths or base flood elevations are shown within these zones.', '0.2 PCT ANNUAL CHANCE FLOOD HAZARD'))


floodplains2016 %>%
  group_by(FLD_ZONE) %>%
  count()


###storm surge data----

storm <- read_csv('data/source/Storm_Surge_Risk_Areas.csv')

unique(storm$HES_ZONE)
storm %>% filter(HES_ZONE == 99) %>% nrow()

storm %>% 
  group_by(HES_ZONE) %>%
  count()

##create 
