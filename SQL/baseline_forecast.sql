CREATE OR REPLACE VIEW staffing.vw_hourly_demand_base AS
SELECT
    business_date,
    hour_of_day,
    dining_unit_id,
    actual_demand,
    actual_staff_count,
    day_of_week,
    is_weekend,
    term_name,
    is_semester_start,
    is_move_in_week,
    is_finals_week,
    is_holiday_break,
    is_exam_period,
    is_game_day,
    is_pre_game_window,
    is_post_game_window
FROM staffing.hourly_demand_history;

CREATE OR REPLACE VIEW staffing.vw_baseline_forecast AS
SELECT
    dining_unit_id,
    day_of_week,
    hour_of_day,
    ROUND(AVG(actual_demand), 2) AS baseline_demand_forecast
FROM staffing.vw_hourly_demand_base
GROUP BY
    dining_unit_id,
    day_of_week,
    hour_of_day;