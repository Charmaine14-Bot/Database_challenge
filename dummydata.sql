-- Use teashop database
USE teashop;

-- Insert data into brand table
INSERT INTO brand (name, description) VALUES
('Celestial Brews', 'Premium organic teas sourced from sustainable farms worldwide'),
('Mountain Mist', 'Specialty high-altitude teas with distinct flavor profiles'),
('Heritage Leaf', 'Traditional tea blends following ancient recipes'),
('Zen Garden', 'Japanese specialty teas with focus on ceremonial quality'),
('Spice Caravan', 'Exotic spiced tea blends inspired by ancient trade routes');

-- Insert data into product_category table (parent categories first)
INSERT INTO product_category (id, name, description, parent_id) VALUES
(1, 'Black Tea', 'Fully oxidized tea varieties with bold flavors', NULL),
(2, 'Green Tea', 'Minimally processed teas with fresh, grassy notes', NULL),
(3, 'Herbal Tea', 'Caffeine-free infusions from herbs, fruits, and flowers', NULL),
(4, 'Oolong Tea', 'Partially oxidized teas with complex flavors', NULL),
(5, 'White Tea', 'Delicate teas with minimal processing', NULL),
(6, 'Earl Grey', 'Black tea flavored with bergamot oil', 1),
(7, 'English Breakfast', 'Traditional robust black tea blend', 1),
(8, 'Sencha', 'Classic Japanese green tea', 2),
(9, 'Matcha', 'Powdered Japanese green tea', 2),
(10, 'Chamomile', 'Soothing herbal infusion', 3),
(11, 'Rooibos', 'South African herbal tea', 3),
(12, 'Tie Guan Yin', 'Traditional Chinese oolong tea', 4),
(13, 'Silver Needle', 'Premium Chinese white tea', 5);

-- Insert data into product table
INSERT INTO product (name, description, brand_id, category_id, base_price) VALUES
('Imperial Earl Grey', 'Premium Earl Grey with bergamot and blue cornflower petals', 1, 6, 12.99),
('Highland Breakfast Blend', 'Robust morning blend of Assam and Ceylon teas', 2, 7, 10.50),
('Ceremonial Grade Matcha', 'Finest stone-ground Japanese matcha powder', 4, 9, 29.99),
('Wild Rooibos', 'Organic South African red bush tea with natural sweetness', 3, 11, 8.99),
('Classic Sencha', 'Traditional Japanese green tea with grassy notes', 4, 8, 14.50),
('Iron Goddess Oolong', 'Premium Tie Guan Yin with orchid notes', 1, 12, 18.75),
('Silver Tip White', 'Delicate white tea with subtle honey notes', 2, 13, 22.99),
('Chamomile Dream', 'Soothing chamomile blend with lavender and lemongrass', 5, 10, 9.25),
('Spiced Chai', 'Traditional masala chai with cardamom, cinnamon and ginger', 5, 1, 11.50),
('Jasmine Dragon Pearl', 'Hand-rolled green tea scented with jasmine flowers', 4, 2, 16.99);

-- Insert data into product_image table
INSERT INTO product_image (product_id, image_url, alt_text, is_primary) VALUES
(1, 'https://teashop.example/images/imperial-earl-grey-main.jpg', 'Imperial Earl Grey Tea Leaves', TRUE),
(1, 'https://teashop.example/images/imperial-earl-grey-brewing.jpg', 'Brewed Cup of Imperial Earl Grey', FALSE),
(2, 'https://teashop.example/images/highland-breakfast-main.jpg', 'Highland Breakfast Tea Leaves', TRUE),
(3, 'https://teashop.example/images/ceremonial-matcha-main.jpg', 'Ceremonial Grade Matcha Powder', TRUE),
(3, 'https://teashop.example/images/ceremonial-matcha-whisked.jpg', 'Whisked Matcha in Traditional Bowl', FALSE),
(4, 'https://teashop.example/images/wild-rooibos-main.jpg', 'Wild Rooibos Tea Leaves', TRUE),
(5, 'https://teashop.example/images/classic-sencha-main.jpg', 'Classic Sencha Tea Leaves', TRUE),
(6, 'https://teashop.example/images/iron-goddess-main.jpg', 'Iron Goddess Oolong Tea Leaves', TRUE),
(7, 'https://teashop.example/images/silver-tip-main.jpg', 'Silver Tip White Tea Leaves', TRUE),
(8, 'https://teashop.example/images/chamomile-dream-main.jpg', 'Chamomile Dream Tea Blend', TRUE),
(9, 'https://teashop.example/images/spiced-chai-main.jpg', 'Spiced Chai Tea Blend', TRUE),
(10, 'https://teashop.example/images/jasmine-pearl-main.jpg', 'Jasmine Dragon Pearl Tea', TRUE);

