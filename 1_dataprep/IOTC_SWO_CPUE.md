---
title: " HCA analysis of Indian Ocean CPUE - 2026 Swordfish Tuna Assessment "
author: Genevieve Phillips (genevieve.phillips@fao.org)
date: "11 November, 2026"
output:
  word_document:
    toc: no
  pdf_document:
    fig_caption: yes
    number_sections: yes
    toc: yes
  html_document:
    number_sections: yes
    toc: yes
html_document:
  toc: yes
---








# Introduction
This document presents a comparison of the catch per unit of effort (CPUE) series submitted for consideration in the 2025 IOTC swordfish (*Xiphias gladius*) assessment in the Indian Ocean. The goal of this analysis is to investigate any relative differences between model inputs so that data conflict is not introduced into the model via indices of abundance (CPUE series) that imply different, conflicting states of nature (i.e. do alternative indices of abundance indicate that the stock is increasing or the stock is decreasing).  

# Data and methods 
## Catch and effort data 

#TODO


## Methods
The CPUE time series for shortfin mako shark (Prionace glauca) in the South Atlantic are plotted in   along with a lowess smoother fitted to CPUE each year using a general additive model (GAM) to compare trends for the submitted CPUEs. Residuals from the smoother fits to CPUE are compared to identify deviations from the overall trends. This allows conflicts between indices (e.g. highlighted by patterns in the residuals) to be identified.

Correlations between indices are evaluated in via pairwise scatter plots for CPUE indices where they overlap. The lower triangle shows the pairwise scatter plots between indices with a regression line, the upper triangle provides the correlation coefficients, and the diagonal provides the range of observations. along with a linear model fit between then. Note that the early JPN series (JPN_TB1) was not included in this analysis due to not overlapping the JPN TB2 Series. 

A hierarchical cluster analysis evaluated for the indices using a set of dissimilarities. This analysis can identify similar and diss-similar trends. If indices represent the same stock components, then it is reasonable to expect them to be correlated. If indices are not correlated or are negatively correlated, i.e. they show conflicting trends, then this may result in poor fits to the data and bias in the parameter estimates obtained within a stock assessment model. Therefore, the correlations can be used to select groups of indices that represent a common hypothesis about the evolution of the stock (Rice 2022, ICCAT 2017). 

Cross-correlations for the region are plotted with a lag from -10 to 10, (i.e., the correlations between series when they are lagged by -10 to 10 years) which can help determine whether there is a relationship between two time series. This can help identify whether there is relationship between two time-dependent variables at different time lags. This approach can be particularly useful when comparing indices of abundance for bycatch species derived from fleets targeting diff species (i.e. tropical vs temperate tunas), or aggregated at different levels (trips vs sets). If all CPUE series are thought to represent the overall dynamics of the stock, careful examination of how one index may lead or lag another, temporal shifts or delays in population dynamics may become apparent.  migration patterns, or the effects of environmental drivers. For example, a strong correlation at a positive lag might indicate that changes in one index precedes changes in another, possibly suggesting sampling of separate part of the stock (e.g. juvenile vs adult). Conversely, correlations at negative lags may reflect delayed responses in one component of the population to changes in another. Overall, lagged cross-correlation helps clarify potential lead-lag relationships between datasets, offering insights into the relative similarity of the CPUE series. Careful interpretation of the results is suggested given the bycatch nature of this stock and the changes in target species, reporting and fleet dynamics. The diagonals show the autocorrelations of an index lagged against itself. This can help identify whether a relationship exists between the CPUE series and earlier years, which would be identified by a large correlation, with the correlations on both sides that quickly become small. The JPN_TB2 index was included in the analysis by repeating the previous years CPUE for 2000 and 2022 due to missing data in those years which confounded the lagged analysis.

