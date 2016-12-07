library(haven)
library(purrr)

# Unformatted Data --------------------------------------------------------

base_url <- "ftp://ftp.nhtsa.dot.gov/NASS/2015/Unformatted Data/"
file_names <- c("acc_desc", "accident", "event", "gv", "oa", "oi", "pers_pro",
  "typ_acc", "ve", "veh_pro", "vi")
remote <- paste0(base_url, file_names, ".sas7bdat")
local <- file.path("data-raw", "cds_unformatted", paste0(file_names, ".sas7bdat"))

# only download missing files
missing <- !file.exists(local)
map2(remote[missing], local[missing], download.file)

data_list <- map(local, read_sas)
names(data_list) <- file_names

# Lookup labels -----------------------------------------------------------
lookups <- readRDS("data-raw/lookups.rds")

# get attr or return missing
attr_or_na <- function(x, which){
  val <- attr(x, which)
  ifelse(is_null(val), NA, val)
}

# from https://github.com/hadley/neiss/blob/master/data-raw/neiss.R
lookup <- function(needle, haystack) {
  unname(haystack[as.character(needle)])
}

lookup_codes <- function(df, code_list){
  # use `format.sas` attribute if it exists
  format_names <- map_chr(df, ~ as.character(attr_or_na(.x, "format.sas")))
  format_names[is.na(format_names)] <- names(format_names)[is.na(format_names)]

  # which vars have associated codes
  has_lookup <- map_lgl(code_list[format_names], negate(is_null))
  df[has_lookup] <- map2(df[has_lookup],
    format_names[has_lookup],
    ~ lookup(.x, code_list[[.y]]))
  df
}

data_list_coded <- map(data_list, lookup_codes, code_list = lookups)

# Save for use in package -------------------------------------------------

walk(file_names, ~ assign(paste0("cds_", .x),
                          data_list_coded[[.x]], envir = .GlobalEnv))
# walk(file_names, ~ devtools::use_data(as.name(.x))) # doesn't work

# ? how to do this better
# cat(paste0("devtools::use_data(cds_", file_names, ")"), sep = "\n")
devtools::use_data(cds_acc_desc)
devtools::use_data(cds_accident)
devtools::use_data(cds_event)
devtools::use_data(cds_gv)
devtools::use_data(cds_oa)
devtools::use_data(cds_oi)
devtools::use_data(cds_pers_pro)
devtools::use_data(cds_typ_acc)
devtools::use_data(cds_ve)
devtools::use_data(cds_veh_pro)
devtools::use_data(cds_vi)

# Checking formatted data is same as unformatted data ---------------

base_url_formatted <- "ftp://ftp.nhtsa.dot.gov/NASS/2015/Formatted Data/"
file_names_formatted <- c("accident", "event", "gv", "makmod", "oa", "oi", "ve", "vi")
local_formatted <- file.path("data-raw", "cds_formatted",
  paste0(file_names_formatted, ".sas7bdat"))
remote_formatted <- paste0(base_url_formatted, file_names_formatted, ".sas7bdat")

missing <- !file.exists(local_formatted)
map2(remote_formatted[missing], local_formatted[missing], download.file)

data_list_formatted <- map(local_formatted, read_sas)
names(data_list_formatted) <- file_names_formatted
# also not coded

file_names[!(file_names %in% file_names_formatted)]
# some files not in formatted
file_names_formatted[!(file_names_formatted %in% file_names)]
# only mkmod in formatted but not in unformatted

all(map_lgl(file_names[(file_names %in% file_names_formatted)],
  ~ all.equal(data_list[[.x]], data_list_formatted[[.x]])))
# data in files with same name is the same!

# "Analytical User Manual" seems to match up with unformatted anyway.
