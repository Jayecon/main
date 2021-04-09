* This program reads the txt file data and applies variable and value labels, format and missing values specifications.
* Write the location of the ASCII file at the beginning of the control file.
* Write the location of the SPSS data file at the end of the control file.

SET decimal=dot.

DATA LIST file="e:\works\pisa\pisa2003\INT_schi_2003.txt"
 / COUNTRY 	1	-	3        (a)     
    CNT     	4	-	6        (a)     
    SUBNATIO  	7	-	10       (a)     
    SCHOOLID	11	-	15       (a)     
    SC01Q01 	17	-	17	        
    SC02Q01 	18	-	25	  	          
    SC02Q02 	26	-	33	  	          
    SC03Q01 	34	-	34	  	          
    SC04Q01 	35	-	42	  	          
    SC04Q02 	43	-	50	  	          
    SC04Q03 	51	-	58	  	          
    SC04Q04 	59	-	66	  	          
    SC05Q01 	67	-	67	  	          
    SC05Q02 	68	-	68	  	          
    SC05Q03 	69	-	69	  	          
    SC05Q04 	70	-	70	  	          
    SC05Q05 	71	-	71	  	          
    SC05Q06 	72	-	72	  	          
    SC05Q07 	73	-	73	  	          
    SC05Q08 	74	-	74	  	          
    SC05Q09 	75	-	75	  	          
    SC05Q10 	76	-	76	  	          
    SC05Q11 	77	-	77	  	          
    SC05Q12 	78	-	78	  	          
    SC05Q13 	79	-	79	  	          
    SC05Q14 	80	-	80	  	          
    SC06Q01 	81	-	88	  	          
    SC06Q02 	89	-	96	  	          
    SC08Q01 	97	-	97	  	          
    SC08Q02 	98	-	98	  	          
    SC08Q03 	99	-	99	  	          
    SC08Q04 	100	-	100  		          
    SC08Q05 	101	-	101  		          
    SC08Q06 	102	-	102  		          
    SC08Q07 	103	-	103  		          
    SC08Q08 	104	-	104  		          
    SC08Q09 	105	-	105  		          
    SC08Q10 	106	-	106  		          
    SC08Q11 	107	-	107  		          
    SC08Q12 	108	-	108  		          
    SC08Q13 	109	-	109  		          
    SC08Q14 	110	-	110  		          
    SC08Q15 	111	-	111  		          
    SC08Q16 	112	-	112  		          
    SC08Q17 	113	-	113  		          
    SC08Q18 	114	-	114  		          
    SC08Q19 	115	-	115  		          
    SC08Q20 	116	-	116  		          
    SC09Q01 	117	-	124  		          
    SC09Q02 	125	-	132  		          
    SC09Q03 	133	-	140  		          
    SC09Q04 	141	-	148  		          
    SC09Q05 	149	-	156  		          
    SC09Q06 	157	-	164  		          
    SC10Q01 	165	-	165  		          
    SC10Q02 	166	-	166  		          
    SC10Q03 	167	-	167  		          
    SC10Q04 	168	-	168  		          
    SC10Q05 	169	-	169  		          
    SC10Q06 	170	-	170  		          
    SC10Q07 	171	-	171  		          
    SC11Q01 	172	-	172  		          
    SC11Q02 	173	-	173  		          
    SC11Q03 	174	-	174  		          
    SC11Q04 	175	-	175  		          
    SC11Q05 	176	-	176  		          
    SC11Q06 	177	-	177  		          
    SC11Q07 	178	-	178  		          
    SC12Q01 	179	-	179  		          
    SC12Q02 	180	-	180  		          
    SC12Q03 	181	-	181  		          
    SC12Q04 	182	-	182  		          
    SC12Q05 	183	-	183  		          
    SC13Q01 	184	-	184  		          
    SC13Q02 	185	-	185  		          
    SC13Q03 	186	-	186  		          
    SC13Q04 	187	-	187  		          
    SC13Q05 	188	-	188  		          
    SC13Q06 	189	-	189  		          
    SC13Q07 	190	-	190  		          
    SC13Q08 	191	-	191  		          
    SC14Q01 	192	-	192  		          
    SC15Q01 	193	-	193  		          
    SC15Q02 	194	-	194  		          
    SC16Q01 	195	-	195  		          
    SC16Q02 	196	-	196  		          
    SC16Q03 	197	-	197  		          
    SC16Q04 	198	-	198  		          
    SC17Q01 	199	-	199  		          
    SC17Q02 	200	-	200  		          
    SC17Q03 	201	-	201  		          
    SC17Q04 	202	-	202  		          
    SC17Q05 	203	-	203  		          
    SC18Q11 	204	-	211  		          
    SC18Q12 	212	-	219  		          
    SC18Q13 	220	-	227  		          
    SC18Q21 	228	-	235  		          
    SC18Q22 	236	-	243  		          
    SC18Q23 	244	-	251  		          
    SC19Q11 	252	-	259  		          
    SC19Q12 	260	-	267  		          
    SC19Q13 	268	-	275  		          
    SC19Q14 	276	-	283  		          
    SC19Q15 	284	-	291  		          
    SC19Q21 	292	-	299  		          
    SC19Q22 	300	-	307  		          
    SC19Q23 	308	-	315  		          
    SC19Q24 	316	-	323  		          
    SC19Q25 	324	-	331  		          
    SC20Q01 	332	-	332  		          
    SC20Q02 	333	-	333  		          
    SC20Q03 	334	-	334  		          
    SC20Q04 	335	-	335  		          
    SC21Q01 	336	-	336  		          
    SC21Q02 	337	-	337  		          
    SC21Q03 	338	-	338  		          
    SC22Q01 	339	-	339  		          
    SC22Q02 	340	-	340  		          
    SC22Q03 	341	-	341  		          
    SC23Q01 	342	-	342  		          
    SC23Q02 	343	-	343  		          
    SC23Q03 	344	-	344  		          
    SC24Q01 	345	-	345  		          
    SC24Q02 	346	-	346  		          
    SC24Q03 	347	-	347  		          
    SC24Q04 	348	-	348  		          
    SC25Q01 	349	-	349  		          
    SC25Q02 	350	-	350  		          
    SC25Q03 	351	-	351  		          
    SC25Q04 	352	-	352  		          
    SC25Q05 	353	-	353  		          
    SC25Q06 	354	-	354  		          
    SC25Q07 	355	-	355  		          
    SC25Q08 	356	-	356  		          
    SC25Q09 	357	-	357  		          
    SC25Q10 	358	-	358  		          
    SC25Q11 	359	-	359  		          
    SC25Q12 	360	-	360  		          
    SC25Q13 	361	-	361  		          
    SC26Q01 	362	-	366     (a)     
    SC26Q02 	367	-	371     (a)     
    SC26Q03 	372	-	376     (a)     
    SC26Q04 	377	-	381     (a)     
    SC26Q05 	382	-	386     (a)     
    SC26Q06 	387	-	391     (a)     
    SC26Q07 	392	-	396     (a)     
    SC26Q08 	397	-	401     (a)     
    SC26Q09 	402	-	406     (a)     
    SC26Q10 	407	-	411     (a)     
    SC26Q11 	412	-	416     (a)     
    SC26Q12 	417	-	421     (a)     
    SC27Q01 	422	-	425     (a)     
    SC27Q02 	426	-	429     (a)     
    SC27Q03 	430	-	433     (a)     
    SC27Q04 	434	-	437     (a)     
    SC27Q05 	438	-	441     (a)     
    SC27Q06 	442	-	445     (a)     
    SC27Q07 	446	-	449     (a)     
    SCHLSIZE	450	-	457             
    PCGIRLS 	458	-	465  		          
    SCHLTYPE	466	-	466  		          
    RATCOMP 	467	-	474  		          
    COMPWEB 	475	-	482  		          
    COMPLAN 	483	-	490  		          
    STRATIO 	491	-	498  		          
    PROPCERT	499	-	506  		          
    PROPQPED	507	-	514  		          
    SMRATIO 	515	-	522  		          
    PROPMATH	523	-	530  		          
    PROPMA5A	531	-	538  		          
    ASSESS  	539	-	539  		          
    SELECT  	540	-	540  		          
    ABGROUP 	541	-	541  		          
    EXCOURSE	542	-	542  		          
    MACTIV  	543	-	543  		          
    AUTRES  	544	-	544  		          
    AUTCURR 	545	-	545  		          
    MSTREL  	546	-	550  		          
    TCSHORT 	551	-	558  		          
    SCMATBUI	559	-	566  		          
    SCMATEDU	567	-	574  		          
    STMORALE	575	-	582  		          
    TCMORALE	583	-	590  		          
    STUDBEHA	591	-	598  		          
    TEACBEHA	599	-	606  		          
    TCHCONS 	607	-	614  		          
    SCHAUTON	615	-	622  		          
    TCHPARTI	623	-	630  		          
    SCWEIGHT	631	-	638  
    STRATUM	640      -      644 (a)
   .

