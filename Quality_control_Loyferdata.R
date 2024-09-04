# List of file paths
file_paths <- c("files.beta")  


# Initialize lists to store results per file
average_coverage_per_file <- numeric()
sites_with_10_reads_per_file <- numeric()

# Iterate over each file path
for (fname in file_paths) {
  # Retrieve the size of the file
  N <- file.info(fname)$size
  
  # Read binary data from the file
  content <- matrix(readBin(fname, "integer", N, size = 1, signed = FALSE), N / 2, 2, byrow=TRUE)
  
  # Calculate coverage
  coverage <- sum(content[, 2]) / length(content[, 1])
  average_coverage_per_file <- c(average_coverage_per_file, coverage)
  
  # Calculate number of sites with at least 10 reads
  sites_with_10_reads <- sum(content[, 2] >= 10)
  sites_with_10_reads_per_file <- c(sites_with_10_reads_per_file, sites_with_10_reads)
  
  # Print results for the current file
  print(paste("File:", fname))
  print(paste("Average Coverage:", coverage))
  print(paste("Number of Sites with at least 10 reads:", sites_with_10_reads))
}

# Print average coverage and total number of sites with at least 10 reads per file
print("Average Coverage per File:")
print(average_coverage_per_file)
print("Number of Sites with at least 10 reads per File:")
print(sites_with_10_reads_per_file)

# Create a data frame with results
cardiomyocyte_df <- data.frame(File = file_paths,
                         Average_Coverage = average_coverage_per_file,
                         Sites_with_10_reads = sites_with_10_reads_per_file)


