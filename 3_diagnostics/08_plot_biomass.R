
figure_name = "8_biomass_"


plotSSB <- function(paths,
                    models,
                    col = NULL,
                    lwd = rep(3, length(models)),
                    lty = rep(1, length(models)),
                    bty = 'n',
                    cex = 0.6,
                    lgd = TRUE,
                    depletion = FALSE,
                    space = FALSE,
                    tstep = 1950:2024) {
  
  # Expand path vector if needed
  if (length(paths) == 1) {
    paths <- rep(paths, length(models))
  }
  
  if (is.null(col)) {
    if (length(models) <= 12) {
      col <- brewer.pal(length(models), "Paired")
    } else {
      col <- colorRampPalette(brewer.pal(12, "Paired"))(length(models))
    }
  }
  
  SSB <- list()
  YR  <- list()   
  
  for (i in seq_along(models)) {
    der <- extract.derived_quantities(path = paste0(paths[i], models[i]))
    
    # Adjust tstep per model
    model_tstep <- if (models[i] == "0_base_2023_exe") 1950:2021 else if (models[i] == "s2_update_mod_time") 1985:2024 else if (models[i] == "0_base_2023") 1950:2021 else tstep
    
    labs <- paste0('SSB_', model_tstep)
    sub  <- der[der$Label %in% labs, c("Label", "Value")]
    
   
    sub$Year <- as.numeric(sub("SSB_", "", sub$Label))
    sub <- sub[order(sub$Year), ]
    
    if (nrow(sub) != length(model_tstep)) {
      warning(sprintf(
        "Model %s: expected %d years, matched %d in derived quantities (missing: %s).",
        models[i], length(model_tstep), nrow(sub),
        paste(setdiff(model_tstep, sub$Year), collapse = ", ")
      ))
    }
    
    if (!depletion) {
      SSB[[i]] <- sub$Value / 1000
    } else {
      virgin <- der[der$Label == "SSB_Virgin", "Value"]
      SSB[[i]] <- sub$Value / virgin * 100
    }
    YR[[i]] <- sub$Year
  }
  
  if (!depletion) {
    ylab <- "Spawning biomass (1000s t)"
    ylim <- c(0, max(unlist(SSB), na.rm = TRUE))
  } else {
    ylab <- "Depletion (%)"
    ylim <- c(0, 100)
  }
  
  xlim <- range(unlist(YR), na.rm = TRUE)
  
  if (!space) {
    old_par <- par(no.readonly = TRUE)
    on.exit(par(old_par))
    par(mar = c(5, 4, 4, 10), xpd = TRUE)
    plot(NA, xlim = xlim, ylim = ylim, ylab = ylab, xlab = "Year", type = "n")
  }
  
  for (i in seq_along(models)) {
    lines(YR[[i]], SSB[[i]], col = col[i], lty = lty[i], lwd = lwd[i])
  }
  
  if (lgd) {
    legend("topright", inset = .02,
           col = col, lty = lty, lwd = lwd,
           legend = models, cex = cex, bty = bty)
  }
  
  out <- do.call(rbind, lapply(seq_along(models), function(i) {
    data.frame(Model = models[i], Year = YR[[i]], Value = SSB[[i]])
  }))
  
  return(out)
}

# SSByr_SSB0 = data.frame(Year = 193:392,
#                         SSB_SSB0=SSB$derived_quants[paste0('Bratio_',193:392),'Value'],FoFMSY= out$derived_quants[paste0('F_',193:392),'Value'])
# 
# 
# write.csv(SSB, file= paste0(figure_loc, "SSB_percent.csv", sep=""), sep=",")

paths <- paths_for_models
models <- models
savepng('Updates.png', width = 25,height=17.78)
plotSSB(paths = PATH_MODELRUNS, models = mod_update_names)
dev.off()

savepng('Updates_STATUS.png', width = 25,height=17.78)
plotSSB(paths = PATH_MODELRUNS, models = mod_update_names, depletion = TRUE)
dev.off()



savepng('Model Sensitivites.png', width = 25,height=17.78)
plotSSB(paths = PATH_SENSITIVITES, models = mod_sens_names)
dev.off()

savepng('Model Sensitivites STATUS.png', width = 25,height=17.78)
plotSSB(paths = PATH_SENSITIVITES, models = mod_sens_names, depletion = TRUE)
dev.off()


# savepng('Model CPUE Sensitivites.png', width = 25,height=17.78)
# plotSSB(paths = PATH_SENSITIVITES, models = )
# dev.off()
# 
# savepng('Model CPUE Sensitivites STATUS.png', width = 25,height=17.78)
# plotSSB(paths = PATH_SENSITIVITES, models = CPUE_models, depletion = TRUE)
# dev.off()
# 
# savepng('Model GRO Sensitivites.png', width = 25,height=17.78)
# plotSSB(paths =PATH_SENSITIVITES, models = growth_models)
# dev.off()
# 
# savepng('Model GRO Sensitivites STATUS.png', width = 25,height=17.78)
# plotSSB(paths = PATH_SENSITIVITES, models = growth_models, depletion = TRUE)
# dev.off()
# 
# savepng('Model M.png', width = 25,height=17.78)
# plotSSB(paths = PATH_SENSITIVITES, models = names(M_models))
# dev.off()
# 
# savepng('Model M STATUS.png', width = 25,height=17.78)
# plotSSB(paths = PATH_SENSITIVITES, models = names(M_models), depletion = TRUE)
# dev.off()

# savepng('Model Grid_esp.png', width = 25,height=17.78)
# plotSSB(paths = PATH_GRID, models = mod_grid_names)
# dev.off()
# 
# savepng('Model Grid STATUS_esp.png', width = 25,height=17.78)
# plotSSB(paths = PATH_GRID, models = mod_grid_names, depletion = TRUE)
# dev.off()

# savepng('Model All.png', width = 25,height=17.78)
# plotSSB(paths = paths_for_models, models = models)
# dev.off()

# savepng('Model Grid STATUS.png', width = 25,height=17.78)
# plotSSB(paths = PATH_GRID, models = mod_grid_names, depletion = TRUE)
# dev.off()

# savepng('Model Grid.png', width = 25,height=17.78)
# plotSSB(paths = PATH_GRID, models = mod_grid_names, depletion = FALSE)
# dev.off()
#