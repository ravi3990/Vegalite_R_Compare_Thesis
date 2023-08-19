library(scales)

#lower part of age range
ire_education$age_continuous <- c(19,29,39,49,59,69,79,89)


ggplot(ire_education, aes(x = age_continuous, y=number, fill=gender, colour = gender)) +
  
  geom_area(stat="identity", colour="black", size = 0.2, alpha=0.8)  +
  
  scale_x_continuous(name = "age (years)", expand = c(-0.05, 0), breaks=c(19,29,39,49,59,69,79,89), labels=c(19,29,39,49,59,69,79,89), limits = c(15,90)) +
  
  scale_y_continuous(name = "", breaks = seq(0,100000, by=20000), labels = seq(0,100, by=20), expand=c(0,0)) + 
  
  #scale_fill_brewer(palette = "Set1", name = "Uploads") +
  
  scale_fill_manual(values = c( "#1b9e77", "#d95f02")) +
  scale_colour_manual(values = c( "#1b9e77", "#d95f02")) +
  
  ggtitle("Masters, Doctorate (Phd) or higher (in thousands)") +
  
  annotate("text",  x=38, y = 60000, label = "female graduates", size = 4, family = "Helvetica", colour = "white") +
  
  annotate("text",  x=38, y = 15000, label = "male graduates", size = 4, family = "Helvetica", colour = "white") +
  
  
  theme_classic() +
  
  theme(
    axis.line.x = element_blank(),
    axis.ticks.x = element_blank(),
    axis.ticks.y = element_blank(),
    axis.line.y= element_blank(),
    axis.title.x=element_blank(), 
    axis.text.x = element_text(size=9),
    axis.text.y = element_text(size=7),
    axis.title.y = element_text(size=9),
    legend.text = element_text(size=8),
    legend.title = element_blank(),
    legend.position = "none",
    legend.key.size = unit(0.8,"line"),
    panel.grid.major.y = element_line(size = 0.1, linetype = 'solid', colour = "grey"),
    panel.grid.minor.y = element_line(size = 0.1, linetype = 'solid', colour = "grey"),
    plot.title=element_text( hjust=0.00, face='bold', size=11)
    
  ) 
