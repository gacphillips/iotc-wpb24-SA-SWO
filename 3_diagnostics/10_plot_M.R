
figure_name = "10_M_"

plot_natM_models <- function(natM_mods,
                               morph = 1,
                               col_line = NULL,
                               alpha_fill = 0.3,
                               ylim = c(0, 0.6),
                               xlim = c(0, 30),
                               ylab = "Natural Mortality",
                               xlab = "Age (yr)",
                               add = FALSE) {
  
  
  n_models <- length(natM_mods)
  
  # Line colours for mean lines
  if (is.null(col_line)) {
    if (n_models <= 12) {
      col_line <- brewer.pal(n_models, "Paired")
    } else {
      col_line <- colorRampPalette(brewer.pal(12, "Paired"))(n_models)
    }
  }
  # Determine plot limits if not adding
  if (!add) {
    plot(0, 0, type="n", xlim=xlim, ylim=ylim, xlab=xlab, ylab=ylab)
  }
  
  for (i in seq_along(natM_mods)) {
    out <- SS_output(dir = natM_mods[i], covar = TRUE, ncols = 500, forecast = FALSE)
    dat <- out$endgrowth
    dat <- dat[dat$Morph == morph, c('Seas','Morph','Settlement','Age_Mid','M')]
    dat <- dat[order(dat$Age_Mid), ]
    
    # Draw mean line
    lines(dat$Age_Mid, dat$M, col = col_line[i], lwd = 2)
  }
  
  age_vals <- 0:30   # numeric ages
  # M15 <- c(
  #   1.688, 1.248, 1.004, 0.852, 0.748, 0.672, 0.612, 0.568, 0.532, 0.5,
  #   0.476, 0.456, 0.44, 0.424, 0.408, 0.4, 0.388, 0.38, 0.372, 0.364,
  #   0.36, 0.352, 0.348, 0.344, 0.34, 0.336, 0.332, 0.328, 0.328, 0.324,
  #   0.32, 0.32, 0.316, 0.316, 0.316, 0.312, 0.312, 0.312, 0.308, 0.308, 0.308
  # )
  # 
  # MHamel15 <- data.frame(Age_Mid = age_vals, M = M15)
  # lines(MHamel15$Age_Mid, MHamel15$M, col = "black", lwd = 2)
  # 
  
  if (!is.null(names(natM_mods))) {
    legend("topright","(25,2.75)", legend = c(names(natM_mods)), col = c(col_line), lwd = 2, bty = "n")
  }
  # 
  
}


# savepng(paste0(MODEL_NAME,'models.png',sep=""), width = 25,height=17.78)
# plot_natM_models(natM_mods = natM_models)
# dev.off()

savepng(paste0('base M model.png',sep=""), width = 25, height = 17.78)
plot_natM_models(natM_mods = base_dir)
dev.off()

savepng(paste0('sensitivity M models.png',sep=""), width = 25, height = 17.78)
plot_natM_models(natM_mods = M_models)
dev.off()
