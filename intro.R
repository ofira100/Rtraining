## intro to R
# asking for help
?sqrt
sqrt(9)
round (2.543) #nearest whole number
round (2.543, digits=2) # adding a parameter
?round # with the ? the info will be provided bottom right
args (round)
# searching for help
help.search ("anova")
# creating objects
weight_kg <-55 # creation of object
weight_kg # recall objec
(weight_kg <- 55) # assign object and print in console
2.2*weight_kg # function with object weight_kg <- 57.5 # reasign object value
weight_ib <- 2.254*weight_kg
weight_kg <-100
#creating vectors
weights <- c(50, 60, 65, 82) #the c is like cat
weights #recall objet values
animals <- c("mouse", "rat", "dog", "cat") #creating a vector with characters
lengths (weights) #to inspect a vector, find the number of values
class (weights) # type of element in vector
class (animals)
str(weights) # overview of structure
weights <- c(weights, 90) # adding values to end of vactor
weights
weights <- c(30, weights)
weights
# remove everything in the environment or the broom function 
rm(list=ls())
# function to download data copy the url in parenthesis and quotes with .csv (comma separated values) extension, then comma, then the file name to where the data should go.
download.file("http://k8hertweck.github.io/2015-11-19-umiami-R/data/gapminder-FiveYearData.csv", "data.csv")
download.file("http://k8hertweck.github.io/2015-11-19-umiami-R/data/gapminder-FiveYearData.csv", "~/Desktop/data.csv") # to download data to desktop
#to import data into R
read.csv("data.csv")
data <- read.csv("data.csv")
str(data)
get wd
(getwd)
getwd() # to find out what directory I am in
class(data)
head(data)
# manipulating data
#extract first row, first column
data[1,1]
data[5,3]
#to select a sectin of raws
data[2:6, 1:2] #getting a slice of the data
#for values that are not coninuouse use hte cat function
data[c(2, 7, 10), c(1, 3)]
#to select all columns from one raw
data[5, ]
#to select all raws from one column
data[ ,5]
lifeExp <- data [ ,5] # save to object
mean(lifeExp) # find mean saved object
mean(data [ ,5]) # find mean with column extraction
averageColumns <- apply(data, 2,mean) # to find the ave column (2) or rows (1) and apply to the mean
averageColumn <- apply(data[ ,c(3, 5, 6)], 2, mean) # apply function across selected rows
## creating functions pay attention to the position of the variables
g2kg <- function(x)  x/1000 #setting a new function
g2kg (5) #testing the function
g2gk(weights)
g2kg(weights)

## make a quick and dirty plot
pdf("figure/figure.pfd")
plot(data$year, data $lifeExp, main="My fig", xlab= "year", ylab= "life expectancy")

## running stat tests
Help.search("anova")

# ANOVA
Fit<- aov(lifeExp ~ country, data=data) # fit model oav is anova
Fit # view model
summary(fit)

# t test
data(sleep)
head(sleep)
?sleep
# unparied t-test
t.test(extra ~group, data=sleep) # the numeric comes first, the group second, and the data set last
# paired t-test
with(sleep, t.test(extra[group == 1], extra[group ==2], paired = TRUE))
#specifying the numerical variables that sleep comes first. # with to associate a separate collection of data

