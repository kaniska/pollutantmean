corr2 <- function(directory,threshold=0) {
	temp = list.files(path=directory,pattern="*.csv")
	dat = do.call(rbind,lapply(temp,function(x) read.csv(x)))
	c<-0; z<-0
	
	while (z<threshold) {
		c  <- c + 1
		tz <-complete(directory,1:c)
		z  <-sum(tz[,2])
		
		print(c)
		if(c==332) {
			return(a<-numeric(0))
			break
		}
	}
	id<-1:c
	print(id)
	gat <-complete.cases(dat)
	x1=data.frame();y1=data.frame()
	for (f in id) {
		getx <- dat[gat==TRUE,][dat$ID ==f,"sulfate"]
		x1 <- rbind(getx,x1)
		gety<-dat[gat==TRUE,][dat$ID ==f,"nitrate"]
		y1 <- rbind(gety,y1)
	}
	x2=as.matrix(x1);y2=as.matrix(y1)
	x2=as.numeric(x2);y2=as.numeric(y2)
	cor(x2,y2,use="complete.obs")
}

#issue: collect corr values in each monitor that satisfies threshold