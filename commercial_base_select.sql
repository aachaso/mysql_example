select t1.contract_num, t1.inn, t1.status,
	t2.city, t2.region_name, 
	t3.`status` as status_inn, date(created_at) as created_at,
    timestampdiff(YEAR, created_at, NOW()) AS age
from contracts t1 
left join region t2 on t1.region_id=t2.id_region
inner join inn t3 on t1.inn=t3.inn
where t1.`status`='open' and created_at > '1996-01-01';

SELECT
	concat (last_name,  ' ', first_name) as fio_manager,
    count(sim_num) as num_sim,
    (select count(contract_num) from contracts where contracts.managers_id=t1.id group by managers_id) as num_con
FROM  managers t1
inner join contracts t2 on t2.managers_id=t1.id
left join sim t3 on t2.id_con=t3.contract_id
group by fio_manager;

select 
monthname(period) as `month`,
sum(num_call) as num_call,
sum(num_sale) as num_sale,
sum(num_meeting) as num_meeting
from crm
group by monthname(period)
having sum(num_sale)> avg(num_sale)
order by month(period);

SELECT concat(first_name, ' ', last_name) as fio,
(sum(num_call)+sum(num_sale)+sum(num_meeting)) as activity
FROM managers
left join crm on crm.managers_id=managers.id
group by fio
order by activity desc
limit 5;