Variable labels   
   country   "Country ID"                                                                             
   CNT       "Nation code"
   subnatio  "Adjudicated sub-region" 
   SchoolID   "School ID"
   SC01Q01      "School location Q1"                        
   SC02Q01      "Number of boys Q2a"                        
   SC02Q02      "Number of girls Q2b"                       
   SC03Q01      "Public or private Q3"                      
   SC04Q01      "Funding Government Q4a"                    
   SC04Q02      "Funding Student fees Q4b"                  
   SC04Q03      "Funding Benefactors Q4c"                   
   SC04Q04      "Funding Other Q4d"                         
   SC05Q01      "Grade 1 Q5a"                               
   SC05Q02      "Grade 2 Q5b"                               
   SC05Q03      "Grade 3 Q5c"                               
   SC05Q04      "Grade 4 Q5d"                               
   SC05Q05      "Grade 5 Q5e"                               
   SC05Q06      "Grade 6 Q5f"                               
   SC05Q07      "Grade 7 Q5g"                               
   SC05Q08      "Grade 8 Q5h"                               
   SC05Q09      "Grade 9 Q5i"                               
   SC05Q10      "Grade 10 Q5j"                              
   SC05Q11      "Grade 11 Q5k"                              
   SC05Q12      "Grade 12 Q5l"                              
   SC05Q13      "Grade 13 Q5m"                              
   SC05Q14      "Ungraded school Q5n"                       
   SC06Q01      "Repeat <grade>  at <ISCED2> Q6a"           
   SC06Q02      "Repeat <grade>  at <ISCED3> Q6b"           
   SC08Q01      "Shortage Maths teach.  Q8a"                
   SC08Q02      "Shortage Sci teach.  Q8b"                  
   SC08Q03      "Shortage test_lang. teach.  Q8c"           
   SC08Q04      "Shortage oth nat_lang. teach. Q8d"         
   SC08Q05      "Shortage forn_lang. teach.  Q8e"           
   SC08Q06      "Shortage exper. teach.  Q8f"               
   SC08Q07      "Shortage emerg. teach.  Q8g"               
   SC08Q08      "Shortage supp personnel  Q8h"              
   SC08Q09      "Shortage textbooks Q8i"                    
   SC08Q10      "Shortage supplies Q8j"                     
   SC08Q11      "Shortage buildings Q8k"                    
   SC08Q12      "Shortage heating  Q8l"                     
   SC08Q13      "Shortage classrooms Q8m"                   
   SC08Q14      "Shortage special equipment Q8n"            
   SC08Q15      "Shortage computers Q8o"                    
   SC08Q16      "Shortage computer software Q8p"            
   SC08Q17      "Shortage calculators Q8q"                  
   SC08Q18      "Shortage library material Q8r"             
   SC08Q19      "Shortage audio-vidio Q8s"                  
   SC08Q20      "Shortage lab equipment  Q8t"               
   SC09Q01      "Computers altogether Q9a"                  
   SC09Q02      "Computers students Q9b"                    
   SC09Q03      "Computers teachers Q9c"                    
   SC09Q04      "Computers admin Q9d"                       
   SC09Q05      "Computers with Web Q9e"                    
   SC09Q06      "Computers with LAN Q9f"                    
   SC10Q01      "Admittance Residence  Q10a"                
   SC10Q02      "Admittance Student Record Q10b"            
   SC10Q03      "Admittance Recommendation Q10c"            
   SC10Q04      "Admittance Parents� endorsement  Q10d"     
   SC10Q05      "Admittance Special programme  Q10e"        
   SC10Q06      "Admittance Family preference Q10f"         
   SC10Q07      "<Country Specific> Q10g"                   
   SC11Q01      "Students enjoy Q11a"                       
   SC11Q02      "Students enthusiasm Q11b"                  
   SC11Q03      "Students take pride Q11c"                  
   SC11Q04      "Students value academic Q11d"              
   SC11Q05      "Students respectful Q11e"                  
   SC11Q06      "Students value education Q11f"             
   SC11Q07      "Students learn Q11g"                       
   SC12Q01      "Standardised test Q12a"                    
   SC12Q02      "Teacher's test Q12b"                       
   SC12Q03      "Teacher's ratings Q12c"                    
   SC12Q04      "Students' portfolios Q12d"                 
   SC12Q05      "Student assignments Q12e"                  
   SC13Q01      "Assessment inform parents  Q13a"           
   SC13Q02      "Assessment retention  Q13b"                
   SC13Q03      "Assessment group students  Q13c"           
   SC13Q04      "Assessment compare to national Q13d"       
   SC13Q05      "Assessment  school�s progress  Q13e"       
   SC13Q06      "Assessment teachers� effectiveness  Q13f"  
   SC13Q07      "Assessment to  improve curriculum  Q13g"   
   SC13Q08      "Assessment compare to other schools Q13h"  
   SC14Q01      "Language Percent Q14"                      
   SC15Q01      "Separate subject Q15a"                     
   SC15Q02      "Other parts Q15b"                          
   SC16Q01      "Streaming by levels  Q16a"                 
   SC16Q02      "Streaming by content  Q16b"                
   SC16Q03      "Grouped by Ability Q16c"                   
   SC16Q04      "Not grouped by ability  Q16d"              
   SC17Q01      "Enrichment Mathematics Q17a"               
   SC17Q02      "Remedial mathematics Q17b"                 
   SC17Q03      "Mathematics competitions Q17c"             
   SC17Q04      "Mathematics Clubs Q17d"                    
   SC17Q05      "Computer clubs Q17e"                       
   SC18Q11      "Ftime teach in TOTAL Q18a1"                
   SC18Q21      "Ptime teach in TOTAL Q18a2"                
   SC18Q12      "Ftime teach fully certified  Q18b1"        
   SC18Q22      "Ptime teach fully certified  Q18b2"        
   SC18Q13      "Ftime teach ISCED5A  pedag  Q18c1"         
   SC18Q23      "Ptime teach ISCED5A pedag  Q18c2"          
   SC19Q11      "Ftime Maths teach  Q19a1"                  
   SC19Q21      "Ptime Maths teach  Q19a2"                  
   SC19Q12      "Ftime teach ISCED5A Maths Q19b1"           
   SC19Q22      "Ptime teach ISCED5A Maths Q19b2"           
   SC19Q13      "Ftime Maths teach ISCED5A no major Q19c1"  
   SC19Q23      "Ptime Maths teach ISCED5A no major Q19c2"  
   SC19Q14      "Ftime Maths teach ISCED5A pedag Q19d1"     
   SC19Q24      "Ptime Maths teach ISCED5A pedag Q19d2"     
   SC19Q15      "Ftime Maths teach ISCED5B Q19e1"           
   SC19Q25      "Ptime Maths teach ISCED5B Q19e2"           
   SC20Q01      "By students' achievement  Q20a"            
   SC20Q02      "By teacher review  Q20b"                   
   SC20Q03      "By principal Q20c"                         
   SC20Q04      "By inspectors  Q20d"                       
   SC21Q01      "Innovative teachers Q21a"                  
   SC21Q02      "Traditional teachers  Q21b"                
   SC21Q03      "Innovation disagreements Q21c"             
   SC22Q01      "Require high achievement Q22a"             
   SC22Q02      "Adapt standards  Q22b"                     
   SC22Q03      "Frequent disagreements  Q22c"              
   SC23Q01      "Goals social  development  Q23a"           
   SC23Q02      "Goals Maths skills  Q23b"                  
   SC23Q03      "Goals disagreements  Q23c"                 
   SC24Q01      "High morale Q24a"                          
   SC24Q02      "Enthusiasm Q24b"                           
   SC24Q03      "Pride in school Q24c"                      
   SC24Q04      "Academic Achievement Q24d"                 
   SC25Q01      "Low expectations Q25a"                     
   SC25Q02      "Student absenteeism Q25b"                  
   SC25Q03      "Stud-teacher relations Q25c"               
   SC25Q04      "Disruption of Classes Q25d"                
   SC25Q05      "Not meeting needs Q25e"                    
   SC25Q06      "Teacher absenteeism Q25f"                  
   SC25Q07      "Skipping classes Q25g"                     
   SC25Q08      "Lack of respect Q25h"                      
   SC25Q09      "Resisting change Q25i"                     
   SC25Q10      "Use of alcohol Q25j"                       
   SC25Q11      "Teacher strictness Q25k"                   
   SC25Q12      "Bullying Q25l"                             
   SC25Q13      "Lack encouragement Q25m"                   
   SC26Q01      "Hiring teachers Q26a"                      
   SC26Q02      "Firing teachers Q26b"                      
   SC26Q03      "Teacher salaries Q26c"                     
   SC26Q04      "Salary increase Q26d"                      
   SC26Q05      "Budget formulation Q26e"                   
   SC26Q06      "Budget allocation Q26f"                    
   SC26Q07      "Disciplinary policies Q26g"                
   SC26Q08      "Assessment policies Q26h"                  
   SC26Q09      "Student admittance Q26i"                   
   SC26Q10      "Textbooks Q26j"                            
   SC26Q11      "Course content Q26k"                       
   SC26Q12      "Course offer Q26l"                         
   SC27Q01      "Decision making national  Q27a"            
   SC27Q02      "Decision making local  Q27b"               
   SC27Q03      "Decision making employers Q27c"            
   SC27Q04      "Decision making parents Q27d"              
   SC27Q05      "Decision making teachers Q27e"             
   SC27Q06      "Decision making students  Q27f"            
   SC27Q07      "Decision making external Q27g"             
   SCHLSIZE      "School size"
   PCGIRLS      "Proportion of girls"
   RATCOMP    "Computer ratio to school size"
   STRATIO      "Teacher/student ratio"
   SCHLTYPE   "School Ownership"
   COMPWEB   "Proportion of computers connected to WEB"
   COMPLAN     "Proportion of computers connected to LAN"
   PROPCERT   "Proportion of certified teachers"
   PROPQPED  "Proportion of teachers with ISCED 5A in Pedagogy"
   SMRATIO      "Maths teacher-student ratio"
   PROPMATH  "Proportion of Maths teachers"
   PROPMA5A  "Proportion of math teachers with a ISCED 5A level in math"
   ASSESS    "Estimated Number of assessments per year"
   SELECT    "School selectivity"
   abgroup   "Streaming within schools"
   EXCOURSE  "School offering extension courses (number of types)"	
   MACTIV        "School offering Maths activities (number of types)"	
   AUTRES      "Resource autonomy"	
   AUTCURR   "Curricular autonomy"	
   MSTREL     "Index of poor student-teacher relations (school average)"
   TCSHORT     'Shortage of teachers (WLE)'/
   SCMATBUI   'Quality of material resources (WLE)'
   SCMATEDU  'Quality of educational resources (WLE)'
   STMORALE  'Student morale (WLE)'
   TCMORALE  'Teacher morale (WLE)'
   STUDBEHA   'Student behaviours (WLE)'
   TEACBEHA   'Teacher behaviours (WLE)'
   TCHCONS     'Mathematics teacher consensus (WLE)'
   SCHAUTON   'School autonomy (WLE)'
   TCHPARTI     'Teacher participation (WLE)'
   Scweight "school Weight"
   STRATUM   "STRATUM"
   .
   
