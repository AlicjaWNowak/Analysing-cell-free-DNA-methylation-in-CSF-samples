#ADJUST BED FILE FOR GREAT
#Create variables from the ordered data frames
oligo_brain_order_chrom <- oligodendrocyte_brain_ordered$V1
oligo_brain_order_start <- oligodendrocyte_brain_ordered$V2
oligo_brain_order_end <- oligodendrocyte_brain_ordered$V3

oligo_switch_order_chrom <- oligodendrocyte_switch_ordered$V1
oligo_switch_order_start <- oligodendrocyte_switch_ordered$V2
oligo_switch_order_end <- oligodendrocyte_switch_ordered$V3

oligo_loyfer_chrom <- oligodendrocyte_loyfer_ordered$V1
oligo_loyfer_start <- oligodendrocyte_loyfer_ordered$V2
oligo_loyfer_end <- oligodendrocyte_loyfer_ordered$V3

#Create new data frames for GREAT gene analysis
GREAT_oligo_brain_df <- data.frame(
  oligo_brain_order_chrom = oligo_brain_order_chrom,
  oligo_brain_order_start = oligo_brain_order_start,
  oligo_brain_order_end = oligo_brain_order_end
)

GREAT_oligo_switch_df <- data.frame(
  oligo_switch_order_chrom = oligo_switch_order_chrom,
  oligo_switch_order_start = oligo_switch_order_start,
  oligo_switch_order_end = oligo_switch_order_end
)

GREAT_oligo_loyfer_df <- data.frame(
  oligo_loyfer_chrom = oligo_loyfer_chrom,
  oligo_loyfer_start = oligo_loyfer_start,
  oligo_loyfer_end = oligo_loyfer_end
)
# Create bed files from df

write.table(GREAT_oligo_brain_df, file = "GREAT_oligo_brain.bed", quote = FALSE, sep = "\t", row.names = FALSE, col.names = FALSE)

write.table(GREAT_oligo_switch_df, file = "GREAT_oligo_switch.bed", quote = FALSE, sep = "\t", row.names = FALSE, col.names = FALSE)

write.table(GREAT_oligo_loyfer_df, file = "GREAT_oligo_loyfer.bed", quote = FALSE, sep = "\t", row.names = FALSE, col.names = FALSE)
