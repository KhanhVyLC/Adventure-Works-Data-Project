# Adventure-Works-Data-Project

## Data Project Azure Diagram

<img width="1920" height="1080" alt="Data_Diagram" src="https://github.com/user-attachments/assets/cd82ec0b-df99-4430-b3f8-cffeca9f0fa7" />

## Project Overview

This project demonstrates the end-to-end implementation of a modern **Data Engineering pipeline** on **Microsoft Azure**, using the [Adventure Works dataset](https://www.kaggle.com/datasets/ukveteran/adventure-works). The dataset simulates a retail business environment with data on sales, customers, products, and territories — making it ideal for practicing real-world analytics and reporting scenarios.  

**Data Architecture & Azure Setup:**  
Designed the overall architecture following the **Medallion Architecture** (Bronze – Silver – Gold). Provisioned key Azure services on a Free Account, including **Azure Data Factory (ADF)**, **Azure Data Lake Storage Gen2**, **Azure Databricks**, and **Azure Synapse Analytics**.  

**Data Ingestion (Bronze Layer):**  
Ingested raw data from the Adventure Works dataset into **Azure Data Lake Gen2**. Orchestrated and automated ingestion workflows using **Azure Data Factory pipelines**.  

**Data Transformation (Silver Layer):**  
Processed and standardized the raw data with **Azure Databricks** using **Apache Spark & PySpark**. Applied ETL/ELT pipelines to clean, deduplicate, and integrate data into the Silver Layer for downstream analytics.  

**Data Analytics (Gold Layer):**  
Loaded curated Silver Layer data into **Azure Synapse Analytics**. Leveraged **T-SQL** (`OPENROWSET` and **External Tables**) to directly query data from the Data Lake, making it analytics-ready for BI and reporting.  

**Business Intelligence:**  
Connected **Synapse** to **Power BI** for creating dashboards and visualizations, enabling business insights such as sales trends, customer segmentation, and product performance.  

**Security & Governance:**  
Implemented **Service Principal** for secure authentication and role-based access across Azure services, ensuring data protection and controlled access.  

**Real-time Scenarios:**  
Simulated near real-time data ingestion and transformation using **ADF** and **Databricks**, demonstrating how the architecture can be extended for streaming and low-latency scenarios.  
