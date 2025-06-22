-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 24, 2025 at 03:06 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `threaderz_store`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `products_id` int(10) NOT NULL,
  `ip_add` varchar(255) NOT NULL,
  `qty` int(10) NOT NULL,
  `size` text NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `c_id` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `cat_id` int(10) NOT NULL,
  `cat_title` text NOT NULL,
  `cat_desc` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`cat_id`, `cat_title`, `cat_desc`) VALUES
(1, 'Men', ' Latest and best outfits for men'),
(2, 'Women', ' Latest and best outfits for women'),
(3, 'Kids', ' Latest and best outfits for kids');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `customer_id` int(10) NOT NULL,
  `customer_name` varchar(255) NOT NULL,
  `customer_email` varchar(255) NOT NULL,
  `customer_pass` varchar(50) NOT NULL,
  `customer_address` varchar(400) NOT NULL,
  `customer_contact` text NOT NULL,
  `customer_image` text NOT NULL,
  `customer_ip` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`customer_id`, `customer_name`, `customer_email`, `customer_pass`, `customer_address`, `customer_contact`, `customer_image`, `customer_ip`) VALUES
(33, 'mavean', 'tt@gmail.com', '123123', 'Phase 3 Lupang pangako payatas Urban Area A', '09278878724', 'pp.jpg', 0);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` int(10) NOT NULL,
  `order_qty` int(10) NOT NULL,
  `order_price` int(10) NOT NULL,
  `c_id` int(10) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_id`, `order_qty`, `order_price`, `c_id`, `date`) VALUES
(1, 1, 1300, 31, '2025-03-21 16:03:24'),
(2, 1, 3200, 33, '2025-03-21 16:10:49'),
(3, 1, 1400, 33, '2025-03-21 16:35:42'),
(4, 4, 7700, 33, '2025-03-21 18:41:42'),
(5, 1, 2500, 33, '2025-03-21 19:19:25'),
(6, 0, 0, 33, '2025-03-21 19:19:42'),
(7, 5, 7000, 33, '2025-03-22 02:32:38'),
(8, 4, 11795, 33, '2025-03-22 11:44:32'),
(9, 3, 7500, 33, '2025-03-22 12:02:20'),
(10, 2, 15190, 33, '2025-03-22 12:15:16'),
(11, 1, 7595, 33, '2025-03-23 04:29:45'),
(12, 2, 3700, 33, '2025-03-23 06:30:34');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `products_id` int(10) NOT NULL,
  `p_cat_id` int(10) NOT NULL,
  `cat_id` int(10) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `product_title` text NOT NULL,
  `product_img1` text NOT NULL,
  `product_img2` text NOT NULL,
  `product_price` int(10) NOT NULL,
  `product_keywords` text NOT NULL,
  `product_desc` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`products_id`, `p_cat_id`, `cat_id`, `date`, `product_title`, `product_img1`, `product_img2`, `product_price`, `product_keywords`, `product_desc`) VALUES
