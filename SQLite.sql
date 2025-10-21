
insert into 
  cardapio (
    codigo, 
    nome, 
    descricao, 
    preco_unitario
  )
values
  (
    $codigo, 
    $nome, 
    $descricao, 
    $preco_unitario
  );INSERT INTO cardapio (nome, descricao, preco_unitario)
VALUES 
  ('Café Expresso', 'Café forte e curto', 5.00),
  ('Café com Leite', 'Café misturado com leite', 6.50),
  ('Cappuccino', 'Café com leite vaporizado e espuma', 7.00),
  ('Mocha', 'Café com chocolate e leite vaporizado', 7.50);
  INSERT INTO comanda (data, mesa, nome_cliente)
VALUES 
  ('2025-10-14', 1, 'João'),
  ('2025-10-14', 2, 'Maria'),
  ('2025-10-15', 3, 'Carlos'),
  ('2025-10-15', 4, 'Ana');
  INSERT INTO item_comanda (codigo_comanda, codigo_cardapio, quantidade)
VALUES 
  (1, 1, 2),  -- João pediu 2 Café Expresso
  (1, 2, 1),  -- João pediu 1 Café com Leite
  (2, 3, 1),  -- Maria pediu 1 Cappuccino
  (3, 1, 1),  -- Carlos pediu 1 Café Expresso
  (3, 4, 2),  -- Carlos pediu 2 Mocha
  (4, 2, 1);  -- Ana pediu 1 Café com Leite
  SELECT nome, descricao, preco_unitario
FROM cardapio
ORDER BY nome;
SELECT 
    c.codigo AS codigo_comanda,
    c.data,
    c.mesa,
    c.nome_cliente,
    ca.nome AS nome_cafe,
    ca.descricao,
    ic.quantidade,
    ca.preco_unitario,
    (ic.quantidade * ca.preco_unitario) AS preco_total_cafe
FROM comanda c
JOIN item_comanda ic ON c.codigo = ic.codigo_comanda
JOIN cardapio ca ON ic.codigo_cardapio = ca.codigo
ORDER BY c.data, c.codigo, ca.nome;
SELECT 
    c.codigo,
    c.data,
    c.mesa,
    c.nome_cliente,
    SUM(ic.quantidade * ca.preco_unitario) AS valor_total_comanda
FROM comanda c
JOIN item_comanda ic ON c.codigo = ic.codigo_comanda
JOIN cardapio ca ON ic.codigo_cardapio = ca.codigo
GROUP BY c.codigo, c.data, c.mesa, c.nome_cliente
ORDER BY c.data;
SELECT 
    c.codigo,
    c.data,
    c.mesa,
    c.nome_cliente,
    SUM(ic.quantidade * ca.preco_unitario) AS valor_total_comanda
FROM comanda c
JOIN item_comanda ic ON c.codigo = ic.codigo_comanda
JOIN cardapio ca ON ic.codigo_cardapio = ca.codigo
GROUP BY c.codigo, c.data, c.mesa, c.nome_cliente
HAVING COUNT(DISTINCT ic.codigo_cardapio) > 1
ORDER BY c.data;
SELECT 
    c.data,
    SUM(ic.quantidade * ca.preco_unitario) AS faturamento_total
FROM comanda c
JOIN item_comanda ic ON c.codigo = ic.codigo_comanda
JOIN cardapio ca ON ic.codigo_cardapio = ca.codigo
GROUP BY c.data
ORDER BY c.data;
