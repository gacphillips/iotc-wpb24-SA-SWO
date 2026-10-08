makeGrid.SWO = function (path = PATH_GRID, makeGrid = F,
	m.val =c("fixed", "lorenzen"),
	# c.val = c("cj"), #c("cj","ct"),
	h.val = c("h70", "h80", "h90"), 
	G.val = c("GFar","GTWN"), #c("GtMf","GoMf"), 
	r.val = c("r2","r4"),
	C.val = c("CPUE_1","altCPUE")
)
{

	'%&%' <- function(x, y) paste0(x,y)
    gridList <- NULL
	for (m in m.val) {
	# for (c in c.val) {
	for (h in h.val) { 	
	for (G in G.val) {
	for (r in r.val) {
	for (C in C.val) {	
		gridList <- c(gridList, paste(m,h,G,r,C, sep="_" )) #c,
	}}}}}


	
    batRunFName <- "gridRun" %&% ".bat"
	batProjFName <- "gridProj" %&% ".bat"	
    if (makeGrid) {

        bRf <- file(path %&% "\\" %&% batRunFName, open = "w")
		bPf <- file(path %&% "\\" %&% batProjFName, open = "w")
	}	
	counter = 0;
	for (m in m.val) {
	for (h in h.val) {
	# for (c in c.val) {	
	for (G in G.val) {
	for (r in r.val) {
	for (C in C.val) {	
		gridName <- paste(m,h,G,r,C,sep="_" ) #c,
   		if (makeGrid) {
			dir.create(c(path %&% "//" %&% gridName))			
			file.copy(from = path %&% "\\gridTemplate\\run.bat ", to = path %&% "\\" %&% gridName)
			file.copy(from = path %&% "\\gridTemplate\\Starter.SSest ", to = path %&% "\\" %&% gridName)
			file.copy(from = path %&% "\\gridTemplate\\Starter.SSnoest ", to = path %&% "\\" %&% gridName)
			
			dir.create(c(path %&% "//" %&% gridName  %&% "//projection"))			
			file.copy(from = path %&% "\\gridTemplate\\proj.bat ", to = path %&% "\\" %&% gridName  %&% "\\projection")
			file.copy(from = path %&% "\\gridTemplate\\Starter.SSest ", to = path %&% "\\" %&% gridName %&% "\\projection")
			file.copy(from = path %&% "\\gridTemplate\\Starter.SSnoest ", to = path %&% "\\" %&% gridName %&% "\\projection")

	
			template <- scan(path %&% "\\gridTemplate" %&% "\\TemplateCONTROL.SS", what = "", sep = "\n")
			write("# " %&% gridName, file = path %&% "\\" %&% gridName %&% "\\control.ss", append = F)
			for (i in 1:length(template)) {
				str <- template[i]
				str <- sub("# xxx " %&% m, "", str)
				# str <- sub("# xxx " %&% c, "", str)	
				str <- sub("# xxx " %&% h, "", str)				
				str <- sub("# xxx " %&% G, "", str)
				str <- sub("# xxx " %&% r, "", str)	
				str <- sub("# xxx " %&% C, "", str)	
				write(str, file = path %&% "\\" %&% gridName %&% "\\control.ss", append = T)
				write(str, file = path %&% "\\" %&% gridName %&% "\\projection\\control.ss", append = T)
				
			}
			template <- scan(path %&% "\\gridTemplate" %&% "\\TemplateDATA.SS", what = "", sep = "\n")
			write("# " %&% gridName, file = path %&% "\\" %&% gridName %&% "\\data.ss", append = F)
			for (i in 1:length(template)) {
				str <- template[i]
				str <- sub("# xxx " %&% m, "", str)
				# str <- sub("# xxx " %&% c, "", str)	
				str <- sub("# xxx " %&% h, "", str)				
				str <- sub("# xxx " %&% G, "", str)
				str <- sub("# xxx " %&% r, "", str)	
				str <- sub("# xxx " %&% C, "", str)	
				write(str, file = path %&% "\\" %&% gridName %&% "\\data.ss", append = T)
				write(str, file = path %&% "\\" %&% gridName %&% "\\projection\\data.ss", append = T)			
			}

			
			for (pf in c("Forecastc.SS","Forecastc0.6.SS", "Forecastc0.8.SS", "Forecastc1.0.SS", "Forecastc1.2.SS","Forecastc1.4.SS")) {
				template <- scan(path %&% "\\gridTemplate" %&% "\\Template" %&% pf, what = "", sep = "\n")
				write("# " %&% gridName, file = path %&% "\\" %&% gridName %&% "\\projection\\" %&% pf, append = F)
				for (i in 1:length(template)) {
					str <- template[i]
				str <- sub("# xxx " %&% m, "", str)
				# str <- sub("# xxx " %&% c, "", str)	
				str <- sub("# xxx " %&% h, "", str)				
				str <- sub("# xxx " %&% G, "", str)
				str <- sub("# xxx " %&% r, "", str)	
				str <- sub("# xxx " %&% C, "", str)	
				if(pf == "Forecastc.SS")
					write(str, file = path %&% "\\" %&% gridName %&% "\\" %&% pf, append = T)
				write(str, file = path %&% "\\" %&% gridName %&% "\\projection\\" %&% pf, append = T)
				}
			}
		    counter = counter + 1
			
			cat("\ncd " %&% gridName, file = bRf, sep = "\n")			
			cat("call run", file = bRf, sep = "\n")
			cat("cd ..", file = bRf, sep = "\n")
			cat("echo ",counter, file = bRf)
			cat("\n", file = bRf)
			
			cat("\ncd " %&% gridName %&% "/projection", file = bPf, sep = "\n")
			cat("call proj", file = bPf, sep = "\n")
			cat("cd ../..", file = bPf, sep = "\n")
			cat("echo ",counter, file = bPf)
			cat("\n", file = bPf)
			
			
		}
	}}}}}
    if (makeGrid)  {
         close(bRf)
		close(bPf)
		
	}
    return(gridList)
}
