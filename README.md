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
