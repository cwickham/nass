library(purrr)
library(stringr)

# formats -----------------------------------------------------------------

format_remote <- "ftp://ftp.nhtsa.dot.gov/NASS/2015/Formats/nass2015formats.sas"
format_local <- file.path("data-raw", "nass2015formats.sas")

if(!file.exists(format_local)) download.file(format_remote, format_local)
format_lines <- readLines(format_local)

# Which lines start a format description? i.e. start with '*' but not a comment
start_var <- str_detect(format_lines, "^\\*[^/ ]")
var_groups <- cumsum(start_var)

# Which variable does this apply to?
var_names <- str_extract_all(format_lines[start_var], "[A-Z\\d]+")

# drop header and split by var
format_by_var <- split(format_lines, var_groups)
format_by_var <- format_by_var[-1]

make_lookup <- function(format_strs){
  pattern <- "(\\d{1,6}|\\.[A-Z]?|'[^']*') ?= ?'([^']*)'"
  matches <- format_strs %>%
    str_subset(pattern) %>%
    str_match_all(pattern) %>%
    do.call(rbind, .)
  matches[, 3] %>% set_names(matches[, 2])
}

lookups <- map(format_by_var, possibly(make_lookup, NULL))

lookups <- rep(lookups, map_int(var_names, length))
names(lookups) <- flatten_chr(var_names)

saveRDS(lookups, "data-raw/lookups.rds")
