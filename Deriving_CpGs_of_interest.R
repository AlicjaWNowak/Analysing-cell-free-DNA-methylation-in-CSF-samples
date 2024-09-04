#Create a list of all marker region 500 table
marker_all<-ls(pattern = "500")
#Create an empty list for columns to be extracted
regions<-list()
#Loop through each table and extract columns
for(table_name in marker_all) {
  table<-get(table_name)
  
  if(all(c("V1", "V4", "V5") %in%
         colnames(table))) {
   regions[[table_name]]<-table[,c("V1", "V4", "V5")]
  } else {
    message(paste("Table", table_name, "does not have all the required columns"))
  }
}
#Combine into one dataframe
combined_regions<-do.call(rbind, regions)
#Check for N/A(to make sure the loop will work and there were no mistakes in earlier work)
na_v4 <- any(is.na(combined_regions$V4))
na_v5 <- any(is.na(combined_regions$V5))
print(na_v4)
print(na_v5)
#Start and end rows for extraction
start_rows <- combined_regions$V4
end_rows <- combined_regions$V5
#Read beta file
fname <- "/Users/alicjanowak/Downloads/oligodendrocyte_betas/GSM5652222_Oligodendrocytes-Z0000042N.hg38.copy.beta"
N <- file.info(fname)$size
content <- matrix(readBin(fname, "integer", N, size = 1, signed = FALSE), N / 2, 2, byrow=TRUE)
#Create a df for CpGs of interest
CpGs_of_interest_oligo4<- data.frame(matrix(nrow = 0, ncol = 2))
#Extract rows through loop
for (i in 1:nrow(combined_regions)) {
  start_row <- start_rows[i]
  end_row <- end_rows[i]
  extracted_rows <- content[start_row:(end_row - 1), ]
  CpGs_of_interest_oligo4<- rbind(CpGs_of_interest_oligo4, extracted_rows)
}
#Calculate which rows need to be merged
n_of_rows_to_merge<-combined_regions$V5-combined_regions$V4
#Write function to sum rows according to the pattern set 
sum_rows <- function(mat, pattern) {
  start <- 1
  result <- list()
  for (i in 1:length(pattern)) {
    end <- start + pattern[i] - 1
    result[[i]] <- colSums(mat[start:end, , drop = FALSE])
    start <- end + 1
  }
  result_df <- as.data.frame(do.call(rbind, result))
  return(result_df)
}
#Apply to CpG files
segments_of_interest_oligo4<-sum_rows(CpGs_of_interest_oligo4, n_of_rows_to_merge)

