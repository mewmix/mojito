from python import Python

fn main() raises:
    Python.add_to_path(".")  # Assuming the Python file is in the current directory
    let mypython = Python.import_module("mypython")
    let time = Python.import_module("time")  # Import Python's time module for timing

    let start_time = time.time()  # Use Python's time() function for current time

    let file_path = "large-file.json"
    let sort_key = "type"
    let sorted_data = mypython.read_and_sort_json(file_path, sort_key)

    let end_time = time.time()  # Again, use Python's time() function

    # Assuming Mojo does not support f-string, use Python's format method or similar
    let duration = end_time - start_time
    print("Mojo-Python interop: Reading and sorting took " + str(duration) + " seconds")

