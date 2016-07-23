library(ggplot2)
library(GGally)

# autompg analysis
## read in 
autompg <- read.csv('https://www3.epa.gov/fueleconomy/testcars/database/16tstcar.csv', header=TRUE)

## sample data to create testset and trainset...75% to trainset and 25% to testset
numrows = nrow(autompg)
trainset_size = round(nrow(autompg)*0.75, 0)
testset_size = nrow(autompg) - trainset_size

trainset_index = sample(nrow(autompg), trainset_size)

trainset = autompg[trainset_index,]
testset = autompg[-(trainset_index),]

## exploration of trainset
nrow(autompg)
summary(autompg)
str(autompg)

## correlation matrix
cor(autompg[, 1:7])  ## note the use of indexing to pull only numerical columns

p = ggplot(trainset, aes(disp, mpg, colour=year)) + geom_point()
p = ggplot(trainset, aes)
p





