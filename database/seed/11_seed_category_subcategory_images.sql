USE zivo_db;

-- ============================================================
-- 11_seed_category_subcategory_images.sql
-- Adds display images to all categories and existing subcategories,
-- and adds subcategories (with images) for categories that had none.
-- Run this AFTER the other files in database/seed/ have been loaded.
-- ============================================================


-- =====================================================
-- Category images
-- =====================================================

UPDATE categories SET category_image = 'https://placehold.co/500x500/2E4F46/FFFFFF?font=roboto&text=Electronics' WHERE category_name = 'Electronics';
UPDATE categories SET category_image = 'https://placehold.co/500x500/D6B37A/FFFFFF?font=roboto&text=Fashion' WHERE category_name = 'Fashion';
UPDATE categories SET category_image = 'https://placehold.co/500x500/3E6357/FFFFFF?font=roboto&text=Home+and+Kitchen' WHERE category_name = 'Home & Kitchen';
UPDATE categories SET category_image = 'https://placehold.co/500x500/8C6D3F/FFFFFF?font=roboto&text=Books' WHERE category_name = 'Books';
UPDATE categories SET category_image = 'https://placehold.co/500x500/1F3B34/FFFFFF?font=roboto&text=Sports+and+Fitness' WHERE category_name = 'Sports & Fitness';
UPDATE categories SET category_image = 'https://placehold.co/500x500/B8935F/FFFFFF?font=roboto&text=Beauty+and+Personal+Care' WHERE category_name = 'Beauty & Personal Care';
UPDATE categories SET category_image = 'https://placehold.co/500x500/4A6B5E/FFFFFF?font=roboto&text=Toys+and+Games' WHERE category_name = 'Toys & Games';
UPDATE categories SET category_image = 'https://placehold.co/500x500/C9A876/FFFFFF?font=roboto&text=Groceries' WHERE category_name = 'Groceries';
UPDATE categories SET category_image = 'https://placehold.co/500x500/2E4F46/FFFFFF?font=roboto&text=Automotive' WHERE category_name = 'Automotive';
UPDATE categories SET category_image = 'https://placehold.co/500x500/D6B37A/FFFFFF?font=roboto&text=Pet+Supplies' WHERE category_name = 'Pet Supplies';
UPDATE categories SET category_image = 'https://placehold.co/500x500/3E6357/FFFFFF?font=roboto&text=Office+Supplies' WHERE category_name = 'Office Supplies';
UPDATE categories SET category_image = 'https://placehold.co/500x500/8C6D3F/FFFFFF?font=roboto&text=Health+and+Wellness' WHERE category_name = 'Health & Wellness';
UPDATE categories SET category_image = 'https://placehold.co/500x500/1F3B34/FFFFFF?font=roboto&text=Baby+Products' WHERE category_name = 'Baby Products';
UPDATE categories SET category_image = 'https://placehold.co/500x500/B8935F/FFFFFF?font=roboto&text=Jewellery' WHERE category_name = 'Jewellery';
UPDATE categories SET category_image = 'https://placehold.co/500x500/4A6B5E/FFFFFF?font=roboto&text=Watches' WHERE category_name = 'Watches';
UPDATE categories SET category_image = 'https://placehold.co/500x500/C9A876/FFFFFF?font=roboto&text=Luggage+and+Travel' WHERE category_name = 'Luggage & Travel';
UPDATE categories SET category_image = 'https://placehold.co/500x500/2E4F46/FFFFFF?font=roboto&text=Furniture' WHERE category_name = 'Furniture';
UPDATE categories SET category_image = 'https://placehold.co/500x500/D6B37A/FFFFFF?font=roboto&text=Garden+and+Outdoor' WHERE category_name = 'Garden & Outdoor';
UPDATE categories SET category_image = 'https://placehold.co/500x500/3E6357/FFFFFF?font=roboto&text=Musical+Instruments' WHERE category_name = 'Musical Instruments';
UPDATE categories SET category_image = 'https://placehold.co/500x500/8C6D3F/FFFFFF?font=roboto&text=Industrial+and+Scientific' WHERE category_name = 'Industrial & Scientific';

-- =====================================================
-- Subcategory images (existing subcategories, categories 1-8)
-- =====================================================

