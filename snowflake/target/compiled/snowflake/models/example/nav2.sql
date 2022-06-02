

select min(nav_history.nav)as minnav,
 max(nav_history.nav)as maxnav,
nav_history.nav_date,
fund.category as schemes
from "M_ASS"."DBT_M_ASS"."NAV_HISTORY"
join "M_ASS"."DBT_M_ASS"."MUTUAL" on nav_history.code=mutual.code
join "M_ASS"."DBT_M_ASS"."FUND" on mutual.category_id=fund.id
group by nav_history.nav_date, schemes