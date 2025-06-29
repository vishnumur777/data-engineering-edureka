import time


with open("assets/ps1/sensor_data.csv", "r") as file:
    linelist = file.readlines()
    for x in linelist:
        print(x.replace("\n",""), flush=True)
        time.sleep(3)