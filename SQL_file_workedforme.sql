CREATE SCHEMA `online_shoppers`;

CREATE TABLE `online_shoppers`.`online_shoppers` (
  `idonline_shoppers` INT NOT NULL,
  `productrelated` INT NOT NULL,
  `productrelated_duration` INT NOT NULL,
  `browser` INT NOT NULL,
  `visitortype` VARCHAR(45) NOT NULL,
  `weekend` VARCHAR(5) NOT NULL,
  PRIMARY KEY (`idonline_shoppers`)
);

INSERT INTO online_shoppers.online_shoppers (idonline_shoppers, productrelated, productrelated_duration, browser, visitortype, weekend)
VALUES
    (1, 1, 0, 1, 'RETURNING', 'FALSE'),
    (2, 2, 64, 2, 'RETURNING', 'FALSE'),
    (3, 1, 0, 1, 'RETURNING', 'FALSE' ),
    (4, 2, 2.6666, 2, 'RETURNING', 'FALSE' ),
    (5, 10, 627.5, 3, 'RETURNING', 'FALSE' ),
    (6, 19, 154.216, 2, 'RETURNING', 'FALSE' ),
    (7, 1, 0, 4, 'RETURNING', 'FALSE' ),
    (8, 0, 0, 2, 'RETURNING', 'FALSE' ),
    (9, 2, 37, 2, 'RETURNING', 'FALSE' ),
    (10, 3, 738, 4, 'RETURNING', 'FALSE' );

CREATE SCHEMA `amazon_shoppers`;

CREATE TABLE `amazon_shoppers`.`amazon_shoppers` (
  `product_id` VARCHAR(20) NOT NULL,
  `product_name` VARCHAR(255) NOT NULL,
  `category` VARCHAR(50) NOT NULL,
  `actual_price` DECIMAL(10,2) NOT NULL,
  `rating` FLOAT NOT NULL,
  PRIMARY KEY (`product_id`)
);

INSERT INTO amazon_shoppers.amazon_shoppers (product_id, product_name, category, actual_price, rating)
VALUES
    ('B07JW9H4J1', 'Wayona Nylon Braided USB to Lightning Fast Charging and Data Sync Cable Compatible for iPhone 13, 12,11, X, 8, 7, 6, 5, iPad Air, Pro, Mini', 'USBCables', 1099, 4.2),
    ('B098NS6PVG', 'Ambrane Unbreakable 60W / 3A Fast Charging 1.5m Braided Type C Cable for Smartphones, Tablets, Laptops & other Type C devices, PD Technology, 480Mbps Data Sync, Quick Charge 3.0 (RCT15A, Black)', 'USBCables',349 , 4),
    ('B096MSW6CT', 'Sounce Fast Phone Charging Cable & Data Sync USB Cable Compatible for iPhone 13, 12,11, X, 8, 7, 6, 5, iPad Air, Pro, Mini & iOS Devices', 'USBCables', 1899, 3.9),
    ('B08HDJ86NZ', 'boAt Deuce USB 300 2 in 1 Type-C & Micro USB Stress Resistant, Tangle-Free, Sturdy Cable with 3A Fast Charging & 480mbps Data Transmission, 10000+ Bends Lifespan and Extended 1.5m Length(Martian Red)', 'USBCables', 699, 4.2),
    ('B08CF3B7N1', 'Portronics Konnect L 1.2M Fast Charging 3A 8 Pin USB Cable with Charge & Sync Function for iPhone, iPad (Grey)', 'USBCables', 399, 4.2),
    ('B08Y1TFSP6', 'pTron Solero TB301 3A Type-C Data and Fast Charging Cable, Made in India, 480Mbps Data Sync, Strong and Durable 1.5-Meter Nylon Braided USB Cable for Type-C Devices for Charging Adapter (Black)', 'USBCables',1000, 3.9),
    ('B08WRWPM22',  'boAt Micro USB 55 Tangle-free, Sturdy Micro USB Cable with 3A Fast Charging & 480mbps Data Transmission (Black)', 'USBCables', 499, 4.1),
    ('B08DDRGWTJ', 'MI Usb Type-C Cable Smartphone (Black)', 'USBCables', 299 , 4.3),
    ('B08IFXQFU', 'TP-Link USB WiFi Adapter for PC(TL-WN725N), N150 Wireless Network Adapter for Desktop - Nano Size WiFi Dongle Compatible with Windows 11/10/7/8/8.1/XP/ Mac OS 10.9-10.15 Linux Kernel 2.6.18-4.4.3', 'WirelessUSBAdapters', 999, 4.2),
    ('B082LZGK39', 'Ambrane Unbreakable 60W / 3A Fast Charging 1.5m Braided Micro USB Cable for Smartphones, Tablets, Laptops & Other Micro USB Devices, 480Mbps Data Sync, Quick Charge 3.0 (RCM15, Black)', 'USBCables', 299, 4 );

CREATE TABLE Shopping_CustomerData (
  CustomerID INT NOT NULL,
  Gender VARCHAR(100),
  CustomerAge INT,
  CustomerCity VARCHAR(100), 
  AnnualIncome DECIMAL(10, 2), 
  CreditScore INT,
  SpendingScore INT,
  CustomerCityID INT
);

LOAD DATA INFILE 'C:/Users/DS2002/Desktop/Shopping_CustomerData.csv' 
INTO TABLE Shopping_CustomerData 
FIELDS TERMINATED BY ',' 
LINES TERMINATED BY '\n' 
IGNORE 1 ROWS;

ALTER TABLE Shopping_CustomerData 
ADD COLUMN CustomerID INT NOT NULL;

ALTER TABLE Shopping_CustomerData 
MODIFY COLUMN AnnualIncome DECIMAL(10, 2);

ALTER TABLE Shopping_CustomerData 
CHANGE COLUMN CustomerGender Gender VARCHAR(100);