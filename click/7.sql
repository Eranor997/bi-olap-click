insert into direct_log.ShkOnPlace_buf (shk_id, dt, place_id) VALUES 
(3213123, '2024-06-28 12:05:12', 5352),
(23141, '2024-06-28 12:09:12', 2342),
(534252, '2024-06-28 12:10:12', 3242),
(523532, '2024-06-28 12:11:12', 324),
(64564, '2024-06-28 12:34:12', 12312),
(7457457, '2024-06-28 12:43:12', 3121);

select * 
from stg.ShkOnPlace 
where shk_id = 3213123;

select * 
from current.ShkOnPlace  
where shk_id = 3213123;
