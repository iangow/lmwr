library(googlesheets4)
library(dplyr, warn.conflicts = FALSE)

nlsy97_raw <- read_sheet("1TccRf1Cbc4h9fu31WhKhzzleEKKKgiRkLofcebRQQnE",
                         na = "NA")

nlsy97 <-
  nlsy97_raw %>%
  mutate(wage = if_else(CVC_HOURS_WK_YR_ALL.07_XRND > 0,
                        `YINC-1700_2007`/CVC_HOURS_WK_YR_ALL.07_XRND, 0),
         lwage = if_else(wage > 1, log(wage), 0),
         fulltime = CVC_HOURS_WK_YR_ALL.07_XRND > 1750,
         lftwage = if_else(lwage > 0 & fulltime, lwage, 0),
         female = KEY_SEX_1997==2,
         black = KEY_RACE_ETHNICITY_1997==1,
         age = 2007 - KEY_BDATE_Y_1997,
         age2 = age^2,
         college = CV_HIGHEST_DEGREE_0708_2007 >= 3,
         south = CV_CENSUS_REGION_2007==3,
         urban = `CV_URBAN-RURAL_2007`==1,
         msa = CV_MSA_2007 > 1 & CV_MSA_2007 < 5,
         married = CV_MARSTAT_COLLAPSED_2007==2,
         children = CV_BIO_CHILD_HH_2007 > 0) %>%
  select(black, lftwage, age, age2, msa, urban, south, college, female,
         married, children)

usethis::use_data(nlsy97, version = 3, compress="xz", overwrite=TRUE)
