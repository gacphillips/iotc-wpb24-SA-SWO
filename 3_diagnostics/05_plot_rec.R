
figure_name = "5_rec_"

##########################################
### Regional proportion 
##########################################

out <- SS_output(dir= paste0(PATH_MODELRUNS, MODEL_NAME, sep=""),covar=TRUE,ncols=500,forecast=FALSE)
dat <- out$timeseries
dat <- dat[dat$Era == "TIME",]
mat <- tapply(dat$Recruit_0, list(dat$Yr, dat$Area), sum)
tstep <- sort(unique(dat$Yr))
# tstep <- 1952 + (tstep - 101)/4 + 1/8 
tot <- apply(mat,1,sum)
mat2 <- mat/tot

savepng(paste0('proportions', MODEL_NAME, '.png', sep=""),width = (20),height=(20))

Reg = c("NW","NE","SW","SE")
par(mfrow=c(2,2), mar=c(5,4,3,1))
plot(tstep, mat2[,1], ylab="Proportion of recruitment", ylim=c(0,1), type="l", lwd=2, col=1, xlab="Year")
mtext(paste0('Region ',Reg[1]),side=3,line=0.1)
plot(tstep, mat2[,2],type="l",lwd=2, col=2,xlab="Year",ylab="Proportion of recruitment",ylim=c(0,1))
mtext(paste0('Region ',Reg[2]),side=3,line=0.1)
plot(tstep, mat2[,3],type="l",lwd=2, col=3,xlab="Year",ylab="Proportion of recruitment",ylim=c(0,1))
mtext(paste0('Region ',Reg[3]),side=3,line=0.1)
plot(tstep, mat2[,4],type="l",lwd=2, col=4,xlab="Year",ylab="Proportion of recruitment",ylim=c(0,1))
mtext(paste0('Region ',Reg[4]),side=3,line=0.1)

dev.off()



##########################################
### recruitment deviations 
##########################################


# basic
# out <- SS_output(dir= paste0(PATH_SS3,'base/'),covar=FALSE,ncols=500,forecast=FALSE)
recdev <- out$parameters[grep("Main_RecrDev", out$parameters$Label),]
recdev$year <- as.numeric(substring(recdev$Label,14,17))
recdev$lci <- recdev$Value - 1.96 * recdev$Parm_StDev
recdev$uci <- recdev$Value + 1.96 * recdev$Parm_StDev
savepng('deviates.png ',width = 17.78,height=17.78)
par(mfrow=c(1,1), mar=c(5,4,3,1))
plot(recdev$year, recdev$Value, type="l", lwd=2, xlab="Year", ylab="Rec dev", xaxt ="n",ylim=c(-0.6,0.6)) #ylim=c(range(recdev$lci,recdev$uci)
polygon(c(recdev$year, rev(recdev$year)), c(recdev$uci, rev(recdev$lci)), border=NA, col="light grey" )
lines(recdev$year, recdev$Value, lwd=2)
axis(1, at=seq(1950,2025,5))
lines(range(recdev$year), rep(0,2), lty=3)
dev.off()



##########################################
### Bias correction - GEN - need to add
##########################################


# myreplist <- SS_output(dir= paste0(PATH_SS3,'2022\\CPUELSpe\\bias'),covar=TRUE,ncols=500,forecast=FALSE)
# x=SS_fitbiasramp(out)