UPDATE subcategories SET subcategory_image = 'https://placehold.co/500x500/2E4F46/FFFFFF?font=roboto&text=Mobiles' WHERE category_id = 1 AND subcategory_name = 'Mobiles';
UPDATE subcategories SET subcategory_image = 'https://placehold.co/500x500/D6B37A/FFFFFF?font=roboto&text=Laptops' WHERE category_id = 1 AND subcategory_name = 'Laptops';
UPDATE subcategories SET subcategory_image = 'https://placehold.co/500x500/3E6357/FFFFFF?font=roboto&text=Tablets' WHERE category_id = 1 AND subcategory_name = 'Tablets';
UPDATE subcategories SET subcategory_image = 'https://placehold.co/500x500/8C6D3F/FFFFFF?font=roboto&text=Smart+Watches' WHERE category_id = 1 AND subcategory_name = 'Smart Watches';
UPDATE subcategories SET subcategory_image = 'https://placehold.co/500x500/1F3B34/FFFFFF?font=roboto&text=Headphones' WHERE category_id = 1 AND subcategory_name = 'Headphones';
UPDATE subcategories SET subcategory_image = 'https://placehold.co/500x500/B8935F/FFFFFF?font=roboto&text=Earbuds' WHERE category_id = 1 AND subcategory_name = 'Earbuds';
UPDATE subcategories SET subcategory_image = 'https://placehold.co/500x500/4A6B5E/FFFFFF?font=roboto&text=Speakers' WHERE category_id = 1 AND subcategory_name = 'Speakers';
UPDATE subcategories SET subcategory_image = 'https://placehold.co/500x500/C9A876/FFFFFF?font=roboto&text=Cameras' WHERE category_id = 1 AND subcategory_name = 'Cameras';
UPDATE subcategories SET subcategory_image = 'https://placehold.co/500x500/2E4F46/FFFFFF?font=roboto&text=Printers' WHERE category_id = 1 AND subcategory_name = 'Printers';
UPDATE subcategories SET subcategory_image = 'https://placehold.co/500x500/D6B37A/FFFFFF?font=roboto&text=Monitors' WHERE category_id = 1 AND subcategory_name = 'Monitors';
UPDATE subcategories SET subcategory_image = 'https://placehold.co/500x500/3E6357/FFFFFF?font=roboto&text=Keyboards' WHERE category_id = 1 AND subcategory_name = 'Keyboards';
UPDATE subcategories SET subcategory_image = 'https://placehold.co/500x500/8C6D3F/FFFFFF?font=roboto&text=Mouse' WHERE category_id = 1 AND subcategory_name = 'Mouse';
UPDATE subcategories SET subcategory_image = 'https://placehold.co/500x500/1F3B34/FFFFFF?font=roboto&text=Gaming+Consoles' WHERE category_id = 1 AND subcategory_name = 'Gaming Consoles';
UPDATE subcategories SET subcategory_image = 'https://placehold.co/500x500/B8935F/FFFFFF?font=roboto&text=Computer+Accessories' WHERE category_id = 1 AND subcategory_name = 'Computer Accessories';
UPDATE subcategories SET subcategory_image = 'https://placehold.co/500x500/4A6B5E/FFFFFF?font=roboto&text=Power+Banks' WHERE category_id = 1 AND subcategory_name = 'Power Banks';
UPDATE subcategories SET subcategory_image = 'https://placehold.co/500x500/C9A876/FFFFFF?font=roboto&text=Storage+Devices' WHERE category_id = 1 AND subcategory_name = 'Storage Devices';
UPDATE subcategories SET subcategory_image = 'https://placehold.co/500x500/2E4F46/FFFFFF?font=roboto&text=Networking' WHERE category_id = 1 AND subcategory_name = 'Networking';
UPDATE subcategories SET subcategory_image = 'https://placehold.co/500x500/D6B37A/FFFFFF?font=roboto&text=Smart+Home' WHERE category_id = 1 AND subcategory_name = 'Smart Home';
UPDATE subcategories SET subcategory_image = 'https://placehold.co/500x500/3E6357/FFFFFF?font=roboto&text=Mens+Clothing' WHERE category_id = 2 AND subcategory_name = 'Men''s Clothing';
UPDATE subcategories SET subcategory_image = 'https://placehold.co/500x500/8C6D3F/FFFFFF?font=roboto&text=Womens+Clothing' WHERE category_id = 2 AND subcategory_name = 'Women''s Clothing';
UPDATE subcategories SET subcategory_image = 'https://placehold.co/500x500/1F3B34/FFFFFF?font=roboto&text=Kids+Clothing' WHERE category_id = 2 AND subcategory_name = 'Kids Clothing';
UPDATE subcategories SET subcategory_image = 'https://placehold.co/500x500/B8935F/FFFFFF?font=roboto&text=Shoes' WHERE category_id = 2 AND subcategory_name = 'Shoes';
UPDATE subcategories SET subcategory_image = 'https://placehold.co/500x500/4A6B5E/FFFFFF?font=roboto&text=Sports+Shoes' WHERE category_id = 2 AND subcategory_name = 'Sports Shoes';
UPDATE subcategories SET subcategory_image = 'https://placehold.co/500x500/C9A876/FFFFFF?font=roboto&text=Sandals' WHERE category_id = 2 AND subcategory_name = 'Sandals';
UPDATE subcategories SET subcategory_image = 'https://placehold.co/500x500/2E4F46/FFFFFF?font=roboto&text=Bags' WHERE category_id = 2 AND subcategory_name = 'Bags';
UPDATE subcategories SET subcategory_image = 'https://placehold.co/500x500/D6B37A/FFFFFF?font=roboto&text=Wallets' WHERE category_id = 2 AND subcategory_name = 'Wallets';
UPDATE subcategories SET subcategory_image = 'https://placehold.co/500x500/3E6357/FFFFFF?font=roboto&text=Watches' WHERE category_id = 2 AND subcategory_name = 'Watches';
UPDATE subcategories SET subcategory_image = 'https://placehold.co/500x500/8C6D3F/FFFFFF?font=roboto&text=Jewellery' WHERE category_id = 2 AND subcategory_name = 'Jewellery';
UPDATE subcategories SET subcategory_image = 'https://placehold.co/500x500/1F3B34/FFFFFF?font=roboto&text=Sunglasses' WHERE category_id = 2 AND subcategory_name = 'Sunglasses';
UPDATE subcategories SET subcategory_image = 'https://placehold.co/500x500/B8935F/FFFFFF?font=roboto&text=Caps' WHERE category_id = 2 AND subcategory_name = 'Caps';
UPDATE subcategories SET subcategory_image = 'https://placehold.co/500x500/4A6B5E/FFFFFF?font=roboto&text=Belts' WHERE category_id = 2 AND subcategory_name = 'Belts';
UPDATE subcategories SET subcategory_image = 'https://placehold.co/500x500/C9A876/FFFFFF?font=roboto&text=Ethnic+Wear' WHERE category_id = 2 AND subcategory_name = 'Ethnic Wear';
UPDATE subcategories SET subcategory_image = 'https://placehold.co/500x500/2E4F46/FFFFFF?font=roboto&text=Winter+Wear' WHERE category_id = 2 AND subcategory_name = 'Winter Wear';
UPDATE subcategories SET subcategory_image = 'https://placehold.co/500x500/D6B37A/FFFFFF?font=roboto&text=Furniture' WHERE category_id = 3 AND subcategory_name = 'Furniture';
UPDATE subcategories SET subcategory_image = 'https://placehold.co/500x500/3E6357/FFFFFF?font=roboto&text=Kitchen+Appliances' WHERE category_id = 3 AND subcategory_name = 'Kitchen Appliances';
UPDATE subcategories SET subcategory_image = 'https://placehold.co/500x500/8C6D3F/FFFFFF?font=roboto&text=Home+Decor' WHERE category_id = 3 AND subcategory_name = 'Home Decor';
UPDATE subcategories SET subcategory_image = 'https://placehold.co/500x500/1F3B34/FFFFFF?font=roboto&text=Cookware' WHERE category_id = 3 AND subcategory_name = 'Cookware';
UPDATE subcategories SET subcategory_image = 'https://placehold.co/500x500/B8935F/FFFFFF?font=roboto&text=Dinnerware' WHERE category_id = 3 AND subcategory_name = 'Dinnerware';
UPDATE subcategories SET subcategory_image = 'https://placehold.co/500x500/4A6B5E/FFFFFF?font=roboto&text=Storage+and+Containers' WHERE category_id = 3 AND subcategory_name = 'Storage & Containers';
UPDATE subcategories SET subcategory_image = 'https://placehold.co/500x500/C9A876/FFFFFF?font=roboto&text=Cleaning+Supplies' WHERE category_id = 3 AND subcategory_name = 'Cleaning Supplies';
UPDATE subcategories SET subcategory_image = 'https://placehold.co/500x500/2E4F46/FFFFFF?font=roboto&text=Beds+and+Mattresses' WHERE category_id = 3 AND subcategory_name = 'Beds & Mattresses';
UPDATE subcategories SET subcategory_image = 'https://placehold.co/500x500/D6B37A/FFFFFF?font=roboto&text=Lighting' WHERE category_id = 3 AND subcategory_name = 'Lighting';
UPDATE subcategories SET subcategory_image = 'https://placehold.co/500x500/3E6357/FFFFFF?font=roboto&text=Curtains' WHERE category_id = 3 AND subcategory_name = 'Curtains';
UPDATE subcategories SET subcategory_image = 'https://placehold.co/500x500/8C6D3F/FFFFFF?font=roboto&text=Bathroom+Accessories' WHERE category_id = 3 AND subcategory_name = 'Bathroom Accessories';
UPDATE subcategories SET subcategory_image = 'https://placehold.co/500x500/1F3B34/FFFFFF?font=roboto&text=Home+Improvement' WHERE category_id = 3 AND subcategory_name = 'Home Improvement';
UPDATE subcategories SET subcategory_image = 'https://placehold.co/500x500/B8935F/FFFFFF?font=roboto&text=Education' WHERE category_id = 4 AND subcategory_name = 'Education';
UPDATE subcategories SET subcategory_image = 'https://placehold.co/500x500/4A6B5E/FFFFFF?font=roboto&text=Fiction' WHERE category_id = 4 AND subcategory_name = 'Fiction';
UPDATE subcategories SET subcategory_image = 'https://placehold.co/500x500/C9A876/FFFFFF?font=roboto&text=Non-Fiction' WHERE category_id = 4 AND subcategory_name = 'Non-Fiction';
UPDATE subcategories SET subcategory_image = 'https://placehold.co/500x500/2E4F46/FFFFFF?font=roboto&text=Comics' WHERE category_id = 4 AND subcategory_name = 'Comics';
UPDATE subcategories SET subcategory_image = 'https://placehold.co/500x500/D6B37A/FFFFFF?font=roboto&text=Children+Books' WHERE category_id = 4 AND subcategory_name = 'Children Books';
UPDATE subcategories SET subcategory_image = 'https://placehold.co/500x500/3E6357/FFFFFF?font=roboto&text=Competitive+Exams' WHERE category_id = 4 AND subcategory_name = 'Competitive Exams';
UPDATE subcategories SET subcategory_image = 'https://placehold.co/500x500/8C6D3F/FFFFFF?font=roboto&text=Programming' WHERE category_id = 4 AND subcategory_name = 'Programming';
UPDATE subcategories SET subcategory_image = 'https://placehold.co/500x500/1F3B34/FFFFFF?font=roboto&text=Business' WHERE category_id = 4 AND subcategory_name = 'Business';
UPDATE subcategories SET subcategory_image = 'https://placehold.co/500x500/B8935F/FFFFFF?font=roboto&text=Biography' WHERE category_id = 4 AND subcategory_name = 'Biography';
UPDATE subcategories SET subcategory_image = 'https://placehold.co/500x500/4A6B5E/FFFFFF?font=roboto&text=Self+Help' WHERE category_id = 4 AND subcategory_name = 'Self Help';
UPDATE subcategories SET subcategory_image = 'https://placehold.co/500x500/C9A876/FFFFFF?font=roboto&text=Cricket' WHERE category_id = 5 AND subcategory_name = 'Cricket';
UPDATE subcategories SET subcategory_image = 'https://placehold.co/500x500/2E4F46/FFFFFF?font=roboto&text=Football' WHERE category_id = 5 AND subcategory_name = 'Football';
UPDATE subcategories SET subcategory_image = 'https://placehold.co/500x500/D6B37A/FFFFFF?font=roboto&text=Badminton' WHERE category_id = 5 AND subcategory_name = 'Badminton';
UPDATE subcategories SET subcategory_image = 'https://placehold.co/500x500/3E6357/FFFFFF?font=roboto&text=Basketball' WHERE category_id = 5 AND subcategory_name = 'Basketball';
UPDATE subcategories SET subcategory_image = 'https://placehold.co/500x500/8C6D3F/FFFFFF?font=roboto&text=Volleyball' WHERE category_id = 5 AND subcategory_name = 'Volleyball';
UPDATE subcategories SET subcategory_image = 'https://placehold.co/500x500/1F3B34/FFFFFF?font=roboto&text=Gym+Equipment' WHERE category_id = 5 AND subcategory_name = 'Gym Equipment';
UPDATE subcategories SET subcategory_image = 'https://placehold.co/500x500/B8935F/FFFFFF?font=roboto&text=Cycling' WHERE category_id = 5 AND subcategory_name = 'Cycling';
UPDATE subcategories SET subcategory_image = 'https://placehold.co/500x500/4A6B5E/FFFFFF?font=roboto&text=Yoga' WHERE category_id = 5 AND subcategory_name = 'Yoga';
UPDATE subcategories SET subcategory_image = 'https://placehold.co/500x500/C9A876/FFFFFF?font=roboto&text=Swimming' WHERE category_id = 5 AND subcategory_name = 'Swimming';
UPDATE subcategories SET subcategory_image = 'https://placehold.co/500x500/2E4F46/FFFFFF?font=roboto&text=Outdoor+Sports' WHERE category_id = 5 AND subcategory_name = 'Outdoor Sports';
UPDATE subcategories SET subcategory_image = 'https://placehold.co/500x500/D6B37A/FFFFFF?font=roboto&text=Makeup' WHERE category_id = 6 AND subcategory_name = 'Makeup';
UPDATE subcategories SET subcategory_image = 'https://placehold.co/500x500/3E6357/FFFFFF?font=roboto&text=Skin+Care' WHERE category_id = 6 AND subcategory_name = 'Skin Care';
UPDATE subcategories SET subcategory_image = 'https://placehold.co/500x500/8C6D3F/FFFFFF?font=roboto&text=Hair+Care' WHERE category_id = 6 AND subcategory_name = 'Hair Care';
UPDATE subcategories SET subcategory_image = 'https://placehold.co/500x500/1F3B34/FFFFFF?font=roboto&text=Fragrances' WHERE category_id = 6 AND subcategory_name = 'Fragrances';
UPDATE subcategories SET subcategory_image = 'https://placehold.co/500x500/B8935F/FFFFFF?font=roboto&text=Mens+Grooming' WHERE category_id = 6 AND subcategory_name = 'Men''s Grooming';
UPDATE subcategories SET subcategory_image = 'https://placehold.co/500x500/4A6B5E/FFFFFF?font=roboto&text=Personal+Care' WHERE category_id = 6 AND subcategory_name = 'Personal Care';
UPDATE subcategories SET subcategory_image = 'https://placehold.co/500x500/C9A876/FFFFFF?font=roboto&text=Nail+Care' WHERE category_id = 6 AND subcategory_name = 'Nail Care';
UPDATE subcategories SET subcategory_image = 'https://placehold.co/500x500/2E4F46/FFFFFF?font=roboto&text=Beauty+Tools' WHERE category_id = 6 AND subcategory_name = 'Beauty Tools';
UPDATE subcategories SET subcategory_image = 'https://placehold.co/500x500/D6B37A/FFFFFF?font=roboto&text=Educational+Toys' WHERE category_id = 7 AND subcategory_name = 'Educational Toys';
UPDATE subcategories SET subcategory_image = 'https://placehold.co/500x500/3E6357/FFFFFF?font=roboto&text=Action+Figures' WHERE category_id = 7 AND subcategory_name = 'Action Figures';
UPDATE subcategories SET subcategory_image = 'https://placehold.co/500x500/8C6D3F/FFFFFF?font=roboto&text=Remote+Control+Toys' WHERE category_id = 7 AND subcategory_name = 'Remote Control Toys';
UPDATE subcategories SET subcategory_image = 'https://placehold.co/500x500/1F3B34/FFFFFF?font=roboto&text=Building+Blocks' WHERE category_id = 7 AND subcategory_name = 'Building Blocks';
UPDATE subcategories SET subcategory_image = 'https://placehold.co/500x500/B8935F/FFFFFF?font=roboto&text=Board+Games' WHERE category_id = 7 AND subcategory_name = 'Board Games';
UPDATE subcategories SET subcategory_image = 'https://placehold.co/500x500/4A6B5E/FFFFFF?font=roboto&text=Dolls' WHERE category_id = 7 AND subcategory_name = 'Dolls';
UPDATE subcategories SET subcategory_image = 'https://placehold.co/500x500/C9A876/FFFFFF?font=roboto&text=Puzzles' WHERE category_id = 7 AND subcategory_name = 'Puzzles';
UPDATE subcategories SET subcategory_image = 'https://placehold.co/500x500/2E4F46/FFFFFF?font=roboto&text=Outdoor+Toys' WHERE category_id = 7 AND subcategory_name = 'Outdoor Toys';
UPDATE subcategories SET subcategory_image = 'https://placehold.co/500x500/D6B37A/FFFFFF?font=roboto&text=Fruits+and+Vegetables' WHERE category_id = 8 AND subcategory_name = 'Fruits & Vegetables';
UPDATE subcategories SET subcategory_image = 'https://placehold.co/500x500/3E6357/FFFFFF?font=roboto&text=Dairy+Products' WHERE category_id = 8 AND subcategory_name = 'Dairy Products';
UPDATE subcategories SET subcategory_image = 'https://placehold.co/500x500/8C6D3F/FFFFFF?font=roboto&text=Bakery' WHERE category_id = 8 AND subcategory_name = 'Bakery';
UPDATE subcategories SET subcategory_image = 'https://placehold.co/500x500/1F3B34/FFFFFF?font=roboto&text=Snacks' WHERE category_id = 8 AND subcategory_name = 'Snacks';
UPDATE subcategories SET subcategory_image = 'https://placehold.co/500x500/B8935F/FFFFFF?font=roboto&text=Beverages' WHERE category_id = 8 AND subcategory_name = 'Beverages';
UPDATE subcategories SET subcategory_image = 'https://placehold.co/500x500/4A6B5E/FFFFFF?font=roboto&text=Rice+and+Grains' WHERE category_id = 8 AND subcategory_name = 'Rice & Grains';
UPDATE subcategories SET subcategory_image = 'https://placehold.co/500x500/C9A876/FFFFFF?font=roboto&text=Pulses' WHERE category_id = 8 AND subcategory_name = 'Pulses';
UPDATE subcategories SET subcategory_image = 'https://placehold.co/500x500/2E4F46/FFFFFF?font=roboto&text=Cooking+Oil' WHERE category_id = 8 AND subcategory_name = 'Cooking Oil';
UPDATE subcategories SET subcategory_image = 'https://placehold.co/500x500/D6B37A/FFFFFF?font=roboto&text=Spices' WHERE category_id = 8 AND subcategory_name = 'Spices';
UPDATE subcategories SET subcategory_image = 'https://placehold.co/500x500/3E6357/FFFFFF?font=roboto&text=Tea+and+Coffee' WHERE category_id = 8 AND subcategory_name = 'Tea & Coffee';
UPDATE subcategories SET subcategory_image = 'https://placehold.co/500x500/8C6D3F/FFFFFF?font=roboto&text=Frozen+Foods' WHERE category_id = 8 AND subcategory_name = 'Frozen Foods';
UPDATE subcategories SET subcategory_image = 'https://placehold.co/500x500/1F3B34/FFFFFF?font=roboto&text=Baby+Food' WHERE category_id = 8 AND subcategory_name = 'Baby Food';

