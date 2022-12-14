-- Databricks notebook source
SELECT * 

FROM silver_olist.pedido

WHERE descSituacao ='delivered'

-- LIMIT 100

-- leia-se: selecione todas as colunas da tabela silver_olist.pedido onde a situação do pedido seja entregue

-- COMMAND ----------

SELECT * 

FROM silver_olist.pedido

WHERE descSituacao ='delivered'
AND year(dtPedido) = '2018'

-- LIMIT 100

-- leia-se: selecione todas as colunas da tabela silver_olist.pedido filtrando pedidos enviado de 2018

-- COMMAND ----------

SELECT * 

FROM silver_olist.pedido

WHERE (descSituacao ='delivered' OR descSituacao = 'canceled')
AND year(dtPedido) = '2018'

-- parenteses para ler corretamente a requisição

-- LIMIT 100

-- leia-se: selecione todas as colunas da tabela silver_olist.pedido filtrando pedidos enviado de 2018

-- COMMAND ----------

SELECT * 

FROM silver_olist.pedido

WHERE descSituacao IN ('shipped', 'canceled')
AND year(dtPedido) = '2018'

-- IN faz o mesmo papel que o OR na consulta passada, mas é uma maneira mais elegante

-- COMMAND ----------

SELECT * 

FROM silver_olist.pedido

WHERE descSituacao IN ('shipped', 'canceled')
AND year(dtPedido) = '2018'
AND datediff(dtEstimativaEntrega, dtAprovado) > 30
