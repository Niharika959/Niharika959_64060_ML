getwd()
Students_Performance <- read_csv("./StudentsPerformance.csv") #reading a dataset after importing
View(Students_Performance)
summary(Students_Performance) #transforming the dataset
#quantitative variables
mean(Students_Performance$math_score) 
mean(Students_Performance$reading_score)
mean(Students_Performance$writing_score)
#plot of a quantitative variable
hist(Students_Performance$math_score)
plot(Students_Performance$math_score,Students_Performance$writing_score)
#qualitative variables(categorical)
Pivot_Table <- table(Students_Performance$gender)
Pivot_Table

#scatterplot
plot(x = Students_Performance$writing_score, y = Students_Performance$reading_score, xlab = "Writing",
     ylab = "Reading", main = "Scatterplot"
)

#plot of a qualitative variable
barplot(Pivot_Table)