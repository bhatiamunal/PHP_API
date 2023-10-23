-- phpMyAdmin SQL Dump -- version 4.8.0.1 -- https://www.phpmyadmin.net/ -- -- Host: 127.0.0.1 -- Generation Time: Oct 23, 2023 at 12:32 PM -- Server version: 10.1.32-MariaDB -- PHP Version: 7.2.5 SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO"; SET AUTOCOMMIT = 0; START TRANSACTION; SET time_zone = "+00:00"; /*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */; /*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */; /*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */; /*!40101 SET NAMES utf8mb4 */; -- -- Database: `mydb` -- -- -------------------------------------------------------- -- -- Table structure for table `sah_m_address` -- CREATE TABLE `sah_m_address` ( `id` int(11) NOT NULL, `AddressId` int(11) DEFAULT NULL, `City` varchar(255) DEFAULT NULL, `AddressState` varchar(255) DEFAULT NULL, `Address1` varchar(255) DEFAULT NULL, `Address2` varchar(255) DEFAULT NULL, `MAction` varchar(255) DEFAULT NULL ) ENGINE=InnoDB DEFAULT CHARSET=latin1; -- -------------------------------------------------------- -- -- Table structure for table `sah_m_bank` -- CREATE TABLE `sah_m_bank` ( `id` int(11) NOT NULL, `bankId` int(11) DEFAULT NULL, `bankName` varchar(255) DEFAULT NULL, `AccountNumber` varchar(255) DEFAULT NULL, `ISFC` varchar(255) DEFAULT NULL, `AccNo` varchar(255) DEFAULT NULL, `Branch` varchar(255) DEFAULT NULL, `BranchAddress` varchar(255) DEFAULT NULL, `MAction` varchar(255) DEFAULT NULL ) ENGINE=InnoDB DEFAULT CHARSET=latin1; -- -------------------------------------------------------- -- -- Table structure for table `sah_m_brand` -- CREATE TABLE `sah_m_brand` ( `id` int(11) NOT NULL, `Bid` int(11) DEFAULT NULL, `brandName` varchar(255) DEFAULT NULL, `MAction` varchar(255) DEFAULT NULL ) ENGINE=InnoDB DEFAULT CHARSET=latin1; -- -- Dumping data for table `sah_m_brand` -- INSERT INTO `sah_m_brand` (`id`, `Bid`, `brandName`, `MAction`) VALUES (1, 1, 'Studd', 'Active'); -- -------------------------------------------------------- -- -- Table structure for table `sah_m_catagories` -- CREATE TABLE `sah_m_catagories` ( `id` int(11) NOT NULL, `Cid` int(11) DEFAULT NULL, `CatagoriesName` varchar(255) DEFAULT NULL, `MAction` varchar(255) DEFAULT NULL ) ENGINE=InnoDB DEFAULT CHARSET=latin1; -- -- Dumping data for table `sah_m_catagories` -- INSERT INTO `sah_m_catagories` (`id`, `Cid`, `CatagoriesName`, `MAction`) VALUES (1, 1, 'Halmet', 'Active'); -- -------------------------------------------------------- -- -- Table structure for table `sah_m_compnay` -- CREATE TABLE `sah_m_compnay` ( `id` int(11) NOT NULL, `CoID` int(11) DEFAULT NULL, `GSTNo` int(11) DEFAULT NULL, `GSTCode` int(11) DEFAULT NULL, `AddressId` int(11) DEFAULT NULL, `PAN` varchar(255) DEFAULT NULL, `TIN` varchar(255) DEFAULT NULL, `Website` varchar(255) DEFAULT NULL, `CoEmail` varchar(255) DEFAULT NULL, `UserID` int(11) DEFAULT NULL, `MAction` varchar(255) DEFAULT NULL ) ENGINE=InnoDB DEFAULT CHARSET=latin1; -- -------------------------------------------------------- -- -- Table structure for table `sah_m_payment` -- CREATE TABLE `sah_m_payment` ( `id` int(11) NOT NULL, `PaymentID` int(11) DEFAULT NULL, `InvoiceID` varchar(255) DEFAULT NULL, `Credit_Debit` varchar(255) DEFAULT NULL, `Amount` varchar(255) DEFAULT NULL, `TransationID` varchar(255) DEFAULT NULL, `Img` varchar(255) DEFAULT NULL, `paymentModeId` varchar(255) DEFAULT NULL, `MAction` varchar(255) DEFAULT NULL ) ENGINE=InnoDB DEFAULT CHARSET=latin1; -- -------------------------------------------------------- -- -- Table structure for table `sah_m_payment_mode` -- CREATE TABLE `sah_m_payment_mode` ( `id` int(11) NOT NULL, `paymentModeId` int(11) DEFAULT NULL, `PaymentModeName` varchar(255) DEFAULT NULL, `MAction` varchar(255) DEFAULT NULL ) ENGINE=InnoDB DEFAULT CHARSET=latin1; -- -------------------------------------------------------- -- -- Table structure for table `sah_m_price` -- CREATE TABLE `sah_m_price` ( `id` int(11) NOT NULL, `PrID` int(11) DEFAULT NULL, `MRP` int(11) DEFAULT NULL, `SP` int(11) DEFAULT NULL, `CP` int(11) DEFAULT NULL, `Mdate` varchar(255) DEFAULT NULL, `MAction` varchar(255) DEFAULT NULL ) ENGINE=InnoDB DEFAULT CHARSET=latin1; -- -- Dumping data for table `sah_m_price` -- INSERT INTO `sah_m_price` (`id`, `PrID`, `MRP`, `SP`, `CP`, `Mdate`, `MAction`) VALUES (1, 1, 1395, 965, 950, '23-10-2023', 'Active'); -- -------------------------------------------------------- -- -- Table structure for table `sah_m_product` -- CREATE TABLE `sah_m_product` ( `id` int(11) NOT NULL, `productId` int(11) DEFAULT NULL, `product_name` varchar(255) DEFAULT NULL, `ctID` int(11) DEFAULT NULL, `PrID` int(11) DEFAULT NULL, `Bid` int(11) DEFAULT NULL, `MAction` varchar(255) DEFAULT NULL ) ENGINE=InnoDB DEFAULT CHARSET=latin1; -- -- Dumping data for table `sah_m_product` -- INSERT INTO `sah_m_product` (`id`, `productId`, `product_name`, `ctID`, `PrID`, `Bid`, `MAction`) VALUES (1, 1, 'Ninja Elite', 1, 1, 1, 'Active'); -- -------------------------------------------------------- -- -- Table structure for table `sah_m_product_qty` -- CREATE TABLE `sah_m_product_qty` ( `id` int(11) NOT NULL, `PID` int(11) DEFAULT NULL, `qty` varchar(255) DEFAULT NULL, `lastUpdated` varchar(255) DEFAULT NULL, `MAction` varchar(255) DEFAULT NULL ) ENGINE=InnoDB DEFAULT CHARSET=latin1; -- -- Dumping data for table `sah_m_product_qty` -- INSERT INTO `sah_m_product_qty` (`id`, `PID`, `qty`, `lastUpdated`, `MAction`) VALUES (1, 1, '6', '15-11-2023', 'Active'); -- -------------------------------------------------------- -- -- Table structure for table `sah_m_purchase` -- CREATE TABLE `sah_m_purchase` ( `id` int(11) NOT NULL, `PurchaseInvoiceId` int(11) DEFAULT NULL, `productId` int(11) DEFAULT NULL, `OwncompanyId` int(11) DEFAULT NULL, `OwncompanyAddressID` int(11) DEFAULT NULL, `Mdate` int(11) DEFAULT NULL, `venderCompanyId` int(11) DEFAULT NULL, `venderUserId` int(11) DEFAULT NULL, `venderAddressID` int(11) DEFAULT NULL, `paymentModeId` int(11) DEFAULT NULL, `Qty` int(11) DEFAULT NULL, `Discount` int(11) DEFAULT NULL, `CP` int(11) DEFAULT NULL, `MAction` varchar(255) DEFAULT NULL ) ENGINE=InnoDB DEFAULT CHARSET=latin1; -- -------------------------------------------------------- -- -- Table structure for table `sah_m_sales` -- CREATE TABLE `sah_m_sales` ( `id` int(11) NOT NULL, `InvoiceId` int(11) DEFAULT NULL, `productId` int(11) DEFAULT NULL, `OwncompanyId` int(11) DEFAULT NULL, `OwncompanyAddressID` int(11) DEFAULT NULL, `Mdate` int(11) DEFAULT NULL, `customerCompanyId` int(11) DEFAULT NULL, `custmerUserId` int(11) DEFAULT NULL, `customerBillingAddressID` int(11) DEFAULT NULL, `customerCourierAddressID` int(11) DEFAULT NULL, `customerShippingAddressID` int(11) DEFAULT NULL, `paymentModeId` int(11) DEFAULT NULL, `Qty` int(11) DEFAULT NULL, `Discount` int(11) DEFAULT NULL, `CP` int(11) DEFAULT NULL, `PurchaseStatus` varchar(255) DEFAULT NULL, `MAction` varchar(255) DEFAULT NULL ) ENGINE=InnoDB DEFAULT CHARSET=latin1; -- -------------------------------------------------------- -- -- Table structure for table `sah_m_user` -- CREATE TABLE `sah_m_user` ( `id` int(11) NOT NULL, `userId` int(11) DEFAULT NULL, `userName` varchar(255) DEFAULT NULL, `userDOB` varchar(255) DEFAULT NULL, `bloodGroup` varchar(255) DEFAULT NULL, `email` varchar(255) DEFAULT NULL, `userPassword` varchar(255) DEFAULT NULL, `userRole` varchar(255) DEFAULT NULL, `MAction` varchar(255) DEFAULT NULL ) ENGINE=InnoDB DEFAULT CHARSET=latin1; -- -- Indexes for dumped tables -- -- -- Indexes for table `sah_m_address` -- ALTER TABLE `sah_m_address` ADD PRIMARY KEY (`id`); -- -- Indexes for table `sah_m_bank` -- ALTER TABLE `sah_m_bank` ADD PRIMARY KEY (`id`); -- -- Indexes for table `sah_m_brand` -- ALTER TABLE `sah_m_brand` ADD PRIMARY KEY (`id`); -- -- Indexes for table `sah_m_catagories` -- ALTER TABLE `sah_m_catagories` ADD PRIMARY KEY (`id`); -- -- Indexes for table `sah_m_compnay` -- ALTER TABLE `sah_m_compnay` ADD PRIMARY KEY (`id`); -- -- Indexes for table `sah_m_payment` -- ALTER TABLE `sah_m_payment` ADD PRIMARY KEY (`id`); -- -- Indexes for table `sah_m_payment_mode` -- ALTER TABLE `sah_m_payment_mode` ADD PRIMARY KEY (`id`); -- -- Indexes for table `sah_m_price` -- ALTER TABLE `sah_m_price` ADD PRIMARY KEY (`id`); -- -- Indexes for table `sah_m_product` -- ALTER TABLE `sah_m_product` ADD PRIMARY KEY (`id`); -- -- Indexes for table `sah_m_product_qty` -- ALTER TABLE `sah_m_product_qty` ADD PRIMARY KEY (`id`); -- -- Indexes for table `sah_m_purchase` -- ALTER TABLE `sah_m_purchase` ADD PRIMARY KEY (`id`); -- -- Indexes for table `sah_m_sales` -- ALTER TABLE `sah_m_sales` ADD PRIMARY KEY (`id`); -- -- Indexes for table `sah_m_user` -- ALTER TABLE `sah_m_user` ADD PRIMARY KEY (`id`); -- -- AUTO_INCREMENT for dumped tables -- -- -- AUTO_INCREMENT for table `sah_m_address` -- ALTER TABLE `sah_m_address` MODIFY `id` int(11) NOT NULL AUTO_INCREMENT; -- -- AUTO_INCREMENT for table `sah_m_bank` -- ALTER TABLE `sah_m_bank` MODIFY `id` int(11) NOT NULL AUTO_INCREMENT; -- -- AUTO_INCREMENT for table `sah_m_brand` -- ALTER TABLE `sah_m_brand` MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2; -- -- AUTO_INCREMENT for table `sah_m_catagories` -- ALTER TABLE `sah_m_catagories` MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2; -- -- AUTO_INCREMENT for table `sah_m_compnay` -- ALTER TABLE `sah_m_compnay` MODIFY `id` int(11) NOT NULL AUTO_INCREMENT; -- -- AUTO_INCREMENT for table `sah_m_payment` -- ALTER TABLE `sah_m_payment` MODIFY `id` int(11) NOT NULL AUTO_INCREMENT; -- -- AUTO_INCREMENT for table `sah_m_payment_mode` -- ALTER TABLE `sah_m_payment_mode` MODIFY `id` int(11) NOT NULL AUTO_INCREMENT; -- -- AUTO_INCREMENT for table `sah_m_price` -- ALTER TABLE `sah_m_price` MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2; -- -- AUTO_INCREMENT for table `sah_m_product` -- ALTER TABLE `sah_m_product` MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2; -- -- AUTO_INCREMENT for table `sah_m_product_qty` -- ALTER TABLE `sah_m_product_qty` MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2; -- -- AUTO_INCREMENT for table `sah_m_purchase` -- ALTER TABLE `sah_m_purchase` MODIFY `id` int(11) NOT NULL AUTO_INCREMENT; -- -- AUTO_INCREMENT for table `sah_m_sales` -- ALTER TABLE `sah_m_sales` MODIFY `id` int(11) NOT NULL AUTO_INCREMENT; -- -- AUTO_INCREMENT for table `sah_m_user` -- ALTER TABLE `sah_m_user` MODIFY `id` int(11) NOT NULL AUTO_INCREMENT; COMMIT; /*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */; /*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */; /*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;