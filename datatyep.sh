# Function to map BigQuery data types to dbt tests
def map_data_type_to_dbt_test(data_type):
    if data_type == 'STRING':
        return "is_string"
    elif data_type == 'BYTES':
        return "is_bytes"
    elif data_type == 'INT64':
        return "is_integer"
    elif data_type == 'FLOAT64':
        return "is_float"
    elif data_type == 'NUMERIC':
        return "is_numeric"
    elif data_type == 'BIGNUMERIC':
        return "is_bignumeric"
    elif data_type == 'BOOL':
        return "is_boolean"
    elif data_type == 'TIMESTAMP':
        return "is_timestamp"
    elif data_type == 'DATE':
        return "is_date"
    elif data_type == 'TIME':
        return "is_time"
    elif data_type == 'DATETIME':
        return "is_datetime"
    elif data_type == 'GEOGRAPHY':
        return "is_geography"
    elif data_type == 'ARRAY':
        return "is_array"
    elif data_type == 'STRUCT':
        return "is_struct"
    else:
        return None
