# R Script - dplyr predominant
# Author: leerssej
# Date;  Mon Jun 26 12:53:58 2017 
 
# Desc: Chunk out the awsql_CEDS6sc script into executable sized chunks
# Desc: Debug them programmatically if possible
# Desc: If the pomodoro went off, it went to direct replacement
# Desc: Better suggestions are super-welcome - please fork and submit a pull-request

library(tidyverse)
library(magrittr)

###### 1. Load AWSQL & Slice Up Script into DbSchema executable size blocks ######
origscript_path <- "aw2sql_ceds6sc_snake_case_redux/aw2sql_ceds6sc_redux_complete.sql"
# Load full script
cu_ceds6_awsql_sc_orig <- read_lines(origscript_path)

###### 2. Fix AWSQL environment issues ### ###
ceds6sc <- cu_ceds6_awsql_sc_orig
# Adjust the schema name
ceds6sc %<>% sub("CREATE SCHEMA dbo;",  " CREATE SCHEMA ceds6sc_rdx;", .)
ceds6sc %<>% gsub("\\s+dbo\\.",  " ceds6sc_rdx.", .)
ceds6sc %<>% gsub('"(.*?)"',  "\\L\\1", ., perl = T)
ceds6sc %<>% gsub("primary_telephone_number_indicator bool DEFAULT 0 NOT NULL",  "primary_telephone_number_indicator bool DEFAULT FALSE NOT NULL", ., perl = T)
ceds6sc %<>% gsub("_accommodation\\s+_ref_assessment",  "_accommodation_ref_assessment", ., perl = T, ignore.case = T)
ceds6sc %<>% gsub("course(.*)\\s+_ref_course_gpa",  "course\\1_ref_course_gpa", ., perl = T, ignore.case = T)
ceds6sc %<>% gsub("fk_ps_section\\s+_ref_course_",  "fk_ps_section_ref_course_", ., perl = T, ignore.case = T)
ceds6sc %<>% gsub("student_financial_aid_ref_financial_aid_veterans_benefit",  "student_financial_aid_ref_fin_aid_vtrns_bnft", ., perl = T, ignore.case = T)
ceds6sc %<>% gsub("org_identification_system\\s+_ref_organization_identifier_type",  "org_identification_system_ref_organization_identifier_type", ., perl = T, ignore.case = T)
ceds6sc %<>% gsub("dentification_system\\s+_ref_person_identifier",  "dentification_system_ref_person_identifier", ., perl = T, ignore.case = T)
ceds6sc %<>% gsub("fk_organization_fed(era)*l*_accountability",  "fk_organization_fed_accntblty", ., perl = T, ignore.case = T)
# possessives and contractions inside the insert statements
ceds6sc %<>% gsub("(\\s|')(\\w+)'s(?=\\s+(\\w+|\\())",  "\\1\\2''s", ., perl = T, ignore.case = T)
ceds6sc %<>% gsub("(\\s|')(\\w+)n't(?=\\s\\w+)",  "\\1\\2n''t", ., perl = T, ignore.case = T)

# plural Abbreviations
ceds6sc %<>% gsub("(\\s|')([A-Z]{2})'s(?=\\s\\w+)",  "\\1\\2''s", ., perl = T, ignore.case = T)
ceds6sc %<>% gsub("(\\s|')([A-Z]{2})'s'",  "\\1\\2''s'", ., perl = T, ignore.case = T)
ceds6sc %<>% gsub("(\\s|')(\\w+)s'(?=\\s\\w+)",  "\\1\\2s''", ., perl = T, ignore.case = T)

# Singular instances
ceds6sc %<>% gsub("Doctoral \\(Doctor's\\) degree",  "Doctoral (Doctor''s) degree", ., perl = T, ignore.case = T)
ceds6sc %<>% gsub("C\\?te d'Ivoire",  "Cote dIvoire", ., perl = T, ignore.case = T)

# Language name idiosyncratic 
# Apostrophe at the end of word
ceds6sc %<>% gsub("'(\\w+\\?*\\s*\\w+\\?*)''(?=,)",  "'\\1'", ., perl = T, ignore.case = T)
# ceds6sc %<>% gsub("'(\\w+)''(?=,)",  "'\\1'", ., perl = T, ignore.case = T)
ceds6sc %<>% gsub("'(\\w+)'(\\w+)'",  "'\\1 \\2'", ., perl = T, ignore.case = T)
ceds6sc %<>% gsub("'(\\w+\\s)(\\w+)'(\\w+)'",  "'\\1 \\2 \\3'", ., perl = T, ignore.case = T)
ceds6sc %<>% gsub("'(\\w+)'\\s(\\w+)'",  "'\\1 \\2'", ., perl = T, ignore.case = T)
ceds6sc %<>% gsub(", ''(\\w+)(\\s\\w+)', ",  ", '\\1\\2', ", ., perl = T, ignore.case = T)
ceds6sc %<>% gsub(", ''(\\w+)', ",  ", '\\1', ", ., perl = T, ignore.case = T)
ceds6sc %<>% gsub("'(\\w+)'(\\w+\\s\\w+)'",  "'\\1\\2', ", ., perl = T, ignore.case = T)