-- =====================================================
-- New subcategories for categories that had none (9-20)
-- Includes images directly in the INSERT
-- =====================================================

-- Automotive
INSERT INTO subcategories (category_id, subcategory_name, subcategory_description, subcategory_image) VALUES (9, 'Car Accessories', 'Interior and exterior car accessories', 'https://placehold.co/400x400/2E4F46/FFFFFF?font=roboto&text=Car+Accessories');
INSERT INTO subcategories (category_id, subcategory_name, subcategory_description, subcategory_image) VALUES (9, 'Bike Accessories', 'Two-wheeler accessories', 'https://placehold.co/400x400/D6B37A/FFFFFF?font=roboto&text=Bike+Accessories');
INSERT INTO subcategories (category_id, subcategory_name, subcategory_description, subcategory_image) VALUES (9, 'Car Care', 'Cleaning and detailing products', 'https://placehold.co/400x400/3E6357/FFFFFF?font=roboto&text=Car+Care');
INSERT INTO subcategories (category_id, subcategory_name, subcategory_description, subcategory_image) VALUES (9, 'Helmets', 'Riding helmets and gear', 'https://placehold.co/400x400/8C6D3F/FFFFFF?font=roboto&text=Helmets');
INSERT INTO subcategories (category_id, subcategory_name, subcategory_description, subcategory_image) VALUES (9, 'Car Electronics', 'Dash cams, GPS and audio', 'https://placehold.co/400x400/1F3B34/FFFFFF?font=roboto&text=Car+Electronics');
INSERT INTO subcategories (category_id, subcategory_name, subcategory_description, subcategory_image) VALUES (9, 'Tyres & Wheels', 'Tyres, rims and alignment gear', 'https://placehold.co/400x400/B8935F/FFFFFF?font=roboto&text=Tyres+and+Wheels');
INSERT INTO subcategories (category_id, subcategory_name, subcategory_description, subcategory_image) VALUES (9, 'Lubricants & Oils', 'Engine oils and lubricants', 'https://placehold.co/400x400/4A6B5E/FFFFFF?font=roboto&text=Lubricants+and+Oils');
INSERT INTO subcategories (category_id, subcategory_name, subcategory_description, subcategory_image) VALUES (9, 'Tools & Equipment', 'Automotive tools', 'https://placehold.co/400x400/C9A876/FFFFFF?font=roboto&text=Tools+and+Equipment');

