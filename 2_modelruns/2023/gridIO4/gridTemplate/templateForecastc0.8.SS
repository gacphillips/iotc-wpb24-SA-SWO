#V3.30.15.00-trans;_2020_03_26;_Stock_Synthesis_by_Richard_Methot_(NOAA)_using_ADMB_12.0
#Stock Synthesis (SS) is a work of the U.S. Government and is not subject to copyright protection in the United States.
#Foreign copyrights may apply. See copyright.txt for more information.
# for all year entries except rebuilder; enter either: actual year, -999 for styr, 0 for endyr, neg number for rel. endyr
1 # Benchmarks: 0=skip; 1=calc F_spr,F_btgt,F_msy; 2=calc F_spr,F0.1,F_msy 
2 # MSY: 1= set to F(SPR); 2=calc F(MSY); 3=set to F(Btgt) or F0.1; 4=set to F(endyr) 
0.4 # SPR target (e.g. 0.40)
0.4 # Biomass target (e.g. 0.40)
#_Bmark_years: beg_bio, end_bio, beg_selex, end_selex, beg_relF, end_relF, beg_recr_dist, end_recr_dist, beg_SRparm, end_SRparm (enter actual year, or values of 0 or -integer to be rel. endyr)
 2021 2021 2021 2021 2021 2021 1950 2021 1950 2021
2 #Bmark_relF_Basis: 1 = use year range; 2 = set relF same as forecast below
#
2 # Forecast: -1=none; 0=simple_1yr; 1=F(SPR); 2=F(MSY) 3=F(Btgt) or F0.1; 4=Ave F (uses first-last relF yrs); 5=input annual F scalar
# where none and simple require no input after this line; simple sets forecast F same as end year F
10 # N forecast years 
0.2 # Fmult (only used for Do_Forecast==5) such that apical_F(f)=Fmult*relF(f)
#_Fcast_years:  beg_selex, end_selex, beg_relF, end_relF, beg_mean recruits, end_recruits  (enter actual year, or values of 0 or -integer to be rel. endyr)
 2021 2021 0 0 -999 0
