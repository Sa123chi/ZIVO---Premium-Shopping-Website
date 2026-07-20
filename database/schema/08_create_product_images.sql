USE zivo_db;

CREATE TABLE IF NOT EXISTS product_images (

    image_id INT AUTO_INCREMENT PRIMARY KEY,

    product_id INT NOT NULL,

    image_url VARCHAR(500) NOT NULL,

    alt_text VARCHAR(255),

    is_primary BOOLEAN DEFAULT FALSE,

    display_order INT DEFAULT 1,

    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT fk_product_images_product
        FOREIGN KEY (product_id)
        REFERENCES products(product_id)
        ON DELETE CASCADE

);