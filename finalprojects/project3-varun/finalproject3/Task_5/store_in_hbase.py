filtered_df_window = filtered_df.withWatermark("timestamp", "1 minutes").groupBy(window("timestamp", "1 minute", "1 second"),"customer_id").agg(collect_list(struct("*")).alias("transactions"),count("*").alias("transaction_count"))

suspicious_transactions = filtered_df_window.filter(col("transaction_count") > 2).select(explode("transactions").alias("txn"),"transaction_count").select("txn.*","transaction_count")


def write_to_hbase(rows, batch):
    data = rows.collect()
    connection = happybase.Connection('master')  
    table = connection.table('ayushjee_tcs.suspicious_customer')

    for row in data:
        row_key = f"{row['customer_id']}_{row['transaction_id']}"
        data = {
            b'info:transaction_id': str(row['transaction_id']).encode(),
            b'info:customer_id': str(row['customer_id']).encode(),
            b'info:timestamp': str(row['timestamp']).encode(),
            b'info:amount': str(row['amount']).encode(),
            b'info:channel': str(row['channel']).encode(),
            b'info:reason': str('Alert: Suspicious Customers').encode(),
        }
        table.put(row_key, data)

    connection.close()


flat_suspicious_transactions = suspicious_transactions.select(['transaction_id', 'customer_id', 'timestamp', 'amount', 'channel', 'transaction_count'])

flat_suspicious_transactions.writeStream.foreachBatch(write_to_hbase).outputMode("append").start().awaitTermination()
