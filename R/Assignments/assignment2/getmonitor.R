getmonitor <- function(id, directory, summarize = FALSE) {
##get <- function(id){
    if(id<10){
        fileName <- paste0(0,0,id,".csv")
    }else if(id>-10 & id<100){
       fileName <- paste0(0,id,".csv")
    }else{
       fileName <- paste0(id,".csv")
    }
  
  
    if(summarize){
          data <- read.csv(paste0(directory,"/",fileName))
          print(summary(data))
          return (data)

    }else{
      data <- read.csv(paste0(directory,"/",fileName))
      return (data)
   }
##}
##lapply(id,get)
  
}

