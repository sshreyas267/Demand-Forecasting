CREATE SCHEMA IF NOT EXISTS staffing;

DROP TABLE IF EXISTS staffing.dining_units;
CREATE TABLE staffing.dining_units (
    dining_unit_id INT PRIMARY KEY,
    dining_unit_name TEXT,
    location TEXT,
    unit_type TEXT,
    capacity INT
);

DROP TABLE IF EXISTS staffing.academic_calendar;
CREATE TABLE staffing.academic_calendar (
    calendar_date DATE PRIMARY KEY,
    term_name TEXT,
    is_semester_start INT,
    is_move_in_week INT,
    is_finals_week INT,
    is_holiday_break INT,
    is_exam_period INT
);

DROP TABLE IF EXISTS staffing.football_schedule;
CREATE TABLE staffing.football_schedule (
    game_date DATE,
    kickoff_time TIME,
    opponent TEXT,
    home_away TEXT,
    is_game_day INT,
    pre_game_window_start TIMESTAMP,
    pre_game_window_end TIMESTAMP,
    post_game_window_start TIMESTAMP,
    post_game_window_end TIMESTAMP
);

DROP TABLE IF EXISTS staffing.dining_transactions;
CREATE TABLE staffing.dining_transactions (
    transaction_id BIGINT,
    transaction_timestamp TIMESTAMP,
    dining_unit_id INT,
    demand_qty INT,
    revenue NUMERIC(10,2)
);

DROP TABLE IF EXISTS staffing.hourly_demand_history;
CREATE TABLE staffing.hourly_demand_history (
    business_date DATE,
    hour_of_day INT,
    dining_unit_id INT,
    actual_demand INT,
    actual_staff_count INT,
    recommended_staff_count INT,
    forecast_demand_baseline NUMERIC(10,2),
    forecast_demand_event_adjusted NUMERIC(10,2),
    day_of_week INT,
    is_weekend INT,
    term_name TEXT,
    is_semester_start INT,
    is_move_in_week INT,
    is_finals_week INT,
    is_holiday_break INT,
    is_exam_period INT,
    is_game_day INT,
    is_pre_game_window INT,
    is_post_game_window INT
);

DROP TABLE IF EXISTS staffing.forecast_evaluation_summary;
CREATE TABLE staffing.forecast_evaluation_summary (
    metric_scope TEXT,
    baseline_mae NUMERIC(10,4),
    event_adjusted_mae NUMERIC(10,4),
    improvement_pct NUMERIC(10,4)
);