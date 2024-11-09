-- Insert Sample Data
INSERT INTO GizmoTech_Users VALUES
(1, 'TechNinja', 'sarah.zhang@email.com', '742 Circuit Ave, Silicon Valley, CA', '2023-01-15', 250),
(2, 'PixelPioneer', 'raj.patel@email.com', '89 Innovation Drive, Austin, TX', '2023-02-20', 175),
(3, 'ByteMaster', 'elena.rodriguez@email.com', '456 Digital Lane, Seattle, WA', '2023-03-10', 320),
(4, 'DataDragon', 'james.kim@email.com', '123 Tech Park, Boston, MA', '2023-04-05', 150),
(5, 'CloudCrafter', 'aisha.ahmed@email.com', '567 Cyber Street, Portland, OR', '2023-05-01', 290);

INSERT INTO Product_Categories VALUES
(1, 'Smart Devices', 'Marcus Chen'),
(2, 'Designer Apparel', 'Sofia Martinez'),
(3, 'Tech Literature', 'Dr. Alex Thompson'),
(4, 'Gaming Gear', 'Jamie Sullivan'),
(5, 'Audio Equipment', 'Zara Wilson');

INSERT INTO Merchandise VALUES
(101, 1, 'QuantumWatch Pro X1', 'NovaTech', 299.99, '2023-06-01'),
(102, 2, 'CyberFlex Gaming Hoodie', 'DigitalThread', 89.99, '2023-06-15'),
(103, 3, 'Quantum Computing: Future Unleashed', 'TechPress', 49.99, '2023-07-01'),
(104, 4, 'Phoenix RGB Mechanical Keyboard', 'BattleForge', 159.99, '2023-07-15'),
(105, 5, 'SonicCloud Pro Headphones', 'AudioVerse', 199.99, '2023-08-01');

-- Continue with more insert statements for other tables...
INSERT INTO Warehouse_Stock VALUES
(1001, 101, 45, 15, '2023-09-01'),
(1002, 102, 120, 30, '2023-09-05'),
(1003, 103, 75, 20, '2023-09-10'),
(1004, 104, 35, 12, '2023-09-15'),
(1005, 105, 60, 25, '2023-09-20');

INSERT INTO Shopping_Cart VALUES
(501, 1, '2023-09-25 10:30:00', 'Delivered', 459.98),
(502, 2, '2023-09-26 14:15:00', 'Processing', 199.99),
(503, 3, '2023-09-27 09:45:00', 'Shipped', 249.98),
(504, 4, '2023-09-28 16:20:00', 'Delivered', 159.99),
(505, 5, '2023-09-29 11:05:00', 'Processing', 389.97);

INSERT INTO Cart_Items VALUES
(501, 101, 1, 299.99),
(501, 102, 2, 89.99),
(502, 105, 1, 199.99),
(503, 103, 5, 49.99),
(504, 104, 1, 159.99),
(505, 101, 1, 299.99),
(505, 105, 1, 199.99);

INSERT INTO Customer_Feedback VALUES
(801, 101, 1, 5, 'Amazing smartwatch! Battery life exceeds expectations.', '2023-10-01 09:15:00'),
(802, 102, 2, 4, 'Comfortable hoodie, great for gaming sessions.', '2023-10-02 14:30:00'),
(803, 103, 3, 5, 'Comprehensive guide to quantum computing.', '2023-10-03 16:45:00'),
(804, 104, 4, 4, 'Solid mechanical keyboard, love the RGB effects.', '2023-10-04 11:20:00'),
(805, 105, 5, 5, 'Crystal clear audio, worth every penny!', '2023-10-05 13:10:00');
