#Running M_W_U on methylation within sets
mann_whitney_test_brain <- wilcox.test(
  V10 ~ methylation_status,
  data = oligodendrocyte_brain_ordered
)
print(mann_whitney_test_brain)

mann_whitney_test_loyfer <- wilcox.test(
  V10 ~ methylation_status,
  data = oligodendrocyte_loyfer_ordered
)
print(mann_whitney_test_loyfer)

mann_whitney_test_switch<- wilcox.test(
  V10 ~ methylation_status,
  data = oligodendrocyte_switch_ordered
)
print(mann_whitney_test_switch)

#Final markers MAN_W_U
mann_whitney_test_final_markers <- wilcox.test(
  V10 ~ V16,
  data = combined_regions_CpGs_with_status
)
print(mann_whitney_test_final_markers)