library(dplyr, warn.conflicts = FALSE)
library(haven)

url <- paste0("https://wps.pearsoned.com/wps/media/objects/11422/",
              "11696965/datasets3e/datasets/hmda_aer.dta")
t <- tempfile()

download.file(url, t, extra = "--secure-protocol=TLSv1")
hdma <-
  read_dta(t) %>%
  rename(wage = s31a, emp = s25a, dr = s45,
         clines = s41, suff = s11, assets = s35,
         wage_coap = s31c,
         mhist = s42, chist = s43, phist = s44) %>%
  mutate(across(c(emp, clines, suff, assets, school, s57, s48, s39,
                  chval, s20, s6, s50, s33, wage_coap),
                ~ if_else(. >= 999999, NA_real_, .)),
         black = s13 == 3,
         male = s15==1,
         married = s23a == "M",
         deny = case_when(s7 == 3 ~ TRUE,
                          s7 %in% c(1, 2) ~ FALSE,
                          TRUE ~ NA),
         lr = s6/s50,
         pr = s33/s50,
         coap = s16 != 4,
         male_coap = s16 == 1) %>%
  select(seq, deny, black, male, wage, chist, mhist, phist, emp,
         clines, suff, assets, school,
         s20, s24a, s27a, s39, s48, s53, s55, s56, s57,
         chval, married, lr, pr, coap, dr, bd, mi, old, vr, uria, netw,
         dnotown, dprop, rtdum, wage_coap, male_coap)

usethis::use_data(hdma, version = 3, compress="xz", overwrite = TRUE)