-- Pet Supplies
INSERT INTO subcategories (category_id, subcategory_name, subcategory_description, subcategory_image) VALUES (10, 'Dog Food', 'Nutrition for dogs', 'https://placehold.co/400x400/2E4F46/FFFFFF?font=roboto&text=Dog+Food');
INSERT INTO subcategories (category_id, subcategory_name, subcategory_description, subcategory_image) VALUES (10, 'Cat Food', 'Nutrition for cats', 'https://placehold.co/400x400/D6B37A/FFFFFF?font=roboto&text=Cat+Food');
INSERT INTO subcategories (category_id, subcategory_name, subcategory_description, subcategory_image) VALUES (10, 'Pet Toys', 'Toys for pets', 'https://placehold.co/400x400/3E6357/FFFFFF?font=roboto&text=Pet+Toys');
INSERT INTO subcategories (category_id, subcategory_name, subcategory_description, subcategory_image) VALUES (10, 'Pet Grooming', 'Grooming tools and products', 'https://placehold.co/400x400/8C6D3F/FFFFFF?font=roboto&text=Pet+Grooming');
INSERT INTO subcategories (category_id, subcategory_name, subcategory_description, subcategory_image) VALUES (10, 'Pet Beds & Furniture', 'Beds, crates and furniture', 'https://placehold.co/400x400/1F3B34/FFFFFF?font=roboto&text=Pet+Beds+and+Furniture');
INSERT INTO subcategories (category_id, subcategory_name, subcategory_description, subcategory_image) VALUES (10, 'Leashes & Collars', 'Walking accessories', 'https://placehold.co/400x400/B8935F/FFFFFF?font=roboto&text=Leashes+and+Collars');
INSERT INTO subcategories (category_id, subcategory_name, subcategory_description, subcategory_image) VALUES (10, 'Aquarium Supplies', 'Fish tanks and accessories', 'https://placehold.co/400x400/4A6B5E/FFFFFF?font=roboto&text=Aquarium+Supplies');

