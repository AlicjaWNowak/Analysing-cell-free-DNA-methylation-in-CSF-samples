markers_adipocyte<-read.table("/Users/alicjanowak/Desktop/Masters/FinalMarkersNewGroups/Markers.Adipocyte.bed")
markers_adipocyte_order<-markers_adipocyte %>% arrange(desc(V13))
markers_adipocyte_500<-markers_adipocyte_order
markers_amy<-read.table("/Users/alicjanowak/Desktop/Masters/FinalMarkersNewGroups/Markers.Amy.bed")
markers_amy_order<-markers_amy %>% arrange(desc(V13))
markers_amy_500<-markers_amy_order[1:500, ]

markers_asc<-read.table("/Users/alicjanowak/Desktop/Masters/FinalMarkersNewGroups/Markers.ASC.bed")
markers_asc_order<-markers_asc %>% arrange(desc(V13))
markers_asc_500<-markers_asc_order[1:500, ]

markers_bloodb<-read.table("/Users/alicjanowak/Desktop/Masters/FinalMarkersNewGroups/Markers.Blood_B.bed")
markers_bloodb_order<-markers_bloodb  %>% arrange(desc(V13))
markers_bloodb_500<-markers_bloodb_order[1:500, ]

markers_blood_granulocyte<-read.table("/Users/alicjanowak/Desktop/Masters/FinalMarkersNewGroups/Markers.Blood_Granulocytes.bed")
markers_blood_gran_order<-markers_blood_granulocyte %>% arrange(desc(V13))
markers_blood_gran_500<-markers_blood_gran_order[1:500, ]

markers_blood_monocyte<-read.table("/Users/alicjanowak/Desktop/Masters/FinalMarkersNewGroups/Markers.Blood_Monocyte.bed")
markers_blood_monocyte_order<-markers_blood_monocyte %>% arrange(desc(V13))
markers_blood_monocyte_500<-markers_blood_monocyte_order[1:500, ]

markers_blood_NK<-read.table("/Users/alicjanowak/Desktop/Masters/FinalMarkersNewGroups/Markers.Blood_NK.bed")
markers_blood_NK_order<-markers_blood_NK %>% arrange(desc(V13))
markers_blood_NK_500<-markers_blood_NK_order[1:500, ]

markers_blood_T<-read.table("/Users/alicjanowak/Desktop/Masters/FinalMarkersNewGroups/Markers.Blood_T.bed")
markers_blood_T_order<-markers_blood_T %>% arrange(desc(V13))
markers_blood_T_500<-markers_blood_T_order[1:500, ]

markers_CA1<-read.table("/Users/alicjanowak/Desktop/Masters/FinalMarkersNewGroups/Markers.CA1.bed")
markers_CA1_order<-markers_CA1 %>% arrange(desc(V13))
markers_CA1_500<- markers_CA1_order[1:500, ]

markers_CA2<-read.table("/Users/alicjanowak/Desktop/Masters/FinalMarkersNewGroups/Markers.CA2.bed")
markers_CA2_order<-markers_CA2 %>% arrange(desc(V13))
markers_CA2_500<-markers_CA2_order[1:500, ]

markers_CA3<-read.table("/Users/alicjanowak/Desktop/Masters/FinalMarkersNewGroups/Markers.CA3.bed")
markers_CA3_order<-markers_CA3 %>% arrange(desc(V13))
markers_CA3_500<-markers_CA3_order[1:500, ]

markers_CB<-read.table("/Users/alicjanowak/Desktop/Masters/FinalMarkersNewGroups/Markers.CB.bed")
markers_CB_order<-markers_CB %>% arrange(desc(V13))
markers_CB_500<-markers_CB_order[1:500, ]

markers_CIN1<-read.table("/Users/alicjanowak/Desktop/Masters/FinalMarkersNewGroups/Markers.CIN1.bed")
markers_CIN1_order<-markers_CIN1 %>% arrange(desc(V13))
markers_CIN1_500<-markers_CIN1_order[1:258, ]

markers_CIN2<-read.table("/Users/alicjanowak/Desktop/Masters/FinalMarkersNewGroups/Markers.CIN2.bed")
markers_CIN2_order<-markers_CIN2 %>% arrange(desc(V13))
markers_CIN2_500<-markers_CIN2_order[1:60, ]

