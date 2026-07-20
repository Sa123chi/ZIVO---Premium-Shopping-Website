USE zivo_db;


-- Mobiles
INSERT INTO products
(seller_id,category_id,subcategory_id,brand_id,product_name,sku,description,price,discount_price,stock_quantity,weight,color,warranty)
VALUES
(1,1,1,1,'Apple iPhone 16 Pro','APL-IP16PRO-256','Apple iPhone 16 Pro 256GB Black Titanium',129900,119900,50,0.22,'Black','1 Year'),
(1,1,1,2,'Apple iPhone 16','APL-IP16-128','Apple iPhone 16 128GB Blue',89900,84900,45,0.20,'Blue','1 Year'),
(1,1,1,3,'Samsung Galaxy S25 Ultra','SAM-S25ULTRA-512','Samsung Galaxy S25 Ultra 512GB Titanium Gray',139999,129999,40,0.24,'Titanium Gray','1 Year'),
(1,1,1,4,'Samsung Galaxy S25','SAM-S25-256','Samsung Galaxy S25 256GB Navy',89999,83999,35,0.21,'Navy','1 Year'),
(1,1,1,5,'OnePlus 13','ONE-13-256','OnePlus 13 256GB Snapdragon 8 Elite',69999,65999,30,0.21,'Black','1 Year'),
(1,1,1,6,'OnePlus Nord 5','ONE-NORD5-256','OnePlus Nord 5 256GB 5G Smartphone',34999,31999,40,0.20,'Blue','1 Year'),
(1,1,1,7,'Google Pixel 9 Pro','GOO-PXL9PRO-256','Google Pixel 9 Pro 256GB Hazel',109999,99999,25,0.20,'Hazel','1 Year'),
(1,1,1,8,'Google Pixel 9','GOO-PXL9-128','Google Pixel 9 128GB Obsidian',79999,74999,28,0.19,'Obsidian','1 Year'),
(1,1,1,9,'Xiaomi 15','XIA-15-512','Xiaomi 15 512GB Leica Camera',75999,70999,32,0.21,'White','1 Year'),
(1,1,1,10,'Realme GT 7 Pro','RLM-GT7PRO-512','Realme GT 7 Pro 512GB Gaming Smartphone',59999,55999,30,0.22,'Orange','1 Year');

-- Laptops
INSERT INTO products
(seller_id,category_id,subcategory_id,brand_id,product_name,sku,description,price,discount_price,stock_quantity,weight,color,warranty)
VALUES
(1,1,2,11,'Dell Inspiron 15 3530','DEL-INSP15-3530','Dell Inspiron 15 3530 Intel Core i5, 16GB RAM, 512GB SSD',58999,54999,25,1.65,'Carbon Black','1 Year'),
(1,1,2,12,'Dell XPS 13','DEL-XPS13-9340','Dell XPS 13 Intel Core Ultra 7, 16GB RAM, 512GB SSD',149999,144999,12,1.17,'Platinum Silver','1 Year'),
(1,1,2,13,'HP Pavilion 15','HP-PAV15-I5','HP Pavilion 15 Intel Core i5, 16GB RAM, 512GB SSD',62999,58999,20,1.75,'Natural Silver','1 Year'),
(1,1,2,14,'HP Spectre x360 14','HP-SPX360-14','HP Spectre x360 OLED Intel Core Ultra 7 Laptop',154999,149999,10,1.44,'Nightfall Black','1 Year'),
(1,1,2,15,'Lenovo IdeaPad Slim 5','LEN-IPSLIM5-R7','Lenovo IdeaPad Slim 5 AMD Ryzen 7, 16GB RAM, 512GB SSD',67999,63999,22,1.46,'Cloud Grey','1 Year'),
(1,1,2,16,'Lenovo Yoga Slim 7i','LEN-YOGA7I','Lenovo Yoga Slim 7i Intel Evo Laptop',99999,94999,15,1.35,'Storm Grey','1 Year'),
(1,1,2,17,'Apple MacBook Air M3 13-inch','APL-MBA-M3-13','Apple MacBook Air 13-inch with M3 Chip and 256GB SSD',114900,109900,18,1.24,'Silver','1 Year'),
(1,1,2,18,'ASUS Vivobook S15 OLED','ASUS-VBS15-OLED','ASUS Vivobook S15 OLED Intel Core Ultra 7 Laptop',89999,85999,16,1.50,'Cool Silver','1 Year'),
(1,1,2,19,'Acer Aspire 7','ACER-ASP7-RTX','Acer Aspire 7 Gaming Laptop Ryzen 7, RTX 3050, 16GB RAM',74999,70999,14,2.10,'Charcoal Black','1 Year'),
(1,1,2,20,'MSI Modern 15','MSI-MOD15-I7','MSI Modern 15 Intel Core i7, 16GB RAM, 512GB SSD',68999,64999,18,1.70,'Classic Black','2 Years');

-- Tablets
INSERT INTO products
(seller_id,category_id,subcategory_id,brand_id,product_name,sku,description,price,discount_price,stock_quantity,weight,color,warranty)
VALUES
(1,1,3,21,'Apple iPad Air M3 11-inch','APL-IPADAIRM3-128','Apple iPad Air M3 11-inch Wi-Fi 128GB',69900,65900,20,0.46,'Space Gray','1 Year'),
(1,1,3,22,'Apple iPad Pro M4 13-inch','APL-IPADPROM4-256','Apple iPad Pro M4 13-inch Wi-Fi 256GB',129900,124900,12,0.58,'Silver','1 Year'),
(1,1,3,23,'Samsung Galaxy Tab S10 Ultra','SAM-TABS10U-512','Samsung Galaxy Tab S10 Ultra 512GB AMOLED Tablet',119999,114999,15,0.72,'Moonstone Gray','1 Year'),
(1,1,3,24,'Samsung Galaxy Tab A9+','SAM-TABA9P-128','Samsung Galaxy Tab A9+ 128GB Wi-Fi Tablet',24999,22999,30,0.48,'Graphite','1 Year'),
(1,1,3,25,'Lenovo Tab P12','LEN-TABP12-256','Lenovo Tab P12 12.7-inch Android Tablet',32999,30999,25,0.61,'Storm Grey','1 Year'),
(1,1,3,26,'Lenovo Legion Y700','LEN-Y700-256','Lenovo Legion Y700 Gaming Tablet 256GB',42999,39999,18,0.38,'Black','1 Year'),
(1,1,3,27,'Xiaomi Pad 7 Pro','XIA-PAD7PRO-256','Xiaomi Pad 7 Pro 11-inch 256GB Tablet',39999,37999,22,0.50,'Blue','1 Year'),
(1,1,3,28,'OnePlus Pad 2','ONE-PAD2-256','OnePlus Pad 2 Snapdragon 8 Gen 3 256GB',42999,40999,20,0.58,'Nimbus Gray','1 Year'),
(1,1,3,29,'HONOR Pad 9','HON-PAD9-256','HONOR Pad 9 12.1-inch 256GB Android Tablet',28999,26999,24,0.56,'Space Gray','1 Year'),
(1,1,3,30,'Huawei MatePad 12X','HUA-MATEPAD12X-256','Huawei MatePad 12X 256GB HarmonyOS Tablet',49999,46999,16,0.55,'White','1 Year');

-- Smart Watches
INSERT INTO products
(seller_id,category_id,subcategory_id,brand_id,product_name,sku,description,price,discount_price,stock_quantity,weight,color,warranty)
VALUES
(1,1,4,31,'Apple Watch Series 10 GPS 46mm','APL-WS10-46','Apple Watch Series 10 GPS 46mm Aluminum Case',46900,43900,20,0.04,'Jet Black','1 Year'),
(1,1,4,32,'Apple Watch Ultra 2','APL-WU2-49','Apple Watch Ultra 2 GPS + Cellular 49mm Titanium',89900,85900,12,0.06,'Titanium','1 Year'),
(1,1,4,33,'Samsung Galaxy Watch Ultra','SAM-GWU-47','Samsung Galaxy Watch Ultra LTE 47mm',59999,56999,18,0.06,'Titanium Gray','1 Year'),
(1,1,4,34,'Samsung Galaxy Watch 7','SAM-GW7-44','Samsung Galaxy Watch 7 Bluetooth 44mm',32999,30999,25,0.03,'Cream','1 Year'),
(1,1,4,35,'OnePlus Watch 3','ONE-WATCH3-46','OnePlus Watch 3 AMOLED Smartwatch',29999,27999,16,0.05,'Emerald Titanium','1 Year'),
(1,1,4,36,'Amazfit GTR 4','AMZ-GTR4-46','Amazfit GTR 4 GPS Smartwatch',18999,16999,30,0.03,'Racetrack Gray','1 Year'),
(1,1,4,37,'Huawei Watch GT 5 Pro','HUA-GT5PRO-46','Huawei Watch GT 5 Pro AMOLED Smartwatch',32999,30999,18,0.05,'Titanium','1 Year'),
(1,1,4,38,'Noise ColorFit Pro 6','NOI-CFP6','Noise ColorFit Pro 6 Bluetooth Calling Smartwatch',6999,6299,40,0.03,'Elite Black','1 Year'),
(1,1,4,39,'boAt Lunar Pro LTE','BOAT-LUNARLTE','boAt Lunar Pro LTE Smartwatch with AMOLED Display',8999,7999,35,0.04,'Active Black','1 Year'),
(1,1,4,40,'Fastrack Revoltt X','FAST-REVX','Fastrack Revoltt X AMOLED Bluetooth Calling Smartwatch',7999,7299,28,0.03,'Midnight Black','1 Year');

-- Headphones
INSERT INTO products
(seller_id,category_id,subcategory_id,brand_id,product_name,sku,description,price,discount_price,stock_quantity,weight,color,warranty)
VALUES
(1,1,5,41,'Sony WH-1000XM5','SON-WH1000XM5','Sony Wireless Noise Cancelling Bluetooth Headphones',29990,27990,20,0.25,'Black','1 Year'),
(1,1,5,42,'Sony ULT Wear','SON-ULTWEAR','Sony ULT Wear Wireless Extra Bass Headphones',18990,17490,18,0.26,'Forest Gray','1 Year'),
(1,1,5,43,'JBL Tune 770NC','JBL-T770NC','JBL Tune 770NC Adaptive Noise Cancelling Headphones',9999,8999,30,0.23,'Blue','1 Year'),
(1,1,5,44,'JBL Live 770NC','JBL-L770NC','JBL Live 770NC Wireless Over-Ear Headphones',14999,13499,22,0.26,'Black','1 Year'),
(1,1,5,45,'Bose QuietComfort Ultra','BOS-QCULTRA','Bose QuietComfort Ultra Wireless ANC Headphones',37999,35999,15,0.25,'White Smoke','1 Year'),
(1,1,5,46,'Sennheiser Momentum 4','SEN-MOM4','Sennheiser Momentum 4 Wireless Headphones',29999,27999,18,0.29,'Black','2 Years'),
(1,1,5,47,'Apple AirPods Max','APL-AIRPODSMAX','Apple AirPods Max with Active Noise Cancellation',59900,56900,10,0.39,'Space Gray','1 Year'),
(1,1,5,48,'Skullcandy Crusher Evo','SKU-CRUSHEREVO','Skullcandy Crusher Evo Wireless Headphones',15999,14499,20,0.31,'Black','1 Year'),
(1,1,5,49,'boAt Rockerz 550','BOAT-R550','boAt Rockerz 550 Wireless Bluetooth Headphones',2499,2199,50,0.24,'Black','1 Year'),
(1,1,5,50,'Logitech Zone Vibe 100','LOG-ZV100','Logitech Zone Vibe 100 Wireless Headset',10999,9999,25,0.19,'Graphite','2 Years');

-- Earbuds
INSERT INTO products
(seller_id,category_id,subcategory_id,brand_id,product_name,sku,description,price,discount_price,stock_quantity,weight,color,warranty)
VALUES
(1,1,6,51,'Apple AirPods Pro 2','APL-APP2','Apple AirPods Pro 2 with Active Noise Cancellation',24900,22900,25,0.06,'White','1 Year'),
(1,1,6,52,'Samsung Galaxy Buds3 Pro','SAM-BUDS3PRO','Samsung Galaxy Buds3 Pro True Wireless Earbuds',19999,18499,22,0.05,'Silver','1 Year'),
(1,1,6,53,'Sony WF-1000XM5','SON-WF1000XM5','Sony Premium Noise Cancelling Earbuds',24990,22990,20,0.05,'Black','1 Year'),
(1,1,6,54,'OnePlus Buds Pro 3','ONE-BUDSPRO3','OnePlus Buds Pro 3 Hi-Res Audio Earbuds',11999,10999,30,0.05,'Midnight Black','1 Year'),
(1,1,6,55,'JBL Live Beam 3','JBL-LIVEBEAM3','JBL Live Beam 3 True Wireless Earbuds',14999,13999,18,0.05,'Blue','1 Year'),
(1,1,6,56,'Nothing Ear (2025)','NOT-EAR2025','Nothing Ear with ANC and LDAC',11999,10999,25,0.05,'White','1 Year'),
(1,1,6,57,'Realme Buds Air 7','RLM-AIR7','Realme Buds Air 7 ANC Earbuds',4999,4499,35,0.05,'Green','1 Year'),
(1,1,6,58,'boAt Airdopes 311 Pro','BOAT-311PRO','boAt Airdopes 311 Pro TWS',2499,2199,45,0.05,'Black','1 Year'),
(1,1,6,59,'Noise Buds X Prime','NOI-BUDSX','Noise Buds X Prime True Wireless',2999,2699,40,0.05,'Blue','1 Year'),
(1,1,6,60,'OPPO Enco Air4 Pro','OPP-ENCOAIR4','OPPO Enco Air4 Pro ANC Earbuds',5499,4999,28,0.05,'White','1 Year');

-- Speakers
INSERT INTO products
(seller_id,category_id,subcategory_id,brand_id,product_name,sku,description,price,discount_price,stock_quantity,weight,color,warranty)
VALUES
(1,1,7,61,'JBL Flip 7','JBL-FLIP7','Portable Bluetooth Speaker',13999,12999,20,0.56,'Black','1 Year'),
(1,1,7,62,'Sony SRS-XB100','SON-XB100','Portable Extra Bass Bluetooth Speaker',5990,5490,25,0.27,'Blue','1 Year'),
(1,1,7,63,'boAt Stone 1500','BOAT-ST1500','Portable Bluetooth Speaker',4999,4499,35,1.20,'Black','1 Year'),
(1,1,7,64,'Marshall Emberton III','MAR-EMB3','Premium Portable Bluetooth Speaker',17999,16999,15,0.70,'Black','1 Year'),
(1,1,7,65,'Bose SoundLink Flex','BOSE-FLEX','Portable Waterproof Bluetooth Speaker',16999,15999,18,0.58,'White','1 Year'),
(1,1,7,66,'Ultimate Ears Wonderboom 4','UE-WB4','360° Portable Bluetooth Speaker',9999,9299,20,0.42,'Gray','2 Years'),
(1,1,7,67,'Google Nest Audio','GOO-NESTAUDIO','Smart Speaker with Google Assistant',7999,7499,22,1.20,'Chalk','1 Year'),
(1,1,7,68,'Amazon Echo 5th Gen','AMZ-ECHO5','Smart Speaker with Alexa',5499,4999,30,0.95,'Black','1 Year'),
(1,1,7,69,'Mi Portable Bluetooth Speaker','XIA-MISPK','Portable Bluetooth Speaker',2499,2199,40,0.18,'Blue','1 Year'),
(1,1,7,70,'Harman Kardon Onyx Studio 9','HK-ONYX9','Premium Bluetooth Home Speaker',24999,22999,10,3.30,'Black','1 Year');

-- Cameras
INSERT INTO products
(seller_id,category_id,subcategory_id,brand_id,product_name,sku,description,price,discount_price,stock_quantity,weight,color,warranty)
VALUES
(1,1,8,71,'Canon EOS R10','CAN-R10','24.2MP Mirrorless Camera with RF-S Lens',89999,85999,12,0.43,'Black','2 Years'),
(1,1,8,72,'Canon EOS R50','CAN-R50','Mirrorless Camera with RF-S 18-45mm Lens',72999,69999,15,0.38,'Black','2 Years'),
(1,1,8,73,'Sony Alpha A6700','SON-A6700','26MP APS-C Mirrorless Camera',134999,129999,10,0.49,'Black','2 Years'),
(1,1,8,74,'Sony ZV-E10 II','SON-ZVE10II','Mirrorless Vlogging Camera',89999,85999,14,0.38,'White','2 Years'),
(1,1,8,75,'Nikon Z50 II','NIK-Z50II','Mirrorless Camera with 16-50mm Lens',99999,95999,10,0.45,'Black','2 Years'),
(1,1,8,76,'Nikon D7500','NIK-D7500','20.9MP DSLR Camera',94999,89999,8,0.72,'Black','2 Years'),
(1,1,8,77,'Fujifilm X-T50','FUJ-XT50','Mirrorless Camera with X-Trans Sensor',149999,144999,8,0.44,'Silver','2 Years'),
(1,1,8,78,'Panasonic Lumix G100','PAN-G100','Mirrorless Camera for Creators',69999,65999,12,0.41,'Black','2 Years'),
(1,1,8,79,'GoPro HERO13 Black','GOP-H13','Waterproof 5.3K Action Camera',45999,42999,18,0.15,'Black','1 Year'),
(1,1,8,80,'DJI Osmo Pocket 3','DJI-OP3','4K Pocket Gimbal Camera',54999,51999,15,0.18,'Black','1 Year');

-- Printers
INSERT INTO products
(seller_id,category_id,subcategory_id,brand_id,product_name,sku,description,price,discount_price,stock_quantity,weight,color,warranty)
VALUES
(1,1,9,81,'HP Smart Tank 580','HP-ST580','All-in-One Wi-Fi Ink Tank Printer',16999,15999,20,5.00,'White','1 Year'),
(1,1,9,82,'HP LaserJet MFP M236sdw','HP-M236SDW','Monochrome Laser Printer',23999,22999,15,7.60,'White','1 Year'),
(1,1,9,83,'Canon PIXMA G3770','CAN-G3770','Wireless All-in-One Ink Tank Printer',18999,17999,18,6.20,'Black','1 Year'),
(1,1,9,84,'Canon imageCLASS MF272dw','CAN-MF272DW','Wireless Laser Multifunction Printer',24999,23999,12,8.10,'Black','1 Year'),
(1,1,9,85,'Epson EcoTank L6270','EPS-L6270','Wi-Fi Duplex Ink Tank Printer',26999,25499,14,6.80,'Black','1 Year'),
(1,1,9,86,'Epson EcoTank L3252','EPS-L3252','All-in-One Ink Tank Printer',16999,15999,20,4.80,'White','1 Year'),
(1,1,9,87,'Brother DCP-T820DW','BRO-T820DW','Wireless Ink Tank Printer',23999,22499,15,8.40,'Black','1 Year'),
(1,1,9,88,'Brother HL-L2440DW','BRO-L2440DW','Wireless Mono Laser Printer',17999,16999,16,7.10,'Gray','1 Year'),
(1,1,9,89,'Xerox B230','XER-B230','Wireless Monochrome Laser Printer',14999,13999,18,6.70,'White','1 Year'),
(1,1,9,90,'Pantum M7100DW','PAN-M7100DW','Mono Laser Multifunction Printer',18999,17999,15,8.50,'Black','1 Year');

-- Monitors
INSERT INTO products
(seller_id,category_id,subcategory_id,brand_id,product_name,sku,description,price,discount_price,stock_quantity,weight,color,warranty)
VALUES
(1,1,10,91,'Dell S2425H','DEL-S2425H','24-inch Full HD IPS Monitor',12999,11999,30,3.90,'Black','3 Years'),
(1,1,10,92,'Dell UltraSharp U2724D','DEL-U2724D','27-inch QHD IPS Professional Monitor',38999,36999,12,6.10,'Silver','3 Years'),
(1,1,10,93,'LG UltraGear 27GR75Q','LG-27GR75Q','27-inch QHD 165Hz Gaming Monitor',26999,24999,20,5.80,'Black','3 Years'),
(1,1,10,94,'Samsung Odyssey G5','SAM-G5-27','27-inch QHD Curved Gaming Monitor',24999,22999,18,5.70,'Black','3 Years'),
(1,1,10,95,'ASUS TUF VG27AQ3A','ASUS-VG27AQ3A','27-inch Gaming Monitor 180Hz',28999,26999,15,5.90,'Black','3 Years'),
(1,1,10,96,'Acer Nitro VG240Y','ACER-VG240Y','24-inch IPS Gaming Monitor',13999,12999,25,4.20,'Black','3 Years'),
(1,1,10,97,'MSI G274QPF','MSI-G274QPF','27-inch QHD Gaming Monitor',29999,27999,12,5.80,'Black','3 Years'),
(1,1,10,98,'BenQ GW2790','BEN-GW2790','27-inch Eye-Care IPS Monitor',17999,16999,18,4.90,'Black','3 Years'),
(1,1,10,99,'ViewSonic VX2428','VS-VX2428','24-inch 180Hz Gaming Monitor',16999,15999,20,4.50,'Black','3 Years'),
(1,1,10,100,'Gigabyte M27Q X','GIG-M27QX','27-inch QHD 240Hz Gaming Monitor',42999,39999,10,6.20,'Black','3 Years');

