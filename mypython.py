import json

def read_and_sort_json(file_path, sort_key):
    with open(file_path, 'r') as file:
        data = json.load(file)
    
    sorted_data = sorted(data, key=lambda x: x[sort_key])
    return sorted_data  # For large data, consider returning summary statistics instead

