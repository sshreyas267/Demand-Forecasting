CREATE OR REPLACE VIEW staffing.vw_staffing_recommendation AS
SELECT
    business_date,
    hour_of_day,
    dining_unit_id,
    actual_demand,
    actual_staff_count,
    baseline_demand_forecast,
    event_adjusted_forecast,
    CEILING(event_adjusted_forecast / 20.0) AS recommended_staff_count
FROM staffing.vw_event_adjusted_forecast;