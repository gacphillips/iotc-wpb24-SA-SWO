#V3.30.21.00;_safe;_compile_date:_Feb 10 2023;_Stock_Synthesis_by_Richard_Methot_(NOAA)_using_ADMB_13.1
#_Stock_Synthesis_is_a_work_of_the_U.S._Government_and_is_not_subject_to_copyright_protection_in_the_United_States.
#_Foreign_copyrights_may_apply._See_copyright.txt_for_more_information.
#_User_support_available_at:NMFS.Stock.Synthesis@noaa.gov
#_User_info_available_at:https://vlab.noaa.gov/group/stock-synthesis
#_Source_code_at:_https://github.com/nmfs-stock-synthesis/stock-synthesis

#_data_and_control_files: data.ss // control.ss
0  # 0 means do not read wtatage.ss; 1 means read and use wtatage.ss and also read and use growth parameters
1  #_N_Growth_Patterns (Growth Patterns, Morphs, Bio Patterns, GP are terms used interchangeably in SS3)
1 #_N_platoons_Within_GrowthPattern 
#_Cond 1 #_Platoon_within/between_stdev_ratio (no read if N_platoons=1)
#_Cond  1 #vector_platoon_dist_(-1_in_first_val_gives_normal_approx)
#
3 # recr_dist_method for parameters:  2=main effects for GP, Area, Settle timing; 3=each Settle entity; 4=none (only when N_GP*Nsettle*pop==1)
1 # not yet implemented; Future usage: Spawner-Recruitment: 1=global; 2=by area
4 #  number of recruitment settlement assignments 
0 # unused option
#GPattern month  area  age (for each settlement assignment)
 1 1 1 0
 1 1 2 0
 1 1 3 0
 1 1 4 0
#
8 #_N_movement_definitions
0.6 # first age that moves (real age at begin of season, not integer)
# seas,GP,source_area,dest_area,minage,maxage
 1 1 1 2 9 30
 1 1 1 3 9 30
 1 1 2 1 9 30
 1 1 2 4 9 30
 1 1 3 1 9 30
 1 1 3 4 9 30
 1 1 4 2 9 30
 1 1 4 3 9 30
#
1 #_Nblock_Patterns
 1 #_blocks_per_pattern 
# begin and end years of blocks
 1949 1949
#
# controls for all timevary parameters 
1 #_time-vary parm bound check (1=warn relative to base parm bounds; 3=no bound check); Also see env (3) and dev (5) options to constrain with base bounds
#
# AUTOGEN
 1 1 1 1 1 # autogen: 1st element for biology, 2nd for SR, 3rd for Q, 4th reserved, 5th for selex
# where: 0 = autogen time-varying parms of this category; 1 = read each time-varying parm line; 2 = read then autogen if parm min==-12345
#
#_Available timevary codes
#_Block types: 0: P_block=P_base*exp(TVP); 1: P_block=P_base+TVP; 2: P_block=TVP; 3: P_block=P_block(-1) + TVP
#_Block_trends: -1: trend bounded by base parm min-max and parms in transformed units (beware); -2: endtrend and infl_year direct values; -3: end and infl as fraction of base range
#_EnvLinks:  1: P(y)=P_base*exp(TVP*env(y));  2: P(y)=P_base+TVP*env(y);  3: P(y)=f(TVP,env_Zscore) w/ logit to stay in min-max;  4: P(y)=2.0/(1.0+exp(-TVP1*env(y) - TVP2))
#_DevLinks:  1: P(y)*=exp(dev(y)*dev_se;  2: P(y)+=dev(y)*dev_se;  3: random walk;  4: zero-reverting random walk with rho;  5: like 4 with logit transform to stay in base min-max
#_DevLinks(more):  21-25 keep last dev for rest of years
#
#_Prior_codes:  0=none; 6=normal; 1=symmetric beta; 2=CASAL's beta; 3=lognormal; 4=lognormal with biascorr; 5=gamma
#
# setup for M, growth, wt-len, maturity, fecundity, (hermaphro), recr_distr, cohort_grow, (movement), (age error), (catch_mult), sex ratio 
#_NATMORT
0 #_natM_type:_0=1Parm; 1=N_breakpoints;_2=Lorenzen;_3=agespecific;_4=agespec_withseasinterpolate;_5=BETA:_Maunder_link_to_maturity;_6=Lorenzen_range
  #_no additional input for selected M option; read 1P per morph
#
1 # GrowthModel: 1=vonBert with L1&L2; 2=Richards with L1&L2; 3=age_specific_K_incr; 4=age_specific_K_decr; 5=age_specific_K_each; 6=NA; 7=NA; 8=growth cessation
0.01 #_Age(post-settlement)_for_L1;linear growth below this
999 #_Growth_Age_for_L2 (999 to use as Linf)
-999 #_exponential decay for growth above maxage (value should approx initial Z; -999 replicates 3.24; -998 to not allow growth above maxage)
0  #_placeholder for future growth feature
#
0 #_SD_add_to_LAA (set to 0.1 for SS2 V1.x compatibility)
0 #_CV_Growth_Pattern:  0 CV=f(LAA); 1 CV=F(A); 2 SD=F(LAA); 3 SD=F(A); 4 logSD=F(A)
#
3 #_maturity_option:  1=length logistic; 2=age logistic; 3=read age-maturity matrix by growth_pattern; 4=read age-fecundity; 5=disabled; 6=read length-maturity
#_Age_Maturity by growth pattern
 0.001 0.006 0.027 0.109 0.354 0.711 0.917 0.98 0.996 0.999 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
1 #_First_Mature_Age
1 #_fecundity_at_length option:(1)eggs=Wt*(a+b*Wt);(2)eggs=a*L^b;(3)eggs=a*Wt^b; (4)eggs=a+b*L; (5)eggs=a+b*W
0 #_hermaphroditism option:  0=none; 1=female-to-male age-specific fxn; -1=male-to-female age-specific fxn
1 #_parameter_offset_approach for M, G, CV_G:  1- direct, no offset**; 2- male=fem_parm*exp(male_parm); 3: male=female*exp(parm) then old=young*exp(parm)
#_** in option 1, any male parameter with value = 0.0 and phase <0 is set equal to female parameter
#
#_growth_parms
#_ LO HI INIT PRIOR PR_SD PR_type PHASE env_var&link dev_link dev_minyr dev_maxyr dev_PH Block Block_Fxn
# Sex: 1  BioPattern: 1  NatMort
 0.1 0.6 0.25 0.25 1 6 -8 0 0 0 0 0.5 0 0 # NatM_uniform_Fem_GP_1
# Sex: 1  BioPattern: 1  Growth
 70 90 78.7 78.7 0.1 6 -2 0 0 0 0 0 0 0 # L_at_Amin_Fem_GP_1
 250 340 275.812 275.812 0.1 6 -2 0 0 0 0 0 0 0 # L_at_Amax_Fem_GP_1
 0.05 0.2 0.157 0.157 0.1 6 -3 0 0 0 0 0 0 0 # VonBert_K_Fem_GP_1
 0.05 0.25 0.15 0.15 0.15 6 -3 0 0 0 0 0.5 0 0 # CV_young_Fem_GP_1
 0.05 0.25 0.1 0.15 0.15 6 -3 0 0 0 0 0.5 0 0 # CV_old_Fem_GP_1
# Sex: 1  BioPattern: 1  WtLen
 -3 3 3.815e-06 3.815e-06 99 0 -3 0 0 0 0 0.5 0 0 # Wtlen_1_Fem_GP_1
 -3 4 3.188 3.188 99 0 -3 0 0 0 0 0.5 0 0 # Wtlen_2_Fem_GP_1
# Sex: 1  BioPattern: 1  Maturity&Fecundity
 35 73 55 55 99 0 -3 0 0 0 0 0 0 0 # Mat50%_Fem_GP_1
 -3 3 -0.25 -0.25 99 0 -3 0 0 0 0 0 0 0 # Mat_slope_Fem_GP_1
 -3 3 1 1 99 0 -3 0 0 0 0 0 0 0 # Eggs/kg_inter_Fem_GP_1
 -3 3 0 0 99 0 -3 0 0 0 0 0 0 0 # Eggs/kg_slope_wt_Fem_GP_1
# Sex: 2  BioPattern: 1  NatMort
 0.1 0.6 0.25 0.25 1 6 -8 0 0 0 0 0.5 0 0 # NatM_uniform_Mal_GP_1
# Sex: 2  BioPattern: 1  Growth
 70 90 83.57 83.57 0.1 6 -2 0 0 0 0 0 0 0 # L_at_Amin_Mal_GP_1
 200 280 213.768 213.768 0.1 6 -2 0 0 0 0 0 0 0 # L_at_Amax_Mal_GP_1
 0.07 0.3 0.235 0.235 0.1 6 -3 0 0 0 0 0 0 0 # VonBert_K_Mal_GP_1
 0.05 0.25 0.15 0.15 0.15 6 -3 0 0 0 0 0.5 0 0 # CV_young_Mal_GP_1
 0.05 0.25 0.1 0.15 0.15 6 -3 0 0 0 0 0.5 0 0 # CV_old_Mal_GP_1
