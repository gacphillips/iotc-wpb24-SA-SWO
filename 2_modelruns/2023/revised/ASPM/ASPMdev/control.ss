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
 -8 8 0.188519 1 99 0 4 0 1 1965 2020 4 0 0 # RecrDist_GP_1_area_2_month_1
 -8 8 -0.298035 1 99 0 4 0 1 1965 2020 4 0 0 # RecrDist_GP_1_area_3_month_1
 -8 8 -0.592957 1 99 0 4 0 1 1965 2020 4 0 0 # RecrDist_GP_1_area_4_month_1
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
             7            18       7.96253            11           100             0          3          0          0          0          0          0          0          0 # SR_LN(R0)
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
 52 #_read_recdevs
1970	-0.06725
1971	-0.04519
1972	0.00771
1973	-0.09143
1974	-0.16796
1975	-0.13794
1976	-0.02456
1977	0.02499
1978	-0.02743
1979	-0.05237
1980	0.01320
1981	-0.04271
1982	-0.07757
1983	-0.03184
1984	0.06767
1985	0.02643
1986	0.05441
1987	0.25196
1988	0.07361
1989	-0.02258
1990	-0.01072
1991	-0.03727
1992	0.21738
1993	0.26784
1994	0.01461
1995	0.07558
1996	-0.01134
1997	-0.13857
1998	-0.23791
1999	-0.20152
2000	-0.15890
2001	-0.19381
2002	-0.19872
2003	-0.17739
2004	-0.11075
2005	0.03708
2006	0.04602
2007	-0.13460
2008	-0.09422
2009	0.04539
2010	-0.00866
2011	-0.08030
2012	0.06317
2013	0.20722
2014	0.37712
2015	0.16504
2016	0.03821
2017	0.13267
2018	0.19046
2019	0.12391
2020	0.06185
2021	0.06219
#_end of advanced SR options
#
#_placeholder for full parameter lines for recruitment cycles
# read specified recr devs
#_Yr Input_value
#
# all recruitment deviations
#  1970R 1971R 1972R 1973R 1974R 1975R 1976R 1977R 1978R 1979R 1980R 1981R 1982R 1983R 1984R 1985R 1986R 1987R 1988R 1989R 1990R 1991R 1992R 1993R 1994R 1995R 1996R 1997R 1998R 1999R 2000R 2001R 2002R 2003R 2004R 2005R 2006R 2007R 2008R 2009R 2010R 2011R 2012R 2013R 2014R 2015R 2016R 2017R 2018R 2019R 2020R 2021F 2022F 2023F 2024F 2025F 2026F 2027F 2028F 2029F 2030F 2031F
#  -0.0663756 -0.0444276 0.00860339 -0.0905417 -0.167075 -0.136928 -0.0231092 0.0263323 -0.0273291 -0.0531303 0.011977 -0.0435836 -0.0782803 -0.0324706 0.0671391 0.0260263 0.0540818 0.250948 0.0729505 -0.0230838 -0.0106973 -0.0366604 0.219188 0.267403 0.013705 0.075198 -0.0130931 -0.138748 -0.239739 -0.204619 -0.163029 -0.198061 -0.212566 -0.199844 -0.11578 0.0648681 0.0618584 -0.11235 -0.116364 0.031755 -0.0205687 -0.103521 0.0490396 0.189299 0.373812 0.165295 0.0453525 0.171385 0.237998 0.120734 0.067029 0.0693914 0 0 0 0 0 0 0 0 0 0
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
# ALGI_NW 2.92818e-05 2.92826e-05 0 0 0 2.92933e-05 2.93236e-05 0 0 0 0 0 0 0 0 0 0 0 2.95033e-05 2.95733e-05 2.97965e-05 6.03743e-05 9.11921e-05 0.000123091 0.000159038 0.00019889 0.00023584 0.000264069 0.00025671 0.00028492 0.000313158 0.000341357 0.000374107 0.000408841 0.000431368 0.00044823 0.00118376 0.000489946 0.000565284 0.000626888 0.00086908 0.00074383 0.000741293 0.00134272 0.00179729 0.00107132 0.00161555 0.00313544 0.00219644 0.00568301 0.00477397 0.00644044 0.00960322 0.0199547 0.0452144 0.0505745 0.0393783 0.0203222 0.0142133 0.016021 0.00899721 0.109094 0.157765 0.202632 0.19684 0.0522985 0.115585 0.108012 0.136684 0.138719 0.0768884 0.0942866 0.184502 0.184502 0.184502 0.184502 0.184502 0.184502 0.184502 0.184502 0.184502 0.184502
# JPLL_NW 0 0 0 0 2.14382e-05 0.00081496 0.00230851 0.000806325 0.00105419 0.00118389 0.00178786 0.00208081 0.00229934 0.00112365 0.00202197 0.00271647 0.00583957 0.00678449 0.00537823 0.00578031 0.00210276 0.00347728 0.00530036 0.00283183 0.00282423 0.00295761 0.00379847 0.00382193 0.00905299 0.0038391 0.00227362 0.00546258 0.00709683 0.00636044 0.00400337 0.00573814 0.00591805 0.00414234 0.00607093 0.00281928 0.00229828 0.00107347 0.00172281 0.00429472 0.0167314 0.00980309 0.0171101 0.0196574 0.0131776 0.00493614 0.00817882 0.00690871 0.0102436 0.0169842 0.0167716 0.026824 0.0369775 0.0322564 0.0128661 0.00814987 0.00188406 0.000119359 0.00139062 0.00260056 0.003694 0.00309681 0.00110719 0.00174775 0.000549789 0.000897822 0.000515309 0.000248379 0.000486033 0.000486033 0.000486033 0.000486033 0.000486033 0.000486033 0.000486033 0.000486033 0.000486033 0.000486033
# TWLL_NW 0 0 0 0 1.15323e-05 0.000196119 0.000415834 0.000497298 0.000347139 0.00041678 0.000451831 0.000800231 0.00105672 0.001232 0.00168665 0.000896553 0.00121231 0.000291933 0.003759 0.0032561 0.00359389 0.00466313 0.00267203 0.000431835 0.00136612 0.00110737 5.03468e-05 0.000997206 0.000692286 0.00133865 0.000582335 0.00172484 0.00315158 0.0016973 0.00125779 0.00341581 0.0180767 0.0231267 0.0452915 0.022817 0.0223733 0.0469411 0.040675 0.0580628 0.0338531 0.0649929 0.140528 0.182176 0.168168 0.130957 0.146172 0.139076 0.229158 0.308766 0.279324 0.226446 0.189258 0.148622 0.110662 0.0674214 0.0335334 0.027009 0.143904 0.131745 0.114477 0.142255 0.134574 0.0974521 0.131175 0.108468 0.0965276 0.0662923 0.129722 0.129722 0.129722 0.129722 0.129722 0.129722 0.129722 0.129722 0.129722 0.129722
# ALGI_NE 0.000412726 0.000388626 0.000364455 0.000388831 0.000388996 0.000413497 0.000389341 0.000389502 0.000365298 0.000365415 0.000389844 0.000389946 0.000414459 0.000414615 0.000439155 0.000438737 0.000462703 0.000463892 0.000466503 0.000469136 0.000475582 0.000483103 0.000534062 0.000612864 0.000709362 0.000845721 0.000939619 0.00100116 0.00102224 0.000694718 0.0022759 0.00133228 0.00518549 0.00346577 0.00346679 0.00333113 0.00467483 0.00488364 0.00999819 0.0073995 0.00724129 0.00647941 0.00764751 0.0119091 0.0171933 0.0138995 0.020787 0.0256702 0.0218863 0.0256957 0.0416865 0.0429851 0.0356559 0.0382435 0.0549061 0.0327154 0.0390618 0.0434915 0.0528529 0.0467546 0.04737 0.0537192 0.0510377 0.0491623 0.0381815 0.0344613 0.0848981 0.0945076 0.0748101 0.0657838 0.0219229 0.0407194 0.0796806 0.0796806 0.0796806 0.0796806 0.0796806 0.0796806 0.0796806 0.0796806 0.0796806 0.0796806
# JPLL_NE 0 0 0 4.23654e-05 0.000769114 0.000436407 0.00085541 0.000783409 0.00106385 0.000906699 0.000895236 0.000902039 0.00111024 0.000659396 0.00101439 0.00198805 0.00104053 0.0028121 0.000828525 0.000996587 0.00241208 0.00137658 0.00070807 0.000478701 0.000653781 0.0014989 0.00156107 0.00138067 0.00198027 0.0024244 0.00181471 0.00131575 0.000964057 0.00137603 0.00126452 0.00142082 0.00176822 0.00182128 0.0015688 0.000950753 0.000944756 0.000625693 0.000875711 0.000586934 0.00116189 0.00103678 0.00152712 0.00253689 0.00351442 0.00451077 0.00482953 0.00301475 0.00259705 0.00292457 0.00282394 0.00239636 0.0035355 0.00419248 0.00391723 0.00537862 0.0024401 0.00192377 0.00165557 0.00255489 0.00381114 0.00328582 0.00342128 0.00216412 0.0025825 0.0023695 0.00286905 0.0037204 0.00728017 0.00728017 0.00728017 0.00728017 0.00728017 0.00728017 0.00728017 0.00728017 0.00728017 0.00728017
# TWLL_NE 0 0 0 0 0.000143924 0.000230463 0.000422865 0.00047134 0.000596911 0.000635948 0.000588134 0.0010516 0.000907553 0.00173917 0.00136336 0.00124851 0.000774371 0.000919893 0.00201781 0.00403957 0.00526852 0.00372472 0.0041371 0.0020926 0.00379733 0.00649762 0.00383623 0.00398542 0.00285804 0.00467905 0.00874048 0.00670237 0.00785356 0.0141216 0.0134674 0.017006 0.0197828 0.0199676 0.0207993 0.0259545 0.0132948 0.00963748 0.00669307 0.0198345 0.0273687 0.0257268 0.0480886 0.0459552 0.0743788 0.116245 0.056168 0.0538403 0.0387166 0.0539153 0.0603795 0.0391478 0.0477342 0.051007 0.0358672 0.0802919 0.0628545 0.0420435 0.0345257 0.0140462 0.0118392 0.01724 0.0115173 0.00737173 0.00363853 0.00481297 0.00438554 0.00584953 0.0114465 0.0114465 0.0114465 0.0114465 0.0114465 0.0114465 0.0114465 0.0114465 0.0114465 0.0114465
# TWFL_NE 0.000162368 0.000143671 0.000106219 0.000106248 0.000100062 0.000150225 0.0001441 0.000100348 0.000100454 0.000100557 0.000100639 0.000100721 0.000107113 0.000107207 0.000107302 0.000107424 0.000126464 0.000126569 0.000145779 0.000146107 0.000268124 0.000417759 0.000569238 0.000721726 0.000981665 0.00121262 0.00133954 0.00151403 0.00173165 0.00227425 0.00287218 0.00290929 0.00434628 0.00388139 0.00409235 0.00424542 0.00473138 0.00516923 0.00625699 0.0123196 0.0151883 0.0153567 0.0190087 0.0232936 0.0342018 0.0288818 0.0383856 0.0494198 0.0423441 0.0523961 0.0615731 0.0608255 0.0644625 0.0823323 0.101812 0.0848471 0.0902818 0.0990277 0.100768 0.110608 0.120782 0.159752 0.146745 0.198826 0.15769 0.217256 0.14055 0.176483 0.167159 0.213943 0.190606 0.139109 0.272211 0.272211 0.272211 0.272211 0.272211 0.272211 0.272211 0.272211 0.272211 0.272211
# EUEL_SW 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 6.463e-05 7.48742e-05 0.000106037 0.000137017 0 0 0 0 0 0 0 0 0 0.00206474 0.00751764 0.00022819 0.000385606 0.00674415 0.0252183 0.0345425 0.0239634 0.0404211 0.0954662 0.0791004 0.085538 0.158059 0.22832 0.176798 0.129132 0.122922 0.140724 0.122779 0.175589 0.181762 0.107746 0.091185 0.126979 0.161037 0.128061 0.134357 0.0937175 0.0862785 0.168832 0.168832 0.168832 0.168832 0.168832 0.168832 0.168832 0.168832 0.168832 0.168832
# ISEL_SW 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1.85627e-05 0.00060946 0.00277293 0.00789677 0.0092597 0.017698 0.0222276 0.0416248 0.0396462 0.0363316 0.0386136 0.0255173 0.0393828 0.0468361 0.0604226 0.0546999 0.0567695 0.0467811 0.0294847 0.0444172 0.0398239 0.0325768 0.0328899 0.0379755 0.034125 0.041339 0.0357859 0.035653 0.0359309 0.0287434 0.0282164 0.0552145 0.0552145 0.0552145 0.0552145 0.0552145 0.0552145 0.0552145 0.0552145 0.0552145 0.0552145
# JPLL_SW 0 0 0 0 0 0 0 0 4.32004e-05 0.000194443 0.000345793 0.000865046 0.0027838 0.00183446 0.00305667 0.00130737 0.00188578 0.00188711 0.00109191 0.00333954 0.00223456 0.00137241 0.00240564 0.00420918 0.00266937 0.00316263 0.00228601 0.00115973 0.0024458 0.00340908 0.0029647 0.00245786 0.00460384 0.00563974 0.00765343 0.0138848 0.00604481 0.00741297 0.00744721 0.006363 0.00680586 0.00587421 0.0149167 0.00886212 0.0224032 0.0110694 0.0140155 0.0163238 0.0172407 0.0103235 0.0134043 0.0113727 0.00929182 0.00430722 0.0188931 0.0217411 0.0221699 0.0246953 0.0248787 0.0090289 0.00890808 0.0129025 0.0114138 0.0102395 0.0111613 0.0110387 0.0109607 0.0136655 0.0104208 0.00799882 0.00540249 0.00234435 0.00458747 0.00458747 0.00458747 0.00458747 0.00458747 0.00458747 0.00458747 0.00458747 0.00458747 0.00458747
# TWLL_SW 0 0 0 0 1.55246e-05 0.000139727 0.00026396 0.000263999 0.000201908 0.000248546 0.000264157 0.000466423 0.000716274 0.000842317 0.00115627 0.000641299 0.000875666 0.00126679 0.00166083 0.00166907 0.00536106 0.00172518 0.00415523 0.0047216 0.003199 0.00172027 0.00488199 0.00541334 0.00215899 0.00623728 0.00380292 0.00257031 0.004847 0.00301036 0.00423211 0.00198393 0.00171433 0.00227217 0.00477599 0.00037089 0.0163693 0.00845788 0.0848766 0.196531 0.154725 0.27051 0.143131 0.0588559 0.141382 0.126586 0.239762 0.186531 0.120194 0.0401565 0.0882685 0.13437 0.059531 0.0325227 0.0196482 0.050183 0.0823174 0.0265179 0.00596388 0.0343853 0.0132918 0.00887859 0.0524903 0.0866929 0.0527375 0.0437221 0.0395546 0.028936 0.0566226 0.0566226 0.0566226 0.0566226 0.0566226 0.0566226 0.0566226 0.0566226 0.0566226 0.0566226
# AUEL_SE 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.000456488 0 4.4484e-05 0 0.000766423 0.00131922 0.000899002 0.000313695 0.000574847 0.0050083 0.0193714 0.0233294 0.0446545 0.02126 0.0328914 0.00772677 0.00692603 0.00726135 0.00648148 0.0033638 0.00823436 0.00805684 0.00426089 0.0045947 0.00432697 0.00454749 0.00456757 0.003192 0.00397553 0.00429302 0.00297273 0.00250954 0.00334681 0.0065491 0.0065491 0.0065491 0.0065491 0.0065491 0.0065491 0.0065491 0.0065491 0.0065491 0.0065491
# EUEL_SE 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 2.68206e-05 5.43819e-05 5.53667e-05 0.000126796 0 0 0 0 0 0 0 0 0 0 0 0 0 0.0010438 0.00390555 0.00547688 0.00054478 0.0176541 0.0356563 0.0689756 0.0903989 0.0682478 0.0753307 0.0854335 0.0610933 0.045348 0.0344628 0.0377784 0.0304481 0.0428221 0.0803677 0.0794985 0.0498688 0.030557 0.0102393 0.00536153 0.00697967 0.00949978 0.0185894 0.0185894 0.0185894 0.0185894 0.0185894 0.0185894 0.0185894 0.0185894 0.0185894 0.0185894
# JPLL_SE 0 0 0 1.32379e-05 7.94199e-05 1.32355e-05 2.64689e-05 3.97014e-05 0.00111213 0.00202833 0.00183228 0.00226052 0.00141114 0.00245225 0.0018013 0.00353044 0.00191898 0.00278527 0.00192338 0.000883376 0.00391862 0.00456535 0.000629267 0.00107268 0.00165533 0.00204575 0.000654201 0.00110587 0.00186928 0.00112228 0.00125573 0.00134226 0.00034138 0.001274 0.00205493 0.00280135 0.000611207 0.00154826 0.00115291 0.00061798 0.000653519 0.00261872 0.00147057 0.00382009 0.00468816 0.00909331 0.0105573 0.0113221 0.00387272 0.00449302 0.00371064 0.00512691 0.00555631 0.00248463 0.00437342 0.00207667 0.00341374 0.00732195 0.00810757 0.00634517 0.00682344 0.00436077 0.00569296 0.00598718 0.00810303 0.00723467 0.00660689 0.00481438 0.00329986 0.00328897 0.00438291 0.00287555 0.00562693 0.00562693 0.00562693 0.00562693 0.00562693 0.00562693 0.00562693 0.00562693 0.00562693 0.00562693
# TWLL_SE 0 0 0 0 0 4.14059e-05 6.21047e-05 6.21029e-05 8.28406e-05 0.00010368 8.30592e-05 0.000166333 0.000166486 0.000291605 0.000271027 0.000208865 0.000167951 0.000189875 0.000189486 0.000249868 0.00117483 0.000805982 0.00039731 0.00218725 0.00524587 0.0025048 0.0046325 0.00255116 0.00244326 0.0042526 0.00337052 0.0035991 0.00367204 0.0061528 0.00295219 0.000913413 0.00112638 0.00541211 0.00552273 0.0063469 0.00995486 0.007077 0.0192907 0.0138978 0.0412237 0.0375228 0.0836819 0.0918419 0.068005 0.051123 0.0722574 0.0508887 0.0548014 0.0759182 0.13617 0.0806258 0.0265237 0.0205603 0.0127023 0.0143797 0.0398927 0.0195825 0.0102168 0.0197621 0.0164986 0.0254028 0.0247485 0.0353037 0.0189253 0.0162745 0.0176496 0.0138519 0.0271058 0.0271058 0.0271058 0.0271058 0.0271058 0.0271058 0.0271058 0.0271058 0.0271058 0.0271058
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
           -25            25      -7.05149             0             1             0          1          0          0          0          0          0          0          0  #  LnQ_base_UJPLL_NW(16)
           -25            25      -7.05149             0             1             0         -1          0          0          0          0          0          0          0  #  LnQ_base_UJPLL_NE(17)
           -25            25      -7.05149             0             1             0         -1          0          0          0          0          0          0          0  #  LnQ_base_UJPLL_SW(18)
           -25            25      -7.05149             0             1             0         -1          0          0          0          0          0          0          0  #  LnQ_base_UJPLL_SE(19)
           -25            25      -6.79742             0             1             0         -1          0          0          0          0          0          0          0  #  LnQ_base_UTWLL_NW(20)
           -25            25      -6.88185             0             1             0         -1          0          0          0          0          0          0          0  #  LnQ_base_UTWLL_NE(21)
           -25            25      -6.44479             0             1             0         -1          0          0          0          0          0          0          0  #  LnQ_base_UTWLL_SW(22)
           -25            25      -6.79331             0             1             0         -1          0          0          0          0          0          0          0  #  LnQ_base_UTWLL_SE(23)
           -25            25      -3.90811             0             1             0         -1          0          0          0          0          0          0          0  #  LnQ_base_UPOR_SW(24)
           -25            25      -8.16275             0             1             0         -1          0          0          0          0          0          0          0  #  LnQ_base_UESP_SW(25)
           -25            25      -4.26209             0             1             0         -1          0          0          0          0          0          0          0  #  LnQ_base_UZAF_SW(26)
           -25            25      -11.8058             0             1             0         -1          0          0          0          0          0          0          0  #  LnQ_base_UIND_NE(27)
           -25            25      -7.46538             0             1             0         -1          0          0          0          0          0          0          0  #  LnQ_base_UJPLL_NW_pre(28)
           -25            25       -7.8347             0             1             0         -1          0          0          0          0          0          0          0  #  LnQ_base_UJPLL_NE_pre(29)
           -25            25      -7.19969             0             1             0         -1          0          0          0          0          0          0          0  #  LnQ_base_UJPLL_SW_pre(30)
           -25            25      -7.15329             0             1             0         -1          0          0          0          0          0          0          0  #  LnQ_base_UJPLL_SE_pre(31)
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
        -0.001             1      0.371372             0         0.001             1         -3          0          0          0          0        0.5          0          0  #  SizeSpline_GradLo_ALGI_NW(1)
            -1         0.001     -0.245748             0         0.001             1         -3          0          0          0          0        0.5          0          0  #  SizeSpline_GradHi_ALGI_NW(1)
            20           300            15             0             0             0        -99          0          0          0          0       0.05          0          0  #  SizeSpline_Knot_1_ALGI_NW(1)
            20           300       86.0625             0             0             0        -99          0          0          0          0       0.05          0          0  #  SizeSpline_Knot_2_ALGI_NW(1)
            20           300         139.5             0             0             0        -99          0          0          0          0       0.05          0          0  #  SizeSpline_Knot_3_ALGI_NW(1)
            20           300       192.938             0             0             0        -99          0          0          0          0       0.05          0          0  #  SizeSpline_Knot_4_ALGI_NW(1)
            20           300       246.375             0             0             0        -99          0          0          0          0       0.05          0          0  #  SizeSpline_Knot_5_ALGI_NW(1)
            -9             7       -8.9974             0         0.001             1         -2          0          0          0          0       0.05          0          0  #  SizeSpline_Val_1_ALGI_NW(1)
            -9             7      -1.25291             0         0.001             1         -2          0          0          0          0       0.05          0          0  #  SizeSpline_Val_2_ALGI_NW(1)
            -9             7            -1             0             0             0        -99          0          0          0          0       0.05          0          0  #  SizeSpline_Val_3_ALGI_NW(1)
            -9             7      -3.59314             0         0.001             1         -2          0          0          0          0       0.05          0          0  #  SizeSpline_Val_4_ALGI_NW(1)
            -9             7      -8.58675             0         0.001             1         -2          0          0          0          0       0.05          0          0  #  SizeSpline_Val_5_ALGI_NW(1)
