library(ggplot2)
dfm<-read.csv("https://raw.githubusercontent.com/ravi3990/ARC/master/data/dfm.csv")
dfm$cyl <- factor(dfm$cyl,levels = c(4,6,8))
cb3<-c('#2F71A8','#E0A414', '#999999')

ggplot(dfm, aes(x = reorder(name,sort), y = mpg, fill = cyl)) + 
  geom_col(alpha = 0.85, width = 0.7) +
  
  scale_y_continuous(limits = c(0, 35),
                     breaks = seq(0, 35, by = 5),
                     name = "MPG\n(Miles Per Gallon)") +
  scale_fill_manual(values = cb3, name = "Number of cylinders") +
  
  labs(caption = "Data source: 1974 Motor Trend US magazine") +
  
  theme_bw() +
  
  theme(
    axis.line.y = element_blank(),
    axis.ticks.y = element_blank(),
    axis.line.x = element_blank(),
    axis.ticks.x = element_blank(),
    axis.text.x = element_text(size = 8, angle = 90, 
                               vjust = 0.4, 
                               hjust = 1, 
                               margin = margin(t = -8)),
    axis.title.x = element_blank(),
    axis.title.y = element_text(size = 10, 
                                angle = 0,
                                vjust = 0.5,
                                hjust = 1,
                                margin = margin(r = 4)),
    plot.margin = margin(12, 6, 3, 3),
    panel.grid.major.y = element_line(size = 0.15, 
                                      linetype = 'solid',
                                      colour = "lightgrey"),
    legend.position = c(0.7, 1.04), legend.direction = "horizontal",
    legend.text = element_text(size = 8), 
    legend.key.size = unit(0.8, "lines"),
    legend.title = element_text(size = 8),
    plot.caption = element_text(size = 7, 
                                color = "black", face = "italic"),
    axis.line = element_blank(),
    axis.ticks = element_blank(),
    panel.border = element_blank())
