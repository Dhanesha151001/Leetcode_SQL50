# Write your MySQL query statement below
select stud.student_id, stud.student_name, sub.subject_name, count(e.subject_name) as attended_exams from students stud
cross join subjects sub
left join Examinations e
on stud.student_id = e.student_id
and e.subject_name = sub.subject_name
group by stud.student_id, stud.student_name, sub.subject_name
order by stud.student_id, stud.student_name