-- Keyboards
INSERT INTO products
(seller_id,category_id,subcategory_id,brand_id,product_name,sku,description,price,discount_price,stock_quantity,weight,color,warranty)
VALUES
(1,1,11,101,'Logitech MX Keys S','LOG-MXKEYSS','Wireless illuminated keyboard',11995,10995,25,0.81,'Graphite','1 Year'),
(1,1,11,102,'Logitech G Pro X TKL','LOG-GPROXTKL','Mechanical gaming keyboard',17995,16995,20,0.96,'Black','2 Years'),
(1,1,11,103,'Keychron K2 V2','KEY-K2V2','Wireless mechanical keyboard',8999,8299,22,0.79,'Gray','1 Year'),
(1,1,11,104,'Keychron K8 Pro','KEY-K8PRO','Hot-swappable mechanical keyboard',10999,9999,18,0.92,'Black','1 Year'),
(1,1,11,105,'Razer BlackWidow V4','RAZ-BWV4','RGB mechanical gaming keyboard',15999,14999,16,1.02,'Black','2 Years'),
(1,1,11,106,'Corsair K70 RGB Pro','COR-K70RGB','Mechanical RGB keyboard',14999,13999,18,1.15,'Black','2 Years'),
(1,1,11,107,'HyperX Alloy Origins','HPX-ALLOY','Mechanical gaming keyboard',8999,8299,24,1.07,'Black','2 Years'),
(1,1,11,108,'Redragon K552 Kumara','RED-K552','Compact mechanical keyboard',3999,3599,35,0.85,'Black','1 Year'),
(1,1,11,109,'HP 350 Bluetooth Keyboard','HP-350BT','Slim wireless office keyboard',2499,2199,40,0.50,'Silver','1 Year'),
(1,1,11,110,'Dell KB216','DEL-KB216','USB multimedia keyboard',799,699,60,0.49,'Black','1 Year');

-- Mouse
INSERT INTO products
(seller_id,category_id,subcategory_id,brand_id,product_name,sku,description,price,discount_price,stock_quantity,weight,color,warranty)
VALUES
(1,1,12,111,'Logitech MX Master 3S','LOG-MXM3S','Wireless productivity mouse',9995,9295,25,0.14,'Graphite','1 Year'),
(1,1,12,112,'Logitech G502 X Lightspeed','LOG-G502X','Wireless gaming mouse',13995,12995,20,0.10,'Black','2 Years'),
(1,1,12,113,'Razer DeathAdder V3 Pro','RAZ-DAV3PRO','Esports wireless gaming mouse',14999,13999,18,0.06,'Black','2 Years'),
(1,1,12,114,'Razer Basilisk V3','RAZ-BASILISK','RGB gaming mouse',6999,6499,22,0.10,'Black','2 Years'),
(1,1,12,115,'Corsair M75 Air','COR-M75AIR','Ultra-light wireless mouse',9999,9299,18,0.06,'White','2 Years'),
(1,1,12,116,'HyperX Pulsefire Haste 2','HPX-HASTE2','Gaming mouse',6999,6499,20,0.06,'Black','2 Years'),
(1,1,12,117,'Dell MS116','DEL-MS116','Optical USB mouse',499,449,80,0.09,'Black','1 Year'),
(1,1,12,118,'HP X200 Wireless Mouse','HP-X200','Wireless office mouse',999,899,60,0.08,'Black','1 Year'),
(1,1,12,119,'Lenovo 400 Wireless Mouse','LEN-400WM','Compact wireless mouse',1199,999,55,0.07,'Gray','1 Year'),
(1,1,12,120,'ASUS ROG Keris II Ace','ASUS-KERIS2','Premium gaming mouse',11999,10999,15,0.05,'White','2 Years');

-- Gaming Console
INSERT INTO products
(seller_id,category_id,subcategory_id,brand_id,product_name,sku,description,price,discount_price,stock_quantity,weight,color,warranty)
VALUES
(1,1,13,121,'Sony PlayStation 5 Slim','SON-PS5SLIM','825GB PlayStation 5 Slim Console',54990,52990,20,3.20,'White','1 Year'),
(1,1,13,122,'Sony PlayStation 5 Pro','SON-PS5PRO','Next-generation PlayStation 5 Pro',69990,67990,15,3.40,'White','1 Year'),
(1,1,13,123,'Microsoft Xbox Series X','MS-XBOXX','1TB Xbox Series X Console',55990,53990,18,4.40,'Black','1 Year'),
(1,1,13,124,'Microsoft Xbox Series S','MS-XBOXS','512GB Xbox Series S Console',34990,32990,22,1.90,'White','1 Year'),
(1,1,13,125,'Nintendo Switch OLED','NIN-SWOLED','Nintendo Switch OLED Model',32990,30990,25,0.42,'White','1 Year'),
(1,1,13,126,'Nintendo Switch Lite','NIN-SWLITE','Portable Nintendo Switch Lite',18990,17990,30,0.28,'Turquoise','1 Year'),
(1,1,13,127,'Valve Steam Deck OLED 512GB','VAL-SDOLED','Steam Deck OLED Handheld Console',58990,56990,12,0.64,'Black','1 Year'),
(1,1,13,128,'ASUS ROG Ally X','ASUS-ALLYX','Windows Handheld Gaming Console',79990,76990,10,0.68,'Black','2 Years'),
(1,1,13,129,'Lenovo Legion Go','LEN-LEGIONGO','8.8-inch Windows Gaming Handheld',74990,71990,10,0.85,'Black','2 Years'),
(1,1,13,130,'MSI Claw A1M','MSI-CLAWA1M','Intel Core Ultra Gaming Handheld',72990,69990,10,0.67,'Black','2 Years');

-- Computer Accessories
INSERT INTO products
(seller_id,category_id,subcategory_id,brand_id,product_name,sku,description,price,discount_price,stock_quantity,weight,color,warranty)
VALUES
(1,1,14,131,'Logitech C920 HD Webcam','LOG-C920','Full HD 1080p USB Webcam',6999,6499,25,0.16,'Black','2 Years'),
(1,1,14,132,'Logitech Brio 4K Webcam','LOG-BRIO4K','Ultra HD 4K Webcam with HDR',17999,16999,15,0.19,'Black','2 Years'),
(1,1,14,133,'Anker 7-in-1 USB-C Hub','ANK-USB7IN1','USB-C Hub with HDMI and USB 3.0',4999,4499,30,0.11,'Gray','1 Year'),
(1,1,14,134,'Belkin USB-C Multiport Adapter','BEL-USBC','6-in-1 USB-C Adapter',5999,5499,22,0.12,'Silver','2 Years'),
(1,1,14,135,'UGREEN USB 3.0 Hub','UGR-HUB4','4-Port USB 3.0 Hub',1999,1799,40,0.09,'Black','1 Year'),
(1,1,14,136,'TP-Link UE300 Ethernet Adapter','TPL-UE300','USB 3.0 to Gigabit Ethernet Adapter',1499,1299,35,0.08,'White','2 Years'),
(1,1,14,137,'Amazon Basics HDMI Cable 2m','AMZ-HDMI2M','High-Speed HDMI 2.1 Cable',799,699,80,0.15,'Black','1 Year'),
(1,1,14,138,'Apple USB-C Digital AV Adapter','APL-AVADP','USB-C to HDMI Multiport Adapter',6990,6490,20,0.07,'White','1 Year'),
(1,1,14,139,'Dell USB-C Dock WD19S','DEL-WD19S','Universal USB-C Docking Station',18999,17999,12,0.58,'Black','3 Years'),
(1,1,14,140,'HP USB-C Dock G5','HP-DOCKG5','USB-C Universal Docking Station',16999,15999,15,0.68,'Black','3 Years');

-- Power Banks
INSERT INTO products
(seller_id,category_id,subcategory_id,brand_id,product_name,sku,description,price,discount_price,stock_quantity,weight,color,warranty)
VALUES
(1,1,15,141,'Mi Power Bank 20000mAh','MI-PB20K','20000mAh 33W Fast Charging Power Bank',2499,2199,40,0.44,'Black','1 Year'),
(1,1,15,142,'Ambrane Stylo Boost 20000mAh','AMB-STYLO20K','22.5W Fast Charging Power Bank',1999,1799,45,0.42,'Blue','1 Year'),
(1,1,15,143,'Anker PowerCore 20000','ANK-PC20K','High Capacity 20,000mAh Power Bank',4999,4599,25,0.48,'Black','18 Months'),
(1,1,15,144,'URBN 10000mAh Power Bank','URB-10K','Compact Fast Charging Power Bank',1499,1299,50,0.22,'Black','1 Year'),
(1,1,15,145,'boAt EnergyShroom PB400','BOAT-PB400','10000mAh Fast Charging Power Bank',1699,1499,45,0.24,'Blue','1 Year'),
(1,1,15,146,'Portronics Luxcell 20000','POR-LUX20','22.5W Fast Charging Power Bank',2299,2099,35,0.43,'Black','1 Year'),
(1,1,15,147,'Realme Power Bank 3','RLM-PB3','10000mAh Dual Output Power Bank',1799,1599,38,0.23,'Yellow','1 Year'),
(1,1,15,148,'Samsung 10000mAh Battery Pack','SAM-PB10K','25W Super Fast Charging Power Bank',3499,3199,25,0.21,'Beige','1 Year'),
(1,1,15,149,'Spigen ArcPack 10000','SPG-ARC10','10000mAh PD Fast Charging Power Bank',3999,3699,20,0.23,'Gray','2 Years'),
(1,1,15,150,'Belkin BoostCharge 20000','BEL-BOOST20','USB-C PD Power Bank',5499,5199,18,0.47,'Black','2 Years');

-- Storage Devices
INSERT INTO products
(seller_id,category_id,subcategory_id,brand_id,product_name,sku,description,price,discount_price,stock_quantity,weight,color,warranty)
VALUES
(1,1,16,151,'Samsung 990 Pro 1TB SSD','SAM-990PRO1TB','PCIe Gen4 NVMe Internal SSD',10999,9999,25,0.05,'Black','5 Years'),
(1,1,16,152,'WD Black SN850X 1TB','WD-SN850X','High Performance NVMe SSD',10499,9499,22,0.05,'Black','5 Years'),
(1,1,16,153,'Crucial P3 Plus 1TB SSD','CRU-P3PLUS','PCIe Gen4 NVMe SSD',6499,5999,30,0.05,'Blue','5 Years'),
(1,1,16,154,'Kingston NV3 1TB SSD','KIN-NV31TB','NVMe Internal SSD',5899,5499,35,0.05,'Blue','3 Years'),
(1,1,16,155,'Seagate Expansion 2TB HDD','SEA-EXP2TB','Portable USB 3.0 Hard Drive',6499,5999,25,0.17,'Black','3 Years'),
(1,1,16,156,'WD My Passport 2TB','WD-PASS2TB','Portable External Hard Drive',6999,6499,22,0.18,'Blue','3 Years'),
(1,1,16,157,'SanDisk Ultra Dual Drive 128GB','SDK-DUAL128','USB Type-C Flash Drive',1499,1299,50,0.02,'Silver','5 Years'),
(1,1,16,158,'Kingston DataTraveler Exodia 128GB','KIN-DT128','USB 3.2 Flash Drive',999,849,60,0.02,'Black','5 Years'),
(1,1,16,159,'Samsung BAR Plus 256GB','SAM-BAR256','Metal USB Flash Drive',2499,2299,40,0.02,'Silver','5 Years'),
(1,1,16,160,'SanDisk Extreme Portable SSD 1TB','SDK-EXT1TB','Portable NVMe External SSD',11999,10999,18,0.08,'Black','5 Years');

-- Networking
INSERT INTO products
(seller_id,category_id,subcategory_id,brand_id,product_name,sku,description,price,discount_price,stock_quantity,weight,color,warranty)
VALUES
(1,1,17,43,'TP-Link Archer AX55','TPL-AX55','Wi-Fi 6 Dual Band Gigabit Router',6999,6499,30,0.65,'Black','3 Years'),
(1,1,17,43,'TP-Link Deco X20 (2-Pack)','TPL-DECOX20','Mesh Wi-Fi 6 System',12999,11999,18,1.20,'White','3 Years'),
(1,1,17,8,'ASUS RT-AX58U','ASUS-AX58U','Dual Band Wi-Fi 6 Gaming Router',10999,9999,15,0.75,'Black','3 Years'),
(1,1,17,8,'ASUS ROG Rapture GT-AX6000','ASUS-GTAX6000','High Performance Gaming Router',28999,26999,8,1.15,'Black','3 Years'),
(1,1,17,49,'Netgear Nighthawk AX6','NET-AX6','AX5400 Wi-Fi 6 Router',17999,16999,12,0.82,'Black','3 Years'),
(1,1,17,49,'Netgear Orbi RBK352','NET-ORBIRBK352','Mesh Wi-Fi 6 System',24999,23499,10,1.45,'White','3 Years'),
(1,1,17,52,'D-Link DIR-X5460','DLK-X5460','Wi-Fi 6 Gigabit Router',11999,10999,16,0.78,'Black','3 Years'),
(1,1,17,53,'Tenda RX9 Pro','TEN-RX9PRO','AX3000 Wi-Fi 6 Router',6999,6399,20,0.68,'Black','3 Years'),
(1,1,17,50,'Cisco CBS110-8T-D Switch','CIS-CBS1108','8-Port Gigabit Network Switch',5499,4999,22,0.60,'Gray','3 Years'),
(1,1,17,167,'Ubiquiti UniFi U6+','UBI-U6PLUS','Wi-Fi 6 Access Point',14999,13999,12,0.42,'White','3 Years');

-- Smart Homes
INSERT INTO products
(seller_id,category_id,subcategory_id,brand_id,product_name,sku,description,price,discount_price,stock_quantity,weight,color,warranty)
VALUES
(1,1,18,27,'Philips Hue Smart Bulb E27','PHI-HUEE27','16 Million Color Smart LED Bulb',4499,4199,35,0.15,'White','2 Years'),
(1,1,18,27,'Philips Hue Bridge','PHI-HUEBRIDGE','Smart Lighting Control Hub',5999,5499,20,0.28,'White','2 Years'),
(1,1,18,43,'TP-Link Tapo C210','TPL-C210','360° Indoor Wi-Fi Security Camera',2999,2699,40,0.32,'White','2 Years'),
(1,1,18,43,'TP-Link Tapo L530E','TPL-L530E','Smart Wi-Fi Multicolor Bulb',1099,999,60,0.12,'White','2 Years'),
(1,1,18,57,'Google Nest Mini 2nd Gen','GOO-NESTMINI2','Smart Speaker with Google Assistant',4999,4499,30,0.18,'Chalk','1 Year'),
(1,1,18,56,'Amazon Echo Dot 5th Gen','AMZ-ECHODOT5','Alexa Smart Speaker',5499,4999,35,0.34,'Black','1 Year'),
(1,1,18,56,'Amazon Smart Plug','AMZ-SMARTPLUG','Wi-Fi Enabled Smart Plug',2499,2199,45,0.10,'White','1 Year'),
(1,1,18,168,'Mi Smart Security Camera 2K','MI-CAM2K','2K Indoor Wi-Fi Smart Camera',3499,3199,28,0.31,'White','1 Year'),
(1,1,18,54,'Wipro Smart LED Bulb 12W','WIP-BULB12','Wi-Fi RGB Smart LED Bulb',899,799,70,0.14,'White','2 Years'),
(1,1,18,56,'Aqara Motion Sensor P1','AQA-P1','Smart Home Motion Sensor',3499,3199,25,0.09,'White','2 Years');

-- Men's Clothing
INSERT INTO products
(seller_id,category_id,subcategory_id,brand_id,product_name,sku,description,price,discount_price,stock_quantity,weight,color,warranty)
VALUES
(1,2,19,15,'Levi''s 511 Slim Fit Jeans','LEV-511-BLU','Slim Fit Stretch Denim Jeans',3499,2999,40,0.70,'Blue',NULL),
(1,2,19,15,'Levi''s Graphic T-Shirt','LEV-TS-BLK','100% Cotton Graphic T-Shirt',1499,1299,50,0.25,'Black',NULL),
(1,2,19,171,'Allen Solly Formal Shirt','ALS-FS-WHT','Regular Fit Cotton Formal Shirt',2199,1899,35,0.30,'White',NULL),
(1,2,19,171,'Allen Solly Polo T-Shirt','ALS-POLO-NVY','Cotton Polo T-Shirt',1699,1499,45,0.28,'Navy',NULL),
(1,2,19,170,'U.S. Polo Assn. Casual Shirt','USP-CS-GRN','Checked Casual Shirt',2299,1999,30,0.32,'Green',NULL),
(1,2,19,170,'U.S. Polo Assn. Jeans','USP-JNS-BLU','Slim Fit Denim Jeans',2999,2699,28,0.68,'Blue',NULL),
(1,2,19,11,'Nike Dri-FIT T-Shirt','NIK-DF-GRY','Sports Performance T-Shirt',1995,1795,40,0.22,'Gray',NULL),
(1,2,19,11,'Nike Sports Shorts','NIK-SHORT-BLK','Training Shorts',2495,2195,35,0.24,'Black',NULL),
(1,2,19,12,'Adidas Essentials Hoodie','ADI-HOOD-BLK','Fleece Hoodie',3999,3599,25,0.55,'Black',NULL),
(1,2,19,12,'Adidas Track Pants','ADI-TP-NVY','Training Track Pants',2999,2699,30,0.45,'Navy',NULL);

-- Women's Clothing
INSERT INTO products
(seller_id,category_id,subcategory_id,brand_id,product_name,sku,description,price,discount_price,stock_quantity,weight,color,warranty)
VALUES
(1,2,20,130,'Biba Printed Kurta','BIB-KUR-PNK','Cotton Printed Kurta',2499,2199,35,0.32,'Pink',NULL),
(1,2,20,130,'Biba Palazzo Pants','BIB-PAL-WHT','Rayon Palazzo Pants',1499,1299,30,0.30,'White',NULL),
(1,2,20,133,'W Dress','W-DRS-BLU','Floral Midi Dress',2999,2699,25,0.35,'Blue',NULL),
(1,2,20,133,'W Cotton Kurti','W-KUR-YLW','Straight Fit Cotton Kurti',1999,1799,30,0.28,'Yellow',NULL),
(1,2,20,130,'ONLY Skinny Jeans','ONL-JNS-BLU','Stretch Skinny Fit Jeans',3499,3199,22,0.60,'Blue',NULL),
(1,2,20,130,'ONLY Crop Top','ONL-TOP-BLK','Casual Cotton Crop Top',1499,1299,40,0.18,'Black',NULL),
(1,2,20,16,'Zara Satin Shirt','ZAR-SHRT-WHT','Premium Satin Shirt',3990,3590,20,0.26,'White',NULL),
(1,2,20,16,'Zara Wide Leg Trousers','ZAR-TRS-BGE','High Waist Trousers',4290,3890,18,0.40,'Beige',NULL),
(1,2,20,17,'H&M Oversized T-Shirt','HM-OTS-GRN','Oversized Cotton T-Shirt',1299,1099,45,0.24,'Green',NULL),
(1,2,20,17,'H&M Summer Dress','HM-DRS-RED','Casual Summer Dress',2499,2199,28,0.34,'Red',NULL);

-- Kids Clothing
INSERT INTO products
(seller_id,category_id,subcategory_id,brand_id,product_name,sku,description,price,discount_price,stock_quantity,weight,color,warranty)
VALUES
(1,2,21,171,'Allen Solly Junior T-Shirt','ASJ-TS-BLU','Cotton Printed T-Shirt',899,799,50,0.18,'Blue',NULL),
(1,2,21,171,'Allen Solly Junior Jeans','ASJ-JNS-BLU','Stretch Denim Jeans',1499,1299,35,0.40,'Blue',NULL),
(1,2,21,168,'Gini & Jony Hoodie','GAJ-HOOD-RED','Warm Cotton Hoodie',1799,1599,25,0.38,'Red',NULL),
(1,2,21,168,'Gini & Jony Shorts','GAJ-SHORT-GRY','Casual Cotton Shorts',799,699,40,0.20,'Gray',NULL),
(1,2,21,167,'Hopscotch Party Dress','HOP-DRS-PNK','Girls Party Dress',1899,1699,22,0.30,'Pink',NULL),
(1,2,21,167,'Hopscotch Boys Shirt','HOP-SH-BLU','Formal Cotton Shirt',1199,999,30,0.22,'Blue',NULL),
(1,2,21,169,'Pantaloons Junior Joggers','PAN-JOG-BLK','Comfort Fit Joggers',999,899,35,0.30,'Black',NULL),
(1,2,21,169,'Pantaloons Junior Sweatshirt','PAN-SWT-GRN','Warm Sweatshirt',1399,1199,30,0.34,'Green',NULL),
(1,2,21,172,'Max Kids T-Shirt','MAX-TS-YLW','Cotton Round Neck T-Shirt',699,599,60,0.16,'Yellow',NULL),
(1,2,21,172,'Max Kids Jeans','MAX-JNS-BLU','Slim Fit Denim Jeans',999,899,40,0.38,'Blue',NULL);

