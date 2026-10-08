#C file created using an r4ss function
#C file write time: 2026-08-16  18:58:36
#
0 # 0 means do not read wtatage.ss; 1 means read and usewtatage.ss and also read and use growth parameters
1 #_N_Growth_Patterns
1 #_N_platoons_Within_GrowthPattern
3 # recr_dist_method for parameters
1 # not yet implemented; Future usage:Spawner-Recruitment; 1=global; 2=by area
4 # number of recruitment settlement assignments 
0 # unused option
# for each settlement assignment:
#_GPattern	month	area	age
1	1	1	0	#_recr_dist_pattern1
1	1	2	0	#_recr_dist_pattern2
1	1	3	0	#_recr_dist_pattern3
1	1	4	0	#_recr_dist_pattern4
#
8 #_N_movement_definitions goes here if N_areas > 1
0.6 #_first age that moves (real age at begin of season, not integer) also cond on do_migration>0
#_move definition for seas, morph, source, dest, age1, age2
1	1	1	2	9	30	#_moveDef1
1	1	1	3	9	30	#_moveDef2
1	1	2	1	9	30	#_moveDef3
1	1	2	4	9	30	#_moveDef4
1	1	3	1	9	30	#_moveDef5
1	1	3	4	9	30	#_moveDef6
1	1	4	2	9	30	#_moveDef7
1	1	4	3	9	30	#_moveDef8
1 #_Nblock_Patterns
1 #_blocks_per_pattern
#_begin and end years of blocks
1949 1949
#
# controls for all timevary parameters 
1 #_env/block/dev_adjust_method for all time-vary parms (1=warn relative to base parm bounds; 3=no bound check)
#
# AUTOGEN
1 1 1 1 1 # autogen: 1st element for biology, 2nd for SR, 3rd for Q, 4th reserved, 5th for selex
# where: 0 = autogen all time-varying parms; 1 = read each time-varying parm line; 2 = read then autogen if parm min==-12345
#
# setup for M, growth, maturity, fecundity, recruitment distibution, movement
#
# xxx fixed 0 #_natM_type:_0=1Parm; 1=N_breakpoints;_2=Lorenzen;_3=agespecific;_4=agespec_withseasinterpolate;_5=Maunder_M;_6=Age-range_Lorenzen
#_no additional input for selected M option; read 1P per morph
# xxx lorenzen 6 #_natM_type
# xxx lorenzen 5 #_minimum age for Age-range Lorenzen M;
# xxx lorenzen 12 #_maximum age for Age-range Lorenzen M;
# xxx Gold 1 # GrowthModel: 1=vonBert with L1&L2; 2=Richards with L1&L2; 3=age_specific_K_incr; 4=age_specific_K_decr;5=age_specific_K_each; 6=NA; 7=NA; 8=growth cessation
# xxx Gnew 1 # GrowthModel: 1=vonBert with L1&L2; 2=Richards with L1&L2; 3=age_specific_K_incr; 4=age_specific_K_decr;5=age_specific_K_each; 6=NA; 7=NA; 8=growth cessation
0.01 #_Age(post-settlement)_for_L1;linear growth below this
999 #_Growth_Age_for_L2 (999 to use as Linf)
-999 #_exponential decay for growth above maxage (value should approx initial Z; -999 replicates 3.24; -998 to not allow growth above maxage)
0 #_placeholder for future growth feature
#
0 #_SD_add_to_LAA (set to 0.1 for SS2 V1.x compatibility)
0 #_CV_Growth_Pattern:  0 CV=f(LAA); 1 CV=F(A); 2 SD=F(LAA); 3 SD=F(A); 4 logSD=F(A)
3 #_maturity_option:  1=length logistic; 2=age logistic; 3=read age-maturity matrix by growth_pattern; 4=read age-fecundity; 5=disabled; 6=read length-maturity
# Age Maturity or Age fecundity:
#_Age_0	Age_1	Age_2	Age_3	Age_4	Age_5	Age_6	Age_7	Age_8	Age_9	Age_10	Age_11	Age_12	Age_13	Age_14	Age_15	Age_16	Age_17	Age_18	Age_19	Age_20	Age_21	Age_22	Age_23	Age_24	Age_25	Age_26	Age_27	Age_28	Age_29	Age_30
0.001	0.006	0.027	0.109	0.354	0.711	0.917	0.98	0.996	0.999	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	#_Age_Maturity1
1 #_First_Mature_Age
1 #_fecundity option:(1)eggs=Wt*(a+b*Wt);(2)eggs=a*L^b;(3)eggs=a*Wt^b; (4)eggs=a+b*L; (5)eggs=a+b*W
0 #_hermaphroditism option:  0=none; 1=female-to-male age-specific fxn; -1=male-to-female age-specific fxn
1 #_parameter_offset_approach (1=none, 2= M, G, CV_G as offset from female-GP1, 3=like SS2 V1.x)
#
#_growth_parms
#_LO	HI	INIT	PRIOR	PR_SD	PR_type	PHASE	env_var&link	dev_link	dev_minyr	dev_maxyr	dev_PH	Block	Block_Fxn
# xxx fixed 0.1	     0.6	     0.25	     0.25	   1	6	 -8	0	0	   0	   0	0.5	0	0	#_NatM_p_1_Fem_GP_1 
# xxx lorenzen 0.01	       1	     0.25	 -1.38629	 0.3	3	 -3	0	0	   0	   0	0.5	0	0	#_NatM_p_1_Fem_GP_1   
# xxx Gold  70	      90	     78.7	     78.7	 0.1	6	 -2	0	0	   0	   0	  0	0	0	#_L_at_Amin_Fem_GP_1                
# xxx Gold 250	     340	  275.812	  275.812	 0.1	6	 -2	0	0	   0	   0	  0	0	0	#_L_at_Amax_Fem_GP_1                
# xxx Gold 0.05	     0.2	    0.157	    0.157	 0.1	6	 -3	0	0	   0	   0	  0	0	0	#_VonBert_K_Fem_GP_1   
# xxx Gnew   50	      80	  62.5794	  62.5794	 0.1	6	 -2	0	0	   0	   0	  0	0	0	#_L_at_Amin_Fem_GP_1                
# xxx Gnew  230	     290	   270.73	   270.73	 0.1	6	 -2	0	0	   0	   0	  0	0	0	#_L_at_Amax_Fem_GP_1                
# xxx Gnew 0.05	     0.2	    0.136	    0.136	 0.1	6	 -3	0	0	   0	   0	  0	0	0	#_VonBert_K_Fem_GP_1              
 0.05	    0.25	     0.15	     0.15	0.15	6	 -3	0	0	   0	   0	0.5	0	0	#_CV_young_Fem_GP_1                 
 0.05	    0.25	      0.1	     0.15	0.15	6	 -3	0	0	   0	   0	0.5	0	0	#_CV_old_Fem_GP_1                   
   -3	       3	3.815e-06	3.815e-06	  99	0	 -3	0	0	   0	   0	0.5	0	0	#_Wtlen_1_Fem_GP_1                  
   -3	       4	    3.188	    3.188	  99	0	 -3	0	0	   0	   0	0.5	0	0	#_Wtlen_2_Fem_GP_1                  
   35	      73	       55	       55	  99	0	 -3	0	0	   0	   0	  0	0	0	#_Mat50%_Fem_GP_1                   
   -3	       3	    -0.25	    -0.25	  99	0	 -3	0	0	   0	   0	  0	0	0	#_Mat_slope_Fem_GP_1                
   -3	       3	        1	        1	  99	0	 -3	0	0	   0	   0	  0	0	0	#_Eggs_alpha_Fem_GP_1               
   -3	       3	        0	        0	  99	0	 -3	0	0	   0	   0	  0	0	0	#_Eggs_beta_Fem_GP_1                
