#clustering
library(dplyr)
df<-mtcars 
head(mtcars)
kmeans
mtcars$mpg
dim((mtcars) #dimension
    str(mtcars) #structure
    nrow(mtcars)
    ncol(mtcars)
    class(mtcars)
    ?mtcars
    summary(mtcars)
    #clustering on basis of mileage
    df=mtcars
    df
    df$cyl=factor(df$cyl) #converting into category
    str(df)
    model3=kmeans(mtcars$mpg,centers=3) #clsutering based only on mileage and in 3 clusters
    model3
    model3$cluster
    cbind(mtcars$mpg,model3$cluster)
    #clustering basd on mileage and weight
    model4=kmeans(mtcars[,c('mpg','wt')],centers=3) #clsutering based only on mileage and weights and in 3 clusters
    model4
    model4$cluster
    cbind(mtcars[,c('mpg','wt')],model4$cluster)
    
    df2=cbind(mtcars[,c('mpg','wt')], cluster2=model4$cluster)
    df2 %>% arrange(cluster2)
    df2 %>% group_by(cluster2) %>% summarise(n())
model4$centers    
