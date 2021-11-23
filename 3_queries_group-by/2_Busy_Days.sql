SELECT day, count(*) as total_assignmets 
  FROM assignments
  GROUP BY day
  HAVING count(*) >= 10
  ORDER BY day;
  
