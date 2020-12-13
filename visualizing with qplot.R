# --- introduction to qplot
?qplot
install.packages('ggplot2')
library(ggplot2)
?qplot
qplot(data=stats, x = Internet.users)
qplot(data=stats,x=Income.Group,y=Birth.rate)
qplot(data=stats,x=Income.Group,y=Birth.rate,size =I(10))
qplot(data=stats,x=Income.Group,y=Birth.rate,size =I(10),color =I('blue'))
qplot(data=stats,x=Income.Group,y=Birth.rate,geom='boxplot')


#------- visualizing what we need


qplot(data=stats,x=Internet.users,y=Birth.rate,colour=Income.Group,size=I(4))


#limits
#zoom

m <- ggplot(data=P2.Movie.Ratings,aes(x=CriticRating,y=AudienceRating,size=BudgetMillions,Colour=Genre))


m + geom_point()

m+geom_point()+xlim(50,100)

o <- ggplot(data=P2.Movie.Ratings,aes(x=BudgetMillions))
o + geom_histogram(binwidth=10,aes(fill=Genre),colour='Black')