markers_DG<-read.table("/Users/alicjanowak/Desktop/Masters/FinalMarkersNewGroups/Markers.DG.bed")
markers_DG_order<-markers_DG %>% arrange(desc(V13))
markers_DG_500<-markers_DG_order[1:500, ]

markers_EC<-read.table("/Users/alicjanowak/Desktop/Masters/FinalMarkersNewGroups/Markers.EC.bed")
markers_EC_order<-markers_EC %>% arrange(desc(V13))
markers_EC_500<-markers_EC_order[1:500, ]

markers_epithelial<-read.table("/Users/alicjanowak/Desktop/Masters/FinalMarkersNewGroups/Markers.Epithelial.bed")
markers_epithelial_order<-markers_epithelial %>% arrange(desc(V13))
markers_epithalial_500<-markers_epithelial_order[1:500, ]

markers_Foxp2<-read.table("/Users/alicjanowak/Desktop/Masters/FinalMarkersNewGroups/Markers.Foxp2.bed")
markers_Foxp2_order<-markers_Foxp2 %>% arrange(desc(V13))
markers_Foxp2_500<-markers_Foxp2_order[1:500, ]

markers_HIF_Unk1<-read.table("/Users/alicjanowak/Desktop/Masters/FinalMarkersNewGroups/Markers.HIF_Unk1.bed")
markers_HIF_Unk1_order<-markers_HIF_Unk1 %>% arrange(desc(V13))
markers_HIF_Unk1_500<-markers_HIF_Unk1_order[1:500, ]

markers_IPEN1<-read.table("/Users/alicjanowak/Desktop/Masters/FinalMarkersNewGroups/Markers.IPEN1.bed")
markers_IPEN1_order<-markers_IPEN1 %>% arrange(desc(V13))
markers_IPEN1_500<-markers_IPEN1_order[1:500, ]

markers_IPEN2<-read.table("/Users/alicjanowak/Desktop/Masters/FinalMarkersNewGroups/Markers.IPEN2.bed")
markers_IPEN2_order<-markers_IPEN2 %>% arrange(desc(V13))
markers_IPEN2_500<-markers_IPEN2_order[1:500, ]

markers_L5_ET<-read.table("/Users/alicjanowak/Desktop/Masters/FinalMarkersNewGroups/Markers.L5_ET.bed")
markers_L5_ET_order<-markers_L5_ET %>% arrange(desc(V13))
markers_L5_ET_500<-markers_L5_ET[1:500, ]

markers_L6_CT<-read.table("/Users/alicjanowak/Desktop/Masters/FinalMarkersNewGroups/Markers.L6_CT.bed")
markers_L6_CT_order<-markers_L6_CT %>% arrange(desc(V13))
markers_L6_CT_500<-markers_L6_CT_order[1:500, ]

markers_L6_IT_Car3<-read.table("/Users/alicjanowak/Desktop/Masters/FinalMarkersNewGroups/Markers.L6_IT_Car3.bed")
markers_L6_IT_Car3_order<-markers_L6_IT_Car3  %>% arrange(desc(V13))
markers_L6_IT_Car3_500<-markers_L6_CT_order[1:500, ]

markers_L6b<-read.table("/Users/alicjanowak/Desktop/Masters/FinalMarkersNewGroups/Markers.L6b.bed")
markers_L6b_order<-markers_L6b %>% arrange(desc(V13))
markers_L6b_500<-markers_L6b_order[1:500, ]

markers_L56_NP<-read.table("/Users/alicjanowak/Desktop/Masters/FinalMarkersNewGroups/Markers.L56_NP.bed")
markers_L56_NP_order<-markers_L56_NP %>% arrange(desc(V13))
markers_L56_NP_500<-markers_L56_NP_order[1:500, ]

markers_Lamp5<-read.table("/Users/alicjanowak/Desktop/Masters/FinalMarkersNewGroups/Markers.Lamp5.bed")
markers_Lamp5_order<-markers_Lamp5 %>% arrange(desc(V13))
markers_Lamp5_500<-markers_Lamp5[1:500, ]

