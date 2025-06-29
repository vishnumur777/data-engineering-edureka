import random
from datetime import datetime
import sys
import subprocess
import time

user_id_list = []

def unique_user_id():
    num = random.randrange(1,1000000000000000000)
    if num in user_id_list:
        return unique_user_id()
    else:
        user_id_list.append(num)
    return num

while True:
    
    data = {}
    
    timestamps = str(datetime.now())
    user_id = unique_user_id()
    action = random.choice(["login","register","home","view","logs","robots.txt","checkout","pay"])
    status_code = random.choice([100,200,201,204,301,302,400,401,403,404,429,503,500])
        
    data["timestamps"] = timestamps
    data["user_id"] = user_id
    data["action"] = action
    data["status_code"] = status_code
           
    print(str(data), flush=True)
    time.sleep(5)
    