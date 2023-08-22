ggplot(covid_data_europe_monthly, aes(x=year_mon, y=location, fill = monthly_new_cases_per_million)) + 
  
  geom_tile(colour = "white") +
  
  scale_y_discrete(name = NULL, expand = c(0,0)) +
  
  scale_x_yearmon(name = NULL, expand = c(0,0)) +
  
  scale_fill_viridis_c(option = "B", begin = 0.1, end = 0.9, direction = -1,
                       name = "monthly cases per million", 
                       guide = guide_colourbar(direction = "horizontal", barwidth = 8, barheight = 0.8)) +
  
  
  #geom_vline(xintercept = vacine_introduced, colour = "black", alpha=0.8) +
  
  #ggtitle(paste0(dis, " cases per 100,000 people: US States 1928 to 2002")) +
  
  coord_cartesian(clip = 'off') +
  
  theme(axis.text.y = element_text(size=5.6),
        axis.ticks.x = element_line(size=0.3, colour = "darkgrey"),
        axis.line.x = element_line(size=0.1, colour = "darkgrey"),
        axis.ticks.y = element_blank(),
        axis.line.y = element_blank(),
        panel.background = element_blank(),
        panel.grid = element_blank(),
        plot.margin = unit(c(t=0.0,r= 0.0, b=0.5, l=0.5), "cm"),
        plot.title = element_text(size=8, face="bold")) +
  
  theme(
    legend.text = element_text(size = 8),
    legend.position = "bottom", # move to the bottom
    legend.justification = "left",
    legend.title = element_blank(),
    legend.key.size = unit(0.9, "line"),
    legend.spacing.x = unit(0.2, 'cm'),
    legend.background = element_rect(
      fill = "white",
      size = 0.5,
      colour = "white"
    )
  ) 
