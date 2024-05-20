 # List of file paths
  file_paths <- c("/Users/alicjanowak/Downloads/Brain Methylation Beta Files/Amy..beta",
                  "/Users/alicjanowak/Downloads/Brain Methylation Beta Files/ASC..beta",
                  "/Users/alicjanowak/Downloads/Brain Methylation Beta Files/CA1..beta",
                  "/Users/alicjanowak/Downloads/Brain Methylation Beta Files/CA2..beta",
                  "/Users/alicjanowak/Downloads/Brain Methylation Beta Files/CA3..beta",
                  "/Users/alicjanowak/Downloads/Brain Methylation Beta Files/CB..beta",
                  "/Users/alicjanowak/Downloads/Brain Methylation Beta Files/CHD7..beta",
                  "/Users/alicjanowak/Downloads/Brain Methylation Beta Files/DG..beta",
                  "/Users/alicjanowak/Downloads/Brain Methylation Beta Files/EC..beta",
                  "/Users/alicjanowak/Downloads/Brain Methylation Beta Files/filter.beta",
                  "/Users/alicjanowak/Downloads/Brain Methylation Beta Files/Foxp2..beta",
                  "/Users/alicjanowak/Downloads/Brain Methylation Beta Files/HIF_Unk1..beta",
                  "/Users/alicjanowak/Downloads/Brain Methylation Beta Files/L4_IT..beta",
                  "/Users/alicjanowak/Downloads/Brain Methylation Beta Files/L5_ET..beta",
                  "/Users/alicjanowak/Downloads/Brain Methylation Beta Files/L5_IT..beta",
                  "/Users/alicjanowak/Downloads/Brain Methylation Beta Files/L6_CT..beta",
                  "/Users/alicjanowak/Downloads/Brain Methylation Beta Files/L6_IT_Car3..beta",
                  "/Users/alicjanowak/Downloads/Brain Methylation Beta Files/L6_IT..beta",
                  "/Users/alicjanowak/Downloads/Brain Methylation Beta Files/L6b..beta",
                  "/Users/alicjanowak/Downloads/Brain Methylation Beta Files/L23_IT..beta",
                  "/Users/alicjanowak/Downloads/Brain Methylation Beta Files/L56_NP..beta",
                  "/Users/alicjanowak/Downloads/Brain Methylation Beta Files/Lamp5_LHX6..beta",
                  "/Users/alicjanowak/Downloads/Brain Methylation Beta Files/Lamp5..beta",
                  "/Users/alicjanowak/Downloads/Brain Methylation Beta Files/MGC..beta",
                  "/Users/alicjanowak/Downloads/Brain Methylation Beta Files/MSN_D1..beta",
                  "/Users/alicjanowak/Downloads/Brain Methylation Beta Files/MSN_D2..beta",
                  "/Users/alicjanowak/Downloads/Brain Methylation Beta Files/ODC..beta",
                  "/Users/alicjanowak/Downloads/Brain Methylation Beta Files/OPC..beta",
                  "/Users/alicjanowak/Downloads/Brain Methylation Beta Files/PC..beta",
                  "/Users/alicjanowak/Downloads/Brain Methylation Beta Files/PKJ..beta",
                  "/Users/alicjanowak/Downloads/Brain Methylation Beta Files/PN..beta",
                  "/Users/alicjanowak/Downloads/Brain Methylation Beta Files/Pvalb_ChC..beta",
                  "/Users/alicjanowak/Downloads/Brain Methylation Beta Files/Pvalb..beta",
                  "/Users/alicjanowak/Downloads/Brain Methylation Beta Files/Sn.cg.beta",
                  "/Users/alicjanowak/Downloads/Brain Methylation Beta Files/Sst..beta",
                  "/Users/alicjanowak/Downloads/Brain Methylation Beta Files/SubCtx..beta",
                  "/Users/alicjanowak/Downloads/Brain Methylation Beta Files/THM_Exc..beta",
                  "/Users/alicjanowak/Downloads/Brain Methylation Beta Files/THM_Inh..beta",
                  "/Users/alicjanowak/Downloads/Brain Methylation Beta Files/THM_MB..beta",
                  "/Users/alicjanowak/Downloads/Brain Methylation Beta Files/Vip..beta",
                  "/Users/alicjanowak/Downloads/Brain Methylation Beta Files/VLMC..beta")  
  
  
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
  results_df <- data.frame(File = file_paths,
                           Average_Coverage = average_coverage_per_file,
                           Sites_with_10_reads = sites_with_10_reads_per_file)
  
  # Write the data frame to a CSV file
  write.csv(results_df, "results.csv", row.names = FALSE)
  