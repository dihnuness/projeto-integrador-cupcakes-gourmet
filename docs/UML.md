# Diagrama de Classes UML

## Cliente

```text
Cliente
---------------------
id : Long
nome : String
email : String
senha : String
telefone : String
endereco : String
```

## Cupcake

```text
Cupcake
---------------------
id : Long
nome : String
descricao : String
preco : Double
imagem : String
```

## Pedido

```text
Pedido
---------------------
id : Long
status : String
valorTotal : Double
dataPedido : Date
```

## Pagamento

```text
Pagamento
---------------------
id : Long
tipo : String
status : String
```

## Entrega

```text
Entrega
---------------------
id : Long
status : String
codigoRastreio : String
```

## Relacionamentos

Cliente 1:N Pedido

Pedido N:N Cupcake

Pedido 1:1 Pagamento

Pedido 1:1 Entrega