import json
from time import time

def benchmark_python(file_path):
    start_time = time()
    
    # Reading the JSON file
    with open(file_path, 'r') as file:
        data = json.load(file)
    
    # Assuming the JSON is a list of objects and you're sorting by a key
    sorted_data = sorted(data, key=lambda x: x['type'])
    
    end_time = time()
    print(f"Python: Reading and sorting took {end_time - start_time} seconds")

benchmark_python('large-file.json')

