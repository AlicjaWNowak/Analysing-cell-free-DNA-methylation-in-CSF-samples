
#Create input for CellFie
#Samples
cereb_neuron_meth<-segments_of_interest_cerebellum_neuron$V1
cereb_neuron_depth<-segments_of_interest_cerebellum_neuron$V2

cortex_neuron_meth<-segments_of_interest_cortex_neuron$V1
cortex_neuron_depth<-segments_of_interest_cortex_neuron$V2

neuron_meth<-segments_of_interest_neuron$V1
neuron_depth<-segments_of_interest_neuron$V2

oligo_meth<-segments_of_interest_oligodendrocyte$V1
oligo_depth<-segments_of_interest_oligodendrocyte$V2
#Known tissues
Adypocyte_meth<-segments_of_interest_Adipocytes$Adipocyte_meth
Adypocyte_depth<-segments_of_interest_Adipocytes$Adipocyte_depth

Amy_meth<-segments_of_interest_Amy$Amy_meth
Amy_depth<-segments_of_interest_Amy$Amy_depth

ASC_meth<-segments_of_interest_ASC$ASC_meth
ASC_depth<-segments_of_interest_ASC$ASC_depth

Blood_NK_meth<-segments_of_interest_Blood_NK$Blood_NK_meth
Blood_NK_depth<-segments_of_interest_Blood_NK$Blood_NK_depth

Blood_T_meth<-segments_of_interest_Blood_T$Blood_T_meth
Blood_T_depth<-segments_of_interest_Blood_T$Blood_T_depth

Blood_B_meth<-segments_of_interest_Blood_B$Blood_B_meth
Blood_B_depth<-segments_of_interest_Blood_B$Blood_B_depth

CA1_meth<-segments_of_interest_CA1$CA1_meth
CA1_depth<-segments_of_interest_CA1$CA1_depth

CA2_meth<-segments_of_interest_CA2$CA2_meth
CA2_depth<-segments_of_interest_CA2$CA2_depth

CA3_meth<-segments_of_interest_CA3$CA3_meth
CA3_depth<-segments_of_interest_CA3$CA3_depth

CB_meth<-segments_of_interest_CB$CB_meth
CB_depth<-segments_of_interest_CB$CB_depth

CIN1_meth<-segments_of_interest_CIN1$CIN1_meth
CIN1_depth<-segments_of_interest_CIN1$CIN2_depth

CIN2_meth<-segments_of_interest_CIN2$CIN2_meth
CIN2_depth<-segments_of_interest_CIN2$CIN2_depth

DG_meth<-segments_of_interest_DG$DG_meth
DG_depth<-segments_of_interest_DG$DG_depth

EC_meth<-segments_of_interest_EC$EC_meth
EC_depth<-segments_of_interest_EC$EC_depth

Epithelial_meth<-segments_of_interest_Epithelial$Epithelial_meth
Epithelial_depth<-segments_of_interest_Epithelial$Epithelial_depth

Foxp2_meth<-segments_of_interest_Foxp2$Foxp2_meth
Foxp2_depth<-segments_of_interest_Foxp2$Foxp2_depth

Granulocytes_meth<-segments_of_interest_Granulocytes$Granulocyte_meth
Granulocytes_depth<-segments_of_interest_Granulocytes$Granulocyte_depth

HIF_Unk1_meth<-segments_of_interest_HIF_Unk1$HIF_Unk1_meth
HIF_Unk1_depth<-segments_of_interest_HIF_Unk1$HIF_Unk1_depth

IPEN1_meth<-segments_of_interest_IPEN1$IPEN1_meth
IPEN1_depth<-segments_of_interest_IPEN1$IPEN1_depth

IPEN2_meth<-segments_of_interest_IPEN2$IPEN2_meth
IPEN2_depth<-segments_of_interest_IPEN2$IPEN2_depth

L5_ET_meth<-segments_of_interest_L5_ET$L5_ET_meth
L5_ET_depth<-segments_of_interest_L5_ET$L5_ET_depth

L6_CT_meth<-segments_of_interest_L6_CT$L6_CT_meth
L6_CT_depth<-segments_of_interest_L6_CT$L6_CT_depth