(1, 4, 1, '2020-06-15 16:03:55', 'Men Terry Jogers', 'men-3.png', 'men-3.png', 1400, 'Jogers', '<p>Comfy Sole Jogers</p>'),
(2, 3, 2, '2020-06-15 16:58:29', 'Wild Leg Denim', 'women-2.png', 'women-2.png', 1800, 'Jeans', '<p>Very Stylish and easy</p>'),
(3, 2, 2, '2020-06-15 16:59:47', 'Printed Days Tee', 'woman-4.png', 'woman-4.png', 800, 'Printed Tee', '<p>Very cool and comfy</p>'),
(4, 3, 1, '2020-06-15 17:01:07', 'Men Stretch Skinny Fit Denim', 'men-2.png', 'men-2.png', 2200, 'Skinny Jeans', '<p>Stylish and Cool</p>'),
(6, 2, 3, '2020-06-16 05:24:19', 'BOYS TANK TOP', 'kid-1.png', 'kid-1-b.png', 800, 'Tank', '<p>Very stylish</p>'),
(7, 2, 2, '2020-06-16 05:26:50', 'Black JUMPSUIT', 'women-5.png', 'won-5-b.png', 2200, 'Black Top', '<p>Very comfy and cool</p>'),
(9, 1, 3, '2020-06-16 05:53:51', 'Black Jacket', 'boys-Puffer-Coat-With-Detachable-Hood-1.jpg', 'boys-Puffer-Coat-With-Detachable-Hood-1.jpg', 2100, 'Black Warm', '<p>Very Warm and Comfortable</p>'),
(10, 1, 3, '2020-06-16 05:54:30', 'Red Parachute Jacket', 'boys-Puffer-Coat-With-Detachable-Hood-2.jpg', 'boys-Puffer-Coat-With-Detachable-Hood-2.jpg', 2300, 'Warm Red', '<p>Comfortable and Warm</p>'),
(11, 2, 2, '2020-06-16 12:51:34', 'Printed White Tee', 'g-polos-tshirt-1.png', 'g-polos-tshirt-2.png', 750, 'White Tee', '<p>Comfortable and Cool</p>'),
(12, 1, 2, '2020-06-18 04:12:25', 'Brown Coat Type Jacket', 'brown-jacket.jpg', 'brown-jacket.jpg', 2700, 'Warm', '<p>Comfortable and Warm</p>'),
(13, 1, 2, '2020-06-21 01:31:10', 'Pink Fluffy Jacket', 'pink jacket.jpg', 'pink jacket.jpg', 3200, 'Warm', '<p>Comfortable and Warm</p>'),
(14, 4, 2, '2020-06-18 04:20:20', 'Black High Heels', 'blackheels.jpg', 'blackheels.jpg', 2300, 'Black Heels', '<p>Very Stylish and Comfortable</p>'),
(15, 1, 1, '2020-06-16 11:49:45', 'Grey Royal Jacket', 'Man-Geox-Winter-jacket-1.jpg', 'Man-Geox-Winter-jacket-2.jpg', 3500, 'Jacket Grey', '<p>Warm Stylish and Comfortable</p>'),
(16, 4, 2, '2020-06-18 04:15:28', 'White Shiny Heels', 'whiteheels.jpg', 'whiteheels.jpg', 1900, 'Shiney', '<p>Style and Glamour at its best</p>'),
(17, 5, 1, '2020-06-16 11:56:59', 'Thrashers Hoodie', 'hoodie-2.png', 'hoodie-2.png', 1900, 'Grey Hoodie', '<p>Very comfortable, warm and cool</p>'),
(18, 3, 2, '2020-06-16 11:57:49', 'Black Ripped Jeans', 'jeanss.png', 'jeanss.png', 1800, 'Ripped Black', '<p>Very Cool and stylish</p>'),
(19, 5, 3, '2020-06-16 11:58:49', 'Colorful Hoodie', 'hoodie-4.png', 'hoodie-4.png', 2300, 'Colorful', '<p>Very cool</p>'),
(20, 1, 3, '2020-06-16 11:59:35', 'Black Polo Jacket', 'boys-Puffer-Coat-With-Detachable-Hood-3.jpg', 'boys-Puffer-Coat-With-Detachable-Hood-3.jpg', 3100, 'Black', '<p>Warm and comfy</p>'),
(21, 5, 3, '2020-06-16 12:03:43', 'Black Puma Hood', 'hoodie-3.png', 'hoodie-3.png', 1900, 'Black', '<p>Warm and Cool</p>'),
(22, 5, 1, '2020-06-16 12:04:32', 'Black and White Hood', 'hoodie-1.png', 'hoodie-1.png', 2300, 'Black White', '<p>Anime Fans Cool Hood</p>'),
(23, 2, 1, '2020-06-21 01:25:39', 'B&W Tee', 'B&W Tee Shirt.jpg', 'B&W Tee Shirt.jpg', 1300, 'Black White Tee', '<p>Very Cool</p>'),
(25, 1, 1, '2025-03-21 16:32:01', 'Word Against World Coach Jacket', 'hm1.jpg', 'hm2.jpg', 1400, 'hghmnds', '<div dir=\"ltr\" style=\"box-sizing: inherit; margin-top: 0px; color: rgba(18, 18, 18, 0.75); font-family: Helvetica, \'Helvetica Neue\', Arial, \'Lucida Grande\', sans-serif; font-size: 16px; letter-spacing: 0.6px;\">\r\n<div class=\"input-box\" style=\"box-sizing: inherit;\" spellcheck=\"false\">\r\n<div class=\"cell-input editable disabled-input\" dir=\"ltr\" style=\"box-sizing: inherit; outline: 0px; box-shadow: none;\" tabindex=\"0\" role=\"combobox\" contenteditable=\"false\" aria-label=\"E21\" aria-autocomplete=\"list\">\r\n<p style=\"box-sizing: inherit;\">HGHMNDS X FlipTop Battle League</p>\r\n</div>\r\n<div id=\"waffle-rich-text-editor\" class=\"cell-input editable disabled-input\" dir=\"ltr\" style=\"box-sizing: inherit;\" tabindex=\"0\" role=\"combobox\" contenteditable=\"false\" aria-label=\"E21\" aria-autocomplete=\"list\"><span style=\"box-sizing: inherit;\">Believe in the power of words. It\'s yours against them. Never hold back and own the battle.&nbsp;</span></div>\r\n</div>\r\n</div>\r\n<p style=\"box-sizing: inherit; color: rgba(18, 18, 18, 0.75); font-family: Helvetica, \'Helvetica Neue\', Arial, \'Lucida Grande\', sans-serif; font-size: 16px; letter-spacing: 0.6px;\">&nbsp;</p>\r\n<p style=\"box-sizing: inherit; color: rgba(18, 18, 18, 0.75); font-family: Helvetica, \'Helvetica Neue\', Arial, \'Lucida Grande\', sans-serif; font-size: 16px; letter-spacing: 0.6px;\"><strong style=\"box-sizing: inherit;\">DESCRIPTION</strong></p>\r\n<p style=\"box-sizing: inherit; color: rgba(18, 18, 18, 0.75); font-family: Helvetica, \'Helvetica Neue\', Arial, \'Lucida Grande\', sans-serif; font-size: 16px; letter-spacing: 0.6px;\"><span style=\"box-sizing: inherit;\" data-mce-fragment=\"1\">- Silkscreen Printed Design</span><span style=\"box-sizing: inherit;\" data-mce-fragment=\"1\"><br style=\"box-sizing: inherit;\" /></span><span style=\"box-sizing: inherit;\" data-mce-fragment=\"1\">-&nbsp;Material : Mt. Fuji Fabric</span><span style=\"box-sizing: inherit;\" data-mce-fragment=\"1\"><br style=\"box-sizing: inherit;\" />- Made in the Philippines</span></p>'),
(26, 2, 1, '2025-03-21 19:03:36', 'Short Sleeve Woven Shirt', 'dc2.jpg', 'dc.jpg', 2500, 'Dickies', '<p><span style=\"color: #1a1a1a; font-family: \'IBM Plex Sans\', \'IBM Plex Sans Condensed\', \'Helvetica Neue\', Helvetica, Arial, \'Nimbus Sans L\', \'Liberation Sans\', sans-serif; font-size: 16px;\">Made with a heavy dose of spandex, Dickies Men&rsquo;s Short Sleeve Flex Woven Shirt is full of style and stretch. The relaxed fit ensures that it won&rsquo;t cling to your body, but fit you comfortably. Feel free to wear it tucked in or out, thanks to the shirt tail hem that&rsquo;s longer than average. The single chest pocket with pencil slot works to keep you organized throughout the day.</span></p>'),
(27, 4, 1, '2025-03-21 19:26:49', 'Air Jordan 1 Mid SE', 'air.png', 'air2.png', 7595, 'Nike', '<p><span style=\"color: #111111; font-family: \'Helvetica Now Text\', Helvetica, Arial, sans-serif; font-size: 16px;\">Quality construction with legacy style? Expect nothing less from the AJ1. Fresh colour-blocking brings big university feels to this special edition, while shiny patent leather keeps the look premium. Are you ready to rep MJ\'s legendary beginnings?</span></p>'),
(28, 4, 1, '2025-03-22 12:06:24', 'LeBron XXII \'Token\' EP', 'leb2.png', 'leb.png', 2500, 'Nike', '<p><span style=\"color: #111111; font-family: \'Helvetica Now Text\', Helvetica, Arial, sans-serif; font-size: 16px;\">LeBron isn\'t slowing down any time soon. The open-court nightmare is as fast and spry as ever. But even Bron needs support when he\'s at full throttle. That\'s why we levelled up the LeBron 22. Newly implemented saddle wings offer optimal midfoot stability. They complement the heel and forefoot Air Zoom units, so the King can keep pushing the sport forwards. This version\'s gold accents honour the many trophies and awards LeBron has collected on the path to greatness. With its extra-durable rubber outsole, this version gives you traction for outdoor courts.</span></p>'),
(29, 2, 2, '2025-03-24 01:16:48', 'Crop Top', 'crp.webp', 'crp2.webp', 400, 'mcsy', '<h1 class=\"product-title product_title entry-title\" style=\"box-sizing: border-box; color: #555555; margin-bottom: 0.5em; margin-top: 0px; text-rendering: optimizespeed; width: 330px; font-size: 1.7em; line-height: 1.3; font-family: Lato, sans-serif;\">Hualong Hot Women Short Sleeve Knitted Zip Up Cropped Top</h1>'),
(30, 3, 2, '2025-03-24 01:19:17', 'Dokotoo Women\'s Casual Mid Waist Cargo Jeans Stretch Wide Leg Denim Pants with Pockets', 'wj2.jpg', 'wj.jpg', 1080, 'jorts', '<ul class=\"a-unordered-list a-vertical a-spacing-small\" style=\"box-sizing: border-box; margin: 0px 0px 0px 18px; color: #0f1111; padding: 0px; font-family: \'Amazon Ember\', Arial, sans-serif;\">\r\n<li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item a-size-base a-color-base\" style=\"box-sizing: border-box; color: var(--__n4qdchev6mgo,#0f1111); line-height: 20px !important;\">Dokotoo womens cargo jeans made of carefully selected elastic denim fabric so that you will feel free in all positions when sitting or squatting. Soft lightweight and breathable fabrics can reduce the sense of restraint</span></li>\r\n<li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item a-size-base a-color-base\" style=\"box-sizing: border-box; color: var(--__n4qdchev6mgo,#0f1111); line-height: 20px !important;\">Feature: cargo jeans, mid waist, straight-leg jeans, button and zipper fly closure, straight wide leg style, four pockets, denim jeans for women.</span></li>\r\n<li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item a-size-base a-color-base\" style=\"box-sizing: border-box; color: var(--__n4qdchev6mgo,#0f1111); line-height: 20px !important;\">Match: Women\'s cargo jeans can be well matched with tops, shirts, vest, blouses, sweatshirts, sweaters and cardigans for a casual and stylish look, comfortable to wear in spring, summer, autumn and winter.</span></li>\r\n<li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item a-size-base a-color-base\" style=\"box-sizing: border-box; color: var(--__n4qdchev6mgo,#0f1111); line-height: 20px !important;\">Ocassion: Casual denim jean pants is versatile to wear and suits most occasions such as casual, school,</span></li>\r\n</ul>'),
(31, 3, 2, '2025-03-24 01:21:18', 'EMMIOL Jeans for Women Wide Leg Baggy Jeans High Waist Y2K Cargo Pants Casual Loose Boyfriends Trousers Vintage', 'j.jpg', 'j2.jpg', 1200, 'ejan', '<ul class=\"a-unordered-list a-vertical a-spacing-small\" style=\"box-sizing: border-box; margin: 0px 0px 0px 18px; color: #0f1111; padding: 0px; font-family: \'Amazon Ember\', Arial, sans-serif;\">\r\n<li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item a-size-base a-color-base\" style=\"box-sizing: border-box; color: var(--__n4qdchev6mgo,#0f1111); line-height: 20px !important;\">Wide leg pants women jeans with soft, breathable, durable and friendly to skin denim fabric can meet your needs to wear for the whole day. These jeans for women can be well paired with colorful tops for a perfect look.</span></li>\r\n<li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item a-size-base a-color-base\" style=\"box-sizing: border-box; color: var(--__n4qdchev6mgo,#0f1111); line-height: 20px !important;\">Baggy boyfriend jeans for women come with 4 traditional pockets. Intentionally distressed design in the pockets\' edges, providing these women\'s jeans with both style and function. Y2k baggy jeans with zip fly, button closure and belt loops for your ease of use.</span></li>\r\n<li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item a-size-base a-color-base\" style=\"box-sizing: border-box; color: var(--__n4qdchev6mgo,#0f1111); line-height: 20px !important;\">Causal loose denim pants , different body shape of girls can manage, visually elongate the leg line smoothing small belly, can make your waistline more prominent,wide leg denim pants for women</span></li>\r\n</ul>'),
(32, 3, 2, '2025-03-24 01:23:14', 'Loose High Waisted Wide Leg Denim Pants Y2K 90s', 'je.jpg', 'je2.jpg', 900, 'jorts', '<ul class=\"a-unordered-list a-vertical a-spacing-small\" style=\"box-sizing: border-box; margin: 0px 0px 0px 18px; color: #0f1111; padding: 0px; font-family: \'Amazon Ember\', Arial, sans-serif;\">\r\n<li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item a-size-base a-color-base\" style=\"box-sizing: border-box; color: var(--__n4qdchev6mgo,#0f1111); line-height: 20px !important;\">Wide leg pull on jeans for women with the baggy wide leg layout help to conceal any body imperfections or areas you may feel self-conscious about. They provide a relaxed and forgiving silhouette that flatters different body types.</span></li>\r\n<li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item a-size-base a-color-base\" style=\"box-sizing: border-box; color: var(--__n4qdchev6mgo,#0f1111); line-height: 20px !important;\">Wide leg jeans for women is perfect choice for your daily wear, outdoor activities, office, shopping,</span></li>\r\n</ul>'),
(33, 2, 2, '2025-03-24 01:25:19', 'Trendy Queen Tshirts Shirts for Women Double Lined Going Out Crop Top', 'cp.jpg', 'cp2.jpg', 300, 'crop', '<ul class=\"a-unordered-list a-vertical a-spacing-small\" style=\"box-sizing: border-box; margin: 0px 0px 0px 18px; color: #0f1111; padding: 0px; font-family: \'Amazon Ember\', Arial, sans-serif;\">\r\n<li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item a-size-base a-color-base\" style=\"box-sizing: border-box; color: var(--__n4qdchev6mgo,#0f1111); line-height: 20px !important;\">MATERIAL: Crafted with 88% polyester and 12% spandex, this breathable fabric features double lined construction for spring summer comfort. Soft stretch maintains shape through workouts while staying lightweight for all day wear</span></li>\r\n<li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item a-size-base a-color-base\" style=\"box-sizing: border-box; color: var(--__n4qdchev6mgo,#0f1111); line-height: 20px !important;\">FEATURES: trendy crop top with slimming square neckline. The short sleeve y2k inspired design combines casual charm with subtle support, perfect for teen girl wardrobes or layering under professional outfits</span></li>\r\n<li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item a-size-base a-color-base\" style=\"box-sizing: border-box; color: var(--__n4qdchev6mgo,#0f1111); line-height: 20px !important;\">DESIGN: Square neck crop cut enhances curves without restricting movement. Reinforced seams provide gym ready durability, while the versatile length transitions smoothly from workout tops to</span></li>\r\n</ul>'),
(34, 2, 2, '2025-03-24 01:28:02', 'Sets Mock Neck Tops Wide Leg Crop Pants ', 'k.jpg', 'k2.jpg', 700, 'set', '<ul class=\"a-unordered-list a-vertical a-spacing-small\" style=\"box-sizing: border-box; margin: 0px 0px 0px 18px; color: #0f1111; padding: 0px; font-family: \'Amazon Ember\', Arial, sans-serif;\">\r\n<li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item a-size-base a-color-base\" style=\"box-sizing: border-box; color: var(--__n4qdchev6mgo,#0f1111); line-height: 20px !important;\">abric: Light-as-air fabric/Optimal air flow/4-way stretch,The Two Piece is made with spacer fabric that&rsquo;s lightweight, soft and ultra drapey, designed to feel silky against your skin.</span></li>\r\n<li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item a-size-base a-color-base\" style=\"box-sizing: border-box; color: var(--__n4qdchev6mgo,#0f1111); line-height: 20px !important;\">Design：Two Piece Sets for Women Mock Neck Sleeveless Tops,Wide Leg Crop Pants,Cropped Length,Contoured Back for The Most Flattering Rear View,Elastic Drawstring</span></li>\r\n<li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item a-size-base a-color-base\" style=\"box-sizing: border-box; color: var(--__n4qdchev6mgo,#0f1111); line-height: 20px !important;\">Occasion: Can be dressed up or down, great for casual wear/dressing up/vacation/travel/business casual/work</span></li>\r\n<li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item a-size-base a-color-base\" style=\"box-sizing: border-box; color: var(--__n4qdchev6mgo,#0f1111); line-height: 20px !important;\">Wash Instruction: Machine Wash Cold, Gentle Cycle. Inside Out. Only Non-Chlorine Bleach When Needed. Tumble Dry Low. Low Iron If Needed. Or Dry Clean.</span></li>\r\n</ul>'),
(35, 4, 2, '2025-03-24 01:30:00', ' Open Toe Buckle Ankle Strap', 'sw.jpg', 's2.jpg', 400, 'sandals', '<ul class=\"a-unordered-list a-vertical a-spacing-small\" style=\"box-sizing: border-box; margin: 0px 0px 0px 18px; color: #0f1111; padding: 0px; font-family: \'Amazon Ember\', Arial, sans-serif;\">\r\n<li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item a-size-base a-color-base\" style=\"box-sizing: border-box; color: var(--__n4qdchev6mgo,#0f1111); line-height: 20px !important;\">Hottest style. Fashion &amp; Trendy</span></li>\r\n<li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item a-size-base a-color-base\" style=\"box-sizing: border-box; color: var(--__n4qdchev6mgo,#0f1111); line-height: 20px !important;\">Cute and Comfortable Wedge Sandals</span></li>\r\n<li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item a-size-base a-color-base\" style=\"box-sizing: border-box; color: var(--__n4qdchev6mgo,#0f1111); line-height: 20px !important;\">Ankle Strap Style for Easy On/Off</span></li>\r\n</ul>'),
(36, 1, 1, '2025-03-24 01:31:41', 'Men\'s Bomber Jacket', 'mj.jpg', 'mj2.jpg', 500, 'jorts', '<ul class=\"a-unordered-list a-vertical a-spacing-small\" style=\"box-sizing: border-box; margin: 0px 0px 0px 18px; color: #0f1111; padding: 0px; font-family: \'Amazon Ember\', Arial, sans-serif;\">\r\n<li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item a-size-base a-color-base\" style=\"box-sizing: border-box; color: var(--__n4qdchev6mgo,#0f1111); line-height: 20px !important;\">XiaoYouYu Fabric: polyester; Lightweight, soft fabric for your comfort</span></li>\r\n<li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item a-size-base a-color-base\" style=\"box-sizing: border-box; color: var(--__n4qdchev6mgo,#0f1111); line-height: 20px !important;\">XiaoYouYu Design: 2 side pockets, 1 deep inner pocket</span></li>\r\n<li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item a-size-base a-color-base\" style=\"box-sizing: border-box; color: var(--__n4qdchev6mgo,#0f1111); line-height: 20px !important;\">XiaoYouYu Feature: ribbed collar, hem and cuffs, full zip, long sleeves for warmth and style</span></li>\r\n<li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item a-size-base a-color-base\" style=\"box-sizing: border-box; color: var(--__n4qdchev6mgo,#0f1111); line-height: 20px !important;\">XiaoYouYu Style: classic lightweight bomber jacket for men, easy to match, suitable for winter, autumn, spring.</span></li>\r\n<li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item a-size-base a-color-base\" style=\"box-sizing: border-box; color: var(--__n4qdchev6mgo,#0f1111); line-height: 20px !important;\">XiaoYouYu Occassion: not only suitable for daily wear, but also for work, street fashion, party and golf</span></li>\r\n</ul>'),
(37, 2, 1, '2025-03-24 01:33:57', 'Men\'s Button Down Shirts Short Sleeve', 's.jpg', 's1.jpg', 600, 'kaka', '<div class=\"a-expander-content a-expander-partial-collapse-content\" style=\"box-sizing: border-box; overflow: hidden; position: relative; color: #0f1111; font-family: \'Amazon Ember\', Arial, sans-serif; padding-bottom: 20px;\" data-expanded=\"false\">\r\n<ul class=\"a-unordered-list a-vertical a-spacing-small\" style=\"box-sizing: border-box; margin: 0px 0px 0px 18px; color: var(--__n4qdchev6mgo,#0f1111); padding: 0px;\">\r\n<li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item a-size-base a-color-base\" style=\"box-sizing: border-box; color: var(--__n4qdchev6mgo,#0f1111); line-height: 20px !important;\">Premium Fabric: Mens Button Down Shirt is made of high quality material that is lightweight, comfortable, breathable and skin-friendly; the soft fabric provides you cool feel all day and give you a better wearing experience</span></li>\r\n<li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item a-size-base a-color-base\" style=\"box-sizing: border-box; color: var(--__n4qdchev6mgo,#0f1111); line-height: 20px !important;\">Stylish Design: The Summer Beach Shirt features with short sleeve, spread collar, button down closure, chest pocket and plaid pattern; classic shirts for men will make you feel handsome and elegant when you wear it</span></li>\r\n<li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item a-size-base a-color-base\" style=\"box-sizing: border-box; color: var(--__n4qdchev6mgo,#0f1111); line-height: 20px !important;\">Collocation: Short Sleeve Casual Shirt is great for spring, summer or fall; you can match with shorts, jeans or trousers for a casual look; pair with swimming shorts, sunglasses and a hat for vacation beach style</span></li>\r\n<li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item a-size-base a-color-base\" style=\"box-sizing: border-box; color: var(--__n4qdchev6mgo,#0f1111); line-height: 20px !important;\">Occasions: Mens Casual Button Down Shirt is suitable for all occasions; such as beach, vacation, cruises, holiday, travel, wedding, party, school, office, business casual, hawaiian, island, yoga, work, or any casual daily wear</span></li>\r\n<li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item a-size-base a-color-base\" style=\"box-sizing: border-box; color: var(--__n4qdchev6mgo,#0f1111); line-height: 20px !important;\">Warm Tips: Machine wash for Mens Short Sleeve Button Up Shirt; please refer to our size chart carefully before you ordering</span></li>\r\n</ul>\r\n</div>\r\n<div id=\"productFactsToggleButton\" class=\"a-expander-header a-expander-partial-collapse-header\" style=\"box-sizing: border-box; position: absolute; bottom: 0px; width: 674.578px; background-color: var(--__n4qdchibkmgo,#fff); z-index: 2; outline: 0px; color: #0f1111; font-family: \'Amazon Ember\', Arial, sans-serif; opacity: 1;\">\r\n<div class=\"a-expander-content-fade\" style=\"box-sizing: border-box; height: 16px; width: 674.578px; position: absolute; top: -16px; left: 0px; background: linear-gradient(rgba(255, 255, 255, 0), #ffffff);\">&nbsp;</div>\r\n<a class=\"a-declarative\" style=\"box-sizing: border-box; color: var(--__n4qdchsbgn6j,#2162a1);\" role=\"button\" data-csa-c-func-deps=\"aui-da-a-expander-toggle\" data-csa-c-type=\"widget\" data-csa-interaction-events=\"click\" aria-hidden=\"true\" aria-expanded=\"false\" data-action=\"a-expander-toggle\" data-a-expander-toggle=\"{&quot;allowLinkDefault&quot;:true, &quot;expand_prompt&quot;:&quot;See more &lt;span class=\'aok-offscreen\'&gt;About this item&lt;/span&gt;&quot;, &quot;collapse_prompt&quot;:&quot;See less &lt;span class=\'aok-offscreen\'&gt;About this item&lt;/span&gt;&quot;}\" data-csa-c-id=\"9m2mav-k58kbm-jn689l-iy3d9a\"><span class=\"a-expander-prompt\" style=\"box-sizing: border-box; overflow-wrap: break-word;\">See more</span></a></div>'),
(38, 2, 1, '2025-03-24 01:36:34', 'Spiral Vision Tee', 'hg.webp', 'hg2.webp', 750, 'hghmnds', '<p><span style=\"color: rgba(18, 18, 18, 0.75); font-family: Helvetica, \'Helvetica Neue\', Arial, \'Lucida Grande\', sans-serif; font-size: 16px; letter-spacing: 0.6px;\">&nbsp;245 GSM</span><br style=\"box-sizing: inherit; color: rgba(18, 18, 18, 0.75); font-family: Helvetica, \'Helvetica Neue\', Arial, \'Lucida Grande\', sans-serif; font-size: 16px; letter-spacing: 0.6px;\" /><span style=\"color: rgba(18, 18, 18, 0.75); font-family: Helvetica, \'Helvetica Neue\', Arial, \'Lucida Grande\', sans-serif; font-size: 16px; letter-spacing: 0.6px;\">- Silkscreen</span><br style=\"box-sizing: inherit; color: rgba(18, 18, 18, 0.75); font-family: Helvetica, \'Helvetica Neue\', Arial, \'Lucida Grande\', sans-serif; font-size: 16px; letter-spacing: 0.6px;\" /><span style=\"color: rgba(18, 18, 18, 0.75); font-family: Helvetica, \'Helvetica Neue\', Arial, \'Lucida Grande\', sans-serif; font-size: 16px; letter-spacing: 0.6px;\">- Material:&nbsp;Cotton and Polyester Blend</span><br style=\"box-sizing: inherit; color: rgba(18, 18, 18, 0.75); font-family: Helvetica, \'Helvetica Neue\', Arial, \'Lucida Grande\', sans-serif; font-size: 16px; letter-spacing: 0.6px;\" /><span style=\"color: rgba(18, 18, 18, 0.75); font-family: Helvetica, \'Helvetica Neue\', Arial, \'Lucida Grande\', sans-serif; font-size: 16px; letter-spacing: 0.6px;\">- Made in the Philippines</span></p>'),
(39, 2, 1, '2025-03-24 01:38:15', 'Compass Tee', 'll.webp', 'll2.webp', 750, 'hghmnds', '<p style=\"box-sizing: inherit; color: rgba(18, 18, 18, 0.75); font-family: Helvetica, \'Helvetica Neue\', Arial, \'Lucida Grande\', sans-serif; font-size: 16px; letter-spacing: 0.6px;\"><span style=\"box-sizing: inherit;\" data-mce-fragment=\"1\">- Silkscreen<br style=\"box-sizing: inherit;\" />- Material:&nbsp;Cotton and Polyester Blend<br style=\"box-sizing: inherit;\" />- Made in the Philippines<br style=\"box-sizing: inherit;\" /></span></p>\r\n<p><span style=\"box-sizing: inherit;\" data-mce-fragment=\"1\">&nbsp;</span></p>'),
(40, 3, 1, '2025-03-24 01:44:54', 'Dickies Skateboarding FLEX Slim Fit Shorts', 'dck2.jpg', 'dck.jpg', 1300, 'Dickies', '<p><span style=\"color: #1a1a1a; font-family: \'IBM Plex Sans\', \'IBM Plex Sans Condensed\', \'Helvetica Neue\', Helvetica, Arial, \'Nimbus Sans L\', \'Liberation Sans\', sans-serif; font-size: 16px;\">Dickies Skateboarding Slim Shorts are made with our durable brushed twill fabric and equipped with Dickies&reg; FLEX to ensure ultimate mobility when you skate. Plus, the shorter 11-inch inseam gives you a modern fit for even more agility. The durable metal button front closure guarantees maximum wear and tear that won&rsquo;t give out when you bail.</span></p>'),
(41, 1, 1, '2025-03-24 01:48:49', 'HGHMNDS Night Vision', 'jk.webp', 'jk2.webp', 1295, 'hghmnds', '<p><span style=\"color: rgba(18, 18, 18, 0.75); font-family: Helvetica, \'Helvetica Neue\', Arial, \'Lucida Grande\', sans-serif; font-size: 16px; letter-spacing: 0.6px;\">Silkscreen Printed Design</span><br style=\"box-sizing: inherit; color: rgba(18, 18, 18, 0.75); font-family: Helvetica, \'Helvetica Neue\', Arial, \'Lucida Grande\', sans-serif; font-size: 16px; letter-spacing: 0.6px;\" /><span style=\"color: rgba(18, 18, 18, 0.75); font-family: Helvetica, \'Helvetica Neue\', Arial, \'Lucida Grande\', sans-serif; font-size: 16px; letter-spacing: 0.6px;\">- Material: Fleece Fabric</span><br style=\"box-sizing: inherit; color: rgba(18, 18, 18, 0.75); font-family: Helvetica, \'Helvetica Neue\', Arial, \'Lucida Grande\', sans-serif; font-size: 16px; letter-spacing: 0.6px;\" /><span style=\"color: rgba(18, 18, 18, 0.75); font-family: Helvetica, \'Helvetica Neue\', Arial, \'Lucida Grande\', sans-serif; font-size: 16px; letter-spacing: 0.6px;\">- Made in the Philippines</span></p>');

