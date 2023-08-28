library(ggplot2)
library(scales)
scopus_citescore_long<-read_csv("https://raw.githubusercontent.com/ravi3990/ARC/master/data/Cite_data123.csv")
bar_colours<-c("#1f77b4", "#ff7f0e", "#2ca02c", "#d62728", "#9467bd")

ggplot(scopus_citescore_long, 
       aes(Year, citescore, 
           color = Short_Title, 
           fill = Short_Title, 
           shape = Short_Title)) + 
  geom_line(size = 0.5, alpha = 0.8)+
  geom_point(color = "white", size = 2) +
  
  scale_shape_manual(values = c(21, 22, 23, 24, 25),
                     name = NULL) + 
  
  scale_y_continuous(limits = c(0, 40),
                     name = "Scopus citescore / year") + 
  scale_x_date(name = "Year", breaks = "1 year", 
               labels=date_format("%Y") ) +
  
  scale_color_manual(values = bar_colours,
                     name = NULL) +
  scale_fill_manual(values = bar_colours,
                    name = NULL) +
  
  theme_minimal() +
  
  theme(legend.title.align = 0.5,
        legend.position = c(0.005, 1.05),
        legend.direction = "horizontal",
        legend.just = c(0, 1),
        panel.grid.major.x = element_blank(),
        panel.grid.minor.x = element_blank(),
        panel.grid.major.y = element_line(size=0.3),
        panel.grid.minor.y = element_blank(),
        plot.margin = margin(14, 7, 3, 1.5),
        axis.title.x=element_blank())