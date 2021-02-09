## packages
install.packages("tidyverse")
install.packages("data.table")
install.packages("lmtest")
install.packages("sandwich")
install.packages("survey")
install.packages("broom")
install.packages("stringi")
install.packages("Matrix")
install.packages("validate")
install.packages("VIM")
install.packages("haven")
#install.packages("fst")
install.packages("VIM")
install.packages("lme4")
install.packages("lmerTest")
install.packages("bife")

## structure of the project
dir.create("codes")
dir.create("results")
dir.create("data")

## data 
download.file("http://diagnoza.com/pliki/bazy_danych/2015/ds_0_15_GD_14112015.sav", destfile = "data-raw/hh_data.sav")
download.file("http://diagnoza.com/pliki/bazy_danych/2015/ds_0_15_ind_14112015.sav", destfile = "data-raw/ind_data.sav")

gosp <- haven::read_spss("data-raw/hh_data.sav", user_na = TRUE)
saveRDS(gosp, file = "data/hh_data.RDS")
osob <- haven::read_spss("data-raw/ind_data.sav", user_na = TRUE)
saveRDS(osob, file = "data/ind_data.RDS")