-- --------------------------------------------------------

--
-- Table structure for table `product_categories`
--

CREATE TABLE `product_categories` (
  `p_cat_id` int(10) NOT NULL,
  `p_cat_title` text NOT NULL,
  `p_cat_desc` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product_categories`
--

INSERT INTO `product_categories` (`p_cat_id`, `p_cat_title`, `p_cat_desc`) VALUES
(1, 'Jackets', 'Good quality custom made and casual wear jackets'),
(2, 'Tee-Shirts', 'Good and easy stuff designed Tee-Shirt '),
(3, 'Jeans', 'High Quality Denim and Leather Jeans'),
(4, 'Shoes', 'Good quality and soft sole shoes with good endurance'),
(5, 'Hoodies', 'Cool customized and colorful hoodies');

-- --------------------------------------------------------

--
-- Table structure for table `slider`
--

CREATE TABLE `slider` (
  `slide_id` int(10) NOT NULL,
  `slide_name` varchar(255) NOT NULL,
  `slide_image` text NOT NULL,
  `slide_heading` varchar(100) NOT NULL,
  `slide_text` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `slider`
--

INSERT INTO `slider` (`slide_id`, `slide_name`, `slide_image`, `slide_heading`, `slide_text`) VALUES
(1, 'Slide 1', 'slide_1.jpg', 'March Sale', 'Walk in for the Fashion, Stay in for the Style.'),
(2, 'Slide 2', 'slide_2.jpg', 'Black friday', 'Simply Eveything You Want.');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`products_id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`products_id`);

--
-- Indexes for table `product_categories`
--
ALTER TABLE `product_categories`
  ADD PRIMARY KEY (`p_cat_id`);

--
-- Indexes for table `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`slide_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `cat_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `customer_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `products_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `product_categories`
--
ALTER TABLE `product_categories`
  MODIFY `p_cat_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `slider`
--
ALTER TABLE `slider`
  MODIFY `slide_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
