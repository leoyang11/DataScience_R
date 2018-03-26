# example 3.12 of section 3.2.2 
# (example 3.12 of section 3.2.2)  : Exploring data : Spotting problems using graphics and visualization : Visually checking relationships between two variables 
# Title: Examining the correlation between age and income 

custdata3 <- custdata %>% 
  filter(age>0 & age<100) %>% 
  filter(income > 0)

cor(custdata3$age, custdata3$income)

ggplot(custdata2, aes(x=age, y=income)) + geom_point() + ylim(0,200000) + stat_smooth(method = lm)
ggplot(custdata2, aes(x=age, y=income)) + geom_point() + ylim(0,200000) + geom_smooth()




custdata2 <- subset(custdata,
   (custdata$age > 0 & custdata$age < 100
   & custdata$income > 0))                  	# Note: 1 

cor(custdata2$age, custdata2$income) 	# Note: 2 

## [1] -0.02240845 	# Note: 3

# Note 1: 
#   Only consider a subset of data with 
#   reasonable age and income values. 

# Note 2: 
#   Get correlation of age and income. 

# Note 3: 
#   Resulting correlation. 