# xxx fixed 0.1	     0.6	     0.25	     0.25	   1	6	 -8	0	0	   0	   0	0.5	0	0	#_NatM_p_1_Mal_GP_1
# xxx lorenzen 0.01	       1	     0.25	 -1.38629	 0.3	3	 -3	0	0	   0	   0	0.5	0	0	#_NatM_p_1_Mal_GP_1   
# xxx Gold  70	      90	    83.57	    83.57	 0.1	6	 -2	0	0	   0	   0	  0	0	0	#_L_at_Amin_Mal_GP_1                
# xxx Gold 200	     280	  213.768	  213.768	 0.1	6	 -2	0	0	   0	   0	  0	0	0	#_L_at_Amax_Mal_GP_1                
# xxx Gold 0.07	     0.3	    0.235	    0.235	 0.1	6	 -3	0	0	   0	   0	  0	0	0	#_VonBert_K_Mal_GP_1 
# xxx Gnew   50	      80	   64.909	   64.909	 0.1	6	 -2	0	0	   0	   0	  0	0	0	#_L_at_Amin_Mal_GP_1                
# xxx Gnew 230	     270	  241.357	  241.357	 0.1	6	 -2	0	0	   0	   0	  0	0	0	#_L_at_Amax_Mal_GP_1                
# xxx Gnew 0.07	     0.3	    0.156	    0.156	 0.1	6	 -3	0	0	   0	   0	  0	0	0	#_VonBert_K_Mal_GP_1                  
 0.05	    0.25	     0.15	     0.15	0.15	6	 -3	0	0	   0	   0	0.5	0	0	#_CV_young_Mal_GP_1                 
 0.05	    0.25	      0.1	     0.15	0.15	6	 -3	0	0	   0	   0	0.5	0	0	#_CV_old_Mal_GP_1                   
   -3	       3	3.815e-06	3.815e-06	  99	0	 -3	0	0	   0	   0	0.5	0	0	#_Wtlen_1_Mal_GP_1                  
   -3	       4	    3.188	    3.188	  99	0	 -3	0	0	   0	   0	0.5	0	0	#_Wtlen_2_Mal_GP_1                  
   -8	       8	        0	        1	  99	0	 -4	0	0	   0	   0	0.5	0	0	#_RecrDist_GP_1_area_1_month_1      
   -8	       8	-0.509876	        1	  99	0	  4	0	1	1955	2023	  4	0	0	#_RecrDist_GP_1_area_2_month_1      
   -8	       8	-0.295335	        1	  99	0	  4	0	1	1955	2023	  4	0	0	#_RecrDist_GP_1_area_3_month_1      
   -8	       8	-0.187103	        1	  99	0	  4	0	1	1955	2023	  4	0	0	#_RecrDist_GP_1_area_4_month_1      
  0.1	      10	        1	        1	   1	6	 -1	0	0	   0	   0	  0	0	0	#_CohortGrowDev                     
   -8	       9	       -7	       -5	   5	6	 -9	0	0	   0	   0	  0	0	0	#_MoveParm_A_seas_1_GP_1_from_1_to_2
   -8	       9	       -7	       -5	   5	6	 -9	0	0	   0	   0	  0	0	0	#_MoveParm_B_seas_1_GP_1_from_1_to_2
   -8	       9	       -7	       -5	   5	6	 -9	0	0	   0	   0	  0	0	0	#_MoveParm_A_seas_1_GP_1_from_1_to_3
   -8	       9	       -7	       -5	   5	6	 -9	0	0	   0	   0	  0	0	0	#_MoveParm_B_seas_1_GP_1_from_1_to_3
   -8	       9	       -7	       -5	   5	6	 -9	0	0	   0	   0	  0	0	0	#_MoveParm_A_seas_1_GP_1_from_2_to_1
   -8	       9	       -7	       -5	   5	6	 -9	0	0	   0	   0	  0	0	0	#_MoveParm_B_seas_1_GP_1_from_2_to_1
   -8	       9	       -7	       -5	   5	6	 -9	0	0	   0	   0	  0	0	0	#_MoveParm_A_seas_1_GP_1_from_2_to_4
   -8	       9	       -7	       -5	   5	6	 -9	0	0	   0	   0	  0	0	0	#_MoveParm_B_seas_1_GP_1_from_2_to_4
   -8	       9	       -7	       -5	   5	6	 -9	0	0	   0	   0	  0	0	0	#_MoveParm_A_seas_1_GP_1_from_3_to_1
   -8	       9	       -7	       -5	   5	6	 -9	0	0	   0	   0	  0	0	0	#_MoveParm_B_seas_1_GP_1_from_3_to_1
   -8	       9	       -7	       -5	   5	6	 -9	0	0	   0	   0	  0	0	0	#_MoveParm_A_seas_1_GP_1_from_3_to_4
   -8	       9	       -7	       -5	   5	6	 -9	0	0	   0	   0	  0	0	0	#_MoveParm_B_seas_1_GP_1_from_3_to_4
   -8	       9	       -7	       -5	   5	6	 -9	0	0	   0	   0	  0	0	0	#_MoveParm_A_seas_1_GP_1_from_4_to_2
   -8	       9	       -7	       -5	   5	6	 -9	0	0	   0	   0	  0	0	0	#_MoveParm_B_seas_1_GP_1_from_4_to_2
   -8	       9	       -7	       -5	   5	6	 -9	0	0	   0	   0	  0	0	0	#_MoveParm_A_seas_1_GP_1_from_4_to_3
   -8	       9	       -7	       -5	   5	6	 -9	0	0	   0	   0	  0	0	0	#_MoveParm_B_seas_1_GP_1_from_4_to_3
