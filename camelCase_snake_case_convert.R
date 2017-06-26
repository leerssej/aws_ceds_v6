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
#  humps can be left until last or when the pg_sql ignores them on the transform out of db_schema
cu_ceds6_tsql_sc <- gsub("([a-z])([A-Z])", "\\1_\\2", createUpdate_CEDS6_TSQL, perl = T)
cu_ceds6_tsql_sc %<>% gsub("\\[CEDS-TSQL-V6\\]",  "\\[CEDS_TSQL_v6sc\\]", .)
cu_ceds6_tsql_sc %<>% gsub("_EL([A-Z])",  "_EL_\\1", ., perl = T)
cu_ceds6_tsql_sc %<>% gsub("_AE([A-Z])",  "_AE_\\1", ., perl = T)


###### 3. Write Out into Snake_Case directory ######
# dir.create("tsql_ceds6_snake_case")
fileConn <- file("tsql_ceds6_snake_case/tsql_ceds6sc_create_update.sql")
writeLines(cu_ceds6_tsql_sc, fileConn)
close(fileConn)