-- Shoes
INSERT INTO products
(seller_id,category_id,subcategory_id,brand_id,product_name,sku,description,price,discount_price,stock_quantity,weight,color,warranty)
VALUES
(1,2,22,11,'Nike Air Max 270','NIK-AM270','Men''s Running Shoes',10995,9995,20,0.90,'Black','6 Months'),
(1,2,22,12,'Nike Revolution 7','NIK-REV7','Lightweight Running Shoes',4995,4495,35,0.82,'Blue','6 Months'),
(1,2,22,12,'Adidas Ultraboost Light','ADI-UBL','Premium Running Shoes',17999,16999,15,0.88,'White','6 Months'),
(1,2,22,12,'Adidas Duramo SL','ADI-DURAMO','Training Running Shoes',4999,4499,30,0.84,'Black','6 Months'),
(1,2,22,13,'Puma Smash V2','PUM-SMASH','Casual Sneakers',3999,3599,28,0.86,'White','6 Months'),
(1,2,22,13,'Puma Flyer Flex','PUM-FLEX','Sports Running Shoes',4499,3999,25,0.82,'Gray','6 Months'),
(1,2,22,59,'Skechers Go Walk 7','SKE-GW7','Walking Shoes',6499,5999,20,0.78,'Navy','6 Months'),
(1,2,22,59,'Skechers Arch Fit','SKE-ARCH','Comfort Walking Shoes',7999,7499,18,0.85,'Black','6 Months'),
(1,2,22,173,'Woodland Leather Boots','WDL-BOOT','Leather Outdoor Boots',5995,5495,15,1.20,'Brown','6 Months'),
(1,2,22,58,'Bata Power Sneakers','BAT-POWER','Casual Sports Shoes',2499,2199,40,0.80,'Black','6 Months');

-- Sports Shoes
INSERT INTO products
(seller_id,category_id,subcategory_id,brand_id,product_name,sku,description,price,discount_price,stock_quantity,weight,color,warranty)
VALUES
(1,2,23,11,'Nike Air Zoom Pegasus 41','NIK-PEG41','Men''s Running Shoes',12995,11995,20,0.82,'Black','6 Months'),
(1,2,23,11,'Nike Winflo 11','NIK-WINFLO11','Road Running Shoes',8995,8295,25,0.80,'Blue','6 Months'),
(1,2,23,12,'Adidas Ultraboost 5','ADI-UB5','Premium Running Shoes',18999,17999,18,0.84,'White','6 Months'),
(1,2,23,12,'Adidas Adizero SL2','ADI-SL2','Lightweight Sports Shoes',10999,9999,20,0.76,'Black','6 Months'),
(1,2,23,13,'Puma Deviate Nitro 3','PUM-NITRO3','Performance Running Shoes',14999,13999,15,0.78,'Red','6 Months'),
(1,2,23,13,'Puma Velocity Nitro','PUM-VELNIT','Training Running Shoes',9999,9299,18,0.77,'Gray','6 Months'),
(1,2,23,174,'ASICS Gel-Kayano 31','ASC-KAY31','Premium Stability Running Shoes',16999,15999,15,0.81,'Blue','6 Months'),
(1,2,23,174,'ASICS Gel-Nimbus 27','ASC-NIM27','Cushioned Running Shoes',17999,16999,12,0.82,'White','6 Months'),
(1,2,23,12,'New Balance Fresh Foam 1080','NB-1080','Comfort Running Shoes',15999,14999,15,0.79,'Black','6 Months'),
(1,2,23,59,'Skechers Go Run Ride 11','SKE-RIDE11','Lightweight Running Shoes',8999,8299,22,0.76,'Navy','6 Months');

-- Sandals 
INSERT INTO products
(seller_id,category_id,subcategory_id,brand_id,product_name,sku,description,price,discount_price,stock_quantity,weight,color,warranty)
VALUES
(1,2,24,58,'Bata Comfort Sandals','BAT-COMFORT','Men''s Casual Sandals',1499,1299,40,0.55,'Brown',NULL),
(1,2,24,58,'Bata Floatz Sandals','BAT-FLOATZ','Lightweight Sandals',1799,1599,35,0.52,'Black',NULL),
(1,2,24,175,'Crocs Classic Clog','CRO-CLASSIC','Classic Unisex Clogs',3995,3595,30,0.42,'White',NULL),
(1,2,24,175,'Crocs Bayaband','CRO-BAYABAND','Casual Comfort Sandals',4995,4595,25,0.44,'Navy',NULL),
(1,2,24,173,'Woodland Leather Sandals','WDL-SANDAL','Outdoor Leather Sandals',2995,2695,20,0.68,'Brown',NULL),
(1,2,24,173,'Woodland Trek Sandals','WDL-TREK','Adventure Sandals',3495,3195,18,0.70,'Olive',NULL),
(1,2,24,176,'Sparx Men Sandals','SPX-SANDAL','Daily Wear Sandals',999,899,50,0.48,'Black',NULL),
(1,2,24,177,'Paragon Comfort Sandals','PAR-COMFORT','Comfort Casual Sandals',899,799,55,0.46,'Tan',NULL),
(1,2,24,58,'Red Chief Leather Sandals','RC-SANDAL','Premium Leather Sandals',2499,2199,22,0.65,'Brown',NULL),
(1,2,24,178,'Campus Active Sandals','CMP-SANDAL','Sports Style Sandals',1399,1199,35,0.50,'Blue',NULL);

-- Bags
INSERT INTO products
(seller_id,category_id,subcategory_id,brand_id,product_name,sku,description,price,discount_price,stock_quantity,weight,color,warranty)
VALUES
(1,2,25,179,'Skybags Campus Backpack','SKY-CAMPUS','30L Laptop Backpack',2499,2199,30,0.72,'Blue','1 Year'),
(1,2,25,179,'Skybags Brat Backpack','SKY-BRAT','Casual Backpack',1999,1799,35,0.68,'Black','1 Year'),
(1,2,25,61,'American Tourister Urban Backpack','AT-URBAN','Laptop Backpack',2999,2699,28,0.76,'Gray','1 Year'),
(1,2,25,61,'American Tourister Casual Backpack','AT-CASUAL','Travel Backpack',2499,2299,30,0.70,'Navy','1 Year'),
(1,2,25,60,'Wildcraft Trail Backpack','WC-TRAIL','Outdoor Backpack',3499,3199,20,0.82,'Green','1 Year'),
(1,2,25,60,'Wildcraft Wiki Backpack','WC-WIKI','Daily Use Backpack',1999,1799,35,0.65,'Black','1 Year'),
(1,2,25,180,'Lavie Women Handbag','LAV-HANDBAG','PU Leather Handbag',2799,2499,22,0.74,'Pink','1 Year'),
(1,2,25,181,'Caprese Tote Bag','CAP-TOTE','Stylish Tote Bag',3299,2999,20,0.78,'Beige','1 Year'),
(1,2,25,183,'Safari Laptop Backpack','SAF-LAPTOP','Laptop Backpack 32L',2299,2099,30,0.75,'Black','1 Year'),
(1,2,25,184,'F Gear Voyager Backpack','FG-VOYAGER','Travel Backpack',1899,1699,35,0.70,'Red','1 Year');

-- Wallets
INSERT INTO products
(seller_id,category_id,subcategory_id,brand_id,product_name,sku,description,price,discount_price,stock_quantity,weight,color,warranty)
VALUES
(1,2,26,234,'Tommy Hilfiger Leather Wallet','TH-WALLET','Genuine Leather Wallet',2999,2699,25,0.18,'Brown',NULL),
(1,2,26,234,'Tommy Hilfiger Card Holder','TH-CARD','Slim Leather Card Holder',1999,1799,30,0.10,'Black',NULL),
(1,2,26,65,'Fossil Derrick Wallet','FOS-DERRICK','Leather Bifold Wallet',3999,3599,20,0.19,'Brown',NULL),
(1,2,26,65,'Fossil Logan Wallet','FOS-LOGAN','Premium Leather Wallet',4499,4099,18,0.20,'Black',NULL),
(1,2,26,185,'WildHorn Leather Wallet','WH-WALLET','RFID Leather Wallet',999,899,50,0.16,'Tan',NULL),
(1,2,26,186,'Urban Forest Wallet','UF-WALLET','Men''s Leather Wallet',899,799,55,0.15,'Brown',NULL),
(1,2,26,64,'Hidesign Leather Wallet','HD-WALLET','Premium Leather Wallet',3499,3199,18,0.18,'Brown',NULL),
(1,2,26,64,'Titan Card Holder','TIT-CARD','Minimalist Card Holder',1499,1299,35,0.09,'Black',NULL),
(1,2,26,187,'Allen Solly Wallet','ALS-WALLET','Leather Wallet',1299,1099,40,0.16,'Black',NULL),
(1,2,26,188,'Van Heusen Wallet','VH-WALLET','Formal Leather Wallet',1499,1299,35,0.17,'Brown',NULL);

-- Watches
INSERT INTO products
(seller_id,category_id,subcategory_id,brand_id,product_name,sku,description,price,discount_price,stock_quantity,weight,color,warranty)
VALUES
(1,2,27,64,'Titan Neo Analog Watch','TIT-NEO','Men''s Analog Watch',4999,4499,30,0.14,'Silver','2 Years'),
(1,2,27,64,'Titan Edge Watch','TIT-EDGE','Slim Analog Watch',8999,8299,20,0.13,'Black','2 Years'),
(1,2,27,63,'Fastrack Stunners','FAS-STUN','Casual Analog Watch',2999,2699,35,0.15,'Blue','2 Years'),
(1,2,27,63,'Fastrack Trendies','FAS-TREND','Fashion Watch',2499,2199,40,0.15,'Black','2 Years'),
(1,2,27,66,'Casio Edifice EFV-100','CAS-EFV100','Stainless Steel Analog Watch',7995,7495,22,0.16,'Silver','2 Years'),
(1,2,27,66,'Casio G-Shock GA-2100','CAS-GA2100','Shock Resistant Watch',9995,9295,20,0.17,'Black','2 Years'),
(1,2,27,65,'Fossil Grant Chronograph','FOS-GRANT','Leather Strap Watch',12999,11999,15,0.18,'Brown','2 Years'),
(1,2,27,234,'Tommy Hilfiger Mason','TH-MASON','Premium Analog Watch',9999,9299,18,0.17,'Blue','2 Years'),
(1,2,27,189,'Timex Expedition','TIM-EXP','Outdoor Analog Watch',5999,5499,25,0.16,'Green','2 Years'),
(1,2,27,190,'Sonata Poze','SON-POZE','Affordable Fashion Watch',1999,1799,45,0.15,'Black','1 Year');

-- Jewellary
INSERT INTO products
(seller_id,category_id,subcategory_id,brand_id,product_name,sku,description,price,discount_price,stock_quantity,weight,color,warranty)
VALUES
(1,2,28,67,'Tanishq Gold Ring','TAN-RING18K','18K Gold Ring for Women',28999,27999,15,0.01,'Gold',NULL),
(1,2,28,67,'Tanishq Gold Chain','TAN-CHAIN22K','22K Gold Chain',59999,57999,10,0.02,'Gold',NULL),
(1,2,28,191,'Kalyan Diamond Pendant','KAL-PENDANT','Diamond Pendant Necklace',35999,33999,12,0.01,'Gold',NULL),
(1,2,28,191,'Kalyan Gold Earrings','KAL-EARRING','22K Gold Earrings',24999,23999,15,0.01,'Gold',NULL),
(1,2,28,192,'BlueStone Silver Bracelet','BLU-BRACELET','Sterling Silver Bracelet',4999,4499,25,0.02,'Silver',NULL),
(1,2,28,192,'BlueStone Diamond Ring','BLU-DIAMOND','Diamond Ring',42999,40999,10,0.01,'Gold',NULL),
(1,2,28,193,'Voylla Pearl Necklace','VOY-PEARL','Fashion Pearl Necklace',2499,2199,35,0.05,'White',NULL),
(1,2,28,193,'Voylla Hoop Earrings','VOY-HOOP','Gold Plated Hoop Earrings',1499,1299,40,0.01,'Gold',NULL),
(1,2,28,194,'Pipa Bella Charm Bracelet','PIP-CHARM','Fashion Charm Bracelet',1799,1599,35,0.03,'Rose Gold',NULL),
(1,2,28,195,'Giva Silver Pendant','GIV-PENDANT','925 Silver Pendant',2999,2699,30,0.01,'Silver',NULL);

-- Sunglasses
INSERT INTO products
(seller_id,category_id,subcategory_id,brand_id,product_name,sku,description,price,discount_price,stock_quantity,weight,color,warranty)
VALUES
(1,2,29,69,'Ray-Ban Aviator Classic','RB-AVIATOR','Classic Metal Aviator Sunglasses',10990,9990,20,0.12,'Gold','1 Year'),
(1,2,29,69,'Ray-Ban Wayfarer','RB-WAYFARER','Classic Wayfarer Sunglasses',9990,9190,18,0.13,'Black','1 Year'),
(1,2,29,196,'Oakley Holbrook','OAK-HOLBROOK','Polarized Lifestyle Sunglasses',12999,11999,15,0.14,'Black','1 Year'),
(1,2,29,196,'Oakley Frogskins','OAK-FROG','Retro Style Sunglasses',10999,9999,18,0.13,'Blue','1 Year'),
(1,2,29,63,'Fastrack Square Sunglasses','FAS-SQUARE','UV Protected Sunglasses',1999,1699,40,0.11,'Black','6 Months'),
(1,2,29,63,'Fastrack Aviator','FAS-AVIATOR','Metal Frame Sunglasses',2199,1899,35,0.11,'Brown','6 Months'),
(1,2,29,197,'Vincent Chase Polarized','VC-POLAR','Polarized Sunglasses',2499,2199,30,0.12,'Black','1 Year'),
(1,2,29,198,'IDEE Gradient Sunglasses','IDEE-GRAD','Gradient Lens Sunglasses',2799,2499,28,0.12,'Brown','1 Year'),
(1,2,29,199,'Carrera Flag Sunglasses','CAR-FLAG','Premium Sunglasses',8999,8299,15,0.14,'Black','1 Year'),
(1,2,29,200,'Police Urban Sunglasses','POL-URBAN','Stylish UV Sunglasses',7499,6999,18,0.13,'Gray','1 Year');

-- Caps
INSERT INTO products
(seller_id,category_id,subcategory_id,brand_id,product_name,sku,description,price,discount_price,stock_quantity,weight,color,warranty)
VALUES
(1,2,30,11,'Nike Heritage Cap','NIK-HCAP','Cotton Baseball Cap',1495,1295,40,0.10,'Black',NULL),
(1,2,30,11,'Nike Dri-FIT Cap','NIK-DRICAP','Sports Running Cap',1795,1595,35,0.09,'White',NULL),
(1,2,30,12,'Adidas Baseball Cap','ADI-BASECAP','Cotton Sports Cap',1499,1299,40,0.10,'Navy',NULL),
(1,2,30,12,'Adidas Training Cap','ADI-TRAINCAP','Moisture Wicking Cap',1799,1599,30,0.09,'Gray',NULL),
(1,2,30,13,'Puma ESS Cap','PUM-ESSCAP','Adjustable Sports Cap',1299,1099,45,0.09,'Black',NULL),
(1,2,30,13,'Puma Running Cap','PUM-RUNCAP','Lightweight Running Cap',1599,1399,35,0.09,'Blue',NULL),
(1,2,30,201,'New Era NY Yankees Cap','NE-NYCAP','Official Baseball Cap',3499,3199,20,0.11,'Black',NULL),
(1,2,30,201,'Under Armour Blitzing Cap','UA-BLITZ','Stretch Fit Sports Cap',2499,2299,22,0.10,'White',NULL),
(1,2,30,15,'Levi''s Logo Cap','LEV-CAP','Casual Cotton Cap',1299,1099,35,0.10,'Red',NULL),
(1,2,30,203,'HRX Sports Cap','HRX-CAP','Training Cap',999,849,45,0.09,'Gray',NULL);

-- Belts
INSERT INTO products
(seller_id,category_id,subcategory_id,brand_id,product_name,sku,description,price,discount_price,stock_quantity,weight,color,warranty)
VALUES
(1,2,31,15,'Levi''s Genuine Leather Belt','LEV-BELT-BRN','Men''s Leather Belt',1999,1799,35,0.22,'Brown',NULL),
(1,2,31,15,'Levi''s Reversible Belt','LEV-REV-BLK','Reversible Leather Belt',2499,2299,28,0.23,'Black',NULL),
(1,2,31,234,'Tommy Hilfiger Leather Belt','TH-BELT-BLK','Premium Leather Belt',3499,3199,22,0.24,'Black',NULL),
(1,2,31,234,'Tommy Hilfiger Casual Belt','TH-CAS-BRN','Casual Leather Belt',2999,2699,25,0.23,'Brown',NULL),
(1,2,31,187,'Allen Solly Formal Belt','ALS-BELT-BLK','Formal Leather Belt',1499,1299,40,0.21,'Black',NULL),
(1,2,31,187,'Allen Solly Casual Belt','ALS-CAS-TAN','Casual Belt',1399,1199,38,0.22,'Tan',NULL),
(1,2,31,188,'Van Heusen Leather Belt','VH-BELT-BRN','Leather Formal Belt',1699,1499,35,0.22,'Brown',NULL),
(1,2,31,173,'Woodland Leather Belt','WDL-BELT','Genuine Leather Belt',1899,1699,30,0.25,'Brown',NULL),
(1,2,31,13,'Puma Web Belt','PUM-WEB','Sports Fabric Belt',1299,1099,40,0.18,'Navy',NULL),
(1,2,31,11,'Nike Golf Belt','NIK-GOLF','Stretch Fabric Belt',2299,2099,25,0.18,'Black',NULL);

-- Ethnic Wear
INSERT INTO products
(seller_id,category_id,subcategory_id,brand_id,product_name,sku,description,price,discount_price,stock_quantity,weight,color,warranty)
VALUES
(1,2,32,131,'Manyavar Silk Kurta','MAN-KURTA-BLU','Men''s Silk Blend Kurta',3999,3599,25,0.40,'Blue',NULL),
(1,2,32,131,'Manyavar Kurta Pajama Set','MAN-KP-CRM','Traditional Kurta Pajama',5999,5499,20,0.65,'Cream',NULL),
(1,2,32,130,'Biba Embroidered Kurta','BIB-EMB-PNK','Women''s Embroidered Kurta',2999,2699,30,0.34,'Pink',NULL),
(1,2,32,130,'Biba Anarkali Suit','BIB-ANA-GRN','Anarkali Suit Set',4999,4599,20,0.60,'Green',NULL),
(1,2,32,133,'W Cotton Kurti','W-KUR-MRN','Straight Cotton Kurti',1999,1799,35,0.28,'Maroon',NULL),
(1,2,32,133,'W Palazzo Set','W-PAL-YLW','Kurta with Palazzo Set',3499,3199,22,0.55,'Yellow',NULL),
(1,2,32,132,'Fabindia Cotton Kurta','FAB-KUR-WHT','Handcrafted Cotton Kurta',2499,2299,28,0.32,'White',NULL),
(1,2,32,132,'Fabindia Nehru Jacket','FAB-JKT-NVY','Traditional Nehru Jacket',3999,3699,20,0.48,'Navy',NULL),
(1,2,32,204,'Soch Designer Saree','SOC-SAREE-RED','Festive Designer Saree',5999,5499,18,0.72,'Red',NULL),
(1,2,32,205,'Libas Kurta Set','LIB-KSET-LAV','Printed Kurta Set',2799,2499,25,0.46,'Lavender',NULL);

