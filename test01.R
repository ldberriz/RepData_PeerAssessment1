cnt = 0
for (i in (1:nrow(pp))) {
  if (is.na(pp[i,c("steps")])) {
    t1 <- pp[i,c("interval")]
    t2 <- steps.interval[(steps.interval$interval==t1),]
    cnt = cnt + 1
    print(paste("index=",t1, "pp$interval=",t1,"steps.interval$interval=",t2))
  }
}
print(paste("cnt =",cnt))