-- Office Supplies
INSERT INTO subcategories (category_id, subcategory_name, subcategory_description, subcategory_image) VALUES (11, 'Stationery', 'Pens, pencils and notebooks', 'https://placehold.co/400x400/C9A876/FFFFFF?font=roboto&text=Stationery');
INSERT INTO subcategories (category_id, subcategory_name, subcategory_description, subcategory_image) VALUES (11, 'Office Furniture', 'Desks and office chairs', 'https://placehold.co/400x400/2E4F46/FFFFFF?font=roboto&text=Office+Furniture');
INSERT INTO subcategories (category_id, subcategory_name, subcategory_description, subcategory_image) VALUES (11, 'Printers & Ink', 'Printers, cartridges and toners', 'https://placehold.co/400x400/D6B37A/FFFFFF?font=roboto&text=Printers+and+Ink');
INSERT INTO subcategories (category_id, subcategory_name, subcategory_description, subcategory_image) VALUES (11, 'Files & Folders', 'Filing and organization', 'https://placehold.co/400x400/3E6357/FFFFFF?font=roboto&text=Files+and+Folders');
INSERT INTO subcategories (category_id, subcategory_name, subcategory_description, subcategory_image) VALUES (11, 'Whiteboards', 'Whiteboards and markers', 'https://placehold.co/400x400/8C6D3F/FFFFFF?font=roboto&text=Whiteboards');
INSERT INTO subcategories (category_id, subcategory_name, subcategory_description, subcategory_image) VALUES (11, 'Office Electronics', 'Calculators and shredders', 'https://placehold.co/400x400/1F3B34/FFFFFF?font=roboto&text=Office+Electronics');

