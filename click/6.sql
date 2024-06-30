create table current.ShkOnPlace
(
    shk_id    UInt64,
    dt        DateTime,
    place_id UInt32,
    dt_load   DateTime
)
engine ReplacingMergeTree(dt)
partition by toYYYYMMDD(dt)
order by shk_id;


create materialized view stg.mv_ShkOnPlace
to current.ShkOnPlace
(
    shk_id    UInt64,
    dt        DateTime,
    place_id UInt32,
    dt_load   DateTime
) as
select 
    shk_id,
    dt,
    place_id,
    dt_load
from stg.ShkOnPlace;