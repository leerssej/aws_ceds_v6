# R Script - dplyr predominant
# Author: leerssej
# Date;  Mon Jun 26 12:53:58 2017 
 
# Desc: Chunk out the awsql_CEDS6sc script into executable sized chunks
# Desc: Debug them programmatically if possible
# Desc: If the pomodoro went off, it went to direct replacement
# Desc: Better suggestions are super-welcome - please fork and submit a pull-request

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


# ceds6sc %<>% gsub("Ta'oih",  "Ta oih", ., perl = T, ignore.case = T)
# ceds6sc %<>% gsub("'Te'un'",  "'Te un'", ., perl = T, ignore.case = T)
# ceds6sc %<>% gsub("'O'du'",  "'O du'", ., perl = T, ignore.case = T)
# ceds6sc %<>% gsub("'Tz'utujil'",  "'Tz utujil'", ., perl = T, ignore.case = T)
# ceds6sc %<>% gsub("Buhi'non",  "Buhi non", ., perl = T, ignore.case = T)
# ceds6sc %<>% gsub("'Ulumanda''",  "'Ulumanda'", ., perl = T, ignore.case = T)
# ceds6sc %<>% gsub("'Uma' Lung'",  "'Uma Lung'", ., perl = T, ignore.case = T)
# ceds6sc %<>% gsub("'Urak Lawoi''",  "'Urak Lawoi'", ., perl = T, ignore.case = T)
# ceds6sc %<>% gsub("'Vera'a'",  "'Vera a'", ., perl = T, ignore.case = T)
# ceds6sc %<>% gsub("'Wa'ema'",  "'Wa ema'", ., perl = T, ignore.case = T)
# ceds6sc %<>% gsub("'Waima'a'",  "'Waima a'", ., perl = T, ignore.case = T)
# ceds6sc %<>% gsub("'Kho'ini'",  "'Kho ini'", ., perl = T, ignore.case = T)
# ceds6sc %<>% gsub("'Kaco''",  "'Kaco'", ., perl = T, ignore.case = T)
# ceds6sc %<>% gsub("'Uma' Lasan'",  "'Uma Lasan'", ., perl = T, ignore.case = T)
# ceds6sc %<>% gsub("'Ke'o'",  "'Ke o'", ., perl = T, ignore.case = T)
# ceds6sc %<>% gsub("'Lang'e'",  "'Lang e'", ., perl = T, ignore.case = T)
# ceds6sc %<>% gsub("'E'ma Buyang'",  "'E ma Buyang'", ., perl = T, ignore.case = T)


###### 3. Write Out the Sliced Files ### ###
# find the directory to read to
clippable_fileroot <- "aw2sql_ceds6sc_snake_case_redux/"
# the whole script
write_lines(ceds6sc, paste0(clippable_fileroot, "ceds6sc_aws_redux.sql"))

###### 4. Chop script into DbSchema sized chunks ### ###
# find the file to read from
clippable_filepath <- paste0(clippable_fileroot, "ceds6sc_aws_redux.sql")

# find the file to read blocks from
# chop into DbSchema bite sized blocks
# write out into the world
block_1 <- read_lines(clippable_filepath, n_max = 9950)
write_lines(block_1, paste0(clippable_fileroot, "awsql_ceds6sc_create_update_pt1.sql"))

block_2 <- read_lines(clippable_filepath, skip = 9950, n_max = 9966)
write_lines(block_2, paste0(clippable_fileroot, "awsql_ceds6sc_create_update_pt2.sql"))

block_3 <- read_lines(clippable_filepath, skip = 19916, n_max = 9968)
write_lines(block_3, paste0(clippable_fileroot, "awsql_ceds6sc_create_update_pt3.sql"))

block_4 <- read_lines(clippable_filepath, skip = 29885, n_max = 10000)
write_lines(block_4, paste0(clippable_fileroot, "awsql_ceds6sc_create_update_pt4.sql"))
 
# utils::file.edit('awsql_ceds6_snake_case/awsql_ceds6sc_create_update_pt1.sql', editor = "/Program Files/Sublime Text 3/sublime_text.exe")



