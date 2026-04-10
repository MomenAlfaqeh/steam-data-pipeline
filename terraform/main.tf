terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "6.12.0"
    }
  }
}

provider "google" {
  project = "steam-data-pipeline-492517"
  region  = "us-central1"
}


resource "google_storage_bucket" "data-lake-bucket" {
  name          = "steam_data_lake_steam-data-pipeline-492517"
  location      = "US"
  force_destroy = true

  
  uniform_bucket_level_access = true 

  
  lifecycle_rule {
    condition {
      age = 3
    }
    action {
      type = "Delete"
    }
  }
}


resource "google_bigquery_dataset" "dataset" {
  dataset_id = "steam_games_data"
  project    = "steam-data-pipeline-492517"
  location   = "US"
}