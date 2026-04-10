

with raw_games as (
    select * from `steam-data-pipeline-492517`.`steam_raw_zone`.`popular_games`
)

select
    cast(appid as string) as game_id,
    name as game_name,
    developer,
    publisher,
    -- تحويل السعر من سنت إلى دولار ومعالجة القيم الصفرية
    cast(price as float64) / 100 as price_usd,
    -- حساب نسبة التقييم الإيجابي بدقة
    round(
        cast(positive as float64) / 
        nullif((cast(positive as int64) + cast(negative as int64)), 0) * 100, 
        2
    ) as rating_score,
    owners as estimated_owners_range
from raw_games
where name is not null