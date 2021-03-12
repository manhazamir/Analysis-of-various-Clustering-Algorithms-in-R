library(cluster)
#Hierarchical clustering
?hclust
d<- dist(scaled)
hc1 <-agnes(d, method = "complete")
hc1 <-agnes(d, method = "ward")
hc1 <-agnes(d, method = "single")
hc1 <-agnes(d, method = "average")  #To compare
hc1$ac
plot (hc1)
rect.hclust(hc1, k=4, border = "red")
summary(hc1)
plot (heart2, col = hc1)
