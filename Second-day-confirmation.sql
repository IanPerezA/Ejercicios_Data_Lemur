SELECT e.user_id FROM emails e
inner join texts t
on e.email_id = t.email_id
where t.signup_action ='Confirmed' and 
((EXTRACT(day from t.action_date))-(EXTRACT(day from e.signup_date))) =1;