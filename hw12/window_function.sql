# вычисляем:
#	1. сколько пользователь должен денег по налогам
#	2. сколько всего долгов по налогам
#	3. процент неуплат по налогам к долгу пользователя
#	4. место в списке
#	5. самый большой должник
#	6. самый маленький должник

select
	statistics.*,
	ROW_NUMBER() over (order by inpaid_taxes) as place_in_list,
    FIRST_VALUE(statistics.username) over (order by inpaid_taxes desc) as top_1_defaulter,
    FIRST_VALUE(statistics.username) over (order by inpaid_taxes) as smallest_defaulter
from (
	select distinct
		u.id, u.username,
		sum(t.amount) over w as inpaid_taxes,
		sum(t.amount) over () as total_unpaid,
		sum(t.amount) over w / sum(t.amount) over ()  * 100 as '%'
	from 
		users u
		join taxes t on u.id = t.user_id
		left join payments p on p.payed_object_type_id = 2 and p.object_id = t.id
		where p.id is null
		window w as (PARTITION BY u.id)) statistics
order by statistics.username;