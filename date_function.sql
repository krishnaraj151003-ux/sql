use joins;

select * from material;

select now() as cureent_time;

select date_format(event_date,'%d-%m-%y') as date from material;

select year(event_date) as year_info,
month(event_date) as month_info
from material;

select concat(event_name,'-',event_date) as info from material;