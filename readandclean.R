# first read the raw data from an online source
resdf<-read.csv("http://ucl.ac.uk/~ccaajim/results.csv",header=TRUE)

# check values of continuous variables are in range dropping any out of range
resdf$maths[resdf$maths>100|resdf$maths<0]<-NA
resdf$english[resdf$english>100|resdf$english<0]<-NA
resdf$history[resdf$history>100|resdf$history<0]<-NA

resdf$avxm<-round((resdf$maths+resdf$english+resdf$history)/3)

resdf$stream <- factor(cut(resdf$avxm, breaks = c(0,50,60,100), labels=c("low", "mid", "high")))

write.table(resdf,"~/maketest/cleandata.csv",sep=",")