1e-06	0.999999	      0.5	      0.5	 0.5	0	-99	0	0	   0	   0	  0	0	0	#_FracFemale_GP_1                   
#_timevary MG parameters
#_LO	HI	INIT	PRIOR	PR_SD	PR_type	PHASE
1e-04	   2	0.9	0.9	0.5	6	-5	#_RecrDist_GP_1_area_2_month_1_dev_se      
-0.99	0.99	  0	  0	0.5	6	-6	#_RecrDist_GP_1_area_2_month_1_dev_autocorr
1e-04	   2	0.9	0.9	0.5	6	-5	#_RecrDist_GP_1_area_3_month_1_dev_se      
-0.99	0.99	  0	  0	0.5	6	-6	#_RecrDist_GP_1_area_3_month_1_dev_autocorr
1e-04	   2	0.9	0.9	0.5	6	-5	#_RecrDist_GP_1_area_4_month_1_dev_se      
-0.99	0.99	  0	  0	0.5	6	-6	#_RecrDist_GP_1_area_4_month_1_dev_autocorr
# info on dev vectors created for MGparms are reported with other devs after tag parameter section
#
#_seasonal_effects_on_biology_parms
0 0 0 0 0 0 0 0 0 0 #_femwtlen1,femwtlen2,mat1,mat2,fec1,fec2,Malewtlen1,malewtlen2,L1,K
#_ LO HI INIT PRIOR PR_SD PR_type PHASE
#_Cond -2 2 0 0 -1 99 -2 #_placeholder when no seasonal MG parameters
#
3 #_Spawner-Recruitment; 2=Ricker (2 parms); 3=std_B-H(2); 4=SCAA(2);5=Hockey(3); 6=B-H_flattop(2); 7=Survival(3);8=Shepard(3);9=Ricker_Power(3);10=B-H_a,b(4)
0 # 0/1 to use steepness in initial equ recruitment calculation
0 # future feature: 0/1 to make realized sigmaR a function of SR curvature
#_LO	HI	INIT	PRIOR	PR_SD	PR_type	PHASE	env-var	use_dev	dev_mnyr	dev_mxyr	dev_PH	Block	Blk_Fxn # parm_name
  7	18	8.42702	 11	100	0	  3	0	0	0	0	0	0	0	#_SR_LN(R0)  
# xxx h70  0.2             1           0.7           0.7           0.1             1        -10          0          0          0          0          0          0          0 # SR_BH_steep
# xxx h80  0.2             1           0.8           0.8           0.1             1        -10          0          0          0          0          0          0          0 # SR_BH_steep
# xxx h90  0.2             1           0.9           0.9           0.1             1        -10          0          0          0          0          0          0          0 # SR_BH_steep
# xxx r2     0             2           0.2           0.2           0.8             0         -3          0          0          0          0          0          0          0 # SR_sigmaR
# xxx r4     0             2           0.4           0.4           0.8             0         -3          0          0          0          0          0          0          0 # SR_sigmaR
 -5	 5	      0	  0	  1	6	 -4	0	0	0	0	0	0	0	#_SR_regime  
  0	 0	      0	  0	  0	0	-99	0	0	0	0	0	0	0	#_SR_autocorr
