#!/bin/env python3

import sys

current_count=None
current_word=None
word=None


for line in sys.stdin:
    line=line.strip()
    word,count=line.split('\t',1)
    try:
        count = int(count)
    except ValueError:
        continue

    if current_word==word:
        current_count+=count
    else:
        if current_word:
            print(f"{current_word}\t{current_count}")
        current_word=word
        current_count=count

if current_word==word:
    print(f"{current_word}\t{current_count}")
