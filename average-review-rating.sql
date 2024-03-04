SELECT EXTRACT(month from submit_date) as mth,product_id
,ROUND(AVG(stars),2)
FROM reviews
GROUP BY /*aqui*/EXTRACT(month from submit_date),product_id
ORDER BY mth,product_id;
/*Para este problema estaba intentando
pasar directamente en el group by "mth"
por el alias que habia asignado a la extraccion del mes
pero consultando la solucion me di cuenta que habia que
agregar todo el "EXTRACT(month from submit_date)"*/