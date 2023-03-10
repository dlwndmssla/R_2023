data <- c(80,  399,
30,  121,
50 , 221,
90  ,376,
70,  361,
60 , 224,
120 , 546,
80  ,352,
100 , 353,
50  ,157,
40  ,160,
70  ,252,
90  ,389,
20  ,113,
110 , 435,
100 , 420,
30  ,212,
50  ,268,
90  ,377,
110 , 421,
30  ,273,
90  ,468,
40  ,244,
80  ,342,
70  ,323)
print(data)


exam = list()
index1 <- seq(1,50,by = 2 )
index2 <- seq(2,50 ,by = 2 )
for (i in index){
  print(i)
}

exam1 <- data[index1]
exam2 <- data[index2]

output = lm(exam2 ~exam1)

exam <- cbind(data[2]^2)
exam <- list()
exam3<- exam1^2
exam4 <- exam1*exam2
exam <- cbind(exam1, exam2, exam3, exam4)
print(exam)

print(sum(exam[,3]))
a = sum(exam[,4]) - mean(exam[,1])*mean(exam[,2])*25 
c = sum(exam[,3])

d = mean(exam[,1])^2*25

beta1 = (a)/(c-d)
print(beta1)

beta0 = mean(exam[,2]) - mean(exam[,1])*beta1
print(beta0)

mean(exam[,2])
mean(exam[,1])

plot(exam[,1],exam[,2])
plot(exam[,1],3.57+62.37*exam[,1], )

plot(x = exam[,1], 3.57+62.37*x)

#----------------#
anova(output)
summary(output)