-- Health & Wellness
INSERT INTO subcategories (category_id, subcategory_name, subcategory_description, subcategory_image) VALUES (12, 'Vitamins & Supplements', 'Nutritional supplements', 'https://placehold.co/400x400/B8935F/FFFFFF?font=roboto&text=Vitamins+and+Supplements');
INSERT INTO subcategories (category_id, subcategory_name, subcategory_description, subcategory_image) VALUES (12, 'Medical Devices', 'BP monitors, thermometers', 'https://placehold.co/400x400/4A6B5E/FFFFFF?font=roboto&text=Medical+Devices');
INSERT INTO subcategories (category_id, subcategory_name, subcategory_description, subcategory_image) VALUES (12, 'First Aid', 'First aid essentials', 'https://placehold.co/400x400/C9A876/FFFFFF?font=roboto&text=First+Aid');
INSERT INTO subcategories (category_id, subcategory_name, subcategory_description, subcategory_image) VALUES (12, 'Ayurveda', 'Ayurvedic health products', 'https://placehold.co/400x400/2E4F46/FFFFFF?font=roboto&text=Ayurveda');
INSERT INTO subcategories (category_id, subcategory_name, subcategory_description, subcategory_image) VALUES (12, 'Fitness Trackers', 'Health monitoring wearables', 'https://placehold.co/400x400/D6B37A/FFFFFF?font=roboto&text=Fitness+Trackers');
INSERT INTO subcategories (category_id, subcategory_name, subcategory_description, subcategory_image) VALUES (12, 'Sexual Wellness', 'Wellness and protection products', 'https://placehold.co/400x400/3E6357/FFFFFF?font=roboto&text=Sexual+Wellness');