value labels                                 
    SC01Q01     1  "Village (less 3 000)"         
                2  "Small town (3 000 to 15 000)" 
                3  "Town (15 000 to 100 000)"     
                4  "City (100 000 to 1 000 000)"  
                5  "Large city (more 1 000 000)"  
                8  "Invalid"                      
                9  "Miss"                         
                7  "N/A"/                         
    SC03Q01     1  "Public"                       
                2  "Private"                      
                8  "Invalid"                      
                9  "Miss"                         
                7  "N/A"/                         
    SC05Q01     1  "Yes"                          
                2  "No"                           
                8  "Invalid"                      
                9  "Miss"                         
                7  "N/A"/                         
    SC05Q02     1  "Yes"                          
                2  "No"                           
                8  "Invalid"                      
                9  "Miss"                         
                7  "N/A"/                         
    SC05Q03     1  "Yes"                          
                2  "No"                           
                8  "Invalid"                      
                9  "Miss"                         
                7  "N/A"/                         
    SC05Q04     1  "Yes"                          
                2  "No"                           
                8  "Invalid"                      
                9  "Miss"                         
                7  "N/A"/                         
    SC05Q05     1  "Yes"                          
                2  "No"                           
                8  "Invalid"                      
                9  "Miss"                         
                7  "N/A"/                         
    SC05Q06     1  "Yes"                          
                2  "No"                           
                8  "Invalid"                      
                9  "Miss"                         
                7  "N/A"/                         
    SC05Q07     1  "Yes"                          
                2  "No"                           
                8  "Invalid"                      
                9  "Miss"                         
                7  "N/A"/                         
    SC05Q08     1  "Yes"                          
                2  "No"                           
                8  "Invalid"                      
                9  "Miss"                         
                7  "N/A"/                         
    SC05Q09     1  "Yes"                          
                2  "No"                           
                8  "Invalid"                      
                9  "Miss"                         
                7  "N/A"/                         
    SC05Q10     1  "Yes"                          
                2  "No"                           
                8  "Invalid"                      
                9  "Miss"                         
                7  "N/A"/                         
    SC05Q11     1  "Yes"                          
                2  "No"                           
                8  "Invalid"                      
                9  "Miss"                         
                7  "N/A"/                         
    SC05Q12     1  "Yes"                          
                2  "No"                           
                8  "Invalid"                      
                9  "Miss"                         
                7  "N/A"/                         
    SC05Q13     1  "Yes"                          
                2  "No"                           
                8  "Invalid"                      
                9  "Miss"                         
                7  "N/A"/                         
    SC05Q14     1  "Yes"                          
                2  "No"                           
                8  "Invalid"                      
                9  "Miss"                         
                7  "N/A"/                         
    SC08Q01     1  "Not at all"                   
                2  "Very little"                  
                3  "To some extent"               
                4  "A lot"                        
                8  "Invalid"                      
                9  "Miss"                         
                7  "N/A"/                         
    SC08Q02     1  "Not at all"                   
                2  "Very little"                  
                3  "To some extent"               
                4  "A lot"                        
                8  "Invalid"                      
                9  "Miss"                         
                7  "N/A"/                         
    SC08Q03     1  "Not at all"                   
                2  "Very little"                  
                3  "To some extent"               
                4  "A lot"                        
                8  "Invalid"                      
                9  "Miss"                         
                7  "N/A"/                         
    SC08Q04     1  "Not at all"                   
                2  "Very little"                  
                3  "To some extent"               
                4  "A lot"                        
                8  "Invalid"                      
                9  "Miss"                         
                7  "N/A"/                         
    SC08Q05     1  "Not at all"                   
                2  "Very little"                  
                3  "To some extent"               
                4  "A lot"                        
                8  "Invalid"                      
                9  "Miss"                         
                7  "N/A"/                         
    SC08Q06     1  "Not at all"                   
                2  "Very little"                  
                3  "To some extent"               
                4  "A lot"                        
                8  "Invalid"                      
                9  "Miss"                         
                7  "N/A"/                         
    SC08Q07     1  "Not at all"                   
                2  "Very little"                  
                3  "To some extent"               
                4  "A lot"                        
                8  "Invalid"                      
                9  "Miss"                         
                7  "N/A"/                         
    SC08Q08     1  "Not at all"                   
                2  "Very little"                  
                3  "To some extent"               
                4  "A lot"                        
                8  "Invalid"                      
                9  "Miss"                         
                7  "N/A"/                         
    SC08Q09     1  "Not at all"                   
                2  "Very little"                  
                3  "To some extent"               
                4  "A lot"                        
                8  "Invalid"                      
                9  "Miss"                         
                7  "N/A"/                         
    SC08Q10     1  "Not at all"                   
                2  "Very little"                  
                3  "To some extent"               
                4  "A lot"                        
                8  "Invalid"                      
                9  "Miss"                         
                7  "N/A"/                         
    SC08Q11     1  "Not at all"                   
                2  "Very little"                  
                3  "To some extent"               
                4  "A lot"                        
                8  "Invalid"                      
                9  "Miss"                         
                7  "N/A"/                         
    SC08Q12     1  "Not at all"                   
                2  "Very little"                  
                3  "To some extent"               
                4  "A lot"                        
                8  "Invalid"                      
                9  "Miss"                         
                7  "N/A"/                         
    SC08Q13     1  "Not at all"                   
                2  "Very little"                  
                3  "To some extent"               
                4  "A lot"                        
                8  "Invalid"                      
                9  "Miss"                         
                7  "N/A"/                         
    SC08Q14     1  "Not at all"                   
                2  "Very little"                  
                3  "To some extent"               
                4  "A lot"                        
                8  "Invalid"                      
                9  "Miss"                         
                7  "N/A"/                         
    SC08Q15     1  "Not at all"                   
                2  "Very little"                  
                3  "To some extent"               
                4  "A lot"                        
                8  "Invalid"                      
                9  "Miss"                         
                7  "N/A"/                         
    SC08Q16     1  "Not at all"                   
                2  "Very little"                  
                3  "To some extent"               
                4  "A lot"                        
                8  "Invalid"                      
                9  "Miss"                         
                7  "N/A"/                         
    SC08Q17     1  "Not at all"                   
                2  "Very little"                  
                3  "To some extent"               
                4  "A lot"                        
                8  "Invalid"                      
                9  "Miss"                         
                7  "N/A"/                         
    SC08Q18     1  "Not at all"                   
                2  "Very little"                  
                3  "To some extent"               
                4  "A lot"                        
                8  "Invalid"                      
                9  "Miss"                         
                7  "N/A"/                         
    SC08Q19     1  "Not at all"                   
                2  "Very little"                  
                3  "To some extent"               
                4  "A lot"                        
                8  "Invalid"                      
                9  "Miss"                         
                7  "N/A"/                         
    SC08Q20     1  "Not at all"                   
                2  "Very little"                  
                3  "To some extent"               
                4  "A lot"                        
                8  "Invalid"                      
                9  "Miss"                         
                7  "N/A"/                         
    SC10Q01     1  "Prerequisite"                 
                2  "High priority"                
                3  "Considered"                   
                4  "Not considered"               
                8  "Invalid"                      
                9  "Miss"                         
                7  "N/A"/                         
    SC10Q02     1  "Prerequisite"                 
                2  "High priority"                
                3  "Considered"                   
                4  "Not considered"               
                8  "Invalid"                      
                9  "Miss"                         
                7  "N/A"/                         
    SC10Q03     1  "Prerequisite"                 
                2  "High priority"                
                3  "Considered"                   
                4  "Not considered"               
                8  "Invalid"                      
                9  "Miss"                         
                7  "N/A"/                         
    SC10Q04     1  "Prerequisite"                 
                2  "High priority"                
                3  "Considered"                   
                4  "Not considered"               
                8  "Invalid"                      
                9  "Miss"                         
                7  "N/A"/                         
    SC10Q05     1  "Prerequisite"                 
                2  "High priority"                
                3  "Considered"                   
                4  "Not considered"               
                8  "Invalid"                      
                9  "Miss"                         
                7  "N/A"/                         
    SC10Q06     1  "Prerequisite"                 
                2  "High priority"                
                3  "Considered"                   
                4  "Not considered"               
                8  "Invalid"                      
                9  "Miss"                         
                7  "N/A"/                         
    SC10Q07     1  "Prerequisite"                 
                2  "High priority"                
                3  "Considered"                   
                4  "Not considered"               
                8  "Invalid"                      
                9  "Miss"                         
                7  "N/A"/                         
    SC11Q01     1  "Strongly Agree"               
                2  "Agree"                        
                3  "Disagree"                     
                4  "Strongly disagree"            
                8  "Invalid"                      
                9  "Miss"                         
                7  "N/A"/                         
    SC11Q02     1  "Strongly Agree"               
                2  "Agree"                        
                3  "Disagree"                     
                4  "Strongly disagree"            
                8  "Invalid"                      
                9  "Miss"                         
                7  "N/A"/                         
    SC11Q03     1  "Strongly Agree"               
                2  "Agree"                        
                3  "Disagree"                     
                4  "Strongly disagree"            
                8  "Invalid"                      
                9  "Miss"                         
                7  "N/A"/                         
    SC11Q04     1  "Strongly Agree"               
                2  "Agree"                        
                3  "Disagree"                     
                4  "Strongly disagree"            
                8  "Invalid"                      
                9  "Miss"                         
                7  "N/A"/                         
    SC11Q05     1  "Strongly Agree"               
                2  "Agree"                        
                3  "Disagree"                     
                4  "Strongly disagree"            
                8  "Invalid"                      
                9  "Miss"                         
                7  "N/A"/                         
    SC11Q06     1  "Strongly Agree"               
                2  "Agree"                        
                3  "Disagree"                     
                4  "Strongly disagree"            
                8  "Invalid"                      
                9  "Miss"                         
                7  "N/A"/                         
    SC11Q07     1  "Strongly Agree"               
                2  "Agree"                        
                3  "Disagree"                     
                4  "Strongly disagree"            
                8  "Invalid"                      
                9  "Miss"                         
                7  "N/A"/                         
    SC12Q01     1  "Never"                        
                2  "1 to 2 times a year"          
                3  "3 to 5 times a year"          
                4  "Monthly"                      
                5  "More once a month"            
                8  "Invalid"                      
                9  "Miss"                         
                7  "N/A"/                         
    SC12Q02     1  "Never"                        
                2  "1 to 2 times a year"          
                3  "3 to 5 times a year"          
                4  "Monthly"                      
                5  "More once a month"            
                8  "Invalid"                      
                9  "Miss"                         
                7  "N/A"/                         
    SC12Q03     1  "Never"                        
                2  "1 to 2 times a year"          
                3  "3 to 5 times a year"          
                4  "Monthly"                      
                5  "More once a month"            
                8  "Invalid"                      
                9  "Miss"                         
                7  "N/A"/                         
    SC12Q04     1  "Never"                        
                2  "1 to 2 times a year"          
                3  "3 to 5 times a year"          
                4  "Monthly"                      
                5  "More once a month"            
                8  "Invalid"                      
                9  "Miss"                         
                7  "N/A"/                         
    SC12Q05     1  "Never"                        
                2  "1 to 2 times a year"          
                3  "3 to 5 times a year"          
                4  "Monthly"                      
                5  "More once a month"            
                8  "Invalid"                      
                9  "Miss"                         
                7  "N/A"/                         
    SC13Q01     1  "Yes"                          
                2  "No"                           
                8  "Invalid"                      
                9  "Miss"                         
                7  "N/A"/                         
    SC13Q02     1  "Yes"                          
                2  "No"                           
                8  "Invalid"                      
                9  "Miss"                         
                7  "N/A"/                         
    SC13Q03     1  "Yes"                          
                2  "No"                           
                8  "Invalid"                      
                9  "Miss"                         
                7  "N/A"/                         
    SC13Q04     1  "Yes"                          
                2  "No"                           
                8  "Invalid"                      
                9  "Miss"                         
                7  "N/A"/                         
    SC13Q05     1  "Yes"                          
                2  "No"                           
                8  "Invalid"                      
                9  "Miss"                         
                7  "N/A"/                         
    SC13Q06     1  "Yes"                          
                2  "No"                           
                8  "Invalid"                      
                9  "Miss"                         
                7  "N/A"/                         
    SC13Q07     1  "Yes"                          
                2  "No"                           
                8  "Invalid"                      
                9  "Miss"                         
                7  "N/A"/                         
    SC13Q08     1  "Yes"                          
                2  "No"                           
                8  "Invalid"                      
                9  "Miss"                         
                7  "N/A"/                         
    SC14Q01     1  "40% or more"                  
                2  "more 20%  less 40%"           
                3  "more 10%  less 20%"           
                4  "Less than 10%"                
                8  "Invalid"                      
                9  "Miss"                         
                7  "N/A"/                         
    SC15Q01     1  "No"                           
                2  "Yes for one"                  
                3  "Yes for 2 or more"            
                4  "Not Applicable"               
                8  "Invalid"                      
                9  "Miss"                         
                7  "N/A"/                         
    SC15Q02     1  "No"                           
                2  "Yes for one"                  
                3  "Yes for 2 or more"            
                4  "Not Applicable"               
                8  "Invalid"                      
                9  "Miss"                         
                7  "N/A"/                         
    SC16Q01     1  "For all classes"              
                2  "For some classes"             
                3  "Not for any classes"          
                8  "Invalid"                      
                9  "Miss"                         
                7  "N/A"/                         
    SC16Q02     1  "For all classes"              
                2  "For some classes"             
                3  "Not for any classes"          
                8  "Invalid"                      
                9  "Miss"                         
                7  "N/A"/                         
    SC16Q03     1  "For all classes"              
                2  "For some classes"             
                3  "Not for any classes"          
                8  "Invalid"                      
                9  "Miss"                         
                7  "N/A"/                         
    SC16Q04     1  "For all classes"              
                2  "For some classes"             
                3  "Not for any classes"          
                8  "Invalid"                      
                9  "Miss"                         
                7  "N/A"/                         
    SC17Q01     1  "Yes"                          
                2  "No"                           
                8  "Invalid"                      
                9  "Miss"                         
                7  "N/A"/                         
    SC17Q02     1  "Yes"                          
                2  "No"                           
                8  "Invalid"                      
                9  "Miss"                         
                7  "N/A"/                         
    SC17Q03     1  "Yes"                          
                2  "No"                           
                8  "Invalid"                      
                9  "Miss"                         
                7  "N/A"/                         
    SC17Q04     1  "Yes"                          
                2  "No"                           
                8  "Invalid"                      
                9  "Miss"                         
                7  "N/A"/                         
    SC17Q05     1  "Yes"                          
                2  "No"                           
                8  "Invalid"                      
                9  "Miss"                         
                7  "N/A"/                         
    SC20Q01     1  "Yes"                          
                2  "No"                           
                8  "Invalid"                      
                9  "Miss"                         
                7  "N/A"/                         
    SC20Q02     1  "Yes"                          
                2  "No"                           
                8  "Invalid"                      
                9  "Miss"                         
                7  "N/A"/                         
    SC20Q03     1  "Yes"                          
                2  "No"                           
                8  "Invalid"                      
                9  "Miss"                         
                7  "N/A"/                         
    SC20Q04     1  "Yes"                          
                2  "No"                           
                8  "Invalid"                      
                9  "Miss"                         
                7  "N/A"/                         
    SC21Q01     1  "Strongly agree"               
                2  "Agree"                        
                3  "Disagree"                     
                4  "Strongly disagree"            
                8  "Invalid"                      
                9  "Miss"                         
                7  "N/A"/                         
    SC21Q02     1  "Strongly agree"               
                2  "Agree"                        
                3  "Disagree"                     
                4  "Strongly disagree"            
                8  "Invalid"                      
                9  "Miss"                         
                7  "N/A"/                         
    SC21Q03     1  "Strongly agree"               
                2  "Agree"                        
                3  "Disagree"                     
                4  "Strongly disagree"            
                8  "Invalid"                      
                9  "Miss"                         
                7  "N/A"/                         
    SC22Q01     1  "Strongly agree"               
                2  "Agree"                        
                3  "Disagree"                     
                4  "Strongly disagree"            
                8  "Invalid"                      
                9  "Miss"                         
                7  "N/A"/                         
    SC22Q02     1  "Strongly agree"               
                2  "Agree"                        
                3  "Disagree"                     
                4  "Strongly disagree"            
                8  "Invalid"                      
                9  "Miss"                         
                7  "N/A"/                         
    SC22Q03     1  "Strongly agree"               
                2  "Agree"                        
                3  "Disagree"                     
                4  "Strongly disagree"            
                8  "Invalid"                      
                9  "Miss"                         
                7  "N/A"/                         
    SC23Q01     1  "Strongly agree"               
                2  "Agree"                        
                3  "Disagree"                     
                4  "Strongly disagree"            
                8  "Invalid"                      
                9  "Miss"                         
                7  "N/A"/                         
    SC23Q02     1  "Strongly agree"               
                2  "Agree"                        
                3  "Disagree"                     
                4  "Strongly disagree"            
                8  "Invalid"                      
                9  "Miss"                         
                7  "N/A"/                         
    SC23Q03     1  "Strongly agree"               
                2  "Agree"                        
                3  "Disagree"                     
                4  "Strongly disagree"            
                8  "Invalid"                      
                9  "Miss"                         
                7  "N/A"/                         
    SC24Q01     1  "Strongly agree"               
                2  "Agree"                        
                3  "Disagree"                     
                4  "Strongly disagree"            
                8  "Invalid"                      
                9  "Miss"                         
                7  "N/A"/                         
    SC24Q02     1  "Strongly agree"               
                2  "Agree"                        
                3  "Disagree"                     
                4  "Strongly disagree"            
                8  "Invalid"                      
                9  "Miss"                         
                7  "N/A"/                         
    SC24Q03     1  "Strongly agree"               
                2  "Agree"                        
                3  "Disagree"                     
                4  "Strongly disagree"            
                8  "Invalid"                      
                9  "Miss"                         
                7  "N/A"/                         
    SC24Q04     1  "Strongly agree"               
                2  "Agree"                        
                3  "Disagree"                     
                4  "Strongly disagree"            
                8  "Invalid"                      
                9  "Miss"                         
                7  "N/A"/                         
    SC25Q01     1  "Not at all"                   
                2  "Very Little"                  
                3  "To some extent"               
                4  "A lot"                        
                8  "Invalid"                      
                9  "Miss"                         
                7  "N/A"/                         
    SC25Q02     1  "Not at all"                   
                2  "Very Little"                  
                3  "To some extent"               
                4  "A lot"                        
                8  "Invalid"                      
                9  "Miss"                         
                7  "N/A"/                         
    SC25Q03     1  "Not at all"                   
                2  "Very Little"                  
                3  "To some extent"               
                4  "A lot"                        
                8  "Invalid"                      
                9  "Miss"                         
                7  "N/A"/                         
    SC25Q04     1  "Not at all"                   
                2  "Very Little"                  
                3  "To some extent"               
                4  "A lot"                        
                8  "Invalid"                      
                9  "Miss"                         
                7  "N/A"/                         
    SC25Q05     1  "Not at all"                   
                2  "Very Little"                  
                3  "To some extent"               
                4  "A lot"                        
                8  "Invalid"                      
                9  "Miss"                         
                7  "N/A"/                         
    SC25Q06     1  "Not at all"                   
                2  "Very Little"                  
                3  "To some extent"               
                4  "A lot"                        
                8  "Invalid"                      
                9  "Miss"                         
                7  "N/A"/                         
    SC25Q07     1  "Not at all"                   
                2  "Very Little"                  
                3  "To some extent"               
                4  "A lot"                        
                8  "Invalid"                      
                9  "Miss"                         
                7  "N/A"/                         
    SC25Q08     1  "Not at all"                   
                2  "Very Little"                  
                3  "To some extent"               
                4  "A lot"                        
                8  "Invalid"                      
                9  "Miss"                         
                7  "N/A"/                         
    SC25Q09     1  "Not at all"                   
                2  "Very Little"                  
                3  "To some extent"               
                4  "A lot"                        
                8  "Invalid"                      
                9  "Miss"                         
                7  "N/A"/                         
    SC25Q10     1  "Not at all"                   
                2  "Very Little"                  
                3  "To some extent"               
                4  "A lot"                        
                8  "Invalid"                      
                9  "Miss"                         
                7  "N/A"/                         
    SC25Q11     1  "Not at all"                   
                2  "Very Little"                  
                3  "To some extent"               
                4  "A lot"                        
                8  "Invalid"                      
                9  "Miss"                         
                7  "N/A"/                         
    SC25Q12     1  "Not at all"                   
                2  "Very Little"                  
                3  "To some extent"               
                4  "A lot"                        
                8  "Invalid"                      
                9  "Miss"                         
                7  "N/A"/                         
    SC25Q13     1  "Not at all"                   
                2  "Very Little"                  
                3  "To some extent"               
                4  "A lot"                        
                8  "Invalid"                      
                9  "Miss"                         
                7  "N/A"/                         
   SCHLTYPE  1 'Private Independent' 2 'Private government-dependent' 3 'Public' 7 'N/A'   9 'Missing' /   
   SELECT 0 'Not considered' 1 'At least one considered'  2 'At least one high priority' 3 'At least one pre-requiste' 7 'N/A'   9 'Missing' /   
   ASSESS 1 '<20' 2 '20-39' 3 '>40'  7 'N/A'   9 'Missing' /   
   abgroup 1 'Not for any classes' 2 'For some classes' 3 'For all classes' 7 'N/A'   9 'Missing' 
 .

