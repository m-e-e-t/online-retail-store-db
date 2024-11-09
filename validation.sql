SELECT o.order_id, o.user_id 
FROM Shopping_Cart o
LEFT JOIN GizmoTech_Users u ON o.user_id = u.user_id
WHERE u.user_id IS NULL;

SELECT m.item_id, m.item_name
FROM Merchandise m
LEFT JOIN Customer_Feedback cf ON m.item_id = cf.item_id
WHERE cf.feedback_id IS NULL;
