#V3.30.21.00;_safe;_compile_date:_Feb 10 2023;_Stock_Synthesis_by_Richard_Methot_(NOAA)_using_ADMB_13.1
#_Stock_Synthesis_is_a_work_of_the_U.S._Government_and_is_not_subject_to_copyright_protection_in_the_United_States.
#_Foreign_copyrights_may_apply._See_copyright.txt_for_more_information.
#_User_support_available_at:NMFS.Stock.Synthesis@noaa.gov
#_User_info_available_at:https://vlab.noaa.gov/group/stock-synthesis
#_Source_code_at:_https://github.com/nmfs-stock-synthesis/stock-synthesis

#_Start_time: Tue Feb 14 23:41:06 2023
#_echo_input_data
#C data file for simple example
#V3.30.21.00;_safe;_compile_date:_Feb 10 2023;_Stock_Synthesis_by_Richard_Methot_(NOAA)_using_ADMB_13.1
1985 #_StartYr
2022 #_EndYr
1 #_Nseas
12 #_months/season
2 #_Nsubseasons (even number, minimum is 2)
1 #_spawn_month
1 #_Ngenders: 1, 2, -1  (use -1 for 1 sex setup with SSB multiplied by female_frac parameter)
16 #_Nages=accumulator age, first age is always age 0
1 #_Nareas
2 #_Nfleets (including surveys)
#_fleet_type: 1=catch fleet; 2=bycatch only fleet; 3=survey; 4=predator(M2) 
#_sample_timing: -1 for fishing fleet to use season-long catch-at-age for observations, or 1 to use observation month;  (always 1 for surveys)
#_fleet_area:  area the fleet/survey operates in 
#_units of catch:  1=bio; 2=num (ignored for surveys; their units read later)
#_catch_mult: 0=no; 1=yes
#_rows are fleets
#_fleet_type fishery_timing area catch_units need_catch_mult fleetname
 1 -1 1 2 0 FISHERY_CPUE  # 1
 3 1 1 2 0 SURVEY_ARQDACO  # 2
