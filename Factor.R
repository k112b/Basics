getwd()
setwd("C:\\Users\\Sarbar\\Downloads\\P2-Movie-Ratings.csv")
getwd()
movies<- read.csv(P2.Movie.Ratings)
head(P2.Movie.Ratings)
colnames(P2.Movie.Ratings)<- c("Film","Genre","CriticRating","AudienceRating","BudgetMillions","Year")
head(P2.Movie.Ratings)
tail(P2.Movie.Ratings)
str(P2.Movie.Ratings)
summary(P2.Movie.Ratings)
factor(P2.Movie.Ratings$Year)
P2.Movie.Ratings$Year <- factor(P2.Movie.Ratings$Year)
summary(P2.Movie.Ratings)
str(P2.Movie.Ratings)


#----Aesthetics
library(ggplot2)
ggplot(data=P2.Movie.Ratings, aes(x=CriticRating, y =AudienceRating))

# add geometry
ggplot(data=P2.Movie.Ratings, aes(x=CriticRating, y =AudienceRating))+ geom_point()

# add colour
ggplot(data=P2.Movie.Ratings, aes(x=CriticRating, y =AudienceRating, colour=Genre))+ geom_point()

# add size

ggplot(data=P2.Movie.Ratings, aes(x=CriticRating, y =AudienceRating, colour=Genre, size= Genre))+ geom_point()

# add size - better way

ggplot(data=P2.Movie.Ratings, aes(x=CriticRating, y =AudienceRating, colour=Genre, size= BudgetMillions))+ geom_point()


# This is number 1 ( we will improve it)

p<- ggplot(data=P2.Movie.Ratings, aes(x=CriticRating, y =AudienceRating, colour=Genre, size= BudgetMillions))

#point
p+ geom_point()
#lines
p+geom_line()


#multiple layers

p+geom_point()+geom_line()
p+geom_line()+geom_point()


#--- overring aesthetics

q<- ggplot(data=P2.Movie.Ratings,aes(x=CriticRating,y=AudienceRating,colour=Genre,size=BudgetMillions))


#add  geom payer
q+ geom_point()

# overriding eas
q+ geom_point(aes(size=CriticRating))

# example 2 overwriting colour

q+ geom_point(aes(colour=BudgetMillions))
q+geom_point()


#ex3

q+geom_point(aes(x=BudgetMillions))

q+geom_point(aes(x=BudgetMillions))+ xlab("Budget Million $$$$")

#ex4


q+geom_line()+geom_point()

#reduce line size
q+geom_line(size=1)+ geom_point()


#--- mapping  vs setting

r <- ggplot(data=P2.Movie.Ratings, aes(x=CriticRating,y=AudienceRating))
r+ geom_point()


#1. Add colour

#1 Mapping(what we've done so far)
r+ geom_point(aes(colour=Genre))
#2. Setting
r+geom_point(colour="DarkGreen")

r+geom_point(aes(size=BudgetMillions))
r+geom_point(size=10)

#error
r+ geom_point(aes(size=10))


#histograms and density charts

s<- ggplot(data=P2.Movie.Ratings,aes(x=BudgetMillions))
s+geom_histogram(binwidth=10)

# add colour
s+ geom_histogram(binwidth=10, aes(fill=Genre))

# add a boarder
s+ geom_histogram(binwidth=10, aes(fill=Genre), colour='Black')

#3 (we will improve it)

s+ geom_density(aes(fill=Genre))
s+geom_density(aes(fill=Genre), position='stack')

#--- starting layer tips

t <-ggplot(data=P2.Movie.Ratings,aes(x=AudienceRating))
t+geom_histogram(binwidth=10,fill='White',colour='blue')


#another way

t<-ggplot(data=P2.Movie.Ratings)
t+geom_histogram(binwidth=10,aes(x=AudienceRating),fill='White',colour='blue')

#-----4th chart

t+geom_histogram(binwidth=10,aes(x=CriticRating),fill='White',colour='blue')


#------- 5
t<-ggplot()


?geom_smooth
u<- ggplot(data=P2.Movie.Ratings,aes(x=CriticRating,y=AudienceRating,color=Genre))
u+geom_point()+geom_smooth(fill=NA)


#boxplots

t+geom_histogram(binwidth=10,aes(x=AudienceRating),fill='White',colour='blue')
u+geom_boxplot()
u+geom_boxplot(size=1.2)+geom_point()

# tip/hack:
u+geom_boxplot(size=1.2)+geom_jitter()


#another way
u+geom_jitter()+geom_boxplot(size=1.2,alpha=0.5)


#6

v <- ggplot(data=P2.Movie.Ratings,aes(x=BudgetMillions))
v + geom_histogram(binwidth=10,aes(fill=Genre), colour='Black')
 #facets
v + geom_histogram(binwidth=10,aes(fill=Genre), colour='Black') + facet_grid(Genre~., scales = 'free')


#scatterplots

w<-ggplot(data=P2.Movie.Ratings,aes(x=CriticRating,y=AudienceRating,colour=Genre))
w+geom_point(size=3)
#facets
w+geom_point(size=3)+facet_grid(Genre~.)

w+geom_point(size=3)+facet_grid(Year~.)


w+geom_point(size=3)+facet_grid(Genre~Year)

#------using facets

v<-ggplot(data=P2.Movie.Ratings,aes(x=BudgetMillions))
v+geom_histogram(binwidth=10,aes(fill=Genre),colour='Black')

#facets
v+geom_histogram(binwidth=10,aes(fill=Genre),colour='Black')+facet_grid(Genre~.,scales='free')


#scatterplots

w<-ggplot(data=P2.Movie.Ratings,aes(x=CriticRating,y=AudienceRating,colour=Genre))
w+geom_point(size=3)


#facets
w+geom_point(size=3)+facet_grid(Genre~.)

w+geom_point(size=3)+facet_grid(.~Year)

w+geom_point(size=3)+facet_grid(Genre~Year)


w+geom_point(size=3)+geom_smooth()+facet_grid(Genre~Year)

w+geom_point(aes(size=BudgetMillions))+geom_smooth()+facet_grid(Genre~Year)

# --1 (but still will improve)


