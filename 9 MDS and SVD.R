library(tissuesGeneExpression)
data(tissuesGeneExpression)

y = e - rowMeans(e)
s = svd(y)
z = s$d * t(s$v)

library(rafalib)
ftissue = factor(tissue)
mypar(1,1)
plot(z[1,], z[2,], col=as.numeric(ftissue))

d = dist(t(e))
mds = cmdscale(d)

cor(z[1,],mds[,1])
cor(z[2,],mds[,2])

mypar(1,2)
plot((z[1,]*-1), (z[2,]*-1),col=as.numeric(ftissue))
legend("topleft", levels(ftissue), col=seq_along(ftissue),pch=1)
plot(mds[,1], mds[,2], col=as.numeric(ftissue))


library(GSE5859Subset)
data(GSE5859Subset)

#Compute the svd and compute z
s = svd(geneExpression-rowMeans(geneExpression))
z = s$d * t(s$v)

ks = 1:nrow(z)

dimcors = sapply(ks, function(k){
  cor(z[k,], sampleInfo$group)
})

plot(ks, dimcors)
View(dimcors)

#which.max(dimcors[dimcors!=max(dimcors)]) + 1

which.max(dimcors)
max(dimcors)

library(GSE5859Subset)
data(GSE5859Subset)
s = svd(geneExpression-rowMeans(geneExpression))
z = s$d * t(s$v)

ks = 1:nrow(z)

dimcors = sapply(ks, function(k){
  cor(z[k,], as.numeric(month))
})

month = format( sampleInfo$date, "%m")
month = factor( month)
View(month)

View(sampleInfo$group)