# ceds6sc %<>% gsub("'To'abaita'",  "'Toabaita'", ., perl = T, ignore.case = T)
# ceds6sc %<>% gsub("'To'abaita'",  "'Toabaita'", ., perl = T, ignore.case = T)
# ceds6sc %<>% gsub("Asaro'o",  "Asaroo", ., perl = T, ignore.case = T)
# ceds6sc %<>% gsub("'Me'en'",  "'Meen'", ., perl = T, ignore.case = T)
# ceds6sc %<>% gsub("'Naka'ela'",  "'Nakaela'", ., perl = T, ignore.case = T)
# ceds6sc %<>% gsub("'Ngan'gityemerri'",  "'Ngangityemerri'", ., perl = T, ignore.case = T)
# ceds6sc %<>% gsub("'Ngbaka Ma'bo'",  "'Ngbaka Mabo'", ., perl = T, ignore.case = T)
# ceds6sc %<>% gsub("'Nisga'a'",  "'Nisgaa'", ., perl = T, ignore.case = T)
# ceds6sc %<>% gsub("Eastern Ngad'a",  "Eastern Ngada", ., perl = T, ignore.case = T)
# ceds6sc %<>% gsub("Ngatik Men's Creole",  "Ngatik Mens Creole", ., perl = T, ignore.case = T)
# ceds6sc %<>% gsub("N'Ko",  "N Ko", ., perl = T, ignore.case = T)
# ceds6sc %<>% gsub("iuafo'ou",  "iuafo ou", ., perl = T, ignore.case = T)
# ceds6sc %<>% gsub("Ngad'a",  "Ngad a", ., perl = T, ignore.case = T)
# ceds6sc %<>% gsub("Nda'nda'",  "Nda nda", ., perl = T, ignore.case = T)
# ceds6sc %<>% gsub("K'iche'",  "Kiche", ., perl = T, ignore.case = T)
# ceds6sc %<>% gsub("Tohono O'odham",  "Tohono O odham", ., perl = T, ignore.case = T)
# ceds6sc %<>% gsub("Oya'oya",  "Oya oya", ., perl = T, ignore.case = T)
# ceds6sc %<>% gsub("E'\\?apa Woromaipu",  "Eapa Woromaipu", ., perl = T, ignore.case = T)
# ceds6sc %<>% gsub("Phana'",  "Phana", ., perl = T, ignore.case = T)
# ceds6sc %<>% gsub("Palu'e",  "Palue", ., perl = T, ignore.case = T)
# ceds6sc %<>% gsub("Brooke's Point Palawano",  "Brookes Point Palawano", ., perl = T, ignore.case = T)
# ceds6sc %<>% gsub("Poqomchi'",  "Poqomchi", ., perl = T, ignore.case = T)
# ceds6sc %<>% gsub("Pa'a",  "Pa a", ., perl = T, ignore.case = T)
# ceds6sc %<>% gsub("Lua'",  "Lua", ., perl = T, ignore.case = T)
# ceds6sc %<>% gsub("Qashqa'i",  "Qashqai", ., perl = T, ignore.case = T)
# ceds6sc %<>% gsub("'Tae''",  "'Tae'", ., perl = T, ignore.case = T)
# ceds6sc %<>% gsub("'Sa'och'",  "'Sa och'", ., perl = T, ignore.case = T)
# ceds6sc %<>% gsub("Toraja-Sa'dan",  "Toraja-Sadan", ., perl = T, ignore.case = T)
# ceds6sc %<>% gsub("'Ma'ya'",  "'Ma ya'", ., perl = T, ignore.case = T)
# ceds6sc %<>% gsub("'Southern Ma'di'",  "'Southern Madi'", ., perl = T, ignore.case = T)
# ceds6sc %<>% gsub("'Sa'ban'",  "'Sa ban'", ., perl = T, ignore.case = T)
# ceds6sc %<>% gsub("'So'a'",  "'So a'", ., perl = T, ignore.case = T)
# ceds6sc %<>% gsub("'Silt'e'",  "'Silt e'", ., perl = T, ignore.case = T)
# ceds6sc %<>% gsub("'Malinaltepec Me'phaa'",  "'Malinaltepec Me phaa'", ., perl = T, ignore.case = T)
# ceds6sc %<>% gsub("'T'en'",  "'T en'", ., perl = T, ignore.case = T)
# ceds6sc %<>% gsub("'Talondo''",  "'Talondo'", ., perl = T, ignore.case = T)
# ceds6sc %<>% gsub("'Ten'edn'",  "'Ten edn'", ., perl = T, ignore.case = T)