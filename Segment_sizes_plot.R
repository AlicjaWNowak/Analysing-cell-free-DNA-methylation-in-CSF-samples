#Load ggplot
library(ggplot2)
#Import BED file
segment_data <- read.table("/Users/alicjanowak/wgbs_tools/segments.bed", header =FALSE, stringsAsFactors = FALSE)
#Name columns
colnames(segment_data) <- c("chromosome", "strat", "end", "startCpG", "endCpG")
#Calculate segment size
segment_data$segments_size <- segment_data$end - segment_data$start
#Histogram
ggplot(segment_data, aes(x = segments_size)) +
  geom_histogram(binwidth=1000, fill= "skyblue", color="black") +
  labs(title = "Distribution of Segment Sizes",
       x= "Segmnet Size",
       y= "Frequency") 
 