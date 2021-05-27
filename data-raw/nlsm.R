library(dplyr, warn.conflicts = FALSE)
library(readr)

url <- "https://davidcard.berkeley.edu/data_sets/proximity.zip"
t <- tempfile(fileext = ".zip")
download.file(url, t)

nlsm <-
  read_table(unz(t, file = "nls.dat"),
           col_names = c("id", "nearc2", "nearc4", "nearc4a", "nearc4b",
                         "ed76", "ed66", "age76", "daded", "nodaded", "momed",
                         "nomomed", "weight", "momdad14", "sinmom14", "step14",
                         "reg661", "reg662", "reg663", "reg664", "reg665",
                         "reg666", "reg667", "reg668", "reg669", "south66",
                         "work76", "work78", "lwage76", "lwage78", "famed",
                         "black", "smsa76r", "smsa78r", "reg76r", "reg78r",
                         "reg80r", "smsa66r", "wage76", "wage78", "wage80",
                         "noint78", "noint80", "enroll76", "enroll78",
                         "enroll80", "kww", "iq", "marsta76", "marsta78",
                         "marsta80", "libcrd14"),
           na = ".",
           col_types = cols(.default = col_double()))

usethis::use_data(nlsm, version = 3, compress="xz", overwrite=TRUE)
