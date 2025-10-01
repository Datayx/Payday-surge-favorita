from datetime import datetime
from airflow import DAG
from airflow.operators.bash import BashOperator

DBT_DIR = "/opt/airflow/dags/dbt"

with DAG(
    dag_id="dbt_run_daily",
    start_date=datetime(2025, 1, 1),
    schedule_interval="@daily",
    catchup=False,
    tags=["dbt","duckdb"],
) as dag:
    deps = BashOperator(task_id="dbt_deps", bash_command=f"cd {DBT_DIR} && dbt deps")
    run  = BashOperator(task_id="dbt_run",  bash_command=f"cd {DBT_DIR} && dbt run")
    test = BashOperator(task_id="dbt_test", bash_command=f"cd {DBT_DIR} && dbt test")
    deps >> run >> test
