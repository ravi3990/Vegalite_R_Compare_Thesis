library(ggplot2)
library(scales)
CVPR_growth<-read_csv("https://raw.githubusercontent.com/ravi3990/ARC/master/data/Cite_data.csv")


ggplot(CVPR_growth, aes(Year, citescore)) + 
  geom_line(color = "#0072B2") + 
  #geom_point(color = "white", fill = "#0072B2", shape = 21, size = 2) +
  scale_y_continuous(limits = c(0,40),
                     name = "Scopus Citescore") + 
  scale_x_date(name = "Year", breaks = "1 year", 
               labels=date_format("%Y") ) +
  
  ggtitle("CVPR Scopus citescore : 2011-2018")+
  
  theme_classic() +
  theme(plot.margin = margin(7,7,3,1.5),
        axis.title.x=element_blank())


