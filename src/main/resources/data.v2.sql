
-- password: id=1=admin, id=2=baole26072003, id=3=ngovantuyen, id=4=nguyenthoquangvinh, id=5->10=password5->password10
INSERT INTO user(id, email, username, full_name, phone_number, password, role, avatar, enabled, created_at, created_by)
VALUES
    (1,'admin@gmail.com', 'admin', 'Administrator', '0987654321',
		'$2y$10$KA8rFF19RqCQaGCnSJBHUuNfZzyfH.2oi.6yBs/aYbmooOBgzqNZO', 'ADMIN',
		'https://res.cloudinary.com/dixswfj8d/image/upload/v1712326278/product-portal-website-images/users/admin.png', 
        1, NOW(), 1),
    (2,'baole26072003@gmail.com', 'baole26072003', 'Lê Quốc Bảo', '0123456789',
		'$2y$10$CMsEj8tqZTc/BKl3W/C2vOhw.0Je89jVDP4gnj7k.ZbgoWajDVdLi', 'SELLER', 
        'https://res.cloudinary.com/dixswfj8d/image/upload/v1712326310/product-portal-website-images/users/lequocbao.jpg', 
        1, NOW(), 1),
    (3,'ngovantuyen@gmail.com', 'ngovantuyen', 'Ngô Văn Tuyến', '0901234567',
		'$2y$10$asCrTFt.supv2scQSwFpgua93TR2xS1WEjMWABOvwoMo/8zrjSQGO', 'SELLER', 
        'https://res.cloudinary.com/dixswfj8d/image/upload/v1712370663/product-portal-website-images/users/ngovantuyen.jpg', 
        0, NOW(), 1),
    (4,'nguyenthoquangvinh@gmail.com', 'nguyenthoquangvinh', 'Nguyễn Thọ Quang Vinh', '0888777666',
		'$2y$10$hr6UyRVsiKvF3w.FfbzU4.7yH8Veg7ll4Nc2WjhXPco/aX9UeRzTW', 'SELLER', 
		'https://res.cloudinary.com/dixswfj8d/image/upload/v1712370779/product-portal-website-images/users/nguyenthoquangvinh.jpg', 
        1, NOW(), 1),
    (5,'thuylinh@gmail.com', 'thuylinh', 'Mỹ Hòa Thúy Linh', '0777000555',
		'$2y$10$JLXm4XAQ84tshvoezSHah.jvwtrfXum230irWm5GWGgW4MPJNv.zK', 'SELLER', 
		'https://res.cloudinary.com/dixswfj8d/image/upload/v1712326296/product-portal-website-images/users/myhoathuylinh.jpg', 
        1, NOW(), 1),
    (6,'vandat@gmail.com', 'vandat', 'Văn Đạt Đỗ', '0999888777',
		'$2y$10$grM2iS94i3JJEmdVzhtzm.tY/UR4lDXCKu2RZpWy9OxG9serXXr1O', 'SELLER', 
        'https://res.cloudinary.com/dixswfj8d/image/upload/v1712326288/product-portal-website-images/users/vandatdo.jpg', 
        0, NOW(), 1),
    (7,'linhchi@gmail.com', 'linhchi', 'Linh Chi', '0333222111',
		'$2y$10$AKYyz5kKCMTnofPp/yDNmekAVnoUCy07AXrUGbSJpWritET4QXFf.', 'SELLER', 
        'https://res.cloudinary.com/dixswfj8d/image/upload/v1712326291/product-portal-website-images/users/linhchi.webp', 
        1, NOW(), 1),
    (8,'quanghuy@gmail.com', 'ngoquanghuy', 'Ngô Quang Huy', '0555444333',
		'$2y$10$kYKMNfLfXWZL6VMFue3QO.1E3Te09IA8uiTlKudHt/byxmyHJ0JMm', 'SELLER', 
		'https://res.cloudinary.com/dixswfj8d/image/upload/v1712326305/product-portal-website-images/users/ngoquanghuy.jpg', 
        1, NOW(), 1),
    (9,'honganh@gmail.com', 'honganh', 'Hồng Anh', '0666555222',
		'$2y$10$VqbfKioN1fdcvpA9LweMTOoDydAk46Mzrq1ui3f1ynJttdYBPqfsm', 'SELLER', 
        'https://res.cloudinary.com/dixswfj8d/image/upload/v1712326281/product-portal-website-images/users/honganh.jpg', 
        0, NOW(), 1),
    (10,'khanhhoa@gmail.com', 'khanhhoa', 'Khánh Hoa', '0876543210',
		'$2y$10$J9b8LYvfP8pdzrh4ssyuAeVboj.wypn4MV2RdSN0kguJKAYtcC2XO', 'SELLER', 
		'https://res.cloudinary.com/dixswfj8d/image/upload/v1712326286/product-portal-website-images/users/khanhhoa.webp', 
		1, NOW(), 1),
	(11, 'mylinh@gmail.com', 'mylinh', 'Mỹ Linh', '0945213684',
    '$2a$10$JjgWz6jBE4Or8xXLdrMpBuE1PZqMN3Bbvs0yNWt8oLed8vi.APXwS', 'SELLER', 
    'http://res.cloudinary.com/dixswfj8d/image/upload/v1716952010/product-portal-website-images/general/file_hkgbjn.jpg', 
    1, now(), 1),
    (12, 'danghuy@gmail.com', 'danghuy', 'Đặng Huy', '0513625491',
    '$2a$12$w6/PUYDS9NKuXxD56DZ4Ku8PUX4/skqgwOEqUjTRB2Mnb5A9ZF5L6', 'SELLER', 
    'https://img.freepik.com/free-photo/attractive-young-smiling-asian-woman-outdoors-portrait-city_7861-3507.jpg?t=st=1716951806~exp=1716955406~hmac=0a21af325a32afc7650d58fbeb7412f1a0f689e399355e02bfe3ddf63d3fd026&w=996', 
    1, now(), 1),
    (13, 'congvu@gmail.com', 'congvu', 'Công Vũ', '0921536428',
    '$2a$12$bpQYEvYWkohtvTRSDt9RgeGR5aFdes4.anZmDlMUzS/kshyTaoq0K', 'SELLER', 
    'https://img.freepik.com/free-photo/confident-asian-woman-face-portrait-smiling_53876-144815.jpg?t=st=1716953235~exp=1716956835~hmac=7e59cd0e7e44617fd614f910af6b5e28a33be1e49ef10aba610366efa0045119&w=826', 
    1, now(), 1),
    (14, 'hoanguyen@gmail.com', 'hoanguyen', 'Hoàng Uyên', '0913256482',
    '$2a$12$dLrDztuwyWenn97j1nFaFeRGxjSAlexpfgmGFhI5hxv8uF/ZOyKbe', 'SELLER', 
    'https://img.freepik.com/free-photo/asian-man-isolated-expressing-emotions_1303-26709.jpg?t=st=1716951818~exp=1716955418~hmac=4963e8fdd087b48f4fa93f28f2f7a1cf1baedfff42ea3540ecf10b53c1676f18&w=360', 
    1, now(), 1)
