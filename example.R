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

#misc
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

#thinking about vectors
x <- c(1:4)
x*2
x*x
x>2
p<-c(.04,.1)
sig<-p<0.05
p*x
#functions
#calculate population of continent for a year
calc_cont_pop<-function(d,continent,year){
  sum(d[d$year == year & d$continent == continent,"pop"])
}
calc_cont_pop(gm,'Africa',1997)
calc_cont_pop(gm,'Africa',1998)
calc_cont_pop(gm,'Africa',1999)

#plots
pdf("lifeexp_v_time.pdf",width=12,height=4)
ggplot(data = gm,aes(x=lifeExp,y=gdpPercap,color=country))+
  geom_point()+scale_y_log10()+geom_smooth(method="lm",se = FALSE)+
  theme(legend.position = 'None')
dev.off()