# pomodoro is buzzing - it is long past time to have this script loaded
ceds6sc %<>% gsub("'Ta'izzi-Adeni Arabic'",  "'Taizzi Adeni Arabic'", ., perl = T, ignore.case = T)
ceds6sc %<>% gsub("'Daats'i\\?in'",  "'Daatsi?in'", ., perl = T, ignore.case = T)
ceds6sc %<>% gsub("d'Oreille",  "d''Oreille", ., perl = T, ignore.case = T)
ceds6sc %<>% gsub("ut-Ma'in",  "ut-Ma in", ., perl = T, ignore.case = T)
ceds6sc %<>% gsub("Hawai'i",  "Hawaii", ., perl = T, ignore.case = T)
ceds6sc %<>% gsub("Ju/'hoan",  "Ju/hoan", ., perl = T, ignore.case = T)
ceds6sc %<>% gsub("Kuuku-Ya'u",  "Kuuku-Yau", ., perl = T, ignore.case = T)
ceds6sc %<>% gsub("E'\\?apa Woromaipu",  "Eapa Woromaipu", ., perl = T, ignore.case = T)
ceds6sc %<>% gsub("'Zo'\\?'",  "'Zo?'", ., perl = T, ignore.case = T)
ceds6sc %<>% gsub("'Toraja-Sa'dan'",  "'Toraja-Sadan'", ., perl = T, ignore.case = T)
ceds6sc %<>% gsub("Me'phaa",  "Me phaa", ., perl = T, ignore.case = T)
ceds6sc %<>% gsub("'Ts'\\?n-Lao'",  "'Ts ?n-Lao'", ., perl = T, ignore.case = T)
ceds6sc %<>% gsub("'Wik-Me'anha'",  "'Wik-Me anha'", ., perl = T, ignore.case = T)
ceds6sc %<>% gsub("Post-master's certificate",  "Post-master''s certificate", ., perl = T, ignore.case = T)
ceds6sc %<>% gsub("'Mi'kmaq; Micmac'",  "'Mikmaq; Micmac'", ., perl = T, ignore.case = T)
ceds6sc %<>% gsub("St. Mary's",  "St. Mary''s", ., perl = T, ignore.case = T)
ceds6sc %<>% gsub("Port Gamble S'Klallam Tribe",  "Port Gamble S''Klallam Tribe", ., perl = T, ignore.case = T)
ceds6sc %<>% gsub("(?<=\\w )'snap'(?= \\w)",  "''snap''", ., perl = T, ignore.case = T)

###### 3. Write Out the Sliced Files ### ###
# find the directory to read to
clippable_fileroot <- "aw2sql_ceds6sc_snake_case_redux/"
complete_translation <- "ceds6sc_aws_redux.sql"
completetranslation_filepath <- paste0(clippable_fileroot, complete_translation)
# the whole script
write_lines(ceds6sc, completetranslation_filepath)

###### 4. Chop script into DbSchema sized chunks ### ###
# find the file to read from
clippable_filepath <- completetranslation_filepath

# use the above file to read blocks out of and then write them out into the world
block_1 <- read_lines(clippable_filepath, n_max = 9950)
write_lines(block_1, paste0(clippable_fileroot, "awsql_ceds6sc_create_update_pt1.sql"))

block_2 <- read_lines(clippable_filepath, skip = 9950, n_max = 9966)
write_lines(block_2, paste0(clippable_fileroot, "awsql_ceds6sc_create_update_pt2.sql"))

block_3 <- read_lines(clippable_filepath, skip = 19916, n_max = 9968)
write_lines(block_3, paste0(clippable_fileroot, "awsql_ceds6sc_create_update_pt3.sql"))

block_4 <- read_lines(clippable_filepath, skip = 29885, n_max = 10000)
write_lines(block_4, paste0(clippable_fileroot, "awsql_ceds6sc_create_update_pt4.sql"))
 
# utils::file.edit('awsql_ceds6_snake_case/awsql_ceds6sc_create_update_pt1.sql', editor = "/Program Files/Sublime Text 3/sublime_text.exe")
