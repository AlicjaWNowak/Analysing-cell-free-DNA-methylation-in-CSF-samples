## Example giltering
markers_adipocyte<-read.table("path/to/file/Markers.Adipocyte.bed")
markers_adipocyte_order<-markers_adipocyte %>% arrange(desc(V13))
markers_adipocyte_500<-markers_adipocyte_order



