heights<-read_csv("https://raw.githubusercontent.com/ravi3990/ARC/master/data/heights.csv")


ggplot(heights, aes(x=height)) + 
  
  geom_density(fill = "steelblue3", 
               col = "steelblue4", 
               bw = 3) +
  
  scale_x_continuous(expand=c(0,0), breaks = seq(130,200, by=5)) +
  theme_minimal() +
  theme(panel.grid.minor.y = element_blank(),
        panel.grid.major.x = element_blank(),
        panel.grid.minor.x = element_blank())
ggplot(heights, aes(x=height)) + 
  
  geom_density(fill = "steelblue3", 
               col = "steelblue4", 
               bw = 3) +
  
  scale_x_continuous(expand=c(0,0), breaks = seq(130,200, by=5)) +
  theme_minimal() +
  theme(panel.grid.minor.y = element_blank(),
        panel.grid.major.x = element_blank(),
        panel.grid.minor.x = element_blank())
