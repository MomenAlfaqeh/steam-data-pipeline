# Steam Top 100 Games: End-to-End Data Engineering Pipeline

## 🎯 Project Overview
This project is part of the **Data Engineering Zoomcamp 2026**. It builds a fully automated pipeline to ingest, transform, and visualize data from the Steam ecosystem. The project demonstrates a complete engineering cycle from cloud infrastructure setup to interactive data storytelling.

## 🏗️ Architecture
The pipeline follows the Modern Data Stack (MDS) principles:
* **Cloud:** Google Cloud Platform (GCP)
* **IaC:** Terraform
* **Orchestration:** Mage.ai
* **Ingestion:** `dlt` (Data Load Tool)
* **Warehouse:** Google BigQuery
* **Transformation:** `dbt` (Data Build Tool)
* **Visualization:** Looker Studio

## 📊 Dashboard Insights
Check out the interactive dashboard: https://lookerstudio.google.com/reporting/aca2e43d-5e26-4317-a63f-8fd143d35b11

![Dashboard Preview](![alt text](image.png))

### Key findings:
* **Valve Dominance:** Analysis highlights Valve's exceptional quality consistency in the Top 100 list.
* **Market Trends:** Most top-rated games follow a specific pricing sweet spot around $20.

## 🚀 Setup & Reproduction
1.  **GCP Setup:** Create a service account with BigQuery and Storage Admin roles.
2.  **Infrastructure:** Run `terraform init` and `terraform apply` inside the `/terraform` folder.
3.  **Pipeline:** Start Mage.ai, configure your GCP credentials, and trigger the `steam_data_master` pipeline.