import os
import time

lsdir = os.listdir("trades/")

for file in lsdir:
    with open("trades/"+file, "r") as f:
        f1 = f.readlines()
        for lines in f1:
            print(lines.replace("\n",""))
            time.sleep(4)