import sys
import re

for line in sys.stdin:
    l1 = line.replace('"','')
    print(l1)
    print(len(l1))
