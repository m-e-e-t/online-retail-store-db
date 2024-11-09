-- Create Views for Business Intelligence
CREATE VIEW ProductRatings AS
SELECT m.item_name, 
    ROUND(AVG(cf.rating), 2) as avg_rating,
    COUNT(cf.rating) as total_reviews
FROM Merchandise m
LEFT JOIN Customer_Feedback cf ON m.item_id = cf.item_id
GROUP BY m.item_name;

CREATE VIEW CustomerSpending AS
SELECT u.username, 
    SUM(sc.total_amount) as total_spent,
    COUNT(DISTINCT sc.order_id) as total_orders
FROM GizmoTech_Users u
LEFT JOIN Shopping_Cart sc ON u.user_id = sc.user_id
GROUP BY u.username;
CREATE VIEW InventoryStatus AS
SELECT 
    m.item_name,
    ws.quantity_available,
    m.price,
    (m.price * ws.quantity_available) as inventory_value
FROM Merchandise m
JOIN Warehouse_Stock ws ON m.item_id = ws.item_id;

-- View for order details with customer information
CREATE VIEW DetailedOrders AS
SELECT 
    sc.order_id,
    u.username,
    m.item_name,
    ci.quantity,
    ci.unit_price,
    (ci.quantity * ci.unit_price) as line_total
FROM Shopping_Cart sc
JOIN GizmoTech_Users u ON sc.user_id = u.user_id
JOIN Cart_Items ci ON sc.order_id = ci.order_id
JOIN Merchandise m ON ci.item_id = m.item_id;
