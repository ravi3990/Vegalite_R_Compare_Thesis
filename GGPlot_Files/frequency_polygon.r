ggplot(heights, aes(x = height)) +
  geom_histogram(
    binwidth = bin_width,
    fill = "grey",
    alpha = 0.5,
    col = "white",
    position = "identity",
    stat = "bin",
    breaks = bin_breaks,
    closed = "right"
  ) +
  
  geom_freqpoly(
    binwidth = bin_width,
    colour = "steelblue3",
    stat = "bin",
    breaks = bin_breaks,
    closed = "right"
  ) +
  
  scale_x_continuous(expand = c(0, 0), breaks = seq(130, 200, by = 5)) +
  theme_minimal() +
  theme(legend.position = "top") +
  theme(
    panel.grid.minor.y = element_blank(),
    panel.grid.major.x = element_blank(),
    panel.grid.minor.x = element_blank(),
    plot.margin = margin(
      t = 2,
      r = 10,
      b = 2,
      l = 2,
      "pt"
    )
  )
