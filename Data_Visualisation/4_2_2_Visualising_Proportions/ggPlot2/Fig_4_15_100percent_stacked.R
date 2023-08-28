library(ggplot2)
library(scales)
library(readr)

ire_education<-read_csv("https://raw.githubusercontent.com/ravi3990/ARC/master/data/ire-2016-Masters.csv")
ggplot(ire_education, aes(x = age, y=number, fill=gender)) +
  geom_col(position="fill", alpha=0.8)  +
  
  scale_y_continuous(name = "",  labels = scales::percent) + 
  
  #scale_fill_brewer(palette = "Set1", name = "Uploads") +
  
  scale_fill_manual(values = c( "#1b9e77", "#d95f02"),
                    name = NULL,  labels=c("Female","Male")) +
  
  labs(title="Masters, Doctorate (Phd) or higher (in thousands) per age group"
       ) +
  
  theme_classic() +
  
  theme(
    axis.line.x = element_blank(),
    axis.ticks.x = element_blank(),
    axis.ticks.y = element_blank(),
    axis.line.y= element_blank(),
    axis.title.x=element_blank(), 
    axis.text.x = element_text(  vjust = 5, size=9, face="bold"),
    axis.text.y = element_text( size=7),
    axis.title.y = element_text(size=9, face="bold"),
    legend.text = element_text(size=8),
    legend.title = element_blank(),
    #legend.position = c(0.8,0.9),
    legend.key.size = unit(0.8,"line"),
    panel.grid.major.y = element_line(size = 0.1, linetype = 'solid', colour = "grey"),
    
    plot.title=element_text( hjust=0.00, face='bold', size=10)) 