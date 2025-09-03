# Payday Surge Analysis – Corporación Favorita
*Causal analysis of Ecuadorian grocery demand surges around payday for data-driven inventory, promo, and staffing decisions.*

![Python](https://img.shields.io/badge/Python-3.10-blue) 
![Pandas](https://img.shields.io/badge/Pandas-EDA-lightblue)
![Statsmodels](https://img.shields.io/badge/Statsmodels-CausalImpact-green)
![Apache Airflow](https://img.shields.io/badge/Airflow-Orchestration-orange)
![Snowflake](https://img.shields.io/badge/Snowflake-Data%20Warehouse-lightblue)
![Docker](https://img.shields.io/badge/Docker-Containerization-blue)


## Table of Contents
- [Business Question](#business-question)
- [Project Overview](#project-overview)
- [Data Sources](#data-sources)
- [Tools & Stack](#tools--stack)
- [Data Preparation](#data-preparation)
- [Exploratory Data Analysis (EDA)](#exploratory-data-analysis-eda)
- [Key Findings](#key-findings)
- [Recommendations](#recommendations)
- [Limitations](#limitations)
- [References & Repo Map](#references--repo-map)

---


## Business Question
Corporación Favorita’s operations and merchandising teams noticed spikes around Ecuadorian paydays (15th and end-of-month), when most workers get paid. 
Understanding whether these spikes are real and quantifiable is key for planning and resource allocation.  

Key questions are:
- **Do sales actually increase during these periods, and by how much?**  
- **Which categories and stores experience the largest lift?**  
- **How can these insights guide inventory planning, promotion timing, and staffing decisions?**


  
## Project Overview

This project analyzes **4.6 years of daily sales** across **54 stores** and **4036 product categorie**s to detect **reliable demand patterns.**

The objective is to apply **time-series modeling** and **causal inference** to quantify whether sales **significantly increase around payday periods (15th and end of month)**, and to measure the **magnitude of the lift** across **product categories** and **store clusters.** External factors like **holidays, oil prices,** and **store transactions** are incorporated to **capture demand fluctuations.**

The analysis provides evidence-based guidance on when to **increase inventory, adjust promotion schedules,** and **optimize staffing,** turning raw transaction data into actionable business strategy.


## Data Sources
Dataset used in this project: [Corporación Favorita Grocery Sales Forecasting](https://www.kaggle.com/competitions/favorita-grocery-sales-forecasting/data)

It spans from 2013-01-01 to 2017-08-15. 

External factors:

```train.csv``` : Target variable (unit_sales) at store–item–day level.

```transactions.csv``` : Number of daily transactions per store.

```oil.csv``` :  Daily oil price in Ecuador, capturing macroeconomic effects.

```holidays_events.csv``` :  National and regional holidays/events.

```stores.csv``` : Store metadata (city, state, type, cluster).

```items.csv``` : Item metadata (family/category, class, perishability).

```test.csv and sample_submission.csv``` : Not used in this analysis.


> [!NOTE]
> All files are provided in ``` .7z ``` compressed format on Kaggle. The uncompressed, unzipped ``` .csv ``` files are used throughout this project.


## Tools & Stack
**-Environment:** Python 3.11, Conda.

**-Data Handling:** Pandas, NumPy.

**-Visualization:** Matplotlib, Tableu, seaborn.

**-Forecasting and ML:** Statsmodels, Scikit-learn, pmdarima.

**-Orchestration:** Apache Airflow, SQLAlchemy.

**-Database and Storage:** Snowflake.

**-Containerization and Deployment:** Docker.

**-Dev tools:** VS Code, Jupyter.

## Data Preparation

## Exploratory Data Analysis (EDA)

## Key Findings

## Recommendations

## Limitations

## References & Repo Map
**Repo:**
```markdown
├── configs/                           # Config files YAML 
├── data/                              # Raw and processed datasets
├── notebooks/                         # Jupyter notebooks 
├── results/                           # Outputs
├── src/                               # Source code
├── tests/                             # Unit tests for reproducibility and validation
├── .gitignore                         # Ignore file
├── LICENSE                            # License
├── README.md                          # Documentation
├── environment.yml                    # Conda environment specification
└── requirements.txt                   # Python dependencies
```

**References:**
- [Corporación Favorita Grocery Sales Forecasting Dataset](https://www.kaggle.com/competitions/favorita-grocery-sales-forecasting)  
- [CausalImpact Documentation](https://google.github.io/CausalImpact/)  
- [Apache Airflow Documentation](https://airflow.apache.org/docs/)  
- [Snowflake Documentation](https://docs.snowflake.com/)  

---

<details>
<summary><h2> Project Setup (click to expand)</h2></summary>

- [Installation](#installation)
- [Usage](#usage)
- [Contributing](#contributing)
- [License](#license)

</details>


---

 ## Installation
Clone the repository and install dependencies:

```bash
git clone https://github.com/Datayx/Payday-surge-favorita.git
cd payday-surge-favorita
python -m venv .venv
source .venv/bin/activate      
pip install -r requirements.txt

```


 ## Usage
Run the full pipeline:

```bash
python scripts/run_pipeline.py
```

 ## Contributing
This is a **portfolio project** created to showcase data engineering and data science workflows.  
Issues and pull requests are not actively monitored.  
You are welcome to fork the repository for your own learning or adaptation.


 ## License
This project is licensed under the [MIT License](./LICENSE).

