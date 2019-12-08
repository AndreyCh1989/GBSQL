use vk;

-- 1
-- Вроде все круто

-- 2
select f.user_id, f.friend_id, count(m.id) as messages 
from friendship f, messages m
where (m.from_user_id=f.user_id and m.to_user_id=f.friend_id) or (m.from_user_id=f.friend_id and m.to_user_id=f.user_id)
group by f.user_id, f.friend_id
having f.user_id = 2
order by messages desc
limit 1;

-- 3
select 
	like_owners.owner_id, 
	(select p.birthday from profiles p where p.user_id = like_owners.owner_id) as birthday,
	count(like_owners.id) as likes_count
from (
	select l.id,
		case 
			when l.entity_type = 1 then (select mes.from_user_id from messages mes where mes.id = l.entity_id)
			when l.entity_type = 2 then (select med.user_id from media med where med.id = l.entity_id)
			else null
		END as owner_id
	from likes l
) like_owners
group by like_owners.owner_id
order by birthday desc
limit 10;

-- 4
select 
	count(l.id) as likes,
    (select p.sex from profiles p where p.user_id = l.user) as sex
from likes l
group by sex
order by likes desc
limit 1;

-- 5
select 
	u.id,
    (select count(l.id) from likes l where l.user = u.id group by l.user) +
    (select count(m.id) from messages m where m.from_user_id = u.id group by m.from_user_id) +
    (select count(m.id) from media m where m.user_id = u.id group by m.user_id) as activity
from users u
order by activity
limit 10;