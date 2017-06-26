# R Script - dplyr predominant
# Author: leerssej
# Date;  Sun Jun 25 17:47:45 2017 
 
# Desc: Convert CEDS_v6 from camelCase to snake_case
# Desc: Including transforming all the idiosyncratic Acronyms and Abbreviations
# Desc: 
# Desc: 

library(tidyverse)
library(magrittr)
# library(RPostgres)
# library(googlesheets)
# library(readxl)
# library(ggmap)
# library(geosphere)
# library(stringdist)
# library(RecordLinkage)

###### 1. Load debugged and Complete TSQL CreateInsert Script ######
createUpdate_CEDS6_TSQL <- read_lines("TSQL_camelCase/TSQL_camelCase_completeDebuggedCreateInsert_proofed.sql")

###### 2. Transform camels to snakes ######
##  humps can be left until last or when the pg_sql ignores them on the transform out of db_schema

# The main transform
cu_ceds6_tsql_sc <- gsub("([a-z])([A-Z])", "\\1_\\2", createUpdate_CEDS6_TSQL, perl = T)
# New Identity Resolution
cu_ceds6_tsql_sc %<>% gsub("\\[CEDS-TSQL-V6\\]",  "\\[CEDS_TSQL_v6sc\\]", .)

# Sectional Issues
cu_ceds6_tsql_sc %<>% gsub("Progress_([ABC])Indicator",  "Progress_\\1_Indicator", ., perl = T)
cu_ceds6_tsql_sc %<>% gsub("Rating_([ABC])Id",  "Rating_\\1_Id", ., perl = T)
# complicated Issues
cu_ceds6_tsql_sc %<>% gsub("Title_I(II)*",  "Title_I\\1_", ., perl = T)
cu_ceds6_tsql_sc %<>% gsub("Pre_*K(indergarten)*",  "Pre_K\\1_", ., perl = T, ignore.case = T)

# Abbreviation Issues
sc <- function(dat, ABBR) {
   gsub(paste0("(_|\\[)", ABBR, "([A-Z])"),  paste0("\\1", ABBR, "_\\2"), dat, perl = T)
}
cu_ceds6_tsql_sc %<>% sc(., "EL")
cu_ceds6_tsql_sc %<>% sc(., "K12")
cu_ceds6_tsql_sc %<>% sc(., "ECEAP")
cu_ceds6_tsql_sc %<>% sc(., "IDEA")
cu_ceds6_tsql_sc %<>% sc(., "NCAA")
cu_ceds6_tsql_sc %<>% sc(., "NCES")
cu_ceds6_tsql_sc %<>% sc(., "DIF")
cu_ceds6_tsql_sc %<>% sc(., "IEP")
cu_ceds6_tsql_sc %<>% sc(., "COS")
cu_ceds6_tsql_sc %<>% sc(., "XPK")
cu_ceds6_tsql_sc %<>% sc(., "SCED")
cu_ceds6_tsql_sc %<>% sc(., "LEA")


###### 3. Write Out into Snake_Case directory ######
# dir.create("tsql_ceds6_snake_case")
fileConn <- file("tsql_ceds6_snake_case/tsql_ceds6sc_create_update.sql")
writeLines(cu_ceds6_tsql_sc, fileConn)
close(fileConn)
