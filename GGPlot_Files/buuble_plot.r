ggplot(regions,
       aes(
         x = ave_gdp_percap,
         y = ave_life_expect,
         size = totalPop,
         color = region
       )) +
  geom_point(na.rm = TRUE, alpha = 0.25) +
  ggtitle("Trajectory 1990-2014: Average Life Expectancy vs average GDP per Capita per Region") +
  xlab("Average GDP per Capita (USD)") +
  ylab("Average Life Expectancy (years)") +
  # note how scale breaks are inserted +
  scale_size_area(max_size = 6,
                  labels  = comma,
                  name = "Region \nPopulation") +
  
  
  
  #increase the size of the legend colour points, and their alpha value (too faint otherwise)
  guides(color = guide_legend(override.aes = list(size = 3, alpha = 0.5))) +
  
  
  theme_minimal(base_size = 10) +
  theme(panel.grid.major = element_line(size = 0.2),
        panel.grid.minor = element_line(size = 0.1))