;

INSERT INTO category (id, name, image, parent_id, enabled, created_at, created_by) VALUES
(1,'Điện thoại di động', '', NULL, 1, NOW(), 1),
(2,'Thời trang nam', '', NULL, 1, NOW(), 1),
(3,'Thời trang nữ', '', NULL, 1, NOW(), 1),
(4,'Thiết bị gia dụng', '', NULL, 1, NOW(), 1),
(5,'Sách', '', NULL, 1, NOW(), 1),
(6,'Máy tính bảng', '', NULL, 1, NOW(), 1),
(7,'Tivi', '', NULL, 1, NOW(), 1),
(8,'Tai nghe', '', NULL, 1, NOW(), 1)

-- Subcategories for 'Đồ điện tử'
-- (5, 'Điện thoại di động', '', 1, 1, NOW(), 1),
-- (6, 'Máy tính bảng', '', 1, 1, NOW(), 1),
-- -- Subcategories for 'Thời trang'
-- (7, 'Quần áo nam', '', 2, 1, NOW(), 1),
-- (8, 'Quần áo nữ', '', 2, 1, NOW(), 1),
-- -- Subcategories for 'Thiết bị gia dụng'
-- (9, 'Máy giặt', '', 3, 1, NOW(), 1),
-- (10, 'Tủ lạnh', '', 3, 1, NOW(), 1),
-- -- Subcategories for 'Sách'
-- (11, 'Sách kỹ năng sống', '', 4, 1, NOW(), 1),
-- (12, 'Sách tiểu thuyết', '', 4, 1, NOW(), 1),
-- -- Level 2 subcategories for 'Điện thoại di động'
-- (13, 'Điện thoại cảm ứng', '', 5, 1, NOW(), 1),
-- (14, 'Điện thoại cục gạch', '', 5, 1, NOW(), 1),
-- (15, 'Áo sơ mi nam', '', 7, 1, NOW(), 1)
;

