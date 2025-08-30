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


### Business Question
Corporación Favorita’s operations and merchandising teams noticed spikes around Ecuadorian paydays (15th and end-of-month), when most workers get paid. 
Understanding whether these spikes are real and quantifiable is key for planning and resource allocation.  

Key questions are:
- **Do sales actually increase during these periods, and by how much? ?**  
- **Which categories and stores experience the largest lift?**  
- **How can these insights guide inventory planning, promotion timing, and staffing decisions?**


  
### Project Overview

This project analyzes transactional data from Corporación Favorita, one of Ecuador’s largest grocery retailers, to measure the impact of payday on consumer demand.  
Using time-series modeling and causal inference (CausalImpact), the analysis tests whether sales significantly increase around the 15th and end of each month, and quantifies the magnitude of the lift across product categories and store clusters.  

The results provide operators with evidence-based guidance on when to increase inventory, adjust promotion schedules, and optimize staffing, turning anecdotal observations into actionable business strategy.  


### Data Sources
### Tools & Stack
### Data Preparation
### Exploratory Data Analysis (EDA)
### Key Findings
### Recommendations
### Limitations
### References & Repo Map



---

<details>
<summary><h2> Project Setup (click to expand)</h2></summary>

- [Installation](#installation)
- [Usage](#usage)
- [Contributing](#contributing)
- [License](#license)

</details>


---

 ### Installation
Clone the repository and install dependencies:

```bash
git clone https://github.com/Datayx/Payday-surge-favorita.git
cd payday-surge-favorita
python -m venv .venv
source .venv/bin/activate      
pip install -r requirements.txt

```


 ### Usage
Run the full pipeline:

```bash
python scripts/run_pipeline.py
```

 ### Contributing
This is a **portfolio project** created to showcase data engineering and data science workflows.  
Issues and pull requests are not actively monitored.  
You are welcome to fork the repository for your own learning or adaptation.


 ### License
This project is licensed under the [MIT License](./LICENSE).

