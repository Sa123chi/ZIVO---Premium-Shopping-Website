USE zivo_db;

CREATE TABLE IF NOT EXISTS inventory (

    inventory_id INT AUTO_INCREMENT PRIMARY KEY,

    product_id INT NOT NULL UNIQUE,

    available_stock INT NOT NULL DEFAULT 0,

    reserved_stock INT DEFAULT 0,

    minimum_stock_level INT DEFAULT 10,

    warehouse_location VARCHAR(100),

    last_restocked TIMESTAMP NULL,

    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,

    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
        ON UPDATE CURRENT_TIMESTAMP,

    CONSTRAINT fk_inventory_product
        FOREIGN KEY (product_id)
        REFERENCES products(product_id)
        ON DELETE CASCADE
);