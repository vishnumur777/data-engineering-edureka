import pandas as pd
import time
import os
import subprocess

# Load the full CSV file once
df = pd.read_csv("realdata/rides.csv")

# Temporary local folder to write JSON chunks before uploading to HDFS
local_tmp_dir = "streaminput"
hdfs_target_dir = "sparkstream/streaminputs"  # Change to your HDFS target path

os.makedirs(local_tmp_dir, exist_ok=True)

for i in range(0, len(df), 10):
    local_file = f"{local_tmp_dir}/rides_{i}.json"
    
    # Save a chunk to local JSON
    df.iloc[i:i+10].to_json(local_file, orient="records", lines=True)
    
    # Push to HDFS
    hdfs_path = f"{hdfs_target_dir}/rides_{i}.json"
    subprocess.run(["hdfs", "dfs", "-put", "-f", local_file, hdfs_path], check=True)
    subprocess.run(["rm","-rf",local_file])

    print(f"Pushed: {hdfs_path}")
    
    time.sleep(3)  # Wait to simulate streaming