INSERT INTO store (id,name, url_store, user_id, created_at, created_by) VALUES
(1,'Fpt Shop', 'https://fptshop.com.vn/', 5, NOW(), 5),
(2,'Routine', 'https://routine.vn/', 7, NOW(), 7),
(3,'Siêu mọt sách shop', 'https://sieumotsach.com/', 8, NOW(), 8),
(4,'Sacomex', 'https://sacomex.vn/', 10, NOW(), 10),
(5,'CellphoneS', 'https://cellphones.com.vn/', 2, NOW(), 2),
(6,'Shop sách', 'https://shopsach.com/', 3, NOW(), 3),
(7,'Viettel Store', 'https://viettelstore.vn/', 4, NOW(), 4),
(8,'Electrolux', 'https://www.electrolux.vn/', 11, NOW(), 11),
(9,'Viettablet', 'https://www.viettablet.com/', 12, NOW(), 12),
(10,'Meta', 'https://meta.vn/',13, NOW(), 13),
(11, 'IEF', 'https://www.ief-vn.com/', 14, NOW(), 14),
(12, 'Hacom', 'https://hacom.vn/', 6, NOW(), 6),
(13, 'Nguyễn Công PC', 'https://nguyencongpc.vn/', 9, NOW(), 9)
;
insert into image(store_id, url) VALUES
(1, 'https://res.cloudinary.com/dixswfj8d/image/upload/v1712910892/product-portal-website-images/stores/logo-fpt-shop.jpg'),
(1, 'https://res.cloudinary.com/dixswfj8d/image/upload/v1712910889/product-portal-website-images/stores/FPT%20FAKER%20SHOP%202.webp'),
(2, 'https://res.cloudinary.com/dixswfj8d/image/upload/v1712910902/product-portal-website-images/stores/Men%20l%C3%AC%20shop%201.jpg'),
(2, 'https://res.cloudinary.com/dixswfj8d/image/upload/v1712910904/product-portal-website-images/stores/Men%20l%C3%AC%20shop%202.jpg'),
(3, 'https://res.cloudinary.com/dixswfj8d/image/upload/v1712910907/product-portal-website-images/stores/Si%C3%AAu%20s%C3%A1ch%20shop%201.jpg'),
(3, 'https://res.cloudinary.com/dixswfj8d/image/upload/v1712910909/product-portal-website-images/stores/Si%C3%AAu%20s%C3%A1ch%20shop%202.jpg'),
(3, 'https://res.cloudinary.com/dixswfj8d/image/upload/v1712910911/product-portal-website-images/stores/Si%C3%AAu%20s%C3%A1ch%20shop%203.jpg'),
(4, 'https://res.cloudinary.com/dixswfj8d/image/upload/v1712910913/product-portal-website-images/stores/Ph%E1%BB%A5%20ki%E1%BB%87n%20gia%20%C4%91%C3%ACnh%20shop%201.png'),
(5, 'https://res.cloudinary.com/dixswfj8d/image/upload/v1712910916/product-portal-website-images/stores/Iphone%20shop%201.jpg'),
(5, 'https://res.cloudinary.com/dixswfj8d/image/upload/v1712910917/product-portal-website-images/stores/Iphone%20shop%202.jpg'),
(6, 'https://res.cloudinary.com/dixswfj8d/image/upload/v1712910919/product-portal-website-images/stores/L%C3%A0m%20gi%C3%A0u%20shop%201.webp'),
(6, 'https://res.cloudinary.com/dixswfj8d/image/upload/v1712910921/product-portal-website-images/stores/L%C3%A0m%20gi%C3%A0u%20shop%202.jpg'),
(7, 'https://res.cloudinary.com/dixswfj8d/image/upload/v1712910922/product-portal-website-images/stores/%C4%90i%E1%BB%87n%20tho%E1%BA%A1i%20tu%E1%BB%95i%20th%C6%A1%20store%201.jpg'),
(8, 'https://res.cloudinary.com/dixswfj8d/image/upload/v1712910924/product-portal-website-images/stores/Chuy%C3%AAn%20m%C3%A1y%20gi%E1%BA%B7t.jpg'),
(9, 'https://res.cloudinary.com/dixswfj8d/image/upload/v1712910926/product-portal-website-images/stores/Gaming%20mobile%20store%201.jpg'),
(10, 'https://res.cloudinary.com/dixswfj8d/image/upload/v1712910897/product-portal-website-images/stores/Tr%E1%BB%8B%20n%C3%B3ng%20store.jpg'),
(10, 'https://res.cloudinary.com/dixswfj8d/image/upload/v1712910896/product-portal-website-images/stores/Tr%E1%BB%8B%20n%C3%B3ng%20store%202.jpg'),
(11, 'https://res.cloudinary.com/dixswfj8d/image/upload/v1712910898/product-portal-website-images/stores/N%E1%BB%AF%20t%C3%ADnh%20store%201.jpg'),
(11, 'https://res.cloudinary.com/dixswfj8d/image/upload/v1712910901/product-portal-website-images/stores/N%E1%BB%AF%20t%C3%ADnh%20store%202.png')
;

