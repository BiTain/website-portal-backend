
-- password: id=1=admin, id=2=baole26072003, id=3->10=password3...->password10
INSERT INTO participant(id, email, username, full_name, phone_number, password, role, avatar, enabled, created_date, created_by)
VALUES
    (1,'admin@gmail.com', 'admin', 'Administrator', 
		'$2y$10$VVQ9TABhq7/Z8OdydrQnXOhySW.p6r8cLgt3pYjhk/z5s45SRQ4G6', 
        'ADMIN', 
        'https://res.cloudinary.com/dixswfj8d/image/upload/v1710918890/quiz-website-images/participants/admin.png', 
        1, NOW(), 1),
    (2,'baole26072003@gmail.com', 'baole26072003', 'Lê Quốc Bảo', 
		'$2y$10$CMsEj8tqZTc/BKl3W/C2vOhw.0Je89jVDP4gnj7k.ZbgoWajDVdLi', 'ADMIN', 
        'https://res.cloudinary.com/dixswfj8d/image/upload/v1710918896/quiz-website-images/participants/lequocbao.jpg', 
        1, NOW(), 1),
    (3,'truc98depgai@gmail.com', 'phamthanhtruc', 'Phạm Thanh Trúc', 
		'$2y$10$nCpDEV5jLw5uhXHi.x0rTesRUUkvN5DUA1yxKau0vnrKWBHsKzEzW', 'USER', 
        'https://res.cloudinary.com/dixswfj8d/image/upload/v1710918904/quiz-website-images/participants/phamthanhtruc.jpg', 
        0, NOW(), 1),
    (4,'minhduc@gmail.com', 'minhduc', 'Minh Đức', 
    '$2y$10$FSlzrFV2noXRoDsdbqNkuOIy.ehLoQBRBGsR6UwfONaFPKI4chH.S', 
    'USER', 
    'https://res.cloudinary.com/dixswfj8d/image/upload/v1710918899/quiz-website-images/participants/minhduc.jpg', 1, NOW(), 1),
    (5,'thuylinh@gmail.com', 'thuylinh', 'Mỹ Hòa Thúy Linh', '$2y$10$JLXm4XAQ84tshvoezSHah.jvwtrfXum230irWm5GWGgW4MPJNv.zK', 
    'USER', 
    'https://res.cloudinary.com/dixswfj8d/image/upload/v1710918900/quiz-website-images/participants/myhoathuylinh.jpg', 1, NOW(), 1),
    (6,'vandat@gmail.com', 'vandat', 'Văn Đạt Đỗ', '$2y$10$grM2iS94i3JJEmdVzhtzm.tY/UR4lDXCKu2RZpWy9OxG9serXXr1O', 'USER', 'https://res.cloudinary.com/dixswfj8d/image/upload/v1710918905/quiz-website-images/participants/vandatdo.jpg', 0, NOW(), 1),
    (7,'linhchi@gmail.com', 'linhchi', 'Linh Chi', '$2y$10$AKYyz5kKCMTnofPp/yDNmekAVnoUCy07AXrUGbSJpWritET4QXFf.', 'USER', 'https://res.cloudinary.com/dixswfj8d/image/upload/v1710918897/quiz-website-images/participants/linhchi.webp', 1, NOW(), 1),
    (8,'quanghuy@gmail.com', 'ngoquanghuy', 'Ngô Quang Huy', '$2y$10$kYKMNfLfXWZL6VMFue3QO.1E3Te09IA8uiTlKudHt/byxmyHJ0JMm', 'USER', 'https://res.cloudinary.com/dixswfj8d/image/upload/v1710918903/quiz-website-images/participants/ngoquanghuy.jpg', 1, NOW(), 1),
    (9,'honganh@gmail.com', 'honganh', 'Hồng Anh', '$2y$10$VqbfKioN1fdcvpA9LweMTOoDydAk46Mzrq1ui3f1ynJttdYBPqfsm', 'USER', 'https://res.cloudinary.com/dixswfj8d/image/upload/v1710918892/quiz-website-images/participants/honganh.jpg', 0, NOW(), 1),
    (10,'khanhhoa@gmail.com', 'khanhhoa', 'Khánh Hoa', '$2y$10$J9b8LYvfP8pdzrh4ssyuAeVboj.wypn4MV2RdSN0kguJKAYtcC2XO', 'USER', 'https://res.cloudinary.com/dixswfj8d/image/upload/v1710918894/quiz-website-images/participants/khanhhoa.webp', 1, NOW(), 1)
