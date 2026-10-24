# Dicionário de Dados

## CLIENTE

| Campo | Tipo |
|---------|---------|
| id | BIGINT |
| nome | VARCHAR(100) |
| email | VARCHAR(100) |
| senha | VARCHAR(255) |
| telefone | VARCHAR(20) |
| endereco | VARCHAR(255) |

## CUPCAKE

| Campo | Tipo |
|---------|---------|
| id | BIGINT |
| nome | VARCHAR(100) |
| descricao | VARCHAR(255) |
| preco | DECIMAL(10,2) |

## PEDIDO

| Campo | Tipo |
|---------|---------|
| id | BIGINT |
| cliente_id | BIGINT |
| status | VARCHAR(50) |
| valor_total | DECIMAL(10,2) |