setwd("C:\\Users\\dfu\\OneDrive - Food and Agriculture Organization\\Projects\\2026\\2026SWOSS3\\Working\\R")
source("init.R")
source("functions/ggtheme.R")
source("functions/helper.R")
source("functions/mutate_cond.R")
source("functions/iGRID.R")
source("functions/map.R")


figure_name = "plot_iotc__"
saveplot = function(label,size=1,type="png",...) {SavePlot(paste(figure_name,label,sep=""),type=type,size=size,...)}
saveplot = function(label,size=1,type="png",res=800,...) {SavePlot(paste(figure_name,label,sep=""),type=type,size=size,res=res,...)}
savepng = function(label, width=21, height=29.7,units="cm",res=800,bg = "white",...)  { png(paste(figure_name,label,sep=""),width=width,height=height,units=units,res=res,bg=bg,...)}  #7 inch = 17.78     




figure_name = "plot_iotc_"

trim <- function (x) gsub("^\\s+|\\s+$", "", x)
GRID_PARAM=setup_GRID_PARAM()
GRID = setup_GRID(GRID_PARAM)



savepng('SWO region.png', width=12*2.54,height=7*2.54)
par(mar=c(6,4.1,2.1,8),xaxs="i",yaxs="i") 
GRID.plot(GRID_PARAM,xlim=c(20,130),ylim=c(-50,30))
swo.regions()
maps::map(database='world2',add=TRUE,fill=T,col="DarkOliveGreen3")
dev.off()
