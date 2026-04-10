# Steam Top 100 Games: End-to-End Data Engineering Pipeline

## 🎯 Project Overview
This project is part of the **Data Engineering Zoomcamp**. It builds a fully automated pipeline to ingest, transform, and visualize data from the Steam ecosystem (via SteamSpy API). The goal is to analyze market trends and rating patterns of top-performing games.

## 🏗️ Architecture
The pipeline follows the Modern Data Stack (MDS) principles:
- **Infrastructure as Code (IaC):** Terraform managed Google Cloud Platform (GCP) resources.
- **Orchestration:** Mage.ai handled data ingestion and workflow management.
- **Data Ingestion:** Used `dlt` (Data Load Tool) to pull raw data into BigQuery (Bronze Layer).
- **Transformation:** dbt (Data Build Tool) was used to clean and model data into a Silver Layer.
- **Data Warehouse:** Google BigQuery.
- **Visualization:** Looker Studio for interactive dashboards.

## 📊 Dashboard Insights
Check out the live dashboard here: [INSERT_YOUR_LOOKER_STUDIO_LINK_HERE]

![Dashboard Preview](images/your_screenshot_name.png)

### Key findings:
- **Valve Dominance:** Analysis shows Valve's consistent lead in high-quality ratings.
- **Pricing Strategy:** Correlation between game pricing and user satisfaction scores.

## 🚀 How to Reproduce
1. **Infrastructure:** Navigate to `/terraform` and run `terraform init` & `terraform apply`.
2. **Orchestration:** Launch Mage.ai and run the `steam_data_master_pipeline`.
3. **Transformation:** The dbt blocks within Mage will automatically trigger the Silver Layer models.