#Bycatch_fleet_input_goes_next
#a:  fleet index
#b:  1=include dead bycatch in total dead catch for F0.1 and MSY optimizations and forecast ABC; 2=omit from total catch for these purposes (but still include the mortality)
#c:  1=Fmult scales with other fleets; 2=bycatch F constant at input value; 3=bycatch F from range of years
#d:  F or first year of range
#e:  last year of range
#f:  not used
# a   b   c   d   e   f 
#_Catch data: yr, seas, fleet, catch, catch_se
#_catch_se:  standard error of log(catch)
#_NOTE:  catch data is ignored for survey fleets
-999 1 1 200 0.01
1985 1 1 347.55 0.01
1986 1 1 305.77 0.01
1987 1 1 342.65 0.01
1988 1 1 423.17 0.01
1989 1 1 476.04 0.01
1990 1 1 530.46 0.01
1991 1 1 486.78 0.01
1992 1 1 441.9 0.01
1993 1 1 326.71 0.01
1994 1 1 284.22 0.01
1995 1 1 290.09 0.01
1996 1 1 315.18 0.01
1997 1 1 363.46 0.01
1998 1 1 384.2 0.01
1999 1 1 262.92 0.01
2000 1 1 229.92 0.01
2001 1 1 154.44 0.01
2002 1 1 173.16 0.01
2003 1 1 200.22 0.01
2004 1 1 193.46 0.01
2005 1 1 127.33 0.01
2006 1 1 119.42 0.01
2007 1 1 183.99 0.01
2008 1 1 240.14 0.01
2009 1 1 215.42 0.01
2010 1 1 296.76 0.01
2011 1 1 320.02 0.01
2012 1 1 389.79 0.01
2013 1 1 303.99 0.01
2014 1 1 337.18 0.01
2015 1 1 233.81 0.01
2016 1 1 142.54 0.01
2017 1 1 88.1 0.01
2018 1 1 83.18 0.01
2019 1 1 84.88 0.01
2020 1 1 120.54 0.01
2021 1 1 199.92 0.01
2022 1 1 194.26 0.01
-9999 0 0 0 0
#
#_CPUE_and_surveyabundance_and_index_observations
#_Units: 0=numbers; 1=biomass; 2=F; 30=spawnbio; 31=exp(recdev); 36=recdev; 32=spawnbio*recdev; 33=recruitment; 34=depletion(&see Qsetup); 35=parm_dev(&see Qsetup)
#_Errtype:  -1=normal; 0=lognormal; >0=T
#_SD_Report: 0=no sdreport; 1=enable sdreport
#_note that link functions are specified in Q_setup section of control file
#_Fleet Units Errtype SD_Report
1 1 0 0 # FISHERY_CPUE
3 1 0 0 # SURVEY_ARQDACO
#_yr month fleet obs stderr
2000	7	1	45.9	0.3 #FISHERY_CPUE
2001	7	1	34.1	0.3 #FISHERY_CPUE
2002	7	1	24.1	0.3 #FISHERY_CPUE
2003	7	1	32.0	0.3 #FISHERY_CPUE
2004	7	1	34.7	0.3 #FISHERY_CPUE
2005	7	1	24.5	0.3 #FISHERY_CPUE
2006	7	1	18.0	0.3 #FISHERY_CPUE
2007	7	1	18.0	0.3 #FISHERY_CPUE
2008	7	1	23.7	0.3 #FISHERY_CPUE
2009	7	1	19.5	0.3 #FISHERY_CPUE
2010	7	1	26.7	0.3 #FISHERY_CPUE
2011	7	1	30.9	0.3 #FISHERY_CPUE
2012	7	1	29.0	0.3 #FISHERY_CPUE
2013	7	1	26.7	0.3 #FISHERY_CPUE
2014	7	1	23.6	0.3 #FISHERY_CPUE
2015	7	1	21.6	0.3 #FISHERY_CPUE
2016	7	1	15.8	0.3 #FISHERY_CPUE
2017	7	1	13.4	0.3 #FISHERY_CPUE
2018	7	-1	10	    0.3 #FISHERY_CPUE
2019	7	1	12.4	0.3 #FISHERY_CPUE
2020	7	1	15.6	0.3 #FISHERY_CPUE
2021	7	1	21.4	0.3 #FISHERY_CPUE
2022	7	1	22.5	0.3 #FISHERY_CPUE
1996	7	2	6.41	0.3 #SURVEY_ARQDACO
1997	7	2	13.53	0.3 #SURVEY_ARQDACO
1998	7	-2	10.00	0.3 #SURVEY_ARQDACO
1999	7	2	12.29	0.3 #SURVEY_ARQDACO
2000	7	2	16.62	0.3 #SURVEY_ARQDACO
2001	7	2	9.06	0.3 #SURVEY_ARQDACO
2002	7	2	15.96	0.3 #SURVEY_ARQDACO
2003	7	2	17.03	0.3 #SURVEY_ARQDACO
2004	7	2	26.13	0.3 #SURVEY_ARQDACO
2005	7	2	22.66	0.3 #SURVEY_ARQDACO
2006	7	-2	10.00	0.3 #SURVEY_ARQDACO
2007	7	2	27.07	0.3 #SURVEY_ARQDACO
2008	7	2	28.77	0.3 #SURVEY_ARQDACO
2009	7	-2	10.00	0.3 #SURVEY_ARQDACO
2010	7	2	36.42	0.3 #SURVEY_ARQDACO
2011	7	2	27.22	0.3 #SURVEY_ARQDACO
2012	7	2	54.66	0.3 #SURVEY_ARQDACO
2013	7	2	22.28	0.3 #SURVEY_ARQDACO
2014	7	-2	10.00	0.3 #SURVEY_ARQDACO
2015	7	-2	10.00	0.3 #SURVEY_ARQDACO
2016	7	2	15.69	0.3 #SURVEY_ARQDACO
2017	7	2	12.55	0.3 #SURVEY_ARQDACO
2018	7	2	15.98	0.3 #SURVEY_ARQDACO
2019	7	2	14.91	0.3 #SURVEY_ARQDACO
-9999	1	1	1.00	1    #Terminator line 
#
0 #_N_fleets_with_discard
#_discard_units (1=same_as_catchunits(bio/num); 2=fraction; 3=numbers)
#_discard_errtype:  >0 for DF of T-dist(read CV below); 0 for normal with CV; -1 for normal with se; -2 for lognormal; -3 for trunc normal with CV
# note: only enter units and errtype for fleets with discard 
# note: discard data is the total for an entire season, so input of month here must be to a month in that season
#_Fleet units errtype
# -9999 0 0 0.0 0.0 # terminator for discard data 
#
0 #_use meanbodysize_data (0/1)
#_COND_0 #_DF_for_meanbodysize_T-distribution_like
# note:  type=1 for mean length; type=2 for mean body weight 
#_yr month fleet part type obs stderr
#  -9999 0 0 0 0 0 0 # terminator for mean body size data 
#
# set up population length bin structure (note - irrelevant if not using size data and using empirical wtatage
2 # length bin method: 1=use databins; 2=generate from binwidth,min,max below; 3=read vector
2 # binwidth for population size comp 
12 # minimum size in the population (lower edge of first bin and size at age 0.00) 
82 # maximum size in the population (lower edge of last bin) 
1 # use length composition data (0/1/2) where 2 invokes new comp_control format
#_mintailcomp: upper and lower distribution for females and males separately are accumulated until exceeding this level.
#_addtocomp:  after accumulation of tails; this value added to all bins
#_combM+F: males and females treated as combined gender below this bin number 
#_compressbins: accumulate upper tail by this number of bins; acts simultaneous with mintailcomp; set=0 for no forced accumulation
#_Comp_Error:  0=multinomial, 1=dirichlet using Theta*n, 2=dirichlet using beta, 3=MV_Tweedie
#_ParmSelect:  consecutive index for dirichlet or MV_Tweedie
#_minsamplesize: minimum sample size; set to 1 to match 3.24, minimum value is 0.001
#
#_Using old format for composition controls
#_mintailcomp addtocomp combM+F CompressBins CompError ParmSelect minsamplesize
0 1e-07 0 0 0 0 1 #FISHERY_CPUE
0 1e-07 0 0 0 0 1 #SURVEY_ARQDACO
# sex codes:  0=combined; 1=use female only; 2=use male only; 3=use both as joint sexxlength distribution
# partition codes:  (0=combined; 1=discard; 2=retained
36 #_N_LengthBins; then enter lower edge of each length bin
 12	14	16	18	20	22	24	26	28	30	32	34	36	38	40	42	44	46	48	50	52	54	56	58	60	62	64	66	68	70	72	74	76	78	80	82
