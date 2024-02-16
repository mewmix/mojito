from python import Python
from time import time

fn main() raises:
    Python.add_to_path(".")  # Assuming the Python file is in the current directory
    let mypython = Python.import_module("mypython")

    let start_time = Time.now()

    let file_path = "large-file.json"
    let sort_key = "type"
    let sorted_data = mypython.read_and_sort_json(file_path, sort_key)
    
    let end_time = Time.now()
    print(f"Mojo-Python interop: Reading and sorting took {end_time - start_time} seconds")

