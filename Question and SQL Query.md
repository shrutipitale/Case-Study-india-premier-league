### **1.Total Matches Played by Each Team**:

**Question**: Write an SQL query to find the total number of matches played by each team (considering both `Playing_team_1` and `Playing_team_2`). Display the team name and the count of matches played.

```sql
SELECT
team as Team,
COUNT(*) AS MATCHES_PLAYED
FROM
(
SELECT Playing_team_1 AS team
FROM ipl
UNION ALL
SELECT Playing_team_2 AS team
FROM ipl
) AS ALL_Teams
GROUP BY team
ORDER BY MATCHES_PLAYED DESC;
```

![Screenshot 2024-06-17 205936](https://github.com/shrutipitale/india_premier_league/assets/80112581/398ece5f-c9a9-408c-b163-febd200da51f)

### **2.Matches Won by Each Team**:

**Question**: Write an SQL query to find the total number of matches won by each team. Display the team name and the count of matches won.

```sql
SELECT 
	Win_match AS Team,
    COUNT(*) AS Matches_Won
FROM ipl
GROUP BY Win_match
ORDER BY Matches_Won DESC;
```
![Screenshot 2024-06-17 210016](https://github.com/shrutipitale/india_premier_league/assets/80112581/0fa68ea5-35b6-425d-9065-482645e571c6)

### 3.**Venue with Most Matches**:

**Question**: Write an SQL query to find the venue that hosted the most matches. Display the venue name and the count of matches hosted.

```sql
SELECT 
    Name_of_venue AS Venue,
    COUNT(*) AS Matches_Hosted
FROM 
    ipl
GROUP BY 
    Name_of_venue
ORDER BY 
    Matches_Hosted DESC
LIMIT 1;
```

![Screenshot 2024-06-17 215233](https://github.com/shrutipitale/india_premier_league/assets/80112581/821b4e8a-b5bc-4a07-bde2-c4209864b0b4)

### 4.Average Score of First Innings:

**Question**: Write an SQL query to calculate the average score of the first innings across all matches. Display the average score.

```sql
SELECT AVG(First_Innings_Score) AS Average_First_Innings_Score
FROM ipl;
```
![Screenshot 2024-06-17 210046](https://github.com/shrutipitale/india_premier_league/assets/80112581/e78fb1a7-a867-43c1-81be-696e6e807af4)


### 5.Highest Second Innings Score:

**Question**: Write an SQL query to find the match with the highest second innings score. Display the match number and the score.

```sql
SELECT AVG(second_Innings_Score) AS Average_Second_Innings_Score
FROM ipl;
```
![Screenshot 2024-06-17 215617](https://github.com/shrutipitale/india_premier_league/assets/80112581/3d10dd6b-ce78-42aa-9aef-f82bb702cde3)


### 6.Matches Where Toss Winner Lost the Match:

**Question**: Write an SQL query to find the matches where the team that won the toss did not win the match. Display the match number, toss-winning team, and match-winning team.

```sql
SELECT
match_number,Toss_Winning_Team,Win_match
FROM ipl
WHERE Toss_Winning_Team <> Win_match;
```
![Screenshot 2024-06-17 210602](https://github.com/shrutipitale/india_premier_league/assets/80112581/4c2547e4-0bd1-491b-b452-341360f93bbf)

![Screenshot 2024-06-17 210627](https://github.com/shrutipitale/india_premier_league/assets/80112581/d48bc38f-d01f-4686-b46a-71e54f2be84a)


### 7.Total Wickets Taken in a Match:

**Question**: Write an SQL query to find the total number of wickets taken in each match. Display the match number and the total wickets.

```sql
SELECT
match_number,
(First_innings_wickets + Second_innings_wickets) AS Total_Wickets
FROM ipl;
```
![Screenshot 2024-06-17 210711](https://github.com/shrutipitale/india_premier_league/assets/80112581/12ac0bb4-8217-4422-8e6a-ae09387034ed)


### 8.Top Scoring Matches:

**Question**: Write an SQL query to find the top 5 matches with the highest aggregate scores (sum of first and second innings scores). Display the match number and the aggregate score.

```sql
SELECT 
	match_number,
	(First_innings_Score + Second_innings_Score) AS Aggregate_Score
FROM ipl
ORDER BY Aggregate_Score DESC
LIMIT 5;
```

![Screenshot 2024-06-17 210744](https://github.com/shrutipitale/india_premier_league/assets/80112581/bffa598f-9ee8-4e14-b520-884c728ce07f)

### 9.Winning Percentage of Each Team:

**Question**: Write an SQL query to calculate the winning percentage of each team. Display the team name and the winning percentage.

```sql
WITH Total_Matches AS (
SELECT
team as Team,
COUNT(*) AS MATCHES_PLAYED
FROM
(
SELECT Playing_team_1 AS team
FROM IPL
UNION ALL
SELECT Playing_team_2 AS team
FROM IPL
) AS ALL_Teams
GROUP BY team
), Wins AS(
SELECT
Win_match AS Team,
COUNT(*) AS Matches_Won
FROM ipl
GROUP BY Win_match
)
SELECT
Total_Matches.team,
(Matches_Won * 100.0 / Matches_Played) AS Winning_Percentage
FROM
Total_Matches
LEFT JOIN
Wins ON Total_Matches.team = Wins.team
ORDER BY
Winning_Percentage DESC;
```
![Screenshot 2024-06-17 210909](https://github.com/shrutipitale/india_premier_league/assets/80112581/9bc5e2f4-fb57-43b8-a9d7-3957fec0bd23)


### 10.Matches Played on a Specific Date:

**Question**: Write an SQL query to find all matches played on a specific date. Display the match number, venue, playing teams, and the winner.

```sql
SELECT
match_number,
Name_of_venue,
Playing_team_1,
Playing_team_2,
Win_match
FROM ipl
WHERE Date_of_the_match = '2024-05-12';
```
![Screenshot 2024-06-17 211112](https://github.com/shrutipitale/india_premier_league/assets/80112581/e31569c1-76ac-44f5-893d-25ba5733b5bf)

### 11.**Top 5 Venues with Most Matches**:

**Question**: Write an SQL query to find the top 5 venues that hosted the most matches. Display the venue name and the count of matches hosted.

```sql
SELECT
Name_of_venue AS Venue,
COUNT(*) AS Matches_Hosted
FROM
ipl
GROUP BY
Name_of_venue
ORDER BY
Matches_Hosted DESC
LIMIT 5;
```

![image](https://github.com/shrutipitale/india_premier_league/assets/80112581/69854f17-04b3-4700-af22-0312e5e4e3d1)


### **12.Teams with the Most Toss Wins**:

- **Question**: Write an SQL query to find the teams that won the most tosses. Display the team name and the count of tosses won.

```sql
SELECT 
    Toss_Winning_team AS Team,
    COUNT(*) AS Tosses_Won
FROM 
    ipl
GROUP BY 
    Toss_Winning_team
ORDER BY 
    Tosses_Won DESC;
```
![Screenshot 2024-06-17 214805](https://github.com/shrutipitale/india_premier_league/assets/80112581/625449ef-b80d-46e4-b2ac-50e3930b2809)


### **13.Average First Innings Wickets**:

**Question**: Write an SQL query to calculate the average number of wickets taken in the first innings across all matches. Display the average number of wickets.

```sql
SELECT AVG(First_Innings_Wickets) AS Average_First_Innings_Wickets
FROM ipl;
```
![Screenshot 2024-06-17 214709](https://github.com/shrutipitale/india_premier_league/assets/80112581/d98b9758-e705-4d0c-9dee-72a077dabdd0)


### **14.Matches with Exact 10 Wickets in the First Innings**:

- **Question**: Write an SQL query to find all matches where exactly 10 wickets were taken in the first innings. Display the match number and the teams playing.

```sql
SELECT 
	match_number,
    Playing_team_1,
    Playing_team_2
FROM ipl
WHERE First_Innings_Wickets = 10;
```

![Screenshot 2024-06-17 202828](https://github.com/shrutipitale/india_premier_league/assets/80112581/762480c1-869d-44b7-a6b7-c3d92c698c75)


### **15.Teams with the Highest First Innings Score**:

- **Question**: Write an SQL query to find the team with the highest first innings score. Display the match number, team name, and the score.

```sql
SELECT 
     match_number,
     Playing_team_1 AS Team,
     First_Innings_Score AS Score
FROM ipl
WHERE 
	First_Innings_Score = (
    SELECT MAX(First_Innings_Score)
    FROM ipl
    )
UNION
SELECT 
	match_number,
	Playing_team_2 AS Team,
	Second_Innings_Score AS Score 
FROM ipl
WHERE 
	Second_Innings_Score = (
    SELECT MAX(Second_Innings_Score)
    FROM ipl
);
```
![Screenshot 2024-06-17 203626](https://github.com/shrutipitale/india_premier_league/assets/80112581/8bb788ad-02eb-4f75-aedc-6f5913659a89)


### 16.**Lowest Second Innings Score**:

- **Question**: Write an SQL query to find the match with the lowest second innings score. Display the match number and the score.

```sql
SELECT
	match_number,
    Second_Innings_Score
FROM ipl
ORDER BY Second_Innings_Score ASC
LIMIT 1;
```

![Screenshot 2024-06-17 204102](https://github.com/shrutipitale/india_premier_league/assets/80112581/ef8f2af8-b25f-4db7-a5f1-3b2605b0a67e)


### **17.Total Runs Scored by Each Team**:

- **Question**: Write an SQL query to find the total runs scored by each team across all matches. Display the team name and the total runs scored.

```sql
SELECT 
	team AS Team,
    SUM(runs) AS Total_Runs
FROM(
	SELECT playing_team_1 AS team,First_Innings_Score AS runs 
    FROM ipl
    UNION ALL
    SELECT playing_team_2 AS team,Second_Innings_Score AS runs 
    FROM ipl
)AS all_scores
GROUP BY team
ORDER BY Total_Runs DESC;
```
![Screenshot 2024-06-17 204659](https://github.com/shrutipitale/india_premier_league/assets/80112581/0be72477-a376-400b-a379-d72ce854d262)

### **18.Teams with More than 7 Wins**:

- **Question**: Write an SQL query to find the teams that have won more than 7 matches. Display the team name and the number of matches won.

```sql
SELECT 
	Win_match AS Team,
    COUNT(*) AS Matches_Won
FROM ipl
GROUP BY Win_match
HAVING COUNT(*) > 7
ORDER BY Matches_Won DESC;
```
![Screenshot 2024-06-17 214406](https://github.com/shrutipitale/india_premier_league/assets/80112581/4348bf3b-2cbd-4316-a881-d89aef63eabc)


### 19.**Average Second Innings Score by Venue**:

- **Question**: Write an SQL query to calculate the average second innings score at each venue. Display the venue name and the average second innings score.

```sql
SELECT 
    Name_of_venue AS Venue,
    AVG(Second_Innings_Score) AS Average_Second_Innings_Score
FROM 
   ipl
GROUP BY 
    Name_of_venue
ORDER BY 
    Average_Second_Innings_Score DESC;
```

![Screenshot 2024-06-17 205647](https://github.com/shrutipitale/india_premier_league/assets/80112581/a9a74e0e-af04-41ed-84d1-12da730fe5aa)


### 20.**Matches Where Both Teams Scored More Than 200 Runs**:

- **Question**: Write an SQL query to find the matches where both teams scored more than 200 runs. Display the match number, playing teams, and their scores.

```sql
SELECT 
	match_number,
      Playing_team_1,
    First_Innings_Score,
    Playing_team_2,
    Second_Innings_Score
FROM 
    ipl
WHERE 
    First_Innings_Score > 200
    AND Second_Innings_Score > 200;
```
![Screenshot 2024-06-17 205904](https://github.com/shrutipitale/india_premier_league/assets/80112581/98b93660-5b48-4f22-9158-2478b71c5a82)
