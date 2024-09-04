#Get means of methylation for the methylated and unmethylated markers
means_brain <- oligodendrocyte_brain_ordered %>%
  group_by(methylation_status) %>%
  summarise(mean_V10 = mean(V10, na.rm = TRUE))

print(means_brain)
#Pull specific means
mean_brain_u <- means_brain %>% filter(methylation_status == "unmethylated") %>% pull(mean_V10)
mean_brain_m <- means_brain %>% filter(methylation_status == "methylated") %>% pull(mean_V10)
#Redo for Loyfer and switch
means_loyfer <- oligodendrocyte_loyfer_ordered %>%
  group_by(methylation_status) %>%
  summarise(mean_V10 = mean(V10, na.rm = TRUE))
print(means_loyfer)

mean_loyfer_u <-means_loyfer %>% filter(methylation_status == "unmethylated") %>% pull(mean_V10)
mean_loyfer_m <-means_loyfer %>% filter(methylation_status == "methylated") %>% pull(mean_V10)

means_switch <- oligodendrocyte_switch_ordered %>%
  group_by(methylation_status) %>%
  summarise(mean_V10 = mean(V10, na.rm = TRUE))
print(means_switch)

mean_switch_u <-means_switch %>% filter(methylation_status == "unmethylated") %>% pull(mean_V10)
mean_switch_m <-means_switch %>% filter(methylation_status == "methylated") %>% pull(mean_V10)
#Plot methylation with means and median
library(ggplot2)

# Create the plot with the histogram and the mean lines
ggplot(oligodendrocyte_brain_ordered, aes(x = V10)) +
  geom_histogram(color = "skyblue", fill = "white") +
  geom_vline(aes(xintercept = mean_brain_u), color = "red", linetype = "dashed", size = 1) +
  geom_vline(aes(xintercept = mean_brain_m), color = "blue", linetype = "dashed", size = 1) +
  geom_vline(aes(xintercept = median_meth_oligo_brain), color = "green", linetype = "dashed", size = 0.5) +
  labs(title = "Methylation values of marker regions from Tian et.al data",
       x = "Methylation values",
       y = "Count",
       caption = paste("Red dashed line: Mean for Unmethylated (", round(mean_brain_u, 2), ")\n",
                       "Blue dashed line: Mean for Methylated (", round(mean_brain_m, 2), ")\n",
                       "Green dashed line: Median (", round(median_meth_oligo_brain, 2), ")"
       )
  )
ggplot(oligodendrocyte_loyfer_ordered, aes(x = V10)) +
  geom_histogram(color = "skyblue", fill = "white") +
  geom_vline(aes(xintercept = mean_loyfer_u), color = "red", linetype = "dashed", size = 1) +
  geom_vline(aes(xintercept = mean_loyfer_m), color = "blue", linetype = "dashed", size = 1) +
  geom_vline(aes(xintercept = median_meth_oligo_loyfer), color = "green", linetype = "dashed", size = 0.5) +
  labs(title = "Methylation values of marker regions from Loyfer et.al data",
       x = "Methylation values",
       y = "Count",
       caption = paste("Red dashed line: Mean for Unmethylated (", round(mean_loyfer_u, 2), ")\n",
                       "Blue dashed line: Mean for Methylated (", round(mean_loyfer_m, 2), ")\n",
                       "Green dashed line: Median (", round(median_meth_oligo_loyfer, 2), ")"
       )
  )

ggplot(oligodendrocyte_switch_ordered, aes(x = V10)) +
  geom_histogram(color = "skyblue", fill = "white") +
  geom_vline(aes(xintercept = mean_switch_u), color = "red", linetype = "dashed", size = 1) +
  geom_vline(aes(xintercept = mean_switch_m), color = "blue", linetype = "dashed", size = 1) +
  geom_vline(aes(xintercept = median_meth_oligo_switch), color = "green", linetype = "dashed", size = 0.5) +
  labs(title = "Methylation values of marker regions from oligo switch data",
       x = "Methylation values",
       y = "Count",
       caption = paste("Red dashed line: Mean for Unmethylated (", round(mean_switch_u, 2), ")\n",
                       "Blue dashed line: Mean for Methylated (", round(mean_switch_m, 2), ")\n",
                       "Green dashed line: Median (", round(median_meth_oligo_switch, 2), ")"
       )
  )
