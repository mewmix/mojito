use serde_json::Value;
use std::{fs::File, io::Read, time::Instant};

fn benchmark_rust(file_path: &str) {
    let start_time = Instant::now();
    
    // Reading the JSON file
    let mut file = File::open(file_path).expect("File not found");
    let mut contents = String::new();
    file.read_to_string(&mut contents).expect("Failed to read file");
    
    // Parse the JSON
    let mut data: Vec<Value> = serde_json::from_str(&contents).expect("Error parsing JSON");
    
    // Assuming the JSON is an array of objects and you're sorting by a key
    data.sort_by(|a, b| a["type"].as_str().cmp(&b["type"].as_str()));
    
    let end_time = start_time.elapsed();
    println!("Rust: Reading and sorting took {:?} seconds", end_time.as_secs_f32());
}

fn main() {
    benchmark_rust("large-file.json");
}

