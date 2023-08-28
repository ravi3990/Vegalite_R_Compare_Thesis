library(ggplot2)
library(plotly)
mw_hourly_temp19<-read_csv("https://raw.githubusercontent.com/ravi3990/Vegalite_R_Compare_Thesis/main/Data/mw_hourly_temp19.csv")
mw_hourly_temp19$monthname <-
  factor(
    mw_hourly_temp19$monthname,
    levels = c(
      "December",
      "November",
      "October",
      "September",
      "August",
      "July",
      "June",
      "May",
      "April",
      "March",
      "February",
      "January"
    )
  )

ggplot(mw_hourly_temp19) + 
  geom_point(aes(x = mean_hourly_temp , y= monthname, colour=day_night ), 
             size = 0.5, alpha = 0.2, 
             position = position_jitter(width = 0.3)) +
  
  scale_x_continuous(expand=c(0,0),breaks = seq(-5,25,by=5), limits= c(-5,25),name = "Celcius") +
  scale_colour_manual(values=c("#E69F00","#0072B2")) +
  guides(color = guide_legend(override.aes = list(size = 3)))+
  
  ggtitle("Moycullen Hourly Temperatures 2019") +
  theme_minimal() +
  theme (
    panel.grid.major.y =element_line(colour = "gray95", size =0.25),
    panel.grid.major.x =element_line(colour = "gray95", size =0.25),
    panel.grid.minor.y =element_line(colour = "gray95", size =0.15),
    axis.title.y = element_blank(),
    legend.title = element_blank(),
    legend.position = c(0.8,1.03),
    legend.direction= "horizontal",
    
    plot.title = element_text(size=10))