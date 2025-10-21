select distinct user_id as id  , username from users join likes on users.id = likes.user_id
where monthname(created_at) = 'October' and year(created_at) = 2021