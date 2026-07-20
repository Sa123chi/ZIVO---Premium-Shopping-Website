USE zivo_db;

CREATE TABLE IF NOT EXISTS products (

    product_id INT AUTO_INCREMENT PRIMARY KEY,

    seller_id INT NOT NULL,

    category_id INT NOT NULL,

    subcategory_id INT NOT NULL,

    brand_id INT NOT NULL,

    product_name VARCHAR(255) NOT NULL,

    sku VARCHAR(100) NOT NULL UNIQUE,

    description TEXT,

    price DECIMAL(10,2) NOT NULL,

    discount_price DECIMAL(10,2),

    stock_quantity INT DEFAULT 0,

    weight DECIMAL(8,2),

    color VARCHAR(50),

    warranty VARCHAR(100),

    is_active BOOLEAN DEFAULT TRUE,

    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,

    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
        ON UPDATE CURRENT_TIMESTAMP,

    CONSTRAINT fk_products_seller
        FOREIGN KEY (seller_id)
        REFERENCES users(user_id),

    CONSTRAINT fk_products_category
        FOREIGN KEY (category_id)
        REFERENCES categories(category_id),

    CONSTRAINT fk_products_subcategory
        FOREIGN KEY (subcategory_id)
        REFERENCES subcategories(subcategory_id),

    CONSTRAINT fk_products_brand
        FOREIGN KEY (brand_id)
        REFERENCES brands(brand_id)

);