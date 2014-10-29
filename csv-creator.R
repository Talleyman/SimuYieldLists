setwd("~/Dong Wang Simulation Data")
map<-read.table("DongWang_simuYield.csv",sep=",",header=T)
map$line.number<-map$X<-NULL
for (j in names(map)){
  fl <- paste0(j, ".csv") 
  write.csv(rank(map[[j]]), file=fl)
}
