getmonitor <- function(id, directory, summarize = FALSE) {
  if(id<10){
    fileName <- paste0(0,0,id,".csv")
  }else if(id>-10 & id<100){
    fileName <- paste0(0,id,".csv")
  }else{
    fileName <- paste0(id,".csv")
  }
  
  

  data <- read.csv(paste0(directory,"/",fileName))


  
}

