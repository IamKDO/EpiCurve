library(Epiconcepts)
library(dplyr)

data("Tiramitsu")

DF <- as.data.frame(Tiramitsu)
  
DF <- DF %>%
  select(dateonset, ill) %>%
  filter(!is.na(dateonset)) %>%
  group_by(dateonset) %>%
  summarise(ill = n()) %>%
  as.data.frame()

ec.epiCurve(DF, 
            date = "dateonset",
            freq = "ill",
            period = "day",
            colors = "#9999ff"
            )
  
