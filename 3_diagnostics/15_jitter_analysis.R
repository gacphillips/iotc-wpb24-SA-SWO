##############################################################################
# Generic SS3 jitter analysis script
#
# Jitters the starting parameter values around the base model MLE and
# re-optimizes from each, to check for convergence to a global (vs local)
# minimum. Flags any jitter runs that find a BETTER (lower) likelihood than
# the base model -- a sign the base model itself may be stuck on a local min.
#
# Requires: r4ss, an SS3 executable, and a fitted base model
##############################################################################

##############################################################################
# 0. PROJECT SETUP -- edit paths for the current project/assessment
##############################################################################

# figure naming/save helpers (as used across the project's SS3 scripts)
figure_name <- "15_jitter_"
saveplot <- function(label, size = 1, type = "png", res = 800, ...) {
  SavePlot(paste(figure_name, label, sep = ""), type = type, size = size, res = res, ...)
}
savepng <- function(label, width = 21, height = 29.7, units = "cm", res = 800, bg = "white", ...) {
  png(paste(figure_name, label, ".png", sep = ""), width = width, height = height,
      units = units, res = res, bg = bg, ...)
}

##############################################################################
# 1. USER INPUTS -- edit these for your assessment
##############################################################################

base_dir   <- base_dir # folder containing your fitted base model
jitter_dir <- file.path(PATH_DIAGNOSTICS, "jitter")          # folder the jitter runs will be copied into/run in
exe_name   <- "ss3_win.exe"                # "ss" (Linux/Mac) or "ss.exe"/"ss3_win" (Windows)
run_extras <- "-nohess -maxfn 5000"                # extra command-line flags, single string (see notes)

jitter_fraction <- 0.1                 # magnitude of the jitter (SS3 starter.ss setting)
Njitter         <- 25                  # number of jitter runs

figure_label <- "jitter"               # used in saved plot filename (via saveplot/savepng above)
plot_dir     <- paste0(PATH_DIAGNOSTICS, "jitter/plots")               # where to save the summary plot
ylim_pad     <- 5                      # extra likelihood units of padding above/below for y-axis

##############################################################################
# 2. SET UP JITTER FOLDER
##############################################################################

dir.create(jitter_dir, showWarnings = FALSE, recursive = TRUE)

# copy base model files (not subfolders) into the jitter folder
base_files <- list.files(base_dir, full.names = TRUE)
base_files <- base_files[!file.info(base_files)$isdir]
file.copy(base_files, jitter_dir, overwrite = TRUE)

# point starter file at the .par (init_values_src = 1) and set jitter fraction
starter <- SS_readstarter(file.path(jitter_dir, "starter.ss"))
starter$init_values_src <- 1
starter$jitter_fraction <- jitter_fraction
SS_writestarter(starter, dir = jitter_dir, overwrite = TRUE)

##############################################################################
# 3. READ THE BASE MODEL (for the reference likelihood line on the plot)
##############################################################################

base_out <- SS_output(dir = base_dir, covar = TRUE, forecast = FALSE,
                      verbose = FALSE, printstats = FALSE)

base_nll <- base_out$likelihoods_used[1, 1]  # total -log-likelihood of base model

##############################################################################
# 4. RUN THE JITTER
##############################################################################

jit_likes <- r4ss::jitter(
  dir      = jitter_dir,
  exe      = exe_name,
  Njitter  = Njitter,
  verbose  = TRUE,
  extras   = run_extras
)

##############################################################################
# 5. READ ALL JITTER RUNS BACK IN AND SUMMARIZE
##############################################################################

jit_models  <- SSgetoutput(dirvec = jitter_dir, keyvec = 1:Njitter, getcovar = FALSE)
jit_summary <- SSsummarize(jit_models)

# quick look
jit_summary$likelihoods[1, ]   # total NLL for each jitter run
jit_summary$pars               # parameter estimates for each jitter run

nll_vec <- as.numeric(jit_summary$likelihoods[1, 1:Njitter])

# flag any runs that beat the base model likelihood (lower NLL = better fit)
better_runs <- which(nll_vec < base_nll - 0.01)  # small tolerance for numerical noise
if (length(better_runs) > 0) {
  message(length(better_runs), " jitter run(s) found a BETTER likelihood than ",
          "the base model: run(s) ", paste(better_runs, collapse = ", "),
          ". Base model may not be at the global minimum -- investigate.")
} else {
  message("No jitter run found a better likelihood than the base model. ",
          "Base model appears to be at (or near) the global minimum.")
}

##############################################################################
# 6. PLOT
##############################################################################

setwd(PATH_DIAG_PLOT)
savepng(figure_label, width = 17.78, height = 17.78)

plot(1:Njitter, nll_vec,
     xlab = "Jitter run",
     ylab = "Total -log-likelihood",
     type = "p", pch = 16,
     col  = ifelse(nll_vec < base_nll - 0.01, "red", "black"),
     ylim = c(min(c(nll_vec, base_nll)) - ylim_pad,
              max(c(nll_vec, base_nll)) + ylim_pad),
     main = paste0("Jitter analysis (n=", Njitter, ")"))
abline(h = base_nll, col = "blue", lty = 2)
legend("topright", legend = c("Jitter run", "Base model NLL"),
       col = c("black", "blue"), pch = c(16, NA), lty = c(NA, 2), bty = "n")

dev.off()

##############################################################################
# NOTES
##############################################################################
# - jitter_fraction controls how far starting values are perturbed from the
#   base model's .par values before each run re-optimizes. 0.1 is a common
#   default; larger values (e.g. 0.2-0.3) test convergence more aggressively
#   but may cause more runs to fail/not converge.
# - r4ss::jitter() calls the SS executable Njitter times inside jitter_dir,
#   writing numbered output folders/files (or renamed Report.sso etc,
#   depending on r4ss version) that SSgetoutput() then reads back in.
# - If some jitter runs fail to converge or crash, SSgetoutput(..., keyvec =
#   1:Njitter) may error on the missing run(s). Either rerun those manually,
#   or wrap the call to only read the runs that produced valid output, e.g.:
#     ok <- file.exists(file.path(jitter_dir, paste0("Report", 1:Njitter, ".sso")))
#     jit_models <- SSgetoutput(dirvec = jitter_dir, keyvec = which(ok), getcovar = FALSE)
# - run_extras must be a single string, not a vector, if you need multiple
#   flags -- e.g. run_extras <- "-nohess -maxfn 5000"
# - covar = TRUE is used when reading the base model here (for consistency
#   with typical base model diagnostics elsewhere), but is not required just
#   for the jitter comparison -- set to FALSE if the base model's covariance
#   file is large/slow to read and you don't need it elsewhere in your script.
##############################################################################