# Sex: 2  BioPattern: 1  WtLen
 -3 3 3.815e-06 3.815e-06 99 0 -3 0 0 0 0 0.5 0 0 # Wtlen_1_Mal_GP_1
 -3 4 3.188 3.188 99 0 -3 0 0 0 0 0.5 0 0 # Wtlen_2_Mal_GP_1
# Hermaphroditism
#  Recruitment Distribution 
 -8 8 0 1 99 0 -4 0 0 0 0 0.5 0 0 # RecrDist_GP_1_area_1_month_1
 -8 8 0.187616 1 99 0 4 0 1 1965 2020 4 0 0 # RecrDist_GP_1_area_2_month_1
 -8 8 -0.305223 1 99 0 4 0 1 1965 2020 4 0 0 # RecrDist_GP_1_area_3_month_1
 -8 8 -0.591337 1 99 0 4 0 1 1965 2020 4 0 0 # RecrDist_GP_1_area_4_month_1
#  Cohort growth dev base
 0.1 10 1 1 1 6 -1 0 0 0 0 0 0 0 # CohortGrowDev
#  Movement
 -8 9 -7 -5 5 6 -9 0 0 0 0 0 0 0 # MoveParm_A_seas_1_GP_1from_1to_2
 -8 9 -7 -5 5 6 -9 0 0 0 0 0 0 0 # MoveParm_B_seas_1_GP_1from_1to_2
 -8 9 -7 -5 5 6 -9 0 0 0 0 0 0 0 # MoveParm_A_seas_1_GP_1from_1to_3
 -8 9 -7 -5 5 6 -9 0 0 0 0 0 0 0 # MoveParm_B_seas_1_GP_1from_1to_3
 -8 9 -7 -5 5 6 -9 0 0 0 0 0 0 0 # MoveParm_A_seas_1_GP_1from_2to_1
 -8 9 -7 -5 5 6 -9 0 0 0 0 0 0 0 # MoveParm_B_seas_1_GP_1from_2to_1
 -8 9 -7 -5 5 6 -9 0 0 0 0 0 0 0 # MoveParm_A_seas_1_GP_1from_2to_4
 -8 9 -7 -5 5 6 -9 0 0 0 0 0 0 0 # MoveParm_B_seas_1_GP_1from_2to_4
 -8 9 -7 -5 5 6 -9 0 0 0 0 0 0 0 # MoveParm_A_seas_1_GP_1from_3to_1
 -8 9 -7 -5 5 6 -9 0 0 0 0 0 0 0 # MoveParm_B_seas_1_GP_1from_3to_1
 -8 9 -7 -5 5 6 -9 0 0 0 0 0 0 0 # MoveParm_A_seas_1_GP_1from_3to_4
 -8 9 -7 -5 5 6 -9 0 0 0 0 0 0 0 # MoveParm_B_seas_1_GP_1from_3to_4
 -8 9 -7 -5 5 6 -9 0 0 0 0 0 0 0 # MoveParm_A_seas_1_GP_1from_4to_2
 -8 9 -7 -5 5 6 -9 0 0 0 0 0 0 0 # MoveParm_B_seas_1_GP_1from_4to_2
 -8 9 -7 -5 5 6 -9 0 0 0 0 0 0 0 # MoveParm_A_seas_1_GP_1from_4to_3
 -8 9 -7 -5 5 6 -9 0 0 0 0 0 0 0 # MoveParm_B_seas_1_GP_1from_4to_3
#  Age Error from parameters
#  catch multiplier
#  fraction female, by GP
 1e-06 0.999999 0.5 0.5 0.5 0 -99 0 0 0 0 0 0 0 # FracFemale_GP_1
#  M2 parameter for each predator fleet
#
# timevary MG parameters 
#_ LO HI INIT PRIOR PR_SD PR_type  PHASE
 0.0001 2 0.9 0.9 0.5 6 -5 # RecrDist_GP_1_area_2_month_1_dev_se
 -0.99 0.99 0 0 0.5 6 -6 # RecrDist_GP_1_area_2_month_1_dev_autocorr
 0.0001 2 0.9 0.9 0.5 6 -5 # RecrDist_GP_1_area_3_month_1_dev_se
 -0.99 0.99 0 0 0.5 6 -6 # RecrDist_GP_1_area_3_month_1_dev_autocorr
 0.0001 2 0.9 0.9 0.5 6 -5 # RecrDist_GP_1_area_4_month_1_dev_se
 -0.99 0.99 0 0 0.5 6 -6 # RecrDist_GP_1_area_4_month_1_dev_autocorr
# info on dev vectors created for MGparms are reported with other devs after tag parameter section 
#
#_seasonal_effects_on_biology_parms
 0 0 0 0 0 0 0 0 0 0 #_femwtlen1,femwtlen2,mat1,mat2,fec1,fec2,Malewtlen1,malewtlen2,L1,K
#_ LO HI INIT PRIOR PR_SD PR_type PHASE
#_Cond -2 2 0 0 -1 99 -2 #_placeholder when no seasonal MG parameters
#
3 #_Spawner-Recruitment; Options: 1=NA; 2=Ricker; 3=std_B-H; 4=SCAA; 5=Hockey; 6=B-H_flattop; 7=survival_3Parm; 8=Shepherd_3Parm; 9=RickerPower_3parm
0  # 0/1 to use steepness in initial equ recruitment calculation
0  #  future feature:  0/1 to make realized sigmaR a function of SR curvature
#_          LO            HI          INIT         PRIOR         PR_SD       PR_type      PHASE    env-var    use_dev   dev_mnyr   dev_mxyr     dev_PH      Block    Blk_Fxn #  parm_name
             7            18       7.96662            11           100             0          3          0          0          0          0          0          0          0 # SR_LN(R0)
           0.2             1           0.8           0.8           0.1             1        -10          0          0          0          0          0          0          0 # SR_BH_steep
             0             2           0.2           0.2           0.8             0         -3          0          0          0          0          0          0          0 # SR_sigmaR
            -5             5             0             0             1             6         -4          0          0          0          0          0          0          0 # SR_regime
             0             0             0             0             0             0        -99          0          0          0          0          0          0          0 # SR_autocorr
#_no timevary SR parameters
1 #do_recdev:  0=none; 1=devvector (R=F(SSB)+dev); 2=deviations (R=F(SSB)+dev); 3=deviations (R=R0*dev; dev2=R-f(SSB)); 4=like 3 with sum(dev2) adding penalty
1970 # first year of main recr_devs; early devs can preceed this era
2020 # last year of main recr_devs; forecast devs start in following year
6 #_recdev phase 
1 # (0/1) to read 13 advanced options
 0 #_recdev_early_start (0=none; neg value makes relative to recdev_start)
 -5 #_recdev_early_phase
 5 #_forecast_recruitment phase (incl. late recr) (0 value resets to maxphase+1)
 1 #_lambda for Fcast_recr_like occurring before endyr+1
 1970 #_last_yr_nobias_adj_in_MPD; begin of ramp
 1971 #_first_yr_fullbias_adj_in_MPD; begin of plateau
 2019 #_last_yr_fullbias_adj_in_MPD
 2020 #_end_yr_for_ramp_in_MPD (can be in forecast to shape ramp, but SS3 sets bias_adj to 0.0 for fcast yrs)
 1 #_max_bias_adj_in_MPD (typical ~0.8; -3 sets all years to 0.0; -2 sets all non-forecast yrs w/ estimated recdevs to 1.0; -1 sets biasadj=1.0 for all yrs w/ recdevs)
 0 #_period of cycles in recruitment (N parms read below)
 -6 #min rec_dev
 6 #max rec_dev
 0 #_read_recdevs
