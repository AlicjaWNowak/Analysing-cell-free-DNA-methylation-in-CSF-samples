#Create variables
CpG_means <- c(mean_CpG_oligo_brain, mean_CpG_oligo_switch, mean_CpG_oligo_loyfer)
sd_CpG <- c(sd_CpG_oligo_brain, sd_CpG_oligo_brain, sd_CpG_oligo_switch)
bp_means <- c(mean_bp_oligo_brain, mean_bp_oligo_loyfer, mean_bp_oligo_switch)
sd_bp <- c(sd_bp_oligo_brain, sd_bp_oligo_loyfer, sd_bp_oligo_switch)
delta_quants_mean <- c(mean_delta_oligo_loyfer, mean_delta_oligo_brain, mean_delta_oligo_switch)
sd_delta_quants <- c(sd_delta_oligo_brain, sd_delta_oligo_loyfer, sd_delta_oligo_switch)
meth_means <- c(mean_meth_oligo_brain, mean_meth_oligo_loyfer, mean_meth_oligo_switch)
sd_meth <- c(sd_meth_oligo_brain, sd_meth_oligo_loyfer, sd_meth_oligo_switch)
#Create a data frame
df_oligo_markers <- data.frame(
  CpG_means = CpG_means,
  sd_CpG = sd_CpG,
  bp_means = bp_means,
  sd_bp = sd_bp,
  delta_quants_mean = delta_quants_mean,
  sd_delta_quants = sd_delta_quants,
  meth_means = meth_means,
  sd_meth = sd_meth,
  meth_median = meth_median
)
#Add data column
df_oligo_markers$Data <- c("Brain", "Switch", "Loyfer")


#Plot of CpG means with sd
ggplot(df_oligo_markers, aes(x= factor(1), y= CpG_means, fill= Data)) +
  geom_col(position = position_dodge(width = 0.9)) +
  geom_errorbar(aes(ymin= CpG_means - sd_CpG, ymax = CpG_means + sd_CpG), width = 0.2, color ="black", position = position_dodge(width = 0.9)) +
  labs(title = "Mean CpG number in marker regions", 
       x = "",
       y= "Mean CpG number",
       fill = "Data") +
  scale_fill_manual(values= c("Brain" = "skyblue", "Switch" = "pink", "Loyfer"="yellow")) +
  theme(legend.position = "bottom") 
#Plot of bp means with sd
ggplot(df_oligo_markers, aes(x= factor(1), y= bp_means, fill= Data)) +
  geom_col(position = position_dodge(width = 0.9)) +
  geom_errorbar(aes(ymin= bp_means - sd_bp, ymax = CpG_means + sd_bp), width = 0.2, color ="black", position = position_dodge(width = 0.9)) +
  labs(title = "Mean bp  in marker regions", 
       x = "",
       y= "Mean bp number",
       fill = "Data") +
  scale_fill_manual(values= c("Brain" = "skyblue", "Switch" = "pink", "Loyfer"="yellow")) +
  theme(legend.position = "bottom") 
#Plot meth mean
ggplot(df_oligo_markers, aes(x= factor(1), y= meth_means, fill= Data)) +
  geom_col(position = position_dodge(width = 0.9)) +
  geom_errorbar(aes(ymin= meth_means - sd_meth, ymax = meth_means + sd_meth), width = 0.2, color ="black", position = position_dodge(width = 0.9)) +
  labs(title = "Mean methylation  in marker regions", 
       x = "",
       y= "Mean methylation",
       fill = "Data") +
  scale_fill_manual(values= c("Brain" = "skyblue", "Switch" = "pink", "Loyfer"="yellow")) +
  theme(legend.position = "bottom") 
#Plot mean delta quants
ggplot(df_oligo_markers, aes(x= factor(1), y= delta_quants_mean, fill= Data)) +
  geom_col(position = position_dodge(width = 0.9)) +
  geom_errorbar(aes(ymin= delta_quants_mean - sd_delta_quants, ymax = delta_quants_mean +sd_delta_quants), width = 0.2, color ="black", position = position_dodge(width = 0.9)) +
  labs(title = "Mean delta qunats of marker regions", 
       x = "",
       y= "Mean delta quants",
       fill = "Data") +
  scale_fill_manual(values= c("Brain" = "skyblue", "Switch" = "pink", "Loyfer"="yellow")) +
  theme(legend.position = "bottom") 