library(ggplot2)
library(treemapify)
library(dplyr)
library(colorspace)  
library(scales)

ire_counties <- read.csv("https://raw.githubusercontent.com/ravi3990/Vegalite_R_Compare_Thesis/main/Data/ire_counties_df2.csv")
ggplot(data = ire_counties_df2 , aes(area = Population , fill = colour, subgroup = Province)) +
  geom_treemap(colour = "white", size = 0.5*.pt, alpha = NA)  +
  
  geom_treemap_text(aes(label = County), colour = "black" , size =10, place = "topleft",fontface = "bold",padding.x = grid::unit(1.5, "mm"),padding.y = grid::unit(1.5, "mm")) +
  
  geom_treemap_subgroup_border(colour = "white", size =0.5) + 
  
  geom_treemap_subgroup_text(grow = FALSE,  colour = "#FAFAFA", size = 42,  place ="bottomleft", fontface = "bold", alpha = 0.4) +
  
  scale_fill_identity()+
  
  coord_cartesian(clip = "off") +
  guides(colour = "none", fill = "none") 

