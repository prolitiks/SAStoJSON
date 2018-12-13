
data outm.Cust_sum_lga_xtotal_pxw   (keep =  PCPT TRSM AB   LGA_CODE_2016 LGA_POP  ) ;
set outm.Cust_sum_lga_xtotal_p;
if lga_pop = 0  then pop=2; else pop =lga_pop;
PCPT =     round   ( (   SUM_TRAN / pop)    ,1);
run;
proc json out="C:\DR\Localytics\age_B.json" ;                                                                                                         
   export outm.Cust_sum_lga_xtotal_pxw;                                                           
run;  

**added comment**;
