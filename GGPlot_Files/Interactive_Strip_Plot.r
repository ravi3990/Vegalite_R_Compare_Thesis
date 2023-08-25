library(ggplot2)
library(plotly)
library(viridis)

g<- ggplot(mw_hourly_temp19) + 
  
  geom_point(aes(x = mean_hourly_temp , y= monthname, colour= mean_hourly_temp, label = Date), 
             size = 0.5, alpha = 0.2, 
             position = position_jitter(width = 0.3), show.legend=F) +
  scale_x_continuous(expand=c(0,0),breaks = seq(-5,25,by=5), limits= c(-5,25),name = "Celcius") +
  scale_y_discrete() +
  # the viridis colour scale to represent the change in temperature
  scale_colour_viridis_c(option = "B", begin = 0.1, end = 0.95, direction = 1,
                         name = "Temp. [C]") +
  
  ggtitle("Moycullen Hourly Temperatures 2019") +
  theme_minimal() +
  theme (
    panel.grid.major.y =element_line(colour = "gray95", size =0.25),
    panel.grid.major.x =element_line(colour = "gray95", size =0.25),
    panel.grid.minor.y =element_line(colour = "gray95", size =0.15),
    axis.title.y = element_blank())

fig <- ggplotly(g,tooltip = c("label"))
fig
