
# Import the coffee sales dataset
library(readr)
coffee <- read_csv("Coffe_sales.csv")

# View the data
View(coffee)

# Display the column names
names(coffee)
#[1] "hour_of_day" "cash_type"   "money"       "coffee_name" "Time_of_Day" "Weekday"     "Month_name" 
#[8] "Weekdaysort" "Monthsort"   "Date"        "Time"  

# Bar chart of coffee types
barplot(table(coffee$coffee_name),
        main = "Coffee Purchases by Type",
        xlab = "Coffee Type",
        ylab = "Number of Purchases",
        las = 2)

# Find the most popular coffee type (mode)
counts <- table(coffee$coffee_name)
names(counts[counts == max(counts)])
#[1] "Americano with Milk"

# Histogram of purchase hours
hist(coffee$hour_of_day,
     main = "Distribution of Coffee Purchase Hours",
     xlab = "Hour of Day",
     ylab = "Number of Purchases")

# Calculate the mean and median
mean(coffee$hour_of_day)
#[1] 14.18579
median(coffee$hour_of_day)
#[1] 14
table(coffee$hour_of_day)

#6   7   8   9  10  11  12  13  14  15  16  17  18  19  20  21  22 
#5  88 235 242 328 283 241 225 225 236 278 237 218 229 169 195 113 

# Histogram of transaction amounts
hist(coffee$money,
     main = "Distribution of Coffee Transaction Amounts",
     xlab = "Transaction Amount",
     ylab = "Number of Purchases")

# Calculate the mean and median
mean(coffee$money)
#[1] 31.64522
median(coffee$money)
#[1] 32.82

# Summary of transaction amounts
summary(coffee$money)
#Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
#18.12   27.92   32.82   31.65   35.76   38.70 

# Bar chart of purchases by time of day
barplot(table(coffee$Time_of_Day),
        main = "Coffee Purchases by Time of Day",
        xlab = "Time of Day",
        ylab = "Number of Purchases")

# Find the most common time of day (mode)
counts <- table(coffee$Time_of_Day)
names(counts[counts == max(counts)])
#[1] "Afternoon"
table(coffee$Time_of_Day)

#Afternoon   Morning     Night 
#1205      1181      1161 

# Scatterplot of purchase hour and transaction amount
plot(coffee$hour_of_day, coffee$money,
     main = "Purchase Hour vs. Transaction Amount",
     xlab = "Hour of Day",
     ylab = "Transaction Amount")

# Calculate correlation
cor(coffee$hour_of_day, coffee$money,
    use = "complete.obs")

#[1] 0.2027479
