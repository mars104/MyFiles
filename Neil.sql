from google.cloud import bigquery
import yaml

# Set your project ID, dataset ID, and table name
project_id = 'your_project_id'
dataset_id = 'your_dataset_id'
table_name = 'your_table_name'

# Initialize the BigQuery client
client = bigquery.Client(project=project_id)

# Define the SQL query to get the table schema
sql = f"""
SELECT
  table_name,
  column_name,
  is_nullable,
  data_type
FROM
  `{project_id}.{dataset_id}.INFORMATION_SCHEMA.COLUMNS`
WHERE
  table_name = '{table_name}';
"""

# Execute the query and get the results
query_job = client.query(sql)
results = query_job.result()

# Initialize a dictionary to store the generated tests
tests = {
    "version": 2,
    "models": [
        {
            "name": table_name,
            "columns": []
        }
    ]
}

# Iterate through the columns and generate appropriate tests
for row in results:
    column_tests = []
    if row.is_nullable == 'NO':
        column_tests.append("not_null")
    # Add more tests based on data_type, max length, and other constraints

    tests["models"][0]["columns"].append({
        "name": row.column_name,
        "tests": column_tests
    })

# Write the tests to a YAML file in your dbt project
with open(f"{table_name}_schema_tests.yml", "w") as outfile:
    yaml.dump(tests, outfile)
