
CREATE OR REPLACE TABLE `uber-data-analytics-for-nyc.nyc_uber_data_analysis_suchi.analysis_table` AS
(
SELECT
    
f.VendorID,
d.tpep_pickup_datetime,
d.tpep_dropoff_datetime,
p.passenger_count,
t.trip_distance,
r.rate_code_name,
pi.pickup_latitude,
pi.pickup_longitude,
drp.dropoff_latitude,
drp.dropoff_longitude,
pay.payment_type_name,
f.fare_amount,
f.improvement_surcharge, 
f.tip_amount,
f.tolls_amount,
f.extra, 
f.total_amount
    
FROM
    
`uber-data-analytics-for-nyc.nyc_uber_data_analysis_suchi.fact_table` f
JOIN `uber-data-analytics-for-nyc.nyc_uber_data_analysis_suchi.datetime_dim` d ON f.datetime_id = d.datetime_id
JOIN `uber-data-analytics-for-nyc.nyc_uber_data_analysis_suchi.drop_location_dim` drp ON f.drop_location_id = drp.drop_location_id
JOIN `uber-data-analytics-for-nyc.nyc_uber_data_analysis_suchi.passenger_count_dim` p ON p.passenger_count_id = f.passenger_count_id
JOIN `uber-data-analytics-for-nyc.nyc_uber_data_analysis_suchi.payment_type_dim` pay ON pay.payment_type_id = f.payment_type_id
JOIN `uber-data-analytics-for-nyc.nyc_uber_data_analysis_suchi.pickup_location_dim` pi ON pi.pickup_location_id = f.pickup_location_id
JOIN `uber-data-analytics-for-nyc.nyc_uber_data_analysis_suchi.rate_code_dim` r ON r.rate_code_id = f.rate_code_id
JOIN `uber-data-analytics-for-nyc.nyc_uber_data_analysis_suchi.trip_distance_dim` t ON t.trip_distance_id = f.trip_distance_id
);
