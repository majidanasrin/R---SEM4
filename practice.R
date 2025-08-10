#vector
age <- c(12,13,14)
print(age)
print(age[2])
apple<-c('red','green',"yellow")
print(apple)

#list
student<- list(name="Hiba",age = 21,mark=c(16,13,12),passed=TRUE
)
student$name
student[["age"]]
print(student[[1]])
print(student)

#matrix
m <- matrix(1:9, nrow = 3, ncol = 3, byrow = TRUE)
print(m)
print(m[1, 3]) 

n <- matrix(1:3, nrow = 3, ncol = 3, byrow = TRUE)
print(n)

l<- matrix(1, nrow = 4, ncol = 4)
diag(l) <- 0
print(l)

p<- matrix(0, nrow = 3, ncol = 3)
diag(p) <- (1:3)
print(p)

x <- matrix(1:5, ncol=1)  
y <- matrix(1:5, nrow=1)   
result <- x %*% y
print(result)

1:5 %o% 1:5

outer(1:5,1:3,"+")

#Array
arr = array(1:18,dim=c(2,3,3))
print(arr)
A = array(1:9 , dim = c(1,3,3))
print(A)
arr[1,2,1]
arr[ , 2, ]
arr[1,1,2] = c(0)
arr[1,1,] = c(0,1,2)
print(arr)

#Factors
#Simplest vs Ideal
gender<- c(1,2,1,2,1,2,1,2)
gender<-factor(gender)
table(gender)

gender<- c(1,2,1,2,1,2,1,2)
gender<-factor(
  gender,
  levels= c(1,2),
  labels = c("male","female")
)
table(gender)

#Data frames
# Create the data frame.
emp.data <- data.frame(
  emp_id = c (1:5),
  emp_name = c("Rick", "Dan", "Michelle", "Ryan", "Gary"),
  salary = c(623.3,515.2,611.0,729.0,843.25),
  start_date = as.Date(c("2012-01-01", "2013-09-23", "2014-11-15", "2014-05-11", "2015-03-27")),
  stringsAsFactors = FALSE
)# Print the data frame.
print(emp.data)
print(summary(emp.data))
str(emp.data)
# Add the "dept" coulmn.
emp.data$dept <- c("IT", "Operations", "IT", "HR", "Finance")
v <- emp.data
print(v)






