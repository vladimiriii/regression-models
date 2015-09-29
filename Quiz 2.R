# Question 1
x <- c(0.61, 0.93, 0.83, 0.35, 0.54, 0.16, 0.91, 0.62, 0.62)
y <- c(0.67, 0.84, 0.6, 0.18, 0.85, 0.47, 1.1, 0.65, 0.36)
dataset <- data.frame(x, y)
model <- lm(y ~ x, dataset)
summary(model)

# Question 2
summary(model)

# Question 3
require(datasets)
summary(mtcars)
newdata = data.frame(wt=wt.mean)
model3 <- lm(mpg ~ wt, mtcars)
predict(model3, newdata, interval="confidence")

# Question 5
model5 <- lm(mpg ~ wt, mtcars)
newdata = data.frame(wt=3)
predict(model5, newdata, interval="prediction")

# Question 6
length(mtcars)
model6 <- lm(mpg ~ wt, mtcars)
confint(model6, 'wt', level = 0.95)

# Question 9
model.9.norm <- lm(mpg ~ wt, mtcars)
num <- sum(model.9.norm$residuals^2)
y.bar <- mean(mtcars[["mpg"]])
den <- sum((mtcars[["mpg"]]-y.bar)^2)
num/den

# Question 10
model.10 <- lm(mpg ~ wt, mtcars)
sum(model.10$residuals)