#_yr month fleet sex part Nsamp datavector(female-male)
1993	7	1	0	0	125	0	0	0	0	0	5742	0	5138	5811	8561	11818	11369	11863	10893	14219	17535	12310	12746	10316	14896	10792	13392	15176	12290	7570	8661	3210	2640	1645	570	0	0	16	0	0	0
1994	7	1	0	0	125	0	0	0	0	0	0	0	170	56	5677	3628	3566	8278	11269	13541	19058	16519	15433	18000	17422	15315	13419	7574	7937	5418	2885	3002	2213	2113	497	318	176	0	0	0	0
1995	7	1	0	0	125	0	0	0	0	0	0	1792	1193	255	916	2664	3962	9927	19330	20479	20710	20190	24948	23530	21537	16918	9836	6904	5289	3483	2982	3333	1178	817	0	0	0	0	0	0	0
1996	7	1	0	0	125	0	0	0	0	0	0	0	0	446	2992	2780	15651	17127	27715	26543	28358	29495	25304	26915	25529	16024	8536	4670	6017	3471	2161	1180	825	471	0	0	0	0	0	0	0
1997	7	1	0	0	125	0	0	0	0	0	42	885	1607	1726	4530	4580	7264	10721	15604	15064	21167	20061	23569	24593	24055	23052	16104	11043	11134	8299	6370	3492	1108	1137	286	0	0	0	0	0	0
1998	7	1	0	0	125	0	0	0	0	0	158	690	1156	3404	5712	8675	13902	19738	20612	20023	17275	19728	18804	14119	20589	19914	17079	16336	13117	8285	7657	5700	2223	1141	366	138	0	0	0	0	0
1999	7	1	0	0	125	0	0	0	0	0	361	254	956	2706	6891	9651	16460	19325	19642	19542	18380	17498	17315	11115	11268	9332	7203	9402	7672	6267	3841	2560	1655	580	0	0	0	0	0	0	0
2000	7	1	0	0	125	0	0	0	0	1194	5057	6617	9155	8744	20767	20194	19768	19999	18616	18855	16527	16052	13972	13488	10021	9602	6271	5890	5443	3591	2113	1119	436	150	73	15	0	0	0	0	0
2001	7	1	0	0	125	0	0	0	206	870	2260	3417	3285	4956	6901	7444	9337	10210	11998	13270	11462	12256	10259	10544	9449	7664	4045	3718	3351	2106	1084	786	141	0	0	0	0	0	0	0	0
2002	7	1	0	0	125	0	0	0	0	0	0	69	348	2100	8926	12024	10077	9747	11262	9760	8581	12383	10129	9461	10540	7326	5764	5678	5148	2479	735	463	129	0	0	0	0	0	0	0	0
2003	7	1	0	0	125	0	0	0	0	0	223	537	2699	5152	8273	7908	8618	10964	13367	12188	11633	11011	10985	10410	8665	9422	7465	6951	6605	4419	2285	931	386	78	84	0	22	24	0	0	0
2004	7	1	0	0	125	0	0	0	0	1827	2039	1094	2404	10749	16522	9973	8521	8928	9320	10272	8377	9143	9657	9170	9447	8164	6672	6048	5630	4134	2887	2122	896	227	0	0	0	0	0	0	0
2005	7	1	0	0	125	0	0	0	0	0	0	32	268	804	3876	5547	8810	9862	10044	8645	7685	6892	6083	5662	5267	4448	4368	3830	3093	2614	1810	2204	1080	829	347	0	0	0	0	0	0
2006	7	1	0	0	125	0	0	0	0	0	0	1395	2992	4540	3331	5718	7268	7200	8202	8684	8108	8402	6245	5028	4419	3169	2623	2821	2108	2834	2523	1758	1127	806	120	0	0	0	0	0	0
2007	7	1	0	0	125	0	0	0	0	0	337	720	1830	3783	4353	7760	9694	9525	12694	12649	13371	10505	9282	9469	8951	7150	5181	4126	4383	3800	3464	3144	1436	751	388	111	0	26	0	0	0
2008	7	1	0	0	125	0	0	0	0	0	0	0	391	1253	2427	4692	8320	10450	10336	11403	13688	13460	16240	13281	13038	10393	9372	7964	5013	4655	4578	3497	2630	1642	482	173	134	26	0	0	0
2009	7	1	0	0	125	0	0	0	0	0	152	389	1581	1549	2785	3908	3422	4457	6438	9093	8814	8553	12222	13421	12242	10070	11642	10537	7938	5106	2750	1476	930	607	271	46	0	0	0	0	0
2010	7	1	0	0	125	0	0	0	0	0	401	1184	2300	3734	9053	8725	9412	12399	13713	14167	16506	16284	13263	14035	12479	11621	12446	11623	10190	10549	5533	2948	2341	1056	174	146	0	0	0	0	0
2011	7	1	0	0	125	0	0	0	0	0	0	224	819	1661	2748	5176	7637	8306	10139	10511	13351	13343	13540	15597	16404	14363	14479	11214	10862	10941	8308	5088	3475	2102	1008	0	0	0	0	0	0
2012	7	1	0	0	125	0	0	0	0	0	0	1647	849	953	1304	2532	3517	6200	7730	9769	11291	14209	18329	17751	20151	18922	19732	18326	15329	14076	9421	5386	3883	2178	1252	216	0	0	0	0	0
2013	7	1	0	0	125	0	0	0	0	0	211	497	1093	1685	4200	4365	5167	8881	8118	10591	8920	8690	10673	11924	13192	12345	14230	11153	9728	11837	8340	6240	4068	2674	1279	266	0	0	0	0	0
2014	7	1	0	0	125	0	0	0	0	0	0	623	1191	1247	1861	2305	2877	4598	5320	5193	5722	10574	12092	9959	11872	12751	10261	10337	9936	10809	8508	6380	2069	970	429	176	0	0	0	0	0
2015	7	1	0	0	125	0	0	0	0	0	92	347	732	3166	4595	6385	8954	6596	7375	9032	9331	8382	9710	10899	9768	9355	9516	7473	10160	6679	5208	2859	1331	396	168	0	0	0	0	0	0
2016	7	1	0	0	125	0	0	0	44	97	717	1081	2933	5002	4462	2649	3814	5150	6517	6554	6932	7562	8530	11346	7422	6237	4195	3331	3848	2965	1979	1465	1197	587	0	0	0	0	0	0	0
2017	7	1	0	0	125	0	0	0	0	0	469	2169	1936	2295	1787	3088	4583	3872	5838	5038	4044	3693	4839	4735	4280	4085	3976	2285	1942	1095	1467	921	711	420	186	29	0	0	0	0	0
-9999	7	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0