-- Insert data into color table
INSERT INTO color (name, hex_code) VALUES
('Green', '#4CAF50'),
('Black', '#212121'),
('White', '#FFFFFF'),
('Brown', '#795548'),
('Red', '#F44336'),
('Yellow', '#FFEB3B'),
('Purple', '#9C27B0'),
('Blue', '#2196F3');

-- Insert data into size_category table
INSERT INTO size_category (name, description) VALUES
('Tea Weight', 'Weight of loose leaf tea'),
('Tea Bags', 'Number of tea bags in package'),
('Gift Set Size', 'Size options for gift sets'),
('Container Size', 'Size of tea container');

-- Insert data into size_option table
INSERT INTO size_option (size_category_id, value, display_name) VALUES
(1, '50g', 'Small (50g)'),
(1, '100g', 'Standard (100g)'),
(1, '250g', 'Large (250g)'),
(1, '500g', 'Bulk (500g)'),
(2, '20', '20 Tea Bags'),
(2, '40', '40 Tea Bags'),
(2, '80', '80 Tea Bags'),
(3, 'S', 'Small Gift Set'),
(3, 'M', 'Medium Gift Set'),
(3, 'L', 'Large Gift Set'),
(4, '100ml', 'Small Tin (100ml)'),
(4, '250ml', 'Standard Tin (250ml)'),
(4, '500ml', 'Large Tin (500ml)');

-- Insert data into product_item table (SKUs)
INSERT INTO product_item (product_id, sku, price, stock_quantity, is_active) VALUES
(1, 'EG-IMPL-50G', 12.99, 45, TRUE),
(1, 'EG-IMPL-100G', 22.99, 30, TRUE),
(1, 'EG-IMPL-250G', 45.99, 15, TRUE),
(2, 'BL-HGLD-50G', 10.50, 38, TRUE),
(2, 'BL-HGLD-100G', 18.99, 27, TRUE),
(3, 'MT-CERM-30G', 29.99, 20, TRUE),
(3, 'MT-CERM-100G', 89.99, 10, TRUE),
(4, 'RB-WILD-100G', 8.99, 50, TRUE),
(4, 'RB-WILD-250G', 19.99, 25, TRUE),
(5, 'SN-CLSC-50G', 14.50, 32, TRUE),
(5, 'SN-CLSC-100G', 25.99, 28, TRUE),
(6, 'OL-IRGD-50G', 18.75, 22, TRUE),
(6, 'OL-IRGD-100G', 34.99, 18, TRUE),
(7, 'WT-SLVR-50G', 22.99, 15, TRUE),
(7, 'WT-SLVR-100G', 42.99, 12, TRUE),
(8, 'HB-CHAM-50G', 9.25, 40, TRUE),
(8, 'HB-CHAM-100G', 16.99, 35, TRUE),
(9, 'CH-SPCD-50G', 11.50, 48, TRUE),
(9, 'CH-SPCD-100G', 20.99, 30, TRUE),
(10, 'GT-JSMN-50G', 16.99, 25, TRUE),
(10, 'GT-JSMN-100G', 29.99, 20, TRUE);

-- Insert data into product_variation table
INSERT INTO product_variation (product_item_id, color_id, size_option_id) VALUES
(1, 2, 1),  -- Earl Grey 50g Black
(2, 2, 2),  -- Earl Grey 100g Black
(3, 2, 3),  -- Earl Grey 250g Black
(4, 2, 1),  -- Highland Breakfast 50g Black
(5, 2, 2),  -- Highland Breakfast 100g Black
(6, 1, 1),  -- Ceremonial Matcha 30g Green
(7, 1, 2),  -- Ceremonial Matcha 100g Green
(8, 5, 2),  -- Wild Rooibos 100g Red
(9, 5, 3),  -- Wild Rooibos 250g Red
(10, 1, 1), -- Classic Sencha 50g Green
(11, 1, 2), -- Classic Sencha 100g Green
(12, 4, 1), -- Iron Goddess 50g Brown
(13, 4, 2), -- Iron Goddess 100g Brown
(14, 3, 1), -- Silver Tip 50g White
(15, 3, 2), -- Silver Tip 100g White
(16, 6, 1), -- Chamomile 50g Yellow
(17, 6, 2), -- Chamomile 100g Yellow
(18, 4, 1), -- Spiced Chai 50g Brown
(19, 4, 2), -- Spiced Chai 100g Brown
(20, 1, 1), -- Jasmine Pearl 50g Green
(21, 1, 2); -- Jasmine Pearl 100g Green

