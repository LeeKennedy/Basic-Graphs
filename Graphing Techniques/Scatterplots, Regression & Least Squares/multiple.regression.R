data(USJudgeRatings)
# first 5 rows
USJudgeRatings[1:5,]
#basic Multiple Regression - how do all the components in the data predict retention?
reg1 <- lm(RTEN ~ CONT + INTG + DMNR + DILG + CFMG + DECI + PREP + FAMI + ORAL + WRIT + PHYS, data = USJudgeRatings)
reg1 # just the coefficients
summary(reg1)  #more information
