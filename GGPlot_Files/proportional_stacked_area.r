ggplot(scopus_citescore_long,
       aes(
         x = year,
         y = citescore,
         color = ShortTitle,
         fill = ShortTitle
       )) +
  
  geom_area(
    position = "fill",
    colour = "black",
    size = 0.2,
    alpha = 0.8
  )  +
  
  
  scale_y_continuous(labels = scales::percent) +
  scale_x_date(name = "Year",
               breaks = "1 year",
               labels = date_format("%Y")) +
  
  scale_color_manual(
    values = c(
      "#1f77b4",
      "#ff7f0e",
      "#2ca02c",
      "#d62728",
      "#9467bd",
      "#8c564b",
      "#e377c2",
      "#bcbd22",
      "#17becf"
    ),
    name = NULL
  ) +
  scale_fill_manual(
    values = c(
      "#1f77b4",
      "#ff7f0e",
      "#2ca02c",
      "#d62728",
      "#9467bd",
      "#8c564b",
      "#e377c2",
      "#bcbd22",
      "#17becf"
    ),
    name = NULL
  ) +
  
  
  
  theme_minimal() +
  
  theme(
    legend.position = "none",
    panel.grid.major.x = element_blank(),
    panel.grid.minor.x = element_blank(),
    panel.grid.major.y = element_line(size = 0.15,
                                      colour = "grey"),
    axis.title.x = element_blank(),
    axis.ticks.x = element_line(size = 0.1),
    plot.margin = margin(30, 8, 8, 7)
  )
