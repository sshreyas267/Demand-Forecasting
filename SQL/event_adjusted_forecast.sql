CREATE OR REPLACE VIEW staffing.vw_event_adjusted_forecast AS
SELECT
    b.business_date,
    b.hour_of_day,
    b.dining_unit_id,
    b.actual_demand,
    b.actual_staff_count,
    b.day_of_week,
    b.is_weekend,
    b.term_name,
    b.is_semester_start,
    b.is_move_in_week,
    b.is_finals_week,
    b.is_holiday_break,
    b.is_exam_period,
    b.is_game_day,
    b.is_pre_game_window,
    b.is_post_game_window,
    f.baseline_demand_forecast,
    ROUND(
        CASE
            WHEN b.is_game_day = 1 THEN f.baseline_demand_forecast * 1.25
            WHEN b.is_pre_game_window = 1 THEN f.baseline_demand_forecast * 1.15
            WHEN b.is_post_game_window = 1 THEN f.baseline_demand_forecast * 1.10
            WHEN b.is_move_in_week = 1 THEN f.baseline_demand_forecast * 1.20
            WHEN b.is_finals_week = 1 THEN f.baseline_demand_forecast * 0.92
            WHEN b.is_holiday_break = 1 THEN f.baseline_demand_forecast * 0.70
            ELSE f.baseline_demand_forecast
        END,
        2
    ) AS event_adjusted_forecast
FROM staffing.vw_hourly_demand_base b
JOIN staffing.vw_baseline_forecast f
    ON b.dining_unit_id = f.dining_unit_id
   AND b.day_of_week = f.day_of_week
   AND b.hour_of_day = f.hour_of_day;