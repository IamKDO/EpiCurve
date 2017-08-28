library(EpiCurve)

load("example.Rda")

inspire$Cases = rep(1, times=nrow(inspire))

EpiCurve(inspire, date="timeposted", freq = "Cases", period = "hour", split=2)