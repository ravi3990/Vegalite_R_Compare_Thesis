library(ggplot2)
library(scales)
scopus_citescore_long<-read_csv("https://raw.githubusercontent.com/ravi3990/ARC/master/data/Cite_data123.csv")


ggplot(scopus_citescore_long, 
       aes(Year, citescore))+
  geom_line(size = 0.8) +
  
  scale_y_continuous(limits = c(0, 40),
                     name = "Scopus citescore / year",
                     breaks=seq(0,40,by=10)
  ) + 
  scale_x_date(name = "Year", breaks = "2 year", 
               labels=date_format("%Y"), 
               expand = expansion(mult = c(0.02, 0))) +
  
  facet_grid(cols = vars(Short_Title)) +
  
  theme_minimal() +
  
  theme(legend.position = "none",
        plot.margin = margin(14, 7, 7, 1.5),
        panel.grid.major.x = element_blank(),
        panel.grid.minor.x = element_blank(),
        panel.grid.major.y = element_line(size=0.3),
        panel.grid.minor.y = element_blank(),
        axis.title.x = element_blank(),
        axis.title.y=element_text(margin = 
                                    margin(t = 0, r = 10, b = 0, l = 0)),
        axis.line.y = element_blank(),
        axis.ticks.y = element_blank(),
        axis.ticks.x = element_line(size = 0.1),
        axis.text.y= element_text(margin = margin(0, 0, 0, 0),
                                  size = 7.5),
        axis.text.x= element_text(angle=45, hjust = 1.2, size=7.5, 
                                  margin = margin(0, 0, 0, 0) ),
        strip.text.x = element_text(size=9, face="bold"),
        strip.background = element_blank(),
        panel.spacing.x = unit(4.8, "mm")
        
  ) 