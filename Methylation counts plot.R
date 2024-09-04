#Add column for methylation status
oligodendrocyte_brain_ordered$methylation_status <- ifelse(oligodendrocyte_brain_ordered$V10 < 0.5, "unmethylated", "methylated")
oligodendrocyte_loyfer_ordered$methylation_status <-ifelse(oligodendrocyte_loyfer_ordered$V10 < 0.5, "unmethylated", "methylated")
oligodendrocyte_switch_ordered$methylation_status <-ifelse(oligodendrocyte_switch_ordered$V10 < 0.5, "unmethylated", "methylated")
#Find number of unmethylated and methylated markers
brain_unmeth<- sum(oligodendrocyte_brain_ordered[,19]=="unmethylated")
brain_meth<- sum(oligodendrocyte_brain_ordered[,19]=="methylated")
Loyfer_unmeth<- sum(oligodendrocyte_loyfer_ordered[,19]=="unmethylated")
Loyfer_meth<- sum(oligodendrocyte_loyfer_ordered[,19]=="methylated")
switch_unmeth<- sum(oligodendrocyte_switch_ordered[,19]=="unmethylated")
switch_meth<- sum(oligodendrocyte_switch_ordered[,19]=="methylated")
#Data frame from counts
count_meth <- data.frame(
  Dataset = rep(c("Tian et.al", "Loyfer et.al", "Oligo Switched"), each =2),
  Category = rep(c("U", "M"), times = 3),
  Count = c(brain_unmeth, brain_meth, Loyfer_unmeth, Loyfer_meth, switch_unmeth, switch_meth)
)
#Plot the counts
ggplot(count_meth, aes(x=Dataset, y= Count, fill = Category)) +
  geom_bar(stat= "identity", position = "dodge") +
  labs(title = "Number of unmethylated and methylated marker regions from each dataset", x = "Dataset", y = "Count") 



  