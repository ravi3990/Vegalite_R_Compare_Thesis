install.packages("ggTimeSeries")
library(ggTimeSeries)

ggplot(scopus_citescore_long, 
       aes(x=year, y=citescore, 
           color = ShortTitle, 
           fill = ShortTitle))+
  
  stat_steamgraph(colour="white", size = 0.2) +
  
  # geom_label(data=label_data, position = position_stack(), aes(x=xpos,y=citescore, label=ShortTitle, color=ShortTitle), size=2.75, fill="white",label.size = NA) +
  
  
  scale_y_continuous(
    name = "Scopus citescore / year") + 
  scale_x_date(name = "Year", breaks = "1 year", 
               labels=date_format("%Y") ) +
  
  scale_fill_manual(values =  c(
    "#1f77b4",
    "#ff7f0e",
    "#2ca02c",
    "#d62728",
    "#9467bd",
    "#8c564b",
    "#e377c2",
    "#bcbd22",
    "#17becf"
  ), 
                    name = NULL) +
  
  theme_minimal() +
  
  theme(
    #legend.title.align = 0.5,
    #legend.position = c(0.005, 0.95),
    #legend.just = c(0, 1),
    legend.text = element_text(size=8),
    #legend.direction = "horizontal",
    legend.title = element_blank(),
    legend.key.size = unit(0.8,"line"),
    axis.line.x = element_blank(),
    axis.line.y = element_blank(),
    axis.text.y = element_blank(),
    axis.ticks.x = element_blank(),
    axis.ticks.y = element_blank(),
    axis.title.y = element_blank(),
    axis.title.x = element_blank(),
    panel.grid.major.y = element_blank(),
    panel.grid.minor.y = element_blank(),
    panel.grid.major.x = element_blank(),
    panel.grid.minor.x = element_blank(),
    plot.margin = margin(14, 14, 8, 14))

