#' Data set for Card & Krueger (1994).
#'
#' Card & Krueger (1994) use geography as the "as if" random treatment
#' assignment to study the effect on employment in fast food restaurants
#' caused by an increase in the state minimum wage in New Jersey
#' in the year of 1992.
#'
#' @format A data frame with 410 rows and 46 variables:
#' \describe{
#'   \item{sheet}{sheet number (unique store id)}
#'   \item{chain}{chain 1=bk; 2=kfc; 3=roys; 4=wendys}
#'   \item{co_owned}{1 if company owned}
#'   \item{state}{1 if NJ; 0 if Pa}
#'   \item{southj}{1 if in southern NJ}
#'   \item{centralj}{1 if in central NJ}
#'   \item{northj}{1 if in northern NJ}
#'   \item{pa1}{1 if in PA, northeast suburbs of Phila}
#'   \item{pa2}{1 if in PA, Easton etc}
#'   \item{shore}{1 if on NJ shore}
#'   \item{ncalls}{number of call-backs}
#'   \item{empft}{Num full-time employees}
#'   \item{emppt}{Num part-time employees}
#'   \item{nmgrs}{Num managers/ass't managers}
#'   \item{wage_st}{starting wage ($/hr)}
#'   \item{inctime}{months to usual first raise}
#'   \item{firstinc}{usual amount of first raise ($/hr)}
#'   \item{bonus}{1 if cash bounty for new workers}
#'   \item{pctaff}{percent employees affected by new minimum}
#'   \item{meal}{free/reduced price code (See below)}
#'   \item{open}{hour of opening}
#'   \item{hrsopen}{number hrs open per day}
#'   \item{psoda}{price of medium soda, including tax}
#'   \item{pfry}{price of small fries, including tax}
#'   \item{pentree}{price of entree, including tax}
#'   \item{nregs}{number of cash registers in store}
#'   \item{nregs11}{number of registers open at 11:00 am}
#'   \item{type2}{type 2nd interview 1=phone; 2=personal}
#'   \item{status2}{status of second interview: see below}
#'   \item{date2}{date of second interview MMDDYY format}
#'   \item{hrsopen2}{number hrs open per day}
#'   \item{ncalls2}{number of call-backs*}
#'   \item{empft2}{Num full-time employees}
#'   \item{emppt2}{Num part-time employees}
#'   \item{nmgrs2}{Num managers/ass't managers}
#'   \item{wage_st2}{starting wage ($/hr)}
#'   \item{inctime2}{months to usual first raise}
#'   \item{firstin2}{usual amount of first raise ($/hr)}
#'   \item{special2}{1 if special program for new workers}
#'   \item{meals2}{free/reduced price code (See below)}
#'   \item{open2r}{hour of opening}
#'   \item{psoda2}{price of medium soda, including tax}
#'   \item{pfry2}{price of small fries, including tax}
#'   \item{pentree2}{price of entree, including tax}
#'   \item{nregs2}{number of cash registers in store}
#'   \item{nregs112}{number of registers open at 11:00 am}
#' }
#' @source \url{https://davidcard.berkeley.edu/data_sets.html}
"cardkrueger"

#' Highly processed version of NLS97 data.
#'
#' @format A data frame with 410 rows and 46 variables:
#' \describe{
#'   \item{lftwage}{Log of wages if positive and full-time}
#'   \item{black}{Indicator for black}
#'   \item{age}{Age}
#'   \item{age2}{Age squared}
#'   \item{msa}{Metropolitan area}
#'   \item{urban}{Indicator for urban}
#'   \item{south}{Indicator for south}
#'   \item{college}{Indicator for college}
#'   \item{female}{Indicator for female}
#'   \item{married}{Indicator for married}
#'   \item{children}{Indicator for children}
#' }
#' @source NLSY
"nlsy97"