;


-- Inserting sample data into 'category'
INSERT INTO category (name, image, parent_id, created_at, updated_at, enabled) VALUES
('Electronics', 'electronics.jpg', NULL, NOW(), NOW(), 1),
('Fashion', 'fashion.jpg', NULL, NOW(), NOW(), 1),
('Home Appliances', 'home_appliances.jpg', NULL, NOW(), NOW(), 1),
('Books', 'books.jpg', NULL, NOW(), NOW(), 1),
('Toys', 'toys.jpg', NULL, NOW(), NOW(), 1),
('Sports', 'sports.jpg', NULL, NOW(), NOW(), 1),
('Grocery', 'grocery.jpg', NULL, NOW(), NOW(), 1),
('Health & Beauty', 'health_beauty.jpg', NULL, NOW(), NOW(), 1),
('Gadgets', 'gadgets.jpg', NULL, NOW(), NOW(), 1),
('Furniture', 'furniture.jpg', NULL, NOW(), NOW(), 1);

-- Inserting hierarchical data for the categories
-- Assuming the IDs for the categories start from 1 to 10 in the order they were inserted

-- Electronics Subcategories (Level 2)
INSERT INTO category (name, image, parent_id, created_at, updated_at, enabled) VALUES
('Mobile Phones', 'mobile_phones.jpg', 1, NOW(), NOW(), 1),
('Laptops', 'laptops.jpg', 1, NOW(), NOW(), 1),
('Televisions', 'televisions.jpg', 1, NOW(), NOW(), 1);

-- Fashion Subcategories (Level 2)
INSERT INTO category (name, image, parent_id, created_at, updated_at, enabled) VALUES
('Men', 'men_fashion.jpg', 2, NOW(), NOW(), 1),
('Women', 'women_fashion.jpg', 2, NOW(), NOW(), 1),
('Accessories', 'accessories_fashion.jpg', 2, NOW(), NOW(), 1);

-- Sub-subcategories for Electronics -> Mobile Phones (Level 3)
INSERT INTO category (name, image, parent_id, created_at, updated_at, enabled) VALUES
('Smartphones', 'smartphones.jpg', (SELECT id FROM category WHERE name = 'Mobile Phones'), NOW(), NOW(), 1),
('Basic Phones', 'basic_phones.jpg', (SELECT id FROM category WHERE name = 'Mobile Phones'), NOW(), NOW(), 1);

-- Sub-subcategories for Fashion -> Women (Level 3)
INSERT INTO category (name, image, parent_id, created_at, updated_at, enabled) VALUES
('Dresses', 'dresses.jpg', (SELECT id FROM category WHERE name = 'Women'), NOW(), NOW(), 1),
('Handbags', 'handbags.jpg', (SELECT id FROM category WHERE name = 'Women'), NOW(), NOW(), 1);

-- Level 4 - Further subcategories for Smartphones
INSERT INTO category (name, image, parent_id, created_at, updated_at, enabled) VALUES
('Android Phones', 'android_phones.jpg', (SELECT id FROM category WHERE name = 'Smartphones'), NOW(), NOW(), 1),
('iPhones', 'iphones.jpg', (SELECT id FROM category WHERE name = 'Smartphones'), NOW(), NOW(), 1);