L6_IT_Car3_meth<-segments_of_interest_L6_IT_Car3$L6_IT_Car3_meth
L6_IT_Car3_depth<-segments_of_interest_L6_IT_Car3$L6_IT_Car2_depth

L6b_meth<-segments_of_interest_L6b$L6b_meth
L6b_depth<-segments_of_interest_L6b$L6b_depth

L56_NP_meth<-segments_of_interest_L56_NP$L56_NP_meth
L56_NP_depth<-segments_of_interest_L56_NP$L56_NP_depth

Lamp5_meth<-segments_of_interest_Lamp5$Lamp5_meth
Lamp5_depth<-segments_of_interest_Lamp5$Lamp5_depth

MGC_meth<-segments_of_interest_MGC$MGC_meth
MGC_depth<-segments_of_interest_MGC$MGC_depth

Monocyte_meth<-segments_of_interest_Monocytes$Monocytes_meth
Monocyte_depth<-segments_of_interest_Monocytes$Monocytes_depth

MSN_D1_meth<-segments_of_interest_MSN_D1$MSN_D1_meth
MSN_D1_depth<-segments_of_interest_MSN_D1$MSN_D1_depth

ODC_meth<-segments_of_interest_ODC$ODC_meth
ODC_depth<-segments_of_interest_ODC$ODC_depth

OPC_meth<-segments_of_interest_OPC$OPC_meth
OPC_depth<-segments_of_interest_OPC$OPC_depth

PC_meth<-segments_of_interest_PC$PC_meth
PC_depth<-segments_of_interest_PC$PC_depth

PKJ_meth<-segments_of_interest_PKJ$PKJ_meth
PKJ_depth<-segments_of_interest_PKJ$PKJ_depth

PN_meth<-segments_of_interest_PN$PN_meth
PN_depth<-segments_of_interest_PN$PN_depth

Skeletal_Muscle_meth<-segments_of_interest_Skeletal_Muscle$Skeletal_Muscle_meth
Skeletal_Muscle_depth<-segments_of_interest_Skeletal_Muscle$Skeletal_Muscle_depth

Smooth_Muscle_meth<-segments_of_interest_Smooth_Muscle$Smooth_Muscle_meth
Smooth_Muscle_depth<-segments_of_interest_Smooth_Muscle$Smooth_Muscle_depth

SubCtx_meth<-segments_of_interest_SubCtx$SubCtx_meth
SubCtx_depth<-segments_of_interest_SubCtx$SubCtx_depth

THM_Exc_meth<-segments_of_interest_THM_Exc$THM_Exc_meth
THM_Exc_depth<-segments_of_interest_THM_Exc$THM_Exc_depth

THM_Inh_meth<-segments_of_interest_THM_Inh$THM_Inh_meth
THM_Inh_depth<-segments_of_interest_THM_Inh$THM_Inh_depth

THM_MB_meth<-segments_of_interest_THM_MB$THM_MB_meth
THM_MB_depth<-segments_of_interest_THM_MB$THM_MB_depth

VLMC_meth<-segments_of_interest_VLMC$VLMC_meth
VLMC_depth<-segments_of_interest_VLMC$VLMC_depth

#Hydrocephalus samples
SRR10725749_meth<-segments_of_interest_SRR10725749$SRR10725749_meth
SRR10725749_depth<-segments_of_interest_SRR10725749$SRR10725749_depth
SRR10725750_meth<-segments_of_interest_SRR10725750$SRR10725750_meth
SRR10725750_depth<-segments_of_interest_SRR10725750$SRR10725750_depth
SRR10725751_meth<-segments_of_interest_SRR10725751$SRR10725751_meth
SRR10725751_depth<-segments_of_interest_SRR10725751$SRR10725751_depth
SRR10725752_meth<-segments_of_interest_SRR10725752$SRR10725752_meth
SRR10725752_depth<-segments_of_interest_SRR10725752$SRR10725752_depth

sample1_meth<-segments_of_interest_barcode1$V1
sample1_depth<-segments_of_interest_barcode1$V2

