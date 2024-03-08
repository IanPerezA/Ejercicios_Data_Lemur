With cuentas as (
  Select app_id,COUNT(CASE WHEN event_type='click' and EXTRACT(year from events.timestamp)=2022 then 1 end) as n_clk,
  COUNT (CASE WHEN event_type='impression' and EXTRACT(year from events.timestamp)=2022 then 1 end ) as n_imp 
  from events
  group by app_id
) select app_id,round((100.0* n_clk)/n_imp,2) as CTR from cuentas;
