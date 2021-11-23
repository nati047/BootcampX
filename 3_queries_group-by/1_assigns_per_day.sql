SELECT day, COUNT(*) as total_assignmets 
  FROM assignments
  GROUP BY day
  ORDER BY day;