#_no timevary SR parameters
1 #do_recdev:  0=none; 1=devvector (R=F(SSB)+dev); 2=deviations (R=F(SSB)+dev); 3=deviations (R=R0*dev; dev2=R-f(SSB)); 4=like 3 with sum(dev2) adding penalty
1955 # first year of main recr_devs; early devs can preceed this era
2023 # last year of main recr_devs; forecast devs start in following year
3 #_recdev phase
1 # (0/1) to read 13 advanced options
0 #_recdev_early_start (0=none; neg value makes relative to recdev_start)
-5 #_recdev_early_phase
5 #_forecast_recruitment phase (incl. late recr) (0 value resets to maxphase+1)
1 #_lambda for Fcast_recr_like occurring before endyr+1
1955.3 #_last_yr_nobias_adj_in_MPD; begin of ramp
1999 #_first_yr_fullbias_adj_in_MPD; begin of plateau
2023.3 #_last_yr_fullbias_adj_in_MPD
2024.3 #_end_yr_for_ramp_in_MPD (can be in forecast to shape ramp, but SS sets bias_adj to 0.0 for fcast yrs)
0.3959 #_max_bias_adj_in_MPD (-1 to override ramp and set biasadj=1.0 for all estimated recdevs)
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
#Fishing Mortality info
0.2 # F ballpark
2003 # F ballpark year (neg value to disable)
3 # F_Method:  1=Pope; 2=instan. F; 3=hybrid (hybrid is recommended)
4 # max F or harvest rate, depends on F_Method
2 # N iterations for tuning F in hybrid method (recommend 3 to 7)
#
#_initial_F_parms; count = 0
#
#_Q_setup for fleets with cpue or survey data
#_fleet	link	link_info	extra_se	biasadj	float  #  fleetname
   16	1	 0	0	0	0	#_UJPLL_NW  
   17	2	16	0	1	0	#_UJPLL_NE  
   18	2	16	0	1	0	#_UJPLL_SW  
   19	2	16	0	1	0	#_UJPLL_SE  
   20	1	 0	0	0	1	#_UTWLL_NW  
   21	1	 0	0	0	1	#_UTWLL_NE  
   22	1	 0	0	0	1	#_UTWLL_SW  
   23	1	 0	0	0	1	#_UTWLL_SE  
   24	1	 0	0	0	1	#_UIDN_NE   
   25	1	 0	0	0	1	#_UZAF_SW   
   26	1	 0	0	0	1	#_UPRT_SW   
   27	1	 0	0	0	1	#_UREU_SW   
   28	1	 0	0	0	1	#_UESP_SW   
-9999	0	 0	0	0	0	#_terminator
#_Q_parms(if_any);Qunits_are_ln(q)
#_LO	HI	INIT	PRIOR	PR_SD	PR_type	PHASE	env-var	use_dev	dev_mnyr	dev_mxyr	dev_PH	Block	Blk_Fxn  #  parm_name
-25	25	-11.3081	0	1	0	 1	0	0	0	0	0	0	0	#_LnQ_base_UJPLL_NW(16)
-25	25	       0	0	1	0	-1	0	0	0	0	0	0	0	#_LnQ_base_UJPLL_NE(17)
-25	25	       0	0	1	0	-1	0	0	0	0	0	0	0	#_LnQ_base_UJPLL_SW(18)
-25	25	       0	0	1	0	-1	0	0	0	0	0	0	0	#_LnQ_base_UJPLL_SE(19)
-25	25	-11.3733	0	1	0	-1	0	0	0	0	0	0	0	#_LnQ_base_UTWLL_NW(20)
-25	25	-11.3086	0	1	0	-1	0	0	0	0	0	0	0	#_LnQ_base_UTWLL_NE(21)
-25	25	-12.5867	0	1	0	-1	0	0	0	0	0	0	0	#_LnQ_base_UTWLL_SW(22)
-25	25	-12.0548	0	1	0	-1	0	0	0	0	0	0	0	#_LnQ_base_UTWLL_SE(23)
-25	25	-15.9842	0	1	0	-1	0	0	0	0	0	0	0	#_LnQ_base_UIDN_NE(24) 
-25	25	-14.5541	0	1	0	-1	0	0	0	0	0	0	0	#_LnQ_base_UZAF_SW(25) 
-25	25	-14.6954	0	1	0	-1	0	0	0	0	0	0	0	#_LnQ_base_UPRT_SW(26) 
-25	25	-12.5867	0	1	0	-1	0	0	0	0	0	0	0	#_LnQ_base_UREU_SW(27) 
-25	25	-12.9393	0	1	0	-1	0	0	0	0	0	0	0	#_LnQ_base_UESP_SW(28) 
#_no timevary Q parameters
#
#_size_selex_patterns
#_Pattern	Discard	Male	Special
27	0	0	5	#_1 ALGI_NW  
 1	0	0	0	#_2 JPLL_NW  
24	0	0	0	#_3 TWLL_NW  
 5	0	0	1	#_4 ALGI_NE  
 5	0	0	2	#_5 JPLL_NE  
 5	0	0	3	#_6 TWLL_NE  
24	0	0	0	#_7 TWFL_NE  
24	0	0	0	#_8 EUEL_SW  
 5	0	0	8	#_9 ISEL_SW  
 5	0	0	2	#_10 JPLL_SW 
 5	0	0	3	#_11 TWLL_SW 
 5	0	0	8	#_12 AUEL_SE 
 5	0	0	8	#_13 EUEL_SE 
 5	0	0	2	#_14 JPLL_SE 
 5	0	0	3	#_15 TWLL_SE 
 5	0	0	2	#_16 UJPLL_NW
 5	0	0	2	#_17 UJPLL_NE
 5	0	0	2	#_18 UJPLL_SW
 5	0	0	2	#_19 UJPLL_SE
 5	0	0	3	#_20 UTWLL_NW
 5	0	0	3	#_21 UTWLL_NE
 5	0	0	3	#_22 UTWLL_SW
 5	0	0	3	#_23 UTWLL_SE
 5	0	0	7	#_24 UIDN_NE 
 5	0	0	8	#_25 UZAF_SW 
 5	0	0	8	#_26 UPRT_SW 
 5	0	0	8	#_27 UREU_SW 
 5	0	0	8	#_28 UESP_SW 