#
16 #_N_age_bins
 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16
1 #_N_ageerror_definitions
 -1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1 -1
0.001	0.001	0.001	0.001	0.001	0.001	0.001	0.001	0.001	0.001	0.001	0.001	0.001	0.001	0.001	0.001 0.001
#_mintailcomp: upper and lower distribution for females and males separately are accumulated until exceeding this level.
#_addtocomp:  after accumulation of tails; this value added to all bins
#_combM+F: males and females treated as combined gender below this bin number 
#_compressbins: accumulate upper tail by this number of bins; acts simultaneous with mintailcomp; set=0 for no forced accumulation
#_Comp_Error:  0=multinomial, 1=dirichlet using Theta*n, 2=dirichlet using beta, 3=MV_Tweedie
#_ParmSelect:  consecutive index for dirichlet or MV_Tweedie
#_minsamplesize: minimum sample size; set to 1 to match 3.24, minimum value is 0.001
#
#_mintailcomp addtocomp combM+F CompressBins CompError ParmSelect minsamplesize
0 1e-07 1 0 0 0 1 #FISHERY_CPUE
0 1e-07 1 0 0 0 1 #SURVEY_ARQDACO
1 #_Lbin_method_for_Age_Data: 1=poplenbins; 2=datalenbins; 3=lengths
# sex codes:  0=combined; 1=use female only; 2=use male only; 3=use both as joint sexxlength distribution
# partition codes:  (0=combined; 1=discard; 2=retained
#_yr month fleet sex part ageerr Lbin_lo Lbin_hi Nsamp datavector(female-male)
1995	7	-2	0	0	1	-1	-1	75	1	3	7	18	25	14	9	10	36	8	5	3	0	0	0	1
1996	7	2	0	0	1	-1	-1	75	6	4	25	35	36	24	8	5	2	4	1	3	0	2	1	1
1997	7	2	0	0	1	-1	-1	75	0	0	4	1	9	23	20	26	22	26	16	8	9	3	5	2
1998	7	-2	0	0	1	-1	-1	75	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1
1999	7	2	0	0	1	-1	-1	75	3	19	41	44	30	24	12	7	1	1	0	0	0	0	0	0
2000	7	2	0	0	1	-1	-1	75	0	25	113	85	35	22	6	0	0	0	0	0	0	0	0	0
2001	7	2	0	0	1	-1	-1	75	3	13	29	26	31	15	16	13	4	0	0	0	0	0	0	0
2002	7	2	0	0	1	-1	-1	75	0	3	31	35	41	20	29	16	12	3	0	0	0	0	0	0
2003	7	2	0	0	1	-1	-1	75	0	5	22	23	24	42	36	28	18	13	10	17	5	8	2	0
2004	7	2	0	0	1	-1	-1	75	0	3	11	47	44	38	39	31	33	30	14	24	10	6	4	1
2005	7	2	0	0	1	-1	-1	75	0	6	37	46	61	36	24	34	35	22	25	21	17	7	3	2
2006	7	-2	0	0	1	-1	-1	75	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1
2007	7	2	0	0	1	-1	-1	75	0	0	7	28	46	30	23	15	15	16	7	16	18	5	0	0
2008	7	2	0	0	1	-1	-1	75	0	5	28	52	45	29	27	32	25	25	12	19	9	10	5	1
2009	7	-2	0	0	1	-1	-1	75	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1
2010	7	2	0	0	1	-1	-1	75	0	2	14	25	34	39	37	26	38	37	24	31	14	5	1	0
2011	7	2	0	0	1	-1	-1	75	0	3	20	43	44	41	19	24	16	11	7	10	9	3	0	0
2012	7	2	0	0	1	-1	-1	75	1	20	63	57	68	34	35	41	19	15	9	3	0	0	0	0
2013	7	2	0	0	1	-1	-1	75	0	2	19	25	22	24	19	18	11	5	3	0	0	0	0	0
2014	7	-2	0	0	1	-1	-1	75	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1
2015	7	-2	0	0	1	-1	-1	75	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1
2016	7	2	0	0	1	-1	-1	75	8	5	35	26	27	23	23	19	13	5	1	0	0	0	0	0
2017	7	2	0	0	1	-1	-1	75	0	2	13	16	26	10	20	14	5	9	9	5	9	0	0	0
2018	7	2	0	0	1	-1	-1	75	0	0	5	31	26	24	25	22	14	4	3	0	0	0	0	0
2019	7	2	0	0	1	-1	-1	75	0	0	15	39	16	37	16	13	14	8	3	2	1	0	0	0
-9999	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
#
1 #_Use_MeanSize-at-Age_obs (0/1)
# sex codes:  0=combined; 1=use female only; 2=use male only; 3=use both as joint sexxlength distribution
# partition codes:  (0=combined; 1=discard; 2=retained
# ageerr codes:  positive means mean length-at-age; negative means mean bodywt_at_age
#_yr month fleet sex part ageerr ignore datavector(pooled sex)
#                                          samplesize(pooled sex)
1995	7	2	0	0	1	2	22.00	26.67	32.57	37.78	39.84	44.00	46.22	48.60	53.83	56.50	60.80	62.00	0.0001	0.0001	0.0001	70.00 1 3 7 18 25 14 9 10 36 8 5 3 0 0 0 1
1996	7	2	0	0	1	2	25.33	31.50	35.04	42.29	48.28	53.67	55.50	58.40	60.00	61.00	64.00	62.00	0.0001	64.00	64.00	66.00 6 4 25 35 36 24 8 5 2 4 1 3 0 2 1 1
1997	7	2	0	0	1	2	0.0001	0.0001	24.50	36.00	38.44	41.30	43.80	45.69	49.55	52.15	54.13	57.00	59.56	62.67	61.60	63.00 0 0 4 1 9 23 20 26 22 26 16 8 9 3 5 2
1998	7	-2	0	0	1	2	0.0001	0.0001	24.50	36.00	38.44	41.30	43.80	45.69	49.55	52.15	54.13	57.00	59.56	62.67	61.60	63.00 0 0 4 1 9 23 20 26 22 26 16 8 9 3 5 2
1999	7	2	0	0	1	2	28.67	34.00	39.41	43.95	49.27	53.17	55.50	53.43	58.00	68.00	0.0001	0.0001	0.0001	0.0001	0.0001	0.0001 3 19 41 44 30 24 12 7 1 1 0 0 0 0 0 0
2000	7	2	0	0	1	2	0.0001	31.36	39.63	45.44	50.63	57.00	57.67	0.0001	0.0001	0.0001	0.0001	0.0001	0.0001	0.0001	0.0001	0.0001 0 25 113 85 35 22 6 0 0 0 0 0 0 0 0 0
2001	7	2	0	0	1	2	29.33	33.69	36.48	42.69	46.97	50.40	52.50	58.77	57.00	0.0001	0.0001	0.0001	0.0001	0.0001	0.0001	0.0001 3 13 29 26 31 15 16 13 4 0 0 0 0 0 0 0
2002	7	2	0	0	1	2	0.0001	28.00	32.39	39.77	45.51	48.20	51.03	53.88	54.50	58.67	0.0001	0.0001	0.0001	0.0001	0.0001	0.0001 0 3 31 35 41 20 29 16 12 3 0 0 0 0 0 0
2003	7	2	0	0	1	2	0.0001	32.00	33.27	35.91	40.00	41.57	44.06	46.50	48.44	51.69	51.80	55.06	56.00	59.75	59.00	0.0001 0 5 22 23 24 42 36 28 18 13 10 17 5 82 0 0
2004	7	2	0	0	1	2	0.0001	27.33	31.09	34.26	37.64	40.21	44.82	47.74	51.27	51.87	55.57	54.75	61.80	60.00	62.50	64.00 0 3 11 47 44 38 39 31 33 30 14 24 10 6 4 1
2005	7	2	0	0	1	2	0.0001	28.67	32.38	33.74	39.57	41.83	44.50	49.24	50.57	53.82	56.08	58.48	60.35	61.71	61.33	62.00 0 6 37 46 61 36 24 34 35 22 25 21 17 7 3 2
2006	7	-2	0	0	1	2	0.0001	28.67	32.38	33.74	39.57	41.83	44.50	49.24	50.57	53.82	56.08	58.48	60.35	61.71	61.33	62.00 0 6 37 46 61 36 24 34 35 22 25 21 17 7 3 2
2007	7	2	0	0	1	2	0.0001	0.0001	31.43	33.07	36.61	43.47	41.91	46.27	48.93	49.88	54.86	54.63	58.56	64.00	0.0001	0.0001 0 0 7 28 46 30 23 15 15 16 7 16 18 5 0 0
2008	7	2	0	0	1	2	0.0001	30.00	33.14	37.38	43.07	44.55	48.67	50.50	53.20	54.96	56.00	60.21	61.56	63.00	65.60	68.00 0 5 28 52 45 29 27 32 25 25 12 19 9 10 5 1
2009	7	-2	0	0	1	2	0.0001	30.00	33.14	37.38	43.07	44.55	48.67	50.50	53.20	54.96	56.00	60.21	61.56	63.00	65.60	68.00 0 5 28 52 45 29 27 32 25 25 12 19 9 10 5 1
2010	7	2	0	0	1	2	0.0001	26.00	32.86	36.24	41.47	46.87	50.00	52.23	53.21	56.00	58.17	59.94	61.00	61.60	66.00	0.0001 0 2 14 25 34 39 37 26 38 37 24 31 14 5 1 0
2011	7	2	0	0	1	2	0.0001	33.33	34.80	38.79	44.64	48.78	50.00	53.67	56.38	57.82	62.57	62.40	64.67	66.00	0.0001	0.0001 0 3 20 43 44 41 19 24 16 11 7 10 9 3 0 0  
2012	7	2	0	0	1	2	30.00	33.70	40.63	46.21	49.97	53.47	57.14	60.49	63.26	64.13	66.89	69.33	0.0001	0.0001	0.0001	0.0001 1 20 63 57 68 34 35 41 19 15 9 3 0 0 0 0
2013	7	2	0	0	1	2	0.0001	40.00	39.79	44.24	51.27	53.17	58.21	59.56	63.27	61.60	62.67	0.0001	0.0001	0.0001	0.0001	0.0001 0 2 19 25 22 24 19 18 11 5 3 0 0 0 0 0
2014	7	-2	0	0	1	2	0.0001	40.00	39.79	44.24	51.27	53.17	58.21	59.56	63.27	61.60	62.67	0.0001	0.0001	0.0001	0.0001	0.0001 0 2 19 25 22 24 19 18 11 5 3 0 0 0 0 0
2015	7	-2	0	0	1	2	0.0001	40.00	39.79	44.24	51.27	53.17	58.21	59.56	63.27	61.60	62.67	0.0001	0.0001	0.0001	0.0001	0.0001 0 2 19 25 22 24 19 18 11 5 3 0 0 0 0 0
2016	7	2	0	0	1	2	24.50	31.20	34.00	40.23	46.30	49.22	52.43	57.05	60.62	61.60	62.00	0.0001	0.0001	0.0001	0.0001	0.0001 8 5 35 26 27 23 23 18 13 5 1 0 0 0 0 0   
2017	7	2	0	0	1	2	0.0001	26.00	31.54	36.75	40.77	45.60	50.30	53.86	54.00	57.56	60.00	64.80	66.22	0.0001	0.0001	0.0001 0 2 13 16 26 10 20 14 5 9 9 5 9 0 0 0
2018	7	2	0	0	1	2	0.0001	0.0001	30.40	37.35	40.54	44.00	47.76	49.91	54.14	57.00	57.33	0.0001	0.0001	0.0001	0.0001	0.0001 0 0 5 31 26 24 25 22 14 4 3 0 0 0 0 0
2019	7	2	0	0	1	2	0.0001	0.0001	31.73	37.90	44.63	47.68	53.88	56.00	55.29	58.25	61.33	64.00	66.00	0.0001	0.0001	0.0001 0 0 15 39 16 37 16 13 14 8 3 2 1 0 0 0
-9999	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
#
0 #_N_environ_variables
# -2 in yr will subtract mean for that env_var; -1 will subtract mean and divide by stddev (e.g. Z-score)
#Yr Variable Value
#
# Sizefreq data. Defined by method because a fleet can use multiple methods
0 # N sizefreq methods to read (or -1 for expanded options)
# 
0 # do tags (0/1/2); where 2 allows entry of TG_min_recap
#
0 #    morphcomp data(0/1) 
#  Nobs, Nmorphs, mincomp
#  yr, seas, type, partition, Nsamp, datavector_by_Nmorphs
#
0  #  Do dataread for selectivity priors(0/1)
# Yr, Seas, Fleet,  Age/Size,  Bin,  selex_prior,  prior_sd
# feature not yet implemented
#
999

