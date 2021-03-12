#Kmedoid algorithm

library(cluster)
library(factoextra)
fit <- pam(x=heart2, k=4)
fit&clustering 
fit$medoids

summary(fit)
fviz_cluster(fit)