#
#_age_selex_patterns
#_Pattern	Discard	Male	Special
0	0	0	0	#_1 ALGI_NW  
0	0	0	0	#_2 JPLL_NW  
0	0	0	0	#_3 TWLL_NW  
0	0	0	0	#_4 ALGI_NE  
0	0	0	0	#_5 JPLL_NE  
0	0	0	0	#_6 TWLL_NE  
0	0	0	0	#_7 TWFL_NE  
0	0	0	0	#_8 EUEL_SW  
0	0	0	0	#_9 ISEL_SW  
0	0	0	0	#_10 JPLL_SW 
0	0	0	0	#_11 TWLL_SW 
0	0	0	0	#_12 AUEL_SE 
0	0	0	0	#_13 EUEL_SE 
0	0	0	0	#_14 JPLL_SE 
0	0	0	0	#_15 TWLL_SE 
0	0	0	0	#_16 UJPLL_NW
0	0	0	0	#_17 UJPLL_NE
0	0	0	0	#_18 UJPLL_SW
0	0	0	0	#_19 UJPLL_SE
0	0	0	0	#_20 UTWLL_NW
0	0	0	0	#_21 UTWLL_NE
0	0	0	0	#_22 UTWLL_SW
0	0	0	0	#_23 UTWLL_SE
0	0	0	2	#_24 UIDN_NE 
0	0	0	2	#_25 UZAF_SW 
0	0	0	2	#_26 UPRT_SW 
0	0	0	2	#_27 UREU_SW 
0	0	0	2	#_28 UESP_SW 
#
#_SizeSelex
#_LO	HI	INIT	PRIOR	PR_SD	PR_type	PHASE	env-var	use_dev	dev_mnyr	dev_mxyr	dev_PH	Block	Blk_Fxn  #  parm_name
     0	    0	          0	  0	    0	0	-99	0	0	0	0	 0.5	0	0	#_SizeSel_Spline_Code_ALGI_NW(1)  