# 2   JPLL_NW LenSelex
            50           200       137.375           150            99             0         -3          0          0          0          0          0          0          0  #  Size_DblN_peak_JPLL_NW(2)
           -12             4      -2.36726          -2.2            99             0         -3          0          0          0          0          0          0          0  #  Size_DblN_top_logit_JPLL_NW(2)
            -1             9       6.19378             5             1             0         -3          0          0          0          0          0          0          0  #  Size_DblN_ascend_se_JPLL_NW(2)
            -1             9       8.99881           4.3            99             0         -3          0          0          0          0          0          0          0  #  Size_DblN_descend_se_JPLL_NW(2)
          -999          -600          -999            -5            99             0         -3          0          0          0          0          0          0          0  #  Size_DblN_start_logit_JPLL_NW(2)
          -999          -600        -799.5            -5            99             0         -3          0          0          0          0          0          0          0  #  Size_DblN_end_logit_JPLL_NW(2)
# 3   TWLL_NW LenSelex
            50           200       147.249           150            99             1         -3          0          0          0          0        0.5          0          0  #  Size_DblN_peak_TWLL_NW(3)
            -6             4      -1.41479            -3            99             1         -3          0          0          0          0        0.5          0          0  #  Size_DblN_top_logit_TWLL_NW(3)
            -1             9       6.59661           8.3            99             1         -3          0          0          0          0        0.5          0          0  #  Size_DblN_ascend_se_TWLL_NW(3)
            -1             9        4.0473             4            99             1         -3          0          0          0          0        0.5          0          0  #  Size_DblN_descend_se_TWLL_NW(3)
           -15            -5           -10            -1            99             1         -3          0          0          0          0        0.5          0          0  #  Size_DblN_start_logit_TWLL_NW(3)
            -5             9     -0.355373            -1            99             1         -3          0          0          0          0        0.5          0          0  #  Size_DblN_end_logit_TWLL_NW(3)