INSERT INTO product (id, name, price, slug, category_id, store_id, created_at, created_by) VALUES
(1,'Smart Tivi Samsung Crystal UHD 4K 55 inch', 8390000, 'smart-tivi-samsung-crystal-uhd-4k-55-inch', 7, 1, NOW(), 5),
(2,'Tai nghe gaming Sony MDR - ZX110AP có mic', 540000,
	'tai-nghe-gaming-sony-mdr-zx110ap-co-mic', 8, 1, NOW(), 5),
    
(3,'iPad Pro 11 inch 2022 M2 Wifi 128GB', 23990000, 'ipad-pro-11-inch-2022-m2-wifi-128gb', 6, 5, NOW(), 2),
(4,'Iphone 14 pro max', 34500000, 'iphone-14-pro-max', 1, 5, NOW(), 2),
(5,'Iphone xs max', 11200000, 'iphone-xs-max', 1, 5, NOW(), 2),

(6,'NUBIA RED MAGIC 6S', 31250000, 'nubia-red-magic-6s', 1, 9, NOW(), 12),

(7,'Áo Polo Nam Premium Tay Ngắn Phối Viền Cổ Form Fitted', 638000, 
	'ao-polo-nam-premium-tay-ngan-phoi-vien-co-form-fitted', 2, 2, NOW(), 7),
(8,'Áo Tanktop Thể Thao Nam Sát Nách Trơn Form Fitted - 10S24TTOA001', 738000, 
	'ao-tanktop-the-thao-nam-sat-nach-tron-form-fitted-10s24ttoa001', 2, 2, NOW(), 7),
(9,'Quần Short Thể Thao Nam Ống Rộng Phối Viền Form Straight', 1200000, 
	'quan-short-the-thao-nam-ong-rong-phoi-vien-form-straight', 2, 2, NOW(), 7),
    
(10,'Áo Phông Ngắn Tay Cổ Viền Áo Phông Nữ Ngắn Tay Dễ Phối Thường Ngày Thon Gọn Rộng Rãi Mẫu Mới Hè', 277000, 
	'ao-phong-ngan-tay-co-vien-ao-phong-nu-ngan-tay-de-phoi-thuong-ngay-thon-gon-rong-rai-mau-moi-he', 3, 11, NOW(), 14),
(11,'Áo Phông Ngắn Tay Trễ Vai Bông Hoa Tulip Chất Cho Nữ Áo Rộng Rãi Ngọt Ngào Mẫu Mới Mùa Hè Năm Cảm Giác Thiết Kế', 497000, 
	'ao-phong-ngan-tay-tre-vai-bong-hoa-tulip-chat-cho-nu-ao-rong-rai-mau-moi-mua-he-nam-cam-giac-thiet-ke', 3, 11, NOW(), 14),
(12,'Quần Short Thời Trang Dễ Phối Tôn Dáng Rộng Rãi Cạp Cao Mẫu Mới Mùa Hè Hàn Quốc Quần Âu Nữ Màu Hồng', 567000, 
	'quan-short-thoi-trang-de-phoi-ton-dang-rong-rai-cap-cao-mau-moi-mua-he-han-quoc-quan-au-nu-mau-hong', 3, 11, NOW(), 14),
    
(13,'Suy Nghĩ Của Người Giàu - Steve Siebold', 98000, 
	'suy-nghi-cua-nguoi-giau-steve-siebold', 5, 6, NOW(), 3),
