#---- exploring data
stats
nrow(stats)
ncol(stats)
head(stats)
tail(stats)
str(stats)
summary(stats)


#------ using the $ sign
stats
head(stats)
stats[3,3]
stats[3,'Birth.rate']

stats$Internet.users
stats$Internet.users[2]
stats[,'Internet.users']
levels(stats$Income.Group)


#----- basic operations with a DF

stats[1:10,]
stats[3:9,]
stats[c(4,100),]
stats[1,]
is.data.frame(stats[1,])
stats[,1]
is.data.frame(stats[,1])
stats[,1,drop=F]

#multiply columns

head(stats)
stats$Birth.rate * stats$Internet.users

#add column
head(stats)
stats$MyCalc <- stats$Birth.rate * stats$Internet.users

#test of knowledge
stats$xyz <- 1:5
head(stats, n=10)

# remove a column
head(stats)
stats$MyCalc <- NULL


# filtering a data frame
head(stats)
filter <- stats$Internet.users < 2
stats[filter,]

stats[stats$Birth.rate >40,]
stats[stats$Birth.rate >40 & stats$Internet.users<2,]



stats[stats$Income.Group == 'High income',]
levels(stats$Income.Group)

stats[stats$Country.Name=='Malta',]

