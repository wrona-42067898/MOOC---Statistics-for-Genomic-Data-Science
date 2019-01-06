library(tissuesGeneExpression)
data(tissuesGeneExpression)
library(rafalib)

d <- dist( t(e) )
d
mypar()
hc <- hclust(d)


#plclust from rafalib allows you do add colours
            #format  labels        #  columns            #fontsize
myplclust(hc, labels=tissue, lab.col=as.fumeric(tissue), cex=0.5)

#note that hc keeps track of which tissues line up with distances from the e matrix

abline(h=120)
#determine groups from a cutoff point e.g everything that splits below the abline

#this splitting can be done with cuttree()

cl = cutree(hc, h=120)
table(true=tissue, cluster=cl) #can see what groups everything clusters into
                               #e.g. liver (nearly) all clusters togehter in cluster 8
                               #kidneys for example, are very spread out :\


set.seed(1)
m = 10000
n = 24
x = matrix(rnorm(m*n),m,n)
colnames(x)=1:n
d<- dist(t(x))
hc <- hclust(d)
plot(hc)


set.seed(1)
m = 10000
n = 24
nc = replicate(100,{
  x = matrix(rnorm(m*n),m,n)
  hc = hclust( dist( t(x)))
  length(unique(cutree(hc,h=143)))
})
plot(table(nc))
popsd(nc)





          