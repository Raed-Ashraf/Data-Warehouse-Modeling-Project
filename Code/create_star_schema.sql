-- Create dim_date dimension table
CREATE TABLE dim_date (
    dateid INT PRIMARY KEY,
    date DATE,
    year INT,
    quarter INT,
    quartername VARCHAR(20),
    month INT,
    monthname VARCHAR(20),
    day INT,
    weekday INT,
    weekdayname VARCHAR(20)
);

-- Create dim_station dimension table
CREATE TABLE dim_station (
    stationid INT PRIMARY KEY,
    city VARCHAR(255)
);

-- Create dim_truck dimension table
CREATE TABLE dim_truck (
    truckid INT PRIMARY KEY,
    trucktype VARCHAR(255)
);

-- Create fact_trip Fact table
CREATE TABLE fact_trip (
    tripid INT PRIMARY KEY,
    dateid INT,
    stationid INT,
    truckid INT,
    wastecollected DECIMAL(10, 2)
);

-- Create refernce for the foreign key (dateid) of the fact_trip table
-- to the primary key column (dateid) of the dim_date table
ALTER TABLE fact_trip
ADD CONSTRAINT fk_dateid
FOREIGN KEY (dateid)
REFERENCES dim_date(dateid);

-- Create refernce for the foreign key (stationid) of the fact_trip table
-- to the primary key column (stationid) of the dim_station table
ALTER TABLE fact_trip
ADD CONSTRAINT fk_stationid
FOREIGN KEY (stationid)
REFERENCES dim_station(stationid);

-- Create refernce for the foreign key (truckid) of the fact_trip table
-- to the primary key column (truckid) of the dim_truck table
ALTER TABLE fact_trip
ADD CONSTRAINT fk_truckid
FOREIGN KEY (truckid)
REFERENCES dim_truck(truckid);