-- Winter Wear
INSERT INTO products
(seller_id,category_id,subcategory_id,brand_id,product_name,sku,description,price,discount_price,stock_quantity,weight,color,warranty)
VALUES
(1,2,33,11,'Nike Club Fleece Hoodie','NIK-HOOD-BLK','Warm Fleece Hoodie',4495,3995,30,0.62,'Black',NULL),
(1,2,33,11,'Nike Windrunner Jacket','NIK-WIND-GRY','Lightweight Hooded Jacket',6995,6495,22,0.58,'Gray',NULL),
(1,2,33,12,'Adidas Essentials Hoodie','ADI-HOOD-GRY','Cotton Blend Hoodie',3999,3599,28,0.60,'Gray',NULL),
(1,2,33,12,'Adidas Puffer Jacket','ADI-PUFF-BLK','Insulated Winter Jacket',7999,7499,18,0.82,'Black',NULL),
(1,2,33,13,'Puma Essentials Sweatshirt','PUM-SWT-NVY','Crew Neck Sweatshirt',2999,2699,35,0.55,'Navy',NULL),
(1,2,33,13,'Puma Hooded Jacket','PUM-JKT-RED','Sports Hooded Jacket',5999,5499,22,0.74,'Red',NULL),
(1,2,33,173,'Woodland Quilted Jacket','WDL-QUILT','Outdoor Winter Jacket',6999,6499,20,0.88,'Olive',NULL),
(1,2,33,15,'Levi''s Denim Jacket','LEV-DENIM','Classic Denim Jacket',4999,4599,25,0.78,'Blue',NULL),
(1,2,33,206,'U.S. Polo Sweater','USP-SWT-CRM','V-Neck Cotton Sweater',3499,3199,28,0.50,'Cream',NULL),
(1,2,33,17,'H&M Knitted Cardigan','HM-CARD-BGE','Soft Knit Cardigan',2999,2699,30,0.52,'Beige',NULL);

-- Furniture
INSERT INTO products
(seller_id,category_id,subcategory_id,brand_id,product_name,sku,description,price,discount_price,stock_quantity,weight,color,warranty)
VALUES
(1,3,34,74,'Nilkamal Plastic Chair','NIL-CHAIR','Ergonomic Plastic Chair',1499,1299,50,3.20,'Brown','1 Year'),
(1,3,34,74,'Nilkamal Queen Bed','NIL-QBED','Engineered Wood Queen Bed',15999,14999,15,65.00,'Walnut','3 Years'),
(1,3,34,72,'Godrej Interio Office Chair','GOD-OFFCHAIR','Adjustable Office Chair',8999,8299,20,12.50,'Black','3 Years'),
(1,3,34,72,'Godrej Interio Wardrobe','GOD-WARD','3 Door Steel Wardrobe',24999,22999,10,75.00,'Grey','5 Years'),
(1,3,34,75,'Durian Fabric Sofa','DUR-SOFA','3 Seater Fabric Sofa',32999,30999,8,48.00,'Blue','5 Years'),
(1,3,34,75,'Durian Coffee Table','DUR-COFFEE','Wooden Coffee Table',6999,6499,18,16.00,'Brown','2 Years'),
(1,3,34,71,'IKEA LACK Table','IKE-LACK','Modern Side Table',2999,2699,25,4.00,'White','2 Years'),
(1,3,34,71,'IKEA BILLY Bookshelf','IKE-BILLY','Wooden Bookshelf',7999,7499,15,28.00,'White','5 Years'),
(1,3,34,77,'Urban Ladder Dining Table','UL-DINING','4 Seater Dining Table',28999,26999,10,42.00,'Oak','5 Years'),
(1,3,34,77,'Urban Ladder TV Unit','UL-TVUNIT','Wooden TV Cabinet',14999,13999,12,24.00,'Walnut','3 Years');

-- Kitchen Appliances
INSERT INTO products
(seller_id,category_id,subcategory_id,brand_id,product_name,sku,description,price,discount_price,stock_quantity,weight,color,warranty)
VALUES
(1,3,35,28,'Prestige Induction Cooktop','PRE-INDUCT','1200W Induction Cooktop',2499,2199,35,2.30,'Black','1 Year'),
(1,3,35,28,'Prestige Mixer Grinder','PRE-MIX750','750W Mixer Grinder',4499,3999,30,4.20,'White','2 Years'),
(1,3,35,27,'Philips Air Fryer NA231','PHI-AIR231','4.2L Digital Air Fryer',8999,8299,20,4.80,'Black','2 Years'),
(1,3,35,27,'Philips Electric Kettle','PHI-KETTLE','1.7L Electric Kettle',1999,1799,35,1.10,'Silver','2 Years'),
(1,3,35,26,'Bajaj GX1 Mixer Grinder','BAJ-GX1','500W Mixer Grinder',2999,2699,28,3.80,'White','2 Years'),
(1,3,35,26,'Bajaj Majesty OTG','BAJ-OTG19','19L Oven Toaster Grill',4999,4499,20,5.60,'Black','2 Years'),
(1,3,35,73,'Havells Toaster','HAV-TOAST','2 Slice Pop-up Toaster',1999,1799,30,1.40,'Black','2 Years'),
(1,3,35,73,'Havells Rice Cooker','HAV-RICE','1.8L Electric Rice Cooker',3499,3199,25,2.60,'White','2 Years'),
(1,3,35,207,'Butterfly Gas Stove','BUT-STOVE','3 Burner Gas Stove',4999,4599,22,7.50,'Black','2 Years'),
(1,3,35,208,'Pigeon Pressure Cooker','PIG-COOK5','5L Aluminium Pressure Cooker',1899,1699,40,2.10,'Silver','5 Years');

-- Home Decore
INSERT INTO products
(seller_id,category_id,subcategory_id,brand_id,product_name,sku,description,price,discount_price,stock_quantity,weight,color,warranty)
VALUES
(1,3,36,82,'Home Centre Wall Clock','HC-CLOCK','Modern Decorative Wall Clock',1499,1299,35,1.20,'Black',NULL),
(1,3,36,82,'Home Centre Table Lamp','HC-LAMP','LED Table Lamp',1999,1799,30,1.10,'White','1 Year'),
(1,3,36,71,'IKEA Artificial Plant','IKE-PLANT','Decorative Indoor Plant',999,849,45,0.80,'Green',NULL),
(1,3,36,71,'IKEA Picture Frame','IKE-FRAME','Wooden Photo Frame',799,699,50,0.60,'Black',NULL),
(1,3,36,235,'ExclusiveLane Vase','EXL-VASE','Ceramic Flower Vase',1299,1099,30,1.40,'White',NULL),
(1,3,36,235,'ExclusiveLane Wall Art','EXL-WALL','Handcrafted Wall Decor',2499,2199,22,2.00,'Brown',NULL),
(1,3,36,236,'Amazon Basics Curtain Set','AMZ-CURTAIN','Blackout Curtain Pair',1999,1799,35,1.30,'Grey',NULL),
(1,3,36,225,'Spaces Cushion Cover Set','SPA-CUSHION','Set of 5 Cushion Covers',999,899,40,0.70,'Blue',NULL),
(1,3,36,224,'D Decor Carpet','DD-CARPET','Living Room Carpet',3999,3599,18,3.80,'Beige',NULL),
(1,3,36,221,'Sleepyhead Bean Bag','SLP-BEAN','XXL Bean Bag Chair',2999,2699,20,4.50,'Red','1 Year');

-- Cookware
INSERT INTO products
(seller_id,category_id,subcategory_id,brand_id,product_name,sku,description,price,discount_price,stock_quantity,weight,color,warranty)
VALUES
(1,3,37,28,'Prestige Non-Stick Fry Pan','PRE-FRYPAN','28cm Non-Stick Fry Pan',1499,1299,40,1.10,'Black','2 Years'),
(1,3,37,28,'Prestige Cookware Set','PRE-SET5','5 Piece Cookware Set',3999,3599,25,4.80,'Black','2 Years'),
(1,3,37,80,'Hawkins Pressure Cooker 5L','HAW-PC5','5L Aluminium Pressure Cooker',2499,2299,35,2.30,'Silver','5 Years'),
(1,3,37,80,'Hawkins Futura Kadai','HAW-KADAI','Hard Anodized Kadai',2299,2099,30,1.80,'Black','2 Years'),
(1,3,37,209,'Wonderchef Granite Pan','WON-GPAN','Granite Non-Stick Fry Pan',1799,1599,30,1.20,'Grey','2 Years'),
(1,3,37,209,'Wonderchef Saucepan','WON-SAUCE','Non-Stick Saucepan',1599,1399,28,1.00,'Black','2 Years'),
(1,3,37,210,'Vinod Stainless Steel Set','VIN-SET','3 Piece Stainless Steel Cookware',2999,2699,25,3.50,'Silver','5 Years'),
(1,3,37,208,'Pigeon Tawa','PIG-TAWA','Non-Stick Roti Tawa',899,799,45,0.90,'Black','2 Years'),
(1,3,37,211,'Bergner Dutch Oven','BER-DUTCH','Cast Iron Dutch Oven',6999,6499,15,5.50,'Red','5 Years'),
(1,3,37,212,'Cello Stainless Steel Pot','CEL-POT','Multipurpose Cooking Pot',1299,1099,35,1.40,'Silver','2 Years');

-- Dinnerware
INSERT INTO products
(seller_id,category_id,subcategory_id,brand_id,product_name,sku,description,price,discount_price,stock_quantity,weight,color,warranty)
VALUES
(1,3,38,213,'Corelle Winter Frost Dinner Set','COR-DINNER18','18 Piece Dinner Set',6999,6499,20,4.20,'White','3 Years'),
(1,3,38,213,'Corelle Soup Bowl Set','COR-BOWL6','Set of 6 Soup Bowls',2499,2199,35,1.80,'White','3 Years'),
(1,3,38,212,'Cello Opal Dinner Set','CEL-OPAL18','18 Piece Opalware Dinner Set',3499,3199,25,3.80,'White','2 Years'),
(1,3,38,212,'Cello Serving Bowl Set','CEL-SERVE','Glass Serving Bowl Set',1499,1299,40,1.50,'Transparent','1 Year'),
(1,3,38,214,'La Opala Diva Dinner Set','LOP-DIVA','Opal Glass Dinner Set',4999,4599,20,3.90,'White','2 Years'),
(1,3,38,214,'La Opala Plate Set','LOP-PLATE6','Dinner Plate Set of 6',1999,1799,30,2.10,'White','2 Years'),
(1,3,38,235,'Borosil Glass Bowl Set','BOR-BOWL','Microwave Safe Bowl Set',1299,1099,35,1.20,'Clear','2 Years'),
(1,3,38,235,'Borosil Serving Platter','BOR-PLATTER','Tempered Glass Platter',999,899,40,1.00,'Clear','2 Years'),
(1,3,38,236,'Milton Melamine Dinner Set','MIL-DINNER','32 Piece Dinner Set',2999,2699,20,3.50,'Blue','1 Year'),
(1,3,38,215,'Signoraware Plate Set','SIG-PLATE','Melamine Plate Set',1499,1299,30,2.20,'Green','1 Year');

-- Storage and Container
INSERT INTO products
(seller_id,category_id,subcategory_id,brand_id,product_name,sku,description,price,discount_price,stock_quantity,weight,color,warranty)
VALUES
(1,3,39,216,'Tupperware Modular Mates','TUP-MATES','Kitchen Storage Container Set',2999,2699,25,2.00,'Blue','5 Years'),
(1,3,39,216,'Tupperware Spice Box','TUP-SPICE','Spice Storage Set',1999,1799,30,1.10,'Purple','5 Years'),
(1,3,39,236,'Milton Steel Container Set','MIL-STEEL','Stainless Steel Container Set',2499,2199,30,2.80,'Silver','2 Years'),
(1,3,39,236,'Milton Plastic Container Set','MIL-PLASTIC','Airtight Storage Containers',1499,1299,35,1.80,'Transparent','1 Year'),
(1,3,39,212,'Cello Airtight Jar Set','CEL-JAR','Set of 6 Airtight Jars',1199,999,40,1.70,'Transparent','1 Year'),
(1,3,39,212,'Cello Lunch Box Set','CEL-LUNCH','Microwave Safe Lunch Box',999,899,45,0.90,'Blue','1 Year'),
(1,3,39,215,'Signoraware Food Container Set','SIG-FOOD','BPA Free Storage Containers',1799,1599,30,1.60,'Transparent','1 Year'),
(1,3,39,235,'Borosil Glass Container Set','BOR-CONTAINER','Glass Storage Containers',2499,2299,25,2.20,'Clear','2 Years'),
(1,3,39,28,'Prestige Steel Canister Set','PRE-CAN','Kitchen Canister Set',1999,1799,30,2.50,'Silver','2 Years'),
(1,3,39,75,'Home Centre Storage Basket','HC-BASKET','Plastic Storage Basket',799,699,50,0.70,'Grey',NULL);

-- Cleaning Supplies
INSERT INTO products
(seller_id,category_id,subcategory_id,brand_id,product_name,sku,description,price,discount_price,stock_quantity,weight,color,warranty)
VALUES
(1,3,40,85,'Scotch-Brite Floor Mop','SB-MOP','Microfiber Floor Cleaning Mop',999,899,40,1.40,'Green','1 Year'),
(1,3,40,85,'Scotch-Brite Scrub Pad Set','SB-SCRUB','Kitchen Scrub Pad Pack',299,249,60,0.20,'Green',NULL),
(1,3,40,217,'Gala Spin Mop','GAL-SPIN','360 Degree Spin Mop',1999,1799,30,3.20,'Blue','1 Year'),
(1,3,40,217,'Gala Cleaning Brush Set','GAL-BRUSH','Cleaning Brush Kit',599,499,50,0.60,'Blue',NULL),
(1,3,40,84,'Lizol Floor Cleaner','LIZ-FLOOR','2L Floor Cleaning Liquid',399,349,60,2.10,NULL,NULL),
(1,3,40,83,'Harpic Toilet Cleaner','HAR-TOILET','1L Toilet Cleaner',249,219,70,1.10,NULL,NULL),
(1,3,40,218,'Colin Glass Cleaner','COL-GLASS','500ml Glass Cleaner',199,169,65,0.60,NULL,NULL),
(1,3,40,86,'Vim Dishwash Gel','VIM-GEL','Dishwashing Gel 750ml',249,219,70,0.80,NULL,NULL),
(1,3,40,219,'Mr. Muscle Kitchen Cleaner','MM-KITCHEN','Kitchen Cleaning Spray',299,269,55,0.70,NULL,NULL),
(1,3,40,152,'Dettol Disinfectant Liquid','DET-DISINFECT','500ml Disinfectant Liquid',249,219,65,0.60,NULL,NULL);

-- Beds and Mattress
INSERT INTO products
(seller_id,category_id,subcategory_id,brand_id,product_name,sku,description,price,discount_price,stock_quantity,weight,color,warranty)
VALUES
(1,3,41,220,'Wakefit Orthopedic Mattress','WKF-ORTHO','Queen Size Memory Foam Mattress',14999,13999,20,28.00,'White','10 Years'),
(1,3,41,220,'Wakefit Single Bed','WKF-BED','Engineered Wood Single Bed',12999,11999,15,45.00,'Walnut','5 Years'),
(1,3,41,221,'Sleepyhead Original Mattress','SLP-ORIG','Memory Foam Mattress',16999,15999,18,30.00,'White','10 Years'),
(1,3,41,221,'Sleepyhead Queen Bed','SLP-QBED','Wooden Queen Bed',18999,17999,12,60.00,'Brown','5 Years'),
(1,3,41,222,'Sleepwell Spinetech Mattress','SPW-SPINE','Orthopedic Mattress',19999,18999,15,31.00,'White','10 Years'),
(1,3,41,222,'Sleepwell King Bed','SPW-KBED','Solid Wood King Bed',29999,27999,8,75.00,'Teak','5 Years'),
(1,3,41,223,'Duroflex LiveIn Mattress','DURO-LIVE','Comfort Foam Mattress',15999,14999,18,29.00,'White','8 Years'),
(1,3,41,223,'Duroflex Queen Bed','DURO-QBED','Engineered Wood Bed',21999,20999,10,62.00,'Brown','5 Years'),
(1,3,41,73,'Nilkamal Folding Bed','NIL-FOLD','Portable Folding Bed',6999,6499,25,18.00,'Black','2 Years'),
(1,3,41,72,'Godrej Interio Queen Bed','GOD-QBED','Storage Queen Bed',32999,30999,8,78.00,'Walnut','5 Years');

-- Lighting
INSERT INTO products
(seller_id,category_id,subcategory_id,brand_id,product_name,sku,description,price,discount_price,stock_quantity,weight,color,warranty)
VALUES
(1,3,42,27,'Philips LED Bulb 12W','PHI-LED12','12W Cool Daylight LED Bulb',249,199,80,0.10,'White','2 Years'),
(1,3,42,27,'Philips Smart LED Bulb','PHI-SMART','Wi-Fi Smart LED Bulb',999,899,40,0.12,'White','2 Years'),
(1,3,42,54,'Wipro Garnet LED Bulb','WIP-LED9','9W Energy Saving LED Bulb',199,169,100,0.09,'White','2 Years'),
(1,3,42,54,'Wipro LED Tube Light','WIP-TUBE20','20W LED Tube Light',499,449,60,0.45,'White','2 Years'),
(1,3,42,73,'Havells LED Panel Light','HAV-PANEL','18W Ceiling Panel Light',899,799,35,0.55,'White','2 Years'),
(1,3,42,73,'Havells Table Lamp','HAV-LAMP','LED Study Table Lamp',1499,1399,25,0.90,'Black','2 Years'),
(1,3,42,55,'Syska LED Strip Light','SYS-STRIP','5 Meter RGB LED Strip',1299,1199,30,0.40,'Multicolor','1 Year'),
(1,3,42,55,'Syska Emergency Lamp','SYS-EMERG','Rechargeable LED Emergency Light',1699,1499,22,1.20,'White','1 Year'),
(1,3,42,26,'Bajaj LED Ceiling Light','BAJ-CEIL','Round LED Ceiling Light',1199,1099,28,0.70,'White','2 Years'),
(1,3,42,223,'Orient Decorative Pendant Light','ORI-PEND','Modern Hanging Pendant Lamp',3499,3199,18,2.50,'Black','2 Years');

-- Curtains
INSERT INTO products
(seller_id,category_id,subcategory_id,brand_id,product_name,sku,description,price,discount_price,stock_quantity,weight,color,warranty)
VALUES
(1,3,43,224,'D''Decor Blackout Curtains','DD-BLACK','Set of 2 Blackout Curtains',2499,2199,25,2.00,'Grey',NULL),
(1,3,43,224,'D''Decor Sheer Curtains','DD-SHEER','Elegant Sheer Curtain Set',1999,1799,30,1.60,'White',NULL),
(1,3,43,225,'Spaces Window Curtains','SPA-WIN','Printed Window Curtain Set',1799,1599,30,1.50,'Blue',NULL),
(1,3,43,225,'Spaces Door Curtains','SPA-DOOR','Door Curtain Pair',1999,1799,28,1.80,'Brown',NULL),
(1,3,43,75,'Home Centre Curtain Set','HC-CURTAIN','Polyester Curtain Pair',1599,1399,35,1.40,'Beige',NULL),
(1,3,43,75,'Home Centre Roller Blind','HC-BLIND','Roller Window Blind',2499,2299,20,2.30,'White',NULL),
(1,3,43,226,'Story@Home Curtain Set','STO-CURTAIN','Printed Curtain Pair',1499,1299,40,1.50,'Green',NULL);
(1,3,43,235,'Amazon Basics Blackout Curtain','AMZ-BLKCUR','Thermal Blackout Curtain',2299,2099,25,1.90,'Navy',NULL),
(1,3,43,71,'IKEA LILL Net Curtains','IKE-LILL','Sheer Net Curtains',999,899,40,0.90,'White',NULL),
(1,3,43,71,'IKEA MAJGULL Curtains','IKE-MAJ','Room Darkening Curtains',2999,2799,18,2.20,'Dark Blue',NULL);

-- Bathroom Accessories
INSERT INTO products
(seller_id,category_id,subcategory_id,brand_id,product_name,sku,description,price,discount_price,stock_quantity,weight,color,warranty)
VALUES
(1,3,44,227,'Jaquar Towel Rod','JAQ-ROD','Stainless Steel Towel Rod',1499,1299,35,0.80,'Silver','5 Years'),
(1,3,44,227,'Jaquar Soap Dispenser','JAQ-SOAP','Wall Mounted Soap Dispenser',999,899,40,0.45,'Silver','2 Years'),
(1,3,44,126,'Hindware Shower Head','HIN-SHOWER','Rain Shower Head',2499,2299,25,0.90,'Chrome','5 Years'),
(1,3,44,126,'Hindware Faucet','HIN-FAUCET','Bathroom Basin Faucet',2999,2799,22,1.10,'Silver','5 Years'),
(1,3,44,228,'Kohler Toilet Seat','KOH-SEAT','Soft Close Toilet Seat',3999,3699,18,2.80,'White','5 Years'),
(1,3,44,228,'Kohler Bathroom Mirror','KOH-MIRROR','Frameless Bathroom Mirror',4999,4699,15,5.20,'Silver','2 Years'),
(1,3,44,212,'Cello Bathroom Bucket','CEL-BUCKET','20L Plastic Bucket',499,449,60,0.80,'Blue',NULL),
(1,3,44,212,'Cello Mug','CEL-MUG','Plastic Bathroom Mug',199,169,80,0.20,'Blue',NULL),
(1,3,44,236,'Milton Bathroom Stool','MIL-STOOL','Heavy Duty Plastic Stool',699,599,45,1.20,'Red',NULL),
(1,3,44,75,'Home Centre Bathroom Set','HC-BATHSET','4 Piece Bathroom Accessory Set',1499,1299,30,1.10,'White',NULL);

