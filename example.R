#view this script at 
#https://github.com/rachelss/BigDataAnalysis/blob/gh-pages/example.R

#install.packages('curl')
#install.packages('ggplot2')
#install.packages('dplyr')

#load packages
library(curl)
library(ggplot2)
library(dplyr)

#from command command line
myfilename <- commandArgs()[1]

#working with gapminder data - see gapminder.org
#assign to variable named gm
#from gapminder package the gapminder data
#install.packages('gapminder')
gm <- gapminder::gapminder
gm$continent<-as.character(gm$continent)
gm$pop <- as.numeric(gm$pop)
gm <-as.data.frame(gm)
#functions
#calculate population of continent for a year
#not working come back to this
calc_cont_pop<-function(continent,year){
  sum(gm[gm$year == year & gm$continent == continent,"pop"])
}

cont_list <- unique(as.character(gm$continent))
pops_all_conts_1997 <- mapply(calc_cont_pop,cont_list,1997)
pops_all_conts_2002 <- mapply(calc_cont_pop,cont_list,2002)
names(pops_all_conts_1997) <- cont_list

#plots
pdf("lifeexp_v_time.pdf",width=12,height=4)
ggplot(data = gm,aes(x=lifeExp,y=gdpPercap,color=country))+
  geom_point()+scale_y_log10()+geom_smooth(method="lm",se = FALSE)+
  theme(legend.position = 'None')


#Split-Apply-Combine with dplyr
gm %>% group_by(continent) %>% summarise(gdppercap =mean(gdpPercap)) %>%
  ggplot(aes(x=continent,y=gdppercap))+geom_point()

gm %>% filter(year == 2007) %>% #filter gm for 1997
  ggplot(aes(x=continent, y=gdpPercap*pop))+geom_point()

#filter(gm,year==2007)

#gm %>% select(country,year,pop) %>% head()
#gm %>% mutate(gdp = gdpPercap*pop) %>% head()
#above same as below
#gm$gdp <- gm$gdpPercap*gm$pop

##MODELS##
ggplot(gm,aes(x=year,y=lifeExp))+
  xlab("Year") + ylab("Life Expectancy")+
  geom_point() + geom_smooth(method=lm)
dev.off()

gm_model <- lm(lifeExp ~ year, data = gm)
print(summary(gm_model))

print(myfilename)