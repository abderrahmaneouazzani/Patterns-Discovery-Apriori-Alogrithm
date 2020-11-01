
library(arules)

categories <- read.transactions("categories.txt", format="basket", sep=";", quote = "")

summary(cate)

MyRules<-apriori(data=categories,parameter=list(support=0.01, target="frequent itemsets"))

write(MyRules, 'pattern.csv', sep=",")

