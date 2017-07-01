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
