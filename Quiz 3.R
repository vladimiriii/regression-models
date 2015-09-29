# Quiz 3

# Question 1
fit <- lm(mpg ~ as.factor(cyl) + wt, mtcars)
summary(fit)
# -6.071

# Question 2
fit.adj <- lm(mpg ~ as.factor(cyl) + wt, mtcars)
fit.cyl <- lm(mpg ~ as.factor(cyl), mtcars)
summary(fit.adj)
summary(fit.cyl) 
# Holding weight constant, cylinder appears to have less of an impact on mpg than if weight is disregarded.


# Question 3
fit.std <- lm(mpg ~ as.factor(cyl) + wt, mtcars)
fit.int <- lm(mpg ~ as.factor(cyl) + wt + as.factor(cyl):wt, mtcars)
anova(fit.std, fit.int) 
# The P-value is larger than 0.05. So, according to our criterion, we would fail to reject, 
# which suggests that the interaction terms may not be necessary.

# Question 4
fit.4 <- lm(mpg ~ I(wt * 0.5) + factor(cyl), data = mtcars)
summary(fit.4)
coef(fit)
# The estimated expected change in MPG per one ton increase in weight
# for a specific number of cylinders (4, 6, 8).

# Question 5
x <- c(0.586, 0.166, -0.042, -0.614, 11.72)
y <- c(0.549, -0.026, -0.127, -0.751, 1.344)
hatvalues(lm(y ~ x, data.frame(y, x)))
# 0.9946

# Question 6
x <- c(0.586, 0.166, -0.042, -0.614, 11.72)
y <- c(0.549, -0.026, -0.127, -0.751, 1.344)
dfbetas(lm(y ~ x, data.frame(y, x)))
# -134

# Question 7
# It is possible for the coefficient to reverse sign after adjustment. 
# For example, it can be strongly significant and positive before adjustment 
# and strongly significant and negative after adjustment.










