/*Quais são 10 maiores tipos de despesas?*/
SELECT
  tipo_da_origem as despesa, 
  SUM(total_da_despesa) AS total_da_despesa,
FROM
  `mystudentproject-292517.ecommerce.visao_final1`
GROUP BY
  1
ORDER BY
  total_da_despesa DESC
LIMIT
  10;