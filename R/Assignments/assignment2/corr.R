source("getmonitor.R")
source("complete.R")
corr <- function(directory, threshold = 0) {
        newfunc <- function(mydata,result){
        
        	if(result > threshold)
        		my_cor <- cor(mydata$sulfate ,mydata$nitrate )
        }
       ## data <- getmonitor(1:3,directory)
        ##nobs <- complete(directory,id=1:3)
        ##print(class(nobs$nobs))
        ##print(class(data))
       ##mapply(newfunc,data,nobs$nobs)
       v <- vector(mode="integer",length=0)
       id <- 1:332
       for(i in id){
       		data <- getmonitor(i,directory)
       		data <- na.omit(data)
       		nobs <- complete(directory,c(i))
       		if(nobs$nobs > threshold){
       			cc = cor(data$sulfate,data$nitrate)
       			v <-c(v,cc)
       		}

       }
       v
}