value labels   
 SC02Q01  SC02Q02   SC04Q01    SC04Q02    SC04Q03    SC04Q04    
 SC06Q01    SC06Q02    SC18Q11    SC18Q21    SC18Q12    SC18Q22    SC18Q13    SC18Q23    
 SC19Q11    SC19Q21    SC19Q12    SC19Q22    SC19Q13    SC19Q23    SC19Q14    
 SC19Q24    SC19Q15    SC19Q25     997 "N/A" 998 "Invalid" 999 "Miss" /
 SC09Q01    SC09Q02    SC09Q03    SC09Q04    SC09Q05   SC09Q06 9997 "N/A" 9998 "Invalid" 9999 "Miss" /
 SC26Q01 SC26Q02 SC26Q03 SC26Q04 SC26Q05 SC26Q06 SC26Q07 SC26Q08 SC26Q09 SC26Q10 SC26Q11 SC26Q12  
    "77777" "N/A" "88888" "Invalid" "99999" "Miss" / 
 SC27Q01 SC27Q02 SC27Q03 SC27Q04 SC27Q05 SC27Q06 SC27Q07 "7777" "N/A" "8888" "Invalid" "9999" "Miss" /    
 pcgirls   PROPCERT PROPQPED SMRATIO PROPMATH PROPMA5A   STRATIO  997 "N/A" 998 "Invalid" 999 "Miss" /         
 SCHLSIZE  99997 "N/A" 99998 "Invalid" 99999 "Miss" /           
 RATCOMP      97 "N/A" 98 "Invalid" 99 "Miss" /         
 tcshort scmatbui scmatedu stmorale tcmorale studbeha teacbeha tchcons schauton tchparti Scweight 997 "Missing" .             

