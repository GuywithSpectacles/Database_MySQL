query <- dbSendQuery(hg19, 'select * from affyU133Plus2 where 
                     misMatches between 1 and 3')
affyMis <- fetch(query); quantile(affyMis$misMatches)


affyMisSmall <- fetch(query, n=10); dbClearResult(query);

dim(affyMisSmall)

dbDisconnect(hg19)