#Loyfer oligo samples
oligo1_meth<-segments_of_interest_oligo1$V1
oligo1_depth<-segments_of_interest_oligo1$V2

oligo2_meth<-segments_of_interest_oligo2$V1
oligo2_depth<-segments_of_interest_oligo2$V2

oligo3_meth<-segments_of_interest_oligo3$V1
oligo3_depth<-segments_of_interest_oligo3$V2

oligo4_meth<-segments_of_interest_oligo4$V1
oligo4_depth<-segments_of_interest_oligo4$V2

CellFie_input_loyfer_samples<-data.frame(chromosome=chromosome, start=start, end=end, cereb_neuron_meth=cereb_neuron_meth, cereb_neuron_depth=cereb_neuron_depth, cortex_neuron_meth=cortex_neuron_meth, cortex_neuron_depth=cortex_neuron_depth, neuron_meth=neuron_meth, neuron_depth=neuron_depth, oligo_meth=oligo_meth, oligo_depth=oligo_depth, chromosome=chromosome, start=start, end=end,  Adypocyte_meth=Adypocyte_meth, Adypocyte_depth=Adypocyte_depth, Amy_meth=Amy_meth, Amy_depth=Amy_depth, ASC_meth=ASC_meth, ASC_depth=ASC_depth, Blood_NK_meth=Blood_NK_meth, Blood_NK_depth=Blood_NK_depth, Blood_T_meth=Blood_T_meth, Blood_T_depth=Blood_T_depth, Blood_B_meth=Blood_B_meth, Blood_B_depth=Blood_B_depth, CA1_meth=CA1_meth, CA1_depth=CA1_depth, CA2_meth=CA2_meth, CA2_depth=CA2_depth, CA3_meth=CA3_meth, CA3_depth=CA3_depth, CB_meth=CB_meth, CB_depth=CB_depth, CIN1_meth=CIN1_meth, CIN1_depth=CIN1_depth, CIN2_meth=CIN2_meth, CIN2_depth=CIN2_depth, DG_meth=DG_meth, DG_depth=DG_depth, EC_meth=EC_meth, EC_depth=EC_depth, Epithelial_meth=Epithelial_meth, Epithelial_depth=Epithelial_depth, Foxp2_meth=Foxp2_meth, Foxp2_depth=Foxp2_depth, Granulocytes_meth=Granulocytes_meth, Granulocytes_depth=Granulocytes_depth, HIF_Unk1_meth=HIF_Unk1_meth, HIF_Unk1_depth=HIF_Unk1_depth, IPEN1_meth=IPEN1_meth, IPEN1_depth=IPEN1_depth, IPEN2_meth=IPEN2_meth, IPEN2_depth=IPEN2_depth, L5_ET_meth=L5_ET_meth, L5_ET_depth=L5_ET_depth, L6_CT_meth=L6_CT_meth, L6_CT_depth=L6_CT_depth, L6_IT_Car3_meth=L6_IT_Car3_meth, L6_IT_Car3_depth=L6_IT_Car3_depth, L6b_meth=L6b_meth, L6b_depth=L6b_depth, L56_NP_meth=L56_NP_meth, L56_NP_depth=L56_NP_depth, Lamp5_meth=Lamp5_meth, Lamp5_depth=Lamp5_depth, MGC_meth=MGC_meth, MGC_depth=MGC_depth, Monocyte_meth=Monocyte_meth, Monocyte_depth=Monocyte_depth, MSN_D1_meth=MSN_D1_meth, MSN_D1_depth=MSN_D1_depth, ODC_meth=ODC_meth, ODC_depth=ODC_depth, OPC_meth=OPC_meth, OPC_depth=OPC_depth, PC_meth=PC_meth, PC_depth=PC_depth, PKJ_meth=PKJ_meth, PKJ_depth=PKJ_depth, PN_meth=PN_meth, PN_depth=PN_depth, Skeletal_Muscle_meth=Skeletal_Muscle_meth, Skeletal_Muscle_depth=Skeletal_Muscle_depth, Smooth_Muscle_meth=Smooth_Muscle_meth, Smooth_Muscle_depth=Smooth_Muscle_depth, SubCtx_meth=SubCtx_meth, SubCtx_depth=SubCtx_depth, THM_Exc_meth=THM_Exc_meth, THM_Exc_depth=THM_Exc_depth, THM_Inh_meth=THM_Inh_meth, THM_Inh_depth=THM_Inh_depth, THM_MB_meth=THM_MB_meth, THM_MB_depth=THM_MB_depth, VLMC_meth=VLMC_meth, VLMC_depth=VLMC_depth)
CellFie_input_hydrocephalus_samples<-data.frame(chromosome=chromosome, start=start, end=end, SRR10725749_meth=SRR10725749_meth, SRR10725749_depth=SRR10725749_depth, SRR10725750_meth=SRR10725750_meth, SRR10725750_depth=SRR10725750_depth, SRR10725751_meth=SRR10725751_meth, SRR10725751_depth=SRR10725751_depth, SRR10725752_meth=SRR10725752_meth, SRR10725752_depth=SRR10725752_depth, chromosome=chromosome, start=start, end=end,  Adypocyte_meth=Adypocyte_meth, Adypocyte_depth=Adypocyte_depth, Amy_meth=Amy_meth, Amy_depth=Amy_depth, ASC_meth=ASC_meth, ASC_depth=ASC_depth, Blood_NK_meth=Blood_NK_meth, Blood_NK_depth=Blood_NK_depth, Blood_T_meth=Blood_T_meth, Blood_T_depth=Blood_T_depth, Blood_B_meth=Blood_B_meth, Blood_B_depth=Blood_B_depth, CA1_meth=CA1_meth, CA1_depth=CA1_depth, CA2_meth=CA2_meth, CA2_depth=CA2_depth, CA3_meth=CA3_meth, CA3_depth=CA3_depth, CB_meth=CB_meth, CB_depth=CB_depth, CIN1_meth=CIN1_meth, CIN1_depth=CIN1_depth, CIN2_meth=CIN2_meth, CIN2_depth=CIN2_depth, DG_meth=DG_meth, DG_depth=DG_depth, EC_meth=EC_meth, EC_depth=EC_depth, Epithelial_meth=Epithelial_meth, Epithelial_depth=Epithelial_depth, Foxp2_meth=Foxp2_meth, Foxp2_depth=Foxp2_depth, Granulocytes_meth=Granulocytes_meth, Granulocytes_depth=Granulocytes_depth, HIF_Unk1_meth=HIF_Unk1_meth, HIF_Unk1_depth=HIF_Unk1_depth, IPEN1_meth=IPEN1_meth, IPEN1_depth=IPEN1_depth, IPEN2_meth=IPEN2_meth, IPEN2_depth=IPEN2_depth, L5_ET_meth=L5_ET_meth, L5_ET_depth=L5_ET_depth, L6_CT_meth=L6_CT_meth, L6_CT_depth=L6_CT_depth, L6_IT_Car3_meth=L6_IT_Car3_meth, L6_IT_Car3_depth=L6_IT_Car3_depth, L6b_meth=L6b_meth, L6b_depth=L6b_depth, L56_NP_meth=L56_NP_meth, L56_NP_depth=L56_NP_depth, Lamp5_meth=Lamp5_meth, Lamp5_depth=Lamp5_depth, MGC_meth=MGC_meth, MGC_depth=MGC_depth, Monocyte_meth=Monocyte_meth, Monocyte_depth=Monocyte_depth, MSN_D1_meth=MSN_D1_meth, MSN_D1_depth=MSN_D1_depth, ODC_meth=ODC_meth, ODC_depth=ODC_depth, OPC_meth=OPC_meth, OPC_depth=OPC_depth, PC_meth=PC_meth, PC_depth=PC_depth, PKJ_meth=PKJ_meth, PKJ_depth=PKJ_depth, PN_meth=PN_meth, PN_depth=PN_depth, Skeletal_Muscle_meth=Skeletal_Muscle_meth, Skeletal_Muscle_depth=Skeletal_Muscle_depth, Smooth_Muscle_meth=Smooth_Muscle_meth, Smooth_Muscle_depth=Smooth_Muscle_depth, SubCtx_meth=SubCtx_meth, SubCtx_depth=SubCtx_depth, THM_Exc_meth=THM_Exc_meth, THM_Exc_depth=THM_Exc_depth, THM_Inh_meth=THM_Inh_meth, THM_Inh_depth=THM_Inh_depth, THM_MB_meth=THM_MB_meth, THM_MB_depth=THM_MB_depth, VLMC_meth=VLMC_meth, VLMC_depth=VLMC_depth) 
CellFie_input_sample1<-data.frame(chromosome=chromosome, start=start, end=end, sample1_meth=sample1_meth, sample1_depth=sample1_depth, chromosome=chromosome, start=start, end=end,  Adypocyte_meth=Adypocyte_meth, Adypocyte_depth=Adypocyte_depth, Amy_meth=Amy_meth, Amy_depth=Amy_depth, ASC_meth=ASC_meth, ASC_depth=ASC_depth, Blood_NK_meth=Blood_NK_meth, Blood_NK_depth=Blood_NK_depth, Blood_T_meth=Blood_T_meth, Blood_T_depth=Blood_T_depth, Blood_B_meth=Blood_B_meth, Blood_B_depth=Blood_B_depth, CA1_meth=CA1_meth, CA1_depth=CA1_depth, CA2_meth=CA2_meth, CA2_depth=CA2_depth, CA3_meth=CA3_meth, CA3_depth=CA3_depth, CB_meth=CB_meth, CB_depth=CB_depth, CIN1_meth=CIN1_meth, CIN1_depth=CIN1_depth, CIN2_meth=CIN2_meth, CIN2_depth=CIN2_depth, DG_meth=DG_meth, DG_depth=DG_depth, EC_meth=EC_meth, EC_depth=EC_depth, Epithelial_meth=Epithelial_meth, Epithelial_depth=Epithelial_depth, Foxp2_meth=Foxp2_meth, Foxp2_depth=Foxp2_depth, Granulocytes_meth=Granulocytes_meth, Granulocytes_depth=Granulocytes_depth, HIF_Unk1_meth=HIF_Unk1_meth, HIF_Unk1_depth=HIF_Unk1_depth, IPEN1_meth=IPEN1_meth, IPEN1_depth=IPEN1_depth, IPEN2_meth=IPEN2_meth, IPEN2_depth=IPEN2_depth, L5_ET_meth=L5_ET_meth, L5_ET_depth=L5_ET_depth, L6_CT_meth=L6_CT_meth, L6_CT_depth=L6_CT_depth, L6_IT_Car3_meth=L6_IT_Car3_meth, L6_IT_Car3_depth=L6_IT_Car3_depth, L6b_meth=L6b_meth, L6b_depth=L6b_depth, L56_NP_meth=L56_NP_meth, L56_NP_depth=L56_NP_depth, Lamp5_meth=Lamp5_meth, Lamp5_depth=Lamp5_depth, MGC_meth=MGC_meth, MGC_depth=MGC_depth, Monocyte_meth=Monocyte_meth, Monocyte_depth=Monocyte_depth, MSN_D1_meth=MSN_D1_meth, MSN_D1_depth=MSN_D1_depth, ODC_meth=ODC_meth, ODC_depth=ODC_depth, OPC_meth=OPC_meth, OPC_depth=OPC_depth, PC_meth=PC_meth, PC_depth=PC_depth, PKJ_meth=PKJ_meth, PKJ_depth=PKJ_depth, PN_meth=PN_meth, PN_depth=PN_depth, Skeletal_Muscle_meth=Skeletal_Muscle_meth, Skeletal_Muscle_depth=Skeletal_Muscle_depth, Smooth_Muscle_meth=Smooth_Muscle_meth, Smooth_Muscle_depth=Smooth_Muscle_depth, SubCtx_meth=SubCtx_meth, SubCtx_depth=SubCtx_depth, THM_Exc_meth=THM_Exc_meth, THM_Exc_depth=THM_Exc_depth, THM_Inh_meth=THM_Inh_meth, THM_Inh_depth=THM_Inh_depth, THM_MB_meth=THM_MB_meth, THM_MB_depth=THM_MB_depth, VLMC_meth=VLMC_meth, VLMC_depth=VLMC_depth) 
CellFie_input_loyfer_oligo<-data.frame(chromosome=chromosome, start=start, end=end, oligo1_meth=oligo1_meth, oligo1_depth=oligo1_depth, oligo2_meth=oligo2_meth, oligo2_depth=oligo2_depth, oligo3_meth=oligo3_meth, oligo3_depth=oligo3_depth, oligo4_meth=oligo4_meth, oligo4_dpeth=oligo4_depth, chromosome=chromosome, start=start, end=end,  Adypocyte_meth=Adypocyte_meth, Adypocyte_depth=Adypocyte_depth, Amy_meth=Amy_meth, Amy_depth=Amy_depth, ASC_meth=ASC_meth, ASC_depth=ASC_depth, Blood_NK_meth=Blood_NK_meth, Blood_NK_depth=Blood_NK_depth, Blood_T_meth=Blood_T_meth, Blood_T_depth=Blood_T_depth, Blood_B_meth=Blood_B_meth, Blood_B_depth=Blood_B_depth, CA1_meth=CA1_meth, CA1_depth=CA1_depth, CA2_meth=CA2_meth, CA2_depth=CA2_depth, CA3_meth=CA3_meth, CA3_depth=CA3_depth, CB_meth=CB_meth, CB_depth=CB_depth, CIN1_meth=CIN1_meth, CIN1_depth=CIN1_depth, CIN2_meth=CIN2_meth, CIN2_depth=CIN2_depth, DG_meth=DG_meth, DG_depth=DG_depth, EC_meth=EC_meth, EC_depth=EC_depth, Epithelial_meth=Epithelial_meth, Epithelial_depth=Epithelial_depth, Foxp2_meth=Foxp2_meth, Foxp2_depth=Foxp2_depth, Granulocytes_meth=Granulocytes_meth, Granulocytes_depth=Granulocytes_depth, HIF_Unk1_meth=HIF_Unk1_meth, HIF_Unk1_depth=HIF_Unk1_depth, IPEN1_meth=IPEN1_meth, IPEN1_depth=IPEN1_depth, IPEN2_meth=IPEN2_meth, IPEN2_depth=IPEN2_depth, L5_ET_meth=L5_ET_meth, L5_ET_depth=L5_ET_depth, L6_CT_meth=L6_CT_meth, L6_CT_depth=L6_CT_depth, L6_IT_Car3_meth=L6_IT_Car3_meth, L6_IT_Car3_depth=L6_IT_Car3_depth, L6b_meth=L6b_meth, L6b_depth=L6b_depth, L56_NP_meth=L56_NP_meth, L56_NP_depth=L56_NP_depth, Lamp5_meth=Lamp5_meth, Lamp5_depth=Lamp5_depth, MGC_meth=MGC_meth, MGC_depth=MGC_depth, Monocyte_meth=Monocyte_meth, Monocyte_depth=Monocyte_depth, MSN_D1_meth=MSN_D1_meth, MSN_D1_depth=MSN_D1_depth, ODC_meth=ODC_meth, ODC_depth=ODC_depth, OPC_meth=OPC_meth, OPC_depth=OPC_depth, PC_meth=PC_meth, PC_depth=PC_depth, PKJ_meth=PKJ_meth, PKJ_depth=PKJ_depth, PN_meth=PN_meth, PN_depth=PN_depth, Skeletal_Muscle_meth=Skeletal_Muscle_meth, Skeletal_Muscle_depth=Skeletal_Muscle_depth, Smooth_Muscle_meth=Smooth_Muscle_meth, Smooth_Muscle_depth=Smooth_Muscle_depth, SubCtx_meth=SubCtx_meth, SubCtx_depth=SubCtx_depth, THM_Exc_meth=THM_Exc_meth, THM_Exc_depth=THM_Exc_depth, THM_Inh_meth=THM_Inh_meth, THM_Inh_depth=THM_Inh_depth, THM_MB_meth=THM_MB_meth, THM_MB_depth=THM_MB_depth, VLMC_meth=VLMC_meth, VLMC_depth=VLMC_depth) 