value labels    EXCOURSE MACTIV AUTRES AUTCURR  9 'Missing' / COMPWEB COMPLAN MSTREL 7 'N/A'   9 'Missing' .
                
missing values SC02Q01  SC02Q02   SC04Q01    SC04Q02    SC04Q03    SC04Q04    
 SC06Q01    SC06Q02    SC18Q11    SC18Q21    SC18Q12    SC18Q22    SC18Q13    SC18Q23    
 SC19Q11    SC19Q21    SC19Q12    SC19Q22    SC19Q13    SC19Q23    SC19Q14    
 SC19Q24    SC19Q15    SC19Q25     STRATIO  (997,998,999).    

missing values SC09Q01    SC09Q02    SC09Q03    SC09Q04    SC09Q05   SC09Q06   (9997,9998,9999).    
   
   
missing values     SC01Q01  SC03Q01 SC05Q01 SC05Q02 SC05Q03 SC05Q04 SC05Q05 SC05Q06 SC05Q07 SC05Q08 
 SC05Q09 SC05Q10 SC05Q11 SC05Q12 SC05Q13 SC05Q14 SC08Q01 SC08Q02
 SC08Q03 SC08Q04 SC08Q05 SC08Q06 SC08Q07 SC08Q08 SC08Q09 SC08Q10
 SC08Q11 SC08Q12 SC08Q13 SC08Q14 SC08Q15 SC08Q16 SC08Q17 SC08Q18
 SC08Q19 SC08Q20 SC10Q01 SC10Q02 SC10Q03 SC10Q04 SC10Q05 SC10Q06 
 SC10Q07 SC11Q01 SC11Q02 SC11Q03 SC11Q04 SC11Q05 SC11Q06 SC11Q07
 SC12Q01 SC12Q02 SC12Q03 SC12Q04 SC12Q05 SC13Q01 SC13Q02 SC13Q03 
 SC13Q04 SC13Q05 SC13Q06 SC13Q07 SC13Q08 SC14Q01 SC15Q01 SC15Q02 
 SC16Q01 SC16Q02 SC16Q03 SC16Q04 SC17Q01 SC17Q02 SC17Q03 SC17Q04 
 SC17Q05 SC20Q01 SC20Q02 SC20Q03 SC20Q04 SC21Q01 SC21Q02 SC21Q03 
 SC22Q01 SC22Q02 SC22Q03 SC23Q01 SC23Q02 SC23Q03 SC24Q01 SC24Q02 
 SC24Q03 SC24Q04 SC25Q01 SC25Q02 SC25Q03 SC25Q04 SC25Q05 SC25Q06 
 SC25Q07 SC25Q08 SC25Q09 SC25Q10 SC25Q11 SC25Q12 SC25Q13 (7,8,9) .
 
missing values SC26Q01 SC26Q02 SC26Q03 SC26Q04 SC26Q05 SC26Q06 SC26Q07 
 SC26Q08 SC26Q09 SC26Q10 SC26Q11 SC26Q12  ("77777","88888", "99999").
missing values SC27Q01 SC27Q02 SC27Q03 SC27Q04 SC27Q05 SC27Q06 SC27Q07 ("7777","8888", "9999").
Missing values  SCHLSIZE  (99997, 99998, 99999).
Missing values  pcgirls (997,998,999).
Missing values tcshort scmatbui scmatedu stmorale tcmorale studbeha teacbeha tchcons schauton tchparti Scweight (997).                           

missing values PROPCERT PROPQPED SMRATIO PROPMATH PROPMA5A (997,998,999).
missing values SCHLTYPE ASSESS SELECT abgroup  EXCOURSE MACTIV AUTRES AUTCURR MSTREL (7,8,9) .
missing values RATCOMP (97,98,99).
missing values COMPWEB COMPLAN (7,8,9).

format SC03Q01 SC05Q01 SC05Q02 SC05Q03 SC05Q04 SC05Q05 SC05Q06 SC05Q07 SC05Q08 
 SC05Q09 SC05Q10 SC05Q11 SC05Q12 SC05Q13 SC05Q14 SC08Q01 SC08Q02
 SC08Q03 SC08Q04 SC08Q05 SC08Q06 SC08Q07 SC08Q08 SC08Q09 SC08Q10
 SC08Q11 SC08Q12 SC08Q13 SC08Q14 SC08Q15 SC08Q16 SC08Q17 SC08Q18
 SC08Q19 SC08Q20 SC10Q01 SC10Q02 SC10Q03 SC10Q04 SC10Q05 SC10Q06 
 SC10Q07 SC11Q01 SC11Q02 SC11Q03 SC11Q04 SC11Q05 SC11Q06 SC11Q07
 SC12Q01 SC12Q02 SC12Q03 SC12Q04 SC12Q05 SC13Q01 SC13Q02 SC13Q03 
 SC13Q04 SC13Q05 SC13Q06 SC13Q07 SC13Q08 SC14Q01 SC15Q01 SC15Q02 
 SC16Q01 SC16Q02 SC16Q03 SC16Q04 SC17Q01 SC17Q02 SC17Q03 SC17Q04 
 SC17Q05 SC20Q01 SC20Q02 SC20Q03 SC20Q04 SC21Q01 SC21Q02 SC21Q03 
 SC22Q01 SC22Q02 SC22Q03 SC23Q01 SC23Q02 SC23Q03 SC24Q01 SC24Q02 
 SC24Q03 SC24Q04 SC25Q01 SC25Q02 SC25Q03 SC25Q04 SC25Q05 SC25Q06 
 SC25Q07 SC25Q08 SC25Q09 SC25Q10 SC25Q11 SC25Q12 SC25Q13 ASSESS 
 SELECT abgroup EXCOURSE MACTIV AUTRES AUTCURR MSTREL (f1.0) .
format SC02Q01 SC02Q02   SC09Q01    SC09Q02    SC09Q03    SC09Q04    SC09Q05    
 SC09Q06  SC18Q11     SC18Q21    SC18Q12    SC18Q22    SC18Q13    SC18Q23    
 SC19Q11    SC19Q21   SC19Q12    SC19Q22    SC19Q13    SC19Q23    SC19Q14    
 SC19Q24    SC19Q15   SC19Q25 SCHLSIZE (f8.0).    
format SC04Q01    SC04Q02    SC04Q03    SC04Q04   SC06Q01   SC06Q02     
  pcgirls   tcshort scmatbui scmatedu stmorale tcmorale studbeha teacbeha tchcons schauton 
  COMPWEB COMPLAN RATCOMP  tchparti PROPCERT PROPQPED SMRATIO PROPMATH PROPMA5A STRATIO (f8.3).    
format MSTREL (f5.2).   
format Scweight (f8.5).     
exe.
     
