#Create a list of all marker region 500 table
marker_all<-ls(pattern = "500")
#Create an empty list for columns to be extracted
regions_plus_CpG<-list()
#Loop through each table and extract columns
for(table_name in marker_all) {
  table<-get(table_name)
  
  if(all(c("V1", "V4", "V5") %in%
         colnames(table))) {
    regions_plus_CpG[[table_name]]<-table[,c("V1", "V4", "V5", "V8", "V9", "V10", "V16")]
  } else {
    message(paste("Table", table_name, "does not have all the required columns"))
  }
}
combined_regions_CpGs_with_status<-do.call(rbind, regions_plus_CpG)
#Clean column
V8_clean<-clean_column(combined_regions_CpGs_with_status$V8)
combined_regions_CpGs_with_status$V8_clean<-V8_clean
V9_clean<-clean_column_bp(combined_regions_CpGs_with_status$V9)
combined_regions_CpGs_with_status$V9_clean<-V9_clean
#get mean methylation
mean_meth<-mean(combined_regions_CpGs_with_status$V10, na.rm = TRUE)
#Get means of methylation for the methylated and unmethylated markers
means_markers <- combined_regions_CpGs_with_status %>%
  group_by(V16) %>%
  summarise(mean_V10 = mean(V10, na.rm = TRUE))

#Pull specific means
mean_markers_u <- means_markers %>% filter(V16 == "U") %>% pull(mean_V10)
mean_markers_m <- means_markers %>% filter(V16 == "M") %>% pull(mean_V10)
# Get median methylation
median_markers <- median(combined_regions_CpGs_with_status$V10, na.rm = FALSE)
#Size plot for markers
ggplot(combined_regions_CpGs, aes(x=V8_clean))+
  geom_histogram(binwidth = 1, color = "skyblue", fill = "white")+
  scale_x_binned(name = "CpG number", limits = c(0, 40))+
  labs(title="CpG count per marker region", x="CpG number", y="counts")
  
ggplot(combined_regions_CpGs, aes(x=V9_clean))+
  geom_histogram(binwidth = 10, color = "skyblue", fill = "white")+
  labs(title="Length of marker region in bp", x="Bp length", y="count")

ggplot(combined_regions_CpGs, aes(V10))+
  geom_histogram(binwidth = 0.01, color = "skyblue", fill = "white")+
  geom_vline(aes(xintercept = mean_markers_u), color = "red", linetype = "dashed", size = 1)+
  geom_vline(aes(xintercept = mean_markers_m), color = "blue", linetype = "dashed", size = 1)+
  labs(title ="Marker methylation values", y="count", x = "methylation values",
       caption= paste("Red dashed line: Mean for Unmethylated (", round(mean_markers_u, 2), ")\n",
                      "Blue dashed line: Mean for Methylated (", round(mean_markers_m, 2), ")"
       ))

