

      create or replace transient table m_ass.dbt_m_ass.my_second_dbt_model  as
      (-- Use the `ref` function to select from other models

select *
from m_ass.dbt_m_ass.my_first_dbt_model
where id = 1
      );
    