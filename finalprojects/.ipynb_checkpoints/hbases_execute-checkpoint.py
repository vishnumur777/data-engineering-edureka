import happybase


def hbase_executor_output(df):
    connection = happybase.Connection('master')
    table = connection.table('varuntcs:ecom_txn')
    
    for row in df.limit(10).collect():
        row_key = f"{row.InvoiceNo}_{row.StockCode}"
        table.put(row_key.encode(), {
            b'info:InvoiceNo': str(row.InvoiceNo).encode(),
            b'info:StockCode': str(row.StockCode).encode(),
            b'info:Quantity': str(row.Quantity).encode(),
            b'info:UnitPrice': str(row.UnitPrice).encode(),
            b'info:CustomerID': str(row.CustomerID).encode(),
            b'info:InvoiceDate': str(row.InvoiceDate).encode(),
            b'info:total_amount': str(row.total_amount).encode(),
            b'info:Country': str(row.Country).encode()
        })

    sample_key = f"{row.InvoiceNo}_{row.StockCode}".encode()
    print(table.row(sample_key))