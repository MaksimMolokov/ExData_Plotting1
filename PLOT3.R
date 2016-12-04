###PLOT3

#_________________________________________________________________
#№3
#_________________________________________________________________

# загружаем сохраненные data frames NEI и SCC из директории.
setwd("C:/DATA/coursera/4. exploratory data analysis/week 1/Project 1")

data<-read.table(file="hpc.txt",header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")

#выбираем временной интервал
subSetData <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]

#объединить в одну колонку data & time
basetime<-strptime(paste(subSetData$Date, subSetData$Time, sep=" "), "%d/%m/%Y %H:%M:%S")
GAP<-as.numeric(subSetData$Global_active_power)

SM1 <- as.numeric(subSetData$Sub_metering_1)
SM2 <- as.numeric(subSetData$Sub_metering_2)
SM3 <- as.numeric(subSetData$Sub_metering_3)

# открываем png для сохранения построения графика, размером 640 на 480.
png(filename='C:/DATA/coursera/4. exploratory data analysis/week 1/Project 1/plot3.png',width=640, height=480)

#строим график
plot(basetime, SM1, type="l", main="energy sub No 1-3", xlab="", ylab="energy sub-metering")
#добавляем вторичные линии
lines(basetime, SM2, type="l", col="red")
lines(basetime, SM3, type="l", col="blue")
legend("topright", c("energy sub-metering No. 1", "energy sub-metering No. 3", "energy sub-metering No. 3"), lty=1, lwd=2.5, col=c("black", "red", "blue"))
#закрываем печать в файл
dev.off()


#_________________________________________________________________
