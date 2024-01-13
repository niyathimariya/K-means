library(ISLR)
usarrest=datasets::USArrests
scale_data=scale(usarrest)
result<-kmeans(scale_data, centers = 2, nstart = 20)
result$cluster
plot(scale_data, col=(result$cluster), main="K-Means Clustering Results with K=2", xlab="", ylab="", pch=20, cex=2)
set.seed(4)
result2<-kmeans(scale_data,centers = 3, nstart = 20)
result2
result2$cluster
plot(scale_data, col=(result2$cluster), main="K-Means Clustering Results with K=3", xlab="", ylab="", pch=20, cex=2)
set.seed(3)
result3=kmeans(scale_data, centers = 3, nstart = 20)
result3
result3$tot.withinss
set.seed(3)
result4=kmeans(scale_data, centers = 3, nstart = 20)
result4$tot.withinss
set.seed(4)
result5<-kmeans(scale_data,centers = 4, nstart = 20)
result5
result5$tot.withinss
set.seed(5)
result6<-kmeans(scale_data,centers = 5, nstart = 20)
result6$tot.withinss
result$tot.withinss
set.seed(6)
result7<-kmeans(scale_data,centers = 6, nstart = 20)
result7$tot.withinss
plot(scale_data, col=(result5$cluster), main="K-Means Clustering Results with K=4", xlab="", ylab="", pch=20, cex=2)
library(tidyverse)
wss<-function(k)
{
  kmeans(scale_data,centers=k,nstart = 10)$tot.withinss
}
k.values<-1:15
wss.values<-map_dbl(k.values,wss)
plot(k.values,wss.values,type = "b",pch=19,frame=FALSE,XLAB="Number of clutsers K",
     ylab = "Tostal within clusters sum of squares")
set.seed(123)
#ideally it would be 3 or 4
library(cluster)
library(factoextra)
p1<-fviz_cluster(result2,geom="point",data=scale_data) +ggtitle("K=3")
p1
p2<-fviz_cluster(result5,geom="point",data=scale_data) +ggtitle("K=4")
p2
result2
result5
#k=4 is giving better insights about the data than k=3
result6

