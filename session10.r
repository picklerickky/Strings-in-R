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

################ second lab
fruit = c("apple", "banana","pear","pinapple")

## 2.
str_detect(fruit, "a")

# pattern starts with a
str_detect(fruit, "^a")

# ends with a
str_detect(fruit, "a$")

## check if it has a or e or i or o or u
str_detect(fruit, "[aeiou]")

## 
str_detect(fruit, "[a-d]") ## [a-d] = [abcd] ## [a-z]

str_detect(fruit, "[0-9]")

## 3.
str_detect(fruit, "^a[a-z]*e$")
# .* means it could be any character or number then just letter

## 4.
phone = "213 740 4826"
str_detect(phone, "[0-9]{3} [0-9]{3} [0-9]{4}")

phone1 = c("213 740 4826", "213-740-4826")
str_detect(phone1, "[0-9]{3}[ -][0-9]{3}[- ][0-9]{4}")

phone2 = c("213 740 4826", "213-740-4826", "(213) 922 0087")
str_detect(phone2, ".*[0-9]{3}.*[ -][0-9]{3}[- ][0-9]{4}")
## another way
str_detect(phone2, "[(]?[0-9]{3}[)]?[ -][0-9]{3}[- ][0-9]{4}")

## 5
str_extract_all(bodies, "[(]?[0-9]{3}[)]?[ -][0-9]{3}[- ][0-9]{4}")










