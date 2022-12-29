-- [15. New Companies]

# submitted code
SELECT c.company_code
     , c.founder 
     , (SELECT COUNT(DISTINCT lead_manager_code) FROM Lead_manager WHERE company_code = c.company_code)
     , (SELECT COUNT(DISTINCT senior_manager_code) FROM Senior_manager WHERE company_code = c.company_code)
     , (SELECT COUNT(DISTINCT manager_code) FROM Manager WHERE company_code = c.company_code)
     , (SELECT COUNT(DISTINCT employee_code) FROM Employee WHERE company_code = c.company_code)
FROM Company c
ORDER BY company_code;