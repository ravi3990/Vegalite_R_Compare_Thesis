ggplot(boxoffice_ire_display,
       aes(x = reorder(title_short,
                       weekend_gross), y = weekend_gross)) +
  geom_col(width = 0.8, fill = "#0072B2") +
  scale_y_continuous(
    limits = c(0, 4e5),
    expand = c(0, 0),
    breaks = seq(5e4, 4e5, by = 5e4),
    labels = comma,
    name = "€"
  ) +
  
  labs(title = "Ireland Film Releases. Weekend gross Oct 25-27 2019",
       caption = "Data source: scannan.ie") +
  
  # this flips the plot so that it becomes a horizontal bar chart
  coord_flip(clip = "off") +
  
  theme_bw() +
  theme(
    axis.title.y = element_blank(),
    axis.line.y = element_blank(),
    axis.ticks.y = element_blank(),
    axis.line.x = element_blank(),
    axis.ticks.x = element_blank(),
    #axis.title.y = element_blank(),
    plot.title = element_text(size = 11),
    plot.title.position = "plot",
    # increased right margin slightly so final value on x-axis is not clipped
    plot.margin = margin(3, r = 20, 3, 3),
    panel.grid.major.y = element_blank(),
    panel.grid.minor.y = element_blank(),
    panel.grid.major.x = element_line(
      size = 0.1,
      linetype = 'solid',
      colour = "lightgrey"
    ),
    panel.grid.minor.x = element_blank(),
    plot.caption = element_text(
      size = 8,
      color = "black",
      face = "italic"
    ),
    # remove axis lines, unnecessary ticks
    axis.line = element_blank(),
    axis.ticks = element_blank(),
    panel.border = element_blank()
  )
