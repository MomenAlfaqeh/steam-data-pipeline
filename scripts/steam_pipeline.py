import dlt
import requests

def run_pipeline():
    pipeline = dlt.pipeline(
        pipeline_name='steam_analytics_pipeline',
        destination='bigquery',
        dataset_name='steam_raw_zone',
    )
    
  
    response = requests.get("https://spy.steamstats.cn/api?request=top100in2weeks")
    data = response.json().get('data', [])
    
    info = pipeline.run(data, table_name="popular_games")
    print(info)

if __name__ == "__main__":
    run_pipeline()
    pipeline = dlt.pipeline(
        pipeline_name="steam_analytics_pipeline",
        destination="bigquery",
        dataset_name="steam_raw_zone" 
    )

    load_info = pipeline.run(fetch_steam_games())
    
    print(f"Pipeline Run Successful!\n{load_info}")