#Import tables into R
brain_tabula_mauris <- read.table("/Users/alicjanowak/Desktop/Masters/RP/Oligo_markers/brain_oligo_Tabula_Muris_table.txt", header = TRUE, sep = "\t")
brain_cell_maker <- read.table("/Users/alicjanowak/Desktop/Masters/RP/Oligo_markers/brain_oligo_CellMarker_2024_table.txt", header = TRUE, sep = "\t")
loyfer_tabula_mauris <- read.table("/Users/alicjanowak/Desktop/Masters/RP/Oligo_markers/loyfer_oligo_Tabula_Muris_table.txt", header = TRUE, sep = "\t")
loyfer_cell_maker <- read.table("/Users/alicjanowak/Desktop/Masters/RP/Oligo_markers/Loyfer_oligo_CellMarker_2024_table.txt", header = TRUE, sep = "\t")
switch_tabula_mauris <- read.table("/Users/alicjanowak/Desktop/Masters/RP/Oligo_markers/switch_oligo_Tabula_Muris_table.txt", header = TRUE, sep = "\t")
switch_cell_maker <- read.table("/Users/alicjanowak/Desktop/Masters/RP/Oligo_markers/switch_oligo_CellMarker_2024_table.txt", header = TRUE, sep = "\t")

#Subset the first 10 rows
subset_brain_tabula_mauris <- brain_tabula_mauris[1:10, ]
subset_brain_cell_maker <- brain_cell_maker[1:10, ]
subset_loyfer_tabula_mauris <- loyfer_tabula_mauris[1:10, ]
subset_loyfer_cell_maker <- loyfer_cell_maker[1:10, ]
subset_switch_tabula_mauris <- switch_tabula_mauris[1:10, ]
subset_switch_cell_maker <- switch_cell_maker[1:10, ]

#Plot the p values
ggplot(subset_brain_cell_maker, aes(x= Term, y = -log10(P.value), size = gene_overlap)) +
  geom_point() +
  labs(title = "Gene enrichment from Tian markers",
       x= "Cell Type",
       y= "-log10(p-value)") +
  scale_size_continuous(range = c(1,5)) +
  theme(axis.text.x = element_text(angle = 45, hjust = 1),
        legend.position = "left") +
  scale_x_discrete(limits=subset_brain_cell_maker$Term)