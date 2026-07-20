USE zivo_db;

CREATE TABLE IF NOT EXISTS cart_items (

    cart_item_id INT AUTO_INCREMENT PRIMARY KEY,

    cart_id INT NOT NULL,

    product_id INT NOT NULL,

    quantity INT NOT NULL DEFAULT 1,

    price_at_added DECIMAL(10,2) NOT NULL,

    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT fk_cart_items_cart
        FOREIGN KEY (cart_id)
        REFERENCES cart(cart_id)
        ON DELETE CASCADE,

    CONSTRAINT fk_cart_items_product
        FOREIGN KEY (product_id)
        REFERENCES products(product_id)
        ON DELETE CASCADE
);