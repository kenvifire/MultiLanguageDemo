x <- c("a","b","c","d")
for(i in 1:4){
	print(x[i])
}

count <- 0
while(count <10){
	print(count)
	count <- count+1

}

x0 <- 1
tol <- 1e-8

repeat{
	x1 <- computeEstimate()
	if(abs(x1-x0) < tol){
		break;
	}else{
		x0 <- x1
	}
}
