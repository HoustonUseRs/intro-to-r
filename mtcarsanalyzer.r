##
## [mtcarsanalysis.r]
##
## author     : Ed Goodwin
## project    : intro-to-r
## createdate : 05.09.2016
##
## description:
##    code to analyze the mtcars dataset
##
## version: 0.01
## changelog:
##

require(dplyr)
require(ggplot2)
require(GGally)

## let's get the dataset mtcars from the web
webfile = "https://vincentarelbundock.github.io/Rdatasets/csv/datasets/mtcars.csv"
wmtcarstbl = read.csv(webfile, header = TRUE)

## how would we read it from a local CSV file?
localfile = "data/mtcars.csv"
lmtcarstbl = read.csv(localfile, header = TRUE)

## let's set one of these datasets to a common data set we will use for the
## rest of the exercise
mtcarstbl = lmtcarstbl

## let's do some quick analysis of the data...these are good commands to run
## with a new dataset to get familiar with it...we should make some observations
## about the data here
names(mtcarstbl)
head(mtcarstbl)
str(mtcarstbl)
summary(mtcarstbl)

## recast some data to factors
mtcarstbl$cyl = as.factor(mtcarstbl$cyl)
mtcarstbl$gear = as.factor(mtcarstbl$gear)
mtcarstbl$carb = as.factor(mtcarstbl$carb)
mtcarstbl$am = as.factor(mtcarstbl$am)

## let's make some pretty pictures
ggpairs(mtcarstbl[,2:5], colour='carb')
ggplot(mtcarstbl, aes(hp, mpg, colour=cyl)) + geom_point()
ggplot(mtcarstbl, aes(hp, cyl)) + geom_point()
ggplot(mtcarstbl, aes(am, mpg, colour=cyl)) + geom_point()