#' Processed version of Boston HDMA data.
#'
#' Cross-sectional data, mortgage applications made in 1990 in the greater Boston metropolitan area.
#'
#' @format A data frame with 2,925 rows and 39 variables:
#' \describe{
#'   \item{seq}{Sequence number, unique identifier for observations}
#'   \item{deny}{Indicator for application denied}
#'   \item{black}{Indicator for applicant race being black}
#'   \item{wage}{Total monthly income of applicant (in dollars)}
#'   \item{chist}{Credit history - consumer payments}
#'   \item{mhist}{Credit history - mortgage payments}
#'   \item{phist}{Credit history - public records}
#'   \item{emp}{Years employed in applicable line of work}
#'   \item{assets}{Liquid assets (in thousands}
#'   \item{chval}{Change in median value of property in a given tract, 1980-1990}
#'   \item{clines}{Number of separate consumer credit lines on credit reports}
#'   \item{coap}{Co-applicant?}
#'   \item{lr}{Loan amount/Appraised value}
#'   \item{male_coap}{Co-applicant is male?}
#'   \item{married}{Applicant is married?}
#'   \item{pr}{Purchase price/Appraised value}
#'   \item{s20}{Number of units in property purchased}
#'   \item{s24a}{Number of dependents claimed by applicant}
#'   \item{s27a}{Self-employed applicant}
#'   \item{s39}{Number of commercial credit reports in loan file}
#'   \item{s48}{Term of loan (months)}
#'   \item{s53}{Private mortgage insurance (PMI) denied}
#'   \item{s55}{Was there a co-signer for the application?}
#'   \item{s56}{Unverifiable information}
#'   \item{s57}{Number of times application was reviewed by underwriter}
#'   \item{school}{Years of education}
#'   \item{suff}{Indicator for property in Suffolk County}
#'   \item{bd}{Boarded-up value of tract (1 if > MSA median)}
#'   \item{dnotown}{Not owner-occupied property}
#'   \item{dprop}{Type of property (1 if 2-4 families)}
#'   \item{dr}{TBD}
#'   \item{male}{Applicant sex is male}
#'   \item{mi}{Median tract income (1 if > MSA median)}
#'   \item{netw}{Net worth}
#'   \item{old}{Applicant age (1 if > MSA median)}
#'   \item{rtdum}{Minority population share in tract (1 if > 0.30)}
#'   \item{uria}{Probability of unemployment by industry}
#'   \item{vr}{Tract vacancy (1 if above MSA median)}
#'   \item{wage_coap}{Total monthly income of coapplicant (in dollars)}
#' }
#' @source \url{https://wps.pearsoned.com/aw_stock_ie_3/178/45691/11696965.cw/index.html}
"hdma"

#' Code Book for Ascii File
#'  Note: For more information, see the original article:
#'  David Card,
#'  "Using Geographic Variation in College Proximity to Estimate the Return to Schooling"
#'  NBER Working Paper 4832, August 1994
#'
#' This article is published (with the same title and identical tables)
#' in  Aspects of Labour Market Behaviour: Essays in Honour of John Vandekamp"
#' edited by Louis N. Christofides, E. Kenneth Grant, and Robert Swidinsky
#' Toronto: University of Toronto Press, 1995.
#'
#' The file contains 3,613 observations on men in 1976 cross-section
#' of NLS young men (original NLS cohort)
#' @format A data frame with 3,613 rows and 52 variables:
#' \describe{
#' \item{id}{Sequential id runs from 1 to 5225}
#' \item{nearc2}{Grew up near 2-yr college}
#' \item{nearc4}{Grew up near 4-yr college}
#' \item{nearc4a}{Grew up near 4-yr public college}
#' \item{nearc4b}{Grew up near 4-yr priv college}
#' \item{ed76}{Education in 1976}
#' \item{ed66}{Education in 1966}
#' \item{age76}{Age in 1976}
#' \item{daded}{Dad's education missing=avg}
#' \item{nodaded}{1 if daded imputed}
#' \item{momed}{Mom's education}
#' \item{nomomed}{1 if momed imputed}
#' \item{weight}{nls weight for 1976 cross-section }
#' \item{momdad14}{if live with mom and dad age 14}
#' \item{sinmom14}{Lived with single mom age 14}
#' \item{step14}{Lived step parent age 14}
#' \item{reg661}{Dummy for region=1 in 1966}
#' \item{reg662}{Dummy for region=2 in 1966}
#' \item{reg663}{Dummy for region=3 in 1966}
#' \item{reg664}{Dummy for region=4 in 1966}
#' \item{reg665}{Dummy for region=5 in 1966}
#' \item{reg666}{Dummy for region=6 in 1966}
#' \item{reg667}{Dummy for region=7 in 1966}
#' \item{reg668}{Dummy for region=8 in 1966}
#' \item{reg669}{Dummy for region=9 in 1966}
#' \item{south66}{Lived in south in 1966}
#' \item{work76}{Worked in 1976}
#' \item{work78}{Worked in 1978}
#' \item{lwage76}{Log wage (outliers trimmed) 1976 }
#' \item{lwage78}{Log wage in 1978 outliers trimmed }
#' \item{famed}{Mom-dad education class 1-9}
#' \item{black}{1 if black}
#' \item{smsa76r}{In smsa in 1976}
#' \item{smsa78r}{In smsa in 1978}
#' \item{reg76r}{In south in 1976}
#' \item{reg78r}{In south in 1978}
#' \item{reg80r}{In south in 1980}
#' \item{smsa66r}{In smsa in 1966}
#' \item{wage76}{Raw wage cents per hour 1976}
#' \item{wage78}{Raw wage cents per hour 1978}
#' \item{wage80}{Raw wage cents per hour 1980}
#' \item{noint78}{1 if noninterview in 1978}
#' \item{noint80}{1 if noninterview in 1980}
#' \item{enroll76}{1 if enrolled in 1976}
#' \item{enroll78}{1 if enrolled in 1978}
#' \item{enroll80}{1 if enrolled in 1980}
#' \item{kww}{The kww score}
#' \item{iq}{A normed iq score}
#' \item{marsta76}{mar status in 1976 1=married, sp. present}
#' \item{marsta78}{mar status in 1978 1=married, sp. present}
#' \item{marsta80}{mar status in 1980 1=married, sp. present}
#' \item{libcrd14}{1 if lib card in home age 14}
#' }
"nlsm"