(14,'Think And Grow Rich - Nghĩ Giàu Và Làm Giàu', 88000, 
	'think-and-grow-rich-nghi-giau-va-lam-giau', 5, 6, NOW(), 3),
    
(15,'Con Chó Nhỏ Mang Giỏ Hoa Hồng', 90000, 
	'con-cho-nho-mang-gio-hoa-hong', 5, 3, NOW(), 8),
(16,'Cho đi là còn mãi', 51200, 
	'cho-di-la-con-mai', 5, 3, NOW(), 8),
(17,'Colorful', 52000, 
	'colorful', 5, 3, NOW(), 8),
    
(18,'Di Động NOKIA 105 4G', 650000, 
	'di-dong-nokia-105-4g', 1, 7, NOW(), 4),
(19,'Di Động NOKIA 110 4G', 650000, 
	'di-dong-nokia-110-4g', 1, 7, NOW(), 4),
    
(20,'Máy Hút Bụi và Thổi Bụi 12 Lít YILI YL6263A', 995000, 
	'may-hut-bui-12-lit-yili-yl6263a', 4 , 4, NOW(), 10),
(21,'Máy chà sàn công nghiệp Hiclean HC 154A', 7900000, 
	'may-cha-san-cong-nghiep-hiclean-hc-154a', 4 , 4, NOW(), 10),
(22,'Máy Lọc Nước Tinh Khiết RO Tích Hợp Nóng Lạnh FujiE RO-1200 CAB HYDROGEN', 5500000, 
	'may-loc-nuoc-tinh-khiet-RO-tich-hop-nong-lanh-fujie-ro-1200-cab-hydrogen', 4 , 4, NOW(), 10),
(23,'Đèn sưởi hồng ngoại Kungfu KF-SHN03', 390000, 
	'den-suoi-hong-ngoai-kungfu-kf-shn03', 4 , 4, NOW(), 10),
    
(24,'Máy giặt cửa ngang 10kg UltimateCare 100 - Trắng', 9490000, 
	'may-giat-cua-ngang-10kg-ultimatecare-100-trang', 4 , 8, NOW(), 11),
(25,'Máy giặt sấy 8/5kg UltimateCare 900 - Trắng', 16290000, 
	'may-giat-say-8/5kg-ulimatecare-900', 4 , 8, NOW(), 11)
