#Install and load readr
install.packages("readr")
library(readr)
#Read tsv file
meth_data<-readr::read_tsv()
#Filter for CpGs- save rows in which the values in 4th column begin with CG
CpG_data<-meth_data %>%
  filter(substr(.[[4]],1,2)=="CG")