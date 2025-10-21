INSERT INTO cardapio (nome, descricao, preco_unitario)
VALUES 
('Café Expresso', 'Café forte e encorpado', 5.00),
('Café com Leite', 'Café misturado com leite quente', 6.50),
('Cappuccino', 'Café com leite vaporizado e espuma', 7.00),
('Mocha', 'Café com chocolate e leite', 8.00);
INSERT INTO comanda (data, mesa, nome_cliente)
VALUES 
('2025-10-20', 1, 'João'),
('2025-10-20', 2, 'Maria'),
('2025-10-21', 3, 'Carlos'),
('2025-10-21', 4, 'Ana');
INSERT INTO item_comanda (codigo_comanda, codigo_cardapio, quantidade)
VALUES 
(1, 1, 2),  -- João pediu 2 Café Expresso
(1, 2, 1),  -- João pediu 1 Café com Leite
(2, 3, 1),  -- Maria pediu 1 Cappuccino
(3, 1, 1),  -- Carlos pediu 1 Café Expresso
(3, 4, 2),  -- Carlos pediu 2 Mocha
(4, 2, 1);  -- Ana pediu 1 Café com Leite