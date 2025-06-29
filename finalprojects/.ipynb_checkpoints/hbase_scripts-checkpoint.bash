#!/bin/bash
echo -e "scan 'varuntcs:ecom_txn'" | hbase shell -n
echo -e "count 'varuntcs:ecom_txn'" | hbase shell -n
exit