-0.001	    1	   0.616361	  0	0.001	1	  3	0	0	0	0	 0.5	0	0	#_SizeSel_Spline_GradLo_ALGI_NW(1)
    -1	0.001	0.000663187	  0	0.001	1	  3	0	0	0	0	 0.5	0	0	#_SizeSel_Spline_GradHi_ALGI_NW(1)
    10	  300	         15	  0	    0	0	-99	0	0	0	0	0.05	0	0	#_SizeSel_Spline_Knot_1_ALGI_NW(1)
    20	  300	    86.0625	  0	    0	0	-99	0	0	0	0	0.05	0	0	#_SizeSel_Spline_Knot_2_ALGI_NW(1)
    20	  300	      139.5	  0	    0	0	-99	0	0	0	0	0.05	0	0	#_SizeSel_Spline_Knot_3_ALGI_NW(1)
    20	  300	    192.938	  0	    0	0	-99	0	0	0	0	0.05	0	0	#_SizeSel_Spline_Knot_4_ALGI_NW(1)
    20	  300	    246.375	  0	    0	0	-99	0	0	0	0	0.05	0	0	#_SizeSel_Spline_Knot_5_ALGI_NW(1)
    -9	    7	    -8.9974	  0	0.001	1	 -2	0	0	0	0	0.05	0	0	#_SizeSel_Spine_Val_1_ALGI_NW(1)  
    -9	    7	   0.958733	  0	0.001	1	  2	0	0	0	0	0.05	0	0	#_SizeSel_Spine_Val_2_ALGI_NW(1)  
    -9	    7	         -1	  0	    0	0	-99	0	0	0	0	0.05	0	0	#_SizeSel_Spine_Val_3_ALGI_NW(1)  
    -9	    7	   -2.71927	  0	0.001	1	  2	0	0	0	0	0.05	0	0	#_SizeSel_Spine_Val_4_ALGI_NW(1)  
    -9	    7	   -2.97974	  0	0.001	1	  2	0	0	0	0	0.05	0	0	#_SizeSel_Spine_Val_5_ALGI_NW(1)  
    50	  200	        150	150	   20	1	  1	0	0	0	0	   0	0	0	#_SizeSel_P_1_JPLL_NW(2)          
 10.01	  100	         20	 20	   20	1	  3	0	0	0	0	   0	0	0	#_SizeSel_P_2_JPLL_NW(2)          
    50	  200	    142.278	150	   99	1	  3	0	0	0	0	 0.5	0	0	#_SizeSel_P_1_TWLL_NW(3)          
    -6	    4	  -0.316252	 -3	   99	1	  3	0	0	0	0	 0.5	0	0	#_SizeSel_P_2_TWLL_NW(3)          
    -1	    9	    6.97936	8.3	   99	1	  3	0	0	0	0	 0.5	0	0	#_SizeSel_P_3_TWLL_NW(3)          
    -1	    9	    5.26149	  4	   99	1	  3	0	0	0	0	 0.5	0	0	#_SizeSel_P_4_TWLL_NW(3)          
   -15	   -5	        -10	 -1	   99	1	 -3	0	0	0	0	 0.5	0	0	#_SizeSel_P_5_TWLL_NW(3)          
    -5	    9	   -1.57659	 -1	   99	1	  3	0	0	0	0	 0.5	0	0	#_SizeSel_P_6_TWLL_NW(3)          
    -1	  200	         -1	 -1	 0.01	1	 -2	0	0	0	0	   0	0	0	#_SizeSel_P_1_ALGI_NE(4)          
    -1	  200	         -1	 -1	 0.01	1	 -3	0	0	0	0	   0	0	0	#_SizeSel_P_2_ALGI_NE(4)          
    -1	  200	         -1	 -1	 0.01	1	 -2	0	0	0	0	   0	0	0	#_SizeSel_P_1_JPLL_NE(5)          
    -1	  200	         -1	 -1	 0.01	1	 -3	0	0	0	0	   0	0	0	#_SizeSel_P_2_JPLL_NE(5)          
    -1	  200	         -1	 -1	 0.01	1	 -2	0	0	0	0	   0	0	0	#_SizeSel_P_1_TWLL_NE(6)          
    -1	  200	         -1	 -1	 0.01	1	 -3	0	0	0	0	   0	0	0	#_SizeSel_P_2_TWLL_NE(6)          
    50	  200	    142.278	150	   99	1	  3	0	0	0	0	 0.5	0	0	#_SizeSel_P_1_TWFL_NE(7)          
    -6	    4	  -0.316252	 -3	   99	1	  3	0	0	0	0	 0.5	0	0	#_SizeSel_P_2_TWFL_NE(7)          
    -1	    9	    6.97936	8.3	   99	1	  3	0	0	0	0	 0.5	0	0	#_SizeSel_P_3_TWFL_NE(7)          
    -1	    9	    5.26149	  4	   99	1	  3	0	0	0	0	 0.5	0	0	#_SizeSel_P_4_TWFL_NE(7)          
   -15	   -5	        -10	 -1	   99	1	 -3	0	0	0	0	 0.5	0	0	#_SizeSel_P_5_TWFL_NE(7)          
    -5	    9	   -1.57659	 -1	   99	1	  3	0	0	0	0	 0.5	0	0	#_SizeSel_P_6_TWFL_NE(7)          
    50	  200	    142.278	150	   99	1	  3	0	0	0	0	 0.5	0	0	#_SizeSel_P_1_EUEL_SW(8)          
    -6	    4	  -0.316252	 -3	   99	1	  3	0	0	0	0	 0.5	0	0	#_SizeSel_P_2_EUEL_SW(8)          
    -1	    9	    6.97936	8.3	   99	1	  3	0	0	0	0	 0.5	0	0	#_SizeSel_P_3_EUEL_SW(8)          
    -1	    9	    5.26149	  4	   99	1	  3	0	0	0	0	 0.5	0	0	#_SizeSel_P_4_EUEL_SW(8)          
   -15	   -5	        -10	 -1	   99	1	 -3	0	0	0	0	 0.5	0	0	#_SizeSel_P_5_EUEL_SW(8)          
    -5	    9	   -1.57659	 -1	   99	1	  3	0	0	0	0	 0.5	0	0	#_SizeSel_P_6_EUEL_SW(8)          
    -1	  200	         -1	 -1	 0.01	1	 -2	0	0	0	0	   0	0	0	#_SizeSel_P_1_ISEL_SW(9)          
    -1	  200	         -1	 -1	 0.01	1	 -3	0	0	0	0	   0	0	0	#_SizeSel_P_2_ISEL_SW(9)          
    -1	  200	         -1	 -1	 0.01	1	 -2	0	0	0	0	   0	0	0	#_SizeSel_P_1_JPLL_SW(10)         
    -1	  200	         -1	 -1	 0.01	1	 -3	0	0	0	0	   0	0	0	#_SizeSel_P_2_JPLL_SW(10)         
    -1	  200	         -1	 -1	 0.01	1	 -2	0	0	0	0	   0	0	0	#_SizeSel_P_1_TWLL_SW(11)         
    -1	  200	         -1	 -1	 0.01	1	 -3	0	0	0	0	   0	0	0	#_SizeSel_P_2_TWLL_SW(11)         
    -1	  200	         -1	 -1	 0.01	1	 -2	0	0	0	0	   0	0	0	#_SizeSel_P_1_AUEL_SE(12)         
    -1	  200	         -1	 -1	 0.01	1	 -3	0	0	0	0	   0	0	0	#_SizeSel_P_2_AUEL_SE(12)         
    -1	  200	         -1	 -1	 0.01	1	 -2	0	0	0	0	   0	0	0	#_SizeSel_P_1_EUEL_SE(13)         
    -1	  200	         -1	 -1	 0.01	1	 -3	0	0	0	0	   0	0	0	#_SizeSel_P_2_EUEL_SE(13)         
    -1	  200	         -1	 -1	 0.01	1	 -2	0	0	0	0	   0	0	0	#_SizeSel_P_1_JPLL_SE(14)         
    -1	  200	         -1	 -1	 0.01	1	 -3	0	0	0	0	   0	0	0	#_SizeSel_P_2_JPLL_SE(14)         
    -1	  200	         -1	 -1	 0.01	1	 -2	0	0	0	0	   0	0	0	#_SizeSel_P_1_TWLL_SE(15)         
    -1	  200	         -1	 -1	 0.01	1	 -3	0	0	0	0	   0	0	0	#_SizeSel_P_2_TWLL_SE(15)         
    -1	  200	         -1	 -1	 0.01	1	 -2	0	0	0	0	   0	0	0	#_SizeSel_P_1_UJPLL_NW(16)        
    -1	  200	         -1	 -1	 0.01	1	 -3	0	0	0	0	   0	0	0	#_SizeSel_P_2_UJPLL_NW(16)        
    -1	  200	         -1	 -1	 0.01	1	 -2	0	0	0	0	   0	0	0	#_SizeSel_P_1_UJPLL_NE(17)        
    -1	  200	         -1	 -1	 0.01	1	 -3	0	0	0	0	   0	0	0	#_SizeSel_P_2_UJPLL_NE(17)        
    -1	  200	         -1	 -1	 0.01	1	 -2	0	0	0	0	   0	0	0	#_SizeSel_P_1_UJPLL_SW(18)        
    -1	  200	         -1	 -1	 0.01	1	 -3	0	0	0	0	   0	0	0	#_SizeSel_P_2_UJPLL_SW(18)        
    -1	  200	         -1	 -1	 0.01	1	 -2	0	0	0	0	   0	0	0	#_SizeSel_P_1_UJPLL_SE(19)        
    -1	  200	         -1	 -1	 0.01	1	 -3	0	0	0	0	   0	0	0	#_SizeSel_P_2_UJPLL_SE(19)        
    -1	  200	         -1	 -1	 0.01	1	 -2	0	0	0	0	   0	0	0	#_SizeSel_P_1_UTWLL_NW(20)        
    -1	  200	         -1	 -1	 0.01	1	 -3	0	0	0	0	   0	0	0	#_SizeSel_P_2_UTWLL_NW(20)        
    -1	  200	         -1	 -1	 0.01	1	 -2	0	0	0	0	   0	0	0	#_SizeSel_P_1_UTWLL_NE(21)        
    -1	  200	         -1	 -1	 0.01	1	 -3	0	0	0	0	   0	0	0	#_SizeSel_P_2_UTWLL_NE(21)        
    -1	  200	         -1	 -1	 0.01	1	 -2	0	0	0	0	   0	0	0	#_SizeSel_P_1_UTWLL_SW(22)        
    -1	  200	         -1	 -1	 0.01	1	 -3	0	0	0	0	   0	0	0	#_SizeSel_P_2_UTWLL_SW(22)        
    -1	  200	         -1	 -1	 0.01	1	 -2	0	0	0	0	   0	0	0	#_SizeSel_P_1_UTWLL_SE(23)        
    -1	  200	         -1	 -1	 0.01	1	 -3	0	0	0	0	   0	0	0	#_SizeSel_P_2_UTWLL_SE(23)        
    -1	  200	         -1	 -1	 0.01	1	 -2	0	0	0	0	   0	0	0	#_SizeSel_P_1_UIDN_NE(24)         
    -1	  200	         -1	 -1	 0.01	1	 -3	0	0	0	0	   0	0	0	#_SizeSel_P_2_UIDN_NE(24)         
    -1	  200	         -1	 -1	 0.01	1	 -2	0	0	0	0	   0	0	0	#_SizeSel_P_1_UZAF_SW(25)         
    -1	  200	         -1	 -1	 0.01	1	 -3	0	0	0	0	   0	0	0	#_SizeSel_P_2_UZAF_SW(25)         
    -1	  200	         -1	 -1	 0.01	1	 -2	0	0	0	0	   0	0	0	#_SizeSel_P_1_UPRT_SW(26)         
    -1	  200	         -1	 -1	 0.01	1	 -3	0	0	0	0	   0	0	0	#_SizeSel_P_2_UPRT_SW(26)         
    -1	  200	         -1	 -1	 0.01	1	 -2	0	0	0	0	   0	0	0	#_SizeSel_P_1_UREU_SW(27)         
    -1	  200	         -1	 -1	 0.01	1	 -3	0	0	0	0	   0	0	0	#_SizeSel_P_2_UREU_SW(27)         
    -1	  200	         -1	 -1	 0.01	1	 -2	0	0	0	0	   0	0	0	#_SizeSel_P_1_UESP_SW(28)         
    -1	  200	         -1	 -1	 0.01	1	 -3	0	0	0	0	   0	0	0	#_SizeSel_P_2_UESP_SW(28)         
