library(kableExtra)
library(dplyr)
library(lattice)
library(knitr)
library(colorspace)
library(ggrepel)
kable(head(barley))%>% kable_styling()

cols2<- c("#ca0020","#0571b0")

ggplot(barley) +
  geom_density(aes(x = yield, fill = year, colour = year),  alpha = 0.3) +
  
  facet_grid(rows = vars(site)) +
  
  scale_color_manual(values = darken(cols2, 0.3) , name = "Year") +
  
  scale_fill_manual(values = cols2, name = "Year")  + theme_minimal() +
  theme(
    legend.position = "bottom", 
    legend.justification = "left",  # Position the legend at bottom left
    axis.line.x = element_blank(),
    panel.grid.major = element_blank()  )