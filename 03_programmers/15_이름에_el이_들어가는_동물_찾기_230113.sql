-- [15. 이름에 el이 들어가는 동물 찾기]

# submitted code
SELECT ANIMAL_ID
     , NAME
FROM ANIMAL_INS
WHERE NAME LIKE '%el%' 
  AND ANIMAL_TYPE = 'Dog'
ORDER BY 2;