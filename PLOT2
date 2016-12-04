### PLOT2

#_________________________________________________________________
#№2
#_________________________________________________________________

# загружаем сохраненные data frames NEI и SCC из директории.
setwd("C:/DATA/coursera/4. exploratory data analysis/week 1/Project 1")

data<-read.table(file="hpc.txt",header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")

#выбираем временной интервал
subSetData <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]

#объединить в одну колонку data & time
basetime<-strptime(paste(subSetData$Date, subSetData$Time, sep=" "), "%d/%m/%Y %H:%M:%S")
GAP<-as.numeric(subSetData$Global_active_power)

# открываем png для сохранения построения графика, размером 640 на 480.
png(filename='C:/DATA/coursera/4. exploratory data analysis/week 1/Project 1/plot2.png',width=640, height=480)

#строим график
plot(basetime, GAP, type="l", main="Plot 2", xlab="", ylab="Global Active Power (kilowatts)")

#закрываем печать в файл
dev.off()


#_________________________________________________________________