# 4   ALGI_NE LenSelex
            -1           200            -1            -1          0.01             0        -99          0          0          0          0          0          0          0  #  SizeSel_P1_ALGI_NE(4)
            -1           200            -1            -1          0.01             0        -99          0          0          0          0          0          0          0  #  SizeSel_P2_ALGI_NE(4)
# 5   JPLL_NE LenSelex
            50           200        115.31           150            20             1         -1          0          0          0          0          0          0          0  #  Size_inflection_JPLL_NE(5)
         10.01           100       59.1112            20            20             1         -3          0          0          0          0          0          0          0  #  Size_95%width_JPLL_NE(5)
# 6   TWLL_NE LenSelex
            -1           200            -1            -1          0.01             0        -99          0          0          0          0          0          0          0  #  SizeSel_P1_TWLL_NE(6)
            -1           200            -1            -1          0.01             0        -99          0          0          0          0          0          0          0  #  SizeSel_P2_TWLL_NE(6)
# 7   TWFL_NE LenSelex
            50           200       129.336           150            20             1         -1          0          0          0          0          0          0          0  #  Size_inflection_TWFL_NE(7)
         10.01           100       46.8127            20            20             1         -3          0          0          0          0          0          0          0  #  Size_95%width_TWFL_NE(7)
# 8   EUEL_SW LenSelex
            50           200       117.866           150            20             1         -1          0          0          0          0          0          0          0  #  Size_inflection_EUEL_SW(8)
         10.01           100       40.6695            20            20             1         -3          0          0          0          0          0          0          0  #  Size_95%width_EUEL_SW(8)
