# R Script - dplyr predominant
# Author: leerssej
# Date;  Mon Jun 26 12:53:58 2017 
 
# Desc: Chunk out the awsql_CEDS6sc script into executable sized chunks
# Desc: Debug them programmatically if possible
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

###### 1. Load AWSQL & Slice Up Script into DbSchema executable size blocks ######
clippablefile_path <- "awsql_ceds6_snake_case/awsql_ceds6sc_create_update_complete.sql"
block_1 <- read_lines(clippablefile_path, n_max = 8990)
block_2 <- read_lines(clippablefile_path, skip = 8990, n_max = 9000)

###### 2. Write Out the Sliced Files ######
# in DbSchema bite sized blocks
write_lines(block_1, "awsql_ceds6_snake_case/awsql_ceds6sc_create_update_pt1.sql")
