# Analysing-cell-free-DNA-methylation-in-CSF-samples
### **Methylation by cell type** (Python)
#h.5ad file loaded into jupyter as z using scanpy
z=sc.read_h5ad('/Users/alicjanowak/Downloads/7996cf65-6509-4da3-862e-a9d26e469afd.h5ad')

#unique cell types list

z.obs.cell_type.unique().tolist()
6 cat:'L2/3-6 intratelencephalic projecting glutamatergic neuron',
 'amygdala excitatory neuron',
 'L6b glutamatergic cortical neuron',
 'L6 corticothalamic-projecting glutamatergic cortical neuron',
 'near-projecting glutamatergic cortical neuron',
 'L5 extratelencephalic projecting glutamatergic cortical neuron'

#filter by cell type
ipgn= z[z.obs.cell_type == 'L2/3-6 intratelencephalic projecting glutamatergic neuron']

axn = z[z.obs.cell_type == 'amygdala excitatory neuron']

gcg=z[z.obs.cell_type == 'L6b glutamatergic cortical neuron']

cpgcn=z[z.obs.cell_type == 'L6 corticothalamic-projecting glutamatergic cortical neuron']

npgcn=z[z.obs.cell_type == 'near-projecting glutamatergic cortical neuron']

epgcn=z[z.obs.cell_type == 'L5 extratelencephalic projecting glutamatergic cortical neuron']



#get data matrices from filtered subsets

data_matrix_ipgn=ipgn.X
data_matrix_axn=axn.X
data_matrix_gcg=gcg.X
data_matrix_cpgcn=cpgcn.X
data_matrix_npgcn=npgcn.X
data_matrix_epgcn=epgcn.X

#Create a data frame from the matrix

ipgn_df= pd.DataFrame(data_matrix_ipgn, index=ipgn.obs_names, columns=ipgn.var_names)
axn_df= pd.DataFrame(data_matrix_axn, index=axn.obs_names, columns=axn.var_names)
gcg_df= pd.DataFrame(data_matrix_gcg, index=gcg.obs_names, columns=gcg.var_names)
cpgcn_df= pd.DataFrame(data_matrix_cpgcn, index=cpgcn.obs_names, columns=cpgcn.var_names)
npgcn_df= pd.DataFrame(data_matrix_npgcn, index=npgcn.obs_names, columns=npgcn.var_names)
epgcn_df= pd.DataFrame(data_matrix_epgcn, index=epgcn.obs_names, columns=epgcn.var_names)

#Get csv file

eg.
from IPython.display import FileLink
csv_file_path= 'epgcn_matrix.csv'
epgcn_df.to_csv(csv_file_path)
display(FileLink(csv_file_path))

### **Gene ID coordinates** (Python and R for BiomaRk)

#Get the variable names (gene IDs) into a vector
variable_name=z.var_names

#Transform variable name into .txt file, defining file path
file_path="geneID.txt"
#variable names into the .txt file
with open(file_path, "w") as file:
    for name in variable_names:
        file.write(name + "\n")
        
#Downloading the file
print(f"Download variable names: [variable_names.txt](./{file_path})")

#Installing and loading biomaRt if not already installed  
if (!requireNamespace("biomaRt", quietly = TRUE)) { 
install.packages("biomaRt") 
} 
library(biomaRt)

#Ensamble database for Homo sapiens
ensembl <- useMart("ensembl", dataset = "hsapiens_gene_ensembl")

#Read gene IDs from the txt file into R
gene_ids <- read.table("geneID.txt", header = FALSE)

#Convert gene IDs to a character vector
gene_ids <- as.character(gene_ids$V1)

#Get gene info including coordinates
gene_info <- getBM(attributes = c("ensembl_gene_id", "chromosome_name", "start_position", "end_position"),
                   filters = "ensembl_gene_id",
                   values = gene_ids,
                   mart = ensembl)
                   
### Checking for duplicates (R)
#Check for duplicates in ensembl_gene_id column
duplicates <- gene_info[duplicated(gene_info$ensembl_gene_id), ]

if (nrow(duplicates) > 0) {
  cat("Duplicates found in ensembl_gene_id column:\n")
  print(duplicates)
} else {
  cat("No duplicates found in ensembl_gene_id column.\n")
}

### Finding unmethylated gene IDs per cell type (on eg of epgcn matrix/ threshold 0.5/0.7) (Python) 
import csv

def check_methylation(csv_file, threshold=0.3, output_file='unmethylated_genes_epgcn.txt'):
    unmethylated_genes = []
    
    # Read the CSV file
    with open(csv_file, 'r') as file:
        reader = csv.reader(file)
        header = next(reader)  # Skip header row
        
        # Transpose data to iterate over columns
        data = list(zip(*reader))
    
    # Iterate over transposed data
    for i, gene_values in enumerate(data[1:], start=1):
        gene_id = header[i]
        num_cells = len(gene_values)
        num_below_threshold = sum(1 for value in gene_values if float(value) < threshold)
        if num_below_threshold / num_cells >= 0.5:
            unmethylated_genes.append(gene_id)
    
    # Write unmethylated genes to a text file
    with open(output_file, 'w') as outfile:
        for gene_id in unmethylated_genes:
            outfile.write(gene_id + '\n')
    
    return unmethylated_genes

#Epgcn  usage:
csv_file = 'epgcn_matrix.csv'
output_file = 'unmethylated_genes_epgcn.txt'
unmethylated_genes = check_methylation(csv_file, output_file=output_file)
print("Unmethylated genes:", unmethylated_genes)
print("Unmethylated genes saved to:", output_file)

### Geting the coordinates of genes as above in R

