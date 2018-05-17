## Training 3
## Column names and logical operations
setwd(dirname(rstudioapi::getActiveDocumentContext()$path))
dataset <- read.csv("satExample.csv", stringsAsFactors=FALSE)

oldMergedDataCol <- which(colnames(dataset)=="date")
colnames(dataset[oldMergedDataCol]) <- "oldDate" 

topBox <- dataset$q2_r1 == 10
topBox <- as.numeric(topBox)
dataset$topBox <- topBox

topTwoBox <- dataset$q2_r1 %in% c(9,10)
topTwoBox <- as.numeric(topTwoBox)
dataset$topTwoBox <- topTwoBox

dataset$newCol <- runif(nrow(dataset))

dataset$newVar <- as.numeric(dataset$q2_r1 == 10 & dataset$newCol < 0.5)
dataset$newVar2 <- as.numeric(dataset$q2_r1 >5 | dataset$newCol < 0.5)

dataset$newVar3 <- as.numeric((dataset$q2_r1==10) | (dataset$newCol > 0.5 & dataset$q2_r1 < 5))



