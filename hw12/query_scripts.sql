use gosuslugi;

# находим 10 самых злостных неплательщиков налогов
select 
	u.id as user_id, 
    u.username, 
    sum(t.amount) as unpaid_taxes 
from taxes t
	join users u on t.user_id = u.id
	join tax_categories tc on t.tax_category_id = tc.id
	left join payments p on p.payed_object_type_id = 2 and p.object_id = t.id
where 
	DATE_ADD(t.issued_datetime, INTERVAL tc.expiration_days DAY) < NOW() 
    and p.id is null
group by u.id
order by unpaid_taxes desc
limit 10;


# находим город в котором больше всего выдавалось паспортов пользователей
select
	JSON_EXTRACT(ui.personal_information, '$.issued') as city,
    count(*) as count
from users_information ui
group by city
order by count desc
limit 1;


# определить где больше долгов, в штрафах или налогах
select 
	ot.name,
	case
		when ot.id = 2 then (select sum(amount) from fines f where NOT EXISTS(select id from payments where payed_object_type_id = 3 and object_id = f.id))
        when ot.id = 3 then (select sum(amount) from taxes t where NOT EXISTS(select id from payments where payed_object_type_id = 2 and object_id = t.id))
        else 0
	end as unpaid
from payed_object_types ot
order by unpaid desc
limit 1;