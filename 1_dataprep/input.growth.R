setwd("C:\\Users\\dfu\\OneDrive - Food and Agriculture Organization\\Projects\\2026\\2026SWOSS3\\Working\\R")
source("init.R")
source("functions/ggtheme.R")
source("functions/LFA_helper.R")
source("functions/mutate_cond.R")


figure_name = "input_growth__"
saveplot = function(label,size=1,type="png",res=800,...) {SavePlot(paste(figure_name,label,sep=""),type=type,size=size,res=res,...)}
savepng = function(label, width=21, height=29.7,units="cm",res=800,bg = "white",...)  { png(paste(figure_name,label,sep=""),width=width,height=height,units=units,res=res,bg=bg,...)}  #7 inch = 17.78     


#LJFL = 1.0753(OFL + 6.898)

### Young and drake 2004 ###
# (LJFL)
# female Linf=323.40, k = 0.08148, t0=-3.4130
#  male  Linf=260.47, k = 0.1096,  t0=-3.3808
############################

### Wang et al. 2010 ###
#(LJFL)
# female Linf=274.855,k = 0.138,t0=-1.998
# male   Linf=234.002,k = 0.169,t0=-2.181
############################

### NFF et al. 2010 ###
# (OFL)
# female Linf=230.5,k = 0.246,t0=-1.24
# male   Linf=208.9,k = 0.271,t0=-1.37
# (LJFL)
# female Linf=255.2741,k = 0.246,t0=-1.24
# male   Linf=232.0476, k = 0.271,t0=-1.37
############################

### Farley 2016  ###
# (OFL)
# Ray
# Female  Linf=279.6,k =0.123,t0=-2.55
# male    Linf=213.8,k =0.197,t0=-2.28
# otolith
# Female  Linf=249.6,k =0.157,t0=-2.13
# male    Linf=191.9,k =0.235,t0=-2.10 

# (LJFL)
# Ray
# Female  Linf=308.0713,k =0.123,t0=-2.55
# male    Linf=237.3166,k =0.197,t0=-2.28
# otolith
# Female  Linf=275.8123,k =0.157,t0=-2.13
# male    Linf=213.7675,k =0.235,t0=-2.10 
############################

############################



# Young and drake 2004

# savepng('growth - female.png',width=17.78,height=17.78)
# data = vonBert.FUN(x = 0:30,Linf=323.40, k = 0.08148, t0=-3.4130,cv = approx(x=c(0,30),y=c(0.15,0.10),xout=0:30)$y) # Young and drake 2004
# plot.growth (data,lwd=3, col='black',ylim=c(0,325))
# data = vonBert.FUN(x = 0:30,Linf=274.855,k = 0.138,t0=-1.998,cv = approx(x=c(0,30),y=c(0.15,0.10),xout=0:30)$y) # Wang et al. 2010 (LJFL)
# plot.growth (data,lwd=3, col='blue',add=T)
# data = vonBert.FUN(x = 0:30,Linf=255.2741,k =0.246,t0=-1.24,cv = approx(x=c(0,30),y=c(0.15,0.10),xout=0:30)$y) # DeMartini 2007
# plot.growth (data,lwd=3, col='orange',add=T)
# data = vonBert.FUN(x = 0:30,Linf=308.0713,k =0.123,t0=-2.55,cv = approx(x=c(0,30),y=c(0.15,0.10),xout=0:30)$y) # Farley 2016  Ray
# plot.growth (data,lwd=3, col='green4',add=T)
# data = vonBert.FUN(x = 0:30,Linf=275.8123,k =0.157,t0=-2.13,cv = approx(x=c(0,30),y=c(0.15,0.10),xout=0:30)$y) # Farley 2016  Otolith
# plot.growth (data,lwd=3, col='red',add=T)
# legend(0,325,c('Young and drake 2004','Wang 2010',"DeMartini 2007",'Farley 2016 (Ray)','Farley 2016 (Otolith)'),col=c('black','blue','orange','green4','red'),bty='n',lty=1,lwd=3)
# dev.off()


# savepng('growth - male.png',width=17.78,height=17.78)
# data = vonBert.FUN(x = 0:30,Linf=260.47, k = 0.1096,  t0=-3.3808,cv = approx(x=c(0,30),y=c(0.15,0.10),xout=0:30)$y) # Young and drake 2004
# plot.growth (data,lwd=3, col='black',lty=2,ylim=c(0,300))
# data = vonBert.FUN(x = 0:30,Linf=234.002,k = 0.169,t0=-2.181,cv = approx(x=c(0,30),y=c(0.15,0.10),xout=0:30)$y) # Wang et al. 2010 (LJFL)
# plot.growth (data,lwd=3, col='blue',lty=2,add=T)
# data = vonBert.FUN(x = 0:30,Linf=232.0476, k = 0.271,t0=-1.37,cv = approx(x=c(0,30),y=c(0.15,0.10),xout=0:30)$y) # DeMartini 2007
# plot.growth (data,lwd=3, col='orange',lty=2,add=T)
# data = vonBert.FUN(x = 0:30,Linf=237.3166,k =0.197,t0=-2.28,cv = approx(x=c(0,30),y=c(0.15,0.10),xout=0:30)$y) # Farley 2016  Ray
# plot.growth (data,lwd=3, col='green4',lty=2,add=T)
# data = vonBert.FUN(x = 0:30,Linf=213.7675,k =0.235,t0=-2.10 ,cv = approx(x=c(0,30),y=c(0.15,0.10),xout=0:30)$y) # Farley 2016  Otolith
# plot.growth (data,lwd=3, col='red',lty=2,add=T)
# legend(0,300,c('Young and drake 2004','Wang 2010',"DeMartini 2007",'Farley 2016 (Ray)','Farley 016 (Otolith)'),col=c('black','blue','orange','green4','red'),bty='n',lty=2,lwd=3)
# dev.off()



savepng('growth.png',width=17.78,height=17.78)
data = vonBert.FUN(a = 0:30,Linf=275.8123,k =0.157,t0=-2.13,cv = approx(x=c(0,30),y=c(0.15,0.10),xout=0:30)$y) # Farley 2016  Otolith - female
plot.growth (data,lwd=3, col='red',add=F,ylim=c(0,325))
data = vonBert.FUN(a = 0:30,Linf=213.7675,k =0.235,t0=-2.10 ,cv = approx(x=c(0,30),y=c(0.15,0.10),xout=0:30)$y) # Farley 2016  Otolith - male
plot.growth (data,lwd=3, col='red',lty=2,add=T)
data = vonBert.FUN(a = 0:30,Linf=274.855,k = 0.138,t0=-1.998,cv = approx(x=c(0,30),y=c(0.15,0.10),xout=0:30)$y) # Wang et al. 2010 - female
plot.growth (data,lwd=3, col='blue',add=T)
data = vonBert.FUN(a = 0:30,Linf=234.002,k = 0.169,t0=-2.181,cv = approx(x=c(0,30),y=c(0.15,0.10),xout=0:30)$y) # Wang et al. 2010 -male
plot.growth (data,lwd=3, col='blue',lty=2,add=T)
legend(0,330,c('Farley 2016 (Otolith)','Wang 2010'),col=c('red','blue'),bty='n',lty=1,lwd=3)
legend(0,300,c('Female','Male'),col=c('red'),bty='n',lty=c(1,2),lwd=3)
dev.off()
