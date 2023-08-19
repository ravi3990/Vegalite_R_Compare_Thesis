ire_100m_2019_f <-ire_100m_2019%>%filter(competition=="Women")%>%top_n(10, wt=-time)

ggplot(ire_100m_2019_f, aes(x = time, y = reorder(name, -time))) +
  geom_point(size = 2, colour = "#ca0020") +
  scale_x_continuous(
    limits = c(11.25, 11.78),
    expand = c(0, 0),
    breaks = seq(11.3, 11.7, by = 0.1),
    name = "seconds"
  ) +
  
  theme(
    axis.title.y = element_blank(),
    panel.grid.major.x = element_blank(),
    panel.grid.minor.x = element_blank(),
    panel.grid.major.y = element_line(
      colour = "grey60",
      linetype = "dashed",
      size = 0.15
    )
  )
