{{ config(materialized='table') }}

with raw_games as (
    select * from {{ source('steam_api', 'popular_games') }}
)

select
    cast(appid as string) as game_id,
    name as game_name,
    developer,
    publisher,
   
    cast(price as float64) / 100 as price_usd,
 
    round(
        cast(positive as float64) / 
        nullif((cast(positive as int64) + cast(negative as int64)), 0) * 100, 
        2
    ) as rating_score,
    owners as estimated_owners_range
from raw_games
where name is not null