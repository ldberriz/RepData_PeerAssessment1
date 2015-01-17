
for (i in (1:nrow(pp))) {
  if (is.na(dta[i,"steps"])) {
    t1 <- dta[i,"interval"]
    t2 <- steps.interval[(steps.interval$interval==t1),"steps"]
    dta.pre <- pp[i,"steps"]
    
    dta[i,"steps"] <- t2
    dta.post <- pp[i,"steps"]
    ###########
    cnt = cnt + 1
    print(paste("pp$interval=",t1,"steps.interval$interval=",t2, pp.dta.pre, pp.dta.post))
  }
}



steps.by.day.new <- aggregate(steps ~ date, data=df.new, FUN=sum)
ggplot(steps.by.day.new, aes(x=steps)) +
  geom_histogram(binwidth=2500, colour="black", fill="white")