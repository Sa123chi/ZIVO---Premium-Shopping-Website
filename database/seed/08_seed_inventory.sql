USE zivo_db;

INSERT INTO inventory
(
    product_id,
    available_stock,
    reserved_stock,
    minimum_stock_level,
    warehouse_location,
    last_restocked
)
VALUES
(1, 50, 2, 10, 'Mumbai Warehouse', NOW()),
(2, 35, 1, 10, 'Delhi Warehouse', NOW());