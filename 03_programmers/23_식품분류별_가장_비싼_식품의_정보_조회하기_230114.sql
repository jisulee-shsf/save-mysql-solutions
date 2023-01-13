-- [23. 식품분류별 가장 비싼 식품의 정보 조회하기]

# submitted code
SELECT CATEGORY
     , MAX(PRICE) AS MAX_PRICE	
     , (SELECT PRODUCT_NAME 
        FROM FOOD_PRODUCT 
        WHERE CATEGORY = p.CATEGORY 
          AND PRICE = MAX(p.PRICE)) AS PRODUCT_NAME
FROM FOOD_PRODUCT p
GROUP BY 1
HAVING CATEGORY IN ('과자', '국', '김치', '식용유')
ORDER BY MAX_PRICE DESC;