library(ggplot2)
library(scales)
library(readr)

ire_education<-read_csv("https://raw.githubusercontent.com/ravi3990/ARC/master/data/ire-2016-Masters.csv")
ggplot(ire_education, aes(x = age, y = number, fill = gender)) +
  geom_bar(stat = "identity", alpha = 0.8) +
  scale_y_continuous(
    name = "",
    breaks = seq(0, 100000, by = 20000),
    labels = label_number_si(scale = 1e-3, suffix = "k")
    
  ) +
  scale_fill_manual(
    values = c("#1b9e77", "#d95f02"),
    labels = c("Female", "Male"),
    # Custom legend labels
    name = NULL
  ) +
  ggtitle("Masters, Doctorate (Phd) or higher (in thousands)") +
  theme_classic() +
  theme(
    axis.line.x = element_blank(),
    axis.ticks.x = element_blank(),
    axis.ticks.y = element_blank(),
    axis.line.y = element_blank(),
    axis.title.x = element_blank(),
    axis.text.x = element_text(vjust = 5, size = 9, face = "bold"),
    axis.text.y = element_text(size = 7),
    axis.title.y = element_text(size = 9, face = "bold"),
    legend.title = element_blank(),
    # Remove legend title
    legend.text = element_text(size = 8),
    legend.position = c(0.8, 0.9),
    legend.key.size = unit(0.8, "line"),
    panel.grid.major.y = element_line(
      size = 0.1,
      linetype = "solid",
      colour = "grey"
    ),
    plot.title = element_text(hjust = 0.00, face = "bold", size = 11)
  )