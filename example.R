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