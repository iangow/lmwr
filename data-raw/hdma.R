library(dplyr, warn.conflicts = FALSE)
library(haven)

url <- paste0("https://wps.pearsoned.com/wps/media/objects/11422/",
              "11696965/datasets3e/datasets/hmda_aer.dta")
t <- tempfile()

download.file(url, t, extra = "--secure-protocol=TLSv1")
hdma <-
  read_dta(t) %>%
  rename(wage = s31a, emp = s25a,
         mhist = s42, chist = s43, phist = s44) %>%
  mutate(emp = if_else(emp >= 999999, NA_real_, emp),
         black = s13 == 3,
         married = s23a == "M",
         deny = case_when(s7 == 3 ~ TRUE,
                          s7 %in% c(1, 2) ~ FALSE,
                          TRUE ~ NA)) %>%
  select(seq, deny, black, wage, chist, mhist, phist, emp)

usethis::use_data(hdma, version = 3, compress="xz", overwrite=TRUE)
