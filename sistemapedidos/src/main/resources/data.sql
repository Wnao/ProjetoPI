INSERT INTO cliente(cpf, nome, sobrenome)
VALUES
-- 1
('00000000000', 'Nome1', 'Sobrenome1'),
-- 2
('00000000001', 'Nome2', 'Sobrenome2');

INSERT INTO produto (descricao, categoria, value)
VALUES
-- 1
('Coca-Cola', 'bebida', 12),
-- 2
('Guaraná', 'bebida', 13),
-- 3
('Suco de Uva', 'bebida', 14),
-- 4
('X-Tudo', 'lanche', 15),
-- 5
('X-Burger' , 'lanche', 16),
-- 6
('X-Burger Duplo ', 'lanche', 17),

('X-Burger Triplo' , 'lanche', 18),

('X-Burger com Ovo' , 'lanche', 20),

('X-Burger Duplo com Ovo' , 'lanche', 23),

('X-Burger Triplo com Ovo' , 'lanche', 27),

('Mousse' , 'sobremesa', 7),

('Sorvete' , 'sobremesa', 8),

('Bolo' , 'sobremesa', 10);

INSERT INTO pedido (data_pedido, id_cliente)
VALUES
-- 1
(CURRENT_DATE(), 1),
-- 2
(CURRENT_DATE(), 1),
-- 3
(CURRENT_DATE(), 2);

INSERT INTO item_do_pedido (id_pedido, id_produto, qtdade)
VALUES
-- Pedido 1
(1, 1, 1),
(1, 2, 1),
(1, 3, 1),
(1, 4, 1),
(1, 5, 1),
-- Pedido 2
(2, 1, 1),
(2, 2, 1),
(2, 3, 1),
(2, 6, 1);