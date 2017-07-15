#options I know
#http://www.statmethods.net/graphs/line.html                #types of plots

#type="l","c"
#main="Text"
#xlab="Text"
#ylab="Text"
#col=1:4, #col="red", #col=mtcars$cyl, #col=as.factor(mtcars$cyl)
#labels=1:4




# general plot with base graphics
plot(data_maruti$Close,
     type = "l",
     main = "Maruti Closing Values",
     col = "red", xlab = "Date", ylab = "Index Value")


# Plot the correct variables of mtcars
plot(mtcars$wt, mtcars$mpg, col = mtcars$cyl)

# Change cyl inside mtcars to a factor
mtcars$fcyl <- as.factor(mtcars$cyl)

# Make the same plot as in the first instruction, assign color according to cylinder factor variable
plot(mtcars$wt,mtcars$mpg, col = mtcars$fcyl)


#######################

library(astsa)
plot(jj, main="J&J Quarterly Earnings per share", type="c")
text(jj, labels=1:4,col=1:4)

#######################