-- Baby Products
INSERT INTO subcategories (category_id, subcategory_name, subcategory_description, subcategory_image) VALUES (13, 'Diapers & Wipes', 'Baby diapers and wipes', 'https://placehold.co/400x400/8C6D3F/FFFFFF?font=roboto&text=Diapers+and+Wipes');
INSERT INTO subcategories (category_id, subcategory_name, subcategory_description, subcategory_image) VALUES (13, 'Baby Feeding', 'Bottles and feeding accessories', 'https://placehold.co/400x400/1F3B34/FFFFFF?font=roboto&text=Baby+Feeding');
INSERT INTO subcategories (category_id, subcategory_name, subcategory_description, subcategory_image) VALUES (13, 'Baby Clothing', 'Clothes for infants', 'https://placehold.co/400x400/B8935F/FFFFFF?font=roboto&text=Baby+Clothing');
INSERT INTO subcategories (category_id, subcategory_name, subcategory_description, subcategory_image) VALUES (13, 'Strollers & Prams', 'Baby transport', 'https://placehold.co/400x400/4A6B5E/FFFFFF?font=roboto&text=Strollers+and+Prams');
INSERT INTO subcategories (category_id, subcategory_name, subcategory_description, subcategory_image) VALUES (13, 'Baby Toys', 'Toys for infants and toddlers', 'https://placehold.co/400x400/C9A876/FFFFFF?font=roboto&text=Baby+Toys');
INSERT INTO subcategories (category_id, subcategory_name, subcategory_description, subcategory_image) VALUES (13, 'Nursery', 'Cribs and nursery furniture', 'https://placehold.co/400x400/2E4F46/FFFFFF?font=roboto&text=Nursery');

-- Jewellery
INSERT INTO subcategories (category_id, subcategory_name, subcategory_description, subcategory_image) VALUES (14, 'Gold Jewellery', 'Gold rings, chains and earrings', 'https://placehold.co/400x400/D6B37A/FFFFFF?font=roboto&text=Gold+Jewellery');
INSERT INTO subcategories (category_id, subcategory_name, subcategory_description, subcategory_image) VALUES (14, 'Silver Jewellery', 'Silver ornaments', 'https://placehold.co/400x400/3E6357/FFFFFF?font=roboto&text=Silver+Jewellery');
INSERT INTO subcategories (category_id, subcategory_name, subcategory_description, subcategory_image) VALUES (14, 'Diamond Jewellery', 'Diamond studded jewellery', 'https://placehold.co/400x400/8C6D3F/FFFFFF?font=roboto&text=Diamond+Jewellery');
INSERT INTO subcategories (category_id, subcategory_name, subcategory_description, subcategory_image) VALUES (14, 'Fashion Jewellery', 'Imitation and fashion jewellery', 'https://placehold.co/400x400/1F3B34/FFFFFF?font=roboto&text=Fashion+Jewellery');
INSERT INTO subcategories (category_id, subcategory_name, subcategory_description, subcategory_image) VALUES (14, 'Bridal Jewellery', 'Wedding and bridal sets', 'https://placehold.co/400x400/B8935F/FFFFFF?font=roboto&text=Bridal+Jewellery');

-- Watches
INSERT INTO subcategories (category_id, subcategory_name, subcategory_description, subcategory_image) VALUES (15, 'Men''s Watches', 'Watches for men', 'https://placehold.co/400x400/4A6B5E/FFFFFF?font=roboto&text=Mens+Watches');
INSERT INTO subcategories (category_id, subcategory_name, subcategory_description, subcategory_image) VALUES (15, 'Women''s Watches', 'Watches for women', 'https://placehold.co/400x400/C9A876/FFFFFF?font=roboto&text=Womens+Watches');
INSERT INTO subcategories (category_id, subcategory_name, subcategory_description, subcategory_image) VALUES (15, 'Smart Watches', 'Fitness and smartwatches', 'https://placehold.co/400x400/2E4F46/FFFFFF?font=roboto&text=Smart+Watches');
INSERT INTO subcategories (category_id, subcategory_name, subcategory_description, subcategory_image) VALUES (15, 'Luxury Watches', 'Premium watch brands', 'https://placehold.co/400x400/D6B37A/FFFFFF?font=roboto&text=Luxury+Watches');
INSERT INTO subcategories (category_id, subcategory_name, subcategory_description, subcategory_image) VALUES (15, 'Watch Accessories', 'Straps and cases', 'https://placehold.co/400x400/3E6357/FFFFFF?font=roboto&text=Watch+Accessories');

-- Luggage & Travel
INSERT INTO subcategories (category_id, subcategory_name, subcategory_description, subcategory_image) VALUES (16, 'Suitcases', 'Hard and soft luggage', 'https://placehold.co/400x400/8C6D3F/FFFFFF?font=roboto&text=Suitcases');
INSERT INTO subcategories (category_id, subcategory_name, subcategory_description, subcategory_image) VALUES (16, 'Travel Backpacks', 'Backpacks for travel', 'https://placehold.co/400x400/1F3B34/FFFFFF?font=roboto&text=Travel+Backpacks');
INSERT INTO subcategories (category_id, subcategory_name, subcategory_description, subcategory_image) VALUES (16, 'Duffel Bags', 'Gym and travel duffels', 'https://placehold.co/400x400/B8935F/FFFFFF?font=roboto&text=Duffel+Bags');
INSERT INTO subcategories (category_id, subcategory_name, subcategory_description, subcategory_image) VALUES (16, 'Travel Accessories', 'Neck pillows, locks and organizers', 'https://placehold.co/400x400/4A6B5E/FFFFFF?font=roboto&text=Travel+Accessories');
INSERT INTO subcategories (category_id, subcategory_name, subcategory_description, subcategory_image) VALUES (16, 'Laptop Bags', 'Bags for laptops', 'https://placehold.co/400x400/C9A876/FFFFFF?font=roboto&text=Laptop+Bags');