value labels subnatio
  '0360'  'Australia'
  '0400'  'Austria'
  '0560'  'Belgium'
  '0760'  'Brazil'
  '1240'  'Canada'
  '2030'  'Czech Republic'
  '2080'  'Denmark'
  '2460'  'Finland'
  '2500'  'France'
  '2760'  'Germany'
  '3000'  'Greece'
  '3440'  'Hong Kong SAR'
  '3480'  'Hungary'
  '3520'  'Iceland'
  '3600'  'Indonesia'
  '3720'  'Ireland'
  '3801'  'Italy: Veneto-Nord Est'
  '3802'  'Italy: Trento-Nord-Est '
  '3803'  'Italy: Toscana-Centro'
  '3804'  'Italy: Piemonte-Nord-Ovest '
  '3805'  'Italy: Lombardia-Nord Ovest '
  '3806'  'Italy: Bolzano'
  '3807'  'Italy: Other regions'
  '3920'  'Japan'
  '4100'  'Korea'
  '4280'  'Latvia'
  '4380'  'Liechtenstein'
  '4420'  'Luxembourg'
  '4460'  'Macao SAR'
  '4840'  'Mexico'
  '5280'  'Netherlands'
  '5540'  'New Zealand'
  '5780'  'Norway'
  '6160'  'Poland'
  '6200'  'Portugal'
  '6430'  'Russian Federation'
  '7030'  'Slovak Republic'
  '7241'  'Spain: Other regions'
  '7242'  'Spain: Castilia y Leon'
  '7243'  'Spain: Catalonia'
  '7244'  'Spain: Basque Country'
  '7520'  'Sweden'
  '7560'  'Switzerland'
  '7640'  'Thailand'
  '7880'  'Tunisia'
  '7920'  'Turkey'
  '8261'  'United Kingdom: England, Wales & NI'
  '8262'  'United Kingdom: Scotland'
  '8400'  'United States'
  '8580'  'Uruguay'
  '8910'  'Yugoslavia'.

value labels country
 '008' 'Albania'
 '032' 'Argentina'
 '036' 'Australia '
 '040' 'Austria '
 '056' 'Belgium '
 '076' 'Brazil '
 '100' 'Bulgaria'
 '124' 'Canada '
 '152' 'Chile'
 '203' 'Czech Republic '
 '208' 'Denmark '
 '246' 'Finland '
 '250' 'France '
 '276' 'Germany '
 '300' 'Greece '
 '344' 'Hong Kong (China)'
 '348' 'Hungary '
 '352' 'Iceland '
 '360' 'Indonesia '
 '372' 'Ireland '
 '376' 'Israel'
 '380' 'Italy '
 '392' 'Japan '
 '410' 'Korea '
 '428' 'Latvia '
 '438' 'Liechtenstein '
 '442' 'Luxembourg '
 '446' 'Macao (China)'
 '484' 'Mexico '
 '528' 'Netherlands '
 '554' 'New Zealand '
 '578' 'Norway '
 '604' 'Peru '
 '616' 'Poland '
 '620' 'Portugal '
 '643' 'Russian Federation '
 '703' 'Slovakia '
 '724' 'Spain '
 '752' 'Sweden '
 '756' 'Switzerland '
 '764' 'Thailand '
 '788' 'Tunisia '
 '792' 'Turkey '
 '807' 'Macedonia'
 '826' 'United Kingdom'
 '840' 'United States '
 '858' 'Uruguay '
 '891' 'Yugoslavia '.       

