/*Quais são as 10 maiores fontes de recursos?*/
SELECT
  tipo_da_origem,
  SUM(total_da_receita) as total_da_receita,
FROM
  `mystudentproject-292517.ecommerce.visao_final1`
GROUP BY
  1
ORDER BY
  total_da_receita DESC
LIMIT
  10;