-- Level 5 - A subcategory for Android Phones
INSERT INTO category (name, image, parent_id, created_at, updated_at, enabled) VALUES
('Flagship Android Phones', 'flagship_android.jpg', (SELECT id FROM category WHERE name = 'Android Phones'), NOW(), NOW(), 1);

-- Level 6 - A specific model for Flagship Android Phones
INSERT INTO category (name, image, parent_id, created_at, updated_at, enabled) VALUES
('Galaxy S Series', 'galaxy_s.jpg', (SELECT id FROM category WHERE name = 'Flagship Android Phones'), NOW(), NOW(), 1);

-- Note: Adjust the parent_id based on actual IDs after insertion if necessary.
-- The sub-subcategory insertion uses a SELECT subquery to find the parent ID based on the name for clarity in this example.

-- Home Appliances Subcategories (Level 2)
INSERT INTO category (name, image, parent_id, created_at, updated_at, enabled) VALUES
('Kitchen Appliances', 'kitchen_appliances.jpg', 3, NOW(), NOW(), 1),
('Air Conditioners', 'air_conditioners.jpg', 3, NOW(), NOW(), 1),
('Washing Machines', 'washing_machines.jpg', 3, NOW(), NOW(), 1);

-- Books Subcategories (Level 2)
INSERT INTO category (name, image, parent_id, created_at, updated_at, enabled) VALUES
('Fiction', 'fiction_books.jpg', 4, NOW(), NOW(), 1),
('Non-Fiction', 'non_fiction_books.jpg', 4, NOW(), NOW(), 1),
('Children', 'children_books.jpg', 4, NOW(), NOW(), 1);

-- Toys Subcategories (Level 2)
INSERT INTO category (name, image, parent_id, created_at, updated_at, enabled) VALUES
('Educational Toys', 'educational_toys.jpg', 5, NOW(), NOW(), 1),
('Action Figures', 'action_figures.jpg', 5, NOW(), NOW(), 1),
('Board Games', 'board_games.jpg', 5, NOW(), NOW(), 1);

-- Sports Subcategories (Level 2)
INSERT INTO category (name, image, parent_id, created_at, updated_at, enabled) VALUES
('Outdoor', 'outdoor_sports.jpg', 6, NOW(), NOW(), 1),
('Indoor', 'indoor_sports.jpg', 6, NOW(), NOW(), 1),
('Gym & Fitness', 'gym_fitness.jpg', 6, NOW(), NOW(), 1);

-- Grocery Subcategories (Level 2)
INSERT INTO category (name, image, parent_id, created_at, updated_at, enabled) VALUES
('Fruits & Vegetables', 'fruits_vegetables.jpg', 7, NOW(), NOW(), 1),
('Dairy & Eggs', 'dairy_eggs.jpg', 7, NOW(), NOW(), 1),
('Beverages', 'beverages.jpg', 7, NOW(), NOW(), 1);

-- Health & Beauty Subcategories (Level 2)
INSERT INTO category (name, image, parent_id, created_at, updated_at, enabled) VALUES
('Skincare', 'skincare.jpg', 8, NOW(), NOW(), 1),
('Makeup', 'makeup.jpg', 8, NOW(), NOW(), 1),
('Healthcare', 'healthcare.jpg', 8, NOW(), NOW(), 1);

-- Gadgets Subcategories (Level 2)
INSERT INTO category (name, image, parent_id, created_at, updated_at, enabled) VALUES
('Smart Watches', 'smart_watches.jpg', 9, NOW(), NOW(), 1),
('Cameras', 'cameras.jpg', 9, NOW(), NOW(), 1),
('Drones', 'drones.jpg', 9, NOW(), NOW(), 1);

-- Furniture Subcategories (Level 2)
INSERT INTO category (name, image, parent_id, created_at, updated_at, enabled) VALUES
('Living Room', 'living_room_furniture.jpg', 10, NOW(), NOW(), 1),
('Bedroom', 'bedroom_furniture.jpg', 10, NOW(), NOW(), 1),
('Office', 'office_furniture.jpg', 10, NOW(), NOW(), 1);

