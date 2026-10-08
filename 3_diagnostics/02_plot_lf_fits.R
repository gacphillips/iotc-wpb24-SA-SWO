
figure_name = "2_LF_"
out <- plot_model

#################
# Obs vs. pred Mean length 
#################

## basic
# out <- SS_output(paste0(PATH_MODELRUNS,'0_base_2022')) 
dat <- out$lendbase
dat$obsX <- dat$Bin * dat$Obs
dat$expX <- dat$Bin * dat$Exp
obs <- aggregate.data.frame(dat[,c(17,33)], list(dat$Fleet, dat$Yr), sum)
obs$avg <- obs[,4]/obs[,3]
names(obs) <- c("fleet", "yr", "x","y", "avg")
obs$fleet <- as.numeric(as.character(obs$fleet))
obs$yr <- as.numeric(as.character(obs$yr))
# obs$yrqtr <-   1952 + (obs$yr - 101)/4 + 1/8 

Pred <- aggregate.data.frame(dat[,c(18,34)], list(dat$Fleet, dat$Yr), sum)
Pred$avg <- Pred[,4]/Pred[,3]
names(Pred) <- c("fleet", "yr", "x","y", "avg")
# Pred$fleet <- as.numeric(as.character(Pred$fleet))
# Pred$yr <- as.numeric(as.character(Pred$yr))
# Pred$yrqtr <-  1952 + (Pred$yr - 101)/4 + 1/8 
x <- tapply(obs$fleet, obs$fleet, length)
fleet <- 1:14
labs <-  c("JPLL_NW","TWLL_NW","ALGI_NE","JPLL_NE","TWLL_NE","TWFL_NE"," EUEL_SW","ISEL_SW","JPLL_SW","TWLL_SW","AUEL_SE","EUEL_SE","JPLL_SE","TWLL_SE")

savepng(paste0('Mean ', MODEL_NAME, '.png',sep=""),width =25,height=35)
par(mfrow=c(5,3), mar=c(3,3,2,1), omi=c(0,0.2,0,0))
for(i in 1:14){
  obs2 <- obs[obs$fleet == fleet[i],]
  Pred2 <- Pred[Pred$fleet == fleet[i],]
  if(!plyr::empty(obs2)) {
    plot(obs2$yr, obs2$avg, pch=16, col="slate grey", type="p", xlab="", ylab="", xlim=c(min(obs$yr),2025), ylim=range(Pred2$avg, obs2$avg))
    lines(Pred2$yr, Pred2$avg, lwd=2, col="slate grey")
    points(Pred2$yr, Pred2$avg,col="red",pch=3)
    lines(lowess(Pred2$yr, Pred2$avg,f=0.2), lwd=2, col="red")
    mtext(side=3, line=0.5, paste(fleet[i],labs[fleet[i]],sep=". "))
  }}
mtext(side=2, outer=T, line=0,adj=0.6, "Average length (cm)")
mtext(side=1, outer=T, line=-20, "Year")
dev.off()



#################
# Obs vs. pred Aggregated length 
#################


## basic

# out <- SS_output(dir= paste0(PATH_SS3,'/base'),covar=TRUE,ncols=500,forecast=FALSE)
dat <- out$lendbase
obs <- tapply(dat$Obs, list(dat$Bin, dat$Fleet), sum)
obs <- ifelse(is.na(obs) == TRUE, 0, obs)
obs <- t(t(obs)/apply(obs,2,sum))
Pred <- tapply(dat$Exp, list(dat$Bin, dat$Fleet), sum)
Pred <- ifelse(is.na(Pred) == TRUE, 0, Pred)
Pred <- t(t(Pred)/apply(Pred,2,sum))
# fleet <- 1:15
LBin <- sort(unique(dat$Bin))
# LBin2 <- 10*(1:27)
x <- LBin #match(LBin2, LBin)
# labs <-  c('FL2','LL1S','LL2','LL3','PSFS1S','PSFS2','OT1N','OT2','PSLS1S','PSLS2', 'BB1N','LINE2','LL1N','PSFS1N','PSLS1N')

savepng(paste0('Aggregate ', MODEL_NAME, '.png',sep=""),width =25,height=35)
par(mfrow=c(5,3), mar=c(3,3,2,1), omi=c(0,0.2,0,0))
for(i in 1:14){
  if(as.character(i) %in% colnames(obs)) {
    a <- barplot(obs[,as.character(fleet[i])], col="grey", xlab="", ylab="", ylim=range(0, obs[,as.character(fleet[i])], Pred[,as.character(fleet[i])]), border=NA, main ="", xaxt="n")
    lines(a, Pred[,as.character(fleet[i])], col=2, lwd=2)
    axis(1, at=a[x], labels=LBin)
    mtext(side=3, line=0.5, paste(fleet[i],labs[fleet[i]],sep=". "), cex=1.0)
  }
}
mtext(side=2, outer=T, line=0,adj=0.6, "Proportion")
mtext(side=1, outer=T, line=-20, "Fork length (cm)")
dev.off()



