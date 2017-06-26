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
cu_ceds6_tsql_sc %<>% gsub("Title_*1",  "Title_1_", ., perl = T, ignore.case = T)
cu_ceds6_tsql_sc %<>% gsub("API_*Type",  "API_Type", ., perl = T, ignore.case = T)
cu_ceds6_tsql_sc %<>% gsub("CENSUSID",  "CENSUS_ID", ., perl = T, ignore.case = T)
cu_ceds6_tsql_sc %<>% gsub("USCitizenship",  "US_Citizenship", ., perl = T, ignore.case = T)

# can't for the life of me figure out how to get rid of the newlines littering the EXEC spots.
# cu_ceds6_tsql_sc %<>% gsub("\\s*\\.\\s*(\n|\r)'",  ".'", ., perl = T, ignore.case = T)
# gsub("\\s*\\.\\s*(\n|\r)'", "Inst., @Last", ". 
# ' , @l", ignore.case = T)

# Abbreviation Issues
sc <- function(dat, ABBR) {
   gsub(paste0("('|_|\\[)", ABBR, "([A-Z])"),  paste0("\\1", ABBR, "_\\2"), dat, perl = T)
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
cu_ceds6_tsql_sc %<>% sc(., "Part_C")
cu_ceds6_tsql_sc %<>% sc(., "Part_B")
cu_ceds6_tsql_sc %<>% sc(., "ISO6392")
cu_ceds6_tsql_sc %<>% sc(., "ISO6393")
cu_ceds6_tsql_sc %<>% sc(., "ISO6395")
cu_ceds6_tsql_sc %<>% sc(., "PS")
cu_ceds6_tsql_sc %<>% sc(., "CTE")
cu_ceds6_tsql_sc %<>% sc(., "AE")
cu_ceds6_tsql_sc %<>% sc(., "APIP")
cu_ceds6_tsql_sc %<>% sc(., "IRT")
cu_ceds6_tsql_sc %<>% sc(., "SEA")
cu_ceds6_tsql_sc %<>% sc(., "ANSI")
cu_ceds6_tsql_sc %<>% sc(., "LR")
cu_ceds6_tsql_sc %<>% sc(., "LS")
cu_ceds6_tsql_sc %<>% sc(., "ERS")
cu_ceds6_tsql_sc %<>% sc(., "MEP")
cu_ceds6_tsql_sc %<>% sc(., "PD")
cu_ceds6_tsql_sc %<>% sc(., "QRIS")
cu_ceds6_tsql_sc %<>% sc(., "REAP")
cu_ceds6_tsql_sc %<>% sc(., "RLIS")
cu_ceds6_tsql_sc %<>% sc(., "WF")

###### 3. Write Out into Snake_Case directory ######
# dir.create("tsql_ceds6_snake_case")
# the full monty
write_lines(cu_ceds6_tsql_sc, "tsql_ceds6_snake_case/tsql_ceds6sc_create_update.sql")

###### 4. Slice Up Script into DbSchema executable size ######
clippablefile_path <- "tsql_ceds6_snake_case/tsql_ceds6sc_create_update.sql"
block_1 <- read_lines(clippablefile_path, n_max = 8990)
block_2 <- read_lines(clippablefile_path, skip = 8990, n_max = 9000)
block_3 <- read_lines(clippablefile_path, skip = 17990, n_max = 8893)
block_4 <- read_lines(clippablefile_path, skip = 26884, n_max = 9955)
block_5 <- read_lines(clippablefile_path, skip = 36839, n_max = 9988)
block_6 <- read_lines(clippablefile_path, skip = 45443, n_max = 9988)

###### 5. Write Out the Sliced Files ######
# in DbSchema bite sized blocks
write_lines(block_1, "tsql_ceds6_snake_case/tsql_ceds6sc_create_update_pt1.sql")
write_lines(block_2, "tsql_ceds6_snake_case/tsql_ceds6sc_create_update_pt2.sql")
write_lines(block_3, "tsql_ceds6_snake_case/tsql_ceds6sc_create_update_pt3.sql")
write_lines(block_4, "tsql_ceds6_snake_case/tsql_ceds6sc_create_update_pt4.sql")
write_lines(block_5, "tsql_ceds6_snake_case/tsql_ceds6sc_create_update_pt5.sql")
write_lines(block_6, "tsql_ceds6_snake_case/tsql_ceds6sc_create_update_pt6.sql")

