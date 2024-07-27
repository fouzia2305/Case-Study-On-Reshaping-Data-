# Tournament Points Calculation

## Overview

This project involves analyzing and summarizing tournament match results to create a points table that reflects each team's performance. The aim is to reshape raw match data into a structured format that provides insights into each team's matches played, wins, losses, draws, and total points.

## Data Description

### Tournament Data

The `Tournament` table contains records of matches played between teams with the following fields:
- **Team1**: Name of the first team.
- **Team2**: Name of the second team.
- **Winner**: The team that won the match. If the match ended in a draw, this field is `NULL`.

### Points Table

The `Points` table summarizes the performance of each team and includes:
- **Team**: Name of the team.
- **Matches**: Total number of matches played by the team.
- **Won**: Number of matches won by the team.
- **Lost**: Number of matches lost by the team.
- **Draw**: Number of matches drawn.
- **Points**: Total points earned by the team (2 points per win, 1 point per draw).

## Process

1. **Data Ingestion**: Import raw match results into the `Tournament` table.
2. **Data Transformation**: Reshape the data to calculate total matches, wins, losses, draws, and points for each team.
3. **Points Calculation**: Populate the `Points` table with the calculated metrics.

## Results

The resulting `Points` table provides a clear summary of each team's performance in the tournament, allowing for easy comparison and analysis of team standings.
