
figure_name = "3_sel_"
out <- plot_model

##########################################
### plot selectivity
##########################################

# basic
# out <- SS_output(dir= paste0(PATH_SS3,'base/'),covar=FALSE,ncols=500,forecast=FALSE)
dat <- out$sizeselex
dat <- dat[dat$Yr == 2024,]
dat <- dat[dat$Factor == "Lsel",]
dat <- dat[dat$Sex == 1,]
len <- as.numeric(colnames(dat)[-c(1:5)])
fleet <- sort(unique(dat$Fleet))
labs <- out$FleetNames[fleet]

savepng(paste0('sel',MODEL_NAME,'.png',sep=""),width =25,height=35)
par(mfrow=c(4,4), mar=c(3,3,2,1), omi=c(0,0.2,0,0))
for(i in c(2,3,1,5,6,7,4,10,11,8,9,14,15,13,12)){
  plot(len, dat[dat$Fleet==fleet[i],-c(1:5)], pch=3, col=2, type="n", xlab="", ylab="", xlim=c(30,260), ylim=c(0,1))
  lines(len, dat[dat$Fleet==fleet[i],-c(1:5)], col="slate grey", lwd=2)	
  mtext(side=3, line=0.5, paste0(fleet[i],labs[fleet[i]],seo='. '), cex=0.8)
  if(i==1) plblank(axes=F)
}
mtext(side=2, outer=T, line=0, "Proportion")
mtext(side=1, outer=T, line=0, "Length (cm)")
dev.off()

