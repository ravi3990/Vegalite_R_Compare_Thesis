heights <-
  read_csv("https://raw.githubusercontent.com/ravi3990/Vegalite_R_Compare_Thesis/main/Data/heights123.csv")


ggplot(heights, aes(y=height, x=gender)) +
  
  geom_boxplot(colour = "gray30", show.legend=F, outlier.colour = NA, varwidth = TRUE, scale = "count") +
  
  geom_point(position = position_jitter(width = 0.1), alpha = 0.15)+
  
  scale_y_continuous(breaks=seq(130,210, by =10))+
  
  coord_flip() +
  
  xlab("centimetres") +
  
  theme_minimal() +
  
  theme(
    axis.text.y = element_text(size =10,face = "bold"),
    axis.ticks.y =  element_blank(),
    axis.title.y = element_blank(),
    axis.title.x = element_text(size = 10),
    axis.line.x = element_blank(),
    axis.ticks.x = element_blank(),
    axis.line.y = element_blank(),
    panel.grid.minor.x = element_blank(),
    panel.grid.major.y = element_blank(),
    panel.grid.major.x = element_line(size=0.2))