#Rearrange the data frame acoridng to delta quants in an descending order
oligodendrocyte_switch_ordered <- arrange(oligodendrocyte_switch, desc(V13))
oligodendrocyte_brain_ordered <- arrange(oligodendrocyte_brain, desc(V13))
oligodendrocyte_loyfer_ordered <- arrange (oligodendrocyte_loyfer, desc(V13))

# Get mean CpG size and SD
mean_CpG_oligo_switch <- mean(oligodendrocyte_switch_ordered$V8_clean, na.rm = TRUE)
print(mean_CpG_oligo_switch)
sd_CpG_oligo_switch <- sd(oligodendrocyte_switch_ordered$V8_clean, na.rm = TRUE)
print(sd_CpG_oligo_switch)

mean_CpG_oligo_brain <- mean(oligodendrocyte_brain_ordered$V8_clean, na.rm = TRUE)
print(mean_CpG_oligo_brain)
sd_CpG_oligo_brain <- sd(oligodendrocyte_brain_ordered$V8_clean, na.rm = TRUE)
print(sd_CpG_oligo_brain)

mean_CpG_oligo_loyfer <- mean(oligodendrocyte_loyfer_ordered$V8_clean, na.rm = TRUE)
print(mean_CpG_oligo_loyfer)
sd_CpG_oligo_loyfer <- sd(oligodendrocyte_loyfer_ordered$V8_clean, na.rm = TRUE)
print(sd_CpG_oligo_loyfer)

# Get mean bp length and SD
mean_bp_oligo_switch <- mean(oligodendrocyte_switch_ordered$V9_clean, na.rm = TRUE)
print(mean_bp_oligo_switch)
sd_bp_oligo_switch <- sd(oligodendrocyte_switch_ordered$V9_clean, na.rm = TRUE)
print(sd_bp_oligo_switch)

mean_bp_oligo_brain <- mean(oligodendrocyte_brain_ordered$V9_clean, na.rm = TRUE)
print(mean_bp_oligo_brain)
sd_bp_oligo_brain <- sd(oligodendrocyte_brain_ordered$V9_clean, na.rm = TRUE)
print(sd_bp_oligo_brain)

mean_bp_oligo_loyfer <- mean(oligodendrocyte_loyfer_ordered$V9_clean, na.rm = TRUE)
print(mean_bp_oligo_loyfer)
sd_bp_oligo_loyfer <- sd(oligodendrocyte_loyfer_ordered$V9_clean, na.rm = TRUE)
print(sd_bp_oligo_loyfer)
#Get mean delta quant and SD
mean_delta_oligo_switch <- mean(oligodendrocyte_switch_ordered$V13)
print(mean_delta_oligo_switch)
sd_delta_oligo_switch <- sd(oligodendrocyte_switch_ordered$V13)
print(sd_delta_oligo_switch)

mean_delta_oligo_brain <- mean(oligodendrocyte_brain_ordered$V13)
print(mean_delta_oligo_brain)
sd_delta_oligo_brain <- sd(oligodendrocyte_brain_ordered$V13)
print(sd_delta_oligo_brain)

mean_delta_oligo_loyfer <- mean(oligodendrocyte_loyfer_ordered$V13)
print(mean_delta_oligo_loyfer)
sd_delta_oligo_loyfer <- sd(oligodendrocyte_loyfer_ordered$V13)
print(sd_delta_oligo_loyfer)
#Get mean methylation and SD
mean_meth_oligo_switch <- mean(oligodendrocyte_switch_ordered$V10)
print(mean_meth_oligo_switch)
sd_meth_oligo_switch <- sd(oligodendrocyte_switch_ordered$V10)
print(sd_meth_oligo_switch)

mean_meth_oligo_brain <- mean(oligodendrocyte_brain_ordered$V10)
print(mean_meth_oligo_brain)
sd_meth_oligo_brain <- sd(oligodendrocyte_brain_ordered$V10)
print(sd_meth_oligo_brain)

mean_meth_oligo_loyfer <- mean(oligodendrocyte_loyfer_ordered$V10)
print(mean_meth_oligo_loyfer)
sd_meth_oligo_loyfer <- sd(oligodendrocyte_loyfer_ordered$V10)
print(sd_meth_oligo_loyfer)
#Get median methylation
median_meth_oligo_switch <- median(oligodendrocyte_switch_ordered$V10)
print(median_meth_oligo_switch)

median_meth_oligo_brain <- median(oligodendrocyte_brain_ordered$V10)
print(median_meth_oligo_brain)

median_meth_oligo_loyfer <- median(oligodendrocyte_loyfer_ordered$V10)
print(median_meth_oligo_loyfer)
