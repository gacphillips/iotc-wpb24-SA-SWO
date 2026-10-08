setwd("C:\\Users\\dfu\\OneDrive - Food and Agriculture Organization\\Projects\\2026\\2026SWOSS3\\Working\\R")
source("init.R")
source("functions/ggtheme.R")
source("functions/LFA_helper.R")
source("functions/mutate_cond.R")


figure_name = "input_maturity_"
saveplot = function(label,size=1,type="png",res=800,...) {SavePlot(paste(figure_name,label,sep=""),type=type,size=size,res=res,...)}
savepng = function(label, width=21, height=29.7,units="cm",res=800,bg = "white",...)  { png(paste(figure_name,label,sep=""),width=width,height=height,units=units,res=res,bg=bg,...)}  #7 inch = 17.78     


# Young and Drake 2002: Female L50 = 199.7825 g = 8.129 L0 = -0.041; maturity 50% age 10
# 0.00325603 0.007115515 0.014569273 0.028013449 0.050623862 0.085939643 0.136874216 0.20429726 0.285874625 0.376104793 0.467854808 0.554549562 0.631738337 0.69745447 0.751682329 0.795546622 0.830633963 0.858568952 0.880806505 0.898561132  0.912807328 0.912807328  0.912807328  0.912807328  0.912807328  0.912807328  0.912807328  0.912807328  0.912807328  0.912807328  0.912807328   
# TWN/Hawai'i Maturity 50% age 4
# 0 0 0 0 0.02 0.1 0.5 0.9 0.98 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
# GhMf 
# 0 0 0.02 0.1 0.5 0.9 0.98 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
# Farley 2016
# RAY alpha = -6.8 beta = 1.57  a50=4.34 
# Oto alpha = -6.6 beta = 1.50  a50=4.42

logistic.ogive<-function(x,a50,ato95) {
  y<-1/(1+(19^((a50-x)/ato95)))
  return(list("x"=x,"y"=y))
}

plot.maturity = function(age,alpha,beta,xlim=c(0,30),ylim=c(0,1.04),xlab="Age",ylab="Proportion",col="red",lwd=1,pch=16,cex=1.0) {
	a50 <- as.numeric((alpha / beta)*-1)
	ato95 <- as.numeric(((log(0.95/(1-0.95))-alpha) / beta)-a50)
	res = logistic.ogive(age,a50,ato95)
	plot(0,0,xlab=xlab,ylab=ylab,xlim=xlim,ylim=ylim,type="n")
	points(res$x,res$y,lwd=lwd,col=col)
	lines(res$x,res$y,,lwd=lwd,col=col)
	box()
	return (res)
}

# Plot together
# plot(0,0,xlim=c(0,30),ylim=c(0,1.04),xlab="Age",ylab="Proportion",type="n")
# points(0:30,c(0.00325603, 0.007115515, 0.014569273, 0.028013449, 0.050623862, 0.085939643, 0.136874216, 0.20429726, 0.285874625, 0.376104793, 0.467854808,0.554549562, 0.631738337, 0.69745447, 0.751682329, 0.795546622, 0.830633963, 0.858568952, 0.880806505, 0.898561132, 0.912807328, 0.912807328,  0.912807328,  0.912807328,  0.912807328,  0.912807328,  0.912807328,  0.912807328,  0.912807328,  0.912807328,  0.912807328) ,pch=16,lwd=1,col="black") # # Young and drake 2004
# lines(0:30,c(0.00325603, 0.007115515, 0.014569273, 0.028013449, 0.050623862, 0.085939643, 0.136874216, 0.20429726, 0.285874625, 0.376104793, 0.467854808,0.554549562, 0.631738337, 0.69745447, 0.751682329, 0.795546622, 0.830633963, 0.858568952, 0.880806505, 0.898561132, 0.912807328, 0.912807328,  0.912807328,  0.912807328,  0.912807328,  0.912807328,  0.912807328,  0.912807328,  0.912807328,  0.912807328,  0.912807328),lwd=1,col="black") # # Young and drake 2004
# points(0:30,c(0,0,0,0,0.02,0.1,0.5,0.9,0.98,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1),pch=16,lwd=1,col="blue") # # Wang et al. 2010 (LJFL)
# lines(0:30,c(0,0,0,0,0.02,0.1,0.5,0.9,0.98,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1),lwd=1,col="blue") # # Wang et al. 2010 (LJFL)
# points(0:30,c(0 ,0, 0.02, 0.1, 0.5 ,0.9, 0.98, 1, 1,1 ,1, 1, 1 ,1, 1, 1 ,1, 1, 1 ,1, 1 ,1 ,1, 1, 1, 1 ,1, 1, 1, 1 ,1),pch=16,lwd=1,col="orange") # # DeMartini 2007
# lines(0:30,c(0 ,0, 0.02, 0.1, 0.5 ,0.9, 0.98, 1, 1,1 ,1, 1, 1 ,1, 1, 1 ,1, 1, 1 ,1, 1 ,1 ,1, 1, 1, 1 ,1, 1, 1, 1 ,1),lwd=1,col="orange") # # DeMartini 2007
# points(0:30,c(0, 0.001, 0.005, 0.025, 0.110, 0.373, 0.741, 0.932, 0.985, 0.997, 0.999, 1, 1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1),pch=16,lwd=1,col="green4") # Farley 2016 Ray
# lines( 0:30,c(0, 0.001, 0.005, 0.025, 0.110, 0.373, 0.741, 0.932, 0.985, 0.997, 0.999, 1, 1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1),lwd=1,col="green4") # Farley 2016 Ray 
# points(0:30,c(0.001,0.006,0.027,0.109,0.354,0.711,0.917,0.98,0.996,0.999,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1),pch=16,lwd=1,col="red") # Farley 2016 otoith
# lines(0:30,c(0.001,0.006,0.027,0.109,0.354,0.711,0.917,0.98,0.996,0.999,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1),lwd=1,col="red") # Farley 2016 otoith 
# legend(17,0.5,c('Young and drake 2002','Wang 2010',"DeMartini 2007",'Farley 2016 (Ray)','Farley 016 (Otolith)'),col=c('black','blue','orange','green4','red'),bty='n',lty=1,pch=16)

#temp = exp(alpha+beta*(0:30))/(1+exp(alpha+beta*(0:30)))
savepng('maturity.png',width=17.78,height=17.78)
res = plot.maturity (0:25,alpha=-6.6, beta =1.50,lwd=2,xlim=c(0,25))
dev.off()
