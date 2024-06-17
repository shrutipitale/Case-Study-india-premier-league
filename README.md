# india_premier_league
This repository contains the SQL database schema and sample data for the Indian Premier League (IPL) 2024 season. It includes detailed information on matches, teams, venues, and statistics, designed for use in data analysis, application development, and educational purposes.


## Database Schema

The database consists of a single table, `india_premier_league`, with the following columns:

- **match_number** (int, PK): Unique identifier for each match.
- **Date_of_the_match** (date): The date on which the match was played.
- **Name_of_venue** (varchar(100)): The name of the venue where the match was played.
- **Playing_team_1** (varchar(4)): The code representing the first playing team.
- **Playing_team_2** (varchar(4)): The code representing the second playing team.
- **Toss_Winning_team** (varchar(4)): The code representing the team that won the toss.
- **First_Innings_Score** (int): The score of the team that batted first.
- **First_Innings_Wickets** (int): The number of wickets lost by the team that batted first.
- **Second_Innings_Score** (int): The score of the team that batted second.
- **Second_Innings_Wickets** (int): The number of wickets lost by the team that batted second.
- **Win_match** (varchar(100)): The name of the team that won the match.

## Sample Data

The repository includes sample data to demonstrate the structure and use of the database. The sample data can be used for running queries and performing data analysis.

## Getting Started

### Prerequisites

- MySQL Server installed on your machine.
- MySQL Workbench or any other SQL client tool.

### Installation

1. Clone the repository:
   ```bash
   gh repo clone shrutipitale/india_premier_league
