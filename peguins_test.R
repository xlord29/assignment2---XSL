#import data and libraries
library(readr)
library(Hmisc)

peguins.df <- read_csv("~/Documents/GitHub/assignment2---XSL/penguins (1).csv")

#initial data cleaning 
peguins.df$species <- factor(peguins.df$species)
peguins.df$island <- factor(peguins.df$island)
peguins.df$sex <- factor(peguins.df$sex)
peguins.df <- na.omit(peguins.df)

#Initial Descriptive Code
str(peguins.df)
summary(peguins.df)
hist.data.frame(peguins.df)

#make a linear regression
model<- lm(sex ~ ., data = peguins.df)
print(model)
