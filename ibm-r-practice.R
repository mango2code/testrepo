cars <- c(1,3,6,7,18)
plot(cars, type="o")
title( main = "Cars vs Index ")

install.packages("ggplot2")
library(ggplot2)
#geom_point = scartter plot
ggplot(mtcars, aes(x=mpg, y=wt)) + geom_point()
ggplot(mtcars, aes(x=mpg, y=wt)) + geom_point() + 
  ggtitle("Miles/galon vs weight") + labs(x="miles per galon", y="weight")

library(datasets)
data(iris)
View(iris)
unique(iris$Species)

library(datasets)
data(mtcars)
head(mtcars, 5)
?mtcars

library(ggplot2)
ggplot(data=mtcars, aes(x=disp, y=mpg)) + geom_point() + 
  ggtitle("displaycement vs mpg") + 
  labs(x="Displacement", y="miles per galen")

mtcarsvs <- as.factor(mtcars$vs)
ggplot(aes(x=mtcarsvs, y=mpg), data=mtcars) +
  geom_boxplot()

#fill - add color, alpha add transparency, legend.position none cancel legend
ggplot(aes(x=mtcarsvs, y=mpg, fill = mtcarsvs), data = mtcars) + 
  geom_boxplot(alpha=0.5) +
  theme(legend.position = "none")

#histogram
ggplot(aes(x=wt), data=mtcars) +
  geom_histogram(binwidth=0.7)




