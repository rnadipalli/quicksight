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
where county != '0'