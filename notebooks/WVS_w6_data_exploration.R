# This is the WVS wave 6 data load r script file

library(tidyverse)

# load WVS wave 6 rdata file from https://www.worldvaluessurvey.org/WVSDocumentationWV6.jsp 
load("WV6_Data_R_v20201117.rdata")
wvs_w6 <- WV6_Data_R_v20201117

# how many rows? 
# ans: (89,565)
nrow(wvs_w6)

#  check variable classes; this is an R equivalent of python's .info() method so far
wvs_w6 %>% 
  dplyr::summarise_all(class) %>% 
  tidyr::gather(variable.names, class)

# which data collection years (and cases per year) are included in this wave?
# ans: 2010, 2011, 2012, 2013, 2014, & 2016
table(wvs_w6$V262)

# export to a csv file to continue working in python
write.csv(wvs_w6, "wvs_w6.csv", row.names = FALSE)
