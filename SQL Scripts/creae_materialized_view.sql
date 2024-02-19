CREATE MATERIALIZED VIEW trip_details AS
SELECT 
fact_trip.tripid AS trip_id,
dim_date.year AS year,
dim_date.quartername AS quarter,
dim_date.monthname AS month,
dim_station.stationid AS station,
dim_station.city AS city,
dim_truck.trucktype AS truck,
fact_trip.wastecollected AS waste_collected
FROM fact_trip
INNER JOIN dim_date ON fact_trip.dateid = dim_date.dateid
INNER JOIN dim_station ON fact_trip.stationid = dim_station.stationid
INNER JOIN dim_truck ON fact_trip.truckid = dim_truck.truckid