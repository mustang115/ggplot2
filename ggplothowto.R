library(ggplot2)

# how to make simple plots with ggplot2

# data frame, axis and what type of chart you want
ggplot(mtcars, aes(x=cyl, y=mpg)) + geom_point()

# treat one set of variables as factors ( only that factor level is shown, not treated as number)

ggplot(mtcars, aes(x=factor(cyl), y=mpg)) + geom_point()
