### PLOT4

#_________________________________________________________________
#№4
#_________________________________________________________________


# загружаем сохраненные data frames NEI и SCC из директории.
setwd("C:/DATA/coursera/4. exploratory data analysis/week 1/Project 1")

data<-read.table(file="hpc.txt",header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")

#выбираем временной интервал
subSetData <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]

#объединить в одну колонку data & time
basetime<-strptime(paste(subSetData$Date, subSetData$Time, sep=" "), "%d/%m/%Y %H:%M:%S")
GAP<-as.numeric(subSetData$Global_active_power)
GRP<-as.numeric(subSetData$Global_reactive_power)
voltage <- as.numeric(subSetData$Voltage)
SM1 <- as.numeric(subSetData$Sub_metering_1)
SM2 <- as.numeric(subSetData$Sub_metering_2)
SM3 <- as.numeric(subSetData$Sub_metering_3)

# открываем png для сохранения построения графика, размером 640 на 480.
png(filename='C:/DATA/coursera/4. exploratory data analysis/week 1/Project 1/plot4.png',width=800, height=600)

#настраиваем расположение графиков 2х2 ввиде матрицы
par(mfrow = c(2, 2)) 

#строим графики для матрицы
#график 1
plot(basetime, GAP, type="l", xlab="", ylab="Global Active Power", cex=0.2)

#график 2
plot(basetime, voltage, type="l", xlab="basetime", ylab="Voltage")

#график 3
plot(basetime, SM1, type="l", ylab="energy sub-metering")
#добавляем вторичные линии
lines(basetime, SM2, type="l", col="red")
lines(basetime, SM3, type="l", col="blue")
legend("topright", c("energy sub-metering No. 1", "energy sub-metering No. 3", "energy sub-metering No. 3"), lty=1, lwd=2.5, col=c("black", "red", "blue"))
#закрываем печать в файл

#график 4
plot(basetime, GRP, type="l", xlab="basetime", ylab="Global_reactive_power")

#закрываем печать в файл
dev.off()


#_________________________________________________________________