0 # Forecast selectivity (0=fcast selex is mean from year range; 1=fcast selectivity from annual time-vary parms)
0 # Control rule method (1: ramp does catch=f(SSB), buffer on F; 2: ramp does F=f(SSB), buffer on F; 3: ramp does catch=f(SSB), buffer on catch; 4: ramp does F=f(SSB), buffer on catch) 
0.4 # Control rule Biomass level for constant F (as frac of Bzero, e.g. 0.40); (Must be > the no F level below) 
0.1 # Control rule Biomass level for no F (as frac of Bzero, e.g. 0.10) 
0.75 # Buffer:  enter Control rule target as fraction of Flimit (e.g. 0.75), negative value invokes list of [year, scalar] with filling from year to YrMax 
3 #_N forecast loops (1=OFL only; 2=ABC; 3=get F from forecast ABC catch with allocations applied)
3 #_First forecast loop with stochastic recruitment
0 #_Forecast recruitment:  0= spawn_recr; 1=value*spawn_recr_fxn; 2=value*VirginRecr; 3=recent mean from yr range above (need to set phase to -1 in control to get constant recruitment in MCMC)
1 # value is ignored 
0 #_Forecast loop control #5 (reserved for future bells&whistles) 
2500  #FirstYear for caps and allocations (should be after years with fixed inputs) 
0 # stddev of log(realized catch/target catch) in forecast (set value>0.0 to cause active impl_error)
0 # Do West Coast gfish rebuilder output (0/1) 
1999 # Rebuilder:  first year catch could have been set to zero (Ydecl)(-1 to set to 1999)
2022 # Rebuilder:  year for current age structure (Yinit) (-1 to set to endyear+1)
1 # fleet relative F:  1=use first-last alloc year; 2=read seas, fleet, alloc list below
# Note that fleet allocation is used directly as average F if Do_Forecast=4 
2 # basis for fcast catch tuning and for fcast catch caps and allocation  (2=deadbio; 3=retainbio; 5=deadnum; 6=retainnum); NOTE: same units for all fleets
# Conditional input if relative F choice = 2
# enter list of:  season,  fleet, relF; if used, terminate with season=-9999
# 1 1 1
# -9999 0 0  # terminator for list of relF
# enter list of: fleet number, max annual catch for fleets with a max; terminate with fleet=-9999
-9999 -1
# enter list of area ID and max annual catch; terminate with area=-9999
-9999 -1
# enter list of fleet number and allocation group assignment, if any; terminate with fleet=-9999
-9999 -1
#_if N allocation groups >0, list year, allocation fraction for each group 
# list sequentially because read values fill to end of N forecast
# terminate with -9999 in year field 
# no allocation groups
2 # basis for input Fcast catch: -1=read basis with each obs; 2=dead catch; 3=retained catch; 99=input apical_F; NOTE: bio vs num based on fleet's catchunits
#enter list of Fcast catches or Fa; terminate with line having year=-9999
#_Yr Seas Fleet Catch(or_F)
2022	1	1	1827
2023	1	1	1827
2024	1	1	1827
2025	1	1	1827
2026	1	1	1827
2027	1	1	1827
2028	1	1	1827
2029	1	1	1827
2030	1	1	1827
2031	1	1	1827
2022	1	2	9
2023	1	2	9
2024	1	2	9
2025	1	2	9
2026	1	2	9
2027	1	2	9
2028	1	2	9
2029	1	2	9
2030	1	2	9
2031	1	2	9
2022	1	3	2307
2023	1	3	2307
2024	1	3	2307
2025	1	3	2307
2026	1	3	2307
2027	1	3	2307
2028	1	3	2307
2029	1	3	2307
2030	1	3	2307
2031	1	3	2307
2022	1	4	1325
2023	1	4	1325
2024	1	4	1325
2025	1	4	1325
2026	1	4	1325
2027	1	4	1325
2028	1	4	1325
2029	1	4	1325
2030	1	4	1325
2031	1	4	1325
2022	1	5	268
2023	1	5	268
2024	1	5	268
2025	1	5	268
2026	1	5	268
2027	1	5	268
2028	1	5	268
2029	1	5	268
2030	1	5	268
2031	1	5	268
2022	1	6	323
2023	1	6	323
2024	1	6	323
2025	1	6	323
2026	1	6	323
2027	1	6	323
2028	1	6	323
2029	1	6	323
2030	1	6	323
2031	1	6	323
2022	1	7	9387
2023	1	7	9387
2024	1	7	9387
2025	1	7	9387
2026	1	7	9387
2027	1	7	9387
2028	1	7	9387
2029	1	7	9387
2030	1	7	9387
2031	1	7	9387
2022	1	8	1992
2023	1	8	1992
2024	1	8	1992
2025	1	8	1992
2026	1	8	1992
2027	1	8	1992
2028	1	8	1992
2029	1	8	1992
2030	1	8	1992
2031	1	8	1992
2022	1	9	651
2023	1	9	651
2024	1	9	651
2025	1	9	651
2026	1	9	651
2027	1	9	651
2028	1	9	651
2029	1	9	651
2030	1	9	651
2031	1	9	651
2022	1	10	44
2023	1	10	44
2024	1	10	44
2025	1	10	44
2026	1	10	44
2027	1	10	44
2028	1	10	44
2029	1	10	44
2030	1	10	44
2031	1	10	44
2022	1	11	492
2023	1	11	492
2024	1	11	492
2025	1	11	492
2026	1	11	492
2027	1	11	492
2028	1	11	492
2029	1	11	492
2030	1	11	492
2031	1	11	492
2022	1	12	104
2023	1	12	104
2024	1	12	104
2025	1	12	104
2026	1	12	104
2027	1	12	104
2028	1	12	104
2029	1	12	104
2030	1	12	104
2031	1	12	104
2022	1	13	295
2023	1	13	295
2024	1	13	295
2025	1	13	295
2026	1	13	295
2027	1	13	295
2028	1	13	295
2029	1	13	295
2030	1	13	295
2031	1	13	295
2022	1	14	86
2023	1	14	86
2024	1	14	86
2025	1	14	86
2026	1	14	86
2027	1	14	86
2028	1	14	86
2029	1	14	86
2030	1	14	86
2031	1	14	86
2022	1	15	279
2023	1	15	279
2024	1	15	279
2025	1	15	279
2026	1	15	279
2027	1	15	279
2028	1	15	279
2029	1	15	279
2030	1	15	279
2031	1	15	279
-9999 1 1 0 
#
999 # verify end of input 
