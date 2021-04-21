WITH final AS (select d.department, max(salary) as max_salary
from db_employee e join db_dept d
on e.department_id = d.id
where d.department in ('marketing', 'engineering')
group by d.department)

select MAX(max_salary) - MIN(max_salary) as salary_diff from final;
