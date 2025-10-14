# Choose and Download Data
data("iris")
head(iris)
str(iris)

# Test Generic Functions
print(iris)
summary(iris)

#Explore S3 v S4

#create S3 
s3_obj <- list(name = "Makayla", age = 22, GPA = 3.5)
class(s3_obj) <- "student_s3"
print.student_s3 <- function(x) {
  cat("S3 Student Object\n")
  cat("Name:", x$name, "\nAge:", x$age, "\nGPA:", x$GPA, "\n")
}

#Test S3
print(s3_obj)

#Create S4
  setClass("student_s4",
           slots = c(name = "character", age = "numeric", GPA = "numeric"))
s4_obj <- new("student_s4", name = "Makayla", age = 22, GPA = 3.5)

setMethod("show", "student_s4",
          function(object) {
            cat("S4 Student Object\n")
            cat("Name:", object@name, "\nAge:", object@age, "\nGPA:", object@GPA, "\n")
          })
#Test S4
s4_obj

isS4(s3_obj)
isS4(s4_obj)

typeof(iris)
typeof(s3_obj)
typeof(s4_obj)
