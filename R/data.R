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
#' @format A data frame with 2,925 rows and 8 variables:
#' \describe{
#'   \item{seq}{Sequence number, unique identifier for observations}
#'   \item{deny}{Indicator for application denied}
#'   \item{black}{Indicator for applicant race being black}
#'   \item{wage}{Total monthly income of applicant (in dollars)}
#'   \item{chist}{Credit history - consumer payments}
#'   \item{mhist}{Credit history - mortgage payments}
#'   \item{phist}{Credit history - public records}
#'   \item{emp}{Years employed in applicable line of work}
#' }
#' @source \url{https://wps.pearsoned.com/aw_stock_ie_3/178/45691/11696965.cw/index.html}
"hdma"