#_end of advanced SR options
#
#_placeholder for full parameter lines for recruitment cycles
# read specified recr devs
#_Yr Input_value
#
# all recruitment deviations
#  1970R 1971R 1972R 1973R 1974R 1975R 1976R 1977R 1978R 1979R 1980R 1981R 1982R 1983R 1984R 1985R 1986R 1987R 1988R 1989R 1990R 1991R 1992R 1993R 1994R 1995R 1996R 1997R 1998R 1999R 2000R 2001R 2002R 2003R 2004R 2005R 2006R 2007R 2008R 2009R 2010R 2011R 2012R 2013R 2014R 2015R 2016R 2017R 2018R 2019R 2020R 2021F 2022F 2023F 2024F 2025F 2026F 2027F 2028F 2029F 2030F 2031F
#  -0.0657219 -0.0435861 0.00976585 -0.089403 -0.16588 -0.135585 -0.0216511 0.0278373 -0.0258455 -0.051865 0.0132728 -0.0424551 -0.077183 -0.0312557 0.0685479 0.0274798 0.0555685 0.253641 0.075312 -0.0204391 -0.00758297 -0.0333415 0.223565 0.272478 0.016782 0.0776735 -0.0104305 -0.137309 -0.238059 -0.202839 -0.161371 -0.19728 -0.212736 -0.203488 -0.122329 0.0681158 0.0692334 -0.115689 -0.119863 0.0298143 -0.0215391 -0.105385 0.0461121 0.188067 0.369631 0.165539 0.0435454 0.15693 0.221609 0.11739 0.0622022 0.060115 0 0 0 0 0 0 0 0 0 0
#
#Fishing Mortality info 
0.2 # F ballpark value in units of annual_F
2003 # F ballpark year (neg value to disable)
3 # F_Method:  1=Pope midseason rate; 2=F as parameter; 3=F as hybrid; 4=fleet-specific parm/hybrid (#4 is superset of #2 and #3 and is recommended)
4 # max F (methods 2-4) or harvest fraction (method 1)
2  # N iterations for tuning in hybrid mode; recommend 3 (faster) to 5 (more precise if many fleets)
#
#_initial_F_parms; for each fleet x season that has init_catch; nest season in fleet; count = 0
#_for unconstrained init_F, use an arbitrary initial catch and set lambda=0 for its logL
#_ LO HI INIT PRIOR PR_SD  PR_type  PHASE
#
# F rates by fleet x season
# Yr:  1950 1951 1952 1953 1954 1955 1956 1957 1958 1959 1960 1961 1962 1963 1964 1965 1966 1967 1968 1969 1970 1971 1972 1973 1974 1975 1976 1977 1978 1979 1980 1981 1982 1983 1984 1985 1986 1987 1988 1989 1990 1991 1992 1993 1994 1995 1996 1997 1998 1999 2000 2001 2002 2003 2004 2005 2006 2007 2008 2009 2010 2011 2012 2013 2014 2015 2016 2017 2018 2019 2020 2021 2022 2023 2024 2025 2026 2027 2028 2029 2030 2031
# seas:  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
# ALGI_NW 2.91245e-05 2.91253e-05 0 0 0 2.9136e-05 2.9166e-05 0 0 0 0 0 0 0 0 0 0 0 2.93415e-05 2.94091e-05 2.96286e-05 6.00245e-05 9.06258e-05 0.000122276 0.000157957 0.000197541 0.000234252 0.00026229 0.000254949 0.000282937 0.000311004 0.000339082 0.000371687 0.000406236 0.000428588 0.0004453 0.00117599 0.000486672 0.000561415 0.00062254 0.000862933 0.00073837 0.000735512 0.0013314 0.00178165 0.00106217 0.00160187 0.00310926 0.00217846 0.00563707 0.00473571 0.00639049 0.00952964 0.0198086 0.044953 0.0502629 0.0390063 0.0201045 0.0140774 0.0158912 0.00893191 0.108335 0.156593 0.200883 0.195442 0.0519073 0.114411 0.106949 0.136667 0.138591 0.076204 0.0933062 0.182029 0.182029 0.182029 0.182029 0.182029 0.182029 0.182029 0.182029 0.182029 0.182029
# JPLL_NW 0 0 0 0 2.13669e-05 0.000812246 0.00230081 0.00080363 0.00105066 0.00117993 0.00178187 0.00207382 0.00229161 0.00111987 0.00201515 0.0027073 0.00581977 0.00676135 0.00535974 0.00576018 0.00209535 0.00346483 0.00528076 0.00282074 0.00281255 0.00294494 0.00378183 0.00380484 0.00901135 0.00382087 0.00226262 0.00543608 0.00706276 0.00633045 0.00398478 0.00571144 0.00589016 0.00412245 0.00604065 0.00280476 0.0022863 0.00106773 0.00171316 0.00426887 0.016622 0.00973534 0.0169844 0.0194999 0.0130654 0.00489323 0.00810714 0.00684788 0.0101513 0.0168188 0.0166013 0.0265638 0.0366072 0.0318914 0.0127183 0.00806379 0.00186658 0.000118376 0.00137934 0.00257778 0.0036593 0.00306925 0.00109682 0.00172919 0.000544621 0.000893117 0.000512443 0.000246443 0.00048078 0.00048078 0.00048078 0.00048078 0.00048078 0.00048078 0.00048078 0.00048078 0.00048078 0.00048078
# TWLL_NW 0 0 0 0 1.14861e-05 0.000195334 0.000414166 0.0004953 0.000345743 0.000415103 0.000450012 0.000797004 0.00105245 0.00122702 0.00167982 0.000892917 0.00120738 0.000290741 0.00374355 0.00324257 0.00357879 0.00464329 0.00266038 0.000429862 0.00135957 0.0011019 5.00947e-05 0.000992151 0.000688699 0.00133151 0.000579167 0.0017154 0.00313446 0.00168822 0.00125114 0.00339767 0.0179792 0.0229998 0.0450349 0.0226841 0.0222414 0.0466578 0.0404199 0.0576753 0.0336097 0.0645004 0.139404 0.180604 0.16663 0.129734 0.144788 0.137741 0.226892 0.30547 0.276196 0.22401 0.187195 0.146802 0.10926 0.0666344 0.0331909 0.0267625 0.142599 0.130457 0.113283 0.140846 0.133221 0.0963413 0.129778 0.107781 0.0959762 0.0657215 0.128215 0.128215 0.128215 0.128215 0.128215 0.128215 0.128215 0.128215 0.128215 0.128215
# ALGI_NE 0.000410875 0.000386882 0.000362818 0.000387085 0.000387248 0.000411639 0.00038759 0.000387751 0.000363654 0.00036377 0.00038809 0.000388191 0.000412593 0.000412747 0.000437177 0.000436756 0.000460604 0.000461765 0.000464324 0.000466899 0.000473259 0.000480668 0.000531204 0.000609408 0.000705292 0.000840918 0.000934353 0.000995545 0.00101642 0.000690745 0.00226301 0.00132485 0.00515672 0.00344637 0.00344672 0.0033113 0.00464686 0.00485381 0.00993527 0.00735148 0.00719249 0.00643387 0.00759036 0.0118125 0.017048 0.0137838 0.0206178 0.0254686 0.0217191 0.025496 0.0413564 0.0426515 0.0353874 0.0379765 0.0545977 0.0325321 0.0387582 0.0431257 0.0524605 0.0464388 0.0470497 0.0533548 0.0507162 0.0488556 0.0379724 0.0342762 0.0843533 0.0939532 0.0741978 0.06519 0.0217196 0.0403882 0.0787924 0.0787924 0.0787924 0.0787924 0.0787924 0.0787924 0.0787924 0.0787924 0.0787924 0.0787924
# JPLL_NE 0 0 0 4.21588e-05 0.000765362 0.000434276 0.00085123 0.000779577 0.00105864 0.000902256 0.000890846 0.000897612 0.00110479 0.000656155 0.0010094 0.00197826 0.0010354 0.00279819 0.000824408 0.0009916 0.00239987 0.00136952 0.000704366 0.000476136 0.000650191 0.00149048 0.00155213 0.00137264 0.00196859 0.00240993 0.00180375 0.00130774 0.000958159 0.00136755 0.00125665 0.00141185 0.00175689 0.0018094 0.00155836 0.000944265 0.000938125 0.000621183 0.000869199 0.000582368 0.00115231 0.00102776 0.00151317 0.00251251 0.00347901 0.00446253 0.00477482 0.00297944 0.0025661 0.00288938 0.00278979 0.00236777 0.00349351 0.00414163 0.00386926 0.00531245 0.00240979 0.00189965 0.00163499 0.00252424 0.00376878 0.00325158 0.00338585 0.00214156 0.00255396 0.00234108 0.0028319 0.00367117 0.007162 0.007162 0.007162 0.007162 0.007162 0.007162 0.007162 0.007162 0.007162 0.007162
# TWLL_NE 0 0 0 0 0.000143469 0.000229735 0.000421527 0.000469847 0.000595017 0.000633928 0.000586263 0.00104825 0.00090466 0.00173361 0.001359 0.00124451 0.000771885 0.000916924 0.00201124 0.00402623 0.00525078 0.00371188 0.00412241 0.00208479 0.00378245 0.00647142 0.00382059 0.00396902 0.00284604 0.00465886 0.008702 0.00667265 0.00781879 0.014059 0.0134071 0.0169277 0.0196886 0.01987 0.0206942 0.0258183 0.0132228 0.00958357 0.00665414 0.0197111 0.0271821 0.025539 0.047723 0.0455921 0.0737732 0.115253 0.0556618 0.0533392 0.0383524 0.053405 0.0598087 0.0387991 0.0473169 0.0505115 0.0355003 0.0794839 0.0622306 0.0416232 0.0341804 0.0139098 0.011731 0.0170953 0.011423 0.00730816 0.00360634 0.00476348 0.00433572 0.00578227 0.0112805 0.0112805 0.0112805 0.0112805 0.0112805 0.0112805 0.0112805 0.0112805 0.0112805 0.0112805
# TWFL_NE 0.000161498 0.000142901 0.00010565 0.000105678 9.95256e-05 0.000149419 0.000143326 9.9809e-05 9.99133e-05 0.000100015 0.000100097 0.000100178 0.000106534 0.000106628 0.000106722 0.000106842 0.000125779 0.000125882 0.000144984 0.000145306 0.000266641 0.000415421 0.000566002 0.000717534 0.000975834 0.00120526 0.00133127 0.00150453 0.00172061 0.00225954 0.00285338 0.00289009 0.00431748 0.00385554 0.00406484 0.00421647 0.00469858 0.00513275 0.00621197 0.0122289 0.0150739 0.0152383 0.018858 0.023101 0.0339021 0.0286148 0.0380132 0.0489153 0.0418912 0.0518031 0.0608356 0.0600702 0.0636456 0.0812733 0.100482 0.0837499 0.0891279 0.0977305 0.0994226 0.109119 0.119138 0.15755 0.144718 0.196116 0.155648 0.214631 0.13891 0.174418 0.165129 0.211124 0.187899 0.137088 0.267442 0.267442 0.267442 0.267442 0.267442 0.267442 0.267442 0.267442 0.267442 0.267442
# EUEL_SW 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 6.45844e-05 7.47941e-05 0.000105888 0.000136787 0 0 0 0 0 0 0 0 0 0.00205187 0.00746067 0.00022615 0.000381718 0.00667307 0.0249386 0.0341249 0.0236449 0.0398276 0.0939561 0.0778398 0.0842614 0.155791 0.224754 0.173658 0.126747 0.120761 0.138404 0.120887 0.173116 0.179463 0.106567 0.0903478 0.126172 0.161003 0.129492 0.138088 0.0980363 0.091377 0.178265 0.178265 0.178265 0.178265 0.178265 0.178265 0.178265 0.178265 0.178265 0.178265
# ISEL_SW 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1.848e-05 0.00060634 0.00275565 0.00783693 0.00917692 0.0175195 0.0219933 0.0411632 0.0391669 0.0358486 0.0380467 0.0251137 0.0387552 0.0461371 0.0595559 0.0538457 0.0557611 0.0459173 0.0289663 0.0436849 0.0392102 0.0321179 0.0324738 0.0375601 0.0338117 0.0410763 0.0357785 0.0360514 0.0369287 0.030068 0.0298838 0.0582997 0.0582997 0.0582997 0.0582997 0.0582997 0.0582997 0.0582997 0.0582997 0.0582997 0.0582997
# JPLL_SW 0 0 0 0 0 0 0 0 4.32355e-05 0.000194601 0.000346074 0.000865747 0.00278606 0.00183595 0.00305917 0.00130844 0.00188734 0.00188871 0.00109289 0.00334277 0.00223696 0.00137401 0.00240855 0.00421452 0.00267299 0.00316706 0.00228902 0.00116098 0.0024476 0.00341045 0.002965 0.00245732 0.00460128 0.00563482 0.00764478 0.0138664 0.00603584 0.00740053 0.00743223 0.00634734 0.0067857 0.00585373 0.014855 0.00881654 0.0222582 0.0109809 0.0138845 0.0161602 0.0170559 0.0102018 0.0132298 0.0112084 0.00914587 0.0042376 0.0185994 0.0214165 0.0218289 0.0242746 0.0244225 0.00886467 0.00875353 0.0126934 0.0112436 0.0100988 0.0110276 0.0109317 0.0108829 0.0136362 0.010499 0.00817952 0.00562465 0.00247975 0.0048377 0.0048377 0.0048377 0.0048377 0.0048377 0.0048377 0.0048377 0.0048377 0.0048377 0.0048377
# TWLL_SW 0 0 0 0 1.55722e-05 0.000140155 0.000264769 0.000264808 0.000202526 0.000249308 0.000264966 0.000467852 0.00071847 0.0008449 0.00115982 0.000643268 0.000878368 0.00127075 0.00166616 0.00167467 0.00538004 0.00173138 0.00416985 0.00473859 0.00321108 0.00172675 0.00489881 0.00542905 0.00216407 0.0062499 0.00380984 0.00257414 0.00485226 0.00301277 0.00423487 0.00198513 0.00171523 0.00227276 0.00477432 0.000370495 0.0163419 0.00843921 0.0846361 0.195769 0.153912 0.268728 0.142063 0.058411 0.140268 0.1255 0.237511 0.184574 0.118809 0.0397005 0.087409 0.133257 0.0589701 0.0321038 0.0193619 0.0495165 0.0814022 0.0262641 0.00591347 0.0341451 0.0132325 0.00885475 0.0524496 0.0871681 0.0536584 0.0452948 0.0418081 0.0310112 0.060499 0.060499 0.060499 0.060499 0.060499 0.060499 0.060499 0.060499 0.060499 0.060499
# AUEL_SE 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.000452189 0 4.40684e-05 0 0.000758821 0.00130565 0.000889509 0.00031028 0.000568359 0.00495062 0.0191461 0.0230536 0.0441113 0.0209949 0.0324679 0.00762162 0.00682806 0.00715813 0.0063899 0.00331685 0.00812124 0.00794768 0.0042043 0.00453539 0.00427259 0.00449072 0.00450978 0.00315115 0.00392405 0.00423785 0.00293567 0.00247887 0.0033071 0.00645175 0.00645175 0.00645175 0.00645175 0.00645175 0.00645175 0.00645175 0.00645175 0.00645175 0.00645175
# EUEL_SE 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 2.65753e-05 5.38852e-05 5.48623e-05 0.000125636 0 0 0 0 0 0 0 0 0 0 0 0 0 0.00103202 0.00386057 0.00541321 0.00053834 0.0174394 0.0352117 0.0680874 0.0891688 0.0672824 0.0742598 0.0842263 0.0602405 0.044725 0.0339958 0.0372766 0.0300551 0.0422839 0.0793644 0.0784928 0.0492306 0.0301614 0.0101077 0.00529469 0.00689435 0.00938708 0.018313 0.018313 0.018313 0.018313 0.018313 0.018313 0.018313 0.018313 0.018313 0.018313
# JPLL_SE 0 0 0 1.31429e-05 7.885e-05 1.31406e-05 2.62791e-05 3.94166e-05 0.00110415 0.00201376 0.00181909 0.00224423 0.00140096 0.00243454 0.00178828 0.00350486 0.00190503 0.00276495 0.00190932 0.000876921 0.00388994 0.00453175 0.0006246 0.00106463 0.00164274 0.00202998 0.000649106 0.0010972 0.00185452 0.00111335 0.00124568 0.00133149 0.000338639 0.00126377 0.00203843 0.00277884 0.000606292 0.00153578 0.00114356 0.000612927 0.000648122 0.00259688 0.00145816 0.00378735 0.00464699 0.00901117 0.0104585 0.0112115 0.00383374 0.00444692 0.00367172 0.00507153 0.0054947 0.00245604 0.00431991 0.00205038 0.0033709 0.00723058 0.00800663 0.00626751 0.00674172 0.00430981 0.00562868 0.00592142 0.00801356 0.00715207 0.00652941 0.00475742 0.00326152 0.00325228 0.00433543 0.00284547 0.00555117 0.00555117 0.00555117 0.00555117 0.00555117 0.00555117 0.00555117 0.00555117 0.00555117 0.00555117
# TWLL_SE 0 0 0 0 0 4.11758e-05 6.17597e-05 6.17579e-05 8.23802e-05 0.000103103 8.2596e-05 0.000165403 0.000165555 0.000289972 0.000269507 0.000207691 0.000167002 0.000188794 0.000188403 0.000248438 0.0011681 0.000801337 0.000394998 0.00217425 0.00521384 0.00248925 0.00460353 0.00253512 0.0024278 0.00422548 0.00334894 0.00357621 0.00364895 0.00611427 0.00293366 0.000907639 0.00111919 0.00537714 0.00548638 0.00630456 0.00988819 0.00702982 0.0191618 0.0138016 0.0409207 0.0372336 0.0830137 0.0910794 0.0674311 0.0506912 0.07164 0.050443 0.0543147 0.0752252 0.134852 0.0798335 0.026267 0.0203578 0.012575 0.0142373 0.0395079 0.0193992 0.0101241 0.0195878 0.0163526 0.0251702 0.0245179 0.0349752 0.0187513 0.0161335 0.0174988 0.0137329 0.0267913 0.0267913 0.0267913 0.0267913 0.0267913 0.0267913 0.0267913 0.0267913 0.0267913 0.0267913
#
#_Q_setup for fleets with cpue or survey data
#_1:  fleet number
#_2:  link type: (1=simple q, 1 parm; 2=mirror simple q, 1 mirrored parm; 3=q and power, 2 parm; 4=mirror with offset, 2 parm)
#_3:  extra input for link, i.e. mirror fleet# or dev index number
#_4:  0/1 to select extra sd parameter
#_5:  0/1 for biasadj or not
#_6:  0/1 to float
#_   fleet      link link_info  extra_se   biasadj     float  #  fleetname
        16         1         0         0         0         0  #  UJPLL_NW
        17         2        16         0         1         0  #  UJPLL_NE
        18         2        16         0         1         0  #  UJPLL_SW
        19         2        16         0         1         0  #  UJPLL_SE
        20         1         0         0         0         1  #  UTWLL_NW
        21         1         0         0         0         1  #  UTWLL_NE
        22         1         0         0         0         1  #  UTWLL_SW
        23         1         0         0         0         1  #  UTWLL_SE
        24         1         0         0         0         1  #  UPOR_SW
        25         1         0         0         0         1  #  UESP_SW
        26         1         0         0         0         1  #  UZAF_SW
        27         1         0         0         0         1  #  UIND_NE
        28         1         0         0         0         1  #  UJPLL_NW_pre
        29         1         0         0         0         1  #  UJPLL_NE_pre
        30         1         0         0         0         1  #  UJPLL_SW_pre
        31         1         0         0         0         1  #  UJPLL_SE_pre
