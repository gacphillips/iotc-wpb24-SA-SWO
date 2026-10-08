### Plot CPUE fits for a single model ###

######################################
# cpue fit
######################################

figure_name = "1_cpue_"
out <- plot_model

# basic
# out <- SS_output(dir= paste0(PATH_MODELRUNS,MODEL_NAME,sep=""),covar=TRUE,ncols=500,forecast=FALSE)
dat <- out$cpue    
dat$yr <-   dat$Yr
fleet <- c(16,17,18,19)
labs <- c("UJPLL_NW", "UJPLL_NE", "UJPLL_SW", "UJPLL_SE")
savepng(paste0('Fit - ', MODEL_NAME, '.png',sep=""), width=30, height=25)
fleet <- c(16,17,18,19)
labs <- c("UJPLL_NW", "UJPLL_NE", "UJPLL_SW", "UJPLL_SE")
par(mfrow=c(2,2), mar=c(3,4,2,1))
for (i in seq_along(fleet)) {
  dat3 = dat[dat$Fleet == fleet[i],]
  dat3 = dat3[order(dat3$yr),]	
  plot(dat3$yr, dat3$Obs, type="o", lwd=2, col="slategrey", ylab="Index", xlab="", xlim=c(1990,2025), ylim=c(0,max(dat3$Obs, na.rm=T)))
  lines(dat3$yr, dat3$Exp, lwd=2, col="red")
  mtext(side=3, line=0.5, labs[i])
}
par(fig = c(0, 1, 0, 1), oma = c(0, 0, 0, 0), mar = c(0, 0, 0, 0), new = TRUE)
plot(0, 0, type = "n", bty = "n", xaxt = "n", yaxt = "n", xlab = "", ylab = "")
legend("bottomright", legend = c("Observed", "Predicted"), lwd = 2,
       col = c("slategrey", "red"), bty = "n", cex = 1.1, inset = 0.02)
dev.off()


#######################################
# residuals
######################################

#out <- SS_output(dir= paste0(PATH_MODELRUNS,"0_base_2022",sep=""),covar=TRUE,ncols=500,forecast=FALSE)

savepng(paste0('Residuals - ', MODEL_NAME,'.png',sep=""), width=30, height=25)
par(mfrow=c(2,2), mar=c(3,4,2,1))
for(i in seq_along(fleet)){
  dat3 = dat[dat$Fleet == fleet[i],]
  plot(dat3$yr, dat3$Dev/dat3$SE, type="p", lwd=2, col="slate grey", ylab="Residuals", xlab="", xlim=c(1975,2025), ylim=c(-3,3))
  lines(range(dat3$yr), rep(0,2), lwd=1, col=1, lty=3)
  lines(lowess(dat3$yr, dat3$Dev/dat3$SE, f=0.6), lwd=2)
  print(sqrt(sd(dat3$Dev/dat3$SE)))
  mtext(side=3, line=0.5, labs[i])
}
dev.off()

