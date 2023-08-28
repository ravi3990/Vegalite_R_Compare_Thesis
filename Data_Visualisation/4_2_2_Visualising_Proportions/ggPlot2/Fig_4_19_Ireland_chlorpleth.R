library(vegalite)
library(ggplot2)
library(sf)
library(dplyr)
library(jsonlite)
library(raster)


# Load the TopoJSON data
topojson_url <-
  "https://raw.githubusercontent.com/deldersveld/topojson/master/countries/ireland/ireland-counties.json"
ireland_counties <- jsonlite::fromJSON(topojson_url)

# Load the shapefile data
shapefile_url <-
  "https://raw.githubusercontent.com/deldersveld/topojson/master/countries/ireland/ireland-counties.json"
ireland_sf <- st_read(shapefile_url)

# Load the CSV data
csv_url <-
  "https://raw.githubusercontent.com/ravi3990/ARC/master/data/COVID-19_HPSC_County_Statistics_Latest_Point_Geometry.csv"
covid_data <- read.csv(csv_url)

# Merge CSV data with geographic data
merged_data <- ireland_sf %>%
  left_join(covid_data, by = c("ID_1" = "ID_1"))

# Create ggplot plot
ggplot() +
  geom_sf(data = merged_data, aes(fill = PopulationCensus16)) +
  geom_sf_label(
    data = merged_data,
    aes(label = NAME_1),
    color = "black",
    size = 2,
    nudge_y = 0.08
  ) +
  
  scale_fill_viridis_c(name = "Population Census 16", labels = scales::comma) +
  labs(title = "Population Census 16 by County") +
  theme_void()
