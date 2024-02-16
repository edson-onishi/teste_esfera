CREATE OR REPLACE VIEW ecommerce.visao_final1 AS 

WITH a AS (
  SELECT
    fonte_de_recursos AS fonte_de_recursos,
    tipo_da_receita AS tipo_da_origem,
    SUM(valor_arrecadado) AS total_da_receita,
  FROM `mystudentproject-292517.ecommerce.receita_bronze1`
  WHERE tipo_da_receita != 'TOTAL'
  GROUP BY 1, 2
),
b AS (
  SELECT
    fonte_de_recursos AS fonte_de_recursos,
    tipo_da_despesa AS tipo_da_origem,
    SUM(valor_despesa) AS total_da_despesa,
  FROM `mystudentproject-292517.ecommerce.despesa_bronze1`
  WHERE tipo_da_despesa != 'TOTAL'
  GROUP BY 1, 2
)

SELECT fonte_de_recursos, tipo_da_origem, COALESCE(total_da_receita, 0) AS total_da_receita, COALESCE(total_da_despesa, 0) AS total_da_despesa
FROM (
  SELECT a.fonte_de_recursos, a.tipo_da_origem, total_da_receita, NULL AS total_da_despesa
  FROM a

  UNION ALL

  SELECT b.fonte_de_recursos, b.tipo_da_origem, NULL AS total_da_receita, total_da_despesa
  FROM b
);