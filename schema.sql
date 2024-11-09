-- Create Tables
CREATE TABLE GizmoTech_Users (
    user_id INT PRIMARY KEY,
    username VARCHAR(50) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    shipping_address TEXT NOT NULL,
    join_date DATE DEFAULT CURRENT_DATE,
    loyalty_points INT DEFAULT 0
);

CREATE TABLE Product_Categories (
    category_id INT PRIMARY KEY,
    category_name VARCHAR(50) NOT NULL,
    department_head VARCHAR(50)
);

CREATE TABLE Merchandise (
    item_id INT PRIMARY KEY,
    category_id INT REFERENCES Product_Categories(category_id),
    item_name VARCHAR(100) NOT NULL,
    brand VARCHAR(50),
    price DECIMAL(10,2) NOT NULL,
    launch_date DATE,
    CONSTRAINT price_check CHECK (price > 0)
);

CREATE TABLE Warehouse_Stock (
    stock_id INT PRIMARY KEY,
    item_id INT REFERENCES Merchandise(item_id),
    quantity_available INT NOT NULL,
    reorder_point INT DEFAULT 10,
    last_restock_date DATE
);

CREATE TABLE Shopping_Cart (
    order_id INT PRIMARY KEY,
    user_id INT REFERENCES GizmoTech_Users(user_id),
    order_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    status VARCHAR(20) DEFAULT 'Processing',
    total_amount DECIMAL(10,2)
);

CREATE TABLE Cart_Items (
    order_id INT REFERENCES Shopping_Cart(order_id),
    item_id INT REFERENCES Merchandise(item_id),
    quantity INT NOT NULL,
    unit_price DECIMAL(10,2),
    PRIMARY KEY (order_id, item_id)
);

CREATE TABLE Customer_Feedback (
    feedback_id INT PRIMARY KEY,
    item_id INT REFERENCES Merchandise(item_id),
    user_id INT REFERENCES GizmoTech_Users(user_id),
    rating INT CHECK (rating BETWEEN 1 AND 5),
    review_text TEXT,
    review_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