-- Insert data into attribute_type table
INSERT INTO attribute_type (name) VALUES
('text'),
('number'),
('boolean'),
('date');

-- Insert data into attribute_category table
INSERT INTO attribute_category (name, description) VALUES
('Origin', 'Geographic origin of the tea'),
('Brewing', 'Brewing instructions and parameters'),
('Flavor Profile', 'Tasting notes and characteristics'),
('Certification', 'Product certifications and standards'),
('Storage', 'Storage requirements and shelf life');

-- Insert data into product_attribute table
INSERT INTO product_attribute (product_id, name, value, attribute_type_id, attribute_category_id) VALUES
(1, 'Origin', 'India and Sri Lanka', 1, 1),
(1, 'Brewing Temperature', '95°C', 1, 2),
(1, 'Brewing Time', '3-5 minutes', 1, 2),
(1, 'Flavor Notes', 'Citrusy, floral, with bergamot', 1, 3),
(1, 'Organic', 'Yes', 3, 4),
(1, 'Caffeine Level', 'High', 1, 3),

(2, 'Origin', 'Assam, India and Sri Lanka', 1, 1),
(2, 'Brewing Temperature', '100°C', 1, 2),
(2, 'Brewing Time', '4-5 minutes', 1, 2),
(2, 'Flavor Notes', 'Malty, robust, full-bodied', 1, 3),
(2, 'Caffeine Level', 'High', 1, 3),

(3, 'Origin', 'Uji, Japan', 1, 1),
(3, 'Brewing Temperature', '80°C', 1, 2),
(3, 'Brewing Method', 'Whisk in bowl', 1, 2),
(3, 'Flavor Notes', 'Umami, grassy, sweet', 1, 3),
(3, 'Organic', 'Yes', 3, 4),
(3, 'Ceremonial Grade', 'Yes', 3, 4),
(3, 'Caffeine Level', 'Medium-High', 1, 3),

(4, 'Origin', 'Cederberg, South Africa', 1, 1),
(4, 'Brewing Temperature', '100°C', 1, 2),
(4, 'Brewing Time', '5-7 minutes', 1, 2),
(4, 'Flavor Notes', 'Nutty, sweet, vanilla notes', 1, 3),
(4, 'Organic', 'Yes', 3, 4),
(4, 'Caffeine Free', 'Yes', 3, 3),

(5, 'Origin', 'Shizuoka, Japan', 1, 1),
(5, 'Brewing Temperature', '75°C', 1, 2),
(5, 'Brewing Time', '1-2 minutes', 1, 2),
(5, 'Flavor Notes', 'Grassy, marine, fresh', 1, 3),
(5, 'Organic', 'Yes', 3, 4),
(5, 'Caffeine Level', 'Medium', 1, 3),

(6, 'Origin', 'Fujian, China', 1, 1),
(6, 'Brewing Temperature', '90°C', 1, 2),
(6, 'Brewing Time', '2-3 minutes', 1, 2),
(6, 'Flavor Notes', 'Orchid, honey, toasty', 1, 3),
(6, 'Caffeine Level', 'Medium', 1, 3),

(7, 'Origin', 'Fujian, China', 1, 1),
(7, 'Brewing Temperature', '80°C', 1, 2),
(7, 'Brewing Time', '1-2 minutes', 1, 2),
(7, 'Flavor Notes', 'Delicate, honey, melon', 1, 3),
(7, 'Caffeine Level', 'Low', 1, 3),

(8, 'Origin', 'Egypt and Croatia', 1, 1),
(8, 'Brewing Temperature', '100°C', 1, 2),
(8, 'Brewing Time', '5-7 minutes', 1, 2),
(8, 'Flavor Notes', 'Floral, honey, calming', 1, 3),
(8, 'Organic', 'Yes', 3, 4),
(8, 'Caffeine Free', 'Yes', 3, 3),

(9, 'Origin', 'Assam, India', 1, 1),
(9, 'Brewing Temperature', '100°C', 1, 2),
(9, 'Brewing Time', '4-5 minutes', 1, 2),
(9, 'Flavor Notes', 'Spicy, warming, aromatic', 1, 3),
(9, 'Caffeine Level', 'Medium', 1, 3),

(10, 'Origin', 'Fujian, China', 1, 1),
(10, 'Brewing Temperature', '80°C', 1, 2),
(10, 'Brewing Time', '2-3 minutes', 1, 2),
(10, 'Flavor Notes', 'Jasmine, sweet, floral', 1, 3),
(10, 'Organic', 'Yes', 3, 4),
(10, 'Caffeine Level', 'Low-Medium', 1, 3);