-9999 0 0 0 0 0
#
#_Q_parms(if_any);Qunits_are_ln(q)
#_          LO            HI          INIT         PRIOR         PR_SD       PR_type      PHASE    env-var    use_dev   dev_mnyr   dev_mxyr     dev_PH      Block    Blk_Fxn  #  parm_name
           -25            25      -7.06006             0             1             0          1          0          0          0          0          0          0          0  #  LnQ_base_UJPLL_NW(16)
           -25            25      -7.06006             0             1             0         -1          0          0          0          0          0          0          0  #  LnQ_base_UJPLL_NE(17)
           -25            25      -7.06006             0             1             0         -1          0          0          0          0          0          0          0  #  LnQ_base_UJPLL_SW(18)
           -25            25      -7.06006             0             1             0         -1          0          0          0          0          0          0          0  #  LnQ_base_UJPLL_SE(19)
           -25            25      -6.80687             0             1             0         -1          0          0          0          0          0          0          0  #  LnQ_base_UTWLL_NW(20)
           -25            25      -6.89878             0             1             0         -1          0          0          0          0          0          0          0  #  LnQ_base_UTWLL_NE(21)
           -25            25       -6.4349             0             1             0         -1          0          0          0          0          0          0          0  #  LnQ_base_UTWLL_SW(22)
           -25            25      -6.80253             0             1             0         -1          0          0          0          0          0          0          0  #  LnQ_base_UTWLL_SE(23)
           -25            25      -4.00093             0             1             0         -1          0          0          0          0          0          0          0  #  LnQ_base_UPOR_SW(24)
           -25            25      -8.17512             0             1             0         -1          0          0          0          0          0          0          0  #  LnQ_base_UESP_SW(25)
           -25            25      -4.27132             0             1             0         -1          0          0          0          0          0          0          0  #  LnQ_base_UZAF_SW(26)
           -25            25       -11.791             0             1             0         -1          0          0          0          0          0          0          0  #  LnQ_base_UIND_NE(27)
           -25            25      -7.47179             0             1             0         -1          0          0          0          0          0          0          0  #  LnQ_base_UJPLL_NW_pre(28)
           -25            25       -7.8404             0             1             0         -1          0          0          0          0          0          0          0  #  LnQ_base_UJPLL_NE_pre(29)
           -25            25      -7.20123             0             1             0         -1          0          0          0          0          0          0          0  #  LnQ_base_UJPLL_SW_pre(30)
           -25            25      -7.16057             0             1             0         -1          0          0          0          0          0          0          0  #  LnQ_base_UJPLL_SE_pre(31)
