-- Databricks notebook source
SELECT * FROM silver_olist.pagamento_pedido

-- leia-se selecione TUDO  da tabela silver_olist.pedido


-- COMMAND ----------

SELECT idPedido,
       descSituacao
from silver_olist.pedido

-- leia-se: selecione as colunas idPedido e descSituacao da tabela silver_olist.pedidos

-- COMMAND ----------

SELECT idPedido,
       descSituacao
from silver_olist.pedido

LIMIT 5

-- leia-se: selecione as colunas idPedido e descSituacao da tabela silver_olist.pedidos

-- COMMAND ----------

SELECT *,
      DATEDIFF(dtEstimativaEntrega, dtEnvio) AS qtDiasPromessaEntrega

FROM silver_olist.pedido

LIMIT 5
