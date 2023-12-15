# GCP Data Engineering Project ☁️

Visualization of a data pipeline implementation.

## Introduction

This project focuses on establishing a data pipeline on Google Cloud Platform (GCP) for effective data visualization. The pipeline involves selecting a dataset, adding it to Google Storage, creating a GCP instance, installing and setting up necessary components, performing ETL (Extract, Transform, Load), modeling data in BigQuery, and finally visualizing the data using Google Looker.

## ⚡️ Requirements

Ensure you have the following prerequisites before proceeding:

- GCP account
- Access to Google Storage
- Python installed on your local machine

## 🔥 Stack

- Google Cloud Platform (GCP)
- Compute Engine (VM instance)
- Google Storage
- BigQuery
- Mage (ETL tool)
- Looker (Data visualization tool)

## 💻 How to Use

### Step 1: Select the Dataset

We've chosen Uber data, including departure and arrival times, locations, and passenger count.

### Step 2: Add Data to Google Storage

Upload the dataset to Google Storage for further processing.

### Step 3: Create GCP VM Instance

Create a GCP Compute Engine instance (e2-medium, Ubuntu OS) using the provided script (change args values) :

```sh
$ ./create-gcp-server.sh
```

### Step 4: Installation and Setup

Install required dependencies on the VM using the instructions in [`requirements.txt`](./requirements.txt). Note that reinstalling is only necessary if creating a new instance.

### Step 5: ETL and Data Modeling

Launch the ETL process using Mage. Access the ETL in the browser by entering the external IP address and the allocated port. Data modeling involves using Mage templates for extract, transform, and load operations.

- Launch ETL : 

```
$ mage start uber-mage
```

- Access ETL: `http://localhost:port`

Review the Python code for data transformation in [`uber_pgm.ipynb`](./lib/uber_pgm.ipynb), and check the data model diagram in [`data-models.pdf`](./data-models.pdf).

### Step 6: Data in Data Warehouse

Access data in BigQuery after completing Step 5. Seven dimension tables (`datetime_dim`, `passenger_count_dim`, etc.) and one fact table (`fact_table`) should be available.

### Step 7: Data Visualization

Use Google Looker to create dashboards for effective data visualization by joining tables in BigQuery. You can check lastest results at our [`analytics dashboard`](./analytics-dashboard.pdf) file.

## 🐋 Docker (Planned)

We are planning to Dockerize the application for better portability and ease of deployment. Details will be added in this section once implemented.

## 🕺 Contribute

**Want to hack on `GCP-data-engineering`? Follow the next instructions: :rocket:**

1. Fork this repository to your own GitHub account and then clone it to your local device
2. Install dependencies using [`requirements.txt`](./requirements.txt)
4. Send a pull request 🙌

Remember to test before your commit.