#_no timevary Q parameters
#
#_size_selex_patterns
#Pattern:_0;  parm=0; selex=1.0 for all sizes
#Pattern:_1;  parm=2; logistic; with 95% width specification
#Pattern:_5;  parm=2; mirror another size selex; PARMS pick the min-max bin to mirror
#Pattern:_11; parm=2; selex=1.0  for specified min-max population length bin range
#Pattern:_15; parm=0; mirror another age or length selex
#Pattern:_6;  parm=2+special; non-parm len selex
#Pattern:_43; parm=2+special+2;  like 6, with 2 additional param for scaling (average over bin range)
#Pattern:_8;  parm=8; double_logistic with smooth transitions and constant above Linf option
#Pattern:_9;  parm=6; simple 4-parm double logistic with starting length; parm 5 is first length; parm 6=1 does desc as offset
#Pattern:_21; parm=2+special; non-parm len selex, read as pairs of size, then selex
#Pattern:_22; parm=4; double_normal as in CASAL
#Pattern:_23; parm=6; double_normal where final value is directly equal to sp(6) so can be >1.0
#Pattern:_24; parm=6; double_normal with sel(minL) and sel(maxL), using joiners
#Pattern:_2;  parm=6; double_normal with sel(minL) and sel(maxL), using joiners, back compatibile version of 24 with 3.30.18 and older
#Pattern:_25; parm=3; exponential-logistic in length
#Pattern:_27; parm=special+3; cubic spline in length; parm1==1 resets knots; parm1==2 resets all 
#Pattern:_42; parm=special+3+2; cubic spline; like 27, with 2 additional param for scaling (average over bin range)
#_discard_options:_0=none;_1=define_retention;_2=retention&mortality;_3=all_discarded_dead;_4=define_dome-shaped_retention
#_Pattern Discard Male Special
 27 0 0 5 # 1 ALGI_NW
 24 0 0 0 # 2 JPLL_NW
 24 0 0 0 # 3 TWLL_NW
 5 0 0 1 # 4 ALGI_NE
 1 0 0 0 # 5 JPLL_NE
 5 0 0 3 # 6 TWLL_NE
 1 0 0 0 # 7 TWFL_NE
 1 0 0 0 # 8 EUEL_SW
 5 0 0 8 # 9 ISEL_SW
 1 0 0 0 # 10 JPLL_SW
 5 0 0 3 # 11 TWLL_SW
 5 0 0 8 # 12 AUEL_SE
 5 0 0 8 # 13 EUEL_SE
 1 0 0 0 # 14 JPLL_SE
 5 0 0 3 # 15 TWLL_SE
 5 0 0 2 # 16 UJPLL_NW
 5 0 0 2 # 17 UJPLL_NE
 5 0 0 2 # 18 UJPLL_SW
 5 0 0 2 # 19 UJPLL_SE
 5 0 0 3 # 20 UTWLL_NW
 5 0 0 3 # 21 UTWLL_NE
 5 0 0 3 # 22 UTWLL_SW
 5 0 0 3 # 23 UTWLL_SE
 5 0 0 8 # 24 UPOR_SW
 5 0 0 8 # 25 UESP_SW
 5 0 0 8 # 26 UZAF_SW
 5 0 0 7 # 27 UIND_NE
 5 0 0 2 # 28 UJPLL_NW_pre
 5 0 0 2 # 29 UJPLL_NE_pre
 5 0 0 2 # 30 UJPLL_SW_pre
 5 0 0 2 # 31 UJPLL_SE_pre
#
#_age_selex_patterns
#Pattern:_0; parm=0; selex=1.0 for ages 0 to maxage
#Pattern:_10; parm=0; selex=1.0 for ages 1 to maxage
#Pattern:_11; parm=2; selex=1.0  for specified min-max age
#Pattern:_12; parm=2; age logistic
#Pattern:_13; parm=8; age double logistic. Recommend using pattern 18 instead.
#Pattern:_14; parm=nages+1; age empirical
#Pattern:_15; parm=0; mirror another age or length selex
#Pattern:_16; parm=2; Coleraine - Gaussian
#Pattern:_17; parm=nages+1; empirical as random walk  N parameters to read can be overridden by setting special to non-zero
#Pattern:_41; parm=2+nages+1; // like 17, with 2 additional param for scaling (average over bin range)
#Pattern:_18; parm=8; double logistic - smooth transition
#Pattern:_19; parm=6; simple 4-parm double logistic with starting age
#Pattern:_20; parm=6; double_normal,using joiners
#Pattern:_26; parm=3; exponential-logistic in age
#Pattern:_27; parm=3+special; cubic spline in age; parm1==1 resets knots; parm1==2 resets all 
#Pattern:_42; parm=2+special+3; // cubic spline; with 2 additional param for scaling (average over bin range)
#Age patterns entered with value >100 create Min_selage from first digit and pattern from remainder
#_Pattern Discard Male Special
 0 0 0 0 # 1 ALGI_NW
 0 0 0 0 # 2 JPLL_NW
 0 0 0 0 # 3 TWLL_NW
 0 0 0 0 # 4 ALGI_NE
 0 0 0 0 # 5 JPLL_NE
 0 0 0 0 # 6 TWLL_NE
 0 0 0 0 # 7 TWFL_NE
 0 0 0 0 # 8 EUEL_SW
 0 0 0 0 # 9 ISEL_SW
 0 0 0 0 # 10 JPLL_SW
 0 0 0 0 # 11 TWLL_SW
 0 0 0 0 # 12 AUEL_SE
 0 0 0 0 # 13 EUEL_SE
 0 0 0 0 # 14 JPLL_SE
 0 0 0 0 # 15 TWLL_SE
 0 0 0 0 # 16 UJPLL_NW
 0 0 0 0 # 17 UJPLL_NE
 0 0 0 0 # 18 UJPLL_SW
 0 0 0 0 # 19 UJPLL_SE
 0 0 0 0 # 20 UTWLL_NW
 0 0 0 0 # 21 UTWLL_NE
 0 0 0 0 # 22 UTWLL_SW
 0 0 0 0 # 23 UTWLL_SE
 0 0 0 2 # 24 UPOR_SW
 0 0 0 2 # 25 UESP_SW
 0 0 0 2 # 26 UZAF_SW
 0 0 0 2 # 27 UIND_NE
 0 0 0 2 # 28 UJPLL_NW_pre
 0 0 0 2 # 29 UJPLL_NE_pre
 0 0 0 2 # 30 UJPLL_SW_pre
 0 0 0 2 # 31 UJPLL_SE_pre
