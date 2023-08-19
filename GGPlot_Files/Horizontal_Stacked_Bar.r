mycols<-c("#fb9a99","#cab2d6","#ff7f00","#fdbf6f","#e31a1c","#b2df8a","#33a02c","#a6cee3","#1f78b4")


ggplot(dail_32, aes(x = year, y = X2020, fill = short)) +
  geom_col(width = 0.2)  +
  
  geom_text(
    aes(label = short),
    colour = "white",
    size = 3,
    position = position_stack(vjust = .5)
  ) 
  
  scale_y_continuous(
    limits = c(0, 166),
    expand = c(0.0, 0),
    breaks = seq(0, 160, by = 20),
    name = "seats"
  ) +
  
  
  scale_fill_manual(values = mycols) +
  
  ggtitle("32nd Dail: 2020 by party ") +
  
  coord_flip() +
  
  theme(
    legend.position = "none",
    axis.title.y = element_blank(),
    axis.line.y = element_blank(),
    axis.ticks.y = element_blank(),
    axis.text.y = element_blank(),
    plot.title = element_text(
      vjust = -8,
      hjust = 0.25,
      size = 11
    ),
    plot.margin = margin(6, 6, 3, 3),
  )
