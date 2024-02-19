# Data Warehouse Modeling Project
## Overview
This repository contains a data warehouse modeling project focused on the waste collection and recycling data from a company operating across major cities in Brazil. The project involves creating a data warehouse with a suitable star schema, populating the data into it, and creating a materialized view for analysis and reporting purposes. The data warehouse is implemented on a PostgreSQL database using SQL scripts, and the data population process is facilitated by Python scripts. Furthermore, the analysis and visualization of the data are performed using Jupyter Notebook with the Matplotlib library.

## Project Structure
The repository is organized as follows:  
.  
├── Code  
│ └── Trip_analysis.ipynb  
│ └── creae_materialized_view.sql  
│ └── create_star_schema.sql  
│ └── populate_dim_date_table.py  
│ └── populate_dim_station_table.py  
│ └── populate_dim_truck_table.py  
│ └── populate_fact_trip_table - one_query.py  
│ └── populate_fact_trip_table.py  
├── Data  
│ └── DimDate.csv    
│ └── DimStation.csv    
│ └── DimTruck.csv   
│ └── FactTrips.csv     
└── README.md  
