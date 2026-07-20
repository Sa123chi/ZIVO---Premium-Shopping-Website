USE zivo_db;

CREATE TABLE IF NOT EXISTS subcategories (

    subcategory_id INT AUTO_INCREMENT PRIMARY KEY,

    category_id INT NOT NULL,

    subcategory_name VARCHAR(100) NOT NULL,

    subcategory_description TEXT,

    subcategory_image VARCHAR(255),

    is_active BOOLEAN DEFAULT TRUE,

    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,

    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
        ON UPDATE CURRENT_TIMESTAMP,

    CONSTRAINT fk_subcategory_category
        FOREIGN KEY (category_id)
        REFERENCES categories(category_id)
        ON DELETE CASCADE
        ON UPDATE CASCADE,

    CONSTRAINT uq_category_subcategory
        UNIQUE(category_id, subcategory_name)

);