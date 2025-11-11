# 🏀 NBA Cumulative Player Stats Project

This project demonstrates how to build a **cumulative table** in SQL using **PostgreSQL**, designed to track players’ performance across multiple seasons.

---

## 📘 Overview

Each record in the `players` table represents a **snapshot of a player’s full career up to a specific season**.  
The table is updated annually by merging the latest season data (`player_seasons`) with the previous cumulative snapshot.

---

## 💡 Why a Cumulative Table

A cumulative table pre-aggregates data over time, so each record contains the **entire history up to that point**.  
This design makes **historical queries faster**, **simplifies analytics**, and **avoids repeated JOINs or recalculations**.

---

## 🧱 Database Design

### Custom Types
```sql
CREATE TYPE season_stats AS (
  season INTEGER,
  gp     INTEGER,
  pts    REAL,
  reb    REAL,
  ast    REAL
);

CREATE TYPE scoring_class AS ENUM('star', 'good', 'average', 'bad');
