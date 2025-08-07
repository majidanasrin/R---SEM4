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


