library(ggplot2)
library(gridExtra)

# List of columns for faceting
columns_to_facet <- c("PopulationCensus16", "ConfirmedCovidCases", "PopulationProportionCovidCases")

# Create a list to store individual facet plots
facet_plots <- list()

# Loop through the columns and create facet plots
for (col in columns_to_facet) {
  facet_plot <- ggplot(merged_data) +
    geom_sf(aes(fill = .data[[col]])) +
    scale_fill_viridis_c(name = col, labels = scales::comma) +
    labs(title = paste(col, "by County")) +
    theme_void()
  
  facet_plots[[col]] <- facet_plot
}

# Combine the facet plots vertically
combined_plot <- grid.arrange(grobs = facet_plots, ncol = 1)

# Print the combined plot
print(combined_plot)
