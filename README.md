# Event-Aware Staffing Demand Forecasting

## Overview

This project builds an hourly demand forecasting system for campus dining operations. The model predicts staffing requirements based on historical dining transactions and event signals such as academic calendar events and football games.

The goal is to improve workforce planning and reduce forecast error during peak demand periods.

---

## Key Features

- Hourly demand modeling from historical dining transactions
- Baseline forecasting using day-of-week and hour-of-day patterns
- Event-aware demand adjustments using campus events
- Staffing recommendation model translating demand into workforce requirements
- Interactive Tableau dashboard for operational decision-making

---

## Tech Stack

- SQL
- PostgreSQL
- Tableau Public

---

## Data Pipeline

Dining Transactions  
↓  
Hourly Demand Aggregation  
↓  
Baseline Forecast Model  
↓  
Event-Aware Forecast Adjustment  
↓  
Staffing Recommendation Model  
↓  
Tableau Operations Dashboard

---

## Dashboard

![Staffing Forecast Dashboard](dashboard/staffing_forecast_dashboard.png)

The dashboard visualizes:

- Hourly demand trends
- Actual vs forecast demand
- Staffing recommendations by hour

---

## Business Impact

Incorporating event signals such as football games and academic calendar events improves demand prediction accuracy during peak periods and enables better staffing decisions.