-- This continuation provides a wider spread of categories across different parent categories.
-- Adjustments to `parent_id` may be necessary based on actual ID assignments in your database.


-- Inserting sample data into 'store'
INSERT INTO store (name, url_store, user_id, created_at, updated_at) VALUES
('Tech Gadgets Galore', 'http://techgadgets.example.com', 1, NOW(), NOW()),
('Everyday Fashion Finds', 'http://fashionfinds.example.com', 2, NOW(), NOW()),
('Home Sweet HomeGoods', 'http://homegoods.example.com', 3, NOW(), NOW()),
('Bookworm"s Paradise', 'http://bookworms.example.com', 4, NOW(), NOW()),
('Toy Universe', 'http://toyuniverse.example.com', 5, NOW(), NOW()),
('Athletic Life', 'http://athleticlife.example.com', 6, NOW(), NOW()),
('The Grocery Aisle', 'http://groceryaisle.example.com', 7, NOW(), NOW()),
('Beauty and Wellness', 'http://beautywellness.example.com', 8, NOW(), NOW()),
('Gadget Central', 'http://gadgetcentral.example.com', 9, NOW(), NOW()),
('Furniture Fantasy', 'http://furniturefantasy.example.com', 10, NOW(), NOW());


-- Continue with 'store', 'product', 'image', 'comment', and 'url_product' tables, ensuring to respect the foreign key constraints.
-- Inserting sample data into 'product'
INSERT INTO product (name, price, slug, category_id, store_id, created_at, updated_at) VALUES
('Smart LED TV 42"', 450.00, 'smart-led-tv-42', 1, 1, NOW(), NOW()),
('Wireless Bluetooth Headphones', 75.99, 'wireless-bluetooth-headphones', 1, 1, NOW(), NOW()),
('Coffee Maker 3000', 120.50, 'coffee-maker-3000', 3, 2, NOW(), NOW()),
('E-Reader ReadLight', 130.00, 'e-reader-readlight', 4, 3, NOW(), NOW()),
('Deluxe Yoga Mat', 45.00, 'deluxe-yoga-mat', 6, 4, NOW(), NOW()),
('Electric Stand Mixer', 350.00, 'electric-stand-mixer', 3, 5, NOW(), NOW()),
('Men’s Running Shoes', 85.00, 'mens-running-shoes', 2, 6, NOW(), NOW()),
('Smartphone Supreme Pro', 999.99, 'smartphone-supreme-pro', 1, 7, NOW(), NOW()),
('Leather Office Chair', 199.99, 'leather-office-chair', 10, 8, NOW(), NOW()),
('Gaming Console Pro', 299.99, 'gaming-console-pro', 1, 9, NOW(), NOW()),
('Compact Digital Camera', 299.99, 'compact-digital-camera', 1, 1, NOW(), NOW()),
('Bluetooth Speaker High Bass', 150.00, 'bluetooth-speaker-high-bass', 1, 2, NOW(), NOW()),
('Organic Green Tea 100 Bags', 15.99, 'organic-green-tea', 7, 2, NOW(), NOW()),
('Classic Wooden Desk', 249.99, 'classic-wooden-desk', 10, 1, NOW(), NOW()),
('Professional Hair Dryer', 129.99, 'professional-hair-dryer', 8, 2, NOW(), NOW()),
('Advanced Drone with Camera', 759.99, 'advanced-drone-camera', 1, 1, NOW(), NOW()),
('All-Seasons Down Jacket', 95.00, 'all-seasons-down-jacket', 2, 2, NOW(), NOW()),
('Multi-Tool Pocket Knife', 29.99, 'multi-tool-pocket-knife', 6, 2, NOW(), NOW()),
('Android Smartwatch LX3', 199.99, 'android-smartwatch-lx3', 1, 1, NOW(), NOW()),
('Portable External SSD 1TB', 109.99, 'portable-external-ssd-1tb', 1, 2, NOW(), NOW());

