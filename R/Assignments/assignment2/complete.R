complete <- function(directory, id = 1:332) {
        ## 'directory' is a character vector of length 1 indicating
        ## the location of the CSV files

        ## 'id' is an integer vector indicating the monitor ID numbers
        ## to be used
        
        ## Return a data frame of the form:
        ## id nobs
        ## 1  117
        ## 2  1041
        ## ...
        ## where 'id' is the monitor ID number and 'nobs' is the
        ## number of complete cases


        com <- function(id) {
            if(id<10){
                fileName <- paste0(0,0,id,".csv")
            }else if(id>-10 & id<100){
                fileName <- paste0(0,id,".csv")
            }else{
                fileName <- paste0(id,".csv")
            }
            fileName <- paste0(directory,"/",fileName)
            data <- read.csv(fileName)
            nrow(data[complete.cases(data),])
        }

        nobs <- lapply(id,com)
        
       
       result <- data.frame(id,nobs = simplify2array(nobs))
       colnames(result) <- c("id","nobs")
       result




}