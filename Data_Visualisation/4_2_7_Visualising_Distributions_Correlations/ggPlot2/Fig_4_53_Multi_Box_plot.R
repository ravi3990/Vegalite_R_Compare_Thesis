g<- ggplot(mw_hourly_temp19,
           aes(y = mean_hourly_temp, 
               x = monthname, colour=day_night )) + 
  
  geom_point( size = 0.42, alpha = 0.12, 
              position = position_jitter(width = 0.3)) +
  geom_boxplot(colour = "gray30", show.legend=F, 
               outlier.shape = NA, 
               varwidth = TRUE, alpha=0, size=0.3) +
  coord_flip() +
  scale_y_continuous(expand=c(0,0), breaks = seq(-5,25,by=5), 
                     limits= c(-5,25),name = "Celcius") +
  scale_colour_manual(values=c("#E69F00","#0072B2")) +
  guides(color = guide_legend(override.aes = list(size = 3)))+
  ggtitle("Moycullen Hourly Temperatures 2019") +
  theme_minimal() +
  
  theme (
    panel.grid.major.y =element_line(colour = "gray95", size =0.25),
    panel.grid.minor.x =element_line(colour = "gray95", size =0.15),
    panel.grid.major.x =element_line(colour = "gray95", size =0.25),
    axis.title.y = element_blank(),
    legend.title = element_blank(),
    legend.position = c(0.8,1.03),
    legend.direction= "horizontal",
    plot.margin = margin(t = 4, r = 10, b = 4, l = 4, "pt"),
    plot.title = element_text(size=10))

g