USE zivo_db;

CREATE TABLE IF NOT EXISTS brands (

    brand_id INT AUTO_INCREMENT PRIMARY KEY,

    brand_name VARCHAR(100) NOT NULL UNIQUE,

    brand_logo VARCHAR(255),

    brand_description TEXT,

    website VARCHAR(255),

    is_active BOOLEAN DEFAULT TRUE,

    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,

    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
        ON UPDATE CURRENT_TIMESTAMP

);