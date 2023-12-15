SELECT
  f.VendorID,
  dt.tpep_pickup_datetime,
  dt.tpep_dropoff_datetime,
  dt.pick_hour,
  dt.pick_day,
  dt.pick_month,
  dt.pick_year,
  dt.pick_weekday,
  dt.drop_hour,
  dt.drop_day,
  dt.drop_month,
  dt.drop_year,
  dt.drop_weekday,
  pc.passenger_count,
  td.trip_distance,
  rc.rate_code_name,
  f.store_and_fwd_flag,
  pl.pickup_latitude,
  pl.pickup_longitude,
  dl.dropoff_latitude,
  dl.dropoff_longitude,
  pt.payment_type_name,
  f.fare_amount,
  f.extra,
  f.mta_tax,
  f.tip_amount,
  f.tolls_amount,
  f.improvement_surcharge,
  f.total_amount
FROM
  `solid-muse-401208.uber_data_eng_project.fact_table` AS f
INNER JOIN `solid-muse-401208.uber_data_eng_project.datetime_dim` AS dt ON f.datetime_id = dt.datetime_id
INNER JOIN `solid-muse-401208.uber_data_eng_project.passenger_count_dim` AS pc ON f.passenger_count_id = pc.passenger_count_id
INNER JOIN `solid-muse-401208.uber_data_eng_project.trip_distance_dim` AS td ON f.trip_distance_id = td.trip_distance_id
INNER JOIN `solid-muse-401208.uber_data_eng_project.rate_code_dim` AS rc ON f.rate_code_id = rc.rate_code_id
INNER JOIN `solid-muse-401208.uber_data_eng_project.pickup_location_dim` AS pl ON f.pickup_location_id = pl.pickup_location_id
INNER JOIN `solid-muse-401208.uber_data_eng_project.dropoff_location_dim` AS dl ON f.dropoff_location_id = dl.dropoff_location_id
INNER JOIN `solid-muse-401208.uber_data_eng_project.payment_type_dim` AS pt ON f.payment_type_id = pt.payment_type_id