-- Inserting sample data into 'comment'
INSERT INTO comment (reply, product_id, user_id, parent_comment_id, created_at, updated_at) VALUES
('This is the best purchase I have ever made!', 1, 2, NULL, NOW(), NOW()),
('Highly recommended for anyone needing quality sound on the go!', 2, 3, NULL, NOW(), NOW()),
('A must-have for any serious photographer, amazing quality.', 11, 4, NULL, NOW(), NOW()),
('The battery life on this drone is incredible. Worth every penny.', 14, 5, NULL, NOW(), NOW()),
('Very comfortable and the material is top-notch.', 7, 6, NULL, NOW(), NOW()),
('I gifted this to my nephew and he loves it. Sturdy and fun!', 15, 7, NULL, NOW(), NOW()),
('Excellent for my morning runs, does not slip at all.', 8, 8, NULL, NOW(), NOW()),
('I’ve been using this SSD for a month, and the speeds are unmatched.', 20, 9, NULL, NOW(), NOW()),
('This smartwatch has all the features I need and the battery lasts!', 19, 10, NULL, NOW(), NOW()),
('Finally a pair of headphones that don"t hurt my ears!', 2, 1, NULL, NOW(), NOW());

-- Inserting replies to comments
INSERT INTO comment (reply, product_id, user_id, parent_comment_id, created_at, updated_at) VALUES
('Totally agree! I have one and it changed the way I enjoy movies.', 1, 3, 1, NOW(), NOW()),
('Yes! I’ve been using it for weeks and the sound is still as crisp as day one.', 2, 4, 2, NOW(), NOW()),
('I’m glad you liked it! It’s been my go-to camera for travel.', 11, 5, 3, NOW(), NOW()),
('Does it work well in low light conditions?', 11, 6, 3, NOW(), NOW()),
('Bought these on sale and they’re great for the price.', 7, 2, 5, NOW(), NOW()),
('Has anyone tried using this with a phone camera?', 14, 7, 4, NOW(), NOW()),
('I’m thinking of getting one for my morning yoga sessions. Is it slip-resistant?', 8, 8, 7, NOW(), NOW()),
('Can it handle heavy file transfers like video editing?', 20, 9, 8, NOW(), NOW()),
('How is the interface? Is it user-friendly for non-techies?', 19, 10, 9, NOW(), NOW()),
('Do they come with a case?', 2, 1, 10, NOW(), NOW());


-- Inserting sample data into 'image'
INSERT INTO image (url, product_id, store_id, created_by, updated_by) VALUES
('/images/products/led_tv.jpg', 1, 1, 1, 1),
('/images/products/headphones.jpg', 2, 1, 1, 1),
('/images/products/coffee_maker.jpg', 3, 2, 2, 2),
('/images/products/e_reader.jpg', 4, 3, 3, 3),
('/images/products/yoga_mat.jpg', 5, 4, 4, 4),
('/images/products/mixer.jpg', 6, 5, 5, 5),
('/images/products/shoes.jpg', 7, 6, 6, 6),
('/images/products/smartphone.jpg', 8, 7, 7, 7),
('/images/products/chair.jpg', 9, 8, 8, 8),
('/images/products/console.jpg', 10, 9, 9, 9);

-- Inserting sample data into 'url_product'
INSERT INTO url_product (url, product_id) VALUES
('http://www.electronics.example.com/led_tv', 1),
('http://www.audiophile.example.com/headphones', 2),
('http://www.homeappliances.example.com/coffee_maker', 3),
('http://www.bookstore.example.com/e_reader', 4),
('http://www.sportsstore.example.com/yoga_mat', 5),
('http://www.kitchenwares.example.com/mixer', 6),
('http://www.fashionstore.example.com/shoes', 7),
('http://www.techstore.example.com/smartphone', 8),
('http://www.furniturehouse.example.com/chair', 9),
('http://www.gaminghub.example.com/console', 10);