-- Home Improvement (Updated brand_id mapping)

INSERT INTO products
(seller_id,category_id,subcategory_id,brand_id,product_name,sku,description,price,discount_price,stock_quantity,weight,color,warranty)
VALUES
(1,3,45,124,'Bosch Cordless Drill GSB 120','BOS-DRILL120','12V Cordless Drill Machine',6999,6499,20,1.80,'Blue','2 Years'),
(1,3,45,124,'Bosch Tool Kit 100 pcs','BOS-TOOL100','100 Piece Home Tool Kit',4999,4599,18,4.50,'Green','2 Years'),
(1,3,45,229,'Black+Decker Hammer Drill','BD-HAMMER','650W Hammer Drill',5499,4999,20,2.30,'Orange','2 Years'),
(1,3,45,229,'Black+Decker Screwdriver Set','BD-SCREW','45 Piece Screwdriver Kit',1499,1299,35,1.20,'Orange','1 Year'),
(1,3,45,134,'Stanley Tool Box','STA-TOOLBOX','Metal Tool Storage Box',2499,2299,25,3.60,'Yellow','2 Years'),
(1,3,45,134,'Stanley Claw Hammer','STA-HAMMER','16oz Steel Claw Hammer',799,699,40,0.90,'Yellow','5 Years'),
(1,3,45,230,'Taparia Tool Kit','TAP-TOOLKIT','105 Piece Tool Kit',3499,3199,22,5.00,'Blue','2 Years'),
(1,3,45,230,'Taparia Adjustable Wrench','TAP-WRENCH','10 Inch Adjustable Wrench',699,599,45,0.70,'Silver','5 Years'),
(1,3,45,136,'Asian Paints SmartCare Kit','ASP-SMART','Wall Repair DIY Kit',999,899,30,1.40,'White',NULL),
(1,3,45,231,'Pidilite Fevicol Marine','PID-FEV','Waterproof Wood Adhesive',599,529,50,0.60,'White',NULL);

-- Education (Updated brand_id mapping)

INSERT INTO products
(seller_id,category_id,subcategory_id,brand_id,product_name,sku,description,price,discount_price,stock_quantity,weight,color,warranty)
VALUES
(1,4,46,137,'NCERT Mathematics Class 10','NCE-MATH10','Mathematics Textbook Class 10',350,320,80,0.60,NULL,NULL),
(1,4,46,137,'NCERT Science Class 10','NCE-SCI10','Science Textbook Class 10',380,350,75,0.65,NULL,NULL),
(1,4,46,142,'Oswaal CBSE Question Bank Physics','OSW-PHY12','CBSE Physics Question Bank',699,649,50,0.70,NULL,NULL),
(1,4,46,142,'Oswaal CBSE Question Bank Chemistry','OSW-CHE12','CBSE Chemistry Question Bank',699,649,50,0.72,NULL,NULL),
(1,4,46,143,'Arihant Objective Mathematics','ARI-MATH','Competitive Mathematics Book',895,845,40,0.85,NULL,NULL),
(1,4,46,143,'Arihant General Knowledge 2026','ARI-GK26','Latest General Knowledge Book',495,449,60,0.75,NULL,NULL),
(1,4,46,139,'Pearson Engineering Mathematics','PEA-ENGMATH','Engineering Mathematics Textbook',799,749,35,1.10,NULL,NULL),
(1,4,46,139,'Pearson Data Structures','PEA-DS','Data Structures Textbook',699,649,30,0.95,NULL,NULL),
(1,4,46,232,'McGraw Hill Quantitative Aptitude','MGH-QA','Competitive Exam Preparation',899,849,30,0.90,NULL,NULL),
(1,4,46,233,'S.Chand Computer Fundamentals','SCH-CF','Computer Fundamentals Book',599,549,40,0.80,NULL,NULL);

-- Fiction (Updated brand_id mapping)
INSERT INTO products
(seller_id,category_id,subcategory_id,brand_id,product_name,sku,description,price,discount_price,stock_quantity,weight,color,warranty)
VALUES
(1,4,47,144,'Harry Potter and the Philosopher''s Stone','HP-PS','Fantasy Novel',599,549,40,0.45,NULL,NULL),
(1,4,47,144,'Harry Potter and the Chamber of Secrets','HP-CS','Fantasy Novel',599,549,35,0.48,NULL,NULL),
(1,4,47,147,'The Alchemist','ALC-BOOK','Novel by Paulo Coelho',399,349,45,0.30,NULL,NULL),
(1,4,47,147,'The Kite Runner','KITE-RUN','Novel by Khaled Hosseini',499,449,30,0.40,NULL,NULL),
(1,4,47,147,'The Da Vinci Code','DAVINCI','Thriller Novel',599,549,28,0.45,NULL,NULL),
(1,4,47,147,'Angels & Demons','ANG-DEM','Mystery Thriller',599,549,28,0.45,NULL,NULL),
(1,4,47,147,'The Hobbit','HOBBIT','Fantasy Adventure',499,449,35,0.42,NULL,NULL),
(1,4,47,147,'The Lord of the Rings','LOTR','Epic Fantasy Novel',999,949,20,1.20,NULL,NULL),
(1,4,47,146,'Pride and Prejudice','PRIDE','Classic English Novel',399,349,30,0.38,NULL,NULL),
(1,4,47,147,'To Kill a Mockingbird','MOCK','Classic Fiction Novel',499,449,25,0.40,NULL,NULL);

-- Non-Fiction (Updated brand_id mapping)

INSERT INTO products
(seller_id,category_id,subcategory_id,brand_id,product_name,sku,description,price,discount_price,stock_quantity,weight,color,warranty)
VALUES
(1,4,48,146,'Atomic Habits','ATOM-HAB','Habit Building Book',699,649,35,0.42,NULL,NULL),
(1,4,48,146,'The Psychology of Money','PSY-MONEY','Personal Finance Book',499,449,40,0.35,NULL,NULL),
(1,4,48,146,'Rich Dad Poor Dad','RDPD','Financial Education Book',499,449,45,0.33,NULL,NULL),
(1,4,48,146,'Think and Grow Rich','TGR-BOOK','Success and Motivation',399,349,40,0.32,NULL,NULL),
(1,4,48,146,'Ikigai','IKIGAI','Japanese Lifestyle Book',499,449,35,0.30,NULL,NULL),
(1,4,48,146,'Deep Work','DEEP-WORK','Productivity Book',599,549,30,0.40,NULL,NULL),
(1,4,48,146,'The Power of Now','POWER-NOW','Spiritual Self Help',499,449,28,0.36,NULL,NULL),
(1,4,48,146,'Sapiens','SAPIENS','History of Humankind',799,749,25,0.70,NULL,NULL),
(1,4,48,146,'The Intelligent Investor','INT-INV','Investment Guide',899,849,22,0.75,NULL,NULL),
(1,4,48,146,'Zero to One','ZERO-ONE','Startup and Innovation Book',499,449,30,0.34,NULL,NULL);

-- Comics (Updated brand_id mapping)

INSERT INTO products
(seller_id,category_id,subcategory_id,brand_id,product_name,sku,description,price,discount_price,stock_quantity,weight,color,warranty)
VALUES
(1,4,49,148,'Marvel Spider-Man Vol.1','MAR-SPIDEY','Spider-Man Comic',699,649,35,0.30,NULL,NULL),
(1,4,49,148,'Marvel Avengers Vol.1','MAR-AVG1','Avengers Comic',799,749,30,0.32,NULL,NULL),
(1,4,49,149,'DC Batman Year One','DC-BAT1','Batman Graphic Novel',899,849,28,0.40,NULL,NULL),
(1,4,49,149,'DC Superman Earth One','DC-SUP1','Superman Comic',799,749,28,0.38,NULL,NULL),
(1,4,49,146,'Amar Chitra Katha Ramayana','ACK-RAM','Indian Mythology Comic',299,269,60,0.25,NULL,NULL),
(1,4,49,146,'Amar Chitra Katha Mahabharata','ACK-MAHA','Epic Comic Book',349,319,55,0.28,NULL,NULL),
(1,4,49,146,'Tintin The Blue Lotus','TIN-BLUE','Tintin Adventure Comic',599,549,30,0.34,NULL,NULL),
(1,4,49,146,'Tintin Destination Moon','TIN-MOON','Tintin Comic',599,549,28,0.34,NULL,NULL),
(1,4,49,146,'Asterix The Gaul','AST-GAUL','Classic Comic Book',499,449,35,0.30,NULL,NULL),
(1,4,49,146,'Diary of a Wimpy Kid','WIMPY-1','Illustrated Comedy Book',399,349,40,0.28,NULL,NULL);

-- Children Books (Updated brand_id mapping)

INSERT INTO products
(seller_id,category_id,subcategory_id,brand_id,product_name,sku,description,price,discount_price,stock_quantity,weight,color,warranty)
VALUES
(1,4,50,146,'The Very Hungry Caterpillar','TVHC','Classic Picture Book',399,349,40,0.25,NULL,NULL),
(1,4,50,146,'The Gruffalo','GRUFFALO','Illustrated Children Book',499,449,35,0.30,NULL,NULL),
(1,4,50,146,'Peppa Pig Story Collection','PEPPA-STORY','Story Book Collection',699,649,30,0.45,NULL,NULL),
(1,4,50,146,'Disney Frozen Story Book','DIS-FROZEN','Frozen Adventure Book',499,449,35,0.32,NULL,NULL),
(1,4,50,146,'Panchatantra Stories','PAN-STORY','Indian Moral Stories',299,269,60,0.28,NULL,NULL),
(1,4,50,146,'Jataka Tales','JAT-TALES','Classic Moral Stories',349,319,55,0.30,NULL,NULL),
(1,4,50,146,'My First ABC Book','ABC-BOOK','Alphabet Learning Book',249,219,70,0.20,NULL,NULL),
(1,4,50,146,'101 Bedtime Stories','BEDTIME101','Kids Story Collection',599,549,30,0.48,NULL,NULL),
(1,4,50,146,'365 Fairy Tales','FAIRY365','One Story Every Day',799,749,25,0.75,NULL,NULL),
(1,4,50,146,'Disney Princess Collection','DIS-PRINCESS','Illustrated Princess Stories',899,849,20,0.85,NULL,NULL);

-- Competitive Books (Updated brand_id mapping)

INSERT INTO products
(seller_id,category_id,subcategory_id,brand_id,product_name,sku,description,price,discount_price,stock_quantity,weight,color,warranty)
VALUES
(1,4,51,143,'Arihant SSC CGL Guide','ARI-SSC','SSC CGL Preparation Book',899,849,35,0.90,NULL,NULL),
(1,4,51,143,'Arihant NDA Guide','ARI-NDA','Complete NDA Guide',799,749,30,0.88,NULL,NULL),
(1,4,51,142,'Oswaal NEET Question Bank','OSW-NEET','NEET Practice Book',999,949,30,0.95,NULL,NULL),
(1,4,51,142,'Oswaal JEE Main Question Bank','OSW-JEE','JEE Main Practice Book',999,949,30,1.00,NULL,NULL),
(1,4,51,139,'Pearson CAT Preparation','PEA-CAT','MBA Entrance Guide',899,849,25,0.85,NULL,NULL),
(1,4,51,232,'McGraw Hill GRE Guide','MGH-GRE','GRE Exam Preparation',1299,1199,20,1.10,NULL,NULL),
(1,4,51,139,'Kaplan GMAT Prep','KAP-GMAT','GMAT Study Guide',1499,1399,18,1.20,NULL,NULL),
(1,4,51,233,'R.S. Aggarwal Quantitative Aptitude','RSA-QA','Competitive Aptitude Book',799,749,40,0.90,NULL,NULL),
(1,4,51,233,'Lucent General Knowledge','LUC-GK','General Knowledge Book',499,449,60,0.70,NULL,NULL),
(1,4,51,233,'UPSC Manual by TMH','TMH-UPSC','Civil Services Preparation',1199,1099,22,1.30,NULL,NULL);

-- Programming (Updated brand_id mapping)

INSERT INTO products
(seller_id,category_id,subcategory_id,brand_id,product_name,sku,description,price,discount_price,stock_quantity,weight,color,warranty)
VALUES
(1,4,52,31,'Head First Java','HF-JAVA','Beginner Java Programming',899,849,30,1.10,NULL,NULL),
(1,4,52,31,'Effective Java','EFF-JAVA','Advanced Java Programming',999,949,25,1.00,NULL,NULL),
(1,4,52,31,'Python Crash Course','PCC-PY','Learn Python Quickly',1099,999,25,1.10,NULL,NULL),
(1,4,52,31,'Automate the Boring Stuff with Python','AUTO-PY','Python Automation Book',999,949,25,0.95,NULL,NULL),
(1,4,52,139,'C Programming Language','C-KR','K&R C Programming',799,749,30,0.80,NULL,NULL),
(1,4,52,139,'Data Structures Using C','DS-C','Data Structures Textbook',699,649,30,0.90,NULL,NULL),
(1,4,52,31,'Clean Code','CLEAN-CODE','Software Engineering Best Practices',999,949,20,0.90,NULL,NULL),
(1,4,52,139,'Introduction to Algorithms','CLRS','Algorithms Reference Book',1499,1399,15,1.80,NULL,NULL),
(1,4,52,31,'Learning SQL','SQL-BOOK','SQL Database Programming',899,849,25,0.80,NULL,NULL),
(1,4,52,31,'JavaScript: The Good Parts','JS-GOOD','JavaScript Programming',799,749,25,0.70,NULL,NULL);

-- Business (Updated brand_id mapping)

INSERT INTO products
(seller_id,category_id,subcategory_id,brand_id,product_name,sku,description,price,discount_price,stock_quantity,weight,color,warranty)
VALUES
(1,4,53,146,'The Lean Startup','LEAN-START','Startup Management Book',699,649,30,0.45,NULL,NULL),
(1,4,53,146,'Blue Ocean Strategy','BLUE-OCEAN','Business Strategy Book',899,849,25,0.70,NULL,NULL),
(1,4,53,146,'Good to Great','GOOD-GREAT','Business Leadership Book',799,749,28,0.65,NULL,NULL),
(1,4,53,146,'The Hard Thing About Hard Things','HARD-THING','Entrepreneurship Guide',699,649,25,0.50,NULL,NULL),
(1,4,53,146,'The Personal MBA','PERSONAL-MBA','Business Fundamentals',899,849,22,0.85,NULL,NULL),
(1,4,53,146,'Start With Why','START-WHY','Leadership and Motivation',699,649,30,0.45,NULL,NULL),
(1,4,53,147,'One Up On Wall Street','ONE-UP','Investment Book',799,749,25,0.55,NULL,NULL),
(1,4,53,146,'The Millionaire Fastlane','FASTLANE','Wealth Creation Book',699,649,28,0.50,NULL,NULL),
(1,4,53,146,'The 10X Rule','10X-RULE','Business Success Book',799,749,22,0.55,NULL,NULL),
(1,4,53,147,'Common Stocks and Uncommon Profits','COMMON-STOCK','Investment Classic',999,949,18,0.70,NULL,NULL);

-- Biography (Updated brand_id mapping)

INSERT INTO products
(seller_id,category_id,subcategory_id,brand_id,product_name,sku,description,price,discount_price,stock_quantity,weight,color,warranty)
VALUES
(1,4,54,146,'Wings of Fire','BIO-WOF','Autobiography of A.P.J. Abdul Kalam',499,449,40,0.42,NULL,NULL),
(1,4,54,146,'My Experiments with Truth','BIO-GANDHI','Autobiography of Mahatma Gandhi',399,349,35,0.38,NULL,NULL),
(1,4,54,146,'The Diary of a Young Girl','BIO-ANNE','Biography of Anne Frank',499,449,30,0.40,NULL,NULL),
(1,4,54,147,'Steve Jobs','BIO-JOBS','Biography by Walter Isaacson',899,849,25,0.82,NULL,NULL),
(1,4,54,147,'Elon Musk','BIO-MUSK','Biography by Walter Isaacson',999,949,20,0.88,NULL,NULL),
(1,4,54,146,'Becoming','BIO-BECOME','Michelle Obama Memoir',799,749,22,0.70,NULL,NULL),
(1,4,54,146,'Long Walk to Freedom','BIO-MANDELA','Nelson Mandela Biography',699,649,25,0.68,NULL,NULL),
(1,4,54,146,'Playing It My Way','BIO-SACHIN','Sachin Tendulkar Autobiography',699,649,30,0.72,NULL,NULL),
(1,4,54,146,'The Story of My Life','BIO-HELLEN','Helen Keller Biography',399,349,35,0.35,NULL,NULL),
(1,4,54,147,'Einstein: His Life and Universe','BIO-EINSTEIN','Biography by Walter Isaacson',999,949,18,0.90,NULL,NULL);

-- Self Help (Updated brand_id mapping)

INSERT INTO products
(seller_id,category_id,subcategory_id,brand_id,product_name,sku,description,price,discount_price,stock_quantity,weight,color,warranty)
VALUES
(1,4,55,146,'The 7 Habits of Highly Effective People','SH-7HABITS','Personal Development Book',699,649,35,0.55,NULL,NULL),
(1,4,55,146,'How to Win Friends and Influence People','SH-WINFRIENDS','Communication Skills',599,549,40,0.48,NULL,NULL),
(1,4,55,146,'The Subtle Art of Not Giving a F*ck','SH-SUBTLE','Self Help Bestseller',699,649,30,0.46,NULL,NULL),
(1,4,55,146,'Think Like a Monk','SH-MONK','Life Lessons by Jay Shetty',599,549,35,0.45,NULL,NULL),
(1,4,55,146,'Can''t Hurt Me','SH-GOGGINS','Motivational Memoir',799,749,25,0.62,NULL,NULL),
(1,4,55,146,'Make Your Bed','SH-BED','Life Lessons Book',499,449,40,0.35,NULL,NULL),
(1,4,55,146,'The Mountain Is You','SH-MOUNTAIN','Self Growth Book',699,649,30,0.44,NULL,NULL),
(1,4,55,146,'Feel Good Productivity','SH-PROD','Productivity Guide',799,749,25,0.50,NULL,NULL),
(1,4,55,146,'The Magic of Thinking Big','SH-MAGIC','Success Mindset Book',599,549,35,0.46,NULL,NULL),
(1,4,55,146,'Awaken the Giant Within','SH-GIANT','Personal Achievement Book',799,749,25,0.65,NULL,NULL);

-- Cricket (Updated brand_id mapping)

INSERT INTO products
(seller_id,category_id,subcategory_id,brand_id,product_name,sku,description,price,discount_price,stock_quantity,weight,color,warranty)
VALUES
(1,5,56,28,'MRF Genius Grand Edition Bat','MRF-BAT','English Willow Cricket Bat',24999,22999,10,1.20,'Natural','1 Year'),
(1,5,56,28,'MRF Batting Gloves','MRF-GLOVE','Professional Cricket Gloves',3999,3699,20,0.45,'White','6 Months'),
(1,5,56,103,'SG Kashmir Willow Bat','SG-BAT','Premium Kashmir Willow Bat',4999,4499,25,1.25,'Natural','6 Months'),
(1,5,56,103,'SG Test Batting Pads','SG-PADS','Lightweight Batting Pads',3499,3199,20,1.60,'White','6 Months'),
(1,5,56,103,'SS Master 1000 Bat','SS-MASTER','English Willow Bat',14999,13999,15,1.18,'Natural','1 Year'),
(1,5,56,103,'SS Cricket Helmet','SS-HELMET','Adjustable Cricket Helmet',2999,2699,25,0.90,'Navy','6 Months'),
(1,5,56,103,'Kookaburra Turf Ball','KB-BALL','Leather Cricket Ball',899,799,40,0.16,'Red',NULL),
(1,5,56,103,'Kookaburra Cricket Kit Bag','KB-BAG','Large Cricket Kit Bag',4999,4599,18,2.80,'Blue','1 Year'),
(1,5,56,103,'Gray-Nicolls Cricket Shoes','GN-SHOES','Professional Cricket Shoes',6999,6499,18,0.95,'White','6 Months'),
(1,5,56,12,'Adidas Cricket Jersey','ADI-JERSEY','Performance Cricket Jersey',2499,2199,30,0.30,'Blue',NULL);

-- Football (Updated brand_id mapping)

