library(ggplot2)
library(readr)
boxoffice_ire_display<-read_csv("https://raw.githubusercontent.com/ravi3990/ARC/6a841c641d40d8ac3012c6edbd56cabf5db3a308/data/ire-movie-october25-2019.csv")
ggplot(boxoffice_ire_display,
       aes(x = reorder(title_short,
                       weekend_gross), y = weekend_gross)) +
  geom_col(width = 0.8, fill = "#0072B2") +
  scale_y_continuous(
    limits = c(0, 4e5),
    expand = c(0, 0),
    breaks = seq(5e4, 4e5, by = 5e4),
    name = "€"
  ) +
  
  labs(title = "Ireland Film Releases. Weekend gross Oct 25-27 2019") +
  
  coord_flip(clip = "off") +
  
  theme_bw() +
  theme(
    axis.title.y = element_blank(),
    axis.line.y = element_blank(),
    axis.ticks.y = element_blank(),
    axis.line.x = element_blank(),
    axis.ticks.x = element_blank(),
    plot.title = element_text(size = 11),
    plot.title.position = "plot",
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
    axis.line = element_blank(),
    axis.ticks = element_blank(),
    panel.border = element_blank()
  )