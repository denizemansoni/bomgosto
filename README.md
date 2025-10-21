# ☕ Bom Gosto — Sistema de Comandas de Café

Este projeto é um banco de dados relacional desenvolvido em SQLite para gerenciar comandas de um café. Ele permite registrar os cafés disponíveis no cardápio, os pedidos feitos pelos clientes e calcular valores totais por comanda e por data.

## 📦 Estrutura do Banco

O banco é composto por três tabelas principais:

- `cardapio`: contém os cafés disponíveis, com nome, descrição e preço unitário.
- `comanda`: registra as comandas feitas pelos clientes, com data, mesa e nome do cliente.
- `item_comanda`: relaciona os cafés vendidos em cada comanda, com quantidade e código do cardápio.

## 📄 Arquivos

- `tarefa8.sql`: contém os scripts SQL para consultas como:
  - Listagem do cardápio
  - Detalhamento de comandas com itens
  - Total por comanda
  - Comandas com mais de um tipo de café
  - Faturamento por data

- `bomgosto.sqlite`: arquivo do banco de dados com estrutura e dados fictícios para testes.

## 🧪 Como testar

1. Abra o banco `bomgosto.sqlite` em um cliente SQLite (como Azure Data Studio ou DB Browser for SQLite).
2. Execute os comandos do arquivo `tarefa8.sql`.
3. Verifique os resultados das consultas diretamente no editor.

## 🧁 Dados de exemplo

O banco inclui cafés como:
- Café Expresso
- Café com Leite
- Cappuccino
- Mocha

E comandas feitas por clientes como João, Maria, Carlos e Ana.

## 🚀 Objetivo

Este projeto foi desenvolvido como parte da disciplina de Banco de Dados I, com foco em modelagem relacional, consultas SQL e organização de dados para sistemas de atendimento em estabelecimentos comerciais.

---

