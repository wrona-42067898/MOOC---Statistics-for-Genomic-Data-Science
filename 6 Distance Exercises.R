library(tissuesGeneExpression)
data(tissuesGeneExpression)
head(e)
head(tissue)

table(tissue)

d <- dist(t(e)) #transpose so we calc for samples not genes

class(d) #dist object; need to convert it to something better like matrix before slicing

as.matrix(d)["210486_at"]

esub1 <- e['210486_at',]
esub2 <- e['200805_at',]

esub <- cbind(esub1, esub2)
esub
esubdist <- dist(t(esub))
esubdist

dim(e)

length(d)
nrow(d)^2