INSERT INTO products
(seller_id,category_id,subcategory_id,brand_id,product_name,sku,description,price,discount_price,stock_quantity,weight,color,warranty)
VALUES
(1,5,57,12,'Adidas Al Rihla Football','ADI-BALL','FIFA Quality Football',3999,3699,25,0.45,'White','6 Months'),
(1,5,57,12,'Adidas Predator Boots','ADI-PRED','Football Boots',8999,8499,20,0.85,'Black','6 Months'),
(1,5,57,11,'Nike Academy Football','NIK-BALL','Training Football',2499,2299,30,0.44,'White','6 Months'),
(1,5,57,11,'Nike Mercurial Vapor Boots','NIK-MERC','Professional Football Boots',12999,11999,15,0.82,'Blue','6 Months'),
(1,5,57,13,'Puma Orbita Football','PUM-BALL','Match Football',2999,2699,28,0.43,'White','6 Months'),
(1,5,57,13,'Puma Future Boots','PUM-FUTURE','Football Boots',9999,9299,18,0.84,'Orange','6 Months'),
(1,5,57,105,'Nivia Storm Football','NIV-BALL','Training Football',999,899,50,0.42,'White','3 Months'),
(1,5,57,105,'Nivia Carbonite Boots','NIV-BOOT','Football Studs',2999,2699,30,0.88,'Black','3 Months'),
(1,5,57,96,'Cosco Goalkeeper Gloves','COS-GLOVE','Goalkeeper Gloves',1499,1299,35,0.32,'Green','3 Months'),
(1,5,57,105,'Vector X Shin Guards','VX-SHIN','Football Shin Guards',899,799,45,0.20,'Black','3 Months');

-- Badminton (Updated brand_id mapping)

INSERT INTO products
(seller_id,category_id,subcategory_id,brand_id,product_name,sku,description,price,discount_price,stock_quantity,weight,color,warranty)
VALUES
(1,5,58,100,'Yonex Astrox 100ZZ','YON-AST100','Professional Badminton Racket',18999,17999,15,0.09,'Black','6 Months'),
(1,5,58,100,'Yonex Mavis 350 Shuttlecock','YON-MAV350','Nylon Shuttlecock Pack',1299,1199,40,0.15,'White',NULL),
(1,5,58,103,'Li-Ning Wind Lite 900','LIN-WL900','Lightweight Badminton Racket',4999,4499,25,0.09,'Blue','6 Months'),
(1,5,58,103,'Li-Ning Badminton Kit Bag','LIN-BAG','Racket Carry Bag',2499,2299,20,0.70,'Black','6 Months'),
(1,5,58,103,'Victor Brave Sword 12','VIC-BS12','Professional Badminton Racket',8999,8499,18,0.09,'Red','6 Months'),
(1,5,58,103,'Victor Feather Shuttlecock','VIC-SHUTTLE','Tournament Feather Shuttlecock',1799,1699,30,0.16,'White',NULL),
(1,5,58,96,'Cosco CB-88 Racket','COS-CB88','Beginner Badminton Racket',999,899,40,0.11,'Blue','3 Months'),
(1,5,58,96,'Cosco Shuttlecock','COS-SHUT','Plastic Shuttlecock Set',499,449,50,0.14,'White',NULL),
(1,5,58,103,'Apacs Finapi 232','APA-FIN232','Carbon Fiber Racket',3999,3699,20,0.09,'Black','6 Months'),
(1,5,58,105,'Nivia Badminton Net','NIV-NET','Standard Badminton Net',1499,1299,25,1.50,'Black','3 Months');

-- Basketball (Updated brand_id mapping)

INSERT INTO products
(seller_id,category_id,subcategory_id,brand_id,product_name,sku,description,price,discount_price,stock_quantity,weight,color,warranty)
VALUES
(1,5,59,103,'Spalding NBA Basketball','SPA-NBA','Official Size 7 Basketball',3999,3699,25,0.62,'Orange','6 Months'),
(1,5,59,103,'Spalding Portable Hoop','SPA-HOOP','Adjustable Basketball Hoop',19999,18999,10,28.00,'Black','1 Year'),
(1,5,59,103,'Wilson Evolution Basketball','WIL-EVO','Indoor Game Basketball',6999,6499,18,0.63,'Brown','6 Months'),
(1,5,59,103,'Wilson NBA DRV Ball','WIL-DRV','Outdoor Basketball',2499,2299,30,0.61,'Orange','6 Months'),
(1,5,59,11,'Nike Elite Basketball','NIK-ELITE','Indoor Basketball',3499,3199,25,0.60,'Orange','6 Months'),
(1,5,59,11,'Nike Basketball Shoes','NIK-HOOPS','High Performance Shoes',8999,8499,20,0.90,'Black','6 Months'),
(1,5,59,96,'Cosco Basketball','COS-BBALL','Training Basketball',999,899,45,0.58,'Orange','3 Months'),
(1,5,59,96,'Cosco Basketball Net','COS-NET','Replacement Hoop Net',399,349,50,0.20,'White',NULL),
(1,5,59,105,'Nivia Top Grip Basketball','NIV-GRIP','Rubber Basketball',1499,1299,35,0.59,'Orange','3 Months'),
(1,5,59,12,'Adidas Basketball Jersey','ADI-BJER','Breathable Basketball Jersey',1999,1799,30,0.25,'Blue',NULL);

-- Volleyball (Updated brand_id mapping)

INSERT INTO products
(seller_id,category_id,subcategory_id,brand_id,product_name,sku,description,price,discount_price,stock_quantity,weight,color,warranty)
VALUES
(1,5,60,103,'Mikasa V200W Volleyball','MIK-V200','Official Match Volleyball',6999,6499,18,0.28,'Blue','6 Months'),
(1,5,60,103,'Mikasa Volleyball Net','MIK-NET','Professional Volleyball Net',2999,2699,20,2.00,'Black','6 Months'),
(1,5,60,103,'Molten V5M5000 Volleyball','MOL-V5','Premium Match Volleyball',5999,5499,18,0.27,'White','6 Months'),
(1,5,60,103,'Molten Knee Pads','MOL-KNEE','Protective Volleyball Knee Pads',1499,1299,30,0.30,'Black','3 Months'),
(1,5,60,105,'Nivia Volleyball','NIV-VBALL','Training Volleyball',1499,1299,35,0.28,'Yellow','3 Months'),
(1,5,60,105,'Nivia Volleyball Net','NIV-VNET','Practice Volleyball Net',1999,1799,25,1.90,'Black','3 Months'),
(1,5,60,96,'Cosco Volleyball','COS-VBALL','Outdoor Volleyball',999,899,40,0.30,'White','3 Months'),
(1,5,60,96,'Cosco Air Pump','COS-PUMP','Ball Inflation Pump',399,349,45,0.40,'Black','3 Months'),
(1,5,60,12,'Adidas Volleyball Shoes','ADI-VSHOE','Professional Court Shoes',7999,7499,20,0.85,'White','6 Months'),
(1,5,60,13,'Puma Sports Jersey','PUM-VJER','Volleyball Sports Jersey',1799,1599,35,0.22,'Blue',NULL);

-- Gym Equipment (Updated brand_id mapping)

INSERT INTO products
(seller_id,category_id,subcategory_id,brand_id,product_name,sku,description,price,discount_price,stock_quantity,weight,color,warranty)
VALUES
(1,5,61,102,'Cultsport Adjustable Dumbbells','CUL-DUMB','20kg Adjustable Dumbbell Set',9999,9299,20,20.00,'Black','1 Year'),
(1,5,61,102,'Cultsport Yoga Mat','CUL-YOGA','Anti-slip Yoga Mat',1499,1299,40,1.20,'Blue','6 Months'),
(1,5,61,103,'Kore PVC Dumbbell Set','KOR-DUMB','10kg Dumbbell Set',2999,2699,30,10.00,'Black','1 Year'),
(1,5,61,103,'Kore Kettlebell 12kg','KOR-KB12','Cast Iron Kettlebell',2499,2299,25,12.00,'Black','1 Year'),
(1,5,61,103,'PowerMax TDM-98 Treadmill','PMX-TDM98','Motorized Folding Treadmill',45999,42999,8,68.00,'Black','2 Years'),
(1,5,61,103,'PowerMax Exercise Bike','PMX-BIKE','Magnetic Exercise Bike',19999,18499,12,32.00,'Black','2 Years'),
(1,5,61,98,'Boldfit Resistance Bands','BFD-BANDS','Resistance Band Set',999,899,50,0.60,'Multicolor','6 Months'),
(1,5,61,98,'Boldfit Foam Roller','BFD-ROLLER','High Density Foam Roller',1499,1299,35,0.90,'Black','6 Months'),
(1,5,61,95,'Decathlon Pull-Up Bar','DEC-PULL','Doorway Pull-Up Bar',2499,2299,25,2.50,'Black','1 Year'),
(1,5,61,103,'USI Universal Bench','USI-BENCH','Adjustable Weight Bench',12999,11999,10,24.00,'Black','2 Years');

INSERT IGNORE INTO products
(seller_id,category_id,subcategory_id,brand_id,product_name,sku,description,price,discount_price,stock_quantity,weight,color,warranty)
VALUES
(1,5,62,106,'Hero Sprint Next Bicycle','HER-SPRINT','26 Inch Mountain Bicycle',11999,10999,15,16.50,'Black','1 Year'),
(1,5,62,106,'Hero Cycle Helmet','HER-HELM','Protective Cycling Helmet',1999,1799,30,0.35,'Black','6 Months'),
(1,5,62,103,'Firefox Bad Attitude 8 Bicycle','FF-BAD8','MTB Bicycle',24999,22999,10,14.80,'Red','1 Year'),
(1,5,62,103,'Firefox Water Bottle Cage','FF-CAGE','Aluminium Bottle Holder',799,699,40,0.15,'Black',NULL),
(1,5,62,103,'Montra Downtown Bicycle','MON-DOWN','Hybrid Bicycle',28999,26999,8,13.90,'Blue','1 Year'),
(1,5,62,103,'Montra Cycling Gloves','MON-GLOVE','Padded Cycling Gloves',999,899,35,0.12,'Black','3 Months'),
(1,5,62,95,'Btwin Riverside 120','BTW-RIV120','Hybrid Bicycle',19999,18499,12,15.20,'Grey','2 Years'),
(1,5,62,95,'Btwin Mini Pump','BTW-PUMP','Portable Cycle Pump',899,799,40,0.28,'Black','6 Months'),
(1,5,62,105,'Nivia Cycle Lock','NIV-LOCK','Steel Cable Lock',699,599,45,0.45,'Black','6 Months'),
(1,5,62,96,'Cosco Bicycle Bell','COS-BELL','Metal Cycle Bell',299,249,60,0.08,'Silver',NULL);



INSERT IGNORE INTO products
(seller_id,category_id,subcategory_id,brand_id,product_name,sku,description,price,discount_price,stock_quantity,weight,color,warranty)
VALUES
(1,5,64,107,'Speedo Biofuse Goggles','SPD-GOGGLE','Anti Fog Swimming Goggles',1999,1799,30,0.12,'Black','6 Months'),
(1,5,64,107,'Speedo Swim Cap','SPD-CAP','Silicone Swim Cap',799,699,40,0.08,'Blue',NULL),
(1,5,64,95,'Nabaiji Swimming Goggles','NAB-GOGGLE','Adult Swim Goggles',999,899,35,0.10,'Blue','6 Months'),
(1,5,64,95,'Nabaiji Kickboard','NAB-KICK','Swimming Training Kickboard',1499,1299,25,0.45,'Blue',NULL),
(1,5,64,103,'Arena Swim Jammer','ARE-JAM','Professional Swimwear',2999,2699,20,0.20,'Black',NULL),
(1,5,64,103,'Arena Swimming Cap','ARE-CAP','Silicone Swim Cap',999,899,30,0.08,'Black',NULL),
(1,5,64,107,'TYR Swim Fins','TYR-FINS','Training Swim Fins',3499,3199,18,0.90,'Yellow','6 Months'),
(1,5,64,107,'TYR Pull Buoy','TYR-BUOY','Swimming Training Aid',1499,1299,25,0.35,'Blue',NULL),
(1,5,64,95,'Decathlon Mesh Bag','DEC-MESH','Swimming Gear Bag',899,799,35,0.25,'Black',NULL),
(1,5,64,96,'Cosco Nose Clip Set','COS-NOSE','Swimming Nose Clip & Ear Plug',399,349,50,0.05,'Blue',NULL);

INSERT IGNORE INTO products
(seller_id,category_id,subcategory_id,brand_id,product_name,sku,description,price,discount_price,stock_quantity,weight,color,warranty)
VALUES
(1,5,65,96,'Cosco Frisbee Disc','COS-FRIS','Flying Disc',499,449,40,0.18,'Orange',NULL),
(1,5,65,96,'Cosco Cricket Stump Set','COS-STUMP','Plastic Cricket Stumps',999,899,30,1.20,'Yellow','3 Months'),
(1,5,65,105,'Nivia Cone Marker Set','NIV-CONE','Training Marker Cones',799,699,35,0.80,'Orange',NULL),
(1,5,65,105,'Nivia Agility Ladder','NIV-LADDER','Speed Training Ladder',1499,1299,25,1.00,'Yellow','6 Months'),
(1,5,65,95,'Decathlon Camping Tent','DEC-TENT','2 Person Camping Tent',6999,6499,12,3.50,'Green','1 Year'),
(1,5,65,95,'Decathlon Sleeping Bag','DEC-SLEEP','Compact Sleeping Bag',3499,3199,20,1.80,'Blue','1 Year'),
(1,5,65,103,'Coleman Camping Chair','COL-CHAIR','Foldable Outdoor Chair',2999,2699,18,2.80,'Blue','1 Year'),
(1,5,65,103,'Coleman Ice Box','COL-ICE','Portable Cooler Box',4499,4199,15,4.20,'Blue','1 Year'),
(1,5,65,103,'Wildcraft Trekking Pole','WLD-POLE','Adjustable Hiking Pole',1999,1799,25,0.45,'Black','6 Months'),
(1,5,65,103,'Wildcraft Backpack 45L','WLD-BAG45','Outdoor Trekking Backpack',4999,4599,20,1.50,'Grey','1 Year');

INSERT IGNORE INTO products
(seller_id,category_id,subcategory_id,brand_id,product_name,sku,description,price,discount_price,stock_quantity,weight,color,warranty)
VALUES
(1,6,66,112,'Maybelline Fit Me Foundation','MAY-FIT30','Matte Foundation 30ml',599,549,50,0.03,'Natural Beige',NULL),
(1,6,66,112,'Maybelline Colossal Kajal','MAY-KAJAL','Long Lasting Kajal',299,269,70,0.01,'Black',NULL),
(1,6,66,108,'Lakme 9to5 Primer Foundation','LAK-FOUND','Primer + Matte Foundation',699,649,40,0.03,'Warm Beige',NULL),
(1,6,66,108,'Lakme Eyeconic Kajal','LAK-KAJAL','Smudge Proof Kajal',249,219,80,0.01,'Black',NULL),
(1,6,66,109,'L''Oreal Paris Infallible Foundation','LOR-INFAL','24H Liquid Foundation',999,949,30,0.03,'Golden Beige',NULL),
(1,6,66,109,'L''Oreal Paris Rouge Lipstick','LOR-LIP','Matte Lipstick',799,749,40,0.01,'Ruby Red',NULL),
(1,6,66,114,'MAC Matte Lipstick Ruby Woo','MAC-RUBY','Premium Matte Lipstick',2300,2199,20,0.01,'Ruby Woo',NULL),
(1,6,66,114,'MAC Studio Fix Powder','MAC-POWDER','Compact Powder Foundation',3200,2999,15,0.02,'NC35',NULL),
(1,6,66,154,'Nykaa Matte Lipstick','NYK-LIP','Creamy Matte Lipstick',499,449,50,0.01,'Pink',NULL),
(1,6,66,154,'Nykaa Eyeshadow Palette','NYK-EYE','10 Color Eyeshadow Palette',899,849,30,0.12,'Multicolor',NULL);

INSERT IGNORE INTO products
(seller_id,category_id,subcategory_id,brand_id,product_name,sku,description,price,discount_price,stock_quantity,weight,color,warranty)
VALUES
(1,6,67,151,'Cetaphil Gentle Skin Cleanser','CET-CLEAN','Gentle Face Cleanser 250ml',699,649,40,0.25,NULL,NULL),
(1,6,67,151,'Cetaphil Moisturizing Lotion','CET-LOTION','Daily Moisturizer',799,749,35,0.25,NULL,NULL),
(1,6,67,112,'Minimalist Vitamin C Serum','MIN-VITC','10% Vitamin C Face Serum',699,649,40,0.03,NULL,NULL),
(1,6,67,112,'Minimalist Niacinamide Serum','MIN-NIA','5% Niacinamide Serum',599,549,45,0.03,NULL,NULL),
(1,6,67,152,'The Derma Co Sunscreen SPF50','DER-SPF','1% Hyaluronic Sunscreen',499,449,50,0.05,NULL,NULL),
(1,6,67,152,'The Derma Co Face Wash','DER-FW','Salicylic Acid Face Wash',349,319,60,0.10,NULL,NULL),
(1,6,67,110,'Neutrogena Hydro Boost Gel','NEU-GEL','Hydrating Water Gel',999,949,30,0.05,NULL,NULL),
(1,6,67,110,'Neutrogena Ultra Sheer Sunscreen','NEU-SPF','SPF50 Sunscreen',699,649,40,0.08,NULL,NULL),
(1,6,67,150,'Mamaearth Ubtan Face Wash','MAM-UBTAN','Natural Face Wash',299,269,60,0.10,NULL,NULL),
(1,6,67,150,'Mamaearth Vitamin C Serum','MAM-VITC','Glow Face Serum',599,549,40,0.03,NULL,NULL);

INSERT IGNORE INTO products
(seller_id,category_id,subcategory_id,brand_id,product_name,sku,description,price,discount_price,stock_quantity,weight,color,warranty)
VALUES
(1,6,68,109,'L''Oreal Paris Total Repair Shampoo','LOR-SHAM','Repair Shampoo 340ml',399,359,60,0.34,NULL,NULL),
(1,6,68,109,'L''Oreal Paris Conditioner','LOR-COND','Repair Conditioner',399,359,55,0.34,NULL,NULL),
(1,6,68,110,'Dove Intense Repair Shampoo','DOV-SHAM','Hair Repair Shampoo',349,319,65,0.34,NULL,NULL),
(1,6,68,110,'Dove Hair Conditioner','DOV-COND','Smooth Conditioner',349,319,60,0.34,NULL,NULL),
(1,6,68,115,'Tresemme Keratin Shampoo','TRE-SHAM','Keratin Smooth Shampoo',499,449,50,0.58,NULL,NULL),
(1,6,68,115,'Tresemme Hair Serum','TRE-SERUM','Keratin Hair Serum',699,649,35,0.10,NULL,NULL),
(1,6,68,150,'Mamaearth Onion Hair Oil','MAM-OIL','Hair Growth Oil',499,449,45,0.25,NULL,NULL),
(1,6,68,150,'Mamaearth Onion Shampoo','MAM-SHAM','Onion Hair Shampoo',399,359,50,0.25,NULL,NULL),
(1,6,68,116,'WOW Apple Cider Vinegar Shampoo','WOW-SHAM','Natural Shampoo',499,449,40,0.30,NULL,NULL),
(1,6,68,116,'WOW Hair Oil','WOW-OIL','Onion Black Seed Hair Oil',599,549,35,0.20,NULL,NULL);

INSERT IGNORE INTO products
(seller_id,category_id,subcategory_id,brand_id,product_name,sku,description,price,discount_price,stock_quantity,weight,color,warranty)
VALUES
(1,6,69,150,'Bella Vita CEO Man Perfume','BV-CEO','Eau De Parfum for Men',899,799,40,0.10,NULL,NULL),
(1,6,69,150,'Bella Vita Date Woman Perfume','BV-DATE','Eau De Parfum for Women',899,799,35,0.10,NULL,NULL),
(1,6,69,150,'Fogg Royal Body Spray','FOG-ROYAL','Long Lasting Deodorant',299,269,70,0.15,NULL,NULL),
(1,6,69,150,'Fogg Fresh Body Spray','FOG-FRESH','Fresh Deodorant',299,269,70,0.15,NULL,NULL),
(1,6,69,150,'Wild Stone Code Steel','WS-STEEL','Premium Perfume',499,449,50,0.12,NULL,NULL),
(1,6,69,150,'Wild Stone Edge','WS-EDGE','Deodorant Spray',299,269,60,0.15,NULL,NULL),
(1,6,69,150,'Denver Hamilton Perfume','DEN-HAM','Luxury Perfume',699,649,40,0.10,NULL,NULL),
(1,6,69,150,'Denver Pride Deo','DEN-PRIDE','Body Spray',299,269,60,0.15,NULL,NULL),
(1,6,69,150,'Engage L''amante Perfume','ENG-LAM','Perfume Spray',599,549,40,0.10,NULL,NULL),
(1,6,69,150,'Yardley London Gentleman','YAR-GENT','Classic Eau De Parfum',999,899,30,0.10,NULL,NULL);

