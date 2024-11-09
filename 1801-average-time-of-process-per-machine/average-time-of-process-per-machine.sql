select a1.machine_id, round(avg(a2.timestamp- a1.timestamp), 3) as processing_time
from activity a1
join activity a2
on a1.machine_id = a2.machine_id
and a2.timestamp>a1.timestamp
and a2.process_id = a1.process_id
group by a1.machine_id