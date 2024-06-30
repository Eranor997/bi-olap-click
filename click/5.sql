create table stg.ShkOnPlace
(
    shk_id    UInt64,
    dt        DateTime,
    place_id UInt32,
    dt_load   DateTime
)
engine = MergeTree
partition by toYYYYMMDD(dt)
order by shk_id


create table direct_log.ShkOnPlace_buf
(
    shk_id    UInt64,
    dt        DateTime,
    place_id UInt32,
    dt_load   DateTime MATERIALIZED now()
)
engine = Buffer(stg, ShkOnPlace,  16, 10, 100, 10000, 1000000, 10000000, 100000000);