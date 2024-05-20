#Read txt file from Gene analysis
gene_association_oligo_brain <- read.delim("/Users/alicjanowak/Desktop/Masters/GREAT_oligo_brain_region_gene associations.txt", header = TRUE, sep = "\t", dec = ".")
gene_association_oligo_loyfer <- read.delim ("/Users/alicjanowak/Desktop/Masters/great_oligo_loyfer_region_gene_associations.txt",  header = TRUE, sep = "\t", dec = ".")
gene_association_oligo_switch <- read.delim("/Users/alicjanowak/Desktop/Masters/great_oligo_switch_region_gene_associations.txt", header = TRUE, sep = "\t", dec = ".")

#remove the numbers in parenthesis
remove_numbers_in_parentheses <- function(gene) {
  gsub("\\s*\\(\\+[0-9]+\\)|\\s*\\(-[0-9]+\\)", "", gene)
}

cleaned_brain_oligo_genes <- gene_association_oligo_brain
cleaned_brain_oligo_genes[] <- lapply(gene_association_oligo_brain, function(column) {
  sapply(column, remove_numbers_in_parentheses)
})

cleaned_loyfer_oligo_genes <- gene_association_oligo_loyfer
cleaned_loyfer_oligo_genes[] <- lapply(gene_association_oligo_loyfer, function(column) {
  sapply(column, remove_numbers_in_parentheses)
})

cleaned_switch_oligo_genes <- gene_association_oligo_switch
cleaned_switch_oligo_genes[] <- lapply(gene_association_oligo_switch,function(column) {
  sapply(column, remove_numbers_in_parentheses)
})
#Get the second column (gene names) as variable
brain_oligo_genes <- cleaned_brain_oligo_genes$Species.assembly..hg38
loyfer_oligo_genes <- cleaned_loyfer_oligo_genes$Species.assembly..hg38
switch_oligo_genes <- cleaned_switch_oligo_genes$Species.assembly..hg38

#Save vectors as txt file
write(switch_oligo_genes, file = "switch_oligo_genes.txt")
write(brain_oligo_genes, file = "brain_oligo_genes.txt")
write(loyfer_oligo_genes, file = "loyfer_oligo_genes.txt")

#Process the vector so that its a txt file no commas, each gene id in seperate line
file_path <- "switch_oligo_genes.txt"
lines <- readLines(file_path)
ids <- unlist(lapply(lines, function(line) strsplit(line, ",\\s*")[[1]]))
output_file <- "processed_switch_oligo_genes.txt"
writeLines(ids, output_file)

file_path <- "brain_oligo_genes.txt"
lines <- readLines(file_path)
ids <- unlist(lapply(lines, function(line) strsplit(line, ",\\s*")[[1]]))
output_file <- "processed_brain_oligo_genes.txt"
writeLines(ids, output_file)

file_path <- "loyfer_oligo_genes.txt"
lines <- readLines(file_path)
ids <- unlist(lapply(lines, function(line) strsplit(line, ",\\s*")[[1]]))
output_file <- "processed_loyfer_oligo_genes.txt"
writeLines(ids, output_file)