INSERT IGNORE INTO products
(seller_id,category_id,subcategory_id,brand_id,product_name,sku,description,price,discount_price,stock_quantity,weight,color,warranty)
VALUES
(1,6,70,114,'Gillette Fusion5 Razor','GIL-FUS5','5 Blade Shaving Razor',799,749,50,0.12,NULL,NULL),
(1,6,70,114,'Gillette Shaving Foam','GIL-FOAM','Sensitive Skin Shaving Foam',299,269,60,0.25,NULL,NULL),
(1,6,70,150,'Beardo Beard Oil','BRD-OIL','Beard Growth Oil 50ml',499,449,45,0.08,NULL,NULL),
(1,6,70,150,'Beardo Beard Wash','BRD-WASH','Daily Beard Cleanser',399,359,40,0.12,NULL,NULL),
(1,6,70,151,'Bombay Shaving Company Trimmer','BSC-TRIM','Cordless Beard Trimmer',1999,1799,25,0.35,'Black','1 Year'),
(1,6,70,151,'Bombay Shaving Shaving Cream','BSC-CREAM','Premium Shaving Cream',349,319,50,0.10,NULL,NULL),
(1,6,70,27,'Philips Multigroom MG3721','PHI-MG3721','All-in-One Grooming Kit',2499,2299,30,0.40,'Black','2 Years'),
(1,6,70,27,'Philips Nose Trimmer NT3650','PHI-NT3650','Nose & Ear Trimmer',1499,1399,35,0.18,'Black','2 Years'),
(1,6,70,150,'Ustraa Beard Balm','UST-BALM','Beard Styling Balm',399,359,45,0.07,NULL,NULL),
(1,6,70,150,'Ustraa After Shave Lotion','UST-AFS','Cooling After Shave Lotion',299,269,50,0.10,NULL,NULL);

INSERT IGNORE INTO products
(seller_id,category_id,subcategory_id,brand_id,product_name,sku,description,price,discount_price,stock_quantity,weight,color,warranty)
VALUES
(1,6,71,152,'Dettol Original Soap','DET-SOAP','Antibacterial Bath Soap Pack',249,219,80,0.40,NULL,NULL),
(1,6,71,152,'Dettol Hand Wash','DET-HAND','Liquid Hand Wash 200ml',199,179,70,0.22,NULL,NULL),
(1,6,71,110,'Dove Cream Beauty Bar','DOV-SOAP','Moisturizing Bath Soap',299,269,70,0.40,NULL,NULL),
(1,6,71,110,'Dove Body Wash','DOV-BODY','Deep Moisture Body Wash',399,359,50,0.30,NULL,NULL),
(1,6,71,151,'Colgate Strong Teeth Toothpaste','COL-TOOTH','Toothpaste 200g',199,179,100,0.20,NULL,NULL),
(1,6,71,151,'Colgate Zig Zag Toothbrush','COL-BRUSH','Medium Toothbrush Pack',149,129,90,0.05,NULL,NULL),
(1,6,71,151,'Oral-B Pro Health Toothbrush','ORB-BRUSH','Soft Toothbrush',199,179,80,0.04,NULL,NULL),
(1,6,71,151,'Oral-B Mouthwash','ORB-MOUTH','Alcohol Free Mouthwash',299,269,60,0.50,NULL,NULL),
(1,6,71,112,'Nivea Body Lotion','NIV-LOTION','48H Moisture Body Lotion',399,359,50,0.40,NULL,NULL),
(1,6,71,152,'Vaseline Petroleum Jelly','VAS-JELLY','Original Skin Protectant',199,179,70,0.10,NULL,NULL);

INSERT IGNORE INTO products
(seller_id,category_id,subcategory_id,brand_id,product_name,sku,description,price,discount_price,stock_quantity,weight,color,warranty)
VALUES
(1,6,72,108,'Lakme Color Crush Nail Polish','LAK-RED','Long Wear Nail Color',199,179,60,0.01,'Red',NULL),
(1,6,72,108,'Lakme True Wear Nail Polish','LAK-PINK','Glossy Nail Color',199,179,60,0.01,'Pink',NULL),
(1,6,72,154,'Nykaa Nail Enamel','NYK-NUDE','Quick Dry Nail Polish',249,219,55,0.01,'Nude',NULL),
(1,6,72,154,'Nykaa Nail Polish Remover','NYK-REM','Acetone Free Remover',199,179,50,0.05,NULL,NULL),
(1,6,72,108,'Colorbar Nail Lacquer','COL-LAC','Professional Nail Color',299,269,45,0.01,'Maroon',NULL),
(1,6,72,108,'Colorbar Nail Remover','COL-REM','Gentle Nail Polish Remover',249,219,40,0.05,NULL,NULL),
(1,6,72,154,'Faces Canada Nail Enamel','FAC-BLUE','Gel Finish Nail Color',249,219,50,0.01,'Blue',NULL),
(1,6,72,154,'Faces Nail File Set','FAC-FILE','Professional Nail File',199,179,55,0.03,NULL,NULL),
(1,6,72,173,'Vega Manicure Set','VEG-MANI','7 Piece Manicure Kit',799,749,30,0.18,'Silver','1 Year'),
(1,6,72,173,'Vega Nail Cutter','VEG-CUT','Stainless Steel Nail Clipper',199,179,70,0.04,'Silver','1 Year');

INSERT IGNORE INTO products
(seller_id,category_id,subcategory_id,brand_id,product_name,sku,description,price,discount_price,stock_quantity,weight,color,warranty)
VALUES
(1,6,73,40,'Real Techniques Brush Set','RT-BRUSH','5 Piece Makeup Brush Set',1999,1799,30,0.25,'Pink',NULL),
(1,6,73,40,'Real Techniques Beauty Sponge','RT-SPONGE','Makeup Blending Sponge',799,699,40,0.05,'Orange',NULL),
(1,6,73,173,'Vega Makeup Brush Set','VEG-BRUSH','Professional Brush Kit',999,899,35,0.20,'Black',NULL),
(1,6,73,173,'Vega Eyelash Curler','VEG-CURL','Stainless Steel Eyelash Curler',399,349,45,0.08,'Silver',NULL),
(1,6,73,40,'Bronson Professional Brush Kit','BRO-BRUSH','12 Piece Makeup Brush Set',1499,1399,25,0.30,'Black',NULL),
(1,6,73,40,'Bronson Makeup Sponge Set','BRO-SPONGE','Beauty Blender Pack',499,449,40,0.06,'Pink',NULL),
(1,6,73,40,'Swiss Beauty Brush Set','SWI-BRUSH','10 Piece Makeup Brushes',899,799,35,0.22,'Black',NULL),
(1,6,73,40,'Swiss Beauty Mirror','SWI-MIRROR','LED Makeup Mirror',1499,1399,20,0.60,'White','1 Year'),
(1,6,73,27,'Alan Truman Hair Dryer','ALT-DRYER','Professional Hair Dryer',2499,2299,20,0.65,'Black','2 Years'),
(1,6,73,27,'Philips Hair Straightener','PHI-STRAIGHT','Ceramic Hair Straightener',2999,2799,18,0.45,'Black','2 Years');

-- educational tools
INSERT INTO products
(seller_id,category_id,subcategory_id,brand_id,product_name,sku,description,price,discount_price,stock_quantity,weight,color,warranty)
VALUES
(1,7,74,237,'LEGO Education Coding Express','LEG-CODE','STEM Learning Train Set',8999,8499,15,1.80,'Multicolor','1 Year'),
(1,7,74,237,'LEGO Education Simple Machines','LEG-MECH','STEM Engineering Kit',6999,6499,20,1.60,'Multicolor','1 Year'),
(1,7,74,238,'Skillmatics World Map Puzzle','SKL-WMAP','Educational Geography Puzzle',999,899,40,0.80,'Multicolor',NULL),
(1,7,74,238,'Skillmatics Guess in 10 Animals','SKL-GUESS','Educational Card Game',699,649,45,0.45,'Multicolor',NULL),
(1,7,74,120,'Funskool Learn Numbers','FUN-NUM','Number Learning Toy',599,549,50,0.60,'Multicolor',NULL),
(1,7,74,120,'Funskool Learn Alphabets','FUN-ABC','Alphabet Learning Kit',699,649,45,0.65,'Multicolor',NULL),
(1,7,74,239,'Melissa & Doug Wooden Clock','MD-CLOCK','Teaching Time Toy',1499,1399,30,0.90,'Multicolor',NULL),
(1,7,74,239,'Melissa & Doug Shape Sorter','MD-SHAPE','Wooden Shape Sorting Toy',1799,1699,25,1.10,'Multicolor',NULL),
(1,7,74,244,'Frank Solar System Puzzle','FRK-SOLAR','Educational Puzzle',799,749,35,0.55,'Multicolor',NULL),
(1,7,74,244,'Frank Human Body Puzzle','FRK-BODY','Science Learning Puzzle',899,849,35,0.60,'Multicolor',NULL);

INSERT IGNORE INTO products
(seller_id,category_id,subcategory_id,brand_id,product_name,sku,description,price,discount_price,stock_quantity,weight,color,warranty)
VALUES
(1,7,75,148,'Marvel Iron Man Action Figure','MAR-IRON','12 Inch Iron Man Figure',1499,1399,35,0.45,'Red',NULL),
(1,7,75,148,'Marvel Spider-Man Figure','MAR-SPIDEY','Spider-Man Action Figure',1299,1199,40,0.40,'Red',NULL),

(1,7,75,149,'DC Batman Action Figure','DC-BAT','Batman Collectible Figure',1499,1399,30,0.42,'Black',NULL),
(1,7,75,149,'DC Superman Action Figure','DC-SUP','Superman Figure',1499,1399,30,0.40,'Blue',NULL),

(1,7,75,245,'Hasbro Transformers Optimus Prime','HAS-OPT','Transformers Figure',2999,2799,20,0.80,'Red','6 Months'),
(1,7,75,245,'Hasbro Bumblebee Figure','HAS-BEE','Transformers Bumblebee',2499,2299,22,0.70,'Yellow','6 Months'),

(1,7,75,246,'Bandai Dragon Ball Goku','BAN-GOKU','Anime Action Figure',1999,1899,25,0.35,'Orange',NULL),
(1,7,75,246,'Bandai Naruto Figure','BAN-NAR','Naruto Action Figure',1899,1799,25,0.34,'Orange',NULL),

(1,7,75,119,'Mattel Jurassic World T-Rex','MAT-TREX','Dinosaur Figure',2499,2299,18,1.10,'Brown',NULL),
(1,7,75,119,'Mattel He-Man Figure','MAT-HEMAN','Masters of the Universe Figure',1999,1899,20,0.50,'Multicolor',NULL);

-- remote control toys
INSERT INTO products
(seller_id,category_id,subcategory_id,brand_id,product_name,sku,description,price,discount_price,stock_quantity,weight,color,warranty)
VALUES
(1,7,76,121,'Hot Wheels RC Monster Truck','HW-RCMT','Remote Control Monster Truck',3499,3299,20,1.20,'Blue','6 Months'),
(1,7,76,121,'Hot Wheels RC Race Car','HW-RCAR','Remote Control Racing Car',2999,2799,25,0.95,'Red','6 Months'),
(1,7,76,247,'Maisto RC Ferrari','MAI-FER','1:24 RC Ferrari Car',3999,3799,18,1.00,'Red','6 Months'),
(1,7,76,247,'Maisto RC Lamborghini','MAI-LAM','1:24 RC Lamborghini',3999,3799,18,1.00,'Yellow','6 Months'),
(1,7,76,248,'Syma X5C Drone','SYM-X5C','Camera Drone',5999,5499,15,0.80,'White','1 Year'),
(1,7,76,248,'Syma RC Helicopter','SYM-HELI','Remote Control Helicopter',3499,3299,20,0.75,'Black','6 Months'),
(1,7,76,249,'JJRC Stunt Car','JJR-STUNT','360° RC Stunt Car',2499,2299,25,0.85,'Green','6 Months'),
(1,7,76,249,'JJRC Mini Drone','JJR-DRONE','Beginner Drone',4999,4599,15,0.60,'Black','6 Months'),
(1,7,76,250,'Toyshine RC Jeep','TOY-JEEP','Rechargeable RC Jeep',2999,2799,22,0.90,'Orange','6 Months'),
(1,7,76,250,'Toyshine RC Boat','TOY-BOAT','Remote Control Speed Boat',4499,4199,15,1.10,'Blue','6 Months');

-- building blocks
INSERT INTO products
(seller_id,category_id,subcategory_id,brand_id,product_name,sku,description,price,discount_price,stock_quantity,weight,color,warranty)
VALUES
(1,7,77,237,'LEGO Classic Creative Bricks','LEG-CLASSIC','790 Piece Building Set',3999,3799,25,1.40,'Multicolor',NULL),
(1,7,77,237,'LEGO City Police Station','LEG-POLICE','Police Station Building Set',7999,7499,18,2.20,'Multicolor',NULL),
(1,7,77,251,'Mega Bloks Big Building Bag','MEG-BAG','80 Piece Building Blocks',1999,1799,30,1.00,'Multicolor',NULL),
(1,7,77,251,'Mega Bloks Wagon Set','MEG-WAGON','Pull Wagon Block Set',2999,2799,20,2.10,'Multicolor',NULL),
(1,7,77,120,'Funskool Builder Construction Set','FUN-BUILD','Construction Building Kit',1499,1399,35,1.20,'Multicolor',NULL),
(1,7,77,120,'Funskool Creative Blocks','FUN-BLOCK','Creative Building Set',999,899,40,0.90,'Multicolor',NULL),
(1,7,77,252,'Sluban Fire Rescue Set','SLU-FIRE','Fire Rescue Building Blocks',2499,2299,25,1.30,'Multicolor',NULL),
(1,7,77,252,'Sluban Army Tank Set','SLU-TANK','Military Building Block Set',2299,2099,22,1.25,'Green',NULL),
(1,7,77,253,'COKO Engineering Blocks','COK-ENG','STEM Construction Set',1799,1699,30,1.10,'Multicolor',NULL),
(1,7,77,253,'COKO City Builder Set','COK-CITY','Creative City Building Kit',1999,1899,28,1.20,'Multicolor',NULL);

-- board games
INSERT INTO products
(seller_id,category_id,subcategory_id,brand_id,product_name,sku,description,price,discount_price,stock_quantity,weight,color,warranty)
VALUES
(1,7,78,245,'Hasbro Monopoly Classic','HAS-MONO','Classic Monopoly Board Game',1499,1399,30,1.20,'Multicolor',NULL),
(1,7,78,245,'Hasbro Scrabble Original','HAS-SCRAB','Word Building Board Game',1299,1199,35,1.10,'Multicolor',NULL),
(1,7,78,120,'Funskool Scotland Yard','FUN-SYARD','Detective Strategy Game',999,899,30,0.95,'Multicolor',NULL),
(1,7,78,120,'Funskool Sequence','FUN-SEQ','Family Strategy Board Game',899,799,35,0.90,'Multicolor',NULL),
(1,7,78,119,'Mattel UNO Cards','MAT-UNO','Classic UNO Card Game',299,249,60,0.20,'Multicolor',NULL),
(1,7,78,119,'Mattel Blokus','MAT-BLOK','Strategy Board Game',1999,1899,20,1.30,'Multicolor',NULL),
(1,7,78,238,'Skillmatics Guess in 10 Countries','SKL-COUNTRY','Educational Card Game',699,649,40,0.45,'Multicolor',NULL),
(1,7,78,238,'Skillmatics Rapid Rumble','SKL-RUMBLE','Fast Family Game',799,749,35,0.55,'Multicolor',NULL),
(1,7,78,259,'Ekta Chess Set','EKT-CHESS','Wooden Chess Board',999,899,30,0.85,'Brown',NULL),
(1,7,78,259,'Ekta Ludo & Snakes','EKT-LUDO','2-in-1 Family Game',499,449,50,0.60,'Multicolor',NULL);

-- dolls
INSERT INTO products
(seller_id,category_id,subcategory_id,brand_id,product_name,sku,description,price,discount_price,stock_quantity,weight,color,warranty)
VALUES
(1,7,79,162,'Barbie Fashionista Doll','BAR-FASH','Fashion Doll',1499,1399,30,0.40,'Pink',NULL),
(1,7,79,162,'Barbie Dreamtopia Princess','BAR-PRIN','Princess Doll',1999,1899,25,0.45,'Pink',NULL),
(1,7,79,163,'Disney Elsa Doll','DIS-ELSA','Frozen Elsa Doll',2499,2299,20,0.50,'Blue',NULL),
(1,7,79,163,'Disney Anna Doll','DIS-ANNA','Frozen Anna Doll',2499,2299,20,0.50,'Purple',NULL),
(1,7,79,120,'Funskool Baby Doll','FUN-BABY','Soft Baby Doll',999,899,35,0.60,'Pink',NULL),
(1,7,79,120,'Funskool Doll Stroller','FUN-STROL','Toy Doll Stroller',1799,1699,20,1.80,'Pink',NULL),
(1,7,79,260,'Baby Alive Doll','BAB-ALIVE','Interactive Baby Doll',3999,3799,15,1.10,'Pink','6 Months'),
(1,7,79,260,'Baby Alive Feeding Set','BAB-FEED','Doll Feeding Accessories',1499,1399,25,0.70,'Multicolor',NULL),
(1,7,79,261,'LuvLap Plush Doll','LUV-DOLL','Soft Plush Doll',799,699,40,0.35,'Brown',NULL),
(1,7,79,261,'Hamleys Teddy Doll','HAM-TEDDY','Large Teddy Bear',1999,1899,20,1.50,'Brown',NULL);

-- puzzles
INSERT INTO products
(seller_id,category_id,subcategory_id,brand_id,product_name,sku,description,price,discount_price,stock_quantity,weight,color,warranty)
VALUES
(1,7,80,262,'Ravensburger World Map Puzzle','RAV-WMAP','1000 Piece Puzzle',1999,1899,20,0.90,'Multicolor',NULL),
(1,7,80,262,'Ravensburger Disney Puzzle','RAV-DIS','500 Piece Puzzle',1499,1399,25,0.80,'Multicolor',NULL),
(1,7,80,244,'Frank India Map Puzzle','FRK-IND','Educational India Puzzle',599,549,40,0.45,'Multicolor',NULL),
(1,7,80,244,'Frank Alphabet Puzzle','FRK-ABC','Alphabet Learning Puzzle',499,449,45,0.40,'Multicolor',NULL),
(1,7,80,238,'Skillmatics Animal Puzzle','SKL-ANIMAL','Educational Puzzle Set',799,749,35,0.55,'Multicolor',NULL),
(1,7,80,238,'Skillmatics Dinosaur Puzzle','SKL-DINO','Jigsaw Puzzle',899,849,30,0.60,'Multicolor',NULL),
(1,7,80,239,'Melissa & Doug Wooden Puzzle','MD-WOOD','Wooden Peg Puzzle',999,899,30,0.70,'Multicolor',NULL),
(1,7,80,239,'Melissa & Doug Vehicle Puzzle','MD-VEH','Vehicle Wooden Puzzle',1099,999,25,0.75,'Multicolor',NULL),
(1,7,80,263,'Eduedge Solar System Puzzle','EDU-SOLAR','Science Puzzle',699,649,35,0.50,'Multicolor',NULL),
(1,7,80,263,'Eduedge Human Body Puzzle','EDU-BODY','Educational Anatomy Puzzle',799,749,30,0.55,'Multicolor',NULL);

-- outdoor toys
INSERT INTO products
(seller_id,category_id,subcategory_id,brand_id,product_name,sku,description,price,discount_price,stock_quantity,weight,color,warranty)
VALUES
(1,7,81,264,'Little Tikes Easy Score Basketball Set','LT-BASKET','Kids Basketball Set',6999,6499,15,8.50,'Multicolor','1 Year'),
(1,7,81,264,'Little Tikes First Slide','LT-SLIDE','Kids Plastic Slide',7999,7499,12,10.20,'Red','1 Year'),
(1,7,81,120,'Funskool Cricket Set','FUN-CRICKET','Plastic Cricket Set',999,899,40,1.20,'Multicolor',NULL),
(1,7,81,120,'Funskool Bowling Set','FUN-BOWL','Kids Bowling Game',899,799,35,1.00,'Multicolor',NULL),
(1,7,81,265,'Step2 Water Table','STP-WATER','Outdoor Water Play Table',9999,9499,10,9.50,'Blue','1 Year'),
(1,7,81,265,'Step2 Play Ball Fun Climber','STP-CLIMB','Kids Outdoor Climber',18999,17999,8,18.00,'Multicolor','1 Year'),
(1,7,81,266,'Nerf Elite Blaster','NER-BLAST','Foam Dart Blaster',2499,2299,25,0.90,'Blue','6 Months'),
(1,7,81,266,'Nerf Dart Refill Pack','NER-DART','Foam Dart Pack',799,699,40,0.30,'Blue',NULL),
(1,7,81,267,'Hamleys Bubble Machine','HAM-BUBBLE','Automatic Bubble Maker',1999,1899,20,0.80,'Pink','6 Months'),
(1,7,81,267,'Hamleys Flying Disc','HAM-DISC','Outdoor Flying Disc',499,449,45,0.20,'Yellow',NULL);