#
#_          LO            HI          INIT         PRIOR         PR_SD       PR_type      PHASE    env-var    use_dev   dev_mnyr   dev_mxyr     dev_PH      Block    Blk_Fxn  #  parm_name
# 1   ALGI_NW LenSelex
             0             0             0             0             0             0        -99          0          0          0          0        0.5          0          0  #  SizeSpline_Code_ALGI_NW(1)
        -0.001             1      0.371511             0         0.001             1          3          0          0          0          0        0.5          0          0  #  SizeSpline_GradLo_ALGI_NW(1)
            -1         0.001     -0.245796             0         0.001             1          3          0          0          0          0        0.5          0          0  #  SizeSpline_GradHi_ALGI_NW(1)
            20           300            15             0             0             0        -99          0          0          0          0       0.05          0          0  #  SizeSpline_Knot_1_ALGI_NW(1)
            20           300       86.0625             0             0             0        -99          0          0          0          0       0.05          0          0  #  SizeSpline_Knot_2_ALGI_NW(1)
            20           300         139.5             0             0             0        -99          0          0          0          0       0.05          0          0  #  SizeSpline_Knot_3_ALGI_NW(1)
            20           300       192.938             0             0             0        -99          0          0          0          0       0.05          0          0  #  SizeSpline_Knot_4_ALGI_NW(1)
            20           300       246.375             0             0             0        -99          0          0          0          0       0.05          0          0  #  SizeSpline_Knot_5_ALGI_NW(1)
            -9             7       -8.9974             0         0.001             1         -2          0          0          0          0       0.05          0          0  #  SizeSpline_Val_1_ALGI_NW(1)
            -9             7      -1.25214             0         0.001             1          2          0          0          0          0       0.05          0          0  #  SizeSpline_Val_2_ALGI_NW(1)
            -9             7            -1             0             0             0        -99          0          0          0          0       0.05          0          0  #  SizeSpline_Val_3_ALGI_NW(1)
            -9             7      -3.59378             0         0.001             1          2          0          0          0          0       0.05          0          0  #  SizeSpline_Val_4_ALGI_NW(1)
            -9             7      -8.58339             0         0.001             1          2          0          0          0          0       0.05          0          0  #  SizeSpline_Val_5_ALGI_NW(1)
# 2   JPLL_NW LenSelex
            50           200       137.371           150            99             0          3          0          0          0          0          0          0          0  #  Size_DblN_peak_JPLL_NW(2)
           -12             4      -2.40006          -2.2            99             0          3          0          0          0          0          0          0          0  #  Size_DblN_top_logit_JPLL_NW(2)
            -1             9       6.19688             5             1             0          3          0          0          0          0          0          0          0  #  Size_DblN_ascend_se_JPLL_NW(2)
            -1             9       8.99881           4.3            99             0          3          0          0          0          0          0          0          0  #  Size_DblN_descend_se_JPLL_NW(2)
          -999          -600          -999            -5            99             0         -3          0          0          0          0          0          0          0  #  Size_DblN_start_logit_JPLL_NW(2)
          -999          -600        -799.5            -5            99             0          3          0          0          0          0          0          0          0  #  Size_DblN_end_logit_JPLL_NW(2)
# 3   TWLL_NW LenSelex
            50           200       147.212           150            99             1          3          0          0          0          0        0.5          0          0  #  Size_DblN_peak_TWLL_NW(3)
            -6             4      -1.41406            -3            99             1          3          0          0          0          0        0.5          0          0  #  Size_DblN_top_logit_TWLL_NW(3)
            -1             9       6.59677           8.3            99             1          3          0          0          0          0        0.5          0          0  #  Size_DblN_ascend_se_TWLL_NW(3)
            -1             9       4.04797             4            99             1          3          0          0          0          0        0.5          0          0  #  Size_DblN_descend_se_TWLL_NW(3)
           -15            -5           -10            -1            99             1         -3          0          0          0          0        0.5          0          0  #  Size_DblN_start_logit_TWLL_NW(3)
            -5             9     -0.362075            -1            99             1          3          0          0          0          0        0.5          0          0  #  Size_DblN_end_logit_TWLL_NW(3)
# 4   ALGI_NE LenSelex
            -1           200            -1            -1          0.01             0        -99          0          0          0          0          0          0          0  #  SizeSel_P1_ALGI_NE(4)
            -1           200            -1            -1          0.01             0        -99          0          0          0          0          0          0          0  #  SizeSel_P2_ALGI_NE(4)
# 5   JPLL_NE LenSelex
            50           200       115.273           150            20             1          1          0          0          0          0          0          0          0  #  Size_inflection_JPLL_NE(5)
         10.01           100       59.1132            20            20             1          3          0          0          0          0          0          0          0  #  Size_95%width_JPLL_NE(5)
# 6   TWLL_NE LenSelex
            -1           200            -1            -1          0.01             0        -99          0          0          0          0          0          0          0  #  SizeSel_P1_TWLL_NE(6)
            -1           200            -1            -1          0.01             0        -99          0          0          0          0          0          0          0  #  SizeSel_P2_TWLL_NE(6)
# 7   TWFL_NE LenSelex
            50           200       129.192           150            20             1          1          0          0          0          0          0          0          0  #  Size_inflection_TWFL_NE(7)
         10.01           100       46.7939            20            20             1          3          0          0          0          0          0          0          0  #  Size_95%width_TWFL_NE(7)
# 8   EUEL_SW LenSelex
            50           200       117.517           150            20             1          1          0          0          0          0          0          0          0  #  Size_inflection_EUEL_SW(8)
         10.01           100       40.4582            20            20             1          3          0          0          0          0          0          0          0  #  Size_95%width_EUEL_SW(8)
# 9   ISEL_SW LenSelex
            -1           200            -1            -1          0.01             0        -99          0          0          0          0          0          0          0  #  SizeSel_P1_ISEL_SW(9)
            -1           200            -1            -1          0.01             0        -99          0          0          0          0          0          0          0  #  SizeSel_P2_ISEL_SW(9)
# 10   JPLL_SW LenSelex
            50           200       143.121           150            20             1          1          0          0          0          0          0          0          0  #  Size_inflection_JPLL_SW(10)
         10.01           100       47.4255            20            20             1          3          0          0          0          0          0          0          0  #  Size_95%width_JPLL_SW(10)
# 11   TWLL_SW LenSelex
            -1           200            -1            -1          0.01             0        -99          0          0          0          0          0          0          0  #  SizeSel_P1_TWLL_SW(11)
            -1           200            -1            -1          0.01             0        -99          0          0          0          0          0          0          0  #  SizeSel_P2_TWLL_SW(11)
# 12   AUEL_SE LenSelex
            -1           200            -1            -1          0.01             0        -99          0          0          0          0          0          0          0  #  SizeSel_P1_AUEL_SE(12)
            -1           200            -1            -1          0.01             0        -99          0          0          0          0          0          0          0  #  SizeSel_P2_AUEL_SE(12)
# 13   EUEL_SE LenSelex
            -1           200            -1            -1          0.01             0        -99          0          0          0          0          0          0          0  #  SizeSel_P1_EUEL_SE(13)
            -1           200            -1            -1          0.01             0        -99          0          0          0          0          0          0          0  #  SizeSel_P2_EUEL_SE(13)
# 14   JPLL_SE LenSelex
            50           200       123.077           150            20             1          1          0          0          0          0          0          0          0  #  Size_inflection_JPLL_SE(14)
         10.01           100       51.5623            20            20             1          3          0          0          0          0          0          0          0  #  Size_95%width_JPLL_SE(14)
# 15   TWLL_SE LenSelex
            -1           200            -1            -1          0.01             0        -99          0          0          0          0          0          0          0  #  SizeSel_P1_TWLL_SE(15)
            -1           200            -1            -1          0.01             0        -99          0          0          0          0          0          0          0  #  SizeSel_P2_TWLL_SE(15)
# 16   UJPLL_NW LenSelex
            -1           200            -1            -1          0.01             0        -99          0          0          0          0          0          0          0  #  SizeSel_P1_UJPLL_NW(16)
            -1           200            -1            -1          0.01             0        -99          0          0          0          0          0          0          0  #  SizeSel_P2_UJPLL_NW(16)
