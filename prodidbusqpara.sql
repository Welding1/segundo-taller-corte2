CREATE PROCEDURE BuscarPedidoPorClienteId
    @ClienteId INT
AS
BEGIN
    SET NOCOUNT ON;

    DECLARE @sql NVARCHAR(MAX);
    SET @sql = N'SELECT * FROM Pedidos WHERE ClienteId = @ClienteIdParam';
    EXEC sp_executesql @sql, N'@ClienteIdParam INT', @ClienteId;
END;
