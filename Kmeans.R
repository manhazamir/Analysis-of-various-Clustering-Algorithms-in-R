#Kmeans algorithm

library(cluster)
plot(heart2)
scaled <- scale(heart2[,-5])
scaled

fitk<- kmeans(scaled, 4)
fitk
plot (heart2, col = fitk$cluster)

m<-list()
for (i in 1:10) {
  m[[i]] <- kmeans(scaled, i)
}

betweenss_totss <-list()
for (i in 1:10)
  {
  betweenss_totss[[i]]<-m[[i]]$betweenss/m[[i]]$totss
}
plot(1:10, betweenss_totss, type = "b",
ylab= "Between SS/ Total SS", xlab= "Number of clusters(k)")

clusplot(heart2, fitk$cluster, color = TRUE, shade= T, lines=0)
