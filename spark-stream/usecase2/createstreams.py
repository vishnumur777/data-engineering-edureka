import pandas as pd
import random
from datetime import datetime
import subprocess
import time

user_id_list = []

data = {}
i = 1

while True:
    num = 10
    timestamp_list = []
    user_id_list = []
    action_list = []
    status_code_list = []
    
    while num>0:
        timestamps = str(datetime.now().strftime("%Y-%m-%d %H:%M:%S"))
        user_id = random.choice(["user_001","user_002","user_003","user_004","user_005","user_006","user_007","user_008","user_009","user_010","user_011","user_012","user_013","user_014","user_015","user_016","user_017","user_018","user_019","user_020"])
        action = random.choice(["login","register","home","view","logs","robots.txt","checkout","pay"])
        status_code = random.choice([100,200,201,204,301,302,400,401,403,404,429,503,500])
        
        timestamp_list.append(timestamps)
        user_id_list.append(user_id)
        action_list.append("/"+action)
        status_code_list.append(status_code)
        
        num-=1
        
    data["timestamps"] = timestamp_list
    data["user_id"] = user_id_list
    data["action"] = action_list
    data["status_code"] = status_code_list
    num-=1
           
    local_file = f"streaminput/web_logs_{i}.json"
    df = pd.DataFrame(data)
    df.to_json(local_file,orient= "records",lines=True)

    hdfs_path = "sparkstream/streaminputs"

    subprocess.run(["hdfs", "dfs", "-put", local_file, hdfs_path])
    print(f"{local_file} successfully uploaded to hdfs....")
    subprocess.run(["rm","-rf",local_file])

    data = {}
    i+=1
    
    time.sleep(3)

    