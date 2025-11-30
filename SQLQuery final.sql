-- Changes Over Time Analysis
Select 
[Start_Time],
[End_Time],
[Actual_Duration_Min],
[Downtime_Minutes]
from[dbo].[assembly_log_data]
where [Downtime_Minutes] is not null
order by [Start_Time]
---------------------------------------------------------------------
select year([Start_Time]) as [Years],
sum([Downtime_Minutes]) as [Total Dwontime/Day]
from [dbo].[assembly_log_data]
where [Start_Time]is not null
group by year([Start_Time])
order by sum([Downtime_Minutes]) desc
---------------------------------------------------------------------
select Month([Start_Time]) as [Months],
sum([Downtime_Minutes]) as [Total Dwontime/Day]
from [dbo].[assembly_log_data]
where [Start_Time]is not null
group by Month([Start_Time])
order by sum([Downtime_Minutes]) desc
---------------------------------------------------------------------
SELECT 
    DATEPART(HOUR, [Start_Time]) AS [Hour],
    SUM([Downtime_Minutes]) AS [Total Downtime/Day]
FROM [dbo].[assembly_log_data]
WHERE [Start_Time] IS NOT NULL
GROUP BY DATEPART(HOUR, [Start_Time])
ORDER BY SUM([Downtime_Minutes]) DESC
---------------------------------------------------------------------
-- Performence Analysis
