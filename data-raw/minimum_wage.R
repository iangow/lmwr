library(googledrive)

url <- "https://drive.google.com/file/d/1i4bXQguHEOZLgngzEhZfLr5NGg5YTQE_/view"
local_path <- "data/minimum_wage.csv"
try(drive_download(url, path = local_path, overwrite = FALSE))
