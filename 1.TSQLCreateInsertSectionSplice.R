# R Script - dplyr predominant
# Author: leerssej
# Date;  Sun Jun 25 15:35:42 2017 
 
# Desc: Joining together all the files that were separated for entry into dbSchema
# Desc: Makes a debugged and fully foreign keyed and ref table loaded
# Desc: camelCase TSQL instance of the CEDS version 6 Database
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

create_pt1 <- read_lines("TSQL_camelCase/ceds-nds-TSQL-v6.1_gos_txfrmd_pt1.sql")
create_pt2 <- read_lines("TSQL_camelCase/ceds-nds-TSQL-v6.1_gos_txfrmd_pt2.sql")
create_pt3 <- read_lines("TSQL_camelCase/ceds-nds-TSQL-v6.1_gos_txfrmd_pt3.sql")
insert_pt1 <- read_lines("TSQL_camelCase/Populate-CEDS-V6-Ref-Tables_gos_txfrmd_pt1.sql") 
insert_pt2.1 <- read_lines("TSQL_camelCase/Populate-CEDS-V6-Ref-Tables_gos_txfrmd_pt2.1.sql") 
insert_pt2.2 <- read_lines("TSQL_camelCase/Populate-CEDS-V6-Ref-Tables_gos_txfrmd_pt2.2.sql") 
insert_pt3 <- read_lines("TSQL_camelCase/Populate-CEDS-V6-Ref-Tables_gos_txfrmd_pt3.sql") 
completeCreateInsert <- c(create_pt1, create_pt2, create_pt3, insert_pt1, insert_pt2.1, insert_pt2.2, insert_pt3)

fileConn <- file("TSQL_camelCase/TSQL_camelCase_completeDebuggedCreateInsert.sql")
writeLines(completeCreateInsert, fileConn)
close(fileConn)


