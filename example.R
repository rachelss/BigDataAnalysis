#view this script at 
#https://github.com/rachelss/BigDataAnalysis/blob/gh-pages/example.R

#install.packages('curl')
#install.packages('ggplot2')
#install.packages('dplyr')

#load packages
library(curl)
library(ggplot2)
library(dplyr)

#working with gapminder data - see gapminder.org
#assign to variable named gm
#from gapminder package the gapminder data
#install.packages('gapminder')
gm <- gapminder::gapminder
head(gm)
str(gm)  #structure of data
class(gm)
typeof(gm)
gm$country
colnames(gm)
rownames(gm)
gm_copy<-gm
colnames(gm_copy) <- c('a','b','c','d','e','f')
gm[c(3,5),c(2,5)] #subset data - row 3 and 5 for col 2 and 5
gm[c(3,5),]
min(gm$lifeExp)
max(gm$pop)
min(gm[,5])
colnames(gm)
gm$gdp <- gm$pop * gm$gdpPercap

