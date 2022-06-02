


select avg(nav_history.nav)as nn, MONTH(nav_history.nav_date)as nnn,
nav_history.repurchase_price, nav_history.sale_price,fund.category
as schemes from "M_ASS"."DBT_M_ASS"."NAV_HISTORY" nav_history
join "M_ASS"."DBT_M_ASS"."MUTUAL" mutual on
nav_history.code=mutual.code join
"M_ASS"."DBT_M_ASS"."FUND" fund on mutual.category_id=fund.id
group by MONTH(nav_history.nav_date),nav_history.repurchase_price,
nav_history.sale_price, schemes