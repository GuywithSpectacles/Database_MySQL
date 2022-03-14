library(RMySQL)

affyData <- dbReadTable(hg19, "affyU133Plus2")

head(affyData)
