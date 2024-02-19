import pandas as pd
import psycopg2


# Read the CSV file into a pandas DataFrame
df = pd.read_csv(r'C:\Users\sesa696805\Desktop\Raed\ME\Data Warwhouse Course\Data Warehouse modelling project\Data\DimTruck.csv')

# Connect to the PostgreSQL database
conn = psycopg2.connect(
    host='10.218.121.82',
    port='5432',
    database='export_bbbb',
    user='write username here',
    password='write password here'
)
    
# Create a cursor
cursor = conn.cursor()

# populate data
for index, row in df.iterrows():
    # Define the SQL query with placeholders for parameters
    sql_query = "INSERT INTO dim_truck (truckid, trucktype) VALUES (%s, %s)"

    # Define the values to be inserted
    values = (row['Truckid'], row['TruckType'])

    # Execute the SQL query
    cursor.execute(sql_query, values)

# See the result of last query
result = cursor.statusmessage

conn.commit()
cursor.close()
conn.close()