markers_MGC<-read.table("/Users/alicjanowak/Desktop/Masters/FinalMarkersNewGroups/Markers.MGC.bed")
markers_MGC_order<-markers_MGC %>% arrange(desc(V13))
markers_MGC_500<-markers_MGC_order[1:500, ]

markers_MSN_D1<-read.table("/Users/alicjanowak/Desktop/Masters/FinalMarkersNewGroups/Markers.MSN_D1.bed")
markers_MSN_D1_order<-markers_MSN_D1 %>% arrange(desc(V13))
markers_MSN_D1_500<-markers_MSN_D1_order[1:500, ]

markers_ODC<-read.table("/Users/alicjanowak/Desktop/Masters/FinalMarkersNewGroups/Markers.ODC.bed")
markers_ODC_order<-markers_ODC %>% arrange(desc(V13))
markers_ODC_500<-markers_ODC_order[1:500, ]

markers_OPC<-read.table("/Users/alicjanowak/Desktop/Masters/FinalMarkersNewGroups/Markers.OPC.bed")
markers_OPC_order<-markers_OPC %>% arrange(desc(V13))
markers_OPC_500<-markers_OPC_order[1:500, ]

markers_PC<-read.table("/Users/alicjanowak/Desktop/Masters/FinalMarkersNewGroups/Markers.PC.bed")
markers_PC_order<-markers_PC %>% arrange(desc(V13))
markers_PC_500<-markers_PC_order[1:500, ]

markers_PKJ<-read.table("/Users/alicjanowak/Desktop/Masters/FinalMarkersNewGroups/Markers.PKJ.bed")
markers_PKJ_order<-markers_PKJ %>% arrange(desc(V13))
markers_PKJ_500<-markers_PKJ_order[1:500, ]

markers_PN<-read.table("/Users/alicjanowak/Desktop/Masters/FinalMarkersNewGroups/Markers.PN.bed")
markers_PN_order<-markers_PN  %>% arrange(desc(V13))
markers_PN_500<-markers_PN_order[1:500, ]

markers_skeletal_muscle<- read.table("/Users/alicjanowak/Desktop/Masters/FinalMarkersNewGroups/Markers.Skeletal_Muscle.bed")
markers_skeltal_muscle_order<-markers_skeletal_muscle %>% arrange(desc(V13))
markers_skeletal_muscle_500<-markers_skeltal_muscle_order[1:500, ]

markers_smooth_muscle<- read.table("/Users/alicjanowak/Desktop/Masters/FinalMarkersNewGroups/Markers.Smooth_Muscle.bed")
markers_smoothl_muscle_order<-markers_smooth_muscle %>% arrange(desc(V13))
markers_smooth_muscle_500<-markers_smoothl_muscle_order[1:500, ]

markers_SubCtx<- read.table("/Users/alicjanowak/Desktop/Masters/FinalMarkersNewGroups/Markers.SubCtx.bed")
markers_SubCtx_order<-markers_SubCtx  %>% arrange(desc(V13))
markers_SubCtx_500<-markers_SubCtx_order[1:53, ]

markers_THM_exc <-read.table("/Users/alicjanowak/Desktop/Masters/FinalMarkersNewGroups/Markers.THM_Exc.bed")
markers_THM_exc_order<-markers_THM_exc %>% arrange(desc(V13))
markers_THM_exc_500<-markers_THM_exc_order[1:500, ]

markers_THM_Inh<-read.table("/Users/alicjanowak/Desktop/Masters/FinalMarkersNewGroups/Markers.THM_Inh.bed")
markers_THM_Inh_order<-markers_THM_Inh %>% arrange(desc(V13))
markers_THM_Inh_500<-markers_THM_Inh_order[1:500, ]

markers_THM_MB<-read.table("/Users/alicjanowak/Desktop/Masters/FinalMarkersNewGroups/Markers.THM_MB.bed")
markers_THM_MB_order<-markers_THM_MB %>% arrange(desc(V13))
markers_THM_MB_500<-markers_THM_MB_order[1:500, ]

markers_VLMC<-read.table("/Users/alicjanowak/Desktop/Masters/FinalMarkersNewGroups/Markers.VLMC.bed")
markers_VLMC_order<-markers_VLMC %>% arrange(desc(V13))
markers_VLMC_500<-markers_VLMC_order[1:500, ]