#_AgeSelex
#_No age_selex_parm
#_no timevary selex parameters
#
0 #  use 2D_AR1 selectivity(0/1):  experimental feature
#_no 2D_AR1 selex offset used
# Tag loss and Tag reporting parameters go next
0 # TG_custom:  0=no read; 1=read if tags exist
#_Cond -6 6 1 1 2 0.01 -4 0 0 0 0 0 0 0  #_placeholder if no parameters
#
# Input variance adjustments factors: 
#_factor	fleet	value
    4	 1	0.1	#_Variance_adjustment_list1 
    4	 2	0.1	#_Variance_adjustment_list2 
    4	 3	0.1	#_Variance_adjustment_list3 
    4	 4	0.1	#_Variance_adjustment_list4 
    4	 5	0.1	#_Variance_adjustment_list5 
    4	 6	0.1	#_Variance_adjustment_list6 
    4	 7	0.1	#_Variance_adjustment_list7 
    4	 8	0.1	#_Variance_adjustment_list8 
    4	 9	0.1	#_Variance_adjustment_list9 
    4	10	0.1	#_Variance_adjustment_list10
    4	11	0.1	#_Variance_adjustment_list11
    4	12	0.1	#_Variance_adjustment_list12
    4	13	0.1	#_Variance_adjustment_list13
    4	14	0.1	#_Variance_adjustment_list14
    4	15	0.1	#_Variance_adjustment_list15
