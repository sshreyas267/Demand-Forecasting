
# Event-Aware Staffing Demand Forecasting

A data analytics project that forecasts hourly staffing demand for
campus dining operations using historical transaction data and campus
event signals.

![SQL](https://img.shields.io/badge/SQL-Data%20Analysis-blue)
![PostgreSQL](https://img.shields.io/badge/PostgreSQL-Database-blue)
![Tableau](https://img.shields.io/badge/Tableau-Visualization-orange)



------------------------------------------------------------------------

## Project Overview

Campus dining operations experience large fluctuations in demand driven
by:

-   Time of day
-   Day of week
-   Academic calendar events
-   Football games and campus activities

Traditional scheduling methods rely heavily on historical averages and
often fail to capture **event-driven demand spikes**.

This project builds a **forecasting pipeline** that integrates dining
transaction data with campus event signals to generate **hourly staffing
recommendations**. The system helps operations teams anticipate peak
demand and allocate staff more efficiently.

------------------------------------------------------------------------

## Key Features

### Demand Modeling

-   Aggregates dining transaction data into hourly demand signals
-   Identifies baseline demand patterns by day-of-week and hour-of-day

### Event-Aware Forecasting

-   Integrates campus events such as football games and academic
    schedule changes
-   Adjusts demand forecasts during high-traffic periods

### Operational Decision Support

-   Converts demand forecasts into staffing recommendations
-   Provides an interactive dashboard for operations teams

------------------------------------------------------------------------

## Tech Stack

| Tool | Purpose |
|-----|------|
| SQL | Data transformation and aggregation |
| PostgreSQL | Database management |
| Tableau Public | Dashboard visualization |

------------------------------------------------------------------------

## Data Pipeline

    Dining Transactions
            │
            ▼
    Hourly Demand Aggregation
            │
            ▼
    Baseline Forecast Model
            │
            ▼
    Event-Aware Forecast Adjustment
            │
            ▼
    Staffing Recommendation Model
            │
            ▼
    Tableau Operations Dashboard

------------------------------------------------------------------------

## Dashboard

![Staffing Forecast
Dashboard](./Dashboard/Campus%20Demand%20Forecasting.png)

The dashboard allows operations teams to analyze:

-   Hourly dining demand trends
-   Actual vs forecast demand
-   Event-driven demand spikes
-   Recommended staffing levels by hour

------------------------------------------------------------------------

## Business Impact

Incorporating event signals improves forecasting accuracy during peak
campus activity periods.

Key benefits include:

-   Better workforce allocation during high demand hours
-   Reduced understaffing during large campus events
-   Data-driven operational decision making

------------------------------------------------------------------------

## Repository Structure

    event-aware-staffing-forecast
    │
    ├── data
    │
    ├── sql
    │
    ├── dashboard
    │   └── Campus Demand Forecasting.png
    │
    └── README.md

------------------------------------------------------------------------

## Skills Demonstrated

-   Data modeling with SQL
-   Event-driven demand forecasting
-   Business analytics for operational planning
-   Dashboard design for decision support

------------------------------------------------------------------------

## Future Improvements

-   Integrate machine learning forecasting models
-   Incorporate weather and seasonal signals
-   Build automated ETL pipelines for automated data refresh
-   Deploy dashboard for operational teams

------------------------------------------------------------------------