-- fruits and vegetable
INSERT INTO products
(seller_id,category_id,subcategory_id,brand_id,product_name,sku,description,price,discount_price,stock_quantity,weight,color,warranty)
VALUES
(1,8,82,94,'Fresh Red Apples 1kg','FRU-APPLE','Premium Fresh Red Apples',220,199,100,1.00,'Red',NULL),
(1,8,82,94,'Fresh Bananas 1 Dozen','FRU-BANANA','Farm Fresh Bananas',80,69,120,1.20,'Yellow',NULL),
(1,8,82,94,'Fresh Oranges 1kg','FRU-ORANGE','Juicy Fresh Oranges',120,109,90,1.00,'Orange',NULL),
(1,8,82,94,'Fresh Mangoes 1kg','FRU-MANGO','Alphonso Mangoes',350,329,60,1.00,'Yellow',NULL),
(1,8,82,94,'Fresh Tomatoes 1kg','VEG-TOMATO','Farm Fresh Tomatoes',50,45,150,1.00,'Red',NULL),
(1,8,82,94,'Fresh Potatoes 1kg','VEG-POTATO','Fresh Potatoes',40,35,180,1.00,'Brown',NULL),
(1,8,82,94,'Fresh Onions 1kg','VEG-ONION','Premium Onions',45,39,170,1.00,'Purple',NULL),
(1,8,82,94,'Fresh Carrots 1kg','VEG-CARROT','Organic Carrots',70,65,100,1.00,'Orange',NULL),
(1,8,82,94,'Fresh Spinach 500g','VEG-SPINACH','Green Spinach Leaves',40,35,80,0.50,'Green',NULL),
(1,8,82,94,'Fresh Cauliflower 1pc','VEG-CAULI','Fresh Cauliflower',60,55,90,0.80,'White',NULL);

-- dairy products
INSERT INTO products
(seller_id,category_id,subcategory_id,brand_id,product_name,sku,description,price,discount_price,stock_quantity,weight,color,warranty)
VALUES
(1,8,83,30,'Amul Gold Milk 1L','AMU-GOLD','Full Cream Milk',68,65,150,1.00,NULL,NULL),
(1,8,83,30,'Amul Butter 500g','AMU-BUTTER','Salted Butter',320,299,80,0.50,NULL,NULL),
(1,8,83,87,'Mother Dairy Toned Milk 1L','MD-MILK','Fresh Toned Milk',62,59,140,1.00,NULL,NULL),
(1,8,83,87,'Mother Dairy Paneer 200g','MD-PANEER','Fresh Paneer',110,99,70,0.20,NULL,NULL),
(1,8,83,89,'Britannia Cheese Slices','BRI-CHEESE','Processed Cheese Slices',180,169,60,0.20,NULL,NULL),
(1,8,83,89,'Britannia Fresh Cream','BRI-CREAM','Fresh Dairy Cream',85,79,65,0.20,NULL,NULL),
(1,8,83,88,'Nestle A+ Milk 1L','NES-MILK','Premium Cow Milk',70,66,120,1.00,NULL,NULL),
(1,8,83,88,'Nestle Everyday Dairy Whitener','NES-WHITE','Milk Powder',220,205,50,0.40,NULL,NULL),
(1,8,83,268,'Gowardhan Ghee 1L','GOW-GHEE','Pure Cow Ghee',720,699,40,1.00,NULL,NULL),
(1,8,83,270,'Milky Mist Curd 400g','MM-CURD','Fresh Curd',65,59,90,0.40,NULL,NULL);

-- bakery
INSERT INTO products
(seller_id,category_id,subcategory_id,brand_id,product_name,sku,description,price,discount_price,stock_quantity,weight,color,warranty)
VALUES
(1,8,84,89,'Britannia Whole Wheat Bread','BRI-BREAD','Healthy Wheat Bread',50,45,100,0.40,NULL,NULL),
(1,8,84,89,'Britannia Fruit Cake','BRI-CAKE','Fruit Cake',40,35,80,0.08,NULL,NULL),
(1,8,84,271,'Harvest Gold White Bread','HG-BREAD','Fresh White Bread',45,40,100,0.40,NULL,NULL),
(1,8,84,271,'Harvest Gold Burger Buns','HG-BUN','Soft Burger Buns',55,49,70,0.30,NULL,NULL),
(1,8,84,272,'English Oven Brown Bread','EO-BREAD','Brown Bread',55,49,80,0.40,NULL,NULL),
(1,8,84,272,'English Oven Garlic Bread','EO-GARLIC','Garlic Bread Loaf',90,85,50,0.35,NULL,NULL),
(1,8,84,273,'Monginis Chocolate Cake','MON-CAKE','Chocolate Cake 500g',350,329,30,0.50,NULL,NULL),
(1,8,84,273,'Monginis Swiss Roll','MON-ROLL','Vanilla Swiss Roll',120,109,40,0.25,NULL,NULL),
(1,8,84,275,'The Baker''s Dozen Croissant','BD-CROISS','Butter Croissant',90,85,35,0.10,NULL,NULL),
(1,8,84,275,'The Baker''s Dozen Multigrain Bread','BD-MULTI','Multigrain Bread',120,110,40,0.45,NULL,NULL);

-- snacks
INSERT INTO products
(seller_id,category_id,subcategory_id,brand_id,product_name,sku,description,price,discount_price,stock_quantity,weight,color,warranty)
VALUES
(1,8,85,276,'Lay''s Magic Masala Chips','LAY-MM','Potato Chips 52g',20,18,200,0.05,NULL,NULL),
(1,8,85,276,'Lay''s American Style Chips','LAY-AS','Cream & Onion Chips',20,18,180,0.05,NULL,NULL),
(1,8,85,277,'Kurkure Masala Munch','KUR-MM','Crunchy Snack',20,18,180,0.05,NULL,NULL),
(1,8,85,277,'Kurkure Chilli Chatka','KUR-CC','Spicy Corn Snack',20,18,180,0.05,NULL,NULL),
(1,8,85,278,'Haldiram''s Aloo Bhujia','HAL-AB','Traditional Namkeen',85,79,100,0.40,NULL,NULL),
(1,8,85,278,'Haldiram''s Moong Dal','HAL-MD','Salted Moong Dal',95,89,80,0.40,NULL,NULL),
(1,8,85,279,'Bingo Mad Angles','BIN-MA','Achaari Masti Chips',25,22,150,0.06,NULL,NULL),
(1,8,85,279,'Bingo Original Style Chips','BIN-OS','Salted Potato Chips',20,18,150,0.05,NULL,NULL),
(1,8,85,281,'Too Yumm Veggie Stix','TY-STIX','Healthy Veggie Snack',30,27,120,0.07,NULL,NULL),
(1,8,85,280,'Pringles Original Chips','PRI-ORG','Original Potato Crisps',125,115,60,0.11,NULL,NULL);

-- bevarage
INSERT INTO products
(seller_id,category_id,subcategory_id,brand_id,product_name,sku,description,price,discount_price,stock_quantity,weight,color,warranty)
VALUES
(1,8,86,282,'Coca-Cola Soft Drink 2L','COKE-2L','Carbonated Soft Drink',95,89,100,2.00,NULL,NULL),
(1,8,86,282,'Coca-Cola Zero 750ml','COKE-ZERO','Sugar Free Soft Drink',45,42,120,0.75,NULL,NULL),
(1,8,86,91,'Pepsi Black 2L','PEP-BLACK','Zero Sugar Cola',95,89,90,2.00,NULL,NULL),
(1,8,86,91,'Pepsi 750ml','PEP-750','Carbonated Soft Drink',45,42,120,0.75,NULL,NULL),
(1,8,86,283,'Tropicana Mixed Fruit Juice 1L','TRO-MIX','Mixed Fruit Juice',140,129,80,1.00,NULL,NULL),
(1,8,86,283,'Tropicana Orange Juice 1L','TRO-ORG','Orange Fruit Juice',140,129,80,1.00,NULL,NULL),
(1,8,86,284,'Real Mango Juice 1L','REA-MANGO','Mango Fruit Juice',135,125,80,1.00,NULL,NULL),
(1,8,86,284,'Real Mixed Fruit Juice 1L','REA-MIX','Mixed Fruit Juice',135,125,80,1.00,NULL,NULL),
(1,8,86,285,'Red Bull Energy Drink 250ml','RB-250','Energy Drink',125,119,70,0.25,NULL,NULL),
(1,8,86,285,'Monster Energy Drink 350ml','MON-350','Energy Drink',145,139,60,0.35,NULL,NULL);

-- rice and grains
INSERT INTO products
(seller_id,category_id,subcategory_id,brand_id,product_name,sku,description,price,discount_price,stock_quantity,weight,color,warranty)
VALUES
(1,8,87,127,'India Gate Basmati Rice 5kg','IG-BAS5','Premium Basmati Rice',699,659,60,5.00,NULL,NULL),
(1,8,87,127,'India Gate Classic Rice 1kg','IG-CL1','Classic Basmati Rice',180,169,100,1.00,NULL,NULL),
(1,8,87,128,'Fortune Basmati Rice 5kg','FOR-BAS5','Premium Rice',649,619,70,5.00,NULL,NULL),
(1,8,87,128,'Fortune Everyday Rice 1kg','FOR-EVE1','Daily Rice',90,85,100,1.00,NULL,NULL),
(1,8,87,286,'Aashirvaad Whole Wheat Atta 5kg','ASH-ATTA5','Whole Wheat Flour',310,295,80,5.00,NULL,NULL),
(1,8,87,286,'Aashirvaad Multigrain Atta 5kg','ASH-MULTI','Multigrain Flour',420,399,60,5.00,NULL,NULL),
(1,8,87,287,'24 Mantra Organic Brown Rice 1kg','24M-BROWN','Organic Brown Rice',180,169,50,1.00,NULL,NULL),
(1,8,87,287,'24 Mantra Organic Wheat 1kg','24M-WHEAT','Organic Wheat',95,89,60,1.00,NULL,NULL),
(1,8,87,287,'24 Mantra Organic 1kg','QUA-OATS','Rolled Oats',210,199,70,1.00,NULL,NULL),
(1,8,87,287,'24 Mantra Organic Corn Flakes 875g','KEL-CORN','Breakfast Cereal',385,369,60,0.88,NULL,NULL);

-- pulses
INSERT INTO products
(seller_id,category_id,subcategory_id,brand_id,product_name,sku,description,price,discount_price,stock_quantity,weight,color,warranty)
VALUES
(1,8,88,29,'Tata Sampann Toor Dal 1kg','TS-TOOR','Premium Toor Dal',185,175,90,1.00,NULL,NULL),
(1,8,88,29,'Tata Sampann Moong Dal 1kg','TS-MOONG','Premium Moong Dal',170,160,80,1.00,NULL,NULL),
(1,8,88,128,'Fortune Chana Dal 1kg','FOR-CHANA','Split Bengal Gram',120,110,100,1.00,NULL,NULL),
(1,8,88,128,'Fortune Masoor Dal 1kg','FOR-MASOOR','Red Lentils',130,120,90,1.00,NULL,NULL),
(1,8,88,287,'24 Mantra Organic Urad Dal 1kg','24M-URAD','Organic Black Gram',210,199,60,1.00,NULL,NULL),
(1,8,88,287,'24 Mantra Organic Chana Dal 1kg','24M-CHANA','Organic Chana Dal',180,169,60,1.00,NULL,NULL),
(1,8,88,288,'Organic Tattva Rajma 1kg','OT-RAJMA','Organic Kidney Beans',220,209,50,1.00,NULL,NULL),
(1,8,88,288,'Organic Tattva Kabuli Chana 1kg','OT-KABULI','Organic Chickpeas',210,199,50,1.00,NULL,NULL),
(1,8,88,289,'Natureland Green Moong 1kg','NL-MOONG','Whole Green Gram',170,159,60,1.00,NULL,NULL),
(1,8,88,289,'Natureland Black Chana 1kg','NL-CHANA','Whole Black Gram',160,149,60,1.00,NULL,NULL);

-- cooking oil
INSERT INTO products
(seller_id,category_id,subcategory_id,brand_id,product_name,sku,description,price,discount_price,stock_quantity,weight,color,warranty)
VALUES
(1,8,89,128,'Fortune Sunlite Refined Oil 1L','FOR-SUN1','Refined Sunflower Oil',185,175,80,1.00,NULL,NULL),
(1,8,89,128,'Fortune Rice Bran Oil 1L','FOR-RICE1','Rice Bran Oil',210,199,70,1.00,NULL,NULL),
(1,8,89,290,'Saffola Gold Oil 1L','SAF-GOLD','Blended Edible Oil',235,225,60,1.00,NULL,NULL),
(1,8,89,290,'Saffola Active Oil 1L','SAF-ACT','Healthy Cooking Oil',245,235,60,1.00,NULL,NULL),
(1,8,89,291,'Dhara Mustard Oil 1L','DHA-MUST','Kachi Ghani Mustard Oil',195,185,70,1.00,NULL,NULL),
(1,8,89,291,'Dhara Groundnut Oil 1L','DHA-GNUT','Groundnut Cooking Oil',235,225,60,1.00,NULL,NULL),
(1,8,89,292,'Gemini Sunflower Oil 1L','GEM-SUN','Refined Sunflower Oil',180,170,80,1.00,NULL,NULL),
(1,8,89,292,'Gemini Rice Bran Oil 1L','GEM-RICE','Rice Bran Oil',205,195,70,1.00,NULL,NULL),
(1,8,89,293,'Figaro Extra Virgin Olive Oil 500ml','FIG-OLIVE','Extra Virgin Olive Oil',625,599,40,0.50,NULL,NULL),
(1,8,89,294,'Borges Olive Oil 500ml','BOR-OLIVE','Pure Olive Oil',599,579,40,0.50,NULL,NULL);

-- spices
INSERT INTO products
(seller_id,category_id,subcategory_id,brand_id,product_name,sku,description,price,discount_price,stock_quantity,weight,color,warranty)
VALUES
(1,8,90,296,'Everest Garam Masala 100g','EVE-GM100','Premium Garam Masala',95,89,100,0.10,NULL,NULL),
(1,8,90,296,'Everest Red Chilli Powder 200g','EVE-RCP200','Red Chilli Powder',120,110,90,0.20,NULL,NULL),
(1,8,90,297,'MDH Kitchen King 100g','MDH-KK100','Kitchen King Masala',90,85,80,0.10,NULL,NULL),
(1,8,90,297,'MDH Chana Masala 100g','MDH-CM100','Chana Masala',85,79,80,0.10,NULL,NULL),
(1,8,90,295,'Catch Black Pepper 100g','CAT-BP100','Ground Black Pepper',165,155,60,0.10,NULL,NULL),
(1,8,90,295,'Catch Turmeric Powder 200g','CAT-TP200','Pure Turmeric Powder',95,89,70,0.20,NULL,NULL),
(1,8,90,29,'Tata Sampann Coriander Powder 200g','TS-CP200','Coriander Powder',110,99,70,0.20,NULL,NULL),
(1,8,90,29,'Tata Sampann Cumin Powder 200g','TS-CUP200','Cumin Powder',130,120,60,0.20,NULL,NULL),
(1,8,90,288,'Organic India Turmeric 100g','OI-TUR100','Organic Turmeric Powder',145,135,50,0.10,NULL,NULL),
(1,8,90,288,'Organic India Black Pepper 100g','OI-BP100','Organic Black Pepper',199,189,45,0.10,NULL,NULL);

-- tea and coffee
INSERT INTO products
(seller_id,category_id,subcategory_id,brand_id,product_name,sku,description,price,discount_price,stock_quantity,weight,color,warranty)
VALUES
(1,8,91,29,'Tata Tea Gold 1kg','TT-GOLD1','Premium Tea',620,599,60,1.00,NULL,NULL),
(1,8,91,29,'Tata Tea Premium 500g','TT-PREM500','Premium Blend Tea',310,295,80,0.50,NULL,NULL),
(1,8,91,298,'Brooke Bond Red Label 1kg','BB-RL1','Red Label Tea',610,589,60,1.00,NULL,NULL),
(1,8,91,298,'Brooke Bond Taj Mahal 500g','BB-TM500','Premium Tea',340,325,70,0.50,NULL,NULL),
(1,8,91,299,'Nescafe Classic 200g','NES-CL200','Instant Coffee',480,459,70,0.20,NULL,NULL),
(1,8,91,299,'Nescafe Gold 100g','NES-GOLD100','Premium Coffee',650,620,50,0.10,NULL,NULL),
(1,8,91,300,'Bru Instant Coffee 200g','BRU-200','Instant Coffee',430,410,70,0.20,NULL,NULL),
(1,8,91,300,'Bru Gold Coffee 100g','BRU-GOLD100','Premium Coffee',580,559,55,0.10,NULL,NULL),
(1,8,91,301,'Lipton Green Tea 100 Bags','LIP-GT100','Green Tea Bags',550,525,50,0.25,NULL,NULL),
(1,8,91,301,'Lipton English Breakfast Tea','TWI-EB100','Premium Black Tea',799,759,35,0.20,NULL,NULL);

-- frozen foods
INSERT INTO products
(seller_id,category_id,subcategory_id,brand_id,product_name,sku,description,price,discount_price,stock_quantity,weight,color,warranty)
VALUES
(1,8,92,302,'McCain French Fries 750g','MCC-FRIES','Frozen French Fries',220,199,70,0.75,NULL,NULL),
(1,8,92,302,'McCain Aloo Tikki 420g','MCC-TIKKI','Frozen Potato Patties',180,169,60,0.42,NULL,NULL),
(1,8,92,303,'ITC Master Chef Veg Nuggets','ITC-NUG','Frozen Veg Nuggets',220,209,60,0.40,NULL,NULL),
(1,8,92,303,'ITC Master Chef Veg Burger Patty','ITC-PATTY','Frozen Burger Patties',250,239,50,0.45,NULL,NULL),
(1,8,92,72,'Godrej Yummiez Chicken Nuggets','GOD-NUG','Frozen Chicken Nuggets',320,299,45,0.40,NULL,NULL),
(1,8,92,72,'Godrej Yummiez Chicken Seekh Kebab','GOD-KEBAB','Frozen Chicken Kebab',340,319,40,0.50,NULL,NULL),
(1,8,92,304,'Safal Green Peas 500g','SAF-PEAS','Frozen Green Peas',120,110,80,0.50,NULL,NULL),
(1,8,92,304,'Safal Sweet Corn 500g','SAF-CORN','Frozen Sweet Corn',130,120,75,0.50,NULL,NULL),
(1,8,92,305,'Venky''s Chicken Sausages','VEN-SAUS','Frozen Chicken Sausages',280,265,45,0.40,NULL,NULL),
(1,8,92,305,'Venky''s Chicken Salami','VEN-SALAMI','Frozen Chicken Salami',260,245,45,0.30,NULL,NULL);

-- baby food
INSERT INTO products
(seller_id,category_id,subcategory_id,brand_id,product_name,sku,description,price,discount_price,stock_quantity,weight,color,warranty)
VALUES
(1,8,93,88,'Nestle Cerelac Wheat Apple 300g','CER-WA300','Baby Cereal',325,309,70,0.30,NULL,NULL),
(1,8,93,88,'Nestle Cerelac Rice 300g','CER-RICE300','Rice Baby Cereal',315,299,70,0.30,NULL,NULL),
(1,8,93,255,'Farex Baby Cereal 300g','FAR-CER300','Infant Cereal',299,285,60,0.30,NULL,NULL),
(1,8,93,255,'Farex Rice Cereal 300g','FAR-RICE300','Rice Based Baby Food',310,295,60,0.30,NULL,NULL),
(1,8,93,256,'Nestogen Infant Formula 400g','NES-INF400','Infant Milk Formula',499,479,50,0.40,NULL,NULL),
(1,8,93,256,'Nestogen Follow-Up Formula 400g','NES-FOL400','Follow-up Formula',529,509,45,0.40,NULL,NULL),
(1,8,93,257,'Similac Stage 2 Formula 400g','SIM-ST2400','Infant Formula',699,669,40,0.40,NULL,NULL),
(1,8,93,257,'Similac Advance Formula 400g','SIM-ADV400','Milk Formula',749,719,35,0.40,NULL,NULL),
(1,8,93,258,'Slurrp Farm Ragi Cereal','SLU-RAGI','Natural Baby Cereal',399,379,45,0.25,NULL,NULL),
(1,8,93,258,'Slurrp Farm Multigrain Cereal','SLU-MULTI','Healthy Baby Cereal',425,399,40,0.25,NULL,NULL);