value labels STRATUM
  "03601" "Australia: ACT"
  "03602" "Australia: NSW"
  "03603" "Australia: VIC"
  "03604" "Australia: QLD"
  "03605" "Australia: SA"
  "03606" "Australia: WA"
  "03607" "Australia: TAS"
  "03608" "Australia: NT"
  "04002" "Austria: Hauptschule"
  "04003" "Austria: Polytechn. Schule"
  "04005" "Austria: Gymnasium"
  "04006" "Austria: Realgymnasium"
  "04007" "Austria: Oberstufenrealgymnasium"
  "04009" "Austria: Berufsschule (techn.-gewerbl.)"
  "04010" "Austria: Berufsschule (kaufm�nn./Handel/Verkehr)"
  "04012" "Austria: BMS (gewerblich-technisch-kunstgewerbl.)"
  "04013" "Austria: BMS (kaufm�nnisch/Handelschulen)"
  "04014" "Austria: BMS (wirtschafts-/sozialberufl.)"
  "04015" "Austria: BMS (land-/forstwirtschaftl.)"
  "04016" "Austria: BHS (techn.-gewerblich)"
  "04017" "Austria: BHS (kaufm�nnisch)"
  "04018" "Austria: BHS (wirtschafts-/sozialberufl)"
  "04019" "Austria: BHS (land-/forstwirtschaftl.)"
  "04020" "Austria: Anstalt der Kindergarten-/Sozialp�dagogik"
  "04021" "Austria: Moderately small schools"
  "04022" "Austria: Very small schools"
  "05601" "Belgium (Flemish): Only general education, private"
  "05602" "Belgium (Flemish): Only general education, public"
  "05603" "Belgium (Flemish): Gen.-techn.-vocat.-arts, private"
  "05604" "Belgium (Flemish): Gen.-techn.-vocat.-arts, public"
  "05605" "Belgium (Flemish): Techn.,arts, not general, private"
  "05606" "Belgium (Flemish): Techn.-vocat.-arts, not gen., public"
  "05607" "Belgium (Flemish): Special education - private"
  "05608" "Belgium (Flemish): Special education - public"
  "05609" "Belgium (Flemish): Part time vocational"
  "05610" "Belgium (Flemish): Moderately small schools"
  "05611" "Belgium (Flemish): Very small schools"
  "05612" "Belgium (French): Organised by community"
  "05613" "Belgium (French): Organised by community, spec. ed."
  "05614" "Belgium (French): Official schools subsidised by comm."
  "05615" "Belgium (French): Subsidised special education"
  "05616" "Belgium (French): Subsidised confessional"
  "05617" "Belgium (French): Subsidised confessional - spec. ed."
  "05618" "Belgium (French): Subsidised non-confessional"
  "05619" "Belgium (French): Subsidised non-confessional - spec. ed."
  "05620" "Belgium (German)"
  "07601" "Brazil: Central (private)"
  "07602" "Brazil: Central (public)"
  "07603" "Brazil: North (private)"
  "07604" "Brazil: North (public)"
  "07605" "Brazil: Northeast (private)"
  "07606" "Brazil: Northeast (public)"
  "07607" "Brazil: South (private)"
  "07608" "Brazil: South (public)"
  "07609" "Brazil: Southeast (private)"
  "07610" "Brazil: Southeast (public)"
  "07611" "Brazil: Small schools"
  "07612" "Brazil: Very small schools"
  "12400" "Canada"
  "20301" "Czech Republic: Stratum 1"
  "20302" "Czech Republic: Stratum 2"
  "20303" "Czech Republic: Stratum 3"
  "20304" "Czech Republic: Stratum 4"
  "20305" "Czech Republic: Stratum 5"
  "20306" "Czech Republic: Stratum 6"
  "20307" "Czech Republic: Stratum 7"
  "20308" "Czech Republic: Stratum 8"
  "20309" "Czech Republic: Stratum 9"
  "20310" "Czech Republic: Stratum 10"
  "20311" "Czech Republic: Stratum 11"
  "20312" "Czech Republic: Stratum 12"
  "20313" "Czech Republic: Stratum 13"
  "20314" "Czech Republic: Stratum 14"
  "20315" "Czech Republic: Stratum 15"
  "20316" "Czech Republic: Stratum 16"
  "20317" "Czech Republic: Stratum 17"
  "20318" "Czech Republic: Stratum 18"
  "20319" "Czech Republic: Stratum 19"
  "20320" "Czech Republic: Stratum 20"
  "20321" "Czech Republic: Stratum 21"
  "20322" "Czech Republic: Stratum 22"
  "20323" "Czech Republic: Stratum 23"
  "20324" "Czech Republic: Stratum 24"
  "20325" "Czech Republic: Stratum 25"
  "20326" "Czech Republic: Stratum 26"
  "20327" "Czech Republic: Stratum 27"
  "20328" "Czech Republic: Stratum 28"
  "20329" "Czech Republic: Stratum 29"
  "20330" "Czech Republic: Stratum 30"
  "20331" "Czech Republic: Stratum 31"
  "20332" "Czech Republic: Stratum 32"
  "20333" "Czech Republic: Stratum 33"
  "20334" "Czech Republic: Stratum 34"
  "20801" "Denmark: Large schools"
  "20802" "Denmark: Moderately small schools"
  "20803" "Denmark: Very Small schools"
  "24601" "Finland: Stratum 1"
  "24602" "Finland: Stratum 2"
  "24603" "Finland: Stratum 3"
  "24604" "Finland: Stratum 4"
  "24605" "Finland: Stratum 5"
  "24606" "Finland: Stratum 6"
  "24607" "Finland: Stratum 7"
  "24608" "Finland: Stratum 8"
  "24609" "Finland: Stratum 9"
  "24610" "Finland: Stratum 10"
  "24611" "Finland: Stratum 11"
  "24612" "Finland: Stratum 12"
  "25001" "France: Lyc�es g�n�raux et technologiques"
  "25002" "France: Coll�ges"
  "25003" "France: Lyc�es professionnels"
  "25004" "France: Lyc�es agricoles"
  "25005" "France: Moderately small  schools"
  "25006" "France: Very small schools"
  "27601" "Germany: Stratum 1"
  "27602" "Germany: Stratum 2"
  "27603" "Germany: Stratum 3"
  "27604" "Germany: Stratum 4"
  "27605" "Germany: Stratum 5"
  "27606" "Germany: Stratum 6"
  "27607" "Germany: Stratum 7"
  "27608" "Germany: Stratum 8"
  "27609" "Germany: Stratum 9"
  "27610" "Germany: Stratum 10"
  "27611" "Germany: Stratum 11"
  "27612" "Germany: Stratum 12"
  "27613" "Germany: Stratum 13"
  "27614" "Germany: Stratum 14"
  "27615" "Germany: Stratum 15"
  "27616" "Germany: Stratum 16"
  "27617" "Germany: Stratum 17"
  "27618" "Germany: Stratum 18"
  "30001" "Greece: Stratum 1"
  "30002" "Greece: Stratum 2"
  "30003" "Greece: Stratum 3"
  "30004" "Greece: Stratum 4"
  "30005" "Greece: Stratum 5"
  "30006" "Greece: Stratum 6"
  "30007" "Greece: Stratum 7"
  "30008" "Greece: Stratum 8"
  "30009" "Greece: Stratum 9"
  "30010" "Greece: Stratum 10"
  "30011" "Greece: Stratum 11"
  "30012" "Greece: Stratum 12"
  "34401" "Hong Kong SAR: Stratum 1"
  "34402" "Hong Kong SAR: Stratum 2"
  "34403" "Hong Kong SAR: Stratum 3"
  "34801" "Hungary: Stratum 1"
  "34802" "Hungary: Stratum 2"
  "34803" "Hungary: Stratum 3"
  "34804" "Hungary: Stratum 4"
  "34805" "Hungary: Stratum 5"
  "35201" "Iceland: Stratum 1"
  "35202" "Iceland: Stratum 2"
  "35203" "Iceland: Stratum 3"
  "35204" "Iceland: Stratum 4"
  "35205" "Iceland: Stratum 5"
  "35206" "Iceland: Stratum 6"
  "35207" "Iceland: Stratum 7"
  "35208" "Iceland: Stratum 8"
  "35209" "Iceland: Stratum 9"
  "36001" "Indonesia: Stratum 1"
  "36002" "Indonesia: Stratum 2"
  "36003" "Indonesia: Stratum 3"
  "36004" "Indonesia: Stratum 4"
  "36005" "Indonesia: Stratum 5"
  "36006" "Indonesia: Stratum 6"
  "36007" "Indonesia: Stratum 7"
  "36008" "Indonesia: Stratum 8"
  "36009" "Indonesia: Stratum 9"
  "36010" "Indonesia: Stratum 10"
  "36011" "Indonesia: Stratum 11"
  "36012" "Indonesia: Stratum 12"
  "36013" "Indonesia: Stratum 13"
  "36014" "Indonesia: Stratum 14"
  "36015" "Indonesia: Stratum 15"
  "36016" "Indonesia: Stratum 16"
  "36017" "Indonesia: Stratum 17"
  "36018" "Indonesia: Stratum 18"
  "36019" "Indonesia: Stratum 19"
  "36020" "Indonesia: Stratum 20"
  "36021" "Indonesia: Stratum 21"
  "36022" "Indonesia: Stratum 22"
  "36023" "Indonesia: Stratum 23"
  "36024" "Indonesia: Stratum 24"
  "36025" "Indonesia: Stratum 25"
  "36026" "Indonesia: Stratum 26"
  "36027" "Indonesia: Stratum 27"
  "36028" "Indonesia: Stratum 28"
  "37201" "Ireland: Stratum 1"
  "37202" "Ireland: Stratum 2"
  "37203" "Ireland: Stratum 3"
  "38014" "Italy, Veneto-Nord Est: Stratum 14"
  "38015" "Italy, Veneto-Nord Est: Stratum 15"
  "38016" "Italy, Veneto-Nord Est: Stratum 16"
  "38017" "Italy, Veneto-Nord Est: Stratum 17"
  "38018" "Italy, Veneto-Nord Est: Stratum 18"
  "38019" "Italy, Trento-Nord-Est: Stratum 19"
  "38020" "Italy, Trento-Nord-Est: Stratum 20"
  "38028" "Italy, Toscana-Centro: Stratum 28"
  "38029" "Italy, Toscana-Centro: Stratum 29"
  "38030" "Italy, Toscana-Centro: Stratum 30"
  "38031" "Italy, Toscana-Centro: Stratum 31"
  "38001" "Italy, Piemonte-Nord-Ovest: Stratum 1"
  "38002" "Italy, Piemonte-Nord-Ovest: Stratum 2"
  "38003" "Italy, Piemonte-Nord-Ovest: Stratum 3"
  "38004" "Italy, Piemonte-Nord-Ovest: Stratum 4"
  "38005" "Italy, Lombardia-Nord Ovest: Stratum 5"
  "38006" "Italy, Lombardia-Nord Ovest: Stratum 6"
  "38007" "Italy, Lombardia-Nord Ovest: Stratum 7"
  "38008" "Italy, Lombardia-Nord Ovest: Stratum 8"
  "38021" "Italy, Bolzano: Stratum 21"
  "38022" "Italy, Bolzano: Stratum 22"
  "38009" "Italy, Other regions: Stratum 9"
  "38010" "Italy, Other regions: Stratum 10"
  "38011" "Italy, Other regions: Stratum 11"
  "38012" "Italy, Other regions: Stratum 12"
  "38013" "Italy, Other regions: Stratum 13"
  "38023" "Italy, Other regions: Stratum 23"
  "38024" "Italy, Other regions: Stratum 24"
  "38025" "Italy, Other regions: Stratum 25"
  "38026" "Italy, Other regions: Stratum 26"
  "38032" "Italy, Other regions: Stratum 32"
  "38033" "Italy, Other regions: Stratum 33"
  "38034" "Italy, Other regions: Stratum 34"
  "38035" "Italy, Other regions: Stratum 35"
  "38036" "Italy, Other regions: Stratum 36"
  "38037" "Italy, Other regions: Stratum 37"
  "38038" "Italy, Other regions: Stratum 38"
  "38039" "Italy, Other regions: Stratum 39"
  "38040" "Italy, Other regions: Stratum 40"
  "38041" "Italy, Other regions: Stratum 41"
  "38042" "Italy, Other regions: Stratum 42"
  "38043" "Italy, Other regions: Stratum 43"
  "38044" "Italy, Other regions: Stratum 44"
  "39201" "Japan: Public & Academic Course"
  "39202" "Japan: Public & Practical Course"
  "39203" "Japan: Private & Academic Course"
  "39204" "Japan: Private & Practical Course"
  "41001" "Korea: Metropolitan General"
  "41002" "Korea: Metropolitan Vocational "
  "41003" "Korea: Urban General"
  "41004" "Korea: Urban Vocational"
  "41005" "Korea: Urban General & Vocational"
  "41006" "Korea: Rural General"
  "41007" "Korea: Rural Vocational"
  "41008" "Korea: Rural General & Vocational"
  "41009" "Korea: Moderately small schools"
  "42801" "Latvia: Large schools"
  "42802" "Latvia: Moderately small schools"
  "42803" "Latvia: Very small schools"
  "43840" "Liechtenstein"
  "44201" "Luxembourg: Stratum 1"
  "44202" "Luxembourg: Stratum 2"
  "44203" "Luxembourg: Stratum 3"
  "44601" "Macao SAR: Stratum 1"
  "44602" "Macao SAR: Stratum 2"
  "44603" "Macao SAR: Stratum 3"
  "48401" "Mexico: Aguascalientes"
  "48402" "Mexico: Baja California"
  "48403" "Mexico: Baja California Sur"
  "48404" "Mexico: Campeche Coahuila"
  "48405" "Mexico: Coahuila"
  "48406" "Mexico: Colima"
  "48407" "Mexico: Chiapas"
  "48408" "Mexico: Chihuahua"
  "48409" "Mexico: Distrito Federal"
  "48410" "Mexico: Durango"
  "48411" "Mexico: Guanajuato"
  "48412" "Mexico: Guerrero"
  "48413" "Mexico: Hidalgo"
  "48414" "Mexico: Jalisco"
  "48415" "Mexico: Mexico"
  "48417" "Mexico: Morelos"
  "48418" "Mexico: Nayarit"
  "48419" "Mexico: Nuevo Leon"
  "48420" "Mexico: Oaxaca"
  "48421" "Mexico: Puebla"
  "48422" "Mexico: Queretaro"
  "48423" "Mexico: Quintana Roo"
  "48424" "Mexico: San Luis Potosi"
  "48425" "Mexico: Sinaloa"
  "48426" "Mexico: Sonora"
  "48427" "Mexico: Tabasco"
  "48428" "Mexico: Tamaulipas"
  "48429" "Mexico: Tlaxcala"
  "48430" "Mexico: Veracruz"
  "48431" "Mexico: Yucatan"
  "48432" "Mexico: Zacatecas"
  "48433" "Mexico: Small schools"
  "48434" "Mexico: Very small schools"
  "52801" "Netherlands: Lower secondary schools"
  "52802" "Netherlands: Upper secondary schools"
  "55401" "New Zealand"
  "57801" "Norway: Stratum 1"
  "57802" "Norway: Stratum 2"
  "57803" "Norway: Stratum 3"
  "57804" "Norway: Stratum 4"
  "61601" "Poland: Gimnazja"
  "61602" "Poland: Licea (vss)"
  "62001" "Portugal: A�ores"
  "62002" "Portugal: DREA"
  "62003" "Portugal: DREALG"
  "62004" "Portugal: DREC"
  "62005" "Portugal: DREL"
  "62006" "Portugal: DREN"
  "62007" "Portugal: Madeira"
  "62008" "Portugal: Small schools"
  "62009" "Portugal: Very small schools"
  "64303" "Russian Federation: Stratum 3"
  "64304" "Russian Federation: Stratum 4"
  "64307" "Russian Federation: Stratum 7"
  "64308" "Russian Federation: Stratum 8"
  "64314" "Russian Federation: Stratum 14"
  "64316" "Russian Federation: Stratum 16"
  "64318" "Russian Federation: Stratum 18"
  "64321" "Russian Federation: Stratum 21"
  "64322" "Russian Federation: Stratum 22"
  "64323" "Russian Federation: Stratum 23"
  "64324" "Russian Federation: Stratum 24"
  "64325" "Russian Federation: Stratum 25"
  "64326" "Russian Federation: Stratum 26"
  "64327" "Russian Federation: Stratum 27"
  "64331" "Russian Federation: Stratum 31"
  "64332" "Russian Federation: Stratum 32"
  "64334" "Russian Federation: Stratum 34"
  "64335" "Russian Federation: Stratum 35"
  "64336" "Russian Federation: Stratum 36"
  "64337" "Russian Federation: Stratum 37"
  "64338" "Russian Federation: Stratum 38"
  "64342" "Russian Federation: Stratum 42"
  "64343" "Russian Federation: Stratum 43"
  "64347" "Russian Federation: Stratum 47"
  "64348" "Russian Federation: Stratum 48"
  "64350" "Russian Federation: Stratum 50"
  "64351" "Russian Federation: Stratum 51"
  "64352" "Russian Federation: Stratum 52"
  "64353" "Russian Federation: Stratum 53"
  "64354" "Russian Federation: Stratum 54"
  "64355" "Russian Federation: Stratum 55"
  "64356" "Russian Federation: Stratum 56"
  "64358" "Russian Federation: Stratum 58"
  "64359" "Russian Federation: Stratum 59"
  "64361" "Russian Federation: Stratum 61"
  "64363" "Russian Federation: Stratum 63"
  "64364" "Russian Federation: Stratum 64"
  "64366" "Russian Federation: Stratum 66"
  "64370" "Russian Federation: Stratum 70"
  "64371" "Russian Federation: Stratum 71"
  "64374" "Russian Federation: Stratum 74"
  "64376" "Russian Federation: Stratum 76"
  "64377" "Russian Federation: Stratum 77"
  "64378" "Russian Federation: Stratum 78"
  "64386" "Russian Federation: Stratum 86"
  "70301" "Slovak Republic: Stratum 1"
  "70302" "Slovak Republic: Stratum 2"
  "70303" "Slovak Republic: Stratum 3"
  "70304" "Slovak Republic: Stratum 4"
  "70305" "Slovak Republic: Stratum 5"
  "70306" "Slovak Republic: Stratum 6"
  "70307" "Slovak Republic: Stratum 7"
  "70308" "Slovak Republic: Stratum 8"
  "70309" "Slovak Republic: Stratum 9"
  "70310" "Slovak Republic: Stratum 10"
  "70311" "Slovak Republic: Stratum 11"
  "70312" "Slovak Republic: Stratum 12"
  "70313" "Slovak Republic: Stratum 13"
  "70314" "Slovak Republic: Stratum 14"
  "70315" "Slovak Republic: Stratum 15"
  "70316" "Slovak Republic: Stratum 16"
  "70317" "Slovak Republic: Stratum 17"
  "70318" "Slovak Republic: Stratum 18"
  "70319" "Slovak Republic: Stratum 19"
  "70320" "Slovak Republic: Stratum 20"
  "72401" "Spain: Stratum 1"
  "72402" "Spain: Stratum 2"
  "72403" "Spain: Stratum 3"
  "72419" "Spain: Stratum 19"
  "72420" "Spain: Stratum 20"
  "72421" "Spain: Stratum 21"
  "72422" "Spain: Stratum 22"
  "72423" "Spain: Stratum 23"
  "72424" "Spain: Stratum 24"
  "72425" "Spain: Stratum 25"
  "72426" "Spain: Stratum 26"
  "72427" "Spain: Stratum 27"
  "72428" "Spain: Stratum 28"
  "72429" "Spain: Stratum 29"
  "72430" "Spain: Stratum 30"
  "72431" "Spain: Stratum 31"
  "72432" "Spain: Stratum 32"
  "72433" "Spain: Stratum 33"
  "72434" "Spain: Stratum 34"
  "72435" "Spain: Stratum 35"
  "72436" "Spain: Stratum 36"
  "72437" "Spain: Stratum 37"
  "72438" "Spain: Stratum 38"
  "72439" "Spain: Stratum 39"
  "72440" "Spain: Stratum 40"
  "72441" "Spain: Stratum 41"
  "72442" "Spain: Stratum 42"
  "72443" "Spain: Stratum 43"
  "72444" "Spain: Stratum 44"
  "72445" "Spain: Stratum 45"
  "72404" "Spain, Castilia y Leon: Stratum 4"
  "72405" "Spain, Castilia y Leon: Stratum 5"
  "72406" "Spain, Castilia y Leon: Stratum 6"
  "72407" "Spain, Castilia y Leon: Stratum 7"
  "72408" "Spain, Catalonia: Stratum 8"
  "72409" "Spain, Catalonia: Stratum 9"
  "72410" "Spain, Catalonia: Stratum 10"
  "72411" "Spain, Basque Country: Stratum 11"
  "72412" "Spain, Basque Country: Stratum 12"
  "72413" "Spain, Basque Country: Stratum 13"
  "72414" "Spain, Basque Country: Stratum 14"
  "72415" "Spain, Basque Country: Stratum 15"
  "72416" "Spain, Basque Country: Stratum 16"
  "72417" "Spain, Basque Country: Stratum 17"
  "72418" "Spain, Basque Country: Stratum 18"
  "75201" "Sweden: Stratum 1"
  "75202" "Sweden: Stratum 2"
  "75203" "Sweden: Stratum 3"
  "75204" "Sweden: Stratum 4"
  "75205" "Sweden: Stratum 5"
  "75206" "Sweden: Stratum 6"
  "75207" "Sweden: Stratum 7"
  "75208" "Sweden: Stratum 8"
  "75209" "Sweden: Stratum 9"
  "75601" "Switzerland (German): Stratum 1"
  "75602" "Switzerland (German): Stratum 2"
  "75603" "Switzerland (German): Stratum 3"
  "75604" "Switzerland (German): Stratum 4"
  "75605" "Switzerland (German): Stratum 5"
  "75606" "Switzerland (German): Stratum 6"
  "75607" "Switzerland (German): Stratum 7"
  "75608" "Switzerland (German): Stratum 8"
  "75609" "Switzerland (German): Stratum 9"
  "75610" "Switzerland (German): Stratum 10"
  "75611" "Switzerland (German): Stratum 11"
  "75612" "Switzerland (German): Stratum 12"
  "75613" "Switzerland (German): Stratum 13"
  "75614" "Switzerland (German): Stratum 14"
  "75615" "Switzerland (French): Stratum 15"
  "75616" "Switzerland (French): Stratum 16"
  "75617" "Switzerland (French): Stratum 17"
  "75618" "Switzerland (French): Stratum 18"
  "75619" "Switzerland (French): Stratum 19"
  "75620" "Switzerland (French): Stratum 20"
  "75621" "Switzerland (French): Stratum 21"
  "75623" "Switzerland (French): Stratum 23"
  "75624" "Switzerland (French): Stratum 24"
  "75625" "Switzerland (French): Stratum 25"
  "75626" "Switzerland (French): Stratum 26"
  "75628" "Switzerland (French): Stratum 28"
  "75629" "Switzerland (Italian): Stratum 29"
  "75631" "Switzerland (Italian): Stratum 31"
  "75632" "Switzerland (Italian): Stratum 32"
  "75634" "Switzerland (Italian): Stratum 34"
  "76401" "Thailand: Stratum 1"
  "76402" "Thailand: Stratum 2"
  "76403" "Thailand: Stratum 3"
  "76404" "Thailand: Stratum 4"
  "76405" "Thailand: Stratum 5"
  "76406" "Thailand: Stratum 6"
  "76407" "Thailand: Stratum 7"
  "76408" "Thailand: Stratum 8"
  "76409" "Thailand: Stratum 9"
  "76410" "Thailand: Stratum 10"
  "76411" "Thailand: Stratum 11"
  "76412" "Thailand: Stratum 12"
  "76413" "Thailand: Stratum 13"
  "76414" "Thailand: Stratum 14"
  "76415" "Thailand: Stratum 15"
  "78801" "Tunisia: East"
  "78802" "Tunisia: West"
  "79201" "Turkey: Stratum 1"
  "79202" "Turkey: Stratum 2"
  "79203" "Turkey: Stratum 3"
  "79204" "Turkey: Stratum 4"
  "79205" "Turkey: Stratum 5"
  "79206" "Turkey: Stratum 6"
  "79207" "Turkey: Stratum 7"
  "79208" "Turkey: Stratum 8"
  "79209" "Turkey: Stratum 9"
  "79210" "Turkey: Stratum 10"
  "79211" "Turkey: Stratum 11"
  "79212" "Turkey: Stratum 12"
  "79213" "Turkey: Stratum 13"
  "79214" "Turkey: Stratum 14"
  "79215" "Turkey: Stratum 15"
  "79216" "Turkey: Stratum 16"
  "79217" "Turkey: Stratum 17"
  "79218" "Turkey: Stratum 18"
  "79219" "Turkey: Stratum 19"
  "79220" "Turkey: Stratum 20"
  "79221" "Turkey: Stratum 21"
  "79222" "Turkey: Stratum 22"
  "79223" "Turkey: Stratum 23"
  "79224" "Turkey: Stratum 24"
  "79225" "Turkey: Stratum 25"
  "79226" "Turkey: Stratum 26"
  "79227" "Turkey: Stratum 27"
  "79228" "Turkey: Stratum 28"
  "79229" "Turkey: Stratum 29"
  "79230" "Turkey: Stratum 30"
  "79231" "Turkey: Stratum 31"
  "79232" "Turkey: Stratum 32"
  "79233" "Turkey: Stratum 33"
  "79234" "Turkey: Stratum 34"
  "79235" "Turkey: Stratum 35"
  "79236" "Turkey: Stratum 36"
  "79237" "Turkey: Stratum 37"
  "79238" "Turkey: Stratum 38"
  "79239" "Turkey: Stratum 39"
  "79240" "Turkey: Stratum 40"
  "79241" "Turkey: Stratum 41"
  "79242" "Turkey: Stratum 42"
  "79243" "Turkey: Stratum 43"
  "82611" "England"
  "82613" "N.Ireland"
  "82614" "N.Ireland: Very large schools"
  "82615" "Wales"
  "82601" "Scotland: Stratum 1"
  "82602" "Scotland: Stratum 2"
  "82603" "Scotland: Stratum 3"
  "82604" "Scotland: Stratum 4"
  "82605" "Scotland: Stratum 5"
  "84000" "United States"
  "85801" "Uruguay: Liceos Publicos (Mdeo/AM)"
  "85802" "Uruguay: Liceos Publicos (cap. dptos interior)"
  "85803" "Uruguay: Liceos Publicos (rural)"
  "85804" "Uruguay: Escuelas tecnicas (Mdeo/AM)"
  "85805" "Uruguay: Escuelas tecnicas (interior)"
  "85806" "Uruguay: Colegios privados"
  "85808" "Uruguay: Small schools"
  "85809" "Uruguay: Very small schools"
  "89101" "Yugoslavia: Stratum 1"
  "89102" "Yugoslavia: Stratum 2"
  "89103" "Yugoslavia: Stratum 3"
  "89104" "Yugoslavia: Stratum 4"
  "89105" "Yugoslavia: Stratum 5"
  "89106" "Yugoslavia: Stratum 6"
  "89107" "Yugoslavia: Stratum 7"
  "89108" "Yugoslavia: Stratum 8".
  exe.

    SAVE TRANSLATE OUTFILE= "E:\works\pisa\stata\p03_school.dta"
          /TYPE=STATA
          /VERSION=13
          /EDITION=SE
          /MAP
          /REPLACE.

