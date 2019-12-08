-- 1
select *
from users u
where (select count(o.id) from orders o where o.user_id = u.id group by o.user_id) > 0;

-- 2
select 
	p.*, c.*
from products p
join catalogs c on p.catalog_id = c.id;

-- 3
use hw7;
DROP TABLE IF EXISTS flights;
CREATE TABLE flights (
  id SERIAL PRIMARY KEY,
  flight_from VARCHAR(255),
  flight_to VARCHAR(255)
) ;

INSERT INTO flights (flight_from, flight_to) VALUES
  ('moscow', 'omsk'),
  ('novgorod', 'kazan');

DROP TABLE IF EXISTS cities;  
CREATE TABLE cities (
  label VARCHAR(255),
  name VARCHAR(255)
);

INSERT INTO cities VALUES
  ('moscow', 'Москва'),
  ('novgorod', 'Нижний Новгород'),
  ('omsk', 'Омск'),
  ('kazan', 'Казань');
  
select
	f.id, c_from.name as 'from', c_to.name as 'to'
from flights f
join cities c_from on c_from.label = f.flight_from
join cities c_to on c_to.label = f.flight_to;

