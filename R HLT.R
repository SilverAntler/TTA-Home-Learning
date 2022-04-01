data(.packages(all.available = TRUE))
data()

#typing the name of the data set into the console brings up a sample of the data. 
#typing ?name of the data set (e.g. ?sleep) brings up an explanation in the bottom right help screen.

#e.e. sleep has 20 observations on 3 variables. [1] extra numeric increase in sleep hours, [2] group drug given, [3] ID patient ID

data(sleep)
df <- sleep # assigning all variables in the database sleep
head(df) # printing a test section of the data. 

#NOTES ON PLOTTING WITH QPLOT
#x : x values
#y : y values (optional)
#data : data frame to use (optional).
#geom : Character vector specifying geom to use. Defaults to “point” if x and y are specified, and “histogram” if only x is specified.
#xlim, ylim: x and y axis limits

#load the packages
library(ggplot2)

qplot(extra, group, data = sleep) #this is a simplified version of the below text. 

#ggplot(iris, aes(x=Sepal.Length, y=Sepal.Width)) + geom_point()

ggplot(sleep, aes(x=group, y=extra)) + geom_point() #creates the chart. 

#TASK 1: Write an R program to create three vectors a, b, c with 5 integers. Combine the three vectors to become a 3×5 matrix
#where each column represents a vector. Print the content of the matrix. Plot a graph and label correctly.

A <- c(1, 2, 3, 4, 5)
B <- c(6:10)
C <- c("A", "B", "C", "D", "E")
print(A)
print (B)
print (C)

m = matrix(c(A, B, C), nrow=length(x)) #puts the vectors into a matrix with length of x (5) 
print(m)
plot(m)

#TASK 2 Write a R program to create a Data frames which contain
#details of 5 employees and display the details. (Name, Age, Role and Length of service).

employees = data.frame(name = c("sam", "harry", "sarah", "jess", "john"),
                       age = c(20, 22, 24, 26, 28),
                       role = c("HR", "sales", "admin", "CEO", "marketing"),
                       service= c(2, 3, 1, 8, 5))
print (employees)

#TASk 3 import GGPLOT2 Library plot a graph using the qplot function. X axis is the sequence of 1:20 and the y axis is the x ^
  #2. Label the graph appropriately. install.packages("ggplot2", dependencies = TRUE)
library(ggplot2)
f <- function() {
  x <-1:20
  y <- x^2
  qplot(x, y)
}
f() # this runs the function just created, showing a scatter plot (since both x and y are specified)

install.packages("ggplot2", dependencies = TRUE)
 
#TASk 4 Create a simple bar plot of five subjects
marks = c(70, 95, 80, 74, 63)
barplot(marks,
        main = "Scores in 5 subjects",
        xlab = "Marks",
        ylab = "Subject",
        names.arg = c("English", "Science", "Math", "Art", "French"),
        col = "blue",
        horiz = FALSE)

#TASK 5 Write a R program to take input from the user (name and age) and display the values
hello = function() {
  name <- readline ("Hello! Please enter your name")
  age <- readline ("enter your age")
  message <- paste("welcome" , name, ", you are", age)
  print (message)
}
hello()

#TASK 6 Write a R program to create a sequence of numbers from 20
#to 50 and find the mean of numbers from 20 to 50 and sum of numbers.

num = c(20:50)
print(num)
mean(num)
sum(num)

#TASK 7 Write a R program to create a vector which contains 10 random integer 
#values between -50 and +50

random = function() {
  x = c(sample (-50:50, 10))
  print(x)    
  }
random() 
typeof(x)

