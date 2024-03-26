-- Crie a procedure
DELIMITER //

CREATE PROCEDURE RelatorioQuantidadeProdutosPorDia()
BEGIN
    -- Seleciona a data atual
    DECLARE data_atual DATE;
    SET data_atual = CURDATE();
    
    -- Seleciona a quantidade de produtos comprados por dia
    SELECT DATE(DataCompra) AS Dia, COUNT(*) AS QuantidadeProdutosComprados
    FROM Compras
    WHERE DATE(DataCompra) = data_atual
    GROUP BY Dia;
END //

DELIMITER ;

CALL RelatorioQuantidadeProdutosPorDia();