All analyses were conducted using R and FLR, including the diags package which provides a set of common methods for reading these data into R, plotting and summarizing them (e.g., see: http://www.flr-project.org/).

#	Results and conclusions

The overall trend for the indices is an initial period that trended towards increasing throughout the 1980s and early 1990s, when the data available from Brazil-Uruguay, Spain and Japan. The 2000-2010 period was characterized by an increasing trend from South Africa, Spain and Japan, and somewhat of a decrease by Brazil-Uruguay, variability exists within all of the series. 

Overall Figures 1 and 2 indicate that these series also follow the overall trend, and may provide evidence of a more gradually increasing trend in the stock trajectory until approximately 2015, followed by a slight decrease in recent years. In the Chinese Taipei (CTP_LL) time-series, there is a series of downward trending residuals starting in about 2013 indicating that this pattern does not follow the overall trend. Similarly, the Japanese CPUE (JPN_TB2) has an overall negative trend, but this is complicated by missing years due to the COVID pandemic and the dominance of a single large value at the beginning of the series. Differences in the size, sign and trend in the residuals be evidence of a more rapidly decreasing trend in the stock trajectory in recent years than the overall trend. However, in the cases of shortfin mako shark – which could be considered a bycatch species in the tuna fishery, this may also indicate a shift in targeting preferences for the main tuna species.

Correlations between indices are evaluated in Figure 3. The lower triangle shows the pairwise scatter plots between indices with a regression line, the upper triangle provides the correlation coefficients, and the diagonal provides the range of observations. The strongest correlation is between BRAURY_LL and CTP_LL (Corr: -0.827), suggesting a strong inverse relationship. This might indicate that these two fleets are sampling different components of the stock, possibly due to targeting different tuna species, or that the or are influenced by contrasting environmental or operational factors. A strong positive correlation is also evident between SPN_LL and ZAF_LL (Corr: 0.701 ), which may imply similar spatiotemporal dynamics or operational practices, possibly sampling overlapping subpopulations. Several pairings (e.g., BRAURY_LL vs JPN_TB2, SPN_LL vs CTP_LL) show near-zero correlations, suggesting these indices may be relatively independent or reflect uncorrelated processes. This could be due to differences in gear type, target species, region, or aggregation scale.

The hierarchical cluster analysis (Figure 4) identified two groupings of time-series. The first group includes Japan, Brazil and Spain. This group is characterized by time-series which are highly correlated with each other, are relatively long and which have the same increasing trend until 2015, followed by a stable, or slightly decreasing trend. The second group includes only Chinese Taipei.  This CPUE is characterized by a shorter time-series that decreases more rapidly than the general trend. A single influential point may cause a strong spurious correlation, so it is important to look at the plots as well as the correlation coefficients. Also, a strong correlation could be found by chance if two series only overlap for a few years. The Japanese, Spanish and Brazilian CPUEs are all calculated to be positively correlated.

Lagged cross-correlations are plotted in Figure 5 analysis revealed several notable patterns among the CPUE indices, suggesting differing degrees of temporal alignment and operational linkages. The CPUE series from the CTP_LL fleet exhibited particularly strong and well-defined correlations with multiple other indices. Most notably, it showed a strong negative correlation with BRAURY_LL at lag 0, reinforcing the inverse relationship previously seen in the pairwise correlation matrix. This result may indicate that these two fleets are sampling distinct components of the population or operating in regions with asynchronous abundance signals. 

Additionally, CTP_LL exhibited positive correlations with SPN_LL and ZAF_LL at positive lags (approximately +2 to +4 years), suggesting that increases in the CTP_LL index may precede increases in the other two, potentially reflecting migratory movement or ontogenetic progression (e.g., juveniles targeted by CTP_LL later appearing in the regions of SPN_LL and ZAF_LL).

In contrast, BRAURY_LL showed relatively weak and inconsistent correlations with other indices aside from its strong inverse alignment with CTP_LL, indicating a more distinct temporal signal. The SPN_LL and ZAF_LL indices were strongly positively correlated, particularly at lag 0 and small positive lags, suggesting these fleets may be sampling similar or overlapping components of the stock or operating in similar regions or seasons. The JPN_TB1 index generally exhibited moderate correlations with the other series, with broader and flatter correlation peaks, which may reflect a more diffuse signal due to differences in spatial coverage or aggregation level. Taken together, these patterns indicate alternative fleet groupings (SPN_LL, ZAF_LL, and to an extent JPN_TB1) with similar trends and timing this group is weakly correlated with BRAURY_LL. The analysis also highlights the fact that JPN_TB CTP_LL and BRAURY_LL appear to capture contrasting dynamics of the stock.


# References 

International Commission for the Conservation of Atlantic Tunas (ICCAT). 2025. Report of the 2025 ICCAT Shortfin Mako Data Preparatory Meeting (Malaga, Spain March 10-14, 2025).

Kell, L. T., I. Mosqueira, P. Grosjean, J-M. Fromentin, D. Garcia, R. Hillary, E. Jardim, S. Mardle, M. A. Pastoors, J. J. Poos, F. Scott, R. D. Scott. 2007. FLR: an open-source framework for the evaluation and development of management strategies. ICES J Mar Sci, 64 (4): 640-646. doi: 10.1093/icesjms/fsm012.

Semba & Kai 2024. - Update of standardized CPUE of shortfin mako (Isurus oxyrinchus) caught by Japanese tuna longline fishery in the Atlantic Ocean through 2023. SCRS/2025/030. Collect. Vol. Sci. Pap. ICCAT, xx (x): xxx-xxx.  

Kuo et al. 2025. Updated size, standardized CPUE and catch estimate of the shortfin mako shark caught by the Chinese Taipei longline fishery in the Atlantic Ocean. SCRS/2025/031. Collect. Vol. Sci. Pap. ICCAT, xx (x): xxx-xxx. 

Yemane et al. 2025. Standardised CPUE indices of abundance for pelagic sharks, mako shark (Isurus oxyrinchus) and shortfin mako shark (Prionace glauca), off South Africa SCRS/2025/036. Collect. Vol. Sci. Pap. ICCAT, xx (x): xxx-xxx. 

Cardoso et al. 2025. Catch-per-unit-effort standardization for shortfin mako (Isurus oxyrinchus) in the southwestern Atlantic based on Brazilian and Uruguayan longline fishery data (1978–2022) – SCRS/2025/038. Collect. Vol. Sci. Pap. ICCAT, xx (x): xxx-xxx.

Ramos-Cartelle et al. 2025. Standardized catch rates of the Atlantic stocks of shortfin mako (Isurus oxyrinchus) inferred from Spanish surface longline fishery targeting swordfish during the 1990-2023 period. SCRS/2025/026. Collect. Vol. Sci. Pap. ICCAT, xx (x): xxx-xxx.

Rice, J. 2022. Stock assessment of albacore tuna (Thunnus alalunga) in the Indian Ocean using Stock Synthesis. IOTC-2022-WPTmT_8 (Virtual meeting July-11-22 2022).

Tsai, W. P. and Liu, K. M. 2017. Standardized catch rates of the shortfin mako (Isurus oxyrinchus) caught by the Chinese Taipei longline fishery in the Atlantic Ocean. Collect. Vol. Sci. Pap. ICCAT, 74(4): 1710-1729


---
\newline
---


<img src="C:/Users/gphillips/OneDrive - Food and Agriculture Organization/Documents/Assessments/2026/SWO/SS3/cpue_comp/plots/plot-1.png" alt="" width="768" />
**Figure 1.** South Atlantic time series of  CPUE indices; Points are the standardized values, continuous black lines are a lowess smoother showing the average trend by area (i.e. fitted to year for each area with series as a factor). X-axis is time, Y-axis are the scaled indices.

<img src="C:/Users/gphillips/OneDrive - Food and Agriculture Organization/Documents/Assessments/2026/SWO/SS3/cpue_comp/plots/plot2-1.png" alt="" width="768" />
**Figure 2.** Time series of residuals from the smooth fit to CPUE indices. X-axis is time, Y-axis are the scaled indices.

<img src="C:/Users/gphillips/OneDrive - Food and Agriculture Organization/Documents/Assessments/2026/SWO/SS3/cpue_comp/plots/plot-pairs-n-1.png" alt="" width="768" />
**Figure 3.** Pairwise scatter plots for CPUE indices. X- and Y-axis are scaled indices.

<img src="C:/Users/gphillips/OneDrive - Food and Agriculture Organization/Documents/Assessments/2026/SWO/SS3/cpue_comp/plots/plot-cor-n-1.png" alt="" width="768" />

```
NULL
```
**Figure 4.** Correlation matrix for CPUE indices; blue indicates positive and red negative correlations, the order of the indices and the rectangular boxes are chosen based on a hierarchical cluster analysis using a set of dissimilarities.


```
   quant year   unit season   area iter  ne_idn
1    all 2004 unique    all unique    1  0.0171
2    all 2005 unique    all unique    1  0.2266
3    all 2006 unique    all unique    1 -0.2762
4    all 2007 unique    all unique    1 -0.9047
5    all 2008 unique    all unique    1  0.6456
6    all 2009 unique    all unique    1 -0.9885
7    all 2010 unique    all unique    1 -0.0248
8    all 2011 unique    all unique    1  0.1009
9    all 2012 unique    all unique    1 -0.4438
10   all 2013 unique    all unique    1 -0.6952
11   all 2014 unique    all unique    1 -1.7427
12   all 2015 unique    all unique    1 -0.8628
13   all 2016 unique    all unique    1 -0.8628
14   all 2017 unique    all unique    1  0.5199
15   all 2018 unique    all unique    1 -0.6952
16   all 2019 unique    all unique    1 -0.5276
17   all 2020 unique    all unique    1 -0.4438
18   all 2021 unique    all unique    1  0.2685
19   all 2022 unique    all unique    1  1.5256
20   all 2023 unique    all unique    1  1.8608
21   all 2024 unique    all unique    1  0.9809
22   all 2025 unique    all unique    1  2.3217
   ne_idn.1
1    0.0171
2    0.2266
3   -0.2762
4   -0.9047
5    0.6456
6   -0.9885
7   -0.0248
8    0.1009
9   -0.4438
10  -0.6952
11  -1.7427
12  -0.8628
13  -0.8628
14   0.5199
15  -0.6952
16  -0.5276
17  -0.4438
18   0.2685
19   1.5256
20   1.8608
21   0.9809
22   2.3217
   quant year   unit season   area iter  ne_jap
3    all 2006 unique    all unique    1 -0.3216
4    all 2007 unique    all unique    1 -1.4675
5    all 2008 unique    all unique    1 -1.7240
6    all 2009 unique    all unique    1 -0.0799
7    all 2010 unique    all unique    1 -0.8613
8    all 2011 unique    all unique    1 -2.1918
9    all 2012 unique    all unique    1  0.2927
10   all 2013 unique    all unique    1 -0.1304
11   all 2014 unique    all unique    1  1.4072
12   all 2015 unique    all unique    1  0.6988
13   all 2016 unique    all unique    1  0.5559
14   all 2017 unique    all unique    1  1.2902
15   all 2018 unique    all unique    1  0.4971
16   all 2019 unique    all unique    1  0.4408
17   all 2020 unique    all unique    1  0.0310
18   all 2021 unique    all unique    1 -0.3542
19   all 2022 unique    all unique    1  0.2496
20   all 2023 unique    all unique    1  1.4052
21   all 2024 unique    all unique    1  0.2622
    ne_idn
3  -0.2762
4  -0.9047
5   0.6456
6  -0.9885
7  -0.0248
8   0.1009
9  -0.4438
10 -0.6952
11 -1.7427
12 -0.8628
13 -0.8628
14  0.5199
15 -0.6952
16 -0.5276
17 -0.4438
18  0.2685
19  1.5256
20  1.8608
21  0.9809
   quant year   unit season   area iter ne_twn
4    all 2004 unique    all unique    1  0.690
5    all 2005 unique    all unique    1 -0.888
6    all 2006 unique    all unique    1 -1.492
7    all 2007 unique    all unique    1 -1.180
8    all 2008 unique    all unique    1 -0.470
9    all 2009 unique    all unique    1  0.266
10   all 2010 unique    all unique    1  0.890
11   all 2011 unique    all unique    1  0.569
12   all 2012 unique    all unique    1  0.786
13   all 2013 unique    all unique    1 -0.899
14   all 2014 unique    all unique    1 -1.730
15   all 2015 unique    all unique    1 -0.326
16   all 2016 unique    all unique    1  0.707
17   all 2017 unique    all unique    1  0.199
18   all 2018 unique    all unique    1 -0.521
19   all 2019 unique    all unique    1 -0.755
20   all 2020 unique    all unique    1 -1.610
21   all 2021 unique    all unique    1 -0.487
22   all 2022 unique    all unique    1  0.759
23   all 2023 unique    all unique    1  1.651
24   all 2024 unique    all unique    1  1.180
    ne_idn
4   0.0171
5   0.2266
6  -0.2762
7  -0.9047
8   0.6456
9  -0.9885
10 -0.0248
11  0.1009
12 -0.4438
13 -0.6952
14 -1.7427
15 -0.8628
16 -0.8628
17  0.5199
18 -0.6952
19 -0.5276
20 -0.4438
21  0.2685
22  1.5256
23  1.8608
24  0.9809
   quant year   unit season   area iter  nw_jap
2    all 2005 unique    all unique    1 -0.3577
3    all 2006 unique    all unique    1 -0.2235
4    all 2007 unique    all unique    1  1.4150
5    all 2008 unique    all unique    1  1.0867
6    all 2009 unique    all unique    1  1.3172
7    all 2010 unique    all unique    1 -1.1901
8    all 2011 unique    all unique    1 -1.6850
9    all 2012 unique    all unique    1 -0.1396
10   all 2013 unique    all unique    1 -0.9855
11   all 2014 unique    all unique    1  0.0741
12   all 2015 unique    all unique    1  0.7156
13   all 2016 unique    all unique    1 -0.3774
14   all 2017 unique    all unique    1 -0.7581
15   all 2018 unique    all unique    1  1.3277
16   all 2019 unique    all unique    1  1.6444
17   all 2020 unique    all unique    1  0.2300
18   all 2021 unique    all unique    1 -0.5614
19   all 2022 unique    all unique    1 -1.2212
20   all 2023 unique    all unique    1 -0.3113
    ne_idn
2   0.2266
3  -0.2762
4  -0.9047
5   0.6456
6  -0.9885
7  -0.0248
8   0.1009
9  -0.4438
10 -0.6952
11 -1.7427
12 -0.8628
13 -0.8628
14  0.5199
15 -0.6952
16 -0.5276
17 -0.4438
18  0.2685
19  1.5256
20  1.8608
   quant year   unit season   area iter   nw_twn
2    all 2005 unique    all unique    1  0.75802
3    all 2006 unique    all unique    1  3.46401
4    all 2007 unique    all unique    1  0.07256
5    all 2008 unique    all unique    1 -0.00501
6    all 2009 unique    all unique    1 -0.65830
7    all 2010 unique    all unique    1  0.18718
8    all 2011 unique    all unique    1 -0.28943
9    all 2012 unique    all unique    1 -0.48094
10   all 2013 unique    all unique    1 -0.74962
11   all 2014 unique    all unique    1 -1.25426
12   all 2015 unique    all unique    1 -1.19934
13   all 2016 unique    all unique    1 -0.67881
14   all 2017 unique    all unique    1 -0.30550
15   all 2018 unique    all unique    1 -0.08591
16   all 2019 unique    all unique    1  0.39915
17   all 2020 unique    all unique    1  0.11121
18   all 2021 unique    all unique    1 -0.08654
19   all 2022 unique    all unique    1  0.37017
20   all 2023 unique    all unique    1  0.43136
    ne_idn
2   0.2266
3  -0.2762
4  -0.9047
5   0.6456
6  -0.9885
7  -0.0248
8   0.1009
9  -0.4438
10 -0.6952
11 -1.7427
12 -0.8628
13 -0.8628
14  0.5199
15 -0.6952
16 -0.5276
17 -0.4438
18  0.2685
19  1.5256
20  1.8608
   quant year   unit season   area iter se_jap
11   all 2004 unique    all unique    1 -1.009
12   all 2005 unique    all unique    1 -0.810
13   all 2006 unique    all unique    1 -0.533
14   all 2007 unique    all unique    1 -1.153
15   all 2008 unique    all unique    1 -0.694
16   all 2009 unique    all unique    1  0.358
17   all 2010 unique    all unique    1  0.189
18   all 2011 unique    all unique    1  0.282
19   all 2012 unique    all unique    1 -0.196
20   all 2013 unique    all unique    1 -0.480
21   all 2014 unique    all unique    1 -0.798
22   all 2015 unique    all unique    1 -0.548
23   all 2016 unique    all unique    1  0.616
24   all 2017 unique    all unique    1  0.777
25   all 2018 unique    all unique    1  0.370
26   all 2019 unique    all unique    1  0.480
27   all 2020 unique    all unique    1  0.216
28   all 2021 unique    all unique    1 -0.384
29   all 2022 unique    all unique    1  0.405
30   all 2023 unique    all unique    1  0.764
31   all 2024 unique    all unique    1  1.222
    ne_idn
11  0.0171
12  0.2266
13 -0.2762
14 -0.9047
15  0.6456
16 -0.9885
17 -0.0248
18  0.1009
19 -0.4438
20 -0.6952
21 -1.7427
22 -0.8628
23 -0.8628
24  0.5199
25 -0.6952
26 -0.5276
27 -0.4438
28  0.2685
29  1.5256
30  1.8608
31  0.9809
   quant year   unit season   area iter  se_twn
11   all 2004 unique    all unique    1  0.3130
12   all 2005 unique    all unique    1 -1.1521
13   all 2006 unique    all unique    1 -0.1705
14   all 2007 unique    all unique    1  0.5810
15   all 2008 unique    all unique    1 -0.0990
16   all 2009 unique    all unique    1 -0.6588
17   all 2010 unique    all unique    1 -0.2970
18   all 2011 unique    all unique    1  0.3387
19   all 2012 unique    all unique    1 -0.3204
20   all 2013 unique    all unique    1  0.2119
21   all 2014 unique    all unique    1  0.5040
22   all 2015 unique    all unique    1  0.0653
23   all 2016 unique    all unique    1 -1.3741
24   all 2017 unique    all unique    1 -1.5295
25   all 2018 unique    all unique    1 -1.4175
26   all 2019 unique    all unique    1 -1.6166
27   all 2020 unique    all unique    1 -0.2857
28   all 2021 unique    all unique    1 -1.1585
29   all 2022 unique    all unique    1 -1.0361
30   all 2023 unique    all unique    1 -0.2749
31   all 2024 unique    all unique    1 -0.7763
    ne_idn
11  0.0171
12  0.2266
13 -0.2762
14 -0.9047
15  0.6456
16 -0.9885
17 -0.0248
18  0.1009
19 -0.4438
20 -0.6952
21 -1.7427
22 -0.8628
23 -0.8628
24  0.5199
25 -0.6952
26 -0.5276
27 -0.4438
28  0.2685
29  1.5256
30  1.8608
31  0.9809
   quant year   unit season   area iter sw_eu_esp
2    all 2005 unique    all unique    1   -1.1832
3    all 2006 unique    all unique    1   -1.7146
4    all 2007 unique    all unique    1   -0.6989
5    all 2008 unique    all unique    1   -0.2509
6    all 2009 unique    all unique    1    1.0984
7    all 2010 unique    all unique    1   -0.4607
8    all 2011 unique    all unique    1   -0.8324
9    all 2012 unique    all unique    1    0.6362
10   all 2013 unique    all unique    1   -0.0563
11   all 2014 unique    all unique    1    0.1610
12   all 2015 unique    all unique    1    1.3451
13   all 2016 unique    all unique    1    0.3144
14   all 2017 unique    all unique    1   -1.1362
15   all 2018 unique    all unique    1   -0.6142
16   all 2019 unique    all unique    1    1.7311
17   all 2020 unique    all unique    1    1.5787
18   all 2021 unique    all unique    1   -0.0441
19   all 2022 unique    all unique    1   -0.7992
20   all 2023 unique    all unique    1    0.9257
    ne_idn
2   0.2266
3  -0.2762
4  -0.9047
5   0.6456
6  -0.9885
7  -0.0248
8   0.1009
9  -0.4438
10 -0.6952
11 -1.7427
12 -0.8628
13 -0.8628
14  0.5199
15 -0.6952
16 -0.5276
17 -0.4438
18  0.2685
19  1.5256
20  1.8608
   quant year   unit season   area iter sw_eu_prt
5    all 2004 unique    all unique    1   -0.3730
6    all 2005 unique    all unique    1   -1.8022
7    all 2006 unique    all unique    1    0.0777
8    all 2007 unique    all unique    1    0.4965
9    all 2008 unique    all unique    1    2.0445
10   all 2009 unique    all unique    1   -1.2155
11   all 2010 unique    all unique    1   -0.6528
12   all 2011 unique    all unique    1   -0.1259
13   all 2012 unique    all unique    1   -0.4376
14   all 2013 unique    all unique    1   -0.5602
15   all 2014 unique    all unique    1   -1.3969
16   all 2015 unique    all unique    1    0.0420
17   all 2016 unique    all unique    1   -0.6606
18   all 2017 unique    all unique    1   -0.3904
19   all 2018 unique    all unique    1   -0.6615
20   all 2019 unique    all unique    1   -0.7436
21   all 2020 unique    all unique    1   -0.8468
22   all 2021 unique    all unique    1   -0.6191
23   all 2022 unique    all unique    1    0.9135
24   all 2023 unique    all unique    1    1.4027
25   all 2024 unique    all unique    1    1.5012
    ne_idn
5   0.0171
6   0.2266
7  -0.2762
8  -0.9047
9   0.6456
10 -0.9885
11 -0.0248
12  0.1009
13 -0.4438
14 -0.6952
15 -1.7427
16 -0.8628
17 -0.8628
18  0.5199
19 -0.6952
20 -0.5276
21 -0.4438
22  0.2685
23  1.5256
24  1.8608
25  0.9809
   quant year   unit season   area iter sw_eu_reu
2    all 2005 unique    all unique    1   -0.7679
3    all 2006 unique    all unique    1   -0.5150
4    all 2007 unique    all unique    1   -0.7406
5    all 2008 unique    all unique    1   -1.2145
6    all 2009 unique    all unique    1   -0.7588
7    all 2010 unique    all unique    1   -0.6244
8    all 2011 unique    all unique    1   -0.2097
9    all 2012 unique    all unique    1   -0.8818
10   all 2013 unique    all unique    1   -0.6791
11   all 2014 unique    all unique    1   -0.2576
12   all 2015 unique    all unique    1   -0.4376
13   all 2016 unique    all unique    1   -0.3054
14   all 2017 unique    all unique    1   -0.6517
15   all 2018 unique    all unique    1   -0.4900
16   all 2019 unique    all unique    1   -0.0912
17   all 2020 unique    all unique    1    0.5125
18   all 2021 unique    all unique    1    1.3236
19   all 2022 unique    all unique    1    1.2279
20   all 2023 unique    all unique    1    1.7451
21   all 2024 unique    all unique    1    1.9023
22   all 2025 unique    all unique    1    1.9137
    ne_idn
2   0.2266
3  -0.2762
4  -0.9047
5   0.6456
6  -0.9885
7  -0.0248
8   0.1009
9  -0.4438
10 -0.6952
11 -1.7427
12 -0.8628
13 -0.8628
14  0.5199
15 -0.6952
16 -0.5276
17 -0.4438
18  0.2685
19  1.5256
20  1.8608
21  0.9809
22  2.3217
   quant year   unit season   area iter sw_jap
11   all 2004 unique    all unique    1 -1.430
12   all 2005 unique    all unique    1 -1.035
13   all 2006 unique    all unique    1 -1.453
14   all 2007 unique    all unique    1 -0.846
15   all 2008 unique    all unique    1 -1.030
16   all 2009 unique    all unique    1 -0.946
17   all 2010 unique    all unique    1 -0.942
18   all 2011 unique    all unique    1 -1.089
19   all 2012 unique    all unique    1 -1.072
20   all 2013 unique    all unique    1 -0.593
21   all 2014 unique    all unique    1  0.372
22   all 2015 unique    all unique    1  0.509
23   all 2016 unique    all unique    1  1.928
24   all 2017 unique    all unique    1  0.457
25   all 2018 unique    all unique    1  0.625
26   all 2019 unique    all unique    1  0.913
27   all 2020 unique    all unique    1  1.555
28   all 2021 unique    all unique    1  1.079
29   all 2022 unique    all unique    1  0.994
30   all 2023 unique    all unique    1  0.597
31   all 2024 unique    all unique    1  1.339
    ne_idn
11  0.0171
12  0.2266
13 -0.2762
14 -0.9047
15  0.6456
16 -0.9885
17 -0.0248
18  0.1009
19 -0.4438
20 -0.6952
21 -1.7427
22 -0.8628
23 -0.8628
24  0.5199
25 -0.6952
26 -0.5276
27 -0.4438
28  0.2685
29  1.5256
30  1.8608
31  0.9809
   quant year   unit season   area iter sw_twn
2    all 2005 unique    all unique    1 -1.554
3    all 2006 unique    all unique    1 -0.479
4    all 2007 unique    all unique    1 -0.731
5    all 2008 unique    all unique    1  0.554
6    all 2009 unique    all unique    1  0.331
7    all 2010 unique    all unique    1  0.186
8    all 2011 unique    all unique    1  0.522
9    all 2012 unique    all unique    1 -0.253
10   all 2013 unique    all unique    1 -0.444
11   all 2014 unique    all unique    1 -0.194
12   all 2015 unique    all unique    1 -1.247
13   all 2016 unique    all unique    1 -0.842
14   all 2017 unique    all unique    1 -1.332
15   all 2018 unique    all unique    1 -0.930
16   all 2019 unique    all unique    1  0.745
17   all 2020 unique    all unique    1  1.607
18   all 2021 unique    all unique    1  1.503
19   all 2022 unique    all unique    1  0.943
20   all 2023 unique    all unique    1  1.616
    ne_idn
2   0.2266
3  -0.2762
4  -0.9047
5   0.6456
6  -0.9885
7  -0.0248
8   0.1009
9  -0.4438
10 -0.6952
11 -1.7427
12 -0.8628
13 -0.8628
14  0.5199
15 -0.6952
16 -0.5276
17 -0.4438
18  0.2685
19  1.5256
20  1.8608
   quant year   unit season   area iter  sw_zaf
11   all 2004 unique    all unique    1 -1.0768
12   all 2005 unique    all unique    1 -1.1221
13   all 2006 unique    all unique    1 -1.3236
14   all 2007 unique    all unique    1 -0.7660
15   all 2008 unique    all unique    1 -1.0195
16   all 2009 unique    all unique    1 -0.6750
17   all 2010 unique    all unique    1 -0.1069
18   all 2011 unique    all unique    1 -0.0435
19   all 2012 unique    all unique    1  0.0173
20   all 2013 unique    all unique    1 -1.0648
21   all 2014 unique    all unique    1 -1.2983
22   all 2015 unique    all unique    1  0.7031
23   all 2016 unique    all unique    1  0.8880
24   all 2017 unique    all unique    1  1.6972
25   all 2018 unique    all unique    1 -0.3508
26   all 2019 unique    all unique    1 -0.2486
27   all 2020 unique    all unique    1 -0.5227
28   all 2021 unique    all unique    1 -0.2518
29   all 2022 unique    all unique    1  0.3599
30   all 2023 unique    all unique    1 -0.2575
31   all 2024 unique    all unique    1 -0.1691
    ne_idn
11  0.0171
12  0.2266
13 -0.2762
14 -0.9047
15  0.6456
16 -0.9885
17 -0.0248
18  0.1009
19 -0.4438
20 -0.6952
21 -1.7427
22 -0.8628
23 -0.8628
24  0.5199
25 -0.6952
26 -0.5276
27 -0.4438
28  0.2685
29  1.5256
30  1.8608
31  0.9809
   quant year   unit season   area iter  ne_idn
3    all 2006 unique    all unique    1 -0.2762
4    all 2007 unique    all unique    1 -0.9047
5    all 2008 unique    all unique    1  0.6456
6    all 2009 unique    all unique    1 -0.9885
7    all 2010 unique    all unique    1 -0.0248
8    all 2011 unique    all unique    1  0.1009
9    all 2012 unique    all unique    1 -0.4438
10   all 2013 unique    all unique    1 -0.6952
11   all 2014 unique    all unique    1 -1.7427
12   all 2015 unique    all unique    1 -0.8628
13   all 2016 unique    all unique    1 -0.8628
14   all 2017 unique    all unique    1  0.5199
15   all 2018 unique    all unique    1 -0.6952
16   all 2019 unique    all unique    1 -0.5276
17   all 2020 unique    all unique    1 -0.4438
18   all 2021 unique    all unique    1  0.2685
19   all 2022 unique    all unique    1  1.5256
20   all 2023 unique    all unique    1  1.8608
21   all 2024 unique    all unique    1  0.9809
    ne_jap
3  -0.3216
4  -1.4675
5  -1.7240
6  -0.0799
7  -0.8613
8  -2.1918
9   0.2927
10 -0.1304
11  1.4072
12  0.6988
13  0.5559
14  1.2902
15  0.4971
16  0.4408
17  0.0310
18 -0.3542
19  0.2496
20  1.4052
21  0.2622
   quant year   unit season   area iter  ne_jap
1    all 2006 unique    all unique    1 -0.3216
2    all 2007 unique    all unique    1 -1.4675
3    all 2008 unique    all unique    1 -1.7240
4    all 2009 unique    all unique    1 -0.0799
5    all 2010 unique    all unique    1 -0.8613
6    all 2011 unique    all unique    1 -2.1918
7    all 2012 unique    all unique    1  0.2927
8    all 2013 unique    all unique    1 -0.1304
9    all 2014 unique    all unique    1  1.4072
10   all 2015 unique    all unique    1  0.6988
11   all 2016 unique    all unique    1  0.5559
12   all 2017 unique    all unique    1  1.2902
13   all 2018 unique    all unique    1  0.4971
14   all 2019 unique    all unique    1  0.4408
15   all 2020 unique    all unique    1  0.0310
16   all 2021 unique    all unique    1 -0.3542
17   all 2022 unique    all unique    1  0.2496
18   all 2023 unique    all unique    1  1.4052
19   all 2024 unique    all unique    1  0.2622
   ne_jap.1
1   -0.3216
2   -1.4675
3   -1.7240
4   -0.0799
5   -0.8613
6   -2.1918
7    0.2927
8   -0.1304
9    1.4072
10   0.6988
11   0.5559
12   1.2902
13   0.4971
14   0.4408
15   0.0310
16  -0.3542
17   0.2496
18   1.4052
19   0.2622
   quant year   unit season   area iter ne_twn
6    all 2006 unique    all unique    1 -1.492
7    all 2007 unique    all unique    1 -1.180
8    all 2008 unique    all unique    1 -0.470
9    all 2009 unique    all unique    1  0.266
10   all 2010 unique    all unique    1  0.890
11   all 2011 unique    all unique    1  0.569
12   all 2012 unique    all unique    1  0.786
13   all 2013 unique    all unique    1 -0.899
14   all 2014 unique    all unique    1 -1.730
15   all 2015 unique    all unique    1 -0.326
16   all 2016 unique    all unique    1  0.707
17   all 2017 unique    all unique    1  0.199
18   all 2018 unique    all unique    1 -0.521
19   all 2019 unique    all unique    1 -0.755
20   all 2020 unique    all unique    1 -1.610
21   all 2021 unique    all unique    1 -0.487
22   all 2022 unique    all unique    1  0.759
23   all 2023 unique    all unique    1  1.651
24   all 2024 unique    all unique    1  1.180
    ne_jap
6  -0.3216
7  -1.4675
8  -1.7240
9  -0.0799
10 -0.8613
11 -2.1918
12  0.2927
13 -0.1304
14  1.4072
15  0.6988
16  0.5559
17  1.2902
18  0.4971
19  0.4408
20  0.0310
21 -0.3542
22  0.2496
23  1.4052
24  0.2622
   quant year   unit season   area iter  nw_jap
2    all 2006 unique    all unique    1 -0.2235
3    all 2007 unique    all unique    1  1.4150
4    all 2008 unique    all unique    1  1.0867
5    all 2009 unique    all unique    1  1.3172
6    all 2010 unique    all unique    1 -1.1901
7    all 2011 unique    all unique    1 -1.6850
8    all 2012 unique    all unique    1 -0.1396
9    all 2013 unique    all unique    1 -0.9855
10   all 2014 unique    all unique    1  0.0741
11   all 2015 unique    all unique    1  0.7156
12   all 2016 unique    all unique    1 -0.3774
13   all 2017 unique    all unique    1 -0.7581
14   all 2018 unique    all unique    1  1.3277
15   all 2019 unique    all unique    1  1.6444
16   all 2020 unique    all unique    1  0.2300
17   all 2021 unique    all unique    1 -0.5614
18   all 2022 unique    all unique    1 -1.2212
19   all 2023 unique    all unique    1 -0.3113
    ne_jap
2  -0.3216
3  -1.4675
4  -1.7240
5  -0.0799
6  -0.8613
7  -2.1918
8   0.2927
9  -0.1304
10  1.4072
11  0.6988
12  0.5559
13  1.2902
14  0.4971
15  0.4408
16  0.0310
17 -0.3542
18  0.2496
19  1.4052
   quant year   unit season   area iter   nw_twn
2    all 2006 unique    all unique    1  3.46401
3    all 2007 unique    all unique    1  0.07256
4    all 2008 unique    all unique    1 -0.00501
5    all 2009 unique    all unique    1 -0.65830
6    all 2010 unique    all unique    1  0.18718
7    all 2011 unique    all unique    1 -0.28943
8    all 2012 unique    all unique    1 -0.48094
9    all 2013 unique    all unique    1 -0.74962
10   all 2014 unique    all unique    1 -1.25426
11   all 2015 unique    all unique    1 -1.19934
12   all 2016 unique    all unique    1 -0.67881
13   all 2017 unique    all unique    1 -0.30550
14   all 2018 unique    all unique    1 -0.08591
15   all 2019 unique    all unique    1  0.39915
16   all 2020 unique    all unique    1  0.11121
17   all 2021 unique    all unique    1 -0.08654
18   all 2022 unique    all unique    1  0.37017
19   all 2023 unique    all unique    1  0.43136
    ne_jap
2  -0.3216
3  -1.4675
4  -1.7240
5  -0.0799
6  -0.8613
7  -2.1918
8   0.2927
9  -0.1304
10  1.4072
11  0.6988
12  0.5559
13  1.2902
14  0.4971
15  0.4408
16  0.0310
17 -0.3542
18  0.2496
19  1.4052
   quant year   unit season   area iter se_jap
13   all 2006 unique    all unique    1 -0.533
14   all 2007 unique    all unique    1 -1.153
15   all 2008 unique    all unique    1 -0.694
16   all 2009 unique    all unique    1  0.358
17   all 2010 unique    all unique    1  0.189
18   all 2011 unique    all unique    1  0.282
19   all 2012 unique    all unique    1 -0.196
20   all 2013 unique    all unique    1 -0.480
21   all 2014 unique    all unique    1 -0.798
22   all 2015 unique    all unique    1 -0.548
23   all 2016 unique    all unique    1  0.616
24   all 2017 unique    all unique    1  0.777
25   all 2018 unique    all unique    1  0.370
26   all 2019 unique    all unique    1  0.480
27   all 2020 unique    all unique    1  0.216
28   all 2021 unique    all unique    1 -0.384
29   all 2022 unique    all unique    1  0.405
30   all 2023 unique    all unique    1  0.764
31   all 2024 unique    all unique    1  1.222
    ne_jap
13 -0.3216
14 -1.4675
15 -1.7240
16 -0.0799
17 -0.8613
18 -2.1918
19  0.2927
20 -0.1304
21  1.4072
22  0.6988
23  0.5559
24  1.2902
25  0.4971
26  0.4408
27  0.0310
28 -0.3542
29  0.2496
30  1.4052
31  0.2622
   quant year   unit season   area iter  se_twn
13   all 2006 unique    all unique    1 -0.1705
14   all 2007 unique    all unique    1  0.5810
15   all 2008 unique    all unique    1 -0.0990
16   all 2009 unique    all unique    1 -0.6588
17   all 2010 unique    all unique    1 -0.2970
18   all 2011 unique    all unique    1  0.3387
19   all 2012 unique    all unique    1 -0.3204
20   all 2013 unique    all unique    1  0.2119
21   all 2014 unique    all unique    1  0.5040
22   all 2015 unique    all unique    1  0.0653
23   all 2016 unique    all unique    1 -1.3741
24   all 2017 unique    all unique    1 -1.5295
25   all 2018 unique    all unique    1 -1.4175
26   all 2019 unique    all unique    1 -1.6166
27   all 2020 unique    all unique    1 -0.2857
28   all 2021 unique    all unique    1 -1.1585
29   all 2022 unique    all unique    1 -1.0361
30   all 2023 unique    all unique    1 -0.2749
31   all 2024 unique    all unique    1 -0.7763
    ne_jap
13 -0.3216
14 -1.4675
15 -1.7240
16 -0.0799
17 -0.8613
18 -2.1918
19  0.2927
20 -0.1304
21  1.4072
22  0.6988
23  0.5559
24  1.2902
25  0.4971
26  0.4408
27  0.0310
28 -0.3542
29  0.2496
30  1.4052
31  0.2622
   quant year   unit season   area iter sw_eu_esp
2    all 2006 unique    all unique    1   -1.7146
3    all 2007 unique    all unique    1   -0.6989
4    all 2008 unique    all unique    1   -0.2509
5    all 2009 unique    all unique    1    1.0984
6    all 2010 unique    all unique    1   -0.4607
7    all 2011 unique    all unique    1   -0.8324
8    all 2012 unique    all unique    1    0.6362
9    all 2013 unique    all unique    1   -0.0563
10   all 2014 unique    all unique    1    0.1610
11   all 2015 unique    all unique    1    1.3451
12   all 2016 unique    all unique    1    0.3144
13   all 2017 unique    all unique    1   -1.1362
14   all 2018 unique    all unique    1   -0.6142
15   all 2019 unique    all unique    1    1.7311
16   all 2020 unique    all unique    1    1.5787
17   all 2021 unique    all unique    1   -0.0441
18   all 2022 unique    all unique    1   -0.7992
19   all 2023 unique    all unique    1    0.9257
    ne_jap
2  -0.3216
3  -1.4675
4  -1.7240
5  -0.0799
6  -0.8613
7  -2.1918
8   0.2927
9  -0.1304
10  1.4072
11  0.6988
12  0.5559
13  1.2902
14  0.4971
15  0.4408
16  0.0310
17 -0.3542
18  0.2496
19  1.4052
   quant year   unit season   area iter sw_eu_prt
7    all 2006 unique    all unique    1    0.0777
8    all 2007 unique    all unique    1    0.4965
9    all 2008 unique    all unique    1    2.0445
10   all 2009 unique    all unique    1   -1.2155
11   all 2010 unique    all unique    1   -0.6528
12   all 2011 unique    all unique    1   -0.1259
13   all 2012 unique    all unique    1   -0.4376
14   all 2013 unique    all unique    1   -0.5602
15   all 2014 unique    all unique    1   -1.3969
16   all 2015 unique    all unique    1    0.0420
17   all 2016 unique    all unique    1   -0.6606
18   all 2017 unique    all unique    1   -0.3904
19   all 2018 unique    all unique    1   -0.6615
20   all 2019 unique    all unique    1   -0.7436
21   all 2020 unique    all unique    1   -0.8468
22   all 2021 unique    all unique    1   -0.6191
23   all 2022 unique    all unique    1    0.9135
24   all 2023 unique    all unique    1    1.4027
25   all 2024 unique    all unique    1    1.5012
    ne_jap
7  -0.3216
8  -1.4675
9  -1.7240
10 -0.0799
11 -0.8613
12 -2.1918
13  0.2927
14 -0.1304
15  1.4072
16  0.6988
17  0.5559
18  1.2902
19  0.4971
20  0.4408
21  0.0310
22 -0.3542
23  0.2496
24  1.4052
25  0.2622
   quant year   unit season   area iter sw_eu_reu
2    all 2006 unique    all unique    1   -0.5150
3    all 2007 unique    all unique    1   -0.7406
4    all 2008 unique    all unique    1   -1.2145
5    all 2009 unique    all unique    1   -0.7588
6    all 2010 unique    all unique    1   -0.6244
7    all 2011 unique    all unique    1   -0.2097
8    all 2012 unique    all unique    1   -0.8818
9    all 2013 unique    all unique    1   -0.6791
10   all 2014 unique    all unique    1   -0.2576
11   all 2015 unique    all unique    1   -0.4376
12   all 2016 unique    all unique    1   -0.3054
13   all 2017 unique    all unique    1   -0.6517
14   all 2018 unique    all unique    1   -0.4900
15   all 2019 unique    all unique    1   -0.0912
16   all 2020 unique    all unique    1    0.5125
17   all 2021 unique    all unique    1    1.3236
18   all 2022 unique    all unique    1    1.2279
19   all 2023 unique    all unique    1    1.7451
20   all 2024 unique    all unique    1    1.9023
    ne_jap
2  -0.3216
3  -1.4675
4  -1.7240
5  -0.0799
6  -0.8613
7  -2.1918
8   0.2927
9  -0.1304
10  1.4072
11  0.6988
12  0.5559
13  1.2902
14  0.4971
15  0.4408
16  0.0310
17 -0.3542
18  0.2496
19  1.4052
20  0.2622
   quant year   unit season   area iter sw_jap
13   all 2006 unique    all unique    1 -1.453
14   all 2007 unique    all unique    1 -0.846
15   all 2008 unique    all unique    1 -1.030
16   all 2009 unique    all unique    1 -0.946
17   all 2010 unique    all unique    1 -0.942
18   all 2011 unique    all unique    1 -1.089
19   all 2012 unique    all unique    1 -1.072
20   all 2013 unique    all unique    1 -0.593
21   all 2014 unique    all unique    1  0.372
22   all 2015 unique    all unique    1  0.509
23   all 2016 unique    all unique    1  1.928
24   all 2017 unique    all unique    1  0.457
25   all 2018 unique    all unique    1  0.625
26   all 2019 unique    all unique    1  0.913
27   all 2020 unique    all unique    1  1.555
28   all 2021 unique    all unique    1  1.079
29   all 2022 unique    all unique    1  0.994
30   all 2023 unique    all unique    1  0.597
31   all 2024 unique    all unique    1  1.339
    ne_jap
13 -0.3216
14 -1.4675
15 -1.7240
16 -0.0799
17 -0.8613
18 -2.1918
19  0.2927
20 -0.1304
21  1.4072
22  0.6988
23  0.5559
24  1.2902
25  0.4971
26  0.4408
27  0.0310
28 -0.3542
29  0.2496
30  1.4052
31  0.2622
   quant year   unit season   area iter sw_twn
2    all 2006 unique    all unique    1 -0.479
3    all 2007 unique    all unique    1 -0.731
4    all 2008 unique    all unique    1  0.554
5    all 2009 unique    all unique    1  0.331
6    all 2010 unique    all unique    1  0.186
7    all 2011 unique    all unique    1  0.522
8    all 2012 unique    all unique    1 -0.253
9    all 2013 unique    all unique    1 -0.444
10   all 2014 unique    all unique    1 -0.194
11   all 2015 unique    all unique    1 -1.247
12   all 2016 unique    all unique    1 -0.842
13   all 2017 unique    all unique    1 -1.332
14   all 2018 unique    all unique    1 -0.930
15   all 2019 unique    all unique    1  0.745
16   all 2020 unique    all unique    1  1.607
17   all 2021 unique    all unique    1  1.503
18   all 2022 unique    all unique    1  0.943
19   all 2023 unique    all unique    1  1.616
    ne_jap
2  -0.3216
3  -1.4675
4  -1.7240
5  -0.0799
6  -0.8613
7  -2.1918
8   0.2927
9  -0.1304
10  1.4072
11  0.6988
12  0.5559
13  1.2902
14  0.4971
15  0.4408
16  0.0310
17 -0.3542
18  0.2496
19  1.4052
   quant year   unit season   area iter  sw_zaf
13   all 2006 unique    all unique    1 -1.3236
14   all 2007 unique    all unique    1 -0.7660
15   all 2008 unique    all unique    1 -1.0195
16   all 2009 unique    all unique    1 -0.6750
17   all 2010 unique    all unique    1 -0.1069
18   all 2011 unique    all unique    1 -0.0435
19   all 2012 unique    all unique    1  0.0173
20   all 2013 unique    all unique    1 -1.0648
21   all 2014 unique    all unique    1 -1.2983
22   all 2015 unique    all unique    1  0.7031
23   all 2016 unique    all unique    1  0.8880
24   all 2017 unique    all unique    1  1.6972
25   all 2018 unique    all unique    1 -0.3508
26   all 2019 unique    all unique    1 -0.2486
27   all 2020 unique    all unique    1 -0.5227
28   all 2021 unique    all unique    1 -0.2518
29   all 2022 unique    all unique    1  0.3599
30   all 2023 unique    all unique    1 -0.2575
31   all 2024 unique    all unique    1 -0.1691
    ne_jap
13 -0.3216
14 -1.4675
15 -1.7240
16 -0.0799
17 -0.8613
18 -2.1918
19  0.2927
20 -0.1304
21  1.4072
22  0.6988
23  0.5559
24  1.2902
25  0.4971
26  0.4408
27  0.0310
28 -0.3542
29  0.2496
30  1.4052
31  0.2622
   quant year   unit season   area iter  ne_idn
4    all 2004 unique    all unique    1  0.0171
5    all 2005 unique    all unique    1  0.2266
6    all 2006 unique    all unique    1 -0.2762
7    all 2007 unique    all unique    1 -0.9047
8    all 2008 unique    all unique    1  0.6456
9    all 2009 unique    all unique    1 -0.9885
10   all 2010 unique    all unique    1 -0.0248
11   all 2011 unique    all unique    1  0.1009
12   all 2012 unique    all unique    1 -0.4438
13   all 2013 unique    all unique    1 -0.6952
14   all 2014 unique    all unique    1 -1.7427
15   all 2015 unique    all unique    1 -0.8628
16   all 2016 unique    all unique    1 -0.8628
17   all 2017 unique    all unique    1  0.5199
18   all 2018 unique    all unique    1 -0.6952
19   all 2019 unique    all unique    1 -0.5276
20   all 2020 unique    all unique    1 -0.4438
21   all 2021 unique    all unique    1  0.2685
22   all 2022 unique    all unique    1  1.5256
23   all 2023 unique    all unique    1  1.8608
24   all 2024 unique    all unique    1  0.9809
   ne_twn
4   0.690
5  -0.888
6  -1.492
7  -1.180
8  -0.470
9   0.266
10  0.890
11  0.569
12  0.786
13 -0.899
14 -1.730
15 -0.326
16  0.707
17  0.199
18 -0.521
19 -0.755
20 -1.610
21 -0.487
22  0.759
23  1.651
24  1.180
   quant year   unit season   area iter  ne_jap
6    all 2006 unique    all unique    1 -0.3216
7    all 2007 unique    all unique    1 -1.4675
8    all 2008 unique    all unique    1 -1.7240
9    all 2009 unique    all unique    1 -0.0799
10   all 2010 unique    all unique    1 -0.8613
11   all 2011 unique    all unique    1 -2.1918
12   all 2012 unique    all unique    1  0.2927
13   all 2013 unique    all unique    1 -0.1304
14   all 2014 unique    all unique    1  1.4072
15   all 2015 unique    all unique    1  0.6988
16   all 2016 unique    all unique    1  0.5559
17   all 2017 unique    all unique    1  1.2902
18   all 2018 unique    all unique    1  0.4971
19   all 2019 unique    all unique    1  0.4408
20   all 2020 unique    all unique    1  0.0310
21   all 2021 unique    all unique    1 -0.3542
22   all 2022 unique    all unique    1  0.2496
23   all 2023 unique    all unique    1  1.4052
24   all 2024 unique    all unique    1  0.2622
   ne_twn
6  -1.492
7  -1.180
8  -0.470
9   0.266
10  0.890
11  0.569
12  0.786
13 -0.899
14 -1.730
15 -0.326
16  0.707
17  0.199
18 -0.521
19 -0.755
20 -1.610
21 -0.487
22  0.759
23  1.651
24  1.180
   quant year   unit season   area iter ne_twn
1    all 2001 unique    all unique    1  0.779
2    all 2002 unique    all unique    1  0.265
3    all 2003 unique    all unique    1  1.615
4    all 2004 unique    all unique    1  0.690
5    all 2005 unique    all unique    1 -0.888
6    all 2006 unique    all unique    1 -1.492
7    all 2007 unique    all unique    1 -1.180
8    all 2008 unique    all unique    1 -0.470
9    all 2009 unique    all unique    1  0.266
10   all 2010 unique    all unique    1  0.890
11   all 2011 unique    all unique    1  0.569
12   all 2012 unique    all unique    1  0.786
13   all 2013 unique    all unique    1 -0.899
14   all 2014 unique    all unique    1 -1.730
15   all 2015 unique    all unique    1 -0.326
16   all 2016 unique    all unique    1  0.707
17   all 2017 unique    all unique    1  0.199
18   all 2018 unique    all unique    1 -0.521
19   all 2019 unique    all unique    1 -0.755
20   all 2020 unique    all unique    1 -1.610
21   all 2021 unique    all unique    1 -0.487
22   all 2022 unique    all unique    1  0.759
23   all 2023 unique    all unique    1  1.651
24   all 2024 unique    all unique    1  1.180
   ne_twn.1
1     0.779
2     0.265
3     1.615
4     0.690
5    -0.888
6    -1.492
7    -1.180
8    -0.470
9     0.266
10    0.890
11    0.569
12    0.786
13   -0.899
14   -1.730
15   -0.326
16    0.707
17    0.199
18   -0.521
19   -0.755
20   -1.610
21   -0.487
22    0.759
23    1.651
24    1.180
   quant year   unit season   area iter  nw_jap
5    all 2005 unique    all unique    1 -0.3577
6    all 2006 unique    all unique    1 -0.2235
7    all 2007 unique    all unique    1  1.4150
8    all 2008 unique    all unique    1  1.0867
9    all 2009 unique    all unique    1  1.3172
10   all 2010 unique    all unique    1 -1.1901
11   all 2011 unique    all unique    1 -1.6850
12   all 2012 unique    all unique    1 -0.1396
13   all 2013 unique    all unique    1 -0.9855
14   all 2014 unique    all unique    1  0.0741
15   all 2015 unique    all unique    1  0.7156
16   all 2016 unique    all unique    1 -0.3774
17   all 2017 unique    all unique    1 -0.7581
18   all 2018 unique    all unique    1  1.3277
19   all 2019 unique    all unique    1  1.6444
20   all 2020 unique    all unique    1  0.2300
21   all 2021 unique    all unique    1 -0.5614
22   all 2022 unique    all unique    1 -1.2212
23   all 2023 unique    all unique    1 -0.3113
   ne_twn
5  -0.888
6  -1.492
7  -1.180
8  -0.470
9   0.266
10  0.890
11  0.569
12  0.786
13 -0.899
14 -1.730
15 -0.326
16  0.707
17  0.199
18 -0.521
19 -0.755
20 -1.610
21 -0.487
22  0.759
23  1.651
   quant year   unit season   area iter   nw_twn
5    all 2005 unique    all unique    1  0.75802
6    all 2006 unique    all unique    1  3.46401
7    all 2007 unique    all unique    1  0.07256
8    all 2008 unique    all unique    1 -0.00501
9    all 2009 unique    all unique    1 -0.65830
10   all 2010 unique    all unique    1  0.18718
11   all 2011 unique    all unique    1 -0.28943
12   all 2012 unique    all unique    1 -0.48094
13   all 2013 unique    all unique    1 -0.74962
14   all 2014 unique    all unique    1 -1.25426
15   all 2015 unique    all unique    1 -1.19934
16   all 2016 unique    all unique    1 -0.67881
17   all 2017 unique    all unique    1 -0.30550
18   all 2018 unique    all unique    1 -0.08591
19   all 2019 unique    all unique    1  0.39915
20   all 2020 unique    all unique    1  0.11121
21   all 2021 unique    all unique    1 -0.08654
22   all 2022 unique    all unique    1  0.37017
23   all 2023 unique    all unique    1  0.43136
   ne_twn
5  -0.888
6  -1.492
7  -1.180
8  -0.470
9   0.266
10  0.890
11  0.569
12  0.786
13 -0.899
14 -1.730
15 -0.326
16  0.707
17  0.199
18 -0.521
19 -0.755
20 -1.610
21 -0.487
22  0.759
23  1.651
   quant year   unit season   area iter se_jap
8    all 2001 unique    all unique    1 -1.204
9    all 2002 unique    all unique    1 -1.196
10   all 2003 unique    all unique    1 -1.508
11   all 2004 unique    all unique    1 -1.009
12   all 2005 unique    all unique    1 -0.810
13   all 2006 unique    all unique    1 -0.533
14   all 2007 unique    all unique    1 -1.153
15   all 2008 unique    all unique    1 -0.694
16   all 2009 unique    all unique    1  0.358
17   all 2010 unique    all unique    1  0.189
18   all 2011 unique    all unique    1  0.282
19   all 2012 unique    all unique    1 -0.196
20   all 2013 unique    all unique    1 -0.480
21   all 2014 unique    all unique    1 -0.798
22   all 2015 unique    all unique    1 -0.548
23   all 2016 unique    all unique    1  0.616
24   all 2017 unique    all unique    1  0.777
25   all 2018 unique    all unique    1  0.370
26   all 2019 unique    all unique    1  0.480
27   all 2020 unique    all unique    1  0.216
28   all 2021 unique    all unique    1 -0.384
29   all 2022 unique    all unique    1  0.405
30   all 2023 unique    all unique    1  0.764
31   all 2024 unique    all unique    1  1.222
   ne_twn
8   0.779
9   0.265
10  1.615
11  0.690
12 -0.888
13 -1.492
14 -1.180
15 -0.470
16  0.266
17  0.890
18  0.569
19  0.786
20 -0.899
21 -1.730
22 -0.326
23  0.707
24  0.199
25 -0.521
26 -0.755
27 -1.610
28 -0.487
29  0.759
30  1.651
31  1.180
   quant year   unit season   area iter  se_twn
8    all 2001 unique    all unique    1 -0.2304
9    all 2002 unique    all unique    1  0.4142
10   all 2003 unique    all unique    1  0.2000
11   all 2004 unique    all unique    1  0.3130
12   all 2005 unique    all unique    1 -1.1521
13   all 2006 unique    all unique    1 -0.1705
14   all 2007 unique    all unique    1  0.5810
15   all 2008 unique    all unique    1 -0.0990
16   all 2009 unique    all unique    1 -0.6588
17   all 2010 unique    all unique    1 -0.2970
18   all 2011 unique    all unique    1  0.3387
19   all 2012 unique    all unique    1 -0.3204
20   all 2013 unique    all unique    1  0.2119
21   all 2014 unique    all unique    1  0.5040
22   all 2015 unique    all unique    1  0.0653
23   all 2016 unique    all unique    1 -1.3741
24   all 2017 unique    all unique    1 -1.5295
25   all 2018 unique    all unique    1 -1.4175
26   all 2019 unique    all unique    1 -1.6166
27   all 2020 unique    all unique    1 -0.2857
28   all 2021 unique    all unique    1 -1.1585
29   all 2022 unique    all unique    1 -1.0361
30   all 2023 unique    all unique    1 -0.2749
31   all 2024 unique    all unique    1 -0.7763
   ne_twn
8   0.779
9   0.265
10  1.615
11  0.690
12 -0.888
13 -1.492
14 -1.180
15 -0.470
16  0.266
17  0.890
18  0.569
19  0.786
20 -0.899
21 -1.730
22 -0.326
23  0.707
24  0.199
25 -0.521
26 -0.755
27 -1.610
28 -0.487
29  0.759
30  1.651
31  1.180
   quant year   unit season   area iter sw_eu_esp
5    all 2005 unique    all unique    1   -1.1832
6    all 2006 unique    all unique    1   -1.7146
7    all 2007 unique    all unique    1   -0.6989
8    all 2008 unique    all unique    1   -0.2509
9    all 2009 unique    all unique    1    1.0984
10   all 2010 unique    all unique    1   -0.4607
11   all 2011 unique    all unique    1   -0.8324
12   all 2012 unique    all unique    1    0.6362
13   all 2013 unique    all unique    1   -0.0563
14   all 2014 unique    all unique    1    0.1610
15   all 2015 unique    all unique    1    1.3451
16   all 2016 unique    all unique    1    0.3144
17   all 2017 unique    all unique    1   -1.1362
18   all 2018 unique    all unique    1   -0.6142
19   all 2019 unique    all unique    1    1.7311
20   all 2020 unique    all unique    1    1.5787
21   all 2021 unique    all unique    1   -0.0441
22   all 2022 unique    all unique    1   -0.7992
23   all 2023 unique    all unique    1    0.9257
   ne_twn
5  -0.888
6  -1.492
7  -1.180
8  -0.470
9   0.266
10  0.890
11  0.569
12  0.786
13 -0.899
14 -1.730
15 -0.326
16  0.707
17  0.199
18 -0.521
19 -0.755
20 -1.610
21 -0.487
22  0.759
23  1.651
   quant year   unit season   area iter sw_eu_prt
2    all 2001 unique    all unique    1    1.0273
3    all 2002 unique    all unique    1    1.0650
4    all 2003 unique    all unique    1    0.8121
5    all 2004 unique    all unique    1   -0.3730
6    all 2005 unique    all unique    1   -1.8022
7    all 2006 unique    all unique    1    0.0777
8    all 2007 unique    all unique    1    0.4965
9    all 2008 unique    all unique    1    2.0445
10   all 2009 unique    all unique    1   -1.2155
11   all 2010 unique    all unique    1   -0.6528
12   all 2011 unique    all unique    1   -0.1259
13   all 2012 unique    all unique    1   -0.4376
14   all 2013 unique    all unique    1   -0.5602
15   all 2014 unique    all unique    1   -1.3969
16   all 2015 unique    all unique    1    0.0420
17   all 2016 unique    all unique    1   -0.6606
18   all 2017 unique    all unique    1   -0.3904
19   all 2018 unique    all unique    1   -0.6615
20   all 2019 unique    all unique    1   -0.7436
21   all 2020 unique    all unique    1   -0.8468
22   all 2021 unique    all unique    1   -0.6191
23   all 2022 unique    all unique    1    0.9135
24   all 2023 unique    all unique    1    1.4027
25   all 2024 unique    all unique    1    1.5012
   ne_twn
2   0.779
3   0.265
4   1.615
5   0.690
6  -0.888
7  -1.492
8  -1.180
9  -0.470
10  0.266
11  0.890
12  0.569
13  0.786
14 -0.899
15 -1.730
16 -0.326
17  0.707
18  0.199
19 -0.521
20 -0.755
21 -1.610
22 -0.487
23  0.759
24  1.651
25  1.180
   quant year   unit season   area iter sw_eu_reu
5    all 2005 unique    all unique    1   -0.7679
6    all 2006 unique    all unique    1   -0.5150
7    all 2007 unique    all unique    1   -0.7406
8    all 2008 unique    all unique    1   -1.2145
9    all 2009 unique    all unique    1   -0.7588
10   all 2010 unique    all unique    1   -0.6244
11   all 2011 unique    all unique    1   -0.2097
12   all 2012 unique    all unique    1   -0.8818
13   all 2013 unique    all unique    1   -0.6791
14   all 2014 unique    all unique    1   -0.2576
15   all 2015 unique    all unique    1   -0.4376
16   all 2016 unique    all unique    1   -0.3054
17   all 2017 unique    all unique    1   -0.6517
18   all 2018 unique    all unique    1   -0.4900
19   all 2019 unique    all unique    1   -0.0912
20   all 2020 unique    all unique    1    0.5125
21   all 2021 unique    all unique    1    1.3236
22   all 2022 unique    all unique    1    1.2279
23   all 2023 unique    all unique    1    1.7451
24   all 2024 unique    all unique    1    1.9023
   ne_twn
5  -0.888
6  -1.492
7  -1.180
8  -0.470
9   0.266
10  0.890
11  0.569
12  0.786
13 -0.899
14 -1.730
15 -0.326
16  0.707
17  0.199
18 -0.521
19 -0.755
20 -1.610
21 -0.487
22  0.759
23  1.651
24  1.180
   quant year   unit season   area iter sw_jap
8    all 2001 unique    all unique    1 -1.055
9    all 2002 unique    all unique    1 -1.251
10   all 2003 unique    all unique    1 -0.665
11   all 2004 unique    all unique    1 -1.430
12   all 2005 unique    all unique    1 -1.035
13   all 2006 unique    all unique    1 -1.453
14   all 2007 unique    all unique    1 -0.846
15   all 2008 unique    all unique    1 -1.030
16   all 2009 unique    all unique    1 -0.946
17   all 2010 unique    all unique    1 -0.942
18   all 2011 unique    all unique    1 -1.089
19   all 2012 unique    all unique    1 -1.072
20   all 2013 unique    all unique    1 -0.593
21   all 2014 unique    all unique    1  0.372
22   all 2015 unique    all unique    1  0.509
23   all 2016 unique    all unique    1  1.928
24   all 2017 unique    all unique    1  0.457
25   all 2018 unique    all unique    1  0.625
26   all 2019 unique    all unique    1  0.913
27   all 2020 unique    all unique    1  1.555
28   all 2021 unique    all unique    1  1.079
29   all 2022 unique    all unique    1  0.994
30   all 2023 unique    all unique    1  0.597
31   all 2024 unique    all unique    1  1.339
   ne_twn
8   0.779
9   0.265
10  1.615
11  0.690
12 -0.888
13 -1.492
14 -1.180
15 -0.470
16  0.266
17  0.890
18  0.569
19  0.786
20 -0.899
21 -1.730
22 -0.326
23  0.707
24  0.199
25 -0.521
26 -0.755
27 -1.610
28 -0.487
29  0.759
30  1.651
31  1.180
   quant year   unit season   area iter sw_twn
5    all 2005 unique    all unique    1 -1.554
6    all 2006 unique    all unique    1 -0.479
7    all 2007 unique    all unique    1 -0.731
8    all 2008 unique    all unique    1  0.554
9    all 2009 unique    all unique    1  0.331
10   all 2010 unique    all unique    1  0.186
11   all 2011 unique    all unique    1  0.522
12   all 2012 unique    all unique    1 -0.253
13   all 2013 unique    all unique    1 -0.444
14   all 2014 unique    all unique    1 -0.194
15   all 2015 unique    all unique    1 -1.247
16   all 2016 unique    all unique    1 -0.842
17   all 2017 unique    all unique    1 -1.332
18   all 2018 unique    all unique    1 -0.930
19   all 2019 unique    all unique    1  0.745
20   all 2020 unique    all unique    1  1.607
21   all 2021 unique    all unique    1  1.503
22   all 2022 unique    all unique    1  0.943
23   all 2023 unique    all unique    1  1.616
   ne_twn
5  -0.888
6  -1.492
7  -1.180
8  -0.470
9   0.266
10  0.890
11  0.569
12  0.786
13 -0.899
14 -1.730
15 -0.326
16  0.707
17  0.199
18 -0.521
19 -0.755
20 -1.610
21 -0.487
22  0.759
23  1.651
   quant year   unit season   area iter  sw_zaf
8    all 2001 unique    all unique    1  0.5088
9    all 2002 unique    all unique    1  0.1789
10   all 2003 unique    all unique    1 -0.7160
11   all 2004 unique    all unique    1 -1.0768
12   all 2005 unique    all unique    1 -1.1221
13   all 2006 unique    all unique    1 -1.3236
14   all 2007 unique    all unique    1 -0.7660
15   all 2008 unique    all unique    1 -1.0195
16   all 2009 unique    all unique    1 -0.6750
17   all 2010 unique    all unique    1 -0.1069
18   all 2011 unique    all unique    1 -0.0435
19   all 2012 unique    all unique    1  0.0173
20   all 2013 unique    all unique    1 -1.0648
21   all 2014 unique    all unique    1 -1.2983
22   all 2015 unique    all unique    1  0.7031
23   all 2016 unique    all unique    1  0.8880
24   all 2017 unique    all unique    1  1.6972
25   all 2018 unique    all unique    1 -0.3508
26   all 2019 unique    all unique    1 -0.2486
27   all 2020 unique    all unique    1 -0.5227
28   all 2021 unique    all unique    1 -0.2518
29   all 2022 unique    all unique    1  0.3599
30   all 2023 unique    all unique    1 -0.2575
31   all 2024 unique    all unique    1 -0.1691
   ne_twn
8   0.779
9   0.265
10  1.615
11  0.690
12 -0.888
13 -1.492
14 -1.180
15 -0.470
16  0.266
17  0.890
18  0.569
19  0.786
20 -0.899
21 -1.730
22 -0.326
23  0.707
24  0.199
25 -0.521
26 -0.755
27 -1.610
28 -0.487
29  0.759
30  1.651
31  1.180
   quant year   unit season   area iter  ne_idn
2    all 2005 unique    all unique    1  0.2266
3    all 2006 unique    all unique    1 -0.2762
4    all 2007 unique    all unique    1 -0.9047
5    all 2008 unique    all unique    1  0.6456
6    all 2009 unique    all unique    1 -0.9885
7    all 2010 unique    all unique    1 -0.0248
8    all 2011 unique    all unique    1  0.1009
9    all 2012 unique    all unique    1 -0.4438
10   all 2013 unique    all unique    1 -0.6952
11   all 2014 unique    all unique    1 -1.7427
12   all 2015 unique    all unique    1 -0.8628
13   all 2016 unique    all unique    1 -0.8628
14   all 2017 unique    all unique    1  0.5199
15   all 2018 unique    all unique    1 -0.6952
16   all 2019 unique    all unique    1 -0.5276
17   all 2020 unique    all unique    1 -0.4438
18   all 2021 unique    all unique    1  0.2685
19   all 2022 unique    all unique    1  1.5256
20   all 2023 unique    all unique    1  1.8608
    nw_jap
2  -0.3577
3  -0.2235
4   1.4150
5   1.0867
6   1.3172
7  -1.1901
8  -1.6850
9  -0.1396
10 -0.9855
11  0.0741
12  0.7156
13 -0.3774
14 -0.7581
15  1.3277
16  1.6444
17  0.2300
18 -0.5614
19 -1.2212
20 -0.3113
   quant year   unit season   area iter  ne_jap
2    all 2006 unique    all unique    1 -0.3216
3    all 2007 unique    all unique    1 -1.4675
4    all 2008 unique    all unique    1 -1.7240
5    all 2009 unique    all unique    1 -0.0799
6    all 2010 unique    all unique    1 -0.8613
7    all 2011 unique    all unique    1 -2.1918
8    all 2012 unique    all unique    1  0.2927
9    all 2013 unique    all unique    1 -0.1304
10   all 2014 unique    all unique    1  1.4072
11   all 2015 unique    all unique    1  0.6988
12   all 2016 unique    all unique    1  0.5559
13   all 2017 unique    all unique    1  1.2902
14   all 2018 unique    all unique    1  0.4971
15   all 2019 unique    all unique    1  0.4408
16   all 2020 unique    all unique    1  0.0310
17   all 2021 unique    all unique    1 -0.3542
18   all 2022 unique    all unique    1  0.2496
19   all 2023 unique    all unique    1  1.4052
    nw_jap
2  -0.2235
3   1.4150
4   1.0867
5   1.3172
6  -1.1901
7  -1.6850
8  -0.1396
9  -0.9855
10  0.0741
11  0.7156
12 -0.3774
13 -0.7581
14  1.3277
15  1.6444
16  0.2300
17 -0.5614
18 -1.2212
19 -0.3113
   quant year   unit season   area iter ne_twn
5    all 2005 unique    all unique    1 -0.888
6    all 2006 unique    all unique    1 -1.492
7    all 2007 unique    all unique    1 -1.180
8    all 2008 unique    all unique    1 -0.470
9    all 2009 unique    all unique    1  0.266
10   all 2010 unique    all unique    1  0.890
11   all 2011 unique    all unique    1  0.569
12   all 2012 unique    all unique    1  0.786
13   all 2013 unique    all unique    1 -0.899
14   all 2014 unique    all unique    1 -1.730
15   all 2015 unique    all unique    1 -0.326
16   all 2016 unique    all unique    1  0.707
17   all 2017 unique    all unique    1  0.199
18   all 2018 unique    all unique    1 -0.521
19   all 2019 unique    all unique    1 -0.755
20   all 2020 unique    all unique    1 -1.610
21   all 2021 unique    all unique    1 -0.487
22   all 2022 unique    all unique    1  0.759
23   all 2023 unique    all unique    1  1.651
    nw_jap
5  -0.3577
6  -0.2235
7   1.4150
8   1.0867
9   1.3172
10 -1.1901
11 -1.6850
12 -0.1396
13 -0.9855
14  0.0741
15  0.7156
16 -0.3774
17 -0.7581
18  1.3277
19  1.6444
20  0.2300
21 -0.5614
22 -1.2212
23 -0.3113
   quant year   unit season   area iter  nw_jap
1    all 2005 unique    all unique    1 -0.3577
2    all 2006 unique    all unique    1 -0.2235
3    all 2007 unique    all unique    1  1.4150
4    all 2008 unique    all unique    1  1.0867
5    all 2009 unique    all unique    1  1.3172
6    all 2010 unique    all unique    1 -1.1901
7    all 2011 unique    all unique    1 -1.6850
8    all 2012 unique    all unique    1 -0.1396
9    all 2013 unique    all unique    1 -0.9855
10   all 2014 unique    all unique    1  0.0741
11   all 2015 unique    all unique    1  0.7156
12   all 2016 unique    all unique    1 -0.3774
13   all 2017 unique    all unique    1 -0.7581
14   all 2018 unique    all unique    1  1.3277
15   all 2019 unique    all unique    1  1.6444
16   all 2020 unique    all unique    1  0.2300
17   all 2021 unique    all unique    1 -0.5614
18   all 2022 unique    all unique    1 -1.2212
19   all 2023 unique    all unique    1 -0.3113
   nw_jap.1
1   -0.3577
2   -0.2235
3    1.4150
4    1.0867
5    1.3172
6   -1.1901
7   -1.6850
8   -0.1396
9   -0.9855
10   0.0741
11   0.7156
12  -0.3774
13  -0.7581
14   1.3277
15   1.6444
16   0.2300
17  -0.5614
18  -1.2212
19  -0.3113
   quant year   unit season   area iter   nw_twn
1    all 2005 unique    all unique    1  0.75802
2    all 2006 unique    all unique    1  3.46401
3    all 2007 unique    all unique    1  0.07256
4    all 2008 unique    all unique    1 -0.00501
5    all 2009 unique    all unique    1 -0.65830
6    all 2010 unique    all unique    1  0.18718
7    all 2011 unique    all unique    1 -0.28943
8    all 2012 unique    all unique    1 -0.48094
9    all 2013 unique    all unique    1 -0.74962
10   all 2014 unique    all unique    1 -1.25426
11   all 2015 unique    all unique    1 -1.19934
12   all 2016 unique    all unique    1 -0.67881
13   all 2017 unique    all unique    1 -0.30550
14   all 2018 unique    all unique    1 -0.08591
15   all 2019 unique    all unique    1  0.39915
16   all 2020 unique    all unique    1  0.11121
17   all 2021 unique    all unique    1 -0.08654
18   all 2022 unique    all unique    1  0.37017
19   all 2023 unique    all unique    1  0.43136
    nw_jap
1  -0.3577
2  -0.2235
3   1.4150
4   1.0867
5   1.3172
6  -1.1901
7  -1.6850
8  -0.1396
9  -0.9855
10  0.0741
11  0.7156
12 -0.3774
13 -0.7581
14  1.3277
15  1.6444
16  0.2300
17 -0.5614
18 -1.2212
19 -0.3113
   quant year   unit season   area iter se_jap
12   all 2005 unique    all unique    1 -0.810
13   all 2006 unique    all unique    1 -0.533
14   all 2007 unique    all unique    1 -1.153
15   all 2008 unique    all unique    1 -0.694
16   all 2009 unique    all unique    1  0.358
17   all 2010 unique    all unique    1  0.189
18   all 2011 unique    all unique    1  0.282
19   all 2012 unique    all unique    1 -0.196
20   all 2013 unique    all unique    1 -0.480
21   all 2014 unique    all unique    1 -0.798
22   all 2015 unique    all unique    1 -0.548
23   all 2016 unique    all unique    1  0.616
24   all 2017 unique    all unique    1  0.777
25   all 2018 unique    all unique    1  0.370
26   all 2019 unique    all unique    1  0.480
27   all 2020 unique    all unique    1  0.216
28   all 2021 unique    all unique    1 -0.384
29   all 2022 unique    all unique    1  0.405
30   all 2023 unique    all unique    1  0.764
    nw_jap
12 -0.3577
13 -0.2235
14  1.4150
15  1.0867
16  1.3172
17 -1.1901
18 -1.6850
19 -0.1396
20 -0.9855
21  0.0741
22  0.7156
23 -0.3774
24 -0.7581
25  1.3277
26  1.6444
27  0.2300
28 -0.5614
29 -1.2212
30 -0.3113
   quant year   unit season   area iter  se_twn
12   all 2005 unique    all unique    1 -1.1521
13   all 2006 unique    all unique    1 -0.1705
14   all 2007 unique    all unique    1  0.5810
15   all 2008 unique    all unique    1 -0.0990
16   all 2009 unique    all unique    1 -0.6588
17   all 2010 unique    all unique    1 -0.2970
18   all 2011 unique    all unique    1  0.3387
19   all 2012 unique    all unique    1 -0.3204
20   all 2013 unique    all unique    1  0.2119
21   all 2014 unique    all unique    1  0.5040
22   all 2015 unique    all unique    1  0.0653
23   all 2016 unique    all unique    1 -1.3741
24   all 2017 unique    all unique    1 -1.5295
25   all 2018 unique    all unique    1 -1.4175
26   all 2019 unique    all unique    1 -1.6166
27   all 2020 unique    all unique    1 -0.2857
28   all 2021 unique    all unique    1 -1.1585
29   all 2022 unique    all unique    1 -1.0361
30   all 2023 unique    all unique    1 -0.2749
    nw_jap
12 -0.3577
13 -0.2235
14  1.4150
15  1.0867
16  1.3172
17 -1.1901
18 -1.6850
19 -0.1396
20 -0.9855
21  0.0741
22  0.7156
23 -0.3774
24 -0.7581
25  1.3277
26  1.6444
27  0.2300
28 -0.5614
29 -1.2212
30 -0.3113
   quant year   unit season   area iter sw_eu_esp
1    all 2005 unique    all unique    1   -1.1832
2    all 2006 unique    all unique    1   -1.7146
3    all 2007 unique    all unique    1   -0.6989
4    all 2008 unique    all unique    1   -0.2509
5    all 2009 unique    all unique    1    1.0984
6    all 2010 unique    all unique    1   -0.4607
7    all 2011 unique    all unique    1   -0.8324
8    all 2012 unique    all unique    1    0.6362
9    all 2013 unique    all unique    1   -0.0563
10   all 2014 unique    all unique    1    0.1610
11   all 2015 unique    all unique    1    1.3451
12   all 2016 unique    all unique    1    0.3144
13   all 2017 unique    all unique    1   -1.1362
14   all 2018 unique    all unique    1   -0.6142
15   all 2019 unique    all unique    1    1.7311
16   all 2020 unique    all unique    1    1.5787
17   all 2021 unique    all unique    1   -0.0441
18   all 2022 unique    all unique    1   -0.7992
19   all 2023 unique    all unique    1    0.9257
    nw_jap
1  -0.3577
2  -0.2235
3   1.4150
4   1.0867
5   1.3172
6  -1.1901
7  -1.6850
8  -0.1396
9  -0.9855
10  0.0741
11  0.7156
12 -0.3774
13 -0.7581
14  1.3277
15  1.6444
16  0.2300
17 -0.5614
18 -1.2212
19 -0.3113
   quant year   unit season   area iter sw_eu_prt
6    all 2005 unique    all unique    1   -1.8022
7    all 2006 unique    all unique    1    0.0777
8    all 2007 unique    all unique    1    0.4965
9    all 2008 unique    all unique    1    2.0445
10   all 2009 unique    all unique    1   -1.2155
11   all 2010 unique    all unique    1   -0.6528
12   all 2011 unique    all unique    1   -0.1259
13   all 2012 unique    all unique    1   -0.4376
14   all 2013 unique    all unique    1   -0.5602
15   all 2014 unique    all unique    1   -1.3969
16   all 2015 unique    all unique    1    0.0420
17   all 2016 unique    all unique    1   -0.6606
18   all 2017 unique    all unique    1   -0.3904
19   all 2018 unique    all unique    1   -0.6615
20   all 2019 unique    all unique    1   -0.7436
21   all 2020 unique    all unique    1   -0.8468
22   all 2021 unique    all unique    1   -0.6191
23   all 2022 unique    all unique    1    0.9135
24   all 2023 unique    all unique    1    1.4027
    nw_jap
6  -0.3577
7  -0.2235
8   1.4150
9   1.0867
10  1.3172
11 -1.1901
12 -1.6850
13 -0.1396
14 -0.9855
15  0.0741
16  0.7156
17 -0.3774
18 -0.7581
19  1.3277
20  1.6444
21  0.2300
22 -0.5614
23 -1.2212
24 -0.3113
   quant year   unit season   area iter sw_eu_reu
1    all 2005 unique    all unique    1   -0.7679
2    all 2006 unique    all unique    1   -0.5150
3    all 2007 unique    all unique    1   -0.7406
4    all 2008 unique    all unique    1   -1.2145
5    all 2009 unique    all unique    1   -0.7588
6    all 2010 unique    all unique    1   -0.6244
7    all 2011 unique    all unique    1   -0.2097
8    all 2012 unique    all unique    1   -0.8818
9    all 2013 unique    all unique    1   -0.6791
10   all 2014 unique    all unique    1   -0.2576
11   all 2015 unique    all unique    1   -0.4376
12   all 2016 unique    all unique    1   -0.3054
13   all 2017 unique    all unique    1   -0.6517
14   all 2018 unique    all unique    1   -0.4900
15   all 2019 unique    all unique    1   -0.0912
16   all 2020 unique    all unique    1    0.5125
17   all 2021 unique    all unique    1    1.3236
18   all 2022 unique    all unique    1    1.2279
19   all 2023 unique    all unique    1    1.7451
    nw_jap
1  -0.3577
2  -0.2235
3   1.4150
4   1.0867
5   1.3172
6  -1.1901
7  -1.6850
8  -0.1396
9  -0.9855
10  0.0741
11  0.7156
12 -0.3774
13 -0.7581
14  1.3277
15  1.6444
16  0.2300
17 -0.5614
18 -1.2212
19 -0.3113
   quant year   unit season   area iter sw_jap
12   all 2005 unique    all unique    1 -1.035
13   all 2006 unique    all unique    1 -1.453
14   all 2007 unique    all unique    1 -0.846
15   all 2008 unique    all unique    1 -1.030
16   all 2009 unique    all unique    1 -0.946
17   all 2010 unique    all unique    1 -0.942
18   all 2011 unique    all unique    1 -1.089
19   all 2012 unique    all unique    1 -1.072
20   all 2013 unique    all unique    1 -0.593
21   all 2014 unique    all unique    1  0.372
22   all 2015 unique    all unique    1  0.509
23   all 2016 unique    all unique    1  1.928
24   all 2017 unique    all unique    1  0.457
25   all 2018 unique    all unique    1  0.625
26   all 2019 unique    all unique    1  0.913
27   all 2020 unique    all unique    1  1.555
28   all 2021 unique    all unique    1  1.079
29   all 2022 unique    all unique    1  0.994
30   all 2023 unique    all unique    1  0.597
    nw_jap
12 -0.3577
13 -0.2235
14  1.4150
15  1.0867
16  1.3172
17 -1.1901
18 -1.6850
19 -0.1396
20 -0.9855
21  0.0741
22  0.7156
23 -0.3774
24 -0.7581
25  1.3277
26  1.6444
27  0.2300
28 -0.5614
29 -1.2212
30 -0.3113
   quant year   unit season   area iter sw_twn
1    all 2005 unique    all unique    1 -1.554
2    all 2006 unique    all unique    1 -0.479
3    all 2007 unique    all unique    1 -0.731
4    all 2008 unique    all unique    1  0.554
5    all 2009 unique    all unique    1  0.331
6    all 2010 unique    all unique    1  0.186
7    all 2011 unique    all unique    1  0.522
8    all 2012 unique    all unique    1 -0.253
9    all 2013 unique    all unique    1 -0.444
10   all 2014 unique    all unique    1 -0.194
11   all 2015 unique    all unique    1 -1.247
12   all 2016 unique    all unique    1 -0.842
13   all 2017 unique    all unique    1 -1.332
14   all 2018 unique    all unique    1 -0.930
15   all 2019 unique    all unique    1  0.745
16   all 2020 unique    all unique    1  1.607
17   all 2021 unique    all unique    1  1.503
18   all 2022 unique    all unique    1  0.943
19   all 2023 unique    all unique    1  1.616
    nw_jap
1  -0.3577
2  -0.2235
3   1.4150
4   1.0867
5   1.3172
6  -1.1901
7  -1.6850
8  -0.1396
9  -0.9855
10  0.0741
11  0.7156
12 -0.3774
13 -0.7581
14  1.3277
15  1.6444
16  0.2300
17 -0.5614
18 -1.2212
19 -0.3113
   quant year   unit season   area iter  sw_zaf
12   all 2005 unique    all unique    1 -1.1221
13   all 2006 unique    all unique    1 -1.3236
14   all 2007 unique    all unique    1 -0.7660
15   all 2008 unique    all unique    1 -1.0195
16   all 2009 unique    all unique    1 -0.6750
17   all 2010 unique    all unique    1 -0.1069
18   all 2011 unique    all unique    1 -0.0435
19   all 2012 unique    all unique    1  0.0173
20   all 2013 unique    all unique    1 -1.0648
21   all 2014 unique    all unique    1 -1.2983
22   all 2015 unique    all unique    1  0.7031
23   all 2016 unique    all unique    1  0.8880
24   all 2017 unique    all unique    1  1.6972
25   all 2018 unique    all unique    1 -0.3508
26   all 2019 unique    all unique    1 -0.2486
27   all 2020 unique    all unique    1 -0.5227
28   all 2021 unique    all unique    1 -0.2518
29   all 2022 unique    all unique    1  0.3599
30   all 2023 unique    all unique    1 -0.2575
    nw_jap
12 -0.3577
13 -0.2235
14  1.4150
15  1.0867
16  1.3172
17 -1.1901
18 -1.6850
19 -0.1396
20 -0.9855
21  0.0741
22  0.7156
23 -0.3774
24 -0.7581
25  1.3277
26  1.6444
27  0.2300
28 -0.5614
29 -1.2212
30 -0.3113
   quant year   unit season   area iter  ne_idn
2    all 2005 unique    all unique    1  0.2266
3    all 2006 unique    all unique    1 -0.2762
4    all 2007 unique    all unique    1 -0.9047
5    all 2008 unique    all unique    1  0.6456
6    all 2009 unique    all unique    1 -0.9885
7    all 2010 unique    all unique    1 -0.0248
8    all 2011 unique    all unique    1  0.1009
9    all 2012 unique    all unique    1 -0.4438
10   all 2013 unique    all unique    1 -0.6952
11   all 2014 unique    all unique    1 -1.7427
12   all 2015 unique    all unique    1 -0.8628
13   all 2016 unique    all unique    1 -0.8628
14   all 2017 unique    all unique    1  0.5199
15   all 2018 unique    all unique    1 -0.6952
16   all 2019 unique    all unique    1 -0.5276
17   all 2020 unique    all unique    1 -0.4438
18   all 2021 unique    all unique    1  0.2685
19   all 2022 unique    all unique    1  1.5256
20   all 2023 unique    all unique    1  1.8608
     nw_twn
2   0.75802
3   3.46401
4   0.07256
5  -0.00501
6  -0.65830
7   0.18718
8  -0.28943
9  -0.48094
10 -0.74962
11 -1.25426
12 -1.19934
13 -0.67881
14 -0.30550
15 -0.08591
16  0.39915
17  0.11121
18 -0.08654
19  0.37017
20  0.43136
   quant year   unit season   area iter  ne_jap
2    all 2006 unique    all unique    1 -0.3216
3    all 2007 unique    all unique    1 -1.4675
4    all 2008 unique    all unique    1 -1.7240
5    all 2009 unique    all unique    1 -0.0799
6    all 2010 unique    all unique    1 -0.8613
7    all 2011 unique    all unique    1 -2.1918
8    all 2012 unique    all unique    1  0.2927
9    all 2013 unique    all unique    1 -0.1304
10   all 2014 unique    all unique    1  1.4072
11   all 2015 unique    all unique    1  0.6988
12   all 2016 unique    all unique    1  0.5559
13   all 2017 unique    all unique    1  1.2902
14   all 2018 unique    all unique    1  0.4971
15   all 2019 unique    all unique    1  0.4408
16   all 2020 unique    all unique    1  0.0310
17   all 2021 unique    all unique    1 -0.3542
18   all 2022 unique    all unique    1  0.2496
19   all 2023 unique    all unique    1  1.4052
     nw_twn
2   3.46401
3   0.07256
4  -0.00501
5  -0.65830
6   0.18718
7  -0.28943
8  -0.48094
9  -0.74962
10 -1.25426
11 -1.19934
12 -0.67881
13 -0.30550
14 -0.08591
15  0.39915
16  0.11121
17 -0.08654
18  0.37017
19  0.43136
   quant year   unit season   area iter ne_twn
5    all 2005 unique    all unique    1 -0.888
6    all 2006 unique    all unique    1 -1.492
7    all 2007 unique    all unique    1 -1.180
8    all 2008 unique    all unique    1 -0.470
9    all 2009 unique    all unique    1  0.266
10   all 2010 unique    all unique    1  0.890
11   all 2011 unique    all unique    1  0.569
12   all 2012 unique    all unique    1  0.786
13   all 2013 unique    all unique    1 -0.899
14   all 2014 unique    all unique    1 -1.730
15   all 2015 unique    all unique    1 -0.326
16   all 2016 unique    all unique    1  0.707
17   all 2017 unique    all unique    1  0.199
18   all 2018 unique    all unique    1 -0.521
19   all 2019 unique    all unique    1 -0.755
20   all 2020 unique    all unique    1 -1.610
21   all 2021 unique    all unique    1 -0.487
22   all 2022 unique    all unique    1  0.759
23   all 2023 unique    all unique    1  1.651
     nw_twn
5   0.75802
6   3.46401
7   0.07256
8  -0.00501
9  -0.65830
10  0.18718
11 -0.28943
12 -0.48094
13 -0.74962
14 -1.25426
15 -1.19934
16 -0.67881
17 -0.30550
18 -0.08591
19  0.39915
20  0.11121
21 -0.08654
22  0.37017
23  0.43136
   quant year   unit season   area iter  nw_jap
1    all 2005 unique    all unique    1 -0.3577
2    all 2006 unique    all unique    1 -0.2235
3    all 2007 unique    all unique    1  1.4150
4    all 2008 unique    all unique    1  1.0867
5    all 2009 unique    all unique    1  1.3172
6    all 2010 unique    all unique    1 -1.1901
7    all 2011 unique    all unique    1 -1.6850
8    all 2012 unique    all unique    1 -0.1396
9    all 2013 unique    all unique    1 -0.9855
10   all 2014 unique    all unique    1  0.0741
11   all 2015 unique    all unique    1  0.7156
12   all 2016 unique    all unique    1 -0.3774
13   all 2017 unique    all unique    1 -0.7581
14   all 2018 unique    all unique    1  1.3277
15   all 2019 unique    all unique    1  1.6444
16   all 2020 unique    all unique    1  0.2300
17   all 2021 unique    all unique    1 -0.5614
18   all 2022 unique    all unique    1 -1.2212
19   all 2023 unique    all unique    1 -0.3113
     nw_twn
1   0.75802
2   3.46401
3   0.07256
4  -0.00501
5  -0.65830
6   0.18718
7  -0.28943
8  -0.48094
9  -0.74962
10 -1.25426
11 -1.19934
12 -0.67881
13 -0.30550
14 -0.08591
15  0.39915
16  0.11121
17 -0.08654
18  0.37017
19  0.43136
   quant year   unit season   area iter   nw_twn
1    all 2005 unique    all unique    1  0.75802
2    all 2006 unique    all unique    1  3.46401
3    all 2007 unique    all unique    1  0.07256
4    all 2008 unique    all unique    1 -0.00501
5    all 2009 unique    all unique    1 -0.65830
6    all 2010 unique    all unique    1  0.18718
7    all 2011 unique    all unique    1 -0.28943
8    all 2012 unique    all unique    1 -0.48094
9    all 2013 unique    all unique    1 -0.74962
10   all 2014 unique    all unique    1 -1.25426
11   all 2015 unique    all unique    1 -1.19934
12   all 2016 unique    all unique    1 -0.67881
13   all 2017 unique    all unique    1 -0.30550
14   all 2018 unique    all unique    1 -0.08591
15   all 2019 unique    all unique    1  0.39915
16   all 2020 unique    all unique    1  0.11121
17   all 2021 unique    all unique    1 -0.08654
18   all 2022 unique    all unique    1  0.37017
19   all 2023 unique    all unique    1  0.43136
   nw_twn.1
1   0.75802
2   3.46401
3   0.07256
4  -0.00501
5  -0.65830
6   0.18718
7  -0.28943
8  -0.48094
9  -0.74962
10 -1.25426
11 -1.19934
12 -0.67881
13 -0.30550
14 -0.08591
15  0.39915
16  0.11121
17 -0.08654
18  0.37017
19  0.43136
   quant year   unit season   area iter se_jap
12   all 2005 unique    all unique    1 -0.810
13   all 2006 unique    all unique    1 -0.533
14   all 2007 unique    all unique    1 -1.153
15   all 2008 unique    all unique    1 -0.694
16   all 2009 unique    all unique    1  0.358
17   all 2010 unique    all unique    1  0.189
18   all 2011 unique    all unique    1  0.282
19   all 2012 unique    all unique    1 -0.196
20   all 2013 unique    all unique    1 -0.480
21   all 2014 unique    all unique    1 -0.798
22   all 2015 unique    all unique    1 -0.548
23   all 2016 unique    all unique    1  0.616
24   all 2017 unique    all unique    1  0.777
25   all 2018 unique    all unique    1  0.370
26   all 2019 unique    all unique    1  0.480
27   all 2020 unique    all unique    1  0.216
28   all 2021 unique    all unique    1 -0.384
29   all 2022 unique    all unique    1  0.405
30   all 2023 unique    all unique    1  0.764
     nw_twn
12  0.75802
13  3.46401
14  0.07256
15 -0.00501
16 -0.65830
17  0.18718
18 -0.28943
19 -0.48094
20 -0.74962
21 -1.25426
22 -1.19934
23 -0.67881
24 -0.30550
25 -0.08591
26  0.39915
27  0.11121
28 -0.08654
29  0.37017
30  0.43136
   quant year   unit season   area iter  se_twn
12   all 2005 unique    all unique    1 -1.1521
13   all 2006 unique    all unique    1 -0.1705
14   all 2007 unique    all unique    1  0.5810
15   all 2008 unique    all unique    1 -0.0990
16   all 2009 unique    all unique    1 -0.6588
17   all 2010 unique    all unique    1 -0.2970
18   all 2011 unique    all unique    1  0.3387
19   all 2012 unique    all unique    1 -0.3204
20   all 2013 unique    all unique    1  0.2119
21   all 2014 unique    all unique    1  0.5040
22   all 2015 unique    all unique    1  0.0653
23   all 2016 unique    all unique    1 -1.3741
24   all 2017 unique    all unique    1 -1.5295
25   all 2018 unique    all unique    1 -1.4175
26   all 2019 unique    all unique    1 -1.6166
27   all 2020 unique    all unique    1 -0.2857
28   all 2021 unique    all unique    1 -1.1585
29   all 2022 unique    all unique    1 -1.0361
30   all 2023 unique    all unique    1 -0.2749
     nw_twn
12  0.75802
13  3.46401
14  0.07256
15 -0.00501
16 -0.65830
17  0.18718
18 -0.28943
19 -0.48094
20 -0.74962
21 -1.25426
22 -1.19934
23 -0.67881
24 -0.30550
25 -0.08591
26  0.39915
27  0.11121
28 -0.08654
29  0.37017
30  0.43136
   quant year   unit season   area iter sw_eu_esp
1    all 2005 unique    all unique    1   -1.1832
2    all 2006 unique    all unique    1   -1.7146
3    all 2007 unique    all unique    1   -0.6989
4    all 2008 unique    all unique    1   -0.2509
5    all 2009 unique    all unique    1    1.0984
6    all 2010 unique    all unique    1   -0.4607
7    all 2011 unique    all unique    1   -0.8324
8    all 2012 unique    all unique    1    0.6362
9    all 2013 unique    all unique    1   -0.0563
10   all 2014 unique    all unique    1    0.1610
11   all 2015 unique    all unique    1    1.3451
12   all 2016 unique    all unique    1    0.3144
13   all 2017 unique    all unique    1   -1.1362
14   all 2018 unique    all unique    1   -0.6142
15   all 2019 unique    all unique    1    1.7311
16   all 2020 unique    all unique    1    1.5787
17   all 2021 unique    all unique    1   -0.0441
18   all 2022 unique    all unique    1   -0.7992
19   all 2023 unique    all unique    1    0.9257
     nw_twn
1   0.75802
2   3.46401
3   0.07256
4  -0.00501
5  -0.65830
6   0.18718
7  -0.28943
8  -0.48094
9  -0.74962
10 -1.25426
11 -1.19934
12 -0.67881
13 -0.30550
14 -0.08591
15  0.39915
16  0.11121
17 -0.08654
18  0.37017
19  0.43136
   quant year   unit season   area iter sw_eu_prt
6    all 2005 unique    all unique    1   -1.8022
7    all 2006 unique    all unique    1    0.0777
8    all 2007 unique    all unique    1    0.4965
9    all 2008 unique    all unique    1    2.0445
10   all 2009 unique    all unique    1   -1.2155
11   all 2010 unique    all unique    1   -0.6528
12   all 2011 unique    all unique    1   -0.1259
13   all 2012 unique    all unique    1   -0.4376
14   all 2013 unique    all unique    1   -0.5602
15   all 2014 unique    all unique    1   -1.3969
16   all 2015 unique    all unique    1    0.0420
17   all 2016 unique    all unique    1   -0.6606
18   all 2017 unique    all unique    1   -0.3904
19   all 2018 unique    all unique    1   -0.6615
20   all 2019 unique    all unique    1   -0.7436
21   all 2020 unique    all unique    1   -0.8468
22   all 2021 unique    all unique    1   -0.6191
23   all 2022 unique    all unique    1    0.9135
24   all 2023 unique    all unique    1    1.4027
     nw_twn
6   0.75802
7   3.46401
8   0.07256
9  -0.00501
10 -0.65830
11  0.18718
12 -0.28943
13 -0.48094
14 -0.74962
15 -1.25426
16 -1.19934
17 -0.67881
18 -0.30550
19 -0.08591
20  0.39915
21  0.11121
22 -0.08654
23  0.37017
24  0.43136
   quant year   unit season   area iter sw_eu_reu
1    all 2005 unique    all unique    1   -0.7679
2    all 2006 unique    all unique    1   -0.5150
3    all 2007 unique    all unique    1   -0.7406
4    all 2008 unique    all unique    1   -1.2145
5    all 2009 unique    all unique    1   -0.7588
6    all 2010 unique    all unique    1   -0.6244
7    all 2011 unique    all unique    1   -0.2097
8    all 2012 unique    all unique    1   -0.8818
9    all 2013 unique    all unique    1   -0.6791
10   all 2014 unique    all unique    1   -0.2576
11   all 2015 unique    all unique    1   -0.4376
12   all 2016 unique    all unique    1   -0.3054
13   all 2017 unique    all unique    1   -0.6517
14   all 2018 unique    all unique    1   -0.4900
15   all 2019 unique    all unique    1   -0.0912
16   all 2020 unique    all unique    1    0.5125
17   all 2021 unique    all unique    1    1.3236
18   all 2022 unique    all unique    1    1.2279
19   all 2023 unique    all unique    1    1.7451
     nw_twn
1   0.75802
2   3.46401
3   0.07256
4  -0.00501
5  -0.65830
6   0.18718
7  -0.28943
8  -0.48094
9  -0.74962
10 -1.25426
11 -1.19934
12 -0.67881
13 -0.30550
14 -0.08591
15  0.39915
16  0.11121
17 -0.08654
18  0.37017
19  0.43136
   quant year   unit season   area iter sw_jap
12   all 2005 unique    all unique    1 -1.035
13   all 2006 unique    all unique    1 -1.453
14   all 2007 unique    all unique    1 -0.846
15   all 2008 unique    all unique    1 -1.030
16   all 2009 unique    all unique    1 -0.946
17   all 2010 unique    all unique    1 -0.942
18   all 2011 unique    all unique    1 -1.089
19   all 2012 unique    all unique    1 -1.072
20   all 2013 unique    all unique    1 -0.593
21   all 2014 unique    all unique    1  0.372
22   all 2015 unique    all unique    1  0.509
23   all 2016 unique    all unique    1  1.928
24   all 2017 unique    all unique    1  0.457
25   all 2018 unique    all unique    1  0.625
26   all 2019 unique    all unique    1  0.913
27   all 2020 unique    all unique    1  1.555
28   all 2021 unique    all unique    1  1.079
29   all 2022 unique    all unique    1  0.994
30   all 2023 unique    all unique    1  0.597
     nw_twn
12  0.75802
13  3.46401
14  0.07256
15 -0.00501
16 -0.65830
17  0.18718
18 -0.28943
19 -0.48094
20 -0.74962
21 -1.25426
22 -1.19934
23 -0.67881
24 -0.30550
25 -0.08591
26  0.39915
27  0.11121
28 -0.08654
29  0.37017
30  0.43136
   quant year   unit season   area iter sw_twn
1    all 2005 unique    all unique    1 -1.554
2    all 2006 unique    all unique    1 -0.479
3    all 2007 unique    all unique    1 -0.731
4    all 2008 unique    all unique    1  0.554
5    all 2009 unique    all unique    1  0.331
6    all 2010 unique    all unique    1  0.186
7    all 2011 unique    all unique    1  0.522
8    all 2012 unique    all unique    1 -0.253
9    all 2013 unique    all unique    1 -0.444
10   all 2014 unique    all unique    1 -0.194
11   all 2015 unique    all unique    1 -1.247
12   all 2016 unique    all unique    1 -0.842
13   all 2017 unique    all unique    1 -1.332
14   all 2018 unique    all unique    1 -0.930
15   all 2019 unique    all unique    1  0.745
16   all 2020 unique    all unique    1  1.607
17   all 2021 unique    all unique    1  1.503
18   all 2022 unique    all unique    1  0.943
19   all 2023 unique    all unique    1  1.616
     nw_twn
1   0.75802
2   3.46401
3   0.07256
4  -0.00501
5  -0.65830
6   0.18718
7  -0.28943
8  -0.48094
9  -0.74962
10 -1.25426
11 -1.19934
12 -0.67881
13 -0.30550
14 -0.08591
15  0.39915
16  0.11121
17 -0.08654
18  0.37017
19  0.43136
   quant year   unit season   area iter  sw_zaf
12   all 2005 unique    all unique    1 -1.1221
13   all 2006 unique    all unique    1 -1.3236
14   all 2007 unique    all unique    1 -0.7660
15   all 2008 unique    all unique    1 -1.0195
16   all 2009 unique    all unique    1 -0.6750
17   all 2010 unique    all unique    1 -0.1069
18   all 2011 unique    all unique    1 -0.0435
19   all 2012 unique    all unique    1  0.0173
20   all 2013 unique    all unique    1 -1.0648
21   all 2014 unique    all unique    1 -1.2983
22   all 2015 unique    all unique    1  0.7031
23   all 2016 unique    all unique    1  0.8880
24   all 2017 unique    all unique    1  1.6972
25   all 2018 unique    all unique    1 -0.3508
26   all 2019 unique    all unique    1 -0.2486
27   all 2020 unique    all unique    1 -0.5227
28   all 2021 unique    all unique    1 -0.2518
29   all 2022 unique    all unique    1  0.3599
30   all 2023 unique    all unique    1 -0.2575
     nw_twn
12  0.75802
13  3.46401
14  0.07256
15 -0.00501
16 -0.65830
17  0.18718
18 -0.28943
19 -0.48094
20 -0.74962
21 -1.25426
22 -1.19934
23 -0.67881
24 -0.30550
25 -0.08591
26  0.39915
27  0.11121
28 -0.08654
29  0.37017
30  0.43136
   quant year   unit season   area iter  ne_idn
11   all 2004 unique    all unique    1  0.0171
12   all 2005 unique    all unique    1  0.2266
13   all 2006 unique    all unique    1 -0.2762
14   all 2007 unique    all unique    1 -0.9047
15   all 2008 unique    all unique    1  0.6456
16   all 2009 unique    all unique    1 -0.9885
17   all 2010 unique    all unique    1 -0.0248
18   all 2011 unique    all unique    1  0.1009
19   all 2012 unique    all unique    1 -0.4438
20   all 2013 unique    all unique    1 -0.6952
21   all 2014 unique    all unique    1 -1.7427
22   all 2015 unique    all unique    1 -0.8628
23   all 2016 unique    all unique    1 -0.8628
24   all 2017 unique    all unique    1  0.5199
25   all 2018 unique    all unique    1 -0.6952
26   all 2019 unique    all unique    1 -0.5276
27   all 2020 unique    all unique    1 -0.4438
28   all 2021 unique    all unique    1  0.2685
29   all 2022 unique    all unique    1  1.5256
30   all 2023 unique    all unique    1  1.8608
31   all 2024 unique    all unique    1  0.9809
   se_jap
11 -1.009
12 -0.810
13 -0.533
14 -1.153
15 -0.694
16  0.358
17  0.189
18  0.282
19 -0.196
20 -0.480
21 -0.798
22 -0.548
23  0.616
24  0.777
25  0.370
26  0.480
27  0.216
28 -0.384
29  0.405
30  0.764
31  1.222
   quant year   unit season   area iter  ne_jap
13   all 2006 unique    all unique    1 -0.3216
14   all 2007 unique    all unique    1 -1.4675
15   all 2008 unique    all unique    1 -1.7240
16   all 2009 unique    all unique    1 -0.0799
17   all 2010 unique    all unique    1 -0.8613
18   all 2011 unique    all unique    1 -2.1918
19   all 2012 unique    all unique    1  0.2927
20   all 2013 unique    all unique    1 -0.1304
21   all 2014 unique    all unique    1  1.4072
22   all 2015 unique    all unique    1  0.6988
23   all 2016 unique    all unique    1  0.5559
24   all 2017 unique    all unique    1  1.2902
25   all 2018 unique    all unique    1  0.4971
26   all 2019 unique    all unique    1  0.4408
27   all 2020 unique    all unique    1  0.0310
28   all 2021 unique    all unique    1 -0.3542
29   all 2022 unique    all unique    1  0.2496
30   all 2023 unique    all unique    1  1.4052
31   all 2024 unique    all unique    1  0.2622
   se_jap
13 -0.533
14 -1.153
15 -0.694
16  0.358
17  0.189
18  0.282
19 -0.196
20 -0.480
21 -0.798
22 -0.548
23  0.616
24  0.777
25  0.370
26  0.480
27  0.216
28 -0.384
29  0.405
30  0.764
31  1.222
   quant year   unit season   area iter ne_twn
8    all 2001 unique    all unique    1  0.779
9    all 2002 unique    all unique    1  0.265
10   all 2003 unique    all unique    1  1.615
11   all 2004 unique    all unique    1  0.690
12   all 2005 unique    all unique    1 -0.888
13   all 2006 unique    all unique    1 -1.492
14   all 2007 unique    all unique    1 -1.180
15   all 2008 unique    all unique    1 -0.470
16   all 2009 unique    all unique    1  0.266
17   all 2010 unique    all unique    1  0.890
18   all 2011 unique    all unique    1  0.569
19   all 2012 unique    all unique    1  0.786
20   all 2013 unique    all unique    1 -0.899
21   all 2014 unique    all unique    1 -1.730
22   all 2015 unique    all unique    1 -0.326
23   all 2016 unique    all unique    1  0.707
24   all 2017 unique    all unique    1  0.199
25   all 2018 unique    all unique    1 -0.521
26   all 2019 unique    all unique    1 -0.755
27   all 2020 unique    all unique    1 -1.610
28   all 2021 unique    all unique    1 -0.487
29   all 2022 unique    all unique    1  0.759
30   all 2023 unique    all unique    1  1.651
31   all 2024 unique    all unique    1  1.180
   se_jap
8  -1.204
9  -1.196
10 -1.508
11 -1.009
12 -0.810
13 -0.533
14 -1.153
15 -0.694
16  0.358
17  0.189
18  0.282
19 -0.196
20 -0.480
21 -0.798
22 -0.548
23  0.616
24  0.777
25  0.370
26  0.480
27  0.216
28 -0.384
29  0.405
30  0.764
31  1.222
   quant year   unit season   area iter  nw_jap
12   all 2005 unique    all unique    1 -0.3577
13   all 2006 unique    all unique    1 -0.2235
14   all 2007 unique    all unique    1  1.4150
15   all 2008 unique    all unique    1  1.0867
16   all 2009 unique    all unique    1  1.3172
17   all 2010 unique    all unique    1 -1.1901
18   all 2011 unique    all unique    1 -1.6850
19   all 2012 unique    all unique    1 -0.1396
20   all 2013 unique    all unique    1 -0.9855
21   all 2014 unique    all unique    1  0.0741
22   all 2015 unique    all unique    1  0.7156
23   all 2016 unique    all unique    1 -0.3774
24   all 2017 unique    all unique    1 -0.7581
25   all 2018 unique    all unique    1  1.3277
26   all 2019 unique    all unique    1  1.6444
27   all 2020 unique    all unique    1  0.2300
28   all 2021 unique    all unique    1 -0.5614
29   all 2022 unique    all unique    1 -1.2212
30   all 2023 unique    all unique    1 -0.3113
   se_jap
12 -0.810
13 -0.533
14 -1.153
15 -0.694
16  0.358
17  0.189
18  0.282
19 -0.196
20 -0.480
21 -0.798
22 -0.548
23  0.616
24  0.777
25  0.370
26  0.480
27  0.216
28 -0.384
29  0.405
30  0.764
   quant year   unit season   area iter   nw_twn
12   all 2005 unique    all unique    1  0.75802
13   all 2006 unique    all unique    1  3.46401
14   all 2007 unique    all unique    1  0.07256
15   all 2008 unique    all unique    1 -0.00501
16   all 2009 unique    all unique    1 -0.65830
17   all 2010 unique    all unique    1  0.18718
18   all 2011 unique    all unique    1 -0.28943
19   all 2012 unique    all unique    1 -0.48094
20   all 2013 unique    all unique    1 -0.74962
21   all 2014 unique    all unique    1 -1.25426
22   all 2015 unique    all unique    1 -1.19934
23   all 2016 unique    all unique    1 -0.67881
24   all 2017 unique    all unique    1 -0.30550
25   all 2018 unique    all unique    1 -0.08591
26   all 2019 unique    all unique    1  0.39915
27   all 2020 unique    all unique    1  0.11121
28   all 2021 unique    all unique    1 -0.08654
29   all 2022 unique    all unique    1  0.37017
30   all 2023 unique    all unique    1  0.43136
   se_jap
12 -0.810
13 -0.533
14 -1.153
15 -0.694
16  0.358
17  0.189
18  0.282
19 -0.196
20 -0.480
21 -0.798
22 -0.548
23  0.616
24  0.777
25  0.370
26  0.480
27  0.216
28 -0.384
29  0.405
30  0.764
   quant year   unit season   area iter se_jap
1    all 1994 unique    all unique    1  3.292
2    all 1995 unique    all unique    1  1.251
3    all 1996 unique    all unique    1  1.081
4    all 1997 unique    all unique    1  0.955
5    all 1998 unique    all unique    1 -0.113
6    all 1999 unique    all unique    1 -0.716
7    all 2000 unique    all unique    1 -0.916
8    all 2001 unique    all unique    1 -1.204
9    all 2002 unique    all unique    1 -1.196
10   all 2003 unique    all unique    1 -1.508
11   all 2004 unique    all unique    1 -1.009
12   all 2005 unique    all unique    1 -0.810
13   all 2006 unique    all unique    1 -0.533
14   all 2007 unique    all unique    1 -1.153
15   all 2008 unique    all unique    1 -0.694
16   all 2009 unique    all unique    1  0.358
17   all 2010 unique    all unique    1  0.189
18   all 2011 unique    all unique    1  0.282
19   all 2012 unique    all unique    1 -0.196
20   all 2013 unique    all unique    1 -0.480
21   all 2014 unique    all unique    1 -0.798
22   all 2015 unique    all unique    1 -0.548
23   all 2016 unique    all unique    1  0.616
24   all 2017 unique    all unique    1  0.777
25   all 2018 unique    all unique    1  0.370
26   all 2019 unique    all unique    1  0.480
27   all 2020 unique    all unique    1  0.216
28   all 2021 unique    all unique    1 -0.384
29   all 2022 unique    all unique    1  0.405
30   all 2023 unique    all unique    1  0.764
31   all 2024 unique    all unique    1  1.222
   se_jap.1
1     3.292
2     1.251
3     1.081
4     0.955
5    -0.113
6    -0.716
7    -0.916
8    -1.204
9    -1.196
10   -1.508
11   -1.009
12   -0.810
13   -0.533
14   -1.153
15   -0.694
16    0.358
17    0.189
18    0.282
19   -0.196
20   -0.480
21   -0.798
22   -0.548
23    0.616
24    0.777
25    0.370
26    0.480
27    0.216
28   -0.384
29    0.405
30    0.764
31    1.222
   quant year   unit season   area iter  se_twn
1    all 1994 unique    all unique    1  0.9343
2    all 1995 unique    all unique    1  1.0663
3    all 1996 unique    all unique    1  1.4201
4    all 1997 unique    all unique    1  2.2364
5    all 1998 unique    all unique    1  1.0395
6    all 1999 unique    all unique    1  1.6709
7    all 2000 unique    all unique    1  1.4017
8    all 2001 unique    all unique    1 -0.2304
9    all 2002 unique    all unique    1  0.4142
10   all 2003 unique    all unique    1  0.2000
11   all 2004 unique    all unique    1  0.3130
12   all 2005 unique    all unique    1 -1.1521
13   all 2006 unique    all unique    1 -0.1705
14   all 2007 unique    all unique    1  0.5810
15   all 2008 unique    all unique    1 -0.0990
16   all 2009 unique    all unique    1 -0.6588
17   all 2010 unique    all unique    1 -0.2970
18   all 2011 unique    all unique    1  0.3387
19   all 2012 unique    all unique    1 -0.3204
20   all 2013 unique    all unique    1  0.2119
21   all 2014 unique    all unique    1  0.5040
22   all 2015 unique    all unique    1  0.0653
23   all 2016 unique    all unique    1 -1.3741
24   all 2017 unique    all unique    1 -1.5295
25   all 2018 unique    all unique    1 -1.4175
26   all 2019 unique    all unique    1 -1.6166
27   all 2020 unique    all unique    1 -0.2857
28   all 2021 unique    all unique    1 -1.1585
29   all 2022 unique    all unique    1 -1.0361
30   all 2023 unique    all unique    1 -0.2749
31   all 2024 unique    all unique    1 -0.7763
   se_jap
1   3.292
2   1.251
3   1.081
4   0.955
5  -0.113
6  -0.716
7  -0.916
8  -1.204
9  -1.196
10 -1.508
11 -1.009
12 -0.810
13 -0.533
14 -1.153
15 -0.694
16  0.358
17  0.189
18  0.282
19 -0.196
20 -0.480
21 -0.798
22 -0.548
23  0.616
24  0.777
25  0.370
26  0.480
27  0.216
28 -0.384
29  0.405
30  0.764
31  1.222
   quant year   unit season   area iter sw_eu_esp
12   all 2005 unique    all unique    1   -1.1832
13   all 2006 unique    all unique    1   -1.7146
14   all 2007 unique    all unique    1   -0.6989
15   all 2008 unique    all unique    1   -0.2509
16   all 2009 unique    all unique    1    1.0984
17   all 2010 unique    all unique    1   -0.4607
18   all 2011 unique    all unique    1   -0.8324
19   all 2012 unique    all unique    1    0.6362
20   all 2013 unique    all unique    1   -0.0563
21   all 2014 unique    all unique    1    0.1610
22   all 2015 unique    all unique    1    1.3451
23   all 2016 unique    all unique    1    0.3144
24   all 2017 unique    all unique    1   -1.1362
25   all 2018 unique    all unique    1   -0.6142
26   all 2019 unique    all unique    1    1.7311
27   all 2020 unique    all unique    1    1.5787
28   all 2021 unique    all unique    1   -0.0441
29   all 2022 unique    all unique    1   -0.7992
30   all 2023 unique    all unique    1    0.9257
   se_jap
12 -0.810
13 -0.533
14 -1.153
15 -0.694
16  0.358
17  0.189
18  0.282
19 -0.196
20 -0.480
21 -0.798
22 -0.548
23  0.616
24  0.777
25  0.370
26  0.480
27  0.216
28 -0.384
29  0.405
30  0.764
   quant year   unit season   area iter sw_eu_prt
7    all 2000 unique    all unique    1    1.1036
8    all 2001 unique    all unique    1    1.0273
9    all 2002 unique    all unique    1    1.0650
10   all 2003 unique    all unique    1    0.8121
11   all 2004 unique    all unique    1   -0.3730
12   all 2005 unique    all unique    1   -1.8022
13   all 2006 unique    all unique    1    0.0777
14   all 2007 unique    all unique    1    0.4965
15   all 2008 unique    all unique    1    2.0445
16   all 2009 unique    all unique    1   -1.2155
17   all 2010 unique    all unique    1   -0.6528
18   all 2011 unique    all unique    1   -0.1259
19   all 2012 unique    all unique    1   -0.4376
20   all 2013 unique    all unique    1   -0.5602
21   all 2014 unique    all unique    1   -1.3969
22   all 2015 unique    all unique    1    0.0420
23   all 2016 unique    all unique    1   -0.6606
24   all 2017 unique    all unique    1   -0.3904
25   all 2018 unique    all unique    1   -0.6615
26   all 2019 unique    all unique    1   -0.7436
27   all 2020 unique    all unique    1   -0.8468
28   all 2021 unique    all unique    1   -0.6191
29   all 2022 unique    all unique    1    0.9135
30   all 2023 unique    all unique    1    1.4027
31   all 2024 unique    all unique    1    1.5012
   se_jap
7  -0.916
8  -1.204
9  -1.196
10 -1.508
11 -1.009
12 -0.810
13 -0.533
14 -1.153
15 -0.694
16  0.358
17  0.189
18  0.282
19 -0.196
20 -0.480
21 -0.798
22 -0.548
23  0.616
24  0.777
25  0.370
26  0.480
27  0.216
28 -0.384
29  0.405
30  0.764
31  1.222
   quant year   unit season   area iter sw_eu_reu
12   all 2005 unique    all unique    1   -0.7679
13   all 2006 unique    all unique    1   -0.5150
14   all 2007 unique    all unique    1   -0.7406
15   all 2008 unique    all unique    1   -1.2145
16   all 2009 unique    all unique    1   -0.7588
17   all 2010 unique    all unique    1   -0.6244
18   all 2011 unique    all unique    1   -0.2097
19   all 2012 unique    all unique    1   -0.8818
20   all 2013 unique    all unique    1   -0.6791
21   all 2014 unique    all unique    1   -0.2576
22   all 2015 unique    all unique    1   -0.4376
23   all 2016 unique    all unique    1   -0.3054
24   all 2017 unique    all unique    1   -0.6517
25   all 2018 unique    all unique    1   -0.4900
26   all 2019 unique    all unique    1   -0.0912
27   all 2020 unique    all unique    1    0.5125
28   all 2021 unique    all unique    1    1.3236
29   all 2022 unique    all unique    1    1.2279
30   all 2023 unique    all unique    1    1.7451
31   all 2024 unique    all unique    1    1.9023
   se_jap
12 -0.810
13 -0.533
14 -1.153
15 -0.694
16  0.358
17  0.189
18  0.282
19 -0.196
20 -0.480
21 -0.798
22 -0.548
23  0.616
24  0.777
25  0.370
26  0.480
27  0.216
28 -0.384
29  0.405
30  0.764
31  1.222
   quant year   unit season   area iter sw_jap
1    all 1994 unique    all unique    1  0.722
2    all 1995 unique    all unique    1  0.319
3    all 1996 unique    all unique    1  0.824
4    all 1997 unique    all unique    1  1.049
5    all 1998 unique    all unique    1  0.471
6    all 1999 unique    all unique    1  0.305
7    all 2000 unique    all unique    1 -0.652
8    all 2001 unique    all unique    1 -1.055
9    all 2002 unique    all unique    1 -1.251
10   all 2003 unique    all unique    1 -0.665
11   all 2004 unique    all unique    1 -1.430
12   all 2005 unique    all unique    1 -1.035
13   all 2006 unique    all unique    1 -1.453
14   all 2007 unique    all unique    1 -0.846
15   all 2008 unique    all unique    1 -1.030
16   all 2009 unique    all unique    1 -0.946
17   all 2010 unique    all unique    1 -0.942
18   all 2011 unique    all unique    1 -1.089
19   all 2012 unique    all unique    1 -1.072
20   all 2013 unique    all unique    1 -0.593
21   all 2014 unique    all unique    1  0.372
22   all 2015 unique    all unique    1  0.509
23   all 2016 unique    all unique    1  1.928
24   all 2017 unique    all unique    1  0.457
25   all 2018 unique    all unique    1  0.625
26   all 2019 unique    all unique    1  0.913
27   all 2020 unique    all unique    1  1.555
28   all 2021 unique    all unique    1  1.079
29   all 2022 unique    all unique    1  0.994
30   all 2023 unique    all unique    1  0.597
31   all 2024 unique    all unique    1  1.339
   se_jap
1   3.292
2   1.251
3   1.081
4   0.955
5  -0.113
6  -0.716
7  -0.916
8  -1.204
9  -1.196
10 -1.508
11 -1.009
12 -0.810
13 -0.533
14 -1.153
15 -0.694
16  0.358
17  0.189
18  0.282
19 -0.196
20 -0.480
21 -0.798
22 -0.548
23  0.616
24  0.777
25  0.370
26  0.480
27  0.216
28 -0.384
29  0.405
30  0.764
31  1.222
   quant year   unit season   area iter sw_twn
12   all 2005 unique    all unique    1 -1.554
13   all 2006 unique    all unique    1 -0.479
14   all 2007 unique    all unique    1 -0.731
15   all 2008 unique    all unique    1  0.554
16   all 2009 unique    all unique    1  0.331
17   all 2010 unique    all unique    1  0.186
18   all 2011 unique    all unique    1  0.522
19   all 2012 unique    all unique    1 -0.253
20   all 2013 unique    all unique    1 -0.444
21   all 2014 unique    all unique    1 -0.194
22   all 2015 unique    all unique    1 -1.247
23   all 2016 unique    all unique    1 -0.842
24   all 2017 unique    all unique    1 -1.332
25   all 2018 unique    all unique    1 -0.930
26   all 2019 unique    all unique    1  0.745
27   all 2020 unique    all unique    1  1.607
28   all 2021 unique    all unique    1  1.503
29   all 2022 unique    all unique    1  0.943
30   all 2023 unique    all unique    1  1.616
   se_jap
12 -0.810
13 -0.533
14 -1.153
15 -0.694
16  0.358
17  0.189
18  0.282
19 -0.196
20 -0.480
21 -0.798
22 -0.548
23  0.616
24  0.777
25  0.370
26  0.480
27  0.216
28 -0.384
29  0.405
30  0.764
   quant year   unit season   area iter  sw_zaf
1    all 1994 unique    all unique    1  3.2533
2    all 1995 unique    all unique    1  1.6007
3    all 1996 unique    all unique    1  0.7542
4    all 1997 unique    all unique    1  0.7176
5    all 1998 unique    all unique    1  0.8980
6    all 1999 unique    all unique    1 -0.2246
7    all 2000 unique    all unique    1 -0.3396
8    all 2001 unique    all unique    1  0.5088
9    all 2002 unique    all unique    1  0.1789
10   all 2003 unique    all unique    1 -0.7160
11   all 2004 unique    all unique    1 -1.0768
12   all 2005 unique    all unique    1 -1.1221
13   all 2006 unique    all unique    1 -1.3236
14   all 2007 unique    all unique    1 -0.7660
15   all 2008 unique    all unique    1 -1.0195
16   all 2009 unique    all unique    1 -0.6750
17   all 2010 unique    all unique    1 -0.1069
18   all 2011 unique    all unique    1 -0.0435
19   all 2012 unique    all unique    1  0.0173
20   all 2013 unique    all unique    1 -1.0648
21   all 2014 unique    all unique    1 -1.2983
22   all 2015 unique    all unique    1  0.7031
23   all 2016 unique    all unique    1  0.8880
24   all 2017 unique    all unique    1  1.6972
25   all 2018 unique    all unique    1 -0.3508
26   all 2019 unique    all unique    1 -0.2486
27   all 2020 unique    all unique    1 -0.5227
28   all 2021 unique    all unique    1 -0.2518
29   all 2022 unique    all unique    1  0.3599
30   all 2023 unique    all unique    1 -0.2575
31   all 2024 unique    all unique    1 -0.1691
   se_jap
1   3.292
2   1.251
3   1.081
4   0.955
5  -0.113
6  -0.716
7  -0.916
8  -1.204
9  -1.196
10 -1.508
11 -1.009
12 -0.810
13 -0.533
14 -1.153
15 -0.694
16  0.358
17  0.189
18  0.282
19 -0.196
20 -0.480
21 -0.798
22 -0.548
23  0.616
24  0.777
25  0.370
26  0.480
27  0.216
28 -0.384
29  0.405
30  0.764
31  1.222
   quant year   unit season   area iter  ne_idn
11   all 2004 unique    all unique    1  0.0171
12   all 2005 unique    all unique    1  0.2266
13   all 2006 unique    all unique    1 -0.2762
14   all 2007 unique    all unique    1 -0.9047
15   all 2008 unique    all unique    1  0.6456
16   all 2009 unique    all unique    1 -0.9885
17   all 2010 unique    all unique    1 -0.0248
18   all 2011 unique    all unique    1  0.1009
19   all 2012 unique    all unique    1 -0.4438
20   all 2013 unique    all unique    1 -0.6952
21   all 2014 unique    all unique    1 -1.7427
22   all 2015 unique    all unique    1 -0.8628
23   all 2016 unique    all unique    1 -0.8628
24   all 2017 unique    all unique    1  0.5199
25   all 2018 unique    all unique    1 -0.6952
26   all 2019 unique    all unique    1 -0.5276
27   all 2020 unique    all unique    1 -0.4438
28   all 2021 unique    all unique    1  0.2685
29   all 2022 unique    all unique    1  1.5256
30   all 2023 unique    all unique    1  1.8608
31   all 2024 unique    all unique    1  0.9809
    se_twn
11  0.3130
12 -1.1521
13 -0.1705
14  0.5810
15 -0.0990
16 -0.6588
17 -0.2970
18  0.3387
19 -0.3204
20  0.2119
21  0.5040
22  0.0653
23 -1.3741
24 -1.5295
25 -1.4175
26 -1.6166
27 -0.2857
28 -1.1585
29 -1.0361
30 -0.2749
31 -0.7763
   quant year   unit season   area iter  ne_jap
13   all 2006 unique    all unique    1 -0.3216
14   all 2007 unique    all unique    1 -1.4675
15   all 2008 unique    all unique    1 -1.7240
16   all 2009 unique    all unique    1 -0.0799
17   all 2010 unique    all unique    1 -0.8613
18   all 2011 unique    all unique    1 -2.1918
19   all 2012 unique    all unique    1  0.2927
20   all 2013 unique    all unique    1 -0.1304
21   all 2014 unique    all unique    1  1.4072
22   all 2015 unique    all unique    1  0.6988
23   all 2016 unique    all unique    1  0.5559
24   all 2017 unique    all unique    1  1.2902
25   all 2018 unique    all unique    1  0.4971
26   all 2019 unique    all unique    1  0.4408
27   all 2020 unique    all unique    1  0.0310
28   all 2021 unique    all unique    1 -0.3542
29   all 2022 unique    all unique    1  0.2496
30   all 2023 unique    all unique    1  1.4052
31   all 2024 unique    all unique    1  0.2622
    se_twn
13 -0.1705
14  0.5810
15 -0.0990
16 -0.6588
17 -0.2970
18  0.3387
19 -0.3204
20  0.2119
21  0.5040
22  0.0653
23 -1.3741
24 -1.5295
25 -1.4175
26 -1.6166
27 -0.2857
28 -1.1585
29 -1.0361
30 -0.2749
31 -0.7763
   quant year   unit season   area iter ne_twn
8    all 2001 unique    all unique    1  0.779
9    all 2002 unique    all unique    1  0.265
10   all 2003 unique    all unique    1  1.615
11   all 2004 unique    all unique    1  0.690
12   all 2005 unique    all unique    1 -0.888
13   all 2006 unique    all unique    1 -1.492
14   all 2007 unique    all unique    1 -1.180
15   all 2008 unique    all unique    1 -0.470
16   all 2009 unique    all unique    1  0.266
17   all 2010 unique    all unique    1  0.890
18   all 2011 unique    all unique    1  0.569
19   all 2012 unique    all unique    1  0.786
20   all 2013 unique    all unique    1 -0.899
21   all 2014 unique    all unique    1 -1.730
22   all 2015 unique    all unique    1 -0.326
23   all 2016 unique    all unique    1  0.707
24   all 2017 unique    all unique    1  0.199
25   all 2018 unique    all unique    1 -0.521
26   all 2019 unique    all unique    1 -0.755
27   all 2020 unique    all unique    1 -1.610
28   all 2021 unique    all unique    1 -0.487
29   all 2022 unique    all unique    1  0.759
30   all 2023 unique    all unique    1  1.651
31   all 2024 unique    all unique    1  1.180
    se_twn
8  -0.2304
9   0.4142
10  0.2000
11  0.3130
12 -1.1521
13 -0.1705
14  0.5810
15 -0.0990
16 -0.6588
17 -0.2970
18  0.3387
19 -0.3204
20  0.2119
21  0.5040
22  0.0653
23 -1.3741
24 -1.5295
25 -1.4175
26 -1.6166
27 -0.2857
28 -1.1585
29 -1.0361
30 -0.2749
31 -0.7763
   quant year   unit season   area iter  nw_jap
12   all 2005 unique    all unique    1 -0.3577
13   all 2006 unique    all unique    1 -0.2235
14   all 2007 unique    all unique    1  1.4150
15   all 2008 unique    all unique    1  1.0867
16   all 2009 unique    all unique    1  1.3172
17   all 2010 unique    all unique    1 -1.1901
18   all 2011 unique    all unique    1 -1.6850
19   all 2012 unique    all unique    1 -0.1396
20   all 2013 unique    all unique    1 -0.9855
21   all 2014 unique    all unique    1  0.0741
22   all 2015 unique    all unique    1  0.7156
23   all 2016 unique    all unique    1 -0.3774
24   all 2017 unique    all unique    1 -0.7581
25   all 2018 unique    all unique    1  1.3277
26   all 2019 unique    all unique    1  1.6444
27   all 2020 unique    all unique    1  0.2300
28   all 2021 unique    all unique    1 -0.5614
29   all 2022 unique    all unique    1 -1.2212
30   all 2023 unique    all unique    1 -0.3113
    se_twn
12 -1.1521
13 -0.1705
14  0.5810
15 -0.0990
16 -0.6588
17 -0.2970
18  0.3387
19 -0.3204
20  0.2119
21  0.5040
22  0.0653
23 -1.3741
24 -1.5295
25 -1.4175
26 -1.6166
27 -0.2857
28 -1.1585
29 -1.0361
30 -0.2749
   quant year   unit season   area iter   nw_twn
12   all 2005 unique    all unique    1  0.75802
13   all 2006 unique    all unique    1  3.46401
14   all 2007 unique    all unique    1  0.07256
15   all 2008 unique    all unique    1 -0.00501
16   all 2009 unique    all unique    1 -0.65830
17   all 2010 unique    all unique    1  0.18718
18   all 2011 unique    all unique    1 -0.28943
19   all 2012 unique    all unique    1 -0.48094
20   all 2013 unique    all unique    1 -0.74962
21   all 2014 unique    all unique    1 -1.25426
22   all 2015 unique    all unique    1 -1.19934
23   all 2016 unique    all unique    1 -0.67881
24   all 2017 unique    all unique    1 -0.30550
25   all 2018 unique    all unique    1 -0.08591
26   all 2019 unique    all unique    1  0.39915
27   all 2020 unique    all unique    1  0.11121
28   all 2021 unique    all unique    1 -0.08654
29   all 2022 unique    all unique    1  0.37017
30   all 2023 unique    all unique    1  0.43136
    se_twn
12 -1.1521
13 -0.1705
14  0.5810
15 -0.0990
16 -0.6588
17 -0.2970
18  0.3387
19 -0.3204
20  0.2119
21  0.5040
22  0.0653
23 -1.3741
24 -1.5295
25 -1.4175
26 -1.6166
27 -0.2857
28 -1.1585
29 -1.0361
30 -0.2749
   quant year   unit season   area iter se_jap
1    all 1994 unique    all unique    1  3.292
2    all 1995 unique    all unique    1  1.251
3    all 1996 unique    all unique    1  1.081
4    all 1997 unique    all unique    1  0.955
5    all 1998 unique    all unique    1 -0.113
6    all 1999 unique    all unique    1 -0.716
7    all 2000 unique    all unique    1 -0.916
8    all 2001 unique    all unique    1 -1.204
9    all 2002 unique    all unique    1 -1.196
10   all 2003 unique    all unique    1 -1.508
11   all 2004 unique    all unique    1 -1.009
12   all 2005 unique    all unique    1 -0.810
13   all 2006 unique    all unique    1 -0.533
14   all 2007 unique    all unique    1 -1.153
15   all 2008 unique    all unique    1 -0.694
16   all 2009 unique    all unique    1  0.358
17   all 2010 unique    all unique    1  0.189
18   all 2011 unique    all unique    1  0.282
19   all 2012 unique    all unique    1 -0.196
20   all 2013 unique    all unique    1 -0.480
21   all 2014 unique    all unique    1 -0.798
22   all 2015 unique    all unique    1 -0.548
23   all 2016 unique    all unique    1  0.616
24   all 2017 unique    all unique    1  0.777
25   all 2018 unique    all unique    1  0.370
26   all 2019 unique    all unique    1  0.480
27   all 2020 unique    all unique    1  0.216
28   all 2021 unique    all unique    1 -0.384
29   all 2022 unique    all unique    1  0.405
30   all 2023 unique    all unique    1  0.764
31   all 2024 unique    all unique    1  1.222
    se_twn
1   0.9343
2   1.0663
3   1.4201
4   2.2364
5   1.0395
6   1.6709
7   1.4017
8  -0.2304
9   0.4142
10  0.2000
11  0.3130
12 -1.1521
13 -0.1705
14  0.5810
15 -0.0990
16 -0.6588
17 -0.2970
18  0.3387
19 -0.3204
20  0.2119
21  0.5040
22  0.0653
23 -1.3741
24 -1.5295
25 -1.4175
26 -1.6166
27 -0.2857
28 -1.1585
29 -1.0361
30 -0.2749
31 -0.7763
   quant year   unit season   area iter  se_twn
1    all 1994 unique    all unique    1  0.9343
2    all 1995 unique    all unique    1  1.0663
3    all 1996 unique    all unique    1  1.4201
4    all 1997 unique    all unique    1  2.2364
5    all 1998 unique    all unique    1  1.0395
6    all 1999 unique    all unique    1  1.6709
7    all 2000 unique    all unique    1  1.4017
8    all 2001 unique    all unique    1 -0.2304
9    all 2002 unique    all unique    1  0.4142
10   all 2003 unique    all unique    1  0.2000
11   all 2004 unique    all unique    1  0.3130
12   all 2005 unique    all unique    1 -1.1521
13   all 2006 unique    all unique    1 -0.1705
14   all 2007 unique    all unique    1  0.5810
15   all 2008 unique    all unique    1 -0.0990
16   all 2009 unique    all unique    1 -0.6588
17   all 2010 unique    all unique    1 -0.2970
18   all 2011 unique    all unique    1  0.3387
19   all 2012 unique    all unique    1 -0.3204
20   all 2013 unique    all unique    1  0.2119
21   all 2014 unique    all unique    1  0.5040
22   all 2015 unique    all unique    1  0.0653
23   all 2016 unique    all unique    1 -1.3741
24   all 2017 unique    all unique    1 -1.5295
25   all 2018 unique    all unique    1 -1.4175
26   all 2019 unique    all unique    1 -1.6166
27   all 2020 unique    all unique    1 -0.2857
28   all 2021 unique    all unique    1 -1.1585
29   all 2022 unique    all unique    1 -1.0361
30   all 2023 unique    all unique    1 -0.2749
31   all 2024 unique    all unique    1 -0.7763
   se_twn.1
1    0.9343
2    1.0663
3    1.4201
4    2.2364
5    1.0395
6    1.6709
7    1.4017
8   -0.2304
9    0.4142
10   0.2000
11   0.3130
12  -1.1521
13  -0.1705
14   0.5810
15  -0.0990
16  -0.6588
17  -0.2970
18   0.3387
19  -0.3204
20   0.2119
21   0.5040
22   0.0653
23  -1.3741
24  -1.5295
25  -1.4175
26  -1.6166
27  -0.2857
28  -1.1585
29  -1.0361
30  -0.2749
31  -0.7763
   quant year   unit season   area iter sw_eu_esp
12   all 2005 unique    all unique    1   -1.1832
13   all 2006 unique    all unique    1   -1.7146
14   all 2007 unique    all unique    1   -0.6989
15   all 2008 unique    all unique    1   -0.2509
16   all 2009 unique    all unique    1    1.0984
17   all 2010 unique    all unique    1   -0.4607
18   all 2011 unique    all unique    1   -0.8324
19   all 2012 unique    all unique    1    0.6362
20   all 2013 unique    all unique    1   -0.0563
21   all 2014 unique    all unique    1    0.1610
22   all 2015 unique    all unique    1    1.3451
23   all 2016 unique    all unique    1    0.3144
24   all 2017 unique    all unique    1   -1.1362
25   all 2018 unique    all unique    1   -0.6142
26   all 2019 unique    all unique    1    1.7311
27   all 2020 unique    all unique    1    1.5787
28   all 2021 unique    all unique    1   -0.0441
29   all 2022 unique    all unique    1   -0.7992
30   all 2023 unique    all unique    1    0.9257
    se_twn
12 -1.1521
13 -0.1705
14  0.5810
15 -0.0990
16 -0.6588
17 -0.2970
18  0.3387
19 -0.3204
20  0.2119
21  0.5040
22  0.0653
23 -1.3741
24 -1.5295
25 -1.4175
26 -1.6166
27 -0.2857
28 -1.1585
29 -1.0361
30 -0.2749
   quant year   unit season   area iter sw_eu_prt
7    all 2000 unique    all unique    1    1.1036
8    all 2001 unique    all unique    1    1.0273
9    all 2002 unique    all unique    1    1.0650
10   all 2003 unique    all unique    1    0.8121
11   all 2004 unique    all unique    1   -0.3730
12   all 2005 unique    all unique    1   -1.8022
13   all 2006 unique    all unique    1    0.0777
14   all 2007 unique    all unique    1    0.4965
15   all 2008 unique    all unique    1    2.0445
16   all 2009 unique    all unique    1   -1.2155
17   all 2010 unique    all unique    1   -0.6528
18   all 2011 unique    all unique    1   -0.1259
19   all 2012 unique    all unique    1   -0.4376
20   all 2013 unique    all unique    1   -0.5602
21   all 2014 unique    all unique    1   -1.3969
22   all 2015 unique    all unique    1    0.0420
23   all 2016 unique    all unique    1   -0.6606
24   all 2017 unique    all unique    1   -0.3904
25   all 2018 unique    all unique    1   -0.6615
26   all 2019 unique    all unique    1   -0.7436
27   all 2020 unique    all unique    1   -0.8468
28   all 2021 unique    all unique    1   -0.6191
29   all 2022 unique    all unique    1    0.9135
30   all 2023 unique    all unique    1    1.4027
31   all 2024 unique    all unique    1    1.5012
    se_twn
7   1.4017
8  -0.2304
9   0.4142
10  0.2000
11  0.3130
12 -1.1521
13 -0.1705
14  0.5810
15 -0.0990
16 -0.6588
17 -0.2970
18  0.3387
19 -0.3204
20  0.2119
21  0.5040
22  0.0653
23 -1.3741
24 -1.5295
25 -1.4175
26 -1.6166
27 -0.2857
28 -1.1585
29 -1.0361
30 -0.2749
31 -0.7763
   quant year   unit season   area iter sw_eu_reu
12   all 2005 unique    all unique    1   -0.7679
13   all 2006 unique    all unique    1   -0.5150
14   all 2007 unique    all unique    1   -0.7406
15   all 2008 unique    all unique    1   -1.2145
16   all 2009 unique    all unique    1   -0.7588
17   all 2010 unique    all unique    1   -0.6244
18   all 2011 unique    all unique    1   -0.2097
19   all 2012 unique    all unique    1   -0.8818
20   all 2013 unique    all unique    1   -0.6791
21   all 2014 unique    all unique    1   -0.2576
22   all 2015 unique    all unique    1   -0.4376
23   all 2016 unique    all unique    1   -0.3054
24   all 2017 unique    all unique    1   -0.6517
25   all 2018 unique    all unique    1   -0.4900
26   all 2019 unique    all unique    1   -0.0912
27   all 2020 unique    all unique    1    0.5125
28   all 2021 unique    all unique    1    1.3236
29   all 2022 unique    all unique    1    1.2279
30   all 2023 unique    all unique    1    1.7451
31   all 2024 unique    all unique    1    1.9023
    se_twn
12 -1.1521
13 -0.1705
14  0.5810
15 -0.0990
16 -0.6588
17 -0.2970
18  0.3387
19 -0.3204
20  0.2119
21  0.5040
22  0.0653
23 -1.3741
24 -1.5295
25 -1.4175
26 -1.6166
27 -0.2857
28 -1.1585
29 -1.0361
30 -0.2749
31 -0.7763
   quant year   unit season   area iter sw_jap
1    all 1994 unique    all unique    1  0.722
2    all 1995 unique    all unique    1  0.319
3    all 1996 unique    all unique    1  0.824
4    all 1997 unique    all unique    1  1.049
5    all 1998 unique    all unique    1  0.471
6    all 1999 unique    all unique    1  0.305
7    all 2000 unique    all unique    1 -0.652
8    all 2001 unique    all unique    1 -1.055
9    all 2002 unique    all unique    1 -1.251
10   all 2003 unique    all unique    1 -0.665
11   all 2004 unique    all unique    1 -1.430
12   all 2005 unique    all unique    1 -1.035
13   all 2006 unique    all unique    1 -1.453
14   all 2007 unique    all unique    1 -0.846
15   all 2008 unique    all unique    1 -1.030
16   all 2009 unique    all unique    1 -0.946
17   all 2010 unique    all unique    1 -0.942
18   all 2011 unique    all unique    1 -1.089
19   all 2012 unique    all unique    1 -1.072
20   all 2013 unique    all unique    1 -0.593
21   all 2014 unique    all unique    1  0.372
22   all 2015 unique    all unique    1  0.509
23   all 2016 unique    all unique    1  1.928
24   all 2017 unique    all unique    1  0.457
25   all 2018 unique    all unique    1  0.625
26   all 2019 unique    all unique    1  0.913
27   all 2020 unique    all unique    1  1.555
28   all 2021 unique    all unique    1  1.079
29   all 2022 unique    all unique    1  0.994
30   all 2023 unique    all unique    1  0.597
31   all 2024 unique    all unique    1  1.339
    se_twn
1   0.9343
2   1.0663
3   1.4201
4   2.2364
5   1.0395
6   1.6709
7   1.4017
8  -0.2304
9   0.4142
10  0.2000
11  0.3130
12 -1.1521
13 -0.1705
14  0.5810
15 -0.0990
16 -0.6588
17 -0.2970
18  0.3387
19 -0.3204
20  0.2119
21  0.5040
22  0.0653
23 -1.3741
24 -1.5295
25 -1.4175
26 -1.6166
27 -0.2857
28 -1.1585
29 -1.0361
30 -0.2749
31 -0.7763
   quant year   unit season   area iter sw_twn
12   all 2005 unique    all unique    1 -1.554
13   all 2006 unique    all unique    1 -0.479
14   all 2007 unique    all unique    1 -0.731
15   all 2008 unique    all unique    1  0.554
16   all 2009 unique    all unique    1  0.331
17   all 2010 unique    all unique    1  0.186
18   all 2011 unique    all unique    1  0.522
19   all 2012 unique    all unique    1 -0.253
20   all 2013 unique    all unique    1 -0.444
21   all 2014 unique    all unique    1 -0.194
22   all 2015 unique    all unique    1 -1.247
23   all 2016 unique    all unique    1 -0.842
24   all 2017 unique    all unique    1 -1.332
25   all 2018 unique    all unique    1 -0.930
26   all 2019 unique    all unique    1  0.745
27   all 2020 unique    all unique    1  1.607
28   all 2021 unique    all unique    1  1.503
29   all 2022 unique    all unique    1  0.943
30   all 2023 unique    all unique    1  1.616
    se_twn
12 -1.1521
13 -0.1705
14  0.5810
15 -0.0990
16 -0.6588
17 -0.2970
18  0.3387
19 -0.3204
20  0.2119
21  0.5040
22  0.0653
23 -1.3741
24 -1.5295
25 -1.4175
26 -1.6166
27 -0.2857
28 -1.1585
29 -1.0361
30 -0.2749
   quant year   unit season   area iter  sw_zaf
1    all 1994 unique    all unique    1  3.2533
2    all 1995 unique    all unique    1  1.6007
3    all 1996 unique    all unique    1  0.7542
4    all 1997 unique    all unique    1  0.7176
5    all 1998 unique    all unique    1  0.8980
6    all 1999 unique    all unique    1 -0.2246
7    all 2000 unique    all unique    1 -0.3396
8    all 2001 unique    all unique    1  0.5088
9    all 2002 unique    all unique    1  0.1789
10   all 2003 unique    all unique    1 -0.7160
11   all 2004 unique    all unique    1 -1.0768
12   all 2005 unique    all unique    1 -1.1221
13   all 2006 unique    all unique    1 -1.3236
14   all 2007 unique    all unique    1 -0.7660
15   all 2008 unique    all unique    1 -1.0195
16   all 2009 unique    all unique    1 -0.6750
17   all 2010 unique    all unique    1 -0.1069
18   all 2011 unique    all unique    1 -0.0435
19   all 2012 unique    all unique    1  0.0173
20   all 2013 unique    all unique    1 -1.0648
21   all 2014 unique    all unique    1 -1.2983
22   all 2015 unique    all unique    1  0.7031
23   all 2016 unique    all unique    1  0.8880
24   all 2017 unique    all unique    1  1.6972
25   all 2018 unique    all unique    1 -0.3508
26   all 2019 unique    all unique    1 -0.2486
27   all 2020 unique    all unique    1 -0.5227
28   all 2021 unique    all unique    1 -0.2518
29   all 2022 unique    all unique    1  0.3599
30   all 2023 unique    all unique    1 -0.2575
31   all 2024 unique    all unique    1 -0.1691
    se_twn
1   0.9343
2   1.0663
3   1.4201
4   2.2364
5   1.0395
6   1.6709
7   1.4017
8  -0.2304
9   0.4142
10  0.2000
11  0.3130
12 -1.1521
13 -0.1705
14  0.5810
15 -0.0990
16 -0.6588
17 -0.2970
18  0.3387
19 -0.3204
20  0.2119
21  0.5040
22  0.0653
23 -1.3741
24 -1.5295
25 -1.4175
26 -1.6166
27 -0.2857
28 -1.1585
29 -1.0361
30 -0.2749
31 -0.7763
   quant year   unit season   area iter  ne_idn
2    all 2005 unique    all unique    1  0.2266
3    all 2006 unique    all unique    1 -0.2762
4    all 2007 unique    all unique    1 -0.9047
5    all 2008 unique    all unique    1  0.6456
6    all 2009 unique    all unique    1 -0.9885
7    all 2010 unique    all unique    1 -0.0248
8    all 2011 unique    all unique    1  0.1009
9    all 2012 unique    all unique    1 -0.4438
10   all 2013 unique    all unique    1 -0.6952
11   all 2014 unique    all unique    1 -1.7427
12   all 2015 unique    all unique    1 -0.8628
13   all 2016 unique    all unique    1 -0.8628
14   all 2017 unique    all unique    1  0.5199
15   all 2018 unique    all unique    1 -0.6952
16   all 2019 unique    all unique    1 -0.5276
17   all 2020 unique    all unique    1 -0.4438
18   all 2021 unique    all unique    1  0.2685
19   all 2022 unique    all unique    1  1.5256
20   all 2023 unique    all unique    1  1.8608
   sw_eu_esp
2    -1.1832
3    -1.7146
4    -0.6989
5    -0.2509
6     1.0984
7    -0.4607
8    -0.8324
9     0.6362
10   -0.0563
11    0.1610
12    1.3451
13    0.3144
14   -1.1362
15   -0.6142
16    1.7311
17    1.5787
18   -0.0441
19   -0.7992
20    0.9257
   quant year   unit season   area iter  ne_jap
2    all 2006 unique    all unique    1 -0.3216
3    all 2007 unique    all unique    1 -1.4675
4    all 2008 unique    all unique    1 -1.7240
5    all 2009 unique    all unique    1 -0.0799
6    all 2010 unique    all unique    1 -0.8613
7    all 2011 unique    all unique    1 -2.1918
8    all 2012 unique    all unique    1  0.2927
9    all 2013 unique    all unique    1 -0.1304
10   all 2014 unique    all unique    1  1.4072
11   all 2015 unique    all unique    1  0.6988
12   all 2016 unique    all unique    1  0.5559
13   all 2017 unique    all unique    1  1.2902
14   all 2018 unique    all unique    1  0.4971
15   all 2019 unique    all unique    1  0.4408
16   all 2020 unique    all unique    1  0.0310
17   all 2021 unique    all unique    1 -0.3542
18   all 2022 unique    all unique    1  0.2496
19   all 2023 unique    all unique    1  1.4052
   sw_eu_esp
2    -1.7146
3    -0.6989
4    -0.2509
5     1.0984
6    -0.4607
7    -0.8324
8     0.6362
9    -0.0563
10    0.1610
11    1.3451
12    0.3144
13   -1.1362
14   -0.6142
15    1.7311
16    1.5787
17   -0.0441
18   -0.7992
19    0.9257
   quant year   unit season   area iter ne_twn
5    all 2005 unique    all unique    1 -0.888
6    all 2006 unique    all unique    1 -1.492
7    all 2007 unique    all unique    1 -1.180
8    all 2008 unique    all unique    1 -0.470
9    all 2009 unique    all unique    1  0.266
10   all 2010 unique    all unique    1  0.890
11   all 2011 unique    all unique    1  0.569
12   all 2012 unique    all unique    1  0.786
13   all 2013 unique    all unique    1 -0.899
14   all 2014 unique    all unique    1 -1.730
15   all 2015 unique    all unique    1 -0.326
16   all 2016 unique    all unique    1  0.707
17   all 2017 unique    all unique    1  0.199
18   all 2018 unique    all unique    1 -0.521
19   all 2019 unique    all unique    1 -0.755
20   all 2020 unique    all unique    1 -1.610
21   all 2021 unique    all unique    1 -0.487
22   all 2022 unique    all unique    1  0.759
23   all 2023 unique    all unique    1  1.651
   sw_eu_esp
5    -1.1832
6    -1.7146
7    -0.6989
8    -0.2509
9     1.0984
10   -0.4607
11   -0.8324
12    0.6362
13   -0.0563
14    0.1610
15    1.3451
16    0.3144
17   -1.1362
18   -0.6142
19    1.7311
20    1.5787
21   -0.0441
22   -0.7992
23    0.9257
   quant year   unit season   area iter  nw_jap
1    all 2005 unique    all unique    1 -0.3577
2    all 2006 unique    all unique    1 -0.2235
3    all 2007 unique    all unique    1  1.4150
4    all 2008 unique    all unique    1  1.0867
5    all 2009 unique    all unique    1  1.3172
6    all 2010 unique    all unique    1 -1.1901
7    all 2011 unique    all unique    1 -1.6850
8    all 2012 unique    all unique    1 -0.1396
9    all 2013 unique    all unique    1 -0.9855
10   all 2014 unique    all unique    1  0.0741
11   all 2015 unique    all unique    1  0.7156
12   all 2016 unique    all unique    1 -0.3774
13   all 2017 unique    all unique    1 -0.7581
14   all 2018 unique    all unique    1  1.3277
15   all 2019 unique    all unique    1  1.6444
16   all 2020 unique    all unique    1  0.2300
17   all 2021 unique    all unique    1 -0.5614
18   all 2022 unique    all unique    1 -1.2212
19   all 2023 unique    all unique    1 -0.3113
   sw_eu_esp
1    -1.1832
2    -1.7146
3    -0.6989
4    -0.2509
5     1.0984
6    -0.4607
7    -0.8324
8     0.6362
9    -0.0563
10    0.1610
11    1.3451
12    0.3144
13   -1.1362
14   -0.6142
15    1.7311
16    1.5787
17   -0.0441
18   -0.7992
19    0.9257
   quant year   unit season   area iter   nw_twn
1    all 2005 unique    all unique    1  0.75802
2    all 2006 unique    all unique    1  3.46401
3    all 2007 unique    all unique    1  0.07256
4    all 2008 unique    all unique    1 -0.00501
5    all 2009 unique    all unique    1 -0.65830
6    all 2010 unique    all unique    1  0.18718
7    all 2011 unique    all unique    1 -0.28943
8    all 2012 unique    all unique    1 -0.48094
9    all 2013 unique    all unique    1 -0.74962
10   all 2014 unique    all unique    1 -1.25426
11   all 2015 unique    all unique    1 -1.19934
12   all 2016 unique    all unique    1 -0.67881
13   all 2017 unique    all unique    1 -0.30550
14   all 2018 unique    all unique    1 -0.08591
15   all 2019 unique    all unique    1  0.39915
16   all 2020 unique    all unique    1  0.11121
17   all 2021 unique    all unique    1 -0.08654
18   all 2022 unique    all unique    1  0.37017
19   all 2023 unique    all unique    1  0.43136
   sw_eu_esp
1    -1.1832
2    -1.7146
3    -0.6989
4    -0.2509
5     1.0984
6    -0.4607
7    -0.8324
8     0.6362
9    -0.0563
10    0.1610
11    1.3451
12    0.3144
13   -1.1362
14   -0.6142
15    1.7311
16    1.5787
17   -0.0441
18   -0.7992
19    0.9257
   quant year   unit season   area iter se_jap
12   all 2005 unique    all unique    1 -0.810
13   all 2006 unique    all unique    1 -0.533
14   all 2007 unique    all unique    1 -1.153
15   all 2008 unique    all unique    1 -0.694
16   all 2009 unique    all unique    1  0.358
17   all 2010 unique    all unique    1  0.189
18   all 2011 unique    all unique    1  0.282
19   all 2012 unique    all unique    1 -0.196
20   all 2013 unique    all unique    1 -0.480
21   all 2014 unique    all unique    1 -0.798
22   all 2015 unique    all unique    1 -0.548
23   all 2016 unique    all unique    1  0.616
24   all 2017 unique    all unique    1  0.777
25   all 2018 unique    all unique    1  0.370
26   all 2019 unique    all unique    1  0.480
27   all 2020 unique    all unique    1  0.216
28   all 2021 unique    all unique    1 -0.384
29   all 2022 unique    all unique    1  0.405
30   all 2023 unique    all unique    1  0.764
   sw_eu_esp
12   -1.1832
13   -1.7146
14   -0.6989
15   -0.2509
16    1.0984
17   -0.4607
18   -0.8324
19    0.6362
20   -0.0563
21    0.1610
22    1.3451
23    0.3144
24   -1.1362
25   -0.6142
26    1.7311
27    1.5787
28   -0.0441
29   -0.7992
30    0.9257
   quant year   unit season   area iter  se_twn
12   all 2005 unique    all unique    1 -1.1521
13   all 2006 unique    all unique    1 -0.1705
14   all 2007 unique    all unique    1  0.5810
15   all 2008 unique    all unique    1 -0.0990
16   all 2009 unique    all unique    1 -0.6588
17   all 2010 unique    all unique    1 -0.2970
18   all 2011 unique    all unique    1  0.3387
19   all 2012 unique    all unique    1 -0.3204
20   all 2013 unique    all unique    1  0.2119
21   all 2014 unique    all unique    1  0.5040
22   all 2015 unique    all unique    1  0.0653
23   all 2016 unique    all unique    1 -1.3741
24   all 2017 unique    all unique    1 -1.5295
25   all 2018 unique    all unique    1 -1.4175
26   all 2019 unique    all unique    1 -1.6166
27   all 2020 unique    all unique    1 -0.2857
28   all 2021 unique    all unique    1 -1.1585
29   all 2022 unique    all unique    1 -1.0361
30   all 2023 unique    all unique    1 -0.2749
   sw_eu_esp
12   -1.1832
13   -1.7146
14   -0.6989
15   -0.2509
16    1.0984
17   -0.4607
18   -0.8324
19    0.6362
20   -0.0563
21    0.1610
22    1.3451
23    0.3144
24   -1.1362
25   -0.6142
26    1.7311
27    1.5787
28   -0.0441
29   -0.7992
30    0.9257
   quant year   unit season   area iter sw_eu_esp
1    all 2005 unique    all unique    1   -1.1832
2    all 2006 unique    all unique    1   -1.7146
3    all 2007 unique    all unique    1   -0.6989
4    all 2008 unique    all unique    1   -0.2509
5    all 2009 unique    all unique    1    1.0984
6    all 2010 unique    all unique    1   -0.4607
7    all 2011 unique    all unique    1   -0.8324
8    all 2012 unique    all unique    1    0.6362
9    all 2013 unique    all unique    1   -0.0563
10   all 2014 unique    all unique    1    0.1610
11   all 2015 unique    all unique    1    1.3451
12   all 2016 unique    all unique    1    0.3144
13   all 2017 unique    all unique    1   -1.1362
14   all 2018 unique    all unique    1   -0.6142
15   all 2019 unique    all unique    1    1.7311
16   all 2020 unique    all unique    1    1.5787
17   all 2021 unique    all unique    1   -0.0441
18   all 2022 unique    all unique    1   -0.7992
19   all 2023 unique    all unique    1    0.9257
   sw_eu_esp.1
1      -1.1832
2      -1.7146
3      -0.6989
4      -0.2509
5       1.0984
6      -0.4607
7      -0.8324
8       0.6362
9      -0.0563
10      0.1610
11      1.3451
12      0.3144
13     -1.1362
14     -0.6142
15      1.7311
16      1.5787
17     -0.0441
18     -0.7992
19      0.9257
   quant year   unit season   area iter sw_eu_prt
6    all 2005 unique    all unique    1   -1.8022
7    all 2006 unique    all unique    1    0.0777
8    all 2007 unique    all unique    1    0.4965
9    all 2008 unique    all unique    1    2.0445
10   all 2009 unique    all unique    1   -1.2155
11   all 2010 unique    all unique    1   -0.6528
12   all 2011 unique    all unique    1   -0.1259
13   all 2012 unique    all unique    1   -0.4376
14   all 2013 unique    all unique    1   -0.5602
15   all 2014 unique    all unique    1   -1.3969
16   all 2015 unique    all unique    1    0.0420
17   all 2016 unique    all unique    1   -0.6606
18   all 2017 unique    all unique    1   -0.3904
19   all 2018 unique    all unique    1   -0.6615
20   all 2019 unique    all unique    1   -0.7436
21   all 2020 unique    all unique    1   -0.8468
22   all 2021 unique    all unique    1   -0.6191
23   all 2022 unique    all unique    1    0.9135
24   all 2023 unique    all unique    1    1.4027
   sw_eu_esp
6    -1.1832
7    -1.7146
8    -0.6989
9    -0.2509
10    1.0984
11   -0.4607
12   -0.8324
13    0.6362
14   -0.0563
15    0.1610
16    1.3451
17    0.3144
18   -1.1362
19   -0.6142
20    1.7311
21    1.5787
22   -0.0441
23   -0.7992
24    0.9257
   quant year   unit season   area iter sw_eu_reu
1    all 2005 unique    all unique    1   -0.7679
2    all 2006 unique    all unique    1   -0.5150
3    all 2007 unique    all unique    1   -0.7406
4    all 2008 unique    all unique    1   -1.2145
5    all 2009 unique    all unique    1   -0.7588
6    all 2010 unique    all unique    1   -0.6244
7    all 2011 unique    all unique    1   -0.2097
8    all 2012 unique    all unique    1   -0.8818
9    all 2013 unique    all unique    1   -0.6791
10   all 2014 unique    all unique    1   -0.2576
11   all 2015 unique    all unique    1   -0.4376
12   all 2016 unique    all unique    1   -0.3054
13   all 2017 unique    all unique    1   -0.6517
14   all 2018 unique    all unique    1   -0.4900
15   all 2019 unique    all unique    1   -0.0912
16   all 2020 unique    all unique    1    0.5125
17   all 2021 unique    all unique    1    1.3236
18   all 2022 unique    all unique    1    1.2279
19   all 2023 unique    all unique    1    1.7451
   sw_eu_esp
1    -1.1832
2    -1.7146
3    -0.6989
4    -0.2509
5     1.0984
6    -0.4607
7    -0.8324
8     0.6362
9    -0.0563
10    0.1610
11    1.3451
12    0.3144
13   -1.1362
14   -0.6142
15    1.7311
16    1.5787
17   -0.0441
18   -0.7992
19    0.9257
   quant year   unit season   area iter sw_jap
12   all 2005 unique    all unique    1 -1.035
13   all 2006 unique    all unique    1 -1.453
14   all 2007 unique    all unique    1 -0.846
15   all 2008 unique    all unique    1 -1.030
16   all 2009 unique    all unique    1 -0.946
17   all 2010 unique    all unique    1 -0.942
18   all 2011 unique    all unique    1 -1.089
19   all 2012 unique    all unique    1 -1.072
20   all 2013 unique    all unique    1 -0.593
21   all 2014 unique    all unique    1  0.372
22   all 2015 unique    all unique    1  0.509
23   all 2016 unique    all unique    1  1.928
24   all 2017 unique    all unique    1  0.457
25   all 2018 unique    all unique    1  0.625
26   all 2019 unique    all unique    1  0.913
27   all 2020 unique    all unique    1  1.555
28   all 2021 unique    all unique    1  1.079
29   all 2022 unique    all unique    1  0.994
30   all 2023 unique    all unique    1  0.597
   sw_eu_esp
12   -1.1832
13   -1.7146
14   -0.6989
15   -0.2509
16    1.0984
17   -0.4607
18   -0.8324
19    0.6362
20   -0.0563
21    0.1610
22    1.3451
23    0.3144
24   -1.1362
25   -0.6142
26    1.7311
27    1.5787
28   -0.0441
29   -0.7992
30    0.9257
   quant year   unit season   area iter sw_twn
1    all 2005 unique    all unique    1 -1.554
2    all 2006 unique    all unique    1 -0.479
3    all 2007 unique    all unique    1 -0.731
4    all 2008 unique    all unique    1  0.554
5    all 2009 unique    all unique    1  0.331
6    all 2010 unique    all unique    1  0.186
7    all 2011 unique    all unique    1  0.522
8    all 2012 unique    all unique    1 -0.253
9    all 2013 unique    all unique    1 -0.444
10   all 2014 unique    all unique    1 -0.194
11   all 2015 unique    all unique    1 -1.247
12   all 2016 unique    all unique    1 -0.842
13   all 2017 unique    all unique    1 -1.332
14   all 2018 unique    all unique    1 -0.930
15   all 2019 unique    all unique    1  0.745
16   all 2020 unique    all unique    1  1.607
17   all 2021 unique    all unique    1  1.503
18   all 2022 unique    all unique    1  0.943
19   all 2023 unique    all unique    1  1.616
   sw_eu_esp
1    -1.1832
2    -1.7146
3    -0.6989
4    -0.2509
5     1.0984
6    -0.4607
7    -0.8324
8     0.6362
9    -0.0563
10    0.1610
11    1.3451
12    0.3144
13   -1.1362
14   -0.6142
15    1.7311
16    1.5787
17   -0.0441
18   -0.7992
19    0.9257
   quant year   unit season   area iter  sw_zaf
12   all 2005 unique    all unique    1 -1.1221
13   all 2006 unique    all unique    1 -1.3236
14   all 2007 unique    all unique    1 -0.7660
15   all 2008 unique    all unique    1 -1.0195
16   all 2009 unique    all unique    1 -0.6750
17   all 2010 unique    all unique    1 -0.1069
18   all 2011 unique    all unique    1 -0.0435
19   all 2012 unique    all unique    1  0.0173
20   all 2013 unique    all unique    1 -1.0648
21   all 2014 unique    all unique    1 -1.2983
22   all 2015 unique    all unique    1  0.7031
23   all 2016 unique    all unique    1  0.8880
24   all 2017 unique    all unique    1  1.6972
25   all 2018 unique    all unique    1 -0.3508
26   all 2019 unique    all unique    1 -0.2486
27   all 2020 unique    all unique    1 -0.5227
28   all 2021 unique    all unique    1 -0.2518
29   all 2022 unique    all unique    1  0.3599
30   all 2023 unique    all unique    1 -0.2575
   sw_eu_esp
12   -1.1832
13   -1.7146
14   -0.6989
15   -0.2509
16    1.0984
17   -0.4607
18   -0.8324
19    0.6362
20   -0.0563
21    0.1610
22    1.3451
23    0.3144
24   -1.1362
25   -0.6142
26    1.7311
27    1.5787
28   -0.0441
29   -0.7992
30    0.9257
   quant year   unit season   area iter  ne_idn
5    all 2004 unique    all unique    1  0.0171
6    all 2005 unique    all unique    1  0.2266
7    all 2006 unique    all unique    1 -0.2762
8    all 2007 unique    all unique    1 -0.9047
9    all 2008 unique    all unique    1  0.6456
10   all 2009 unique    all unique    1 -0.9885
11   all 2010 unique    all unique    1 -0.0248
12   all 2011 unique    all unique    1  0.1009
13   all 2012 unique    all unique    1 -0.4438
14   all 2013 unique    all unique    1 -0.6952
15   all 2014 unique    all unique    1 -1.7427
16   all 2015 unique    all unique    1 -0.8628
17   all 2016 unique    all unique    1 -0.8628
18   all 2017 unique    all unique    1  0.5199
19   all 2018 unique    all unique    1 -0.6952
20   all 2019 unique    all unique    1 -0.5276
21   all 2020 unique    all unique    1 -0.4438
22   all 2021 unique    all unique    1  0.2685
23   all 2022 unique    all unique    1  1.5256
24   all 2023 unique    all unique    1  1.8608
25   all 2024 unique    all unique    1  0.9809
   sw_eu_prt
5    -0.3730
6    -1.8022
7     0.0777
8     0.4965
9     2.0445
10   -1.2155
11   -0.6528
12   -0.1259
13   -0.4376
14   -0.5602
15   -1.3969
16    0.0420
17   -0.6606
18   -0.3904
19   -0.6615
20   -0.7436
21   -0.8468
22   -0.6191
23    0.9135
24    1.4027
25    1.5012
   quant year   unit season   area iter  ne_jap
7    all 2006 unique    all unique    1 -0.3216
8    all 2007 unique    all unique    1 -1.4675
9    all 2008 unique    all unique    1 -1.7240
10   all 2009 unique    all unique    1 -0.0799
11   all 2010 unique    all unique    1 -0.8613
12   all 2011 unique    all unique    1 -2.1918
13   all 2012 unique    all unique    1  0.2927
14   all 2013 unique    all unique    1 -0.1304
15   all 2014 unique    all unique    1  1.4072
16   all 2015 unique    all unique    1  0.6988
17   all 2016 unique    all unique    1  0.5559
18   all 2017 unique    all unique    1  1.2902
19   all 2018 unique    all unique    1  0.4971
20   all 2019 unique    all unique    1  0.4408
21   all 2020 unique    all unique    1  0.0310
22   all 2021 unique    all unique    1 -0.3542
23   all 2022 unique    all unique    1  0.2496
24   all 2023 unique    all unique    1  1.4052
25   all 2024 unique    all unique    1  0.2622
   sw_eu_prt
7     0.0777
8     0.4965
9     2.0445
10   -1.2155
11   -0.6528
12   -0.1259
13   -0.4376
14   -0.5602
15   -1.3969
16    0.0420
17   -0.6606
18   -0.3904
19   -0.6615
20   -0.7436
21   -0.8468
22   -0.6191
23    0.9135
24    1.4027
25    1.5012
   quant year   unit season   area iter ne_twn
2    all 2001 unique    all unique    1  0.779
3    all 2002 unique    all unique    1  0.265
4    all 2003 unique    all unique    1  1.615
5    all 2004 unique    all unique    1  0.690
6    all 2005 unique    all unique    1 -0.888
7    all 2006 unique    all unique    1 -1.492
8    all 2007 unique    all unique    1 -1.180
9    all 2008 unique    all unique    1 -0.470
10   all 2009 unique    all unique    1  0.266
11   all 2010 unique    all unique    1  0.890
12   all 2011 unique    all unique    1  0.569
13   all 2012 unique    all unique    1  0.786
14   all 2013 unique    all unique    1 -0.899
15   all 2014 unique    all unique    1 -1.730
16   all 2015 unique    all unique    1 -0.326
17   all 2016 unique    all unique    1  0.707
18   all 2017 unique    all unique    1  0.199
19   all 2018 unique    all unique    1 -0.521
20   all 2019 unique    all unique    1 -0.755
21   all 2020 unique    all unique    1 -1.610
22   all 2021 unique    all unique    1 -0.487
23   all 2022 unique    all unique    1  0.759
24   all 2023 unique    all unique    1  1.651
25   all 2024 unique    all unique    1  1.180
   sw_eu_prt
2     1.0273
3     1.0650
4     0.8121
5    -0.3730
6    -1.8022
7     0.0777
8     0.4965
9     2.0445
10   -1.2155
11   -0.6528
12   -0.1259
13   -0.4376
14   -0.5602
15   -1.3969
16    0.0420
17   -0.6606
18   -0.3904
19   -0.6615
20   -0.7436
21   -0.8468
22   -0.6191
23    0.9135
24    1.4027
25    1.5012
   quant year   unit season   area iter  nw_jap
6    all 2005 unique    all unique    1 -0.3577
7    all 2006 unique    all unique    1 -0.2235
8    all 2007 unique    all unique    1  1.4150
9    all 2008 unique    all unique    1  1.0867
10   all 2009 unique    all unique    1  1.3172
11   all 2010 unique    all unique    1 -1.1901
12   all 2011 unique    all unique    1 -1.6850
13   all 2012 unique    all unique    1 -0.1396
14   all 2013 unique    all unique    1 -0.9855
15   all 2014 unique    all unique    1  0.0741
16   all 2015 unique    all unique    1  0.7156
17   all 2016 unique    all unique    1 -0.3774
18   all 2017 unique    all unique    1 -0.7581
19   all 2018 unique    all unique    1  1.3277
20   all 2019 unique    all unique    1  1.6444
21   all 2020 unique    all unique    1  0.2300
22   all 2021 unique    all unique    1 -0.5614
23   all 2022 unique    all unique    1 -1.2212
24   all 2023 unique    all unique    1 -0.3113
   sw_eu_prt
6    -1.8022
7     0.0777
8     0.4965
9     2.0445
10   -1.2155
11   -0.6528
12   -0.1259
13   -0.4376
14   -0.5602
15   -1.3969
16    0.0420
17   -0.6606
18   -0.3904
19   -0.6615
20   -0.7436
21   -0.8468
22   -0.6191
23    0.9135
24    1.4027
   quant year   unit season   area iter   nw_twn
6    all 2005 unique    all unique    1  0.75802
7    all 2006 unique    all unique    1  3.46401
8    all 2007 unique    all unique    1  0.07256
9    all 2008 unique    all unique    1 -0.00501
10   all 2009 unique    all unique    1 -0.65830
11   all 2010 unique    all unique    1  0.18718
12   all 2011 unique    all unique    1 -0.28943
13   all 2012 unique    all unique    1 -0.48094
14   all 2013 unique    all unique    1 -0.74962
15   all 2014 unique    all unique    1 -1.25426
16   all 2015 unique    all unique    1 -1.19934
17   all 2016 unique    all unique    1 -0.67881
18   all 2017 unique    all unique    1 -0.30550
19   all 2018 unique    all unique    1 -0.08591
20   all 2019 unique    all unique    1  0.39915
21   all 2020 unique    all unique    1  0.11121
22   all 2021 unique    all unique    1 -0.08654
23   all 2022 unique    all unique    1  0.37017
24   all 2023 unique    all unique    1  0.43136
   sw_eu_prt
6    -1.8022
7     0.0777
8     0.4965
9     2.0445
10   -1.2155
11   -0.6528
12   -0.1259
13   -0.4376
14   -0.5602
15   -1.3969
16    0.0420
17   -0.6606
18   -0.3904
19   -0.6615
20   -0.7436
21   -0.8468
22   -0.6191
23    0.9135
24    1.4027
   quant year   unit season   area iter se_jap
7    all 2000 unique    all unique    1 -0.916
8    all 2001 unique    all unique    1 -1.204
9    all 2002 unique    all unique    1 -1.196
10   all 2003 unique    all unique    1 -1.508
11   all 2004 unique    all unique    1 -1.009
12   all 2005 unique    all unique    1 -0.810
13   all 2006 unique    all unique    1 -0.533
14   all 2007 unique    all unique    1 -1.153
15   all 2008 unique    all unique    1 -0.694
16   all 2009 unique    all unique    1  0.358
17   all 2010 unique    all unique    1  0.189
18   all 2011 unique    all unique    1  0.282
19   all 2012 unique    all unique    1 -0.196
20   all 2013 unique    all unique    1 -0.480
21   all 2014 unique    all unique    1 -0.798
22   all 2015 unique    all unique    1 -0.548
23   all 2016 unique    all unique    1  0.616
24   all 2017 unique    all unique    1  0.777
25   all 2018 unique    all unique    1  0.370
26   all 2019 unique    all unique    1  0.480
27   all 2020 unique    all unique    1  0.216
28   all 2021 unique    all unique    1 -0.384
29   all 2022 unique    all unique    1  0.405
30   all 2023 unique    all unique    1  0.764
31   all 2024 unique    all unique    1  1.222
   sw_eu_prt
7     1.1036
8     1.0273
9     1.0650
10    0.8121
11   -0.3730
12   -1.8022
13    0.0777
14    0.4965
15    2.0445
16   -1.2155
17   -0.6528
18   -0.1259
19   -0.4376
20   -0.5602
21   -1.3969
22    0.0420
23   -0.6606
24   -0.3904
25   -0.6615
26   -0.7436
27   -0.8468
28   -0.6191
29    0.9135
30    1.4027
31    1.5012
   quant year   unit season   area iter  se_twn
7    all 2000 unique    all unique    1  1.4017
8    all 2001 unique    all unique    1 -0.2304
9    all 2002 unique    all unique    1  0.4142
10   all 2003 unique    all unique    1  0.2000
11   all 2004 unique    all unique    1  0.3130
12   all 2005 unique    all unique    1 -1.1521
13   all 2006 unique    all unique    1 -0.1705
14   all 2007 unique    all unique    1  0.5810
15   all 2008 unique    all unique    1 -0.0990
16   all 2009 unique    all unique    1 -0.6588
17   all 2010 unique    all unique    1 -0.2970
18   all 2011 unique    all unique    1  0.3387
19   all 2012 unique    all unique    1 -0.3204
20   all 2013 unique    all unique    1  0.2119
21   all 2014 unique    all unique    1  0.5040
22   all 2015 unique    all unique    1  0.0653
23   all 2016 unique    all unique    1 -1.3741
24   all 2017 unique    all unique    1 -1.5295
25   all 2018 unique    all unique    1 -1.4175
26   all 2019 unique    all unique    1 -1.6166
27   all 2020 unique    all unique    1 -0.2857
28   all 2021 unique    all unique    1 -1.1585
29   all 2022 unique    all unique    1 -1.0361
30   all 2023 unique    all unique    1 -0.2749
31   all 2024 unique    all unique    1 -0.7763
   sw_eu_prt
7     1.1036
8     1.0273
9     1.0650
10    0.8121
11   -0.3730
12   -1.8022
13    0.0777
14    0.4965
15    2.0445
16   -1.2155
17   -0.6528
18   -0.1259
19   -0.4376
20   -0.5602
21   -1.3969
22    0.0420
23   -0.6606
24   -0.3904
25   -0.6615
26   -0.7436
27   -0.8468
28   -0.6191
29    0.9135
30    1.4027
31    1.5012
   quant year   unit season   area iter sw_eu_esp
6    all 2005 unique    all unique    1   -1.1832
7    all 2006 unique    all unique    1   -1.7146
8    all 2007 unique    all unique    1   -0.6989
9    all 2008 unique    all unique    1   -0.2509
10   all 2009 unique    all unique    1    1.0984
11   all 2010 unique    all unique    1   -0.4607
12   all 2011 unique    all unique    1   -0.8324
13   all 2012 unique    all unique    1    0.6362
14   all 2013 unique    all unique    1   -0.0563
15   all 2014 unique    all unique    1    0.1610
16   all 2015 unique    all unique    1    1.3451
17   all 2016 unique    all unique    1    0.3144
18   all 2017 unique    all unique    1   -1.1362
19   all 2018 unique    all unique    1   -0.6142
20   all 2019 unique    all unique    1    1.7311
21   all 2020 unique    all unique    1    1.5787
22   all 2021 unique    all unique    1   -0.0441
23   all 2022 unique    all unique    1   -0.7992
24   all 2023 unique    all unique    1    0.9257
   sw_eu_prt
6    -1.8022
7     0.0777
8     0.4965
9     2.0445
10   -1.2155
11   -0.6528
12   -0.1259
13   -0.4376
14   -0.5602
15   -1.3969
16    0.0420
17   -0.6606
18   -0.3904
19   -0.6615
20   -0.7436
21   -0.8468
22   -0.6191
23    0.9135
24    1.4027
   quant year   unit season   area iter sw_eu_prt
1    all 2000 unique    all unique    1    1.1036
2    all 2001 unique    all unique    1    1.0273
3    all 2002 unique    all unique    1    1.0650
4    all 2003 unique    all unique    1    0.8121
5    all 2004 unique    all unique    1   -0.3730
6    all 2005 unique    all unique    1   -1.8022
7    all 2006 unique    all unique    1    0.0777
8    all 2007 unique    all unique    1    0.4965
9    all 2008 unique    all unique    1    2.0445
10   all 2009 unique    all unique    1   -1.2155
11   all 2010 unique    all unique    1   -0.6528
12   all 2011 unique    all unique    1   -0.1259
13   all 2012 unique    all unique    1   -0.4376
14   all 2013 unique    all unique    1   -0.5602
15   all 2014 unique    all unique    1   -1.3969
16   all 2015 unique    all unique    1    0.0420
17   all 2016 unique    all unique    1   -0.6606
18   all 2017 unique    all unique    1   -0.3904
19   all 2018 unique    all unique    1   -0.6615
20   all 2019 unique    all unique    1   -0.7436
21   all 2020 unique    all unique    1   -0.8468
22   all 2021 unique    all unique    1   -0.6191
23   all 2022 unique    all unique    1    0.9135
24   all 2023 unique    all unique    1    1.4027
25   all 2024 unique    all unique    1    1.5012
   sw_eu_prt.1
1       1.1036
2       1.0273
3       1.0650
4       0.8121
5      -0.3730
6      -1.8022
7       0.0777
8       0.4965
9       2.0445
10     -1.2155
11     -0.6528
12     -0.1259
13     -0.4376
14     -0.5602
15     -1.3969
16      0.0420
17     -0.6606
18     -0.3904
19     -0.6615
20     -0.7436
21     -0.8468
22     -0.6191
23      0.9135
24      1.4027
25      1.5012
   quant year   unit season   area iter sw_eu_reu
6    all 2005 unique    all unique    1   -0.7679
7    all 2006 unique    all unique    1   -0.5150
8    all 2007 unique    all unique    1   -0.7406
9    all 2008 unique    all unique    1   -1.2145
10   all 2009 unique    all unique    1   -0.7588
11   all 2010 unique    all unique    1   -0.6244
12   all 2011 unique    all unique    1   -0.2097
13   all 2012 unique    all unique    1   -0.8818
14   all 2013 unique    all unique    1   -0.6791
15   all 2014 unique    all unique    1   -0.2576
16   all 2015 unique    all unique    1   -0.4376
17   all 2016 unique    all unique    1   -0.3054
18   all 2017 unique    all unique    1   -0.6517
19   all 2018 unique    all unique    1   -0.4900
20   all 2019 unique    all unique    1   -0.0912
21   all 2020 unique    all unique    1    0.5125
22   all 2021 unique    all unique    1    1.3236
23   all 2022 unique    all unique    1    1.2279
24   all 2023 unique    all unique    1    1.7451
25   all 2024 unique    all unique    1    1.9023
   sw_eu_prt
6    -1.8022
7     0.0777
8     0.4965
9     2.0445
10   -1.2155
11   -0.6528
12   -0.1259
13   -0.4376
14   -0.5602
15   -1.3969
16    0.0420
17   -0.6606
18   -0.3904
19   -0.6615
20   -0.7436
21   -0.8468
22   -0.6191
23    0.9135
24    1.4027
25    1.5012
   quant year   unit season   area iter sw_jap
7    all 2000 unique    all unique    1 -0.652
8    all 2001 unique    all unique    1 -1.055
9    all 2002 unique    all unique    1 -1.251
10   all 2003 unique    all unique    1 -0.665
11   all 2004 unique    all unique    1 -1.430
12   all 2005 unique    all unique    1 -1.035
13   all 2006 unique    all unique    1 -1.453
14   all 2007 unique    all unique    1 -0.846
15   all 2008 unique    all unique    1 -1.030
16   all 2009 unique    all unique    1 -0.946
17   all 2010 unique    all unique    1 -0.942
18   all 2011 unique    all unique    1 -1.089
19   all 2012 unique    all unique    1 -1.072
20   all 2013 unique    all unique    1 -0.593
21   all 2014 unique    all unique    1  0.372
22   all 2015 unique    all unique    1  0.509
23   all 2016 unique    all unique    1  1.928
24   all 2017 unique    all unique    1  0.457
25   all 2018 unique    all unique    1  0.625
26   all 2019 unique    all unique    1  0.913
27   all 2020 unique    all unique    1  1.555
28   all 2021 unique    all unique    1  1.079
29   all 2022 unique    all unique    1  0.994
30   all 2023 unique    all unique    1  0.597
31   all 2024 unique    all unique    1  1.339
   sw_eu_prt
7     1.1036
8     1.0273
9     1.0650
10    0.8121
11   -0.3730
12   -1.8022
13    0.0777
14    0.4965
15    2.0445
16   -1.2155
17   -0.6528
18   -0.1259
19   -0.4376
20   -0.5602
21   -1.3969
22    0.0420
23   -0.6606
24   -0.3904
25   -0.6615
26   -0.7436
27   -0.8468
28   -0.6191
29    0.9135
30    1.4027
31    1.5012
   quant year   unit season   area iter sw_twn
6    all 2005 unique    all unique    1 -1.554
7    all 2006 unique    all unique    1 -0.479
8    all 2007 unique    all unique    1 -0.731
9    all 2008 unique    all unique    1  0.554
10   all 2009 unique    all unique    1  0.331
11   all 2010 unique    all unique    1  0.186
12   all 2011 unique    all unique    1  0.522
13   all 2012 unique    all unique    1 -0.253
14   all 2013 unique    all unique    1 -0.444
15   all 2014 unique    all unique    1 -0.194
16   all 2015 unique    all unique    1 -1.247
17   all 2016 unique    all unique    1 -0.842
18   all 2017 unique    all unique    1 -1.332
19   all 2018 unique    all unique    1 -0.930
20   all 2019 unique    all unique    1  0.745
21   all 2020 unique    all unique    1  1.607
22   all 2021 unique    all unique    1  1.503
23   all 2022 unique    all unique    1  0.943
24   all 2023 unique    all unique    1  1.616
   sw_eu_prt
6    -1.8022
7     0.0777
8     0.4965
9     2.0445
10   -1.2155
11   -0.6528
12   -0.1259
13   -0.4376
14   -0.5602
15   -1.3969
16    0.0420
17   -0.6606
18   -0.3904
19   -0.6615
20   -0.7436
21   -0.8468
22   -0.6191
23    0.9135
24    1.4027
   quant year   unit season   area iter  sw_zaf
7    all 2000 unique    all unique    1 -0.3396
8    all 2001 unique    all unique    1  0.5088
9    all 2002 unique    all unique    1  0.1789
10   all 2003 unique    all unique    1 -0.7160
11   all 2004 unique    all unique    1 -1.0768
12   all 2005 unique    all unique    1 -1.1221
13   all 2006 unique    all unique    1 -1.3236
14   all 2007 unique    all unique    1 -0.7660
15   all 2008 unique    all unique    1 -1.0195
16   all 2009 unique    all unique    1 -0.6750
17   all 2010 unique    all unique    1 -0.1069
18   all 2011 unique    all unique    1 -0.0435
19   all 2012 unique    all unique    1  0.0173
20   all 2013 unique    all unique    1 -1.0648
21   all 2014 unique    all unique    1 -1.2983
22   all 2015 unique    all unique    1  0.7031
23   all 2016 unique    all unique    1  0.8880
24   all 2017 unique    all unique    1  1.6972
25   all 2018 unique    all unique    1 -0.3508
26   all 2019 unique    all unique    1 -0.2486
27   all 2020 unique    all unique    1 -0.5227
28   all 2021 unique    all unique    1 -0.2518
29   all 2022 unique    all unique    1  0.3599
30   all 2023 unique    all unique    1 -0.2575
31   all 2024 unique    all unique    1 -0.1691
   sw_eu_prt
7     1.1036
8     1.0273
9     1.0650
10    0.8121
11   -0.3730
12   -1.8022
13    0.0777
14    0.4965
15    2.0445
16   -1.2155
17   -0.6528
18   -0.1259
19   -0.4376
20   -0.5602
21   -1.3969
22    0.0420
23   -0.6606
24   -0.3904
25   -0.6615
26   -0.7436
27   -0.8468
28   -0.6191
29    0.9135
30    1.4027
31    1.5012
   quant year   unit season   area iter  ne_idn
2    all 2005 unique    all unique    1  0.2266
3    all 2006 unique    all unique    1 -0.2762
4    all 2007 unique    all unique    1 -0.9047
5    all 2008 unique    all unique    1  0.6456
6    all 2009 unique    all unique    1 -0.9885
7    all 2010 unique    all unique    1 -0.0248
8    all 2011 unique    all unique    1  0.1009
9    all 2012 unique    all unique    1 -0.4438
10   all 2013 unique    all unique    1 -0.6952
11   all 2014 unique    all unique    1 -1.7427
12   all 2015 unique    all unique    1 -0.8628
13   all 2016 unique    all unique    1 -0.8628
14   all 2017 unique    all unique    1  0.5199
15   all 2018 unique    all unique    1 -0.6952
16   all 2019 unique    all unique    1 -0.5276
17   all 2020 unique    all unique    1 -0.4438
18   all 2021 unique    all unique    1  0.2685
19   all 2022 unique    all unique    1  1.5256
20   all 2023 unique    all unique    1  1.8608
21   all 2024 unique    all unique    1  0.9809
22   all 2025 unique    all unique    1  2.3217
   sw_eu_reu
2    -0.7679
3    -0.5150
4    -0.7406
5    -1.2145
6    -0.7588
7    -0.6244
8    -0.2097
9    -0.8818
10   -0.6791
11   -0.2576
12   -0.4376
13   -0.3054
14   -0.6517
15   -0.4900
16   -0.0912
17    0.5125
18    1.3236
19    1.2279
20    1.7451
21    1.9023
22    1.9137
   quant year   unit season   area iter  ne_jap
2    all 2006 unique    all unique    1 -0.3216
3    all 2007 unique    all unique    1 -1.4675
4    all 2008 unique    all unique    1 -1.7240
5    all 2009 unique    all unique    1 -0.0799
6    all 2010 unique    all unique    1 -0.8613
7    all 2011 unique    all unique    1 -2.1918
8    all 2012 unique    all unique    1  0.2927
9    all 2013 unique    all unique    1 -0.1304
10   all 2014 unique    all unique    1  1.4072
11   all 2015 unique    all unique    1  0.6988
12   all 2016 unique    all unique    1  0.5559
13   all 2017 unique    all unique    1  1.2902
14   all 2018 unique    all unique    1  0.4971
15   all 2019 unique    all unique    1  0.4408
16   all 2020 unique    all unique    1  0.0310
17   all 2021 unique    all unique    1 -0.3542
18   all 2022 unique    all unique    1  0.2496
19   all 2023 unique    all unique    1  1.4052
20   all 2024 unique    all unique    1  0.2622
   sw_eu_reu
2    -0.5150
3    -0.7406
4    -1.2145
5    -0.7588
6    -0.6244
7    -0.2097
8    -0.8818
9    -0.6791
10   -0.2576
11   -0.4376
12   -0.3054
13   -0.6517
14   -0.4900
15   -0.0912
16    0.5125
17    1.3236
18    1.2279
19    1.7451
20    1.9023
   quant year   unit season   area iter ne_twn
5    all 2005 unique    all unique    1 -0.888
6    all 2006 unique    all unique    1 -1.492
7    all 2007 unique    all unique    1 -1.180
8    all 2008 unique    all unique    1 -0.470
9    all 2009 unique    all unique    1  0.266
10   all 2010 unique    all unique    1  0.890
11   all 2011 unique    all unique    1  0.569
12   all 2012 unique    all unique    1  0.786
13   all 2013 unique    all unique    1 -0.899
14   all 2014 unique    all unique    1 -1.730
15   all 2015 unique    all unique    1 -0.326
16   all 2016 unique    all unique    1  0.707
17   all 2017 unique    all unique    1  0.199
18   all 2018 unique    all unique    1 -0.521
19   all 2019 unique    all unique    1 -0.755
20   all 2020 unique    all unique    1 -1.610
21   all 2021 unique    all unique    1 -0.487
22   all 2022 unique    all unique    1  0.759
23   all 2023 unique    all unique    1  1.651
24   all 2024 unique    all unique    1  1.180
   sw_eu_reu
5    -0.7679
6    -0.5150
7    -0.7406
8    -1.2145
9    -0.7588
10   -0.6244
11   -0.2097
12   -0.8818
13   -0.6791
14   -0.2576
15   -0.4376
16   -0.3054
17   -0.6517
18   -0.4900
19   -0.0912
20    0.5125
21    1.3236
22    1.2279
23    1.7451
24    1.9023
   quant year   unit season   area iter  nw_jap
1    all 2005 unique    all unique    1 -0.3577
2    all 2006 unique    all unique    1 -0.2235
3    all 2007 unique    all unique    1  1.4150
4    all 2008 unique    all unique    1  1.0867
5    all 2009 unique    all unique    1  1.3172
6    all 2010 unique    all unique    1 -1.1901
7    all 2011 unique    all unique    1 -1.6850
8    all 2012 unique    all unique    1 -0.1396
9    all 2013 unique    all unique    1 -0.9855
10   all 2014 unique    all unique    1  0.0741
11   all 2015 unique    all unique    1  0.7156
12   all 2016 unique    all unique    1 -0.3774
13   all 2017 unique    all unique    1 -0.7581
14   all 2018 unique    all unique    1  1.3277
15   all 2019 unique    all unique    1  1.6444
16   all 2020 unique    all unique    1  0.2300
17   all 2021 unique    all unique    1 -0.5614
18   all 2022 unique    all unique    1 -1.2212
19   all 2023 unique    all unique    1 -0.3113
   sw_eu_reu
1    -0.7679
2    -0.5150
3    -0.7406
4    -1.2145
5    -0.7588
6    -0.6244
7    -0.2097
8    -0.8818
9    -0.6791
10   -0.2576
11   -0.4376
12   -0.3054
13   -0.6517
14   -0.4900
15   -0.0912
16    0.5125
17    1.3236
18    1.2279
19    1.7451
   quant year   unit season   area iter   nw_twn
1    all 2005 unique    all unique    1  0.75802
2    all 2006 unique    all unique    1  3.46401
3    all 2007 unique    all unique    1  0.07256
4    all 2008 unique    all unique    1 -0.00501
5    all 2009 unique    all unique    1 -0.65830
6    all 2010 unique    all unique    1  0.18718
7    all 2011 unique    all unique    1 -0.28943
8    all 2012 unique    all unique    1 -0.48094
9    all 2013 unique    all unique    1 -0.74962
10   all 2014 unique    all unique    1 -1.25426
11   all 2015 unique    all unique    1 -1.19934
12   all 2016 unique    all unique    1 -0.67881
13   all 2017 unique    all unique    1 -0.30550
14   all 2018 unique    all unique    1 -0.08591
15   all 2019 unique    all unique    1  0.39915
16   all 2020 unique    all unique    1  0.11121
17   all 2021 unique    all unique    1 -0.08654
18   all 2022 unique    all unique    1  0.37017
19   all 2023 unique    all unique    1  0.43136
   sw_eu_reu
1    -0.7679
2    -0.5150
3    -0.7406
4    -1.2145
5    -0.7588
6    -0.6244
7    -0.2097
8    -0.8818
9    -0.6791
10   -0.2576
11   -0.4376
12   -0.3054
13   -0.6517
14   -0.4900
15   -0.0912
16    0.5125
17    1.3236
18    1.2279
19    1.7451
   quant year   unit season   area iter se_jap
12   all 2005 unique    all unique    1 -0.810
13   all 2006 unique    all unique    1 -0.533
14   all 2007 unique    all unique    1 -1.153
15   all 2008 unique    all unique    1 -0.694
16   all 2009 unique    all unique    1  0.358
17   all 2010 unique    all unique    1  0.189
18   all 2011 unique    all unique    1  0.282
19   all 2012 unique    all unique    1 -0.196
20   all 2013 unique    all unique    1 -0.480
21   all 2014 unique    all unique    1 -0.798
22   all 2015 unique    all unique    1 -0.548
23   all 2016 unique    all unique    1  0.616
24   all 2017 unique    all unique    1  0.777
25   all 2018 unique    all unique    1  0.370
26   all 2019 unique    all unique    1  0.480
27   all 2020 unique    all unique    1  0.216
28   all 2021 unique    all unique    1 -0.384
29   all 2022 unique    all unique    1  0.405
30   all 2023 unique    all unique    1  0.764
31   all 2024 unique    all unique    1  1.222
   sw_eu_reu
12   -0.7679
13   -0.5150
14   -0.7406
15   -1.2145
16   -0.7588
17   -0.6244
18   -0.2097
19   -0.8818
20   -0.6791
21   -0.2576
22   -0.4376
23   -0.3054
24   -0.6517
25   -0.4900
26   -0.0912
27    0.5125
28    1.3236
29    1.2279
30    1.7451
31    1.9023
   quant year   unit season   area iter  se_twn
12   all 2005 unique    all unique    1 -1.1521
13   all 2006 unique    all unique    1 -0.1705
14   all 2007 unique    all unique    1  0.5810
15   all 2008 unique    all unique    1 -0.0990
16   all 2009 unique    all unique    1 -0.6588
17   all 2010 unique    all unique    1 -0.2970
18   all 2011 unique    all unique    1  0.3387
19   all 2012 unique    all unique    1 -0.3204
20   all 2013 unique    all unique    1  0.2119
21   all 2014 unique    all unique    1  0.5040
22   all 2015 unique    all unique    1  0.0653
23   all 2016 unique    all unique    1 -1.3741
24   all 2017 unique    all unique    1 -1.5295
25   all 2018 unique    all unique    1 -1.4175
26   all 2019 unique    all unique    1 -1.6166
27   all 2020 unique    all unique    1 -0.2857
28   all 2021 unique    all unique    1 -1.1585
29   all 2022 unique    all unique    1 -1.0361
30   all 2023 unique    all unique    1 -0.2749
31   all 2024 unique    all unique    1 -0.7763
   sw_eu_reu
12   -0.7679
13   -0.5150
14   -0.7406
15   -1.2145
16   -0.7588
17   -0.6244
18   -0.2097
19   -0.8818
20   -0.6791
21   -0.2576
22   -0.4376
23   -0.3054
24   -0.6517
25   -0.4900
26   -0.0912
27    0.5125
28    1.3236
29    1.2279
30    1.7451
31    1.9023
   quant year   unit season   area iter sw_eu_esp
1    all 2005 unique    all unique    1   -1.1832
2    all 2006 unique    all unique    1   -1.7146
3    all 2007 unique    all unique    1   -0.6989
4    all 2008 unique    all unique    1   -0.2509
5    all 2009 unique    all unique    1    1.0984
6    all 2010 unique    all unique    1   -0.4607
7    all 2011 unique    all unique    1   -0.8324
8    all 2012 unique    all unique    1    0.6362
9    all 2013 unique    all unique    1   -0.0563
10   all 2014 unique    all unique    1    0.1610
11   all 2015 unique    all unique    1    1.3451
12   all 2016 unique    all unique    1    0.3144
13   all 2017 unique    all unique    1   -1.1362
14   all 2018 unique    all unique    1   -0.6142
15   all 2019 unique    all unique    1    1.7311
16   all 2020 unique    all unique    1    1.5787
17   all 2021 unique    all unique    1   -0.0441
18   all 2022 unique    all unique    1   -0.7992
19   all 2023 unique    all unique    1    0.9257
   sw_eu_reu
1    -0.7679
2    -0.5150
3    -0.7406
4    -1.2145
5    -0.7588
6    -0.6244
7    -0.2097
8    -0.8818
9    -0.6791
10   -0.2576
11   -0.4376
12   -0.3054
13   -0.6517
14   -0.4900
15   -0.0912
16    0.5125
17    1.3236
18    1.2279
19    1.7451
   quant year   unit season   area iter sw_eu_prt
6    all 2005 unique    all unique    1   -1.8022
7    all 2006 unique    all unique    1    0.0777
8    all 2007 unique    all unique    1    0.4965
9    all 2008 unique    all unique    1    2.0445
10   all 2009 unique    all unique    1   -1.2155
11   all 2010 unique    all unique    1   -0.6528
12   all 2011 unique    all unique    1   -0.1259
13   all 2012 unique    all unique    1   -0.4376
14   all 2013 unique    all unique    1   -0.5602
15   all 2014 unique    all unique    1   -1.3969
16   all 2015 unique    all unique    1    0.0420
17   all 2016 unique    all unique    1   -0.6606
18   all 2017 unique    all unique    1   -0.3904
19   all 2018 unique    all unique    1   -0.6615
20   all 2019 unique    all unique    1   -0.7436
21   all 2020 unique    all unique    1   -0.8468
22   all 2021 unique    all unique    1   -0.6191
23   all 2022 unique    all unique    1    0.9135
24   all 2023 unique    all unique    1    1.4027
25   all 2024 unique    all unique    1    1.5012
   sw_eu_reu
6    -0.7679
7    -0.5150
8    -0.7406
9    -1.2145
10   -0.7588
11   -0.6244
12   -0.2097
13   -0.8818
14   -0.6791
15   -0.2576
16   -0.4376
17   -0.3054
18   -0.6517
19   -0.4900
20   -0.0912
21    0.5125
22    1.3236
23    1.2279
24    1.7451
25    1.9023
   quant year   unit season   area iter sw_eu_reu
1    all 2005 unique    all unique    1   -0.7679
2    all 2006 unique    all unique    1   -0.5150
3    all 2007 unique    all unique    1   -0.7406
4    all 2008 unique    all unique    1   -1.2145
5    all 2009 unique    all unique    1   -0.7588
6    all 2010 unique    all unique    1   -0.6244
7    all 2011 unique    all unique    1   -0.2097
8    all 2012 unique    all unique    1   -0.8818
9    all 2013 unique    all unique    1   -0.6791
10   all 2014 unique    all unique    1   -0.2576
11   all 2015 unique    all unique    1   -0.4376
12   all 2016 unique    all unique    1   -0.3054
13   all 2017 unique    all unique    1   -0.6517
14   all 2018 unique    all unique    1   -0.4900
15   all 2019 unique    all unique    1   -0.0912
16   all 2020 unique    all unique    1    0.5125
17   all 2021 unique    all unique    1    1.3236
18   all 2022 unique    all unique    1    1.2279
19   all 2023 unique    all unique    1    1.7451
20   all 2024 unique    all unique    1    1.9023
21   all 2025 unique    all unique    1    1.9137
   sw_eu_reu.1
1      -0.7679
2      -0.5150
3      -0.7406
4      -1.2145
5      -0.7588
6      -0.6244
7      -0.2097
8      -0.8818
9      -0.6791
10     -0.2576
11     -0.4376
12     -0.3054
13     -0.6517
14     -0.4900
15     -0.0912
16      0.5125
17      1.3236
18      1.2279
19      1.7451
20      1.9023
21      1.9137
   quant year   unit season   area iter sw_jap
12   all 2005 unique    all unique    1 -1.035
13   all 2006 unique    all unique    1 -1.453
14   all 2007 unique    all unique    1 -0.846
15   all 2008 unique    all unique    1 -1.030
16   all 2009 unique    all unique    1 -0.946
17   all 2010 unique    all unique    1 -0.942
18   all 2011 unique    all unique    1 -1.089
19   all 2012 unique    all unique    1 -1.072
20   all 2013 unique    all unique    1 -0.593
21   all 2014 unique    all unique    1  0.372
22   all 2015 unique    all unique    1  0.509
23   all 2016 unique    all unique    1  1.928
24   all 2017 unique    all unique    1  0.457
25   all 2018 unique    all unique    1  0.625
26   all 2019 unique    all unique    1  0.913
27   all 2020 unique    all unique    1  1.555
28   all 2021 unique    all unique    1  1.079
29   all 2022 unique    all unique    1  0.994
30   all 2023 unique    all unique    1  0.597
31   all 2024 unique    all unique    1  1.339
   sw_eu_reu
12   -0.7679
13   -0.5150
14   -0.7406
15   -1.2145
16   -0.7588
17   -0.6244
18   -0.2097
19   -0.8818
20   -0.6791
21   -0.2576
22   -0.4376
23   -0.3054
24   -0.6517
25   -0.4900
26   -0.0912
27    0.5125
28    1.3236
29    1.2279
30    1.7451
31    1.9023
   quant year   unit season   area iter sw_twn
1    all 2005 unique    all unique    1 -1.554
2    all 2006 unique    all unique    1 -0.479
3    all 2007 unique    all unique    1 -0.731
4    all 2008 unique    all unique    1  0.554
5    all 2009 unique    all unique    1  0.331
6    all 2010 unique    all unique    1  0.186
7    all 2011 unique    all unique    1  0.522
8    all 2012 unique    all unique    1 -0.253
9    all 2013 unique    all unique    1 -0.444
10   all 2014 unique    all unique    1 -0.194
11   all 2015 unique    all unique    1 -1.247
12   all 2016 unique    all unique    1 -0.842
13   all 2017 unique    all unique    1 -1.332
14   all 2018 unique    all unique    1 -0.930
15   all 2019 unique    all unique    1  0.745
16   all 2020 unique    all unique    1  1.607
17   all 2021 unique    all unique    1  1.503
18   all 2022 unique    all unique    1  0.943
19   all 2023 unique    all unique    1  1.616
   sw_eu_reu
1    -0.7679
2    -0.5150
3    -0.7406
4    -1.2145
5    -0.7588
6    -0.6244
7    -0.2097
8    -0.8818
9    -0.6791
10   -0.2576
11   -0.4376
12   -0.3054
13   -0.6517
14   -0.4900
15   -0.0912
16    0.5125
17    1.3236
18    1.2279
19    1.7451
   quant year   unit season   area iter  sw_zaf
12   all 2005 unique    all unique    1 -1.1221
13   all 2006 unique    all unique    1 -1.3236
14   all 2007 unique    all unique    1 -0.7660
15   all 2008 unique    all unique    1 -1.0195
16   all 2009 unique    all unique    1 -0.6750
17   all 2010 unique    all unique    1 -0.1069
18   all 2011 unique    all unique    1 -0.0435
19   all 2012 unique    all unique    1  0.0173
20   all 2013 unique    all unique    1 -1.0648
21   all 2014 unique    all unique    1 -1.2983
22   all 2015 unique    all unique    1  0.7031
23   all 2016 unique    all unique    1  0.8880
24   all 2017 unique    all unique    1  1.6972
25   all 2018 unique    all unique    1 -0.3508
26   all 2019 unique    all unique    1 -0.2486
27   all 2020 unique    all unique    1 -0.5227
28   all 2021 unique    all unique    1 -0.2518
29   all 2022 unique    all unique    1  0.3599
30   all 2023 unique    all unique    1 -0.2575
31   all 2024 unique    all unique    1 -0.1691
   sw_eu_reu
12   -0.7679
13   -0.5150
14   -0.7406
15   -1.2145
16   -0.7588
17   -0.6244
18   -0.2097
19   -0.8818
20   -0.6791
21   -0.2576
22   -0.4376
23   -0.3054
24   -0.6517
25   -0.4900
26   -0.0912
27    0.5125
28    1.3236
29    1.2279
30    1.7451
31    1.9023
   quant year   unit season   area iter  ne_idn
11   all 2004 unique    all unique    1  0.0171
12   all 2005 unique    all unique    1  0.2266
13   all 2006 unique    all unique    1 -0.2762
14   all 2007 unique    all unique    1 -0.9047
15   all 2008 unique    all unique    1  0.6456
16   all 2009 unique    all unique    1 -0.9885
17   all 2010 unique    all unique    1 -0.0248
18   all 2011 unique    all unique    1  0.1009
19   all 2012 unique    all unique    1 -0.4438
20   all 2013 unique    all unique    1 -0.6952
21   all 2014 unique    all unique    1 -1.7427
22   all 2015 unique    all unique    1 -0.8628
23   all 2016 unique    all unique    1 -0.8628
24   all 2017 unique    all unique    1  0.5199
25   all 2018 unique    all unique    1 -0.6952
26   all 2019 unique    all unique    1 -0.5276
27   all 2020 unique    all unique    1 -0.4438
28   all 2021 unique    all unique    1  0.2685
29   all 2022 unique    all unique    1  1.5256
30   all 2023 unique    all unique    1  1.8608
31   all 2024 unique    all unique    1  0.9809
   sw_jap
11 -1.430
12 -1.035
13 -1.453
14 -0.846
15 -1.030
16 -0.946
17 -0.942
18 -1.089
19 -1.072
20 -0.593
21  0.372
22  0.509
23  1.928
24  0.457
25  0.625
26  0.913
27  1.555
28  1.079
29  0.994
30  0.597
31  1.339
   quant year   unit season   area iter  ne_jap
13   all 2006 unique    all unique    1 -0.3216
14   all 2007 unique    all unique    1 -1.4675
15   all 2008 unique    all unique    1 -1.7240
16   all 2009 unique    all unique    1 -0.0799
17   all 2010 unique    all unique    1 -0.8613
18   all 2011 unique    all unique    1 -2.1918
19   all 2012 unique    all unique    1  0.2927
20   all 2013 unique    all unique    1 -0.1304
21   all 2014 unique    all unique    1  1.4072
22   all 2015 unique    all unique    1  0.6988
23   all 2016 unique    all unique    1  0.5559
24   all 2017 unique    all unique    1  1.2902
25   all 2018 unique    all unique    1  0.4971
26   all 2019 unique    all unique    1  0.4408
27   all 2020 unique    all unique    1  0.0310
28   all 2021 unique    all unique    1 -0.3542
29   all 2022 unique    all unique    1  0.2496
30   all 2023 unique    all unique    1  1.4052
31   all 2024 unique    all unique    1  0.2622
   sw_jap
13 -1.453
14 -0.846
15 -1.030
16 -0.946
17 -0.942
18 -1.089
19 -1.072
20 -0.593
21  0.372
22  0.509
23  1.928
24  0.457
25  0.625
26  0.913
27  1.555
28  1.079
29  0.994
30  0.597
31  1.339
   quant year   unit season   area iter ne_twn
8    all 2001 unique    all unique    1  0.779
9    all 2002 unique    all unique    1  0.265
10   all 2003 unique    all unique    1  1.615
11   all 2004 unique    all unique    1  0.690
12   all 2005 unique    all unique    1 -0.888
13   all 2006 unique    all unique    1 -1.492
14   all 2007 unique    all unique    1 -1.180
15   all 2008 unique    all unique    1 -0.470
16   all 2009 unique    all unique    1  0.266
17   all 2010 unique    all unique    1  0.890
18   all 2011 unique    all unique    1  0.569
19   all 2012 unique    all unique    1  0.786
20   all 2013 unique    all unique    1 -0.899
21   all 2014 unique    all unique    1 -1.730
22   all 2015 unique    all unique    1 -0.326
23   all 2016 unique    all unique    1  0.707
24   all 2017 unique    all unique    1  0.199
25   all 2018 unique    all unique    1 -0.521
26   all 2019 unique    all unique    1 -0.755
27   all 2020 unique    all unique    1 -1.610
28   all 2021 unique    all unique    1 -0.487
29   all 2022 unique    all unique    1  0.759
30   all 2023 unique    all unique    1  1.651
31   all 2024 unique    all unique    1  1.180
   sw_jap
8  -1.055
9  -1.251
10 -0.665
11 -1.430
12 -1.035
13 -1.453
14 -0.846
15 -1.030
16 -0.946
17 -0.942
18 -1.089
19 -1.072
20 -0.593
21  0.372
22  0.509
23  1.928
24  0.457
25  0.625
26  0.913
27  1.555
28  1.079
29  0.994
30  0.597
31  1.339
   quant year   unit season   area iter  nw_jap
12   all 2005 unique    all unique    1 -0.3577
13   all 2006 unique    all unique    1 -0.2235
14   all 2007 unique    all unique    1  1.4150
15   all 2008 unique    all unique    1  1.0867
16   all 2009 unique    all unique    1  1.3172
17   all 2010 unique    all unique    1 -1.1901
18   all 2011 unique    all unique    1 -1.6850
19   all 2012 unique    all unique    1 -0.1396
20   all 2013 unique    all unique    1 -0.9855
21   all 2014 unique    all unique    1  0.0741
22   all 2015 unique    all unique    1  0.7156
23   all 2016 unique    all unique    1 -0.3774
24   all 2017 unique    all unique    1 -0.7581
25   all 2018 unique    all unique    1  1.3277
26   all 2019 unique    all unique    1  1.6444
27   all 2020 unique    all unique    1  0.2300
28   all 2021 unique    all unique    1 -0.5614
29   all 2022 unique    all unique    1 -1.2212
30   all 2023 unique    all unique    1 -0.3113
   sw_jap
12 -1.035
13 -1.453
14 -0.846
15 -1.030
16 -0.946
17 -0.942
18 -1.089
19 -1.072
20 -0.593
21  0.372
22  0.509
23  1.928
24  0.457
25  0.625
26  0.913
27  1.555
28  1.079
29  0.994
30  0.597
   quant year   unit season   area iter   nw_twn
12   all 2005 unique    all unique    1  0.75802
13   all 2006 unique    all unique    1  3.46401
14   all 2007 unique    all unique    1  0.07256
15   all 2008 unique    all unique    1 -0.00501
16   all 2009 unique    all unique    1 -0.65830
17   all 2010 unique    all unique    1  0.18718
18   all 2011 unique    all unique    1 -0.28943
19   all 2012 unique    all unique    1 -0.48094
20   all 2013 unique    all unique    1 -0.74962
21   all 2014 unique    all unique    1 -1.25426
22   all 2015 unique    all unique    1 -1.19934
23   all 2016 unique    all unique    1 -0.67881
24   all 2017 unique    all unique    1 -0.30550
25   all 2018 unique    all unique    1 -0.08591
26   all 2019 unique    all unique    1  0.39915
27   all 2020 unique    all unique    1  0.11121
28   all 2021 unique    all unique    1 -0.08654
29   all 2022 unique    all unique    1  0.37017
30   all 2023 unique    all unique    1  0.43136
   sw_jap
12 -1.035
13 -1.453
14 -0.846
15 -1.030
16 -0.946
17 -0.942
18 -1.089
19 -1.072
20 -0.593
21  0.372
22  0.509
23  1.928
24  0.457
25  0.625
26  0.913
27  1.555
28  1.079
29  0.994
30  0.597
   quant year   unit season   area iter se_jap
1    all 1994 unique    all unique    1  3.292
2    all 1995 unique    all unique    1  1.251
3    all 1996 unique    all unique    1  1.081
4    all 1997 unique    all unique    1  0.955
5    all 1998 unique    all unique    1 -0.113
6    all 1999 unique    all unique    1 -0.716
7    all 2000 unique    all unique    1 -0.916
8    all 2001 unique    all unique    1 -1.204
9    all 2002 unique    all unique    1 -1.196
10   all 2003 unique    all unique    1 -1.508
11   all 2004 unique    all unique    1 -1.009
12   all 2005 unique    all unique    1 -0.810
13   all 2006 unique    all unique    1 -0.533
14   all 2007 unique    all unique    1 -1.153
15   all 2008 unique    all unique    1 -0.694
16   all 2009 unique    all unique    1  0.358
17   all 2010 unique    all unique    1  0.189
18   all 2011 unique    all unique    1  0.282
19   all 2012 unique    all unique    1 -0.196
20   all 2013 unique    all unique    1 -0.480
21   all 2014 unique    all unique    1 -0.798
22   all 2015 unique    all unique    1 -0.548
23   all 2016 unique    all unique    1  0.616
24   all 2017 unique    all unique    1  0.777
25   all 2018 unique    all unique    1  0.370
26   all 2019 unique    all unique    1  0.480
27   all 2020 unique    all unique    1  0.216
28   all 2021 unique    all unique    1 -0.384
29   all 2022 unique    all unique    1  0.405
30   all 2023 unique    all unique    1  0.764
31   all 2024 unique    all unique    1  1.222
   sw_jap
1   0.722
2   0.319
3   0.824
4   1.049
5   0.471
6   0.305
7  -0.652
8  -1.055
9  -1.251
10 -0.665
11 -1.430
12 -1.035
13 -1.453
14 -0.846
15 -1.030
16 -0.946
17 -0.942
18 -1.089
19 -1.072
20 -0.593
21  0.372
22  0.509
23  1.928
24  0.457
25  0.625
26  0.913
27  1.555
28  1.079
29  0.994
30  0.597
31  1.339
   quant year   unit season   area iter  se_twn
1    all 1994 unique    all unique    1  0.9343
2    all 1995 unique    all unique    1  1.0663
3    all 1996 unique    all unique    1  1.4201
4    all 1997 unique    all unique    1  2.2364
5    all 1998 unique    all unique    1  1.0395
6    all 1999 unique    all unique    1  1.6709
7    all 2000 unique    all unique    1  1.4017
8    all 2001 unique    all unique    1 -0.2304
9    all 2002 unique    all unique    1  0.4142
10   all 2003 unique    all unique    1  0.2000
11   all 2004 unique    all unique    1  0.3130
12   all 2005 unique    all unique    1 -1.1521
13   all 2006 unique    all unique    1 -0.1705
14   all 2007 unique    all unique    1  0.5810
15   all 2008 unique    all unique    1 -0.0990
16   all 2009 unique    all unique    1 -0.6588
17   all 2010 unique    all unique    1 -0.2970
18   all 2011 unique    all unique    1  0.3387
19   all 2012 unique    all unique    1 -0.3204
20   all 2013 unique    all unique    1  0.2119
21   all 2014 unique    all unique    1  0.5040
22   all 2015 unique    all unique    1  0.0653
23   all 2016 unique    all unique    1 -1.3741
24   all 2017 unique    all unique    1 -1.5295
25   all 2018 unique    all unique    1 -1.4175
26   all 2019 unique    all unique    1 -1.6166
27   all 2020 unique    all unique    1 -0.2857
28   all 2021 unique    all unique    1 -1.1585
29   all 2022 unique    all unique    1 -1.0361
30   all 2023 unique    all unique    1 -0.2749
31   all 2024 unique    all unique    1 -0.7763
   sw_jap
1   0.722
2   0.319
3   0.824
4   1.049
5   0.471
6   0.305
7  -0.652
8  -1.055
9  -1.251
10 -0.665
11 -1.430
12 -1.035
13 -1.453
14 -0.846
15 -1.030
16 -0.946
17 -0.942
18 -1.089
19 -1.072
20 -0.593
21  0.372
22  0.509
23  1.928
24  0.457
25  0.625
26  0.913
27  1.555
28  1.079
29  0.994
30  0.597
31  1.339
   quant year   unit season   area iter sw_eu_esp
12   all 2005 unique    all unique    1   -1.1832
13   all 2006 unique    all unique    1   -1.7146
14   all 2007 unique    all unique    1   -0.6989
15   all 2008 unique    all unique    1   -0.2509
16   all 2009 unique    all unique    1    1.0984
17   all 2010 unique    all unique    1   -0.4607
18   all 2011 unique    all unique    1   -0.8324
19   all 2012 unique    all unique    1    0.6362
20   all 2013 unique    all unique    1   -0.0563
21   all 2014 unique    all unique    1    0.1610
22   all 2015 unique    all unique    1    1.3451
23   all 2016 unique    all unique    1    0.3144
24   all 2017 unique    all unique    1   -1.1362
25   all 2018 unique    all unique    1   -0.6142
26   all 2019 unique    all unique    1    1.7311
27   all 2020 unique    all unique    1    1.5787
28   all 2021 unique    all unique    1   -0.0441
29   all 2022 unique    all unique    1   -0.7992
30   all 2023 unique    all unique    1    0.9257
   sw_jap
12 -1.035
13 -1.453
14 -0.846
15 -1.030
16 -0.946
17 -0.942
18 -1.089
19 -1.072
20 -0.593
21  0.372
22  0.509
23  1.928
24  0.457
25  0.625
26  0.913
27  1.555
28  1.079
29  0.994
30  0.597
   quant year   unit season   area iter sw_eu_prt
7    all 2000 unique    all unique    1    1.1036
8    all 2001 unique    all unique    1    1.0273
9    all 2002 unique    all unique    1    1.0650
10   all 2003 unique    all unique    1    0.8121
11   all 2004 unique    all unique    1   -0.3730
12   all 2005 unique    all unique    1   -1.8022
13   all 2006 unique    all unique    1    0.0777
14   all 2007 unique    all unique    1    0.4965
15   all 2008 unique    all unique    1    2.0445
16   all 2009 unique    all unique    1   -1.2155
17   all 2010 unique    all unique    1   -0.6528
18   all 2011 unique    all unique    1   -0.1259
19   all 2012 unique    all unique    1   -0.4376
20   all 2013 unique    all unique    1   -0.5602
21   all 2014 unique    all unique    1   -1.3969
22   all 2015 unique    all unique    1    0.0420
23   all 2016 unique    all unique    1   -0.6606
24   all 2017 unique    all unique    1   -0.3904
25   all 2018 unique    all unique    1   -0.6615
26   all 2019 unique    all unique    1   -0.7436
27   all 2020 unique    all unique    1   -0.8468
28   all 2021 unique    all unique    1   -0.6191
29   all 2022 unique    all unique    1    0.9135
30   all 2023 unique    all unique    1    1.4027
31   all 2024 unique    all unique    1    1.5012
   sw_jap
7  -0.652
8  -1.055
9  -1.251
10 -0.665
11 -1.430
12 -1.035
13 -1.453
14 -0.846
15 -1.030
16 -0.946
17 -0.942
18 -1.089
19 -1.072
20 -0.593
21  0.372
22  0.509
23  1.928
24  0.457
25  0.625
26  0.913
27  1.555
28  1.079
29  0.994
30  0.597
31  1.339
   quant year   unit season   area iter sw_eu_reu
12   all 2005 unique    all unique    1   -0.7679
13   all 2006 unique    all unique    1   -0.5150
14   all 2007 unique    all unique    1   -0.7406
15   all 2008 unique    all unique    1   -1.2145
16   all 2009 unique    all unique    1   -0.7588
17   all 2010 unique    all unique    1   -0.6244
18   all 2011 unique    all unique    1   -0.2097
19   all 2012 unique    all unique    1   -0.8818
20   all 2013 unique    all unique    1   -0.6791
21   all 2014 unique    all unique    1   -0.2576
22   all 2015 unique    all unique    1   -0.4376
23   all 2016 unique    all unique    1   -0.3054
24   all 2017 unique    all unique    1   -0.6517
25   all 2018 unique    all unique    1   -0.4900
26   all 2019 unique    all unique    1   -0.0912
27   all 2020 unique    all unique    1    0.5125
28   all 2021 unique    all unique    1    1.3236
29   all 2022 unique    all unique    1    1.2279
30   all 2023 unique    all unique    1    1.7451
31   all 2024 unique    all unique    1    1.9023
   sw_jap
12 -1.035
13 -1.453
14 -0.846
15 -1.030
16 -0.946
17 -0.942
18 -1.089
19 -1.072
20 -0.593
21  0.372
22  0.509
23  1.928
24  0.457
25  0.625
26  0.913
27  1.555
28  1.079
29  0.994
30  0.597
31  1.339
   quant year   unit season   area iter sw_jap
1    all 1994 unique    all unique    1  0.722
2    all 1995 unique    all unique    1  0.319
3    all 1996 unique    all unique    1  0.824
4    all 1997 unique    all unique    1  1.049
5    all 1998 unique    all unique    1  0.471
6    all 1999 unique    all unique    1  0.305
7    all 2000 unique    all unique    1 -0.652
8    all 2001 unique    all unique    1 -1.055
9    all 2002 unique    all unique    1 -1.251
10   all 2003 unique    all unique    1 -0.665
11   all 2004 unique    all unique    1 -1.430
12   all 2005 unique    all unique    1 -1.035
13   all 2006 unique    all unique    1 -1.453
14   all 2007 unique    all unique    1 -0.846
15   all 2008 unique    all unique    1 -1.030
16   all 2009 unique    all unique    1 -0.946
17   all 2010 unique    all unique    1 -0.942
18   all 2011 unique    all unique    1 -1.089
19   all 2012 unique    all unique    1 -1.072
20   all 2013 unique    all unique    1 -0.593
21   all 2014 unique    all unique    1  0.372
22   all 2015 unique    all unique    1  0.509
23   all 2016 unique    all unique    1  1.928
24   all 2017 unique    all unique    1  0.457
25   all 2018 unique    all unique    1  0.625
26   all 2019 unique    all unique    1  0.913
27   all 2020 unique    all unique    1  1.555
28   all 2021 unique    all unique    1  1.079
29   all 2022 unique    all unique    1  0.994
30   all 2023 unique    all unique    1  0.597
31   all 2024 unique    all unique    1  1.339
   sw_jap.1
1     0.722
2     0.319
3     0.824
4     1.049
5     0.471
6     0.305
7    -0.652
8    -1.055
9    -1.251
10   -0.665
11   -1.430
12   -1.035
13   -1.453
14   -0.846
15   -1.030
16   -0.946
17   -0.942
18   -1.089
19   -1.072
20   -0.593
21    0.372
22    0.509
23    1.928
24    0.457
25    0.625
26    0.913
27    1.555
28    1.079
29    0.994
30    0.597
31    1.339
   quant year   unit season   area iter sw_twn
12   all 2005 unique    all unique    1 -1.554
13   all 2006 unique    all unique    1 -0.479
14   all 2007 unique    all unique    1 -0.731
15   all 2008 unique    all unique    1  0.554
16   all 2009 unique    all unique    1  0.331
17   all 2010 unique    all unique    1  0.186
18   all 2011 unique    all unique    1  0.522
19   all 2012 unique    all unique    1 -0.253
20   all 2013 unique    all unique    1 -0.444
21   all 2014 unique    all unique    1 -0.194
22   all 2015 unique    all unique    1 -1.247
23   all 2016 unique    all unique    1 -0.842
24   all 2017 unique    all unique    1 -1.332
25   all 2018 unique    all unique    1 -0.930
26   all 2019 unique    all unique    1  0.745
27   all 2020 unique    all unique    1  1.607
28   all 2021 unique    all unique    1  1.503
29   all 2022 unique    all unique    1  0.943
30   all 2023 unique    all unique    1  1.616
   sw_jap
12 -1.035
13 -1.453
14 -0.846
15 -1.030
16 -0.946
17 -0.942
18 -1.089
19 -1.072
20 -0.593
21  0.372
22  0.509
23  1.928
24  0.457
25  0.625
26  0.913
27  1.555
28  1.079
29  0.994
30  0.597
   quant year   unit season   area iter  sw_zaf
1    all 1994 unique    all unique    1  3.2533
2    all 1995 unique    all unique    1  1.6007
3    all 1996 unique    all unique    1  0.7542
4    all 1997 unique    all unique    1  0.7176
5    all 1998 unique    all unique    1  0.8980
6    all 1999 unique    all unique    1 -0.2246
7    all 2000 unique    all unique    1 -0.3396
8    all 2001 unique    all unique    1  0.5088
9    all 2002 unique    all unique    1  0.1789
10   all 2003 unique    all unique    1 -0.7160
11   all 2004 unique    all unique    1 -1.0768
12   all 2005 unique    all unique    1 -1.1221
13   all 2006 unique    all unique    1 -1.3236
14   all 2007 unique    all unique    1 -0.7660
15   all 2008 unique    all unique    1 -1.0195
16   all 2009 unique    all unique    1 -0.6750
17   all 2010 unique    all unique    1 -0.1069
18   all 2011 unique    all unique    1 -0.0435
19   all 2012 unique    all unique    1  0.0173
20   all 2013 unique    all unique    1 -1.0648
21   all 2014 unique    all unique    1 -1.2983
22   all 2015 unique    all unique    1  0.7031
23   all 2016 unique    all unique    1  0.8880
24   all 2017 unique    all unique    1  1.6972
25   all 2018 unique    all unique    1 -0.3508
26   all 2019 unique    all unique    1 -0.2486
27   all 2020 unique    all unique    1 -0.5227
28   all 2021 unique    all unique    1 -0.2518
29   all 2022 unique    all unique    1  0.3599
30   all 2023 unique    all unique    1 -0.2575
31   all 2024 unique    all unique    1 -0.1691
   sw_jap
1   0.722
2   0.319
3   0.824
4   1.049
5   0.471
6   0.305
7  -0.652
8  -1.055
9  -1.251
10 -0.665
11 -1.430
12 -1.035
13 -1.453
14 -0.846
15 -1.030
16 -0.946
17 -0.942
18 -1.089
19 -1.072
20 -0.593
21  0.372
22  0.509
23  1.928
24  0.457
25  0.625
26  0.913
27  1.555
28  1.079
29  0.994
30  0.597
31  1.339
   quant year   unit season   area iter  ne_idn
2    all 2005 unique    all unique    1  0.2266
3    all 2006 unique    all unique    1 -0.2762
4    all 2007 unique    all unique    1 -0.9047
5    all 2008 unique    all unique    1  0.6456
6    all 2009 unique    all unique    1 -0.9885
7    all 2010 unique    all unique    1 -0.0248
8    all 2011 unique    all unique    1  0.1009
9    all 2012 unique    all unique    1 -0.4438
10   all 2013 unique    all unique    1 -0.6952
11   all 2014 unique    all unique    1 -1.7427
12   all 2015 unique    all unique    1 -0.8628
13   all 2016 unique    all unique    1 -0.8628
14   all 2017 unique    all unique    1  0.5199
15   all 2018 unique    all unique    1 -0.6952
16   all 2019 unique    all unique    1 -0.5276
17   all 2020 unique    all unique    1 -0.4438
18   all 2021 unique    all unique    1  0.2685
19   all 2022 unique    all unique    1  1.5256
20   all 2023 unique    all unique    1  1.8608
   sw_twn
2  -1.554
3  -0.479
4  -0.731
5   0.554
6   0.331
7   0.186
8   0.522
9  -0.253
10 -0.444
11 -0.194
12 -1.247
13 -0.842
14 -1.332
15 -0.930
16  0.745
17  1.607
18  1.503
19  0.943
20  1.616
   quant year   unit season   area iter  ne_jap
2    all 2006 unique    all unique    1 -0.3216
3    all 2007 unique    all unique    1 -1.4675
4    all 2008 unique    all unique    1 -1.7240
5    all 2009 unique    all unique    1 -0.0799
6    all 2010 unique    all unique    1 -0.8613
7    all 2011 unique    all unique    1 -2.1918
8    all 2012 unique    all unique    1  0.2927
9    all 2013 unique    all unique    1 -0.1304
10   all 2014 unique    all unique    1  1.4072
11   all 2015 unique    all unique    1  0.6988
12   all 2016 unique    all unique    1  0.5559
13   all 2017 unique    all unique    1  1.2902
14   all 2018 unique    all unique    1  0.4971
15   all 2019 unique    all unique    1  0.4408
16   all 2020 unique    all unique    1  0.0310
17   all 2021 unique    all unique    1 -0.3542
18   all 2022 unique    all unique    1  0.2496
19   all 2023 unique    all unique    1  1.4052
   sw_twn
2  -0.479
3  -0.731
4   0.554
5   0.331
6   0.186
7   0.522
8  -0.253
9  -0.444
10 -0.194
11 -1.247
12 -0.842
13 -1.332
14 -0.930
15  0.745
16  1.607
17  1.503
18  0.943
19  1.616
   quant year   unit season   area iter ne_twn
5    all 2005 unique    all unique    1 -0.888
6    all 2006 unique    all unique    1 -1.492
7    all 2007 unique    all unique    1 -1.180
8    all 2008 unique    all unique    1 -0.470
9    all 2009 unique    all unique    1  0.266
10   all 2010 unique    all unique    1  0.890
11   all 2011 unique    all unique    1  0.569
12   all 2012 unique    all unique    1  0.786
13   all 2013 unique    all unique    1 -0.899
14   all 2014 unique    all unique    1 -1.730
15   all 2015 unique    all unique    1 -0.326
16   all 2016 unique    all unique    1  0.707
17   all 2017 unique    all unique    1  0.199
18   all 2018 unique    all unique    1 -0.521
19   all 2019 unique    all unique    1 -0.755
20   all 2020 unique    all unique    1 -1.610
21   all 2021 unique    all unique    1 -0.487
22   all 2022 unique    all unique    1  0.759
23   all 2023 unique    all unique    1  1.651
   sw_twn
5  -1.554
6  -0.479
7  -0.731
8   0.554
9   0.331
10  0.186
11  0.522
12 -0.253
13 -0.444
14 -0.194
15 -1.247
16 -0.842
17 -1.332
18 -0.930
19  0.745
20  1.607
21  1.503
22  0.943
23  1.616
   quant year   unit season   area iter  nw_jap
1    all 2005 unique    all unique    1 -0.3577
2    all 2006 unique    all unique    1 -0.2235
3    all 2007 unique    all unique    1  1.4150
4    all 2008 unique    all unique    1  1.0867
5    all 2009 unique    all unique    1  1.3172
6    all 2010 unique    all unique    1 -1.1901
7    all 2011 unique    all unique    1 -1.6850
8    all 2012 unique    all unique    1 -0.1396
9    all 2013 unique    all unique    1 -0.9855
10   all 2014 unique    all unique    1  0.0741
11   all 2015 unique    all unique    1  0.7156
12   all 2016 unique    all unique    1 -0.3774
13   all 2017 unique    all unique    1 -0.7581
14   all 2018 unique    all unique    1  1.3277
15   all 2019 unique    all unique    1  1.6444
16   all 2020 unique    all unique    1  0.2300
17   all 2021 unique    all unique    1 -0.5614
18   all 2022 unique    all unique    1 -1.2212
19   all 2023 unique    all unique    1 -0.3113
   sw_twn
1  -1.554
2  -0.479
3  -0.731
4   0.554
5   0.331
6   0.186
7   0.522
8  -0.253
9  -0.444
10 -0.194
11 -1.247
12 -0.842
13 -1.332
14 -0.930
15  0.745
16  1.607
17  1.503
18  0.943
19  1.616
   quant year   unit season   area iter   nw_twn
1    all 2005 unique    all unique    1  0.75802
2    all 2006 unique    all unique    1  3.46401
3    all 2007 unique    all unique    1  0.07256
4    all 2008 unique    all unique    1 -0.00501
5    all 2009 unique    all unique    1 -0.65830
6    all 2010 unique    all unique    1  0.18718
7    all 2011 unique    all unique    1 -0.28943
8    all 2012 unique    all unique    1 -0.48094
9    all 2013 unique    all unique    1 -0.74962
10   all 2014 unique    all unique    1 -1.25426
11   all 2015 unique    all unique    1 -1.19934
12   all 2016 unique    all unique    1 -0.67881
13   all 2017 unique    all unique    1 -0.30550
14   all 2018 unique    all unique    1 -0.08591
15   all 2019 unique    all unique    1  0.39915
16   all 2020 unique    all unique    1  0.11121
17   all 2021 unique    all unique    1 -0.08654
18   all 2022 unique    all unique    1  0.37017
19   all 2023 unique    all unique    1  0.43136
   sw_twn
1  -1.554
2  -0.479
3  -0.731
4   0.554
5   0.331
6   0.186
7   0.522
8  -0.253
9  -0.444
10 -0.194
11 -1.247
12 -0.842
13 -1.332
14 -0.930
15  0.745
16  1.607
17  1.503
18  0.943
19  1.616
   quant year   unit season   area iter se_jap
12   all 2005 unique    all unique    1 -0.810
13   all 2006 unique    all unique    1 -0.533
14   all 2007 unique    all unique    1 -1.153
15   all 2008 unique    all unique    1 -0.694
16   all 2009 unique    all unique    1  0.358
17   all 2010 unique    all unique    1  0.189
18   all 2011 unique    all unique    1  0.282
19   all 2012 unique    all unique    1 -0.196
20   all 2013 unique    all unique    1 -0.480
21   all 2014 unique    all unique    1 -0.798
22   all 2015 unique    all unique    1 -0.548
23   all 2016 unique    all unique    1  0.616
24   all 2017 unique    all unique    1  0.777
25   all 2018 unique    all unique    1  0.370
26   all 2019 unique    all unique    1  0.480
27   all 2020 unique    all unique    1  0.216
28   all 2021 unique    all unique    1 -0.384
29   all 2022 unique    all unique    1  0.405
30   all 2023 unique    all unique    1  0.764
   sw_twn
12 -1.554
13 -0.479
14 -0.731
15  0.554
16  0.331
17  0.186
18  0.522
19 -0.253
20 -0.444
21 -0.194
22 -1.247
23 -0.842
24 -1.332
25 -0.930
26  0.745
27  1.607
28  1.503
29  0.943
30  1.616
   quant year   unit season   area iter  se_twn
12   all 2005 unique    all unique    1 -1.1521
13   all 2006 unique    all unique    1 -0.1705
14   all 2007 unique    all unique    1  0.5810
15   all 2008 unique    all unique    1 -0.0990
16   all 2009 unique    all unique    1 -0.6588
17   all 2010 unique    all unique    1 -0.2970
18   all 2011 unique    all unique    1  0.3387
19   all 2012 unique    all unique    1 -0.3204
20   all 2013 unique    all unique    1  0.2119
21   all 2014 unique    all unique    1  0.5040
22   all 2015 unique    all unique    1  0.0653
23   all 2016 unique    all unique    1 -1.3741
24   all 2017 unique    all unique    1 -1.5295
25   all 2018 unique    all unique    1 -1.4175
26   all 2019 unique    all unique    1 -1.6166
27   all 2020 unique    all unique    1 -0.2857
28   all 2021 unique    all unique    1 -1.1585
29   all 2022 unique    all unique    1 -1.0361
30   all 2023 unique    all unique    1 -0.2749
   sw_twn
12 -1.554
13 -0.479
14 -0.731
15  0.554
16  0.331
17  0.186
18  0.522
19 -0.253
20 -0.444
21 -0.194
22 -1.247
23 -0.842
24 -1.332
25 -0.930
26  0.745
27  1.607
28  1.503
29  0.943
30  1.616
   quant year   unit season   area iter sw_eu_esp
1    all 2005 unique    all unique    1   -1.1832
2    all 2006 unique    all unique    1   -1.7146
3    all 2007 unique    all unique    1   -0.6989
4    all 2008 unique    all unique    1   -0.2509
5    all 2009 unique    all unique    1    1.0984
6    all 2010 unique    all unique    1   -0.4607
7    all 2011 unique    all unique    1   -0.8324
8    all 2012 unique    all unique    1    0.6362
9    all 2013 unique    all unique    1   -0.0563
10   all 2014 unique    all unique    1    0.1610
11   all 2015 unique    all unique    1    1.3451
12   all 2016 unique    all unique    1    0.3144
13   all 2017 unique    all unique    1   -1.1362
14   all 2018 unique    all unique    1   -0.6142
15   all 2019 unique    all unique    1    1.7311
16   all 2020 unique    all unique    1    1.5787
17   all 2021 unique    all unique    1   -0.0441
18   all 2022 unique    all unique    1   -0.7992
19   all 2023 unique    all unique    1    0.9257
   sw_twn
1  -1.554
2  -0.479
3  -0.731
4   0.554
5   0.331
6   0.186
7   0.522
8  -0.253
9  -0.444
10 -0.194
11 -1.247
12 -0.842
13 -1.332
14 -0.930
15  0.745
16  1.607
17  1.503
18  0.943
19  1.616
   quant year   unit season   area iter sw_eu_prt
6    all 2005 unique    all unique    1   -1.8022
7    all 2006 unique    all unique    1    0.0777
8    all 2007 unique    all unique    1    0.4965
9    all 2008 unique    all unique    1    2.0445
10   all 2009 unique    all unique    1   -1.2155
11   all 2010 unique    all unique    1   -0.6528
12   all 2011 unique    all unique    1   -0.1259
13   all 2012 unique    all unique    1   -0.4376
14   all 2013 unique    all unique    1   -0.5602
15   all 2014 unique    all unique    1   -1.3969
16   all 2015 unique    all unique    1    0.0420
17   all 2016 unique    all unique    1   -0.6606
18   all 2017 unique    all unique    1   -0.3904
19   all 2018 unique    all unique    1   -0.6615
20   all 2019 unique    all unique    1   -0.7436
21   all 2020 unique    all unique    1   -0.8468
22   all 2021 unique    all unique    1   -0.6191
23   all 2022 unique    all unique    1    0.9135
24   all 2023 unique    all unique    1    1.4027
   sw_twn
6  -1.554
7  -0.479
8  -0.731
9   0.554
10  0.331
11  0.186
12  0.522
13 -0.253
14 -0.444
15 -0.194
16 -1.247
17 -0.842
18 -1.332
19 -0.930
20  0.745
21  1.607
22  1.503
23  0.943
24  1.616
   quant year   unit season   area iter sw_eu_reu
1    all 2005 unique    all unique    1   -0.7679
2    all 2006 unique    all unique    1   -0.5150
3    all 2007 unique    all unique    1   -0.7406
4    all 2008 unique    all unique    1   -1.2145
5    all 2009 unique    all unique    1   -0.7588
6    all 2010 unique    all unique    1   -0.6244
7    all 2011 unique    all unique    1   -0.2097
8    all 2012 unique    all unique    1   -0.8818
9    all 2013 unique    all unique    1   -0.6791
10   all 2014 unique    all unique    1   -0.2576
11   all 2015 unique    all unique    1   -0.4376
12   all 2016 unique    all unique    1   -0.3054
13   all 2017 unique    all unique    1   -0.6517
14   all 2018 unique    all unique    1   -0.4900
15   all 2019 unique    all unique    1   -0.0912
16   all 2020 unique    all unique    1    0.5125
17   all 2021 unique    all unique    1    1.3236
18   all 2022 unique    all unique    1    1.2279
19   all 2023 unique    all unique    1    1.7451
   sw_twn
1  -1.554
2  -0.479
3  -0.731
4   0.554
5   0.331
6   0.186
7   0.522
8  -0.253
9  -0.444
10 -0.194
11 -1.247
12 -0.842
13 -1.332
14 -0.930
15  0.745
16  1.607
17  1.503
18  0.943
19  1.616
   quant year   unit season   area iter sw_jap
12   all 2005 unique    all unique    1 -1.035
13   all 2006 unique    all unique    1 -1.453
14   all 2007 unique    all unique    1 -0.846
15   all 2008 unique    all unique    1 -1.030
16   all 2009 unique    all unique    1 -0.946
17   all 2010 unique    all unique    1 -0.942
18   all 2011 unique    all unique    1 -1.089
19   all 2012 unique    all unique    1 -1.072
20   all 2013 unique    all unique    1 -0.593
21   all 2014 unique    all unique    1  0.372
22   all 2015 unique    all unique    1  0.509
23   all 2016 unique    all unique    1  1.928
24   all 2017 unique    all unique    1  0.457
25   all 2018 unique    all unique    1  0.625
26   all 2019 unique    all unique    1  0.913
27   all 2020 unique    all unique    1  1.555
28   all 2021 unique    all unique    1  1.079
29   all 2022 unique    all unique    1  0.994
30   all 2023 unique    all unique    1  0.597
   sw_twn
12 -1.554
13 -0.479
14 -0.731
15  0.554
16  0.331
17  0.186
18  0.522
19 -0.253
20 -0.444
21 -0.194
22 -1.247
23 -0.842
24 -1.332
25 -0.930
26  0.745
27  1.607
28  1.503
29  0.943
30  1.616
   quant year   unit season   area iter sw_twn
1    all 2005 unique    all unique    1 -1.554
2    all 2006 unique    all unique    1 -0.479
3    all 2007 unique    all unique    1 -0.731
4    all 2008 unique    all unique    1  0.554
5    all 2009 unique    all unique    1  0.331
6    all 2010 unique    all unique    1  0.186
7    all 2011 unique    all unique    1  0.522
8    all 2012 unique    all unique    1 -0.253
9    all 2013 unique    all unique    1 -0.444
10   all 2014 unique    all unique    1 -0.194
11   all 2015 unique    all unique    1 -1.247
12   all 2016 unique    all unique    1 -0.842
13   all 2017 unique    all unique    1 -1.332
14   all 2018 unique    all unique    1 -0.930
15   all 2019 unique    all unique    1  0.745
16   all 2020 unique    all unique    1  1.607
17   all 2021 unique    all unique    1  1.503
18   all 2022 unique    all unique    1  0.943
19   all 2023 unique    all unique    1  1.616
   sw_twn.1
1    -1.554
2    -0.479
3    -0.731
4     0.554
5     0.331
6     0.186
7     0.522
8    -0.253
9    -0.444
10   -0.194
11   -1.247
12   -0.842
13   -1.332
14   -0.930
15    0.745
16    1.607
17    1.503
18    0.943
19    1.616
   quant year   unit season   area iter  sw_zaf
12   all 2005 unique    all unique    1 -1.1221
13   all 2006 unique    all unique    1 -1.3236
14   all 2007 unique    all unique    1 -0.7660
15   all 2008 unique    all unique    1 -1.0195
16   all 2009 unique    all unique    1 -0.6750
17   all 2010 unique    all unique    1 -0.1069
18   all 2011 unique    all unique    1 -0.0435
19   all 2012 unique    all unique    1  0.0173
20   all 2013 unique    all unique    1 -1.0648
21   all 2014 unique    all unique    1 -1.2983
22   all 2015 unique    all unique    1  0.7031
23   all 2016 unique    all unique    1  0.8880
24   all 2017 unique    all unique    1  1.6972
25   all 2018 unique    all unique    1 -0.3508
26   all 2019 unique    all unique    1 -0.2486
27   all 2020 unique    all unique    1 -0.5227
28   all 2021 unique    all unique    1 -0.2518
29   all 2022 unique    all unique    1  0.3599
30   all 2023 unique    all unique    1 -0.2575
   sw_twn
12 -1.554
13 -0.479
14 -0.731
15  0.554
16  0.331
17  0.186
18  0.522
19 -0.253
20 -0.444
21 -0.194
22 -1.247
23 -0.842
24 -1.332
25 -0.930
26  0.745
27  1.607
28  1.503
29  0.943
30  1.616
   quant year   unit season   area iter  ne_idn
11   all 2004 unique    all unique    1  0.0171
12   all 2005 unique    all unique    1  0.2266
13   all 2006 unique    all unique    1 -0.2762
14   all 2007 unique    all unique    1 -0.9047
15   all 2008 unique    all unique    1  0.6456
16   all 2009 unique    all unique    1 -0.9885
17   all 2010 unique    all unique    1 -0.0248
18   all 2011 unique    all unique    1  0.1009
19   all 2012 unique    all unique    1 -0.4438
20   all 2013 unique    all unique    1 -0.6952
21   all 2014 unique    all unique    1 -1.7427
22   all 2015 unique    all unique    1 -0.8628
23   all 2016 unique    all unique    1 -0.8628
24   all 2017 unique    all unique    1  0.5199
25   all 2018 unique    all unique    1 -0.6952
26   all 2019 unique    all unique    1 -0.5276
27   all 2020 unique    all unique    1 -0.4438
28   all 2021 unique    all unique    1  0.2685
29   all 2022 unique    all unique    1  1.5256
30   all 2023 unique    all unique    1  1.8608
31   all 2024 unique    all unique    1  0.9809
    sw_zaf
11 -1.0768
12 -1.1221
13 -1.3236
14 -0.7660
15 -1.0195
16 -0.6750
17 -0.1069
18 -0.0435
19  0.0173
20 -1.0648
21 -1.2983
22  0.7031
23  0.8880
24  1.6972
25 -0.3508
26 -0.2486
27 -0.5227
28 -0.2518
29  0.3599
30 -0.2575
31 -0.1691
   quant year   unit season   area iter  ne_jap
13   all 2006 unique    all unique    1 -0.3216
14   all 2007 unique    all unique    1 -1.4675
15   all 2008 unique    all unique    1 -1.7240
16   all 2009 unique    all unique    1 -0.0799
17   all 2010 unique    all unique    1 -0.8613
18   all 2011 unique    all unique    1 -2.1918
19   all 2012 unique    all unique    1  0.2927
20   all 2013 unique    all unique    1 -0.1304
21   all 2014 unique    all unique    1  1.4072
22   all 2015 unique    all unique    1  0.6988
23   all 2016 unique    all unique    1  0.5559
24   all 2017 unique    all unique    1  1.2902
25   all 2018 unique    all unique    1  0.4971
26   all 2019 unique    all unique    1  0.4408
27   all 2020 unique    all unique    1  0.0310
28   all 2021 unique    all unique    1 -0.3542
29   all 2022 unique    all unique    1  0.2496
30   all 2023 unique    all unique    1  1.4052
31   all 2024 unique    all unique    1  0.2622
    sw_zaf
13 -1.3236
14 -0.7660
15 -1.0195
16 -0.6750
17 -0.1069
18 -0.0435
19  0.0173
20 -1.0648
21 -1.2983
22  0.7031
23  0.8880
24  1.6972
25 -0.3508
26 -0.2486
27 -0.5227
28 -0.2518
29  0.3599
30 -0.2575
31 -0.1691
   quant year   unit season   area iter ne_twn
8    all 2001 unique    all unique    1  0.779
9    all 2002 unique    all unique    1  0.265
10   all 2003 unique    all unique    1  1.615
11   all 2004 unique    all unique    1  0.690
12   all 2005 unique    all unique    1 -0.888
13   all 2006 unique    all unique    1 -1.492
14   all 2007 unique    all unique    1 -1.180
15   all 2008 unique    all unique    1 -0.470
16   all 2009 unique    all unique    1  0.266
17   all 2010 unique    all unique    1  0.890
18   all 2011 unique    all unique    1  0.569
19   all 2012 unique    all unique    1  0.786
20   all 2013 unique    all unique    1 -0.899
21   all 2014 unique    all unique    1 -1.730
22   all 2015 unique    all unique    1 -0.326
23   all 2016 unique    all unique    1  0.707
24   all 2017 unique    all unique    1  0.199
25   all 2018 unique    all unique    1 -0.521
26   all 2019 unique    all unique    1 -0.755
27   all 2020 unique    all unique    1 -1.610
28   all 2021 unique    all unique    1 -0.487
29   all 2022 unique    all unique    1  0.759
30   all 2023 unique    all unique    1  1.651
31   all 2024 unique    all unique    1  1.180
    sw_zaf
8   0.5088
9   0.1789
10 -0.7160
11 -1.0768
12 -1.1221
13 -1.3236
14 -0.7660
15 -1.0195
16 -0.6750
17 -0.1069
18 -0.0435
19  0.0173
20 -1.0648
21 -1.2983
22  0.7031
23  0.8880
24  1.6972
25 -0.3508
26 -0.2486
27 -0.5227
28 -0.2518
29  0.3599
30 -0.2575
31 -0.1691
   quant year   unit season   area iter  nw_jap
12   all 2005 unique    all unique    1 -0.3577
13   all 2006 unique    all unique    1 -0.2235
14   all 2007 unique    all unique    1  1.4150
15   all 2008 unique    all unique    1  1.0867
16   all 2009 unique    all unique    1  1.3172
17   all 2010 unique    all unique    1 -1.1901
18   all 2011 unique    all unique    1 -1.6850
19   all 2012 unique    all unique    1 -0.1396
20   all 2013 unique    all unique    1 -0.9855
21   all 2014 unique    all unique    1  0.0741
22   all 2015 unique    all unique    1  0.7156
23   all 2016 unique    all unique    1 -0.3774
24   all 2017 unique    all unique    1 -0.7581
25   all 2018 unique    all unique    1  1.3277
26   all 2019 unique    all unique    1  1.6444
27   all 2020 unique    all unique    1  0.2300
28   all 2021 unique    all unique    1 -0.5614
29   all 2022 unique    all unique    1 -1.2212
30   all 2023 unique    all unique    1 -0.3113
    sw_zaf
12 -1.1221
13 -1.3236
14 -0.7660
15 -1.0195
16 -0.6750
17 -0.1069
18 -0.0435
19  0.0173
20 -1.0648
21 -1.2983
22  0.7031
23  0.8880
24  1.6972
25 -0.3508
26 -0.2486
27 -0.5227
28 -0.2518
29  0.3599
30 -0.2575
   quant year   unit season   area iter   nw_twn
12   all 2005 unique    all unique    1  0.75802
13   all 2006 unique    all unique    1  3.46401
14   all 2007 unique    all unique    1  0.07256
15   all 2008 unique    all unique    1 -0.00501
16   all 2009 unique    all unique    1 -0.65830
17   all 2010 unique    all unique    1  0.18718
18   all 2011 unique    all unique    1 -0.28943
19   all 2012 unique    all unique    1 -0.48094
20   all 2013 unique    all unique    1 -0.74962
21   all 2014 unique    all unique    1 -1.25426
22   all 2015 unique    all unique    1 -1.19934
23   all 2016 unique    all unique    1 -0.67881
24   all 2017 unique    all unique    1 -0.30550
25   all 2018 unique    all unique    1 -0.08591
26   all 2019 unique    all unique    1  0.39915
27   all 2020 unique    all unique    1  0.11121
28   all 2021 unique    all unique    1 -0.08654
29   all 2022 unique    all unique    1  0.37017
30   all 2023 unique    all unique    1  0.43136
    sw_zaf
12 -1.1221
13 -1.3236
14 -0.7660
15 -1.0195
16 -0.6750
17 -0.1069
18 -0.0435
19  0.0173
20 -1.0648
21 -1.2983
22  0.7031
23  0.8880
24  1.6972
25 -0.3508
26 -0.2486
27 -0.5227
28 -0.2518
29  0.3599
30 -0.2575
   quant year   unit season   area iter se_jap
1    all 1994 unique    all unique    1  3.292
2    all 1995 unique    all unique    1  1.251
3    all 1996 unique    all unique    1  1.081
4    all 1997 unique    all unique    1  0.955
5    all 1998 unique    all unique    1 -0.113
6    all 1999 unique    all unique    1 -0.716
7    all 2000 unique    all unique    1 -0.916
8    all 2001 unique    all unique    1 -1.204
9    all 2002 unique    all unique    1 -1.196
10   all 2003 unique    all unique    1 -1.508
11   all 2004 unique    all unique    1 -1.009
12   all 2005 unique    all unique    1 -0.810
13   all 2006 unique    all unique    1 -0.533
14   all 2007 unique    all unique    1 -1.153
15   all 2008 unique    all unique    1 -0.694
16   all 2009 unique    all unique    1  0.358
17   all 2010 unique    all unique    1  0.189
18   all 2011 unique    all unique    1  0.282
19   all 2012 unique    all unique    1 -0.196
20   all 2013 unique    all unique    1 -0.480
21   all 2014 unique    all unique    1 -0.798
22   all 2015 unique    all unique    1 -0.548
23   all 2016 unique    all unique    1  0.616
24   all 2017 unique    all unique    1  0.777
25   all 2018 unique    all unique    1  0.370
26   all 2019 unique    all unique    1  0.480
27   all 2020 unique    all unique    1  0.216
28   all 2021 unique    all unique    1 -0.384
29   all 2022 unique    all unique    1  0.405
30   all 2023 unique    all unique    1  0.764
31   all 2024 unique    all unique    1  1.222
    sw_zaf
1   3.2533
2   1.6007
3   0.7542
4   0.7176
5   0.8980
6  -0.2246
7  -0.3396
8   0.5088
9   0.1789
10 -0.7160
11 -1.0768
12 -1.1221
13 -1.3236
14 -0.7660
15 -1.0195
16 -0.6750
17 -0.1069
18 -0.0435
19  0.0173
20 -1.0648
21 -1.2983
22  0.7031
23  0.8880
24  1.6972
25 -0.3508
26 -0.2486
27 -0.5227
28 -0.2518
29  0.3599
30 -0.2575
31 -0.1691
   quant year   unit season   area iter  se_twn
1    all 1994 unique    all unique    1  0.9343
2    all 1995 unique    all unique    1  1.0663
3    all 1996 unique    all unique    1  1.4201
4    all 1997 unique    all unique    1  2.2364
5    all 1998 unique    all unique    1  1.0395
6    all 1999 unique    all unique    1  1.6709
7    all 2000 unique    all unique    1  1.4017
8    all 2001 unique    all unique    1 -0.2304
9    all 2002 unique    all unique    1  0.4142
10   all 2003 unique    all unique    1  0.2000
11   all 2004 unique    all unique    1  0.3130
12   all 2005 unique    all unique    1 -1.1521
13   all 2006 unique    all unique    1 -0.1705
14   all 2007 unique    all unique    1  0.5810
15   all 2008 unique    all unique    1 -0.0990
16   all 2009 unique    all unique    1 -0.6588
17   all 2010 unique    all unique    1 -0.2970
18   all 2011 unique    all unique    1  0.3387
19   all 2012 unique    all unique    1 -0.3204
20   all 2013 unique    all unique    1  0.2119
21   all 2014 unique    all unique    1  0.5040
22   all 2015 unique    all unique    1  0.0653
23   all 2016 unique    all unique    1 -1.3741
24   all 2017 unique    all unique    1 -1.5295
25   all 2018 unique    all unique    1 -1.4175
26   all 2019 unique    all unique    1 -1.6166
27   all 2020 unique    all unique    1 -0.2857
28   all 2021 unique    all unique    1 -1.1585
29   all 2022 unique    all unique    1 -1.0361
30   all 2023 unique    all unique    1 -0.2749
31   all 2024 unique    all unique    1 -0.7763
    sw_zaf
1   3.2533
2   1.6007
3   0.7542
4   0.7176
5   0.8980
6  -0.2246
7  -0.3396
8   0.5088
9   0.1789
10 -0.7160
11 -1.0768
12 -1.1221
13 -1.3236
14 -0.7660
15 -1.0195
16 -0.6750
17 -0.1069
18 -0.0435
19  0.0173
20 -1.0648
21 -1.2983
22  0.7031
23  0.8880
24  1.6972
25 -0.3508
26 -0.2486
27 -0.5227
28 -0.2518
29  0.3599
30 -0.2575
31 -0.1691
   quant year   unit season   area iter sw_eu_esp
12   all 2005 unique    all unique    1   -1.1832
13   all 2006 unique    all unique    1   -1.7146
14   all 2007 unique    all unique    1   -0.6989
15   all 2008 unique    all unique    1   -0.2509
16   all 2009 unique    all unique    1    1.0984
17   all 2010 unique    all unique    1   -0.4607
18   all 2011 unique    all unique    1   -0.8324
19   all 2012 unique    all unique    1    0.6362
20   all 2013 unique    all unique    1   -0.0563
21   all 2014 unique    all unique    1    0.1610
22   all 2015 unique    all unique    1    1.3451
23   all 2016 unique    all unique    1    0.3144
24   all 2017 unique    all unique    1   -1.1362
25   all 2018 unique    all unique    1   -0.6142
26   all 2019 unique    all unique    1    1.7311
27   all 2020 unique    all unique    1    1.5787
28   all 2021 unique    all unique    1   -0.0441
29   all 2022 unique    all unique    1   -0.7992
30   all 2023 unique    all unique    1    0.9257
    sw_zaf
12 -1.1221
13 -1.3236
14 -0.7660
15 -1.0195
16 -0.6750
17 -0.1069
18 -0.0435
19  0.0173
20 -1.0648
21 -1.2983
22  0.7031
23  0.8880
24  1.6972
25 -0.3508
26 -0.2486
27 -0.5227
28 -0.2518
29  0.3599
30 -0.2575
   quant year   unit season   area iter sw_eu_prt
7    all 2000 unique    all unique    1    1.1036
8    all 2001 unique    all unique    1    1.0273
9    all 2002 unique    all unique    1    1.0650
10   all 2003 unique    all unique    1    0.8121
11   all 2004 unique    all unique    1   -0.3730
12   all 2005 unique    all unique    1   -1.8022
13   all 2006 unique    all unique    1    0.0777
14   all 2007 unique    all unique    1    0.4965
15   all 2008 unique    all unique    1    2.0445
16   all 2009 unique    all unique    1   -1.2155
17   all 2010 unique    all unique    1   -0.6528
18   all 2011 unique    all unique    1   -0.1259
19   all 2012 unique    all unique    1   -0.4376
20   all 2013 unique    all unique    1   -0.5602
21   all 2014 unique    all unique    1   -1.3969
22   all 2015 unique    all unique    1    0.0420
23   all 2016 unique    all unique    1   -0.6606
24   all 2017 unique    all unique    1   -0.3904
25   all 2018 unique    all unique    1   -0.6615
26   all 2019 unique    all unique    1   -0.7436
27   all 2020 unique    all unique    1   -0.8468
28   all 2021 unique    all unique    1   -0.6191
29   all 2022 unique    all unique    1    0.9135
30   all 2023 unique    all unique    1    1.4027
31   all 2024 unique    all unique    1    1.5012
    sw_zaf
7  -0.3396
8   0.5088
9   0.1789
10 -0.7160
11 -1.0768
12 -1.1221
13 -1.3236
14 -0.7660
15 -1.0195
16 -0.6750
17 -0.1069
18 -0.0435
19  0.0173
20 -1.0648
21 -1.2983
22  0.7031
23  0.8880
24  1.6972
25 -0.3508
26 -0.2486
27 -0.5227
28 -0.2518
29  0.3599
30 -0.2575
31 -0.1691
   quant year   unit season   area iter sw_eu_reu
12   all 2005 unique    all unique    1   -0.7679
13   all 2006 unique    all unique    1   -0.5150
14   all 2007 unique    all unique    1   -0.7406
15   all 2008 unique    all unique    1   -1.2145
16   all 2009 unique    all unique    1   -0.7588
17   all 2010 unique    all unique    1   -0.6244
18   all 2011 unique    all unique    1   -0.2097
19   all 2012 unique    all unique    1   -0.8818
20   all 2013 unique    all unique    1   -0.6791
21   all 2014 unique    all unique    1   -0.2576
22   all 2015 unique    all unique    1   -0.4376
23   all 2016 unique    all unique    1   -0.3054
24   all 2017 unique    all unique    1   -0.6517
25   all 2018 unique    all unique    1   -0.4900
26   all 2019 unique    all unique    1   -0.0912
27   all 2020 unique    all unique    1    0.5125
28   all 2021 unique    all unique    1    1.3236
29   all 2022 unique    all unique    1    1.2279
30   all 2023 unique    all unique    1    1.7451
31   all 2024 unique    all unique    1    1.9023
    sw_zaf
12 -1.1221
13 -1.3236
14 -0.7660
15 -1.0195
16 -0.6750
17 -0.1069
18 -0.0435
19  0.0173
20 -1.0648
21 -1.2983
22  0.7031
23  0.8880
24  1.6972
25 -0.3508
26 -0.2486
27 -0.5227
28 -0.2518
29  0.3599
30 -0.2575
31 -0.1691
   quant year   unit season   area iter sw_jap
1    all 1994 unique    all unique    1  0.722
2    all 1995 unique    all unique    1  0.319
3    all 1996 unique    all unique    1  0.824
4    all 1997 unique    all unique    1  1.049
5    all 1998 unique    all unique    1  0.471
6    all 1999 unique    all unique    1  0.305
7    all 2000 unique    all unique    1 -0.652
8    all 2001 unique    all unique    1 -1.055
9    all 2002 unique    all unique    1 -1.251
10   all 2003 unique    all unique    1 -0.665
11   all 2004 unique    all unique    1 -1.430
12   all 2005 unique    all unique    1 -1.035
13   all 2006 unique    all unique    1 -1.453
14   all 2007 unique    all unique    1 -0.846
15   all 2008 unique    all unique    1 -1.030
16   all 2009 unique    all unique    1 -0.946
17   all 2010 unique    all unique    1 -0.942
18   all 2011 unique    all unique    1 -1.089
19   all 2012 unique    all unique    1 -1.072
20   all 2013 unique    all unique    1 -0.593
21   all 2014 unique    all unique    1  0.372
22   all 2015 unique    all unique    1  0.509
23   all 2016 unique    all unique    1  1.928
24   all 2017 unique    all unique    1  0.457
25   all 2018 unique    all unique    1  0.625
26   all 2019 unique    all unique    1  0.913
27   all 2020 unique    all unique    1  1.555
28   all 2021 unique    all unique    1  1.079
29   all 2022 unique    all unique    1  0.994
30   all 2023 unique    all unique    1  0.597
31   all 2024 unique    all unique    1  1.339
    sw_zaf
1   3.2533
2   1.6007
3   0.7542
4   0.7176
5   0.8980
6  -0.2246
7  -0.3396
8   0.5088
9   0.1789
10 -0.7160
11 -1.0768
12 -1.1221
13 -1.3236
14 -0.7660
15 -1.0195
16 -0.6750
17 -0.1069
18 -0.0435
19  0.0173
20 -1.0648
21 -1.2983
22  0.7031
23  0.8880
24  1.6972
25 -0.3508
26 -0.2486
27 -0.5227
28 -0.2518
29  0.3599
30 -0.2575
31 -0.1691
   quant year   unit season   area iter sw_twn
12   all 2005 unique    all unique    1 -1.554
13   all 2006 unique    all unique    1 -0.479
14   all 2007 unique    all unique    1 -0.731
15   all 2008 unique    all unique    1  0.554
16   all 2009 unique    all unique    1  0.331
17   all 2010 unique    all unique    1  0.186
18   all 2011 unique    all unique    1  0.522
19   all 2012 unique    all unique    1 -0.253
20   all 2013 unique    all unique    1 -0.444
21   all 2014 unique    all unique    1 -0.194
22   all 2015 unique    all unique    1 -1.247
23   all 2016 unique    all unique    1 -0.842
24   all 2017 unique    all unique    1 -1.332
25   all 2018 unique    all unique    1 -0.930
26   all 2019 unique    all unique    1  0.745
27   all 2020 unique    all unique    1  1.607
28   all 2021 unique    all unique    1  1.503
29   all 2022 unique    all unique    1  0.943
30   all 2023 unique    all unique    1  1.616
    sw_zaf
12 -1.1221
13 -1.3236
14 -0.7660
15 -1.0195
16 -0.6750
17 -0.1069
18 -0.0435
19  0.0173
20 -1.0648
21 -1.2983
22  0.7031
23  0.8880
24  1.6972
25 -0.3508
26 -0.2486
27 -0.5227
28 -0.2518
29  0.3599
30 -0.2575
   quant year   unit season   area iter  sw_zaf
1    all 1994 unique    all unique    1  3.2533
2    all 1995 unique    all unique    1  1.6007
3    all 1996 unique    all unique    1  0.7542
4    all 1997 unique    all unique    1  0.7176
5    all 1998 unique    all unique    1  0.8980
6    all 1999 unique    all unique    1 -0.2246
7    all 2000 unique    all unique    1 -0.3396
8    all 2001 unique    all unique    1  0.5088
9    all 2002 unique    all unique    1  0.1789
10   all 2003 unique    all unique    1 -0.7160
11   all 2004 unique    all unique    1 -1.0768
12   all 2005 unique    all unique    1 -1.1221
13   all 2006 unique    all unique    1 -1.3236
14   all 2007 unique    all unique    1 -0.7660
15   all 2008 unique    all unique    1 -1.0195
16   all 2009 unique    all unique    1 -0.6750
17   all 2010 unique    all unique    1 -0.1069
18   all 2011 unique    all unique    1 -0.0435
19   all 2012 unique    all unique    1  0.0173
20   all 2013 unique    all unique    1 -1.0648
21   all 2014 unique    all unique    1 -1.2983
22   all 2015 unique    all unique    1  0.7031
23   all 2016 unique    all unique    1  0.8880
24   all 2017 unique    all unique    1  1.6972
25   all 2018 unique    all unique    1 -0.3508
26   all 2019 unique    all unique    1 -0.2486
27   all 2020 unique    all unique    1 -0.5227
28   all 2021 unique    all unique    1 -0.2518
29   all 2022 unique    all unique    1  0.3599
30   all 2023 unique    all unique    1 -0.2575
31   all 2024 unique    all unique    1 -0.1691
   sw_zaf.1
1    3.2533
2    1.6007
3    0.7542
4    0.7176
5    0.8980
6   -0.2246
7   -0.3396
8    0.5088
9    0.1789
10  -0.7160
11  -1.0768
12  -1.1221
13  -1.3236
14  -0.7660
15  -1.0195
16  -0.6750
17  -0.1069
18  -0.0435
19   0.0173
20  -1.0648
21  -1.2983
22   0.7031
23   0.8880
24   1.6972
25  -0.3508
26  -0.2486
27  -0.5227
28  -0.2518
29   0.3599
30  -0.2575
31  -0.1691
```

<img src="C:/Users/gphillips/OneDrive - Food and Agriculture Organization/Documents/Assessments/2026/SWO/SS3/cpue_comp/plots/ccf-n-1.png" alt="" width="768" />
**Figure 5** Cross-correlations between CPUE indices to identify lagged correlations (e.g., due to year-class effects). X-axis is lag number, and y-axis is cross-correlation.

