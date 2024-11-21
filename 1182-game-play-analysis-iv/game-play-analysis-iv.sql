select  round(sum(player_login_date)/count(distinct player_id),2) as fraction from
(select player_id, 
datediff(event_Date, min(event_date) over (partition by player_id)) = 1
as player_login_date from Activity) 
as newtable