# 17   UJPLL_NE LenSelex
            -1           200            -1            -1          0.01             0        -99          0          0          0          0          0          0          0  #  SizeSel_P1_UJPLL_NE(17)
            -1           200            -1            -1          0.01             0        -99          0          0          0          0          0          0          0  #  SizeSel_P2_UJPLL_NE(17)
# 18   UJPLL_SW LenSelex
            -1           200            -1            -1          0.01             0        -99          0          0          0          0          0          0          0  #  SizeSel_P1_UJPLL_SW(18)
            -1           200            -1            -1          0.01             0        -99          0          0          0          0          0          0          0  #  SizeSel_P2_UJPLL_SW(18)
# 19   UJPLL_SE LenSelex
            -1           200            -1            -1          0.01             0        -99          0          0          0          0          0          0          0  #  SizeSel_P1_UJPLL_SE(19)
            -1           200            -1            -1          0.01             0        -99          0          0          0          0          0          0          0  #  SizeSel_P2_UJPLL_SE(19)
# 20   UTWLL_NW LenSelex
            -1           200            -1            -1          0.01             0        -99          0          0          0          0          0          0          0  #  SizeSel_P1_UTWLL_NW(20)
            -1           200            -1            -1          0.01             0        -99          0          0          0          0          0          0          0  #  SizeSel_P2_UTWLL_NW(20)
# 21   UTWLL_NE LenSelex
            -1           200            -1            -1          0.01             0        -99          0          0          0          0          0          0          0  #  SizeSel_P1_UTWLL_NE(21)
            -1           200            -1            -1          0.01             0        -99          0          0          0          0          0          0          0  #  SizeSel_P2_UTWLL_NE(21)
# 22   UTWLL_SW LenSelex
            -1           200            -1            -1          0.01             0        -99          0          0          0          0          0          0          0  #  SizeSel_P1_UTWLL_SW(22)
            -1           200            -1            -1          0.01             0        -99          0          0          0          0          0          0          0  #  SizeSel_P2_UTWLL_SW(22)
# 23   UTWLL_SE LenSelex
            -1           200            -1            -1          0.01             0        -99          0          0          0          0          0          0          0  #  SizeSel_P1_UTWLL_SE(23)
            -1           200            -1            -1          0.01             0        -99          0          0          0          0          0          0          0  #  SizeSel_P2_UTWLL_SE(23)
# 24   UPOR_SW LenSelex
            -1           200            -1            -1          0.01             0        -99          0          0          0          0          0          0          0  #  SizeSel_P1_UPOR_SW(24)
            -1           200            -1            -1          0.01             0        -99          0          0          0          0          0          0          0  #  SizeSel_P2_UPOR_SW(24)
# 25   UESP_SW LenSelex
            -1           200            -1            -1          0.01             0        -99          0          0          0          0          0          0          0  #  SizeSel_P1_UESP_SW(25)
            -1           200            -1            -1          0.01             0        -99          0          0          0          0          0          0          0  #  SizeSel_P2_UESP_SW(25)
# 26   UZAF_SW LenSelex
            -1           200            -1            -1          0.01             0        -99          0          0          0          0          0          0          0  #  SizeSel_P1_UZAF_SW(26)
            -1           200            -1            -1          0.01             0        -99          0          0          0          0          0          0          0  #  SizeSel_P2_UZAF_SW(26)
# 27   UIND_NE LenSelex
            -1           200            -1            -1          0.01             0        -99          0          0          0          0          0          0          0  #  SizeSel_P1_UIND_NE(27)
            -1           200            -1            -1          0.01             0        -99          0          0          0          0          0          0          0  #  SizeSel_P2_UIND_NE(27)
# 28   UJPLL_NW_pre LenSelex
            -1           200            -1            -1          0.01             0        -99          0          0          0          0          0          0          0  #  SizeSel_P1_UJPLL_NW_pre(28)
            -1           200            -1            -1          0.01             0        -99          0          0          0          0          0          0          0  #  SizeSel_P2_UJPLL_NW_pre(28)
# 29   UJPLL_NE_pre LenSelex
            -1           200            -1            -1          0.01             0        -99          0          0          0          0          0          0          0  #  SizeSel_P1_UJPLL_NE_pre(29)
            -1           200            -1            -1          0.01             0        -99          0          0          0          0          0          0          0  #  SizeSel_P2_UJPLL_NE_pre(29)
# 30   UJPLL_SW_pre LenSelex
            -1           200            -1            -1          0.01             0        -99          0          0          0          0          0          0          0  #  SizeSel_P1_UJPLL_SW_pre(30)
            -1           200            -1            -1          0.01             0        -99          0          0          0          0          0          0          0  #  SizeSel_P2_UJPLL_SW_pre(30)
# 31   UJPLL_SE_pre LenSelex
            -1           200            -1            -1          0.01             0        -99          0          0          0          0          0          0          0  #  SizeSel_P1_UJPLL_SE_pre(31)
            -1           200            -1            -1          0.01             0        -99          0          0          0          0          0          0          0  #  SizeSel_P2_UJPLL_SE_pre(31)
# 1   ALGI_NW AgeSelex
# 2   JPLL_NW AgeSelex
# 3   TWLL_NW AgeSelex
# 4   ALGI_NE AgeSelex
# 5   JPLL_NE AgeSelex
# 6   TWLL_NE AgeSelex
# 7   TWFL_NE AgeSelex
# 8   EUEL_SW AgeSelex
# 9   ISEL_SW AgeSelex
# 10   JPLL_SW AgeSelex
# 11   TWLL_SW AgeSelex
# 12   AUEL_SE AgeSelex
# 13   EUEL_SE AgeSelex
# 14   JPLL_SE AgeSelex
# 15   TWLL_SE AgeSelex
# 16   UJPLL_NW AgeSelex
# 17   UJPLL_NE AgeSelex
# 18   UJPLL_SW AgeSelex
# 19   UJPLL_SE AgeSelex
# 20   UTWLL_NW AgeSelex
# 21   UTWLL_NE AgeSelex
# 22   UTWLL_SW AgeSelex
# 23   UTWLL_SE AgeSelex
# 24   UPOR_SW AgeSelex
# 25   UESP_SW AgeSelex
# 26   UZAF_SW AgeSelex
# 27   UIND_NE AgeSelex
# 28   UJPLL_NW_pre AgeSelex
# 29   UJPLL_NE_pre AgeSelex
# 30   UJPLL_SW_pre AgeSelex
# 31   UJPLL_SE_pre AgeSelex
#_No_Dirichlet parameters
#_no timevary selex parameters
#
0   #  use 2D_AR1 selectivity(0/1)
#_no 2D_AR1 selex offset used
#
# Tag loss and Tag reporting parameters go next
0  # TG_custom:  0=no read and autogen if tag data exist; 1=read
#_Cond -6 6 1 1 2 0.01 -4 0 0 0 0 0 0 0  #_placeholder if no parameters
#
# deviation vectors for timevary parameters
#  base   base first block   block  env  env   dev   dev   dev   dev   dev
#  type  index  parm trend pattern link  var  vectr link _mnyr  mxyr phase  dev_vector
#      1    22     1     0     0     0     0     1     1  1965  2020     4 -0.0322192 -0.040835 -0.0632944 -0.103255 -0.151294 -0.156317 -0.067464 0.114805 0.0592237 0.064658 0.173116 0.104323 0.0481992 0.181004 0.197215 -0.0157712 -0.108482 -0.177953 -0.194746 -0.244396 -0.0989367 0.0650153 -0.129649 -0.523696 -0.629572 -0.478452 -0.587031 -0.744859 -0.721739 -0.416732 -0.134117 -0.103472 -0.374035 -0.474175 -0.72559 -0.812613 -0.584304 -0.157904 -0.194217 -0.443835 -0.599352 -0.373511 0.177927 0.283814 -0.0808636 -0.103757 0.185786 1.22371 2.17742 -0.177731 0.337384 0.441608 1.4638 2.0078 0.697203 1.16243
#      1    23     3     0     0     0     0     2     1  1965  2020     4 0.0132791 0.025332 0.0611578 0.126822 0.113218 -0.000699069 0.0448291 0.369666 0.183611 -0.011823 -0.115274 -0.148885 -0.0362007 0.159538 -0.0120416 -0.323114 -0.269191 -0.162149 -0.130566 0.069037 -0.15217 -0.345933 -0.685166 -0.764484 -0.796441 -0.849431 -0.971631 -1.09823 -1.22091 -0.945999 -0.719998 0.000858356 1.08316 0.239065 -0.313483 0.144493 0.486853 -0.224303 -0.686984 -0.997864 -1.10937 -0.873905 -0.384041 0.361879 0.239345 0.596974 1.14221 1.54033 1.26149 1.67122 1.26999 0.499247 0.00493821 0.204579 1.59879 1.02582
#      1    24     5     0     0     0     0     3     1  1965  2020     4 0.151033 0.0341109 -0.112193 -0.193749 -0.0930873 0.0546036 0.112833 -0.186785 -0.207115 -0.187862 -0.274472 -0.418194 -0.113576 0.157912 0.176098 0.167988 0.438976 0.0972537 -0.0572272 0.341289 0.380976 -0.0905709 0.126084 0.356817 0.517682 0.850087 0.491114 -0.205597 -0.126259 -0.375938 -0.659767 -0.857854 -0.647087 -0.63449 -0.557523 -0.760471 -0.923637 -0.723647 -0.51535 -0.456723 -0.747545 -0.328416 0.326329 -0.0895361 -0.257656 -0.196132 -0.0904212 -0.649437 -0.371493 1.1259  1.321 0.809078 0.269828 0.526041 0.384857 1.05864
     #
