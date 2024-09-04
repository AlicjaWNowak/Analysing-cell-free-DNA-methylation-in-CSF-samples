#Filtering the cell proportions
filtered_data<-CelFie_loyfer_output_melted %>%
  filter(estimate >=0.01)
#Load changed output with values beow treshold assigned to "other"
filtered_CelFie_loyfer_output_melted<-read.csv("/Users/alicjanowak/Downloads/CelFie_filtered_loyfer_with_other.csv", header=TRUE)
#Plot again
ggplot(filtered_CelFie_loyfer_output_melted, aes(x = samples, y = estimate, fill = tissue)) +
  geom_bar(position = "stack", stat = "identity") +
  labs(title = "Stacked Bar Chart of Tissue Estimates",
       x = "Samples",
       y = "Estimate",
       fill = "Tissue") +
  theme_minimal() +
  theme(
    axis.text.x = element_text(angle = 45, hjust = 1),
    legend.text = element_text(size = 8),      
    legend.title = element_text(size = 10),    
    legend.key.size = unit(0.5, "cm"),
    legend.position = "right"
  )
#Plot colourblind
ggplot(filtered_CelFie_loyfer_output_melted, aes(x = samples, y = estimate, fill = tissue)) +
  geom_bar(position = "stack", stat = "identity") +
  scale_fill_viridis(discrete = TRUE, option = "D")+
  labs(title = "Stacked Bar Chart of Tissue Estimates",
       x = "Samples",
       y = "Estimate",
       fill = "Tissue") +
  theme_minimal() +
  theme(
    axis.text.x = element_text(angle = 45, hjust = 1),
    legend.text = element_text(size = 8),      
    legend.title = element_text(size = 10),    
    legend.key.size = unit(0.5, "cm"),
    legend.position = "left"
  )