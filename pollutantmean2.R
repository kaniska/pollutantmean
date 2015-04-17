#Function to calculate mean of pollutants
pollutantmean2 <- function(directory,pollutant="sulfate",id=1:332){
	temp = list.files(path=directory,pattern="*.csv")
	dat = do.call(rbind,lapply(temp,function(x) read.csv(x)))
	net = data.frame()
	cz<-subset(dat,dat$ID==id & !is.na(sulfate),select=pollutant)
	ez<-mean(as.matrix(cz),na.rm=TRUE)
	print(ez)
}
#pollutantmean(directory,"sulfate",id=1:10) 
#print(ans 4.064)
#pollutantmean(directory,"nitrate",id=70:72) 
#print(ans 1.704)
#directory="/Users/michelegoe2/Documents/Courses/R Programming Coursera/Assignment 1/specdata"
#issue take net dataframe to mean