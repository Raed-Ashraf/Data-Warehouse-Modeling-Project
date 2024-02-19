import pandas as pd
import psycopg2


# Read the CSV file into a pandas DataFrame
df = pd.read_csv(r'C:\Users\sesa696805\Desktop\Raed\ME\Data Warwhouse Course\Data Warehouse modelling project\Data\FactTrips.csv')

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

# query string
query_string = "INSERT INTO fact_trip (tripid, dateid, stationid, truckid, wastecollected) VALUES"

# create one query with all rows
for index, row in df.iterrows():

    query_string = query_string + "(" + str(int(row['Tripid'])) + "," + str(int(row['Dateid'])) + "," + str(int(row['Stationid'])) + "," + str(int(row['Truckid'])) + "," + str(row['Wastecollected']) + ")" + "," + '\n'

    # to see progress
    print(index)

# add ';' to the end of the query
query_string = query_string[:-2] + ';'

# execute the query 
cursor.execute(query_string)

# See the result of last query
result = cursor.statusmessage
print(result)

conn.commit()
cursor.close()
conn.close()
