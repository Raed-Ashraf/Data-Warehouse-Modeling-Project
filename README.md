# Data Warehouse Modeling Project
## Overview
This repository contains a data warehouse modeling project focused on the waste collection and recycling data from a company operating across major cities in Brazil. The project involves creating a data warehouse with a suitable star schema, populating the data into it, and creating a materialized view for analysis and reporting purposes. The data warehouse is implemented on a PostgreSQL database using SQL scripts, and the data population process is facilitated by Python scripts. Furthermore, the analysis and visualization of the data are performed using Jupyter Notebook with the Matplotlib library.

## Project Structure
The repository is organized as follows:  
.  
├── Data    
├── SQL Scripts  
├── Python Scripts  
├── Jupyter_Notebooks   
└── README.md  

- **Data**: Contains the dimension and fact tables data of the data warehouse, which has been extracted from the company's data source and is stored in CSV files.
- **SQL Scripts**: Contains SQL scripts for creating the data warehouse, implementing the star schema, and creating the materialized view.
- **Python Scripts**: Includes Python scripts for populating the data into the PostgreSQL database.
- **Jupyter_Notebooks**: Contains Jupyter Notebook files for data analysis and visualization using the Matplotlib library.

## Data Source
The data utilized in this project pertains to waste collection and recycling activities conducted by the company across major cities in Brazil. The dataset includes the following attributes:  
- Trip Number
- Date
- Station
- City
- Truck Number
- Truck Type
- Waste collected in Tons

you can see sample of this data below.

![Alt Text](https://github.com/Raed-Ashraf/Data-Warehouse-Modeling-Project/blob/main/Images/Company_Data.png)  

## Data Warehouse Design
The data warehouse is designed using a star schema to facilitate efficient querying and analysis. The fact table contains key metrics related to waste collection, while the dimension tables provide contextual information such as date, station, and truck type.  
The following tables constitute the star schema used in this project:    

**Fact Table**: fact_trip  
- Measures: waste_collected
- Foreign keys: date_id, station_id, truck_id

**Dimension Tables**:
  - dim_date: Contains attributes related to dates (e.g., day, month, year).
  - dim_station: Contains attributes related to station (e.g., city, station).
  - dim_truck: Contains attributes related to used truck (e.g., truck type, truck ID).

you can see the data warehouse schema below.

![Alt Text](https://github.com/Raed-Ashraf/Data-Warehouse-Modeling-Project/blob/main/Images/DWH_Star_Schema.png)   

## Populating the Data
The data population process involves ETL (extracting, transforming, and loading) data from the company's source into the PostgreSQL database. In this project, the process will only handle loading the prepared data from CSV files into our data warehouse tables using Python scripts.  
You can find the Python scripts used for data population in the folder [Python Scripts](https://github.com/Raed-Ashraf/Data-Warehouse-Modeling-Project/blob/main/Python%20Scripts).  
We have a Python script file for each table, which reads the rows of each CSV file, from the [Data](https://github.com/Raed-Ashraf/Data-Warehouse-Modeling-Project/blob/main/Data) folder, creates a connection to the PostgreSQL database, and then executes insert queries for each row in the previously defined database table.  

While populating the fact table data, consisting of approximately 106,000 rows, the process took an excessive amount of time, potentially exceeding 5 hours. Consequently, I attempted an alternative approach, which involved creating a single query string encompassing all rows and then executing this through our database connection. By employing this method, I executed only one query with a large dataset as opposed to executing 106,000 individual queries, resulting in a significantly reduced processing time of less than 10 minutes. That is why we have 2 python script files for populating the data of Fact table.

## Analysis and Reporting
**Prepare Materialized View**:  
First, we need to create a materialized view that contains all the data required from our schema for analysis and reporting purposes. We can do this by executing a SQL script where we execute the appropriate join statements.  
You can find the SQL script to create the materialized view in the folder [SQL Scripts](https://github.com/Raed-Ashraf/Data-Warehouse-Modeling-Project/blob/main/SQL%20Scripts).  

And below, you can see the final look of the materialized view:

![Alt Text](https://github.com/Raed-Ashraf/Data-Warehouse-Modeling-Project/blob/main/Images/Materialzed%20view.png)  