-9999	 0	  0	#_terminator                
#
4 #_maxlambdaphase
1 #_sd_offset; must be 1 if any growthCV, sigmaR, or survey extraSD is an estimated parameter
# read 28 changes to default Lambdas (default value is 1.0)
#_like_comp	fleet	phase	value	sizefreq_method
# xxx JP 1	16	1	    1	1	#_Surv_UJPLL_NW_Phz1                   
# xxx JP 1	17	1	    1	1	#_Surv_UJPLL_NE_Phz1                   
# xxx JP 1	18	1	    1	1	#_Surv_UJPLL_SW_Phz1                   
# xxx JP 1	19	1	    1	1	#_Surv_UJPLL_SE_Phz1  
# xxx altCPUE 1	16	1	    1	1	#_Surv_UJPLL_NW_Phz1                   
# xxx altCPUE 1	17	1	    1	1	#_Surv_UJPLL_NE_Phz1                   
# xxx altCPUE 1	18	1	    1	1	#_Surv_UJPLL_SW_Phz1                   
# xxx altCPUE 1	19	1	    1	1	#_Surv_UJPLL_SE_Phz1 
# xxx TW    1	16	1	0.001	1	#_Surv_UJPLL_NW_Phz1                   
# xxx TW    1	17	1	0.001	1	#_Surv_UJPLL_NE_Phz1                   
# xxx TW    1	18	1	0.001	1	#_Surv_UJPLL_SW_Phz1                   
# xxx TW    1	19	1	0.001	1	#_Surv_UJPLL_SE_Phz1                      
# xxx JP 1	20	1	0.001	1	#_Surv_UTWLL_NW_Phz1                   
# xxx JP 1	21	1	0.001	1	#_Surv_UTWLL_NE_Phz1                   
# xxx JP 1	22	1	0.001	1	#_Surv_UTWLL_SW_Phz1                   
# xxx JP 1	23	1	0.001	1	#_Surv_UTWLL_SE_Phz1  
# xxx altCPUE 1	20	1	0.001	1	#_Surv_UTWLL_NW_Phz1                   
# xxx altCPUE 1	21	1	0.001	1	#_Surv_UTWLL_NE_Phz1                   
# xxx altCPUE 1	22	1	0.001	1	#_Surv_UTWLL_SW_Phz1                   
# xxx altCPUE 1	23	1	0.001	1	#_Surv_UTWLL_SE_Phz1  
# xxx TW    1	20	1	1	1	#_Surv_UTWLL_NW_Phz1                   
# xxx TW    1	21	1	1	1	#_Surv_UTWLL_NE_Phz1                   
# xxx TW    1	22	1	1	1	#_Surv_UTWLL_SW_Phz1                   
# xxx TW    1	23	1	1	1	#_Surv_UTWLL_SE_Phz1                      
# xxx JP 1	24	1	0.001	1	#_Surv_UIDN_NE_Phz1                    
# xxx JP 1	25	1	0.001	1	#_Surv_UZAF_SW_Phz1                    
# xxx JP 1	26	1	0.001	1	#_Surv_UPRT_SW_Phz1                    
# xxx JP 1	27	1	0.001	1	#_Surv_UREU_SW_Phz1                    
# xxx JP 1	28	1	0.001	1	#_Surv_UESP_SW_Phz1   
# xxx TW 1	24	1	0.001	1	#_Surv_UIDN_NE_Phz1                    
# xxx TW 1	25	1	0.001	1	#_Surv_UZAF_SW_Phz1                    
# xxx TW 1	26	1	0.001	1	#_Surv_UPRT_SW_Phz1                    
# xxx TW 1	27	1	0.001	1	#_Surv_UREU_SW_Phz1                    
# xxx TW 1	28	1	0.001	1	#_Surv_UESP_SW_Phz1   
# xxx altCPUE    1	24	1	0.5	1	#_Surv_UIDN_NE_Phz1                    
# xxx altCPUE    1	25	1	0.1	1	#_Surv_UZAF_SW_Phz1                    
# xxx altCPUE    1	26	1	0.001	1	#_Surv_UPRT_SW_Phz1                    
# xxx altCPUE    1	27	1	0.5	1	#_Surv_UREU_SW_Phz1                    
# xxx altCPUE    1	28	1	0.001	1	#_Surv_UESP_SW_Phz1
    4	 1	1	    1	1	#_length_ALGI_NW_sizefreq_method_1_Phz1
    4	 2	1	    1	1	#_length_JPLL_NW_sizefreq_method_1_Phz1
    4	 3	1	    1	1	#_length_TWLL_NW_sizefreq_method_1_Phz1
    4	 4	1	    1	1	#_length_ALGI_NE_sizefreq_method_1_Phz1
    4	 5	1	    1	1	#_length_JPLL_NE_sizefreq_method_1_Phz1
    4	 6	1	    1	1	#_length_TWLL_NE_sizefreq_method_1_Phz1
    4	 7	1	    1	1	#_length_TWFL_NE_sizefreq_method_1_Phz1
    4	 8	1	    1	1	#_length_EUEL_SW_sizefreq_method_1_Phz1
    4	 9	1	    1	1	#_length_ISEL_SW_sizefreq_method_1_Phz1
    4	10	1	    1	1	#_length_JPLL_SW_sizefreq_method_1_Phz1
    4	11	1	    1	1	#_length_TWLL_SW_sizefreq_method_1_Phz1
    4	12	1	    1	1	#_length_AUEL_SE_sizefreq_method_1_Phz1
    4	13	1	    1	1	#_length_EUEL_SE_sizefreq_method_1_Phz1
    4	14	1	    1	1	#_length_JPLL_SE_sizefreq_method_1_Phz1
    4	15	1	    1	1	#_length_TWLL_SE_sizefreq_method_1_Phz1
-9999	 0	0	    0	0	#_terminator                           
#
0 # 0/1 read specs for more stddev reporting
#
999
