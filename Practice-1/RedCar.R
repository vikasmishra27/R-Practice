# create derived variables  

filteredAGE35<-data[data$AGE<35,]
filteredAGE48<-data[data$AGE>=35 & data$AGE<=48,]
filteredAGEMAX<-data[data$AGE>48,]

# Create Individual interval based values

# •	Less than 35

totalCars35<-length(filteredAGE35$RED_CAR)
redCars35<-length(filteredAGE35[filteredAGE35$RED_CAR=="yes",]$RED_CAR)
percRedCars35<-(redCars35/totalCars35)*100

•	35-48

totalCars48<-length(filteredAGE48$RED_CAR)
redCars48<-length(filteredAGE48[filteredAGE48$RED_CAR=="yes",]$RED_CAR)
percRedCars48<-(redCars48/totalCars48)*100

•	49+

totalCarsmax<-length(filteredAGEMAX $RED_CAR)
redCarsmax<-length(filteredAGEMAX[filteredAGEMAX $RED_CAR=="yes",]$RED_CAR)
percRedCarsmax<-(redCarsmax/totalCarsmax)*100


# Group the values into individual case

Age_group<-c("Less than 35","35-48","49+")
Total_no_of_cars<-c(totalCars35, totalCars48, totalCarsmax)
Red_cars<-c(redCars35, redCars48, redCarsmax)
Per_of_Red_cars<-c(percRedCars35, percRedCars48, percRedCarsmax)

# Create final dataFrame

finalResult<-data.frame(Age_group, Total_no_of_cars, Red_cars, Per_of_Red_cars)

# Write to csv

write.csv(finalResult,"Practice_output.csv")