# Input variance adjustments factors: 
 #_1=add_to_survey_CV
 #_2=add_to_discard_stddev
 #_3=add_to_bodywt_CV
 #_4=mult_by_lencomp_N
 #_5=mult_by_agecomp_N
 #_6=mult_by_size-at-age_N
 #_7=mult_by_generalized_sizecomp
#_Factor  Fleet  Value
      4      1       0.1
      4      2       0.1
      4      3       0.1
      4      4       0.1
      4      5       0.1
      4      6       0.1
      4      7       0.1
      4      8       0.1
      4      9       0.1
      4     10       0.1
      4     11       0.1
      4     12       0.1
      4     13       0.1
      4     14       0.1
      4     15       0.1
 -9999   1    0  # terminator
#
4 #_maxlambdaphase
1 #_sd_offset; must be 1 if any growthCV, sigmaR, or survey extraSD is an estimated parameter
# read 31 changes to default Lambdas (default value is 1.0)
# Like_comp codes:  1=surv; 2=disc; 3=mnwt; 4=length; 5=age; 6=SizeFreq; 7=sizeage; 8=catch; 9=init_equ_catch; 
# 10=recrdev; 11=parm_prior; 12=parm_dev; 13=CrashPen; 14=Morphcomp; 15=Tag-comp; 16=Tag-negbin; 17=F_ballpark; 18=initEQregime
#like_comp fleet  phase  value  sizefreq_method
 1 16 1 1 1
 1 17 1 1 1
 1 18 1 1 1
 1 19 1 1 1
 1 20 1 0.001 1
 1 21 1 0.001 1
 1 22 1 0.001 1
 1 23 1 0.001 1
 1 24 1 1 1
 1 25 1 0.001 1
 1 26 1 1 1
 1 27 1 0.001 1
 1 28 1 0.001 1
 1 29 1 0.001 1
 1 30 1 0.001 1
 1 31 1 0.001 1
 4 1 1 1 1
 4 2 1 1 1
 4 3 1 1 1
 4 4 1 1 1
 4 5 1 1 1
 4 6 1 1 1
 4 7 1 1 1
 4 8 1 1 1
 4 9 1 1 1
 4 10 1 1 1
 4 11 1 1 1
 4 12 1 1 1
 4 13 1 1 1
 4 14 1 1 1
 4 15 1 1 1
-9999  1  1  1  1  #  terminator
#
# lambdas (for info only; columns are phases)
#  0 0 0 0 #_CPUE/survey:_1
#  0 0 0 0 #_CPUE/survey:_2
#  0 0 0 0 #_CPUE/survey:_3
#  0 0 0 0 #_CPUE/survey:_4
#  0 0 0 0 #_CPUE/survey:_5
#  0 0 0 0 #_CPUE/survey:_6
#  0 0 0 0 #_CPUE/survey:_7
#  0 0 0 0 #_CPUE/survey:_8
#  0 0 0 0 #_CPUE/survey:_9
#  0 0 0 0 #_CPUE/survey:_10
#  0 0 0 0 #_CPUE/survey:_11
#  0 0 0 0 #_CPUE/survey:_12
#  0 0 0 0 #_CPUE/survey:_13
#  0 0 0 0 #_CPUE/survey:_14
#  0 0 0 0 #_CPUE/survey:_15
#  1 1 1 1 #_CPUE/survey:_16
#  1 1 1 1 #_CPUE/survey:_17
#  1 1 1 1 #_CPUE/survey:_18
#  1 1 1 1 #_CPUE/survey:_19
#  0.001 0.001 0.001 0.001 #_CPUE/survey:_20
#  0.001 0.001 0.001 0.001 #_CPUE/survey:_21
#  1 1 1 1 #_CPUE/survey:_22
#  0.001 0.001 0.001 0.001 #_CPUE/survey:_23
#  1 1 1 1 #_CPUE/survey:_24
#  0.001 0.001 0.001 0.001 #_CPUE/survey:_25
#  1 1 1 1 #_CPUE/survey:_26
#  0.001 0.001 0.001 0.001 #_CPUE/survey:_27
#  0.001 0.001 0.001 0.001 #_CPUE/survey:_28
#  0.001 0.001 0.001 0.001 #_CPUE/survey:_29
#  0.001 0.001 0.001 0.001 #_CPUE/survey:_30
#  0.001 0.001 0.001 0.001 #_CPUE/survey:_31
#  0 0 0 0 #_lencomp:_1
#  1 1 1 1 #_lencomp:_2
#  1 1 1 1 #_lencomp:_3
#  1 1 1 1 #_lencomp:_4
#  1 1 1 1 #_lencomp:_5
#  1 1 1 1 #_lencomp:_6
#  1 1 1 1 #_lencomp:_7
#  1 1 1 1 #_lencomp:_8
#  1 1 1 1 #_lencomp:_9
#  1 1 1 1 #_lencomp:_10
#  1 1 1 1 #_lencomp:_11
#  1 1 1 1 #_lencomp:_12
#  1 1 1 1 #_lencomp:_13
#  1 1 1 1 #_lencomp:_14
#  1 1 1 1 #_lencomp:_15
#  0 0 0 0 #_lencomp:_16
#  0 0 0 0 #_lencomp:_17
#  0 0 0 0 #_lencomp:_18
#  0 0 0 0 #_lencomp:_19
#  0 0 0 0 #_lencomp:_20
#  0 0 0 0 #_lencomp:_21
#  0 0 0 0 #_lencomp:_22
#  0 0 0 0 #_lencomp:_23
#  0 0 0 0 #_lencomp:_24
#  0 0 0 0 #_lencomp:_25
#  0 0 0 0 #_lencomp:_26
#  0 0 0 0 #_lencomp:_27
#  0 0 0 0 #_lencomp:_28
#  0 0 0 0 #_lencomp:_29
#  0 0 0 0 #_lencomp:_30
#  0 0 0 0 #_lencomp:_31
#  1 1 1 1 #_init_equ_catch1
#  1 1 1 1 #_init_equ_catch2
#  1 1 1 1 #_init_equ_catch3
#  1 1 1 1 #_init_equ_catch4
#  1 1 1 1 #_init_equ_catch5
#  1 1 1 1 #_init_equ_catch6
#  1 1 1 1 #_init_equ_catch7
#  1 1 1 1 #_init_equ_catch8
#  1 1 1 1 #_init_equ_catch9
#  1 1 1 1 #_init_equ_catch10
#  1 1 1 1 #_init_equ_catch11
#  1 1 1 1 #_init_equ_catch12
#  1 1 1 1 #_init_equ_catch13
#  1 1 1 1 #_init_equ_catch14
#  1 1 1 1 #_init_equ_catch15
#  1 1 1 1 #_init_equ_catch16
#  1 1 1 1 #_init_equ_catch17
#  1 1 1 1 #_init_equ_catch18
#  1 1 1 1 #_init_equ_catch19
#  1 1 1 1 #_init_equ_catch20
#  1 1 1 1 #_init_equ_catch21
#  1 1 1 1 #_init_equ_catch22
#  1 1 1 1 #_init_equ_catch23
#  1 1 1 1 #_init_equ_catch24
#  1 1 1 1 #_init_equ_catch25
#  1 1 1 1 #_init_equ_catch26
#  1 1 1 1 #_init_equ_catch27
#  1 1 1 1 #_init_equ_catch28
#  1 1 1 1 #_init_equ_catch29
#  1 1 1 1 #_init_equ_catch30
#  1 1 1 1 #_init_equ_catch31
#  1 1 1 1 #_recruitments
#  1 1 1 1 #_parameter-priors
#  1 1 1 1 #_parameter-dev-vectors
#  1 1 1 1 #_crashPenLambda
#  1 1 1 1 # F_ballpark_lambda
0 # (0/1/2) read specs for more stddev reporting: 0 = skip, 1 = read specs for reporting stdev for selectivity, size, and numbers, 2 = add options for M,Dyn. Bzero, SmryBio
 # 0 2 0 0 # Selectivity: (1) fleet, (2) 1=len/2=age/3=both, (3) year, (4) N selex bins
 # 0 0 # Growth: (1) growth pattern, (2) growth ages
 # 0 0 0 # Numbers-at-age: (1) area(-1 for all), (2) year, (3) N ages
 # -1 # list of bin #'s for selex std (-1 in first bin to self-generate)
 # -1 # list of ages for growth std (-1 in first bin to self-generate)
 # -1 # list of ages for NatAge std (-1 in first bin to self-generate)
999

