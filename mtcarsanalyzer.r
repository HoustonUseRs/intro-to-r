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

## let's get the dataset mtcars
datafile = "https://vincentarelbundock.github.io/Rdatasets/csv/datasets/mtcars.csv"
mtcarstbl = read.csv(datafile, header = TRUE, stringsAsFactors = FALSE)

## let's do some quick analysis of the data...these are good commands to run
## with a new dataset to get familiar with it
head(mtcarstbl)
str(mtcarstbl)
summary(mtcarstbl)


