library(dplyr)

baserdownloads <- jsonlite::fromJSON("https://cranlogs.r-pkg.org/downloads/total/2018-01-01:2018-12-31/R")
baserdownloads %>% as.data.frame
write.csv(baserdownloads,'baserdownloads.csv') #need to change path, or it will be saved in C:/

rpackages2018 <- jsonlite::fromJSON("https://cranlogs.r-pkg.org/downloads/total/2018-01-01:2018-12-31")
rpackages2018 %>% as.data.frame
write.csv(rpackages2018,'rpackages2018.csv')

rpackages2018firsthalf <- jsonlite::fromJSON("https://cranlogs.r-pkg.org/downloads/total/2018-01-01:2018-06-30")
rpackages2018secondhalf <- jsonlite::fromJSON("https://cranlogs.r-pkg.org/downloads/total/2018-07-01:2018-12-31")
rpackages2018firsthalf %>% as.data.frame
rpackages2018secondhalf %>% as.data.frame
rpackages2018byhalfyear <- rbind(rpackages2018firsthalf, rpackages2018secondhalf)
write.csv(rpackages2018byhalfyear,'rpackages2018byhalfyear.csv')