-- Furniture
INSERT INTO subcategories (category_id, subcategory_name, subcategory_description, subcategory_image) VALUES (17, 'Sofas', 'Sofas and couches', 'https://placehold.co/400x400/2E4F46/FFFFFF?font=roboto&text=Sofas');
INSERT INTO subcategories (category_id, subcategory_name, subcategory_description, subcategory_image) VALUES (17, 'Beds', 'Bed frames', 'https://placehold.co/400x400/D6B37A/FFFFFF?font=roboto&text=Beds');
INSERT INTO subcategories (category_id, subcategory_name, subcategory_description, subcategory_image) VALUES (17, 'Dining Sets', 'Dining tables and chairs', 'https://placehold.co/400x400/3E6357/FFFFFF?font=roboto&text=Dining+Sets');
INSERT INTO subcategories (category_id, subcategory_name, subcategory_description, subcategory_image) VALUES (17, 'Wardrobes', 'Storage wardrobes', 'https://placehold.co/400x400/8C6D3F/FFFFFF?font=roboto&text=Wardrobes');
INSERT INTO subcategories (category_id, subcategory_name, subcategory_description, subcategory_image) VALUES (17, 'Office Chairs', 'Ergonomic chairs', 'https://placehold.co/400x400/1F3B34/FFFFFF?font=roboto&text=Office+Chairs');
INSERT INTO subcategories (category_id, subcategory_name, subcategory_description, subcategory_image) VALUES (17, 'Bookshelves', 'Bookshelves and racks', 'https://placehold.co/400x400/B8935F/FFFFFF?font=roboto&text=Bookshelves');

-- Garden & Outdoor
INSERT INTO subcategories (category_id, subcategory_name, subcategory_description, subcategory_image) VALUES (18, 'Gardening Tools', 'Tools for gardening', 'https://placehold.co/400x400/4A6B5E/FFFFFF?font=roboto&text=Gardening+Tools');
INSERT INTO subcategories (category_id, subcategory_name, subcategory_description, subcategory_image) VALUES (18, 'Plants & Seeds', 'Plants, seeds and saplings', 'https://placehold.co/400x400/C9A876/FFFFFF?font=roboto&text=Plants+and+Seeds');
INSERT INTO subcategories (category_id, subcategory_name, subcategory_description, subcategory_image) VALUES (18, 'Outdoor Furniture', 'Patio and garden furniture', 'https://placehold.co/400x400/2E4F46/FFFFFF?font=roboto&text=Outdoor+Furniture');
INSERT INTO subcategories (category_id, subcategory_name, subcategory_description, subcategory_image) VALUES (18, 'Grills & Outdoor Cooking', 'BBQ and outdoor cooking', 'https://placehold.co/400x400/D6B37A/FFFFFF?font=roboto&text=Grills+and+Outdoor+Cooking');
INSERT INTO subcategories (category_id, subcategory_name, subcategory_description, subcategory_image) VALUES (18, 'Pots & Planters', 'Planters and pots', 'https://placehold.co/400x400/3E6357/FFFFFF?font=roboto&text=Pots+and+Planters');

-- Musical Instruments
INSERT INTO subcategories (category_id, subcategory_name, subcategory_description, subcategory_image) VALUES (19, 'Guitars', 'Acoustic and electric guitars', 'https://placehold.co/400x400/8C6D3F/FFFFFF?font=roboto&text=Guitars');
INSERT INTO subcategories (category_id, subcategory_name, subcategory_description, subcategory_image) VALUES (19, 'Keyboards & Pianos', 'Keyboards and digital pianos', 'https://placehold.co/400x400/1F3B34/FFFFFF?font=roboto&text=Keyboards+and+Pianos');
INSERT INTO subcategories (category_id, subcategory_name, subcategory_description, subcategory_image) VALUES (19, 'Drums & Percussion', 'Drum kits and percussion', 'https://placehold.co/400x400/B8935F/FFFFFF?font=roboto&text=Drums+and+Percussion');
INSERT INTO subcategories (category_id, subcategory_name, subcategory_description, subcategory_image) VALUES (19, 'Wind Instruments', 'Flutes, trumpets and more', 'https://placehold.co/400x400/4A6B5E/FFFFFF?font=roboto&text=Wind+Instruments');
INSERT INTO subcategories (category_id, subcategory_name, subcategory_description, subcategory_image) VALUES (19, 'Studio Equipment', 'Recording and studio gear', 'https://placehold.co/400x400/C9A876/FFFFFF?font=roboto&text=Studio+Equipment');

-- Industrial & Scientific
INSERT INTO subcategories (category_id, subcategory_name, subcategory_description, subcategory_image) VALUES (20, 'Lab Equipment', 'Laboratory instruments', 'https://placehold.co/400x400/2E4F46/FFFFFF?font=roboto&text=Lab+Equipment');
INSERT INTO subcategories (category_id, subcategory_name, subcategory_description, subcategory_image) VALUES (20, 'Safety Equipment', 'Industrial safety gear', 'https://placehold.co/400x400/D6B37A/FFFFFF?font=roboto&text=Safety+Equipment');
INSERT INTO subcategories (category_id, subcategory_name, subcategory_description, subcategory_image) VALUES (20, 'Measuring Tools', 'Measuring and testing tools', 'https://placehold.co/400x400/3E6357/FFFFFF?font=roboto&text=Measuring+Tools');
INSERT INTO subcategories (category_id, subcategory_name, subcategory_description, subcategory_image) VALUES (20, 'Industrial Supplies', 'General industrial supplies', 'https://placehold.co/400x400/8C6D3F/FFFFFF?font=roboto&text=Industrial+Supplies');
INSERT INTO subcategories (category_id, subcategory_name, subcategory_description, subcategory_image) VALUES (20, 'Power Tools', 'Industrial power tools', 'https://placehold.co/400x400/1F3B34/FFFFFF?font=roboto&text=Power+Tools');

