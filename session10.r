library(stringr)

### 1.
print("\"")
cat("\"")
cat("DSO\n545")
cat("DSO\t545")

### 2.
cat(":-\\")

cat("(^-^\")")

cat("@_'-'")

cat("\\m/")

### 3.
?str_locate 
?str_sub

### 4.
str_locate(string = "great", pattern = "a")
str_locate("fantastic", "a")
str_locate_all("fantastic", "a")
str_locate("super", "a")

str_locate(c("fantastic", "great", "super"), pattern = "a")

str_sub(string = "testing", start = 1, end = 3)
str_sub(string = "testing", start = 4, end = 7)
str_sub(string = "testing", end = 4)

### 6.
input = c("abc", "defg")
input
str_sub(input, c(2,3)) ## the first start from 2, the second start from 3

### 7.
emails = readRDS("email.rds")

emails[1]
cat(emails[1])
?cat

str_locate(string = emails[1], pattern = "\n\n")

### 8.
header = str_sub(emails[1], start = 1, end = 842)
cat(header)

body = str_sub(emails[1], start = 843)
cat(body)

### 10.
breaks = str_locate(emails, pattern = "\n\n")
headers = str_sub(emails, start = 1, end = breaks[,1])
bodies = str_sub(emails, start = breaks[,2])
cat(bodies[3])










