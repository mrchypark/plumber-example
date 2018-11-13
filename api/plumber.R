library(plumber)

v1 <- plumber$new("R/v1.R")
v2 <- plumber$new("R/v2.R")

master_pr <- plumber$new()
master_pr$mount("/v1", v1)
master_pr$mount("/v2", v2)

master_pr$run()
