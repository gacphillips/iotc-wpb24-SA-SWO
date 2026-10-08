
figure_name = "7_F_"

##########################################
### Over F by age 
##########################################


# out <- SS_output(dir= paste0(PATH_SS3,'base/'),covar=FALSE,ncols=500,forecast=FALSE)

dat <- out$Z_at_age
Mage <- out$M_at_age
dat <- dat[dat$Yr ==2024,]
Zage <- apply(dat[,4:33],2,mean) - as.numeric(as.vector(unlist(Mage[1,4:33])))
savepng('FmortAge.png',width = 17.78,height=17.78)
plot(0:29, Zage, type="l", ylab = "Fishing mortality", xlab="Age", lwd=3)
dev.off()


##########################################
###  F  by time and fleet 
##########################################
labs <- out$FleetNames
dat <- out$timeseries
a <- grep("F:_", dimnames(dat)[[2]])
dat <- dat[,c(1:4,a)]
dat <- dat[dat$Era == "TIME",]
mat <- aggregate.data.frame(dat[,5:19], list(trunc(dat$Yr)), mean)
fleets <- as.numeric(substring(dimnames(mat)[[2]][-1],4,5))
regions <- out$fleet_area[fleets]
yrs <- as.numeric(as.character(mat[,1]))
mat <- mat[,-1]
Reg = c('NW','NE','SW','SE')
savepng('FmortFleet.png',width = 17.78,height=17.78)
par(mfcol=c(2,2), mar=c(4,5,3,2))
for (i in c(1,3,2,4)){
  a <- match(regions,i)
  junk <- mat[,is.na(a)==FALSE]
  fleet2 <- fleets[is.na(a)==FALSE]
  cols <- rainbow(length(fleet2))
  if (length(fleet2) == 1){
    plot(yrs, junk, type="n",ylim= range(0, max(mat)), ylab="Fishing mortality",xlab="")
    lines(yrs, junk, lwd=2, col=cols)
  }
  if (length(fleet2) > 1){
    plot(yrs, junk[,1], type="n",ylim= range(0, max(mat)), ylab="Fishing mortality",xlab="")
    for(x in 1:length(fleet2)){
      lines(yrs, junk[,x], lwd=2, col=cols[x])
    }
  }
  mtext(side=3, line=0.5, paste("Region", Reg[i]))
  legend('topleft', lwd=2, col=cols, legend=labs[fleet2], cex = 0.3)
}
dev.off()
