#Clean column function to remove CpGs and bp from the values
# Function to clean the column by removing "CpGs" and converting to numeric
clean_column <- function(column) {
  # Remove "CpGs" and leading/trailing whitespace
  cleaned_column <- gsub("CpGs", "", column)
  # Trim any remaining whitespace
  cleaned_column <- trimws(cleaned_column)
  # Convert to numeric
  numeric_column <- as.numeric(cleaned_column)
  
  # Check for NAs introduced by coercion
  if (any(is.na(numeric_column))) {
    warning("NAs introduced by coercion. Problematic values:")
    print(column[is.na(numeric_column)])
  }
  
  return(numeric_column)
}


# Function to clean the column by removing "bp" and converting to numeric
clean_column_bp <- function(column) {
  # Remove "bp" and leading/trailing whitespace
  cleaned_column <- gsub("bp", "", column)
  # Trim any remaining whitespace
  cleaned_column <- trimws(cleaned_column)
  # Convert to numeric
  numeric_column <- as.numeric(cleaned_column)
  
  # Check for NAs introduced by coercion
  if (any(is.na(numeric_column))) {
    warning("NAs introduced by coercion. Problematic values:")
    print(column[is.na(numeric_column)])
  }
  
  return(numeric_column)
}