# 9   ISEL_SW LenSelex
            -1           200            -1            -1          0.01             0        -99          0          0          0          0          0          0          0  #  SizeSel_P1_ISEL_SW(9)
            -1           200            -1            -1          0.01             0        -99          0          0          0          0          0          0          0  #  SizeSel_P2_ISEL_SW(9)
# 10   JPLL_SW LenSelex
            50           200       143.241           150            20             1         -1          0          0          0          0          0          0          0  #  Size_inflection_JPLL_SW(10)
         10.01           100       47.3947            20            20             1         -3          0          0          0          0          0          0          0  #  Size_95%width_JPLL_SW(10)
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
            50           200       123.081           150            20             1         -1          0          0          0          0          0          0          0  #  Size_inflection_JPLL_SE(14)
         10.01           100       51.5639            20            20             1         -3          0          0          0          0          0          0          0  #  Size_95%width_JPLL_SE(14)
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
#      1    22     1     0     0     0     0     1     1  1965  2020     4 -0.0325102 -0.0411481 -0.0636961 -0.103792 -0.151967 -0.156728 -0.0671021 0.116958 0.0605515 0.065591 0.174603 0.105207 0.0489148 0.183131 0.199265 -0.0157529 -0.10926 -0.178945 -0.195749 -0.245487 -0.10022 0.0635355 -0.131383 -0.526142 -0.632192 -0.481021 -0.589664 -0.747302 -0.723663 -0.419653 -0.138107 -0.107265 -0.379043 -0.477266 -0.728467 -0.815965 -0.588947 -0.165907 -0.209134 -0.455717 -0.595705 -0.359233 0.183912 0.284199 -0.0795069 -0.101161 0.187958 1.22333 2.17408 -0.181935 0.356788 0.464366 1.45092 1.94161 0.802091 1.16271
#      1    23     3     0     0     0     0     2     1  1965  2020     4 0.0127894 0.0247001 0.0597585 0.123598 0.110233 -0.000256062 0.0448022 0.361564 0.17973 -0.011518 -0.112512 -0.144495 -0.032597 0.15969 -0.0096722 -0.316038 -0.263319 -0.157803 -0.125885 0.0715993 -0.146399 -0.338142 -0.672819 -0.752188 -0.783937 -0.836148 -0.957416 -1.08212 -1.20298 -0.930483 -0.704948 0.0170396 1.11342 0.257013 -0.294251 0.173376 0.518143 -0.215392 -0.686273 -0.992807 -1.07578 -0.822076 -0.360379 0.36024 0.245648 0.61539 1.15875 1.54783 1.26046 1.70189 1.27516 0.429061 -0.0880818 0.0921232 1.50194 0.926601
#      1    24     5     0     0     0     0     3     1  1965  2020     4 0.151602 0.0342577 -0.112443 -0.194048 -0.0929859 0.0545971 0.11212 -0.188595 -0.208265 -0.18835 -0.274949 -0.41908 -0.114375 0.156541 0.174628 0.166076 0.438447 0.096505 -0.058243 0.340136 0.380293 -0.0913928 0.125491 0.355692 0.516835 0.84762 0.487797 -0.208775 -0.130213 -0.378002 -0.660586 -0.857954 -0.645482 -0.634127 -0.557706 -0.761374 -0.92522 -0.72321 -0.508999 -0.448225 -0.754544 -0.346574 0.328049 -0.0878395 -0.258415 -0.196479 -0.0882332 -0.6505 -0.373901 1.12774 1.31409 0.799181 0.291802 0.573801 0.354845 1.0516
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
 4 1 1 0 1
 4 2 1 0 1
 4 3 1 0 1
 4 4 1 0 1
 4 5 1 0 1
 4 6 1 0 1
 4 7 1 0 1
 4 8 1 0 1
 4 9 1 0 1
 4 10 1 0 1
 4 11 1 0 1
 4 12 1 0 1
 4 13 1 0 1
 4 14 1 0 1
 4 15 1 0 1
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

