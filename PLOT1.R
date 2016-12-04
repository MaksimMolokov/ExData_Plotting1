
### PLOT 1


#_________________________________________________________________
#№1
#_________________________________________________________________

# загружаем сохраненные data frames NEI и SCC из директории.
setwd("C:/DATA/coursera/4. exploratory data analysis/week 1/Project 1")

data<-read.table(file="hpc.txt",header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
GAP<-as.numeric(data$Global_active_power)

# открываем png для сохранения построения графика, размером 640 на 480.
png(filename='C:/DATA/coursera/4. exploratory data analysis/week 1/Project 1/plot1.png',width=640, height=480)

#строим гистограмму распределения
hist(GAP, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)", ylab="Frequency")

#закрываем печать в файл
dev.off()

#_________________________________________________________________
