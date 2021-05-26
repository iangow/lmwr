library(readr)
url <- "https://davidcard.berkeley.edu/data_sets/njmin.zip"

t <- tempfile()

download.file(url, t)

col_names <- "sheet
    CHAIN
    CO_OWNED
    STATE
    SOUTHJ
    CENTRALJ
    NORTHJ
    PA1
    PA2
    SHORE
    NCALLS
    EMPFT
    EMPPT
    NMGRS
    WAGE_ST
    INCTIME
    FIRSTINC
    BONUS
    PCTAFF
    MEAL
    OPEN
    HRSOPEN
    PSODA
    PFRY
    PENTREE
    NREGS
    NREGS11
    TYPE2
    STATUS2
    DATE2
    NCALLS2
    EMPFT2
    EMPPT2
    NMGRS2
    WAGE_ST2
    INCTIME2
    FIRSTIN2
    SPECIAL2
    MEALS2
    OPEN2R
    HRSOPEN2
    PSODA2
    PFRY2
    PENTREE2
    NREGS2
    NREGS112"

col_names <- tolower(unlist(strsplit(col_names, split = "\\s+")))

cardkrueger <-
  read_table(unzip(t, file = "public.dat"), col_names = col_names,
             na = ".")

cardkrueger$sheet[cardkrueger$sheet == 407] <- c(4071, 4072)

usethis::use_data(cardkrueger, version = 3, compress="xz", overwrite=TRUE)