;
INSERT INTO image (product_id, url) VALUES
(1, 'https://images.fpt.shop/unsafe/fit-in/585x390/filters:quality(90):fill(white)/fptshop.com.vn/Uploads/Originals/2023/8/14/638276226335927339_smart-tivi-samsung-uhd-4k-au7002-5.jpg'),
(2, 'https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/BaoPK/6BiMatVeLGV10/Tai-nghe-choang-dau-co-mic-sony-mdr-zx110ap-1.jpg'),
(3, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/i/p/ipad-pro-13-select-202210.png'),
(4, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/i/p/iphone-14-pro_2__5.png'),
(5, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/i/p/iphone_xs_max_64gb_1_1.jpg'),
(6, 'https://cdn.viettablet.com/images/thumbnails/480/516/detailed/48/zte-nubia-red-magic-6-chinh-hang-cau-hinh-gia.jpg'),
(7, 'https://routine.vn/media/amasty/webp/catalog/product/cache/5b5632a96492396f42c72e22fdd64763/a/o/ao-polo-nam-27-10s24pol002p_bright_white_1__1_jpg.webp'),
(8, 'https://routine.vn/media/amasty/webp/catalog/product/cache/5b5632a96492396f42c72e22fdd64763/a/o/ao-tanktop-the-thao-7-10s24ttoa001_black-_1__1_jpg.webp'),
(9, 'https://routine.vn/media/amasty/amoptmobile/catalog/product/cache/5b5632a96492396f42c72e22fdd64763/q/u/quan-short-the-thao-7-10s24psha002_alloy-_1__1_jpg.webp'),
(10, 'https://img.fantaskycdn.com/2f5f999239e5d291143537213b9f2b7e_750x.jpeg'),
(11, 'https://img.fantaskycdn.com/5a6276e880597bcf34731379f829ac91_750x.jpeg'),
(12, 'https://img.fantaskycdn.com/b827ebf03ae502b356706c782973d1bd_750x.jpeg'),
(13, 'https://salt.tikicdn.com/ts/product/94/cf/ef/37c4f95dcc4a5189c568374ec0c46228.jpg'),
(14, 'https://cf.shopee.vn/file/a9d599bb52d542ddb0bf08187b6174d6'),
(15, 'https://sieumotsach.com/wp-content/uploads/2019/05/conchonhobiathuong.jpg'),
(16, 'https://sieumotsach.com/wp-content/uploads/2019/05/image_146618.jpg'),
(17, 'https://sieumotsach.com/wp-content/uploads/2019/05/1557410668-Colorful-768x512.jpg'),
(18, 'https://cdn1.viettelstore.vn/Images/Product/ProductImage/2011382129.jpeg'),
(19, 'https://cdn1.viettelstore.vn/Images/Product/ProductImage/149465518.jpeg'),
(20, 'https://sacomex.vn/upload/sanpham/may-hut-bui-12-lit-tai-da-nang-1260.jpg'),
(21, 'https://sacomex.vn/upload/sanpham/may-cha-san-cong-nghiep-hiclean-hc-154a-sacomex-8677.jpg'),
(22, 'https://sacomex.vn/upload/sanpham/nong-lanh-1200-m-6282.jpg'),
(23, 'https://sacomex.vn/upload/sanpham/den-suoi-hong-ngoai-kungfu-kf-shn03-sacomex-1791.jpg'),
(24, 'https://www.electrolux.vn/globalassets/importimageproduct/original-first-image/ewf1025dqwb-img-1500x1500.png?width=464'),
(25, 'https://www.electrolux.vn/globalassets/d2c-vn/washing-machines---washer-dryers/vn-d2c-eww8023aewa_fr_cl-1500x1500.png?width=464')
;
INSERT INTO url_product (product_id, url) VALUES
(1, 'https://fptshop.com.vn/tivi/smart-tivi-samsung-crystal-uhd-4k-55-inch-ua55au7002'),
(2, 'https://fptshop.com.vn/phu-kien/tai-nghe-choang-dau-co-mic-sony-mdr-zx110ap'),
(3, 'https://cellphones.com.vn/ipad-pro-2022-11-inch-m2.html'),
(4, 'https://cellphones.com.vn/iphone-14-pro-max.html'),
(5, 'https://cellphones.com.vn/apple-iphone-xs-max-64-gb-cu-99.html'),
(6, 'https://www.viettablet.com/zte-nubia-red-magic-6'),
(7, 'https://routine.vn/ao-polo-nam-premium-tay-ngan-phoi-co-form-fitted-10s24pol002p.html'),
(8, 'https://routine.vn/ao-tanktop-the-thao-nam-sat-nach-form-fitted-10s24ttoa001.html'),
(9, 'https://routine.vn/quan-short-the-thao-nam-ong-rong-form-straight-10s24psha002.html'),
(10, 'https://www.ief-vn.com/collections/t-shirt-ao-thunt/products/ao-phong-ng%E1%BA%AFn-tay-c%E1%BB%95-vi%E1%BB%81n-ao-phong-n%E1%BB%AF-ng%E1%BA%AFn-tay-d%E1%BB%85-ph%E1%BB%91i-th%C6%B0%E1%BB%9Dng-ngay-thon-g%E1%BB%8Dn-r%E1%BB%99ng-rai-m%E1%BA%ABu-m%E1%BB%9Bi-he?cfb=0d597cf0-2411-4c81-8871-0cbb515bc5f8&scm=collection.v29.177.202.203.204&score=0.2&ssp=-'),
(11, 'https://www.ief-vn.com/collections/t-shirt-ao-thunt/products/ao-phong-ng%E1%BA%AFn-tay-tr%E1%BB%85-vai-bong-hoa-tulip-ch%E1%BA%A5t-cho-n%E1%BB%AF-ao-r%E1%BB%99ng-rai-ng%E1%BB%8Dt-ngao-m%E1%BA%ABu-m%E1%BB%9Bi-mua-he-nam-c%E1%BA%A3m-giac-thi%E1%BA%BFt-k%E1%BA%BF?cfb=0d597cf0-2411-4c81-8871-0cbb515bc5f8&scm=collection.v29.177.202.203.204&score=1&ssp=-'),
(12, 'https://www.ief-vn.com/collections/all-products-t%E1%BA%A5t-c%E1%BA%A3-s%E1%BA%A3n-ph%E1%BA%A9m/products/qu%E1%BA%A7n-short-th%E1%BB%9Di-trang-d%E1%BB%85-ph%E1%BB%91i-ton-dang-r%E1%BB%99ng-rai-c%E1%BA%A1p-cao-m%E1%BA%ABu-m%E1%BB%9Bi-mua-he-han-qu%E1%BB%91c-qu%E1%BA%A7n-au-n%E1%BB%AF-mau-h%E1%BB%93ng'),
(13, 'https://shopsach.com/suy-nghi-cua-nguoi-giau-nti193433502.html'),
(14, 'https://shopsach.com/sach-nghi-giau-va-lam-giau-nsh2752783238.html'),
(15, 'https://sieumotsach.com/shop/con-cho-nho-mang-gio-hoa-hong-bia-mem/'),
(16, 'https://sieumotsach.com/shop/cho-di-la-con-mai/'),
(17, 'https://sieumotsach.com/shop/colorful/'),
(18, 'https://viettelstore.vn/dien-thoai/nokia-105-4g-pid199010.html'),
(19, 'https://viettelstore.vn/dien-thoai/nokia-110-4g-pid199011.html'),
(20, 'https://sacomex.vn/may-hut-bui-12-lit-yili-yl6263a.html'),
(21, 'https://sacomex.vn/may-cha-san-cong-nghiep-hiclean-hc-154a.html'),
(22, 'https://sacomex.vn/may-loc-nuoc-tinh-khiet-ro-tich-hop-nong-lanh-fujie-ro1200-cab-hydrogen.html'),
(23, 'https://sacomex.vn/den-suoi-hong-ngoai-kungfu-kfshn03.html'),
(24, 'https://www.electrolux.vn/thiet-bi/may-giat/ewf1025dqwb/'),
(25, 'https://www.electrolux.vn/thiet-bi/may-giat/eww8023aewa/')
;

INSERT INTO comment (id, reply, product_id, user_id, parent_comment_id, created_at, created_by) VALUES
(1, 'Cái tivi này mà xem phim con heo thì đúng bài', 1, 9, null, now(), 9),
(2, 'Tai nghe này bắn pubg phê vãi chưởng', 2, 6, null, now(), 6),
(3, 'Sách này hay đấy đọc song cái t giàu lun', 13, 2, null, now(), 2),
(4, 'Aó polo của cái shop này khá là ok', 7, 6, null, now(), 6),
(5, 'Giá cả hợp lý, cạnh tranh.', 5, 5, NULL, NOW(), 5),
(6, 'Camera chụp ảnh đẹp, quay video sắc nét.', 6, 6, NULL, NOW(), 6),
(7, 'Hiệu năng mạnh mẽ, chơi game mượt mà.', 7, 7, NULL, NOW(), 7),
(8, 'Dung lượng pin trâu, sử dụng cả ngày không lo hết pin.', 8, 8, NULL, NOW(), 8),
(9, 'Màn hình hiển thị đẹp, màu sắc chân thực.', 9, 9, NULL, NOW(), 9),
(10, 'Chất lượng âm thanh tốt, nghe nhạc hay.', 10, 10, NULL, NOW(), 10),

(11, 'Đã mua 2 chiếc cho bố mẹ, ông bà đều rất thích.', 11, 1, NULL, NOW(), 11),
(12, 'Chất liệu vải mềm mại, thoáng mát.', 12, 2, NULL, NOW(), 12),
(13, 'Form dáng đẹp, tôn dáng người mặc.', 13, 3, NULL, NOW(), 13),
(14, 'Giá cả hợp lý so với chất lượng sản phẩm.', 14, 4, NULL, NOW(), 14),
(15, 'Giao hàng nhanh, đóng gói chắc chắn.', 15, 5, NULL, NOW(), 15),

(16, 'Sách hay, nội dung hữu ích,值得推荐.', 16, 6, NULL, NOW(), 16),
(17, 'Đọc xong cuốn sách này thay đổi hoàn toàn tư duy của mình.', 17, 7, NULL, NOW(), 17),
(18, 'Giao hàng nhanh, đóng gói đẹp.', 18, 8, NULL, NOW(), 18),
(19, 'Giá rẻ, phù hợp với học sinh, sinh viên.', 19, 9, NULL, NOW(), 19),
(20, 'Chất lượng tốt, bền bỉ.', 20, 10, NULL, NOW(), 20),

(21, 'Máy hoạt động êm ái, hút bụi hiệu quả.', 21, 1, NULL, NOW(), 21),
(22, 'Tiết kiệm điện, dễ sử dụng.', 22, 2, NULL, NOW(), 22),
(23, 'Dung tích lớn, đáp ứng nhu cầu sử dụng cho gia đình.', 23, 3, NULL, NOW(), 23),
(24, 'Thiết kế sang trọng, hiện đại.', 24, 4, NULL, NOW(), 24),
(25, 'Giặt sạch quần áo, không làm nhăn hay sờn vải.', 25, 5, NULL, NOW(), 25)
;

-- inserting replies to comments
-- Reply cho comment 1
-- INSERT INTO comment (reply, product_id, user_id, parent_comment_id, created_at, created_by) VALUES
-- ('Đúng vậy, xem phim bom tấn với tivi này thì tuyệt vời.', 1, 1, 1, NOW(), 10);

-- -- Reply cho comment 2
-- INSERT INTO comment (reply, product_id, user_id, parent_comment_id, created_at, created_by) VALUES
-- ('Mình cũng đang chơi PUBG với tai nghe này, rất ưng ý.', 2, 2, 2, NOW(), 11);

-- -- Reply cho comment 3
-- INSERT INTO comment (reply, product_id, user_id, parent_comment_id, created_at, created_by) VALUES
-- ('Mình đồng ý, đọc sách hay giúp thay đổi tư duy và cuộc sống.', 13, 3, 3, NOW(), 12);

-- -- Reply cho comment 4
-- INSERT INTO comment (reply, product_id, user_id, parent_comment_id, created_at, created_by) VALUES
-- ('Mình cũng đang mặc áo polo này, chất lượng tốt và form dáng đẹp.', 7, 4, 4, NOW(), 13);

-- -- Reply cho comment 5
-- INSERT INTO comment (reply, product_id, user_id, parent_comment_id, created_at, created_by) VALUES
-- ('Mình mua sản phẩm này được 2 tháng rồi, vẫn rất hài lòng.', 5, 5, 5, NOW(), 14);

-- -- Reply cho comment 6
-- INSERT INTO comment (reply, product_id, user_id, parent_comment_id, created_at, created_by) VALUES
-- ('Mình cũng thích camera của điện thoại này, chụp ảnh và quay video rất đẹp.', 6, 6, 6, NOW(), 15);

-- -- Reply cho comment 7
-- INSERT INTO comment (reply, product_id, user_id, parent_comment_id, created_at, created_by) VALUES
-- ('Mình chơi game Liên Quân Mobile với điện thoại này, mượt mà không giật lag.', 7, 7, 7, NOW(), 16);

-- -- Reply cho comment 8
-- INSERT INTO comment (reply, product_id, user_id, parent_comment_id, created_at, created_by) VALUES
-- ('Mình sử dụng điện thoại này cả ngày mà không lo hết pin.', 8, 8, 8, NOW(), 17);

-- -- Reply cho comment 9
-- INSERT INTO comment (reply, product_id, user_id, parent_comment_id, created_at, created_by) VALUES
-- ('Mình xem phim trên điện thoại này rất thích, màn hình hiển thị đẹp và màu sắc chân thực.', 9, 9, 9, NOW(), 18);

-- -- Reply cho comment 10
-- INSERT INTO comment (reply, product_id, user_id, parent_comment_id, created_at, created_by) VALUES
-- ('Mình nghe nhạc với tai nghe này rất hay, âm thanh sống động.', 10, 10, 10, NOW(), 19);

-- -- Reply cho comment 11
-- INSERT INTO comment (reply, product_id, user_id, parent_comment_id, created_at, created_by) VALUES
-- ('Mình cũng mua 2 chiếc cho bố mẹ, họ rất thích món quà này.', 11, 5, 11, NOW(), 20);

-- -- Reply cho comment 12
-- INSERT INTO comment (reply, product_id, user_id, parent_comment_id, created_at, created_by) VALUES
-- ('Mình mặc áo này đi chơi rất thoải mái, chất liệu vải mềm mại và thoáng mát.', 12, 3, 12, NOW(), 21);

-- -- Reply cho comment 13
-- INSERT INTO comment (reply, product_id, user_id, parent_comment_id, created_at, created_by) VALUES
-- ('Mình mua váy này để đi dự tiệc, form dáng đẹp và tôn dáng người mặc.', 13, 6, 13, NOW(), 22);


