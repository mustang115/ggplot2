library(ggplot2)

#datasets to practice with
#mtcars
#diamonds

# how to make simple plots with ggplot2

# grammer of graphics

# data              # dataset being plotted
# aesthetics        # Scale to which to map the data
# geometries        # Visual elements of the data
# facets
# statistics
# co-ordinates
# themes

# geom layer functionalities
# geom_point()
# geom_smooth()     # just adds a smooth line on top of the points
  # alpha = 0.4     # makes it 40% transparent


# aesthetic layer functionalities
# factor
# color   # note if you use color and lines, the lines split up based on the color
# size
# shape # havent tested yet

# data frame, axis and what type of chart you want
ggplot(mtcars, aes(x=cyl, y=mpg)) + geom_point()

# treat one set of variables as factors ( only that factor level is shown, not treated as number)

ggplot(mtcars, aes(x=factor(cyl), y=mpg)) + geom_point()

# generate color and size of the points based on another variable

ggplot(mtcars, aes(x=wt,y=mpg,color=disp)) + geom_point()

ggplot(mtcars,aes(x=wt,y=mpg, size=disp)) + geom_point()

# shape of the points only makes sense with categorical data

#using geom_smooth

ggplot(diamonds, aes(x=carat, y=price)) + 
  geom_point() + 
  geom_smooth()
  # one thing to note is as soon as you add by color and line, the lines get split by the color

ggplot(diamonds, aes(x = carat, y = price, color = clarity)) +
  geom_point() +
  geom_smooth()
  
  # alpha option inside the geom_point makes it 40% transparent
ggplot(diamonds, aes(x = carat, y = price, color = clarity)) +
  geom_point(alpha=0.4) +

# assigning and plotting in multiple steps

dia_plot <- ggplot(diamonds, aes(x = carat, y = price))

dia_plot <- dia_plot + geom_point(alpha=0.2)

  # if you dont want error shading, enabled by deafult it can be achieved by setting the se = FALSE
dia_plot <- dia_plot + geom_smooth(se=FALSE)
       




