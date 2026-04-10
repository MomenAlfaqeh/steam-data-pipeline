import dlt
import requests
import os

@data_loader
def load_data_from_api(*args, **kwargs):

    pipeline = dlt.pipeline(
        pipeline_name='steam_analytics_pipeline',
        destination='bigquery',
        dataset_name='steam_raw_zone',
    )
    
    url = "https://steamspy.com/api.php?request=top100in2weeks"
    response = requests.get(url)
    
    if response.status_code != 200:
        raise Exception(f"Failed to fetch data: {response.status_code}")
        
    raw_data = response.json()
    data = list(raw_data.values())
    
    load_info = pipeline.run(
        data, 
        table_name="popular_games",
        credentials={
            "project_id": "steam-data-pipeline-492517",
            "location": "US"
        }
    )
    
    print(load_info)
    
    return "Extraction and Loading to BigQuery Successful!"