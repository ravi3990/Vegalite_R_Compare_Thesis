library(readr)
library(dplyr)
ire_100m_2019_f<-read_csv("https://raw.githubusercontent.com/ravi3990/Vegalite_R_Compare_Thesis/main/JSON_File/ire_100mtr.csv")

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
      colour = "grey",
      linetype = "dashed",
      size = 0.15
    )  )
