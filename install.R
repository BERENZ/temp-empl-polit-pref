## packages
install.packages("tidyverse")
install.packages("data.table")
install.packages("lmtest")
install.packages("sandwich")
install.packages("survey")
install.packages("broom")
install.packages("stringi")
install.packages("validate")
install.packages("VIM")
install.packages("haven")
install.packages("lme4")
install.packages("lmerTest")
install.packages("bife")

## structure of the project
if (!dir.exists("codes")) dir.create("codes")
if (!dir.exists("results")) dir.create("results")
if (!dir.exists("data")) dir.create("data")
if (!dir.exists("data-raw")) dir.create("data-raw")

## download data from Diagnoza.com
if (!file.exists("data-raw/hh_data.sav")) {
  download.file("http://diagnoza.com/pliki/bazy_danych/2015/ds_0_15_GD_14112015.sav", destfile = "data-raw/hh_data.sav") 
  gosp <- haven::read_spss("data-raw/hh_data.sav", user_na = TRUE)
  saveRDS(gosp, file = "data/hh_data.RDS")
}
if (!file.exists("data-raw/ind_data.sav")) {
  download.file("http://diagnoza.com/pliki/bazy_danych/2015/ds_0_15_ind_14112015.sav", destfile = "data-raw/ind_data.sav") 
  osob <- haven::read_spss("data-raw/ind_data.sav", user_na = TRUE)
  saveRDS(osob, file = "data/ind_data.RDS")
}
