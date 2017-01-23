-- queries for data set creation in QuickSight

select stname, county, ctyname, '2010' as year, 
         census2010pop as populationcount
from polutionanalysisdb.population_raw
where county != '0'
union
select stname, county, ctyname, '2011' as year, 
         popestimate2011 as populationcount
from polutionanalysisdb.population_raw
where county != '0'
union
select stname, county, ctyname, '2012' as year, 
         popestimate2012 as populationcount
from polutionanalysisdb.population_raw
where county != '0'
union
select stname, county, ctyname, '2013' as year, 
         popestimate2013 as populationcount
from polutionanalysisdb.population_raw
where county != '0'
union
select stname, county, ctyname, '2014' as year, 
         popestimate2014 as populationcount
from polutionanalysisdb.population_raw
where county != '0'
union
select stname, county, ctyname, '2015' as year, 
         popestimate2015 as populationcount
from polutionanalysisdb.population_raw
where county != '0';



select polr.year, popr.ctyname, popr.census2010pop as PopulationCount , 
       polr.Good_Days, polr.Moderate_Days, polr.Unhealthy_for_Sensitive_Days, polr.Unhealthy_Days,
       polr.Very_Unhealthy_Days
from polutionanalysisdb.population_raw popr, 
     polutionanalysisdb.epaaqi_raw polr
where popr.stname = 'Texas'
and   popr.ctyname like 'Austin%'
and   polr.city_name LIKE 'Austin%'
and   polr.year = '2010'
UNION
select polr.year, popr.ctyname, popr.POPESTIMATE2011 as PopulationCount , 
       polr.Good_Days, polr.Moderate_Days, polr.Unhealthy_for_Sensitive_Days, polr.Unhealthy_Days,
       polr.Very_Unhealthy_Days
from polutionanalysisdb.population_raw popr, 
     polutionanalysisdb.epaaqi_raw polr
where popr.stname = 'Texas'
and   popr.ctyname like 'Austin%'
and   polr.city_name LIKE 'Austin%'
and   polr.year = '2011'
UNION
select polr.year, popr.ctyname, popr.POPESTIMATE2012 as PopulationCount , 
       polr.Good_Days, polr.Moderate_Days, polr.Unhealthy_for_Sensitive_Days, polr.Unhealthy_Days,
       polr.Very_Unhealthy_Days
from polutionanalysisdb.population_raw popr, 
     polutionanalysisdb.epaaqi_raw polr
where popr.stname = 'Texas'
and   popr.ctyname like 'Austin%'
and   polr.city_name LIKE 'Austin%'
and   polr.year = '2012'
UNION
select polr.year, popr.ctyname, popr.POPESTIMATE2013 as PopulationCount , 
       polr.Good_Days, polr.Moderate_Days, polr.Unhealthy_for_Sensitive_Days, polr.Unhealthy_Days,
       polr.Very_Unhealthy_Days
from polutionanalysisdb.population_raw popr, 
     polutionanalysisdb.epaaqi_raw polr
where popr.stname = 'Texas'
and   popr.ctyname like 'Austin%'
and   polr.city_name LIKE 'Austin%'
and   polr.year = '2013'
UNION
select polr.year, popr.ctyname, popr.POPESTIMATE2014 as PopulationCount , 
       polr.Good_Days, polr.Moderate_Days, polr.Unhealthy_for_Sensitive_Days, polr.Unhealthy_Days,
       polr.Very_Unhealthy_Days
from polutionanalysisdb.population_raw popr, 
     polutionanalysisdb.epaaqi_raw polr
where popr.stname = 'Texas'
and   popr.ctyname like 'Austin%'
and   polr.city_name LIKE 'Austin%'
and   polr.year = '2014'
UNION
select polr.year, popr.ctyname, popr.POPESTIMATE2015 as PopulationCount ,
       polr.Good_Days, polr.Moderate_Days, polr.Unhealthy_for_Sensitive_Days, polr.Unhealthy_Days,
       polr.Very_Unhealthy_Days
from polutionanalysisdb.population_raw popr, 
     polutionanalysisdb.epaaqi_raw polr
where popr.stname = 'Texas'
and   popr.ctyname like 'Austin%'
and   polr.city_name LIKE 'Austin%'
and   polr.year = '2015'
order by 1;