-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th7 06, 2021 lúc 11:17 AM
-- Phiên bản máy phục vụ: 10.4.14-MariaDB
-- Phiên bản PHP: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `webmusic`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `genremusic`
--

CREATE TABLE `genremusic` (
  `GenreID` int(11) NOT NULL,
  `GenreName` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `genremusic`
--

INSERT INTO `genremusic` (`GenreID`, `GenreName`) VALUES
(1, 'Blues'),
(2, 'Classical'),
(3, 'Country'),
(4, 'Dance'),
(5, 'Electronic'),
(6, 'Jazz'),
(7, 'Opera'),
(8, 'Pop'),
(9, 'Rap'),
(10, 'Rock'),
(11, 'Hip hop'),
(12, 'Folk'),
(18, ' VPop123');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order`
--

CREATE TABLE `order` (
  `OrderID` int(11) NOT NULL,
  `OrderDate` date NOT NULL,
  `UserID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `singer`
--

CREATE TABLE `singer` (
  `SingerID` int(11) NOT NULL,
  `SingerName` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `singer`
--

INSERT INTO `singer` (`SingerID`, `SingerName`) VALUES
(1, ' Den Vau'),
(2, 'Son Tung'),
(12, '  hieu'),
(15, '  Phan Manh Quynh'),
(16, 'Ho Quang Hieu');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `song`
--

CREATE TABLE `song` (
  `SongID` int(100) NOT NULL,
  `SongName` varchar(100) NOT NULL,
  `SongImg` varchar(100) NOT NULL,
  `SongLyric` text NOT NULL,
  `Price` varchar(100) NOT NULL,
  `Mp3` varchar(100) NOT NULL,
  `SingerID` int(11) DEFAULT NULL,
  `GenreID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `song`
--

INSERT INTO `song` (`SongID`, `SongName`, `SongImg`, `SongLyric`, `Price`, `Mp3`, `SingerID`, `GenreID`) VALUES
(48, 'Dog', 'img/pic1.jpg', 'Cats, more precisely domestic cats to distinguish them from other species of the feline family, are small, carnivorous mammals that live with humans, bred to hunt pests or as pets. with domestic dogs. Domestic cats have lived close to humans for at least 9,500 years, and today they are the most popular pet in the world.\r\nThere are many different breeds of cats, some hairless or tailless, and they come in a variety of coat colors. Cats are skilled predators and are known for their ability to hunt thousands of creatures for food, such as rats. They are also intelligent creatures, and can be taught or taught themselves to use simple tools like opening a doorknob or flushing the toilet.\r\nCats communicate by meowing, purring, hissing, growling, and body language. Cats in packs use both sound and body language to communicate with each other.', '15000', '', 12, 18),
(49, 'Worm', 'img/pic2.jpg', 'Worms are many different distantly related animals that typically have a long cylindrical tube-like body, no limbs, and no eyes. Worms vary in size from microscopic to over 1 metre (3.3 ft) in length for marine polychaete worms (bristle worms),[1] 6.7 metres (22 ft) for the African giant earthworm, Microchaetus rappi,[2] and 58 metres (190 ft) for the marine nemertean worm (bootlace worm), Lineus longissimus.[3] Various types of worm occupy a small variety of parasitic niches, living inside the bodies of other animals. Free-living worm species do not live on land, but instead, live in marine or freshwater environments, or underground by burrowing. In biology, \"worm\" refers to an obsolete taxon, vermes, used by Carolus Linnaeus and Jean-Baptiste Lamarck for all non-arthropod invertebrate animals, now seen to be paraphyletic. The name stems from the Old English word wyrm. Most animals called \"worms\" are invertebrates, but the term is also used for the amphibian caecilians and the slowworm Anguis, a legless burrowing lizard. Invertebrate animals commonly called \"worms\" include annelids (earthworms and marine polychaete or bristle worms), nematodes (roundworms), platyhelminthes (flatworms), marine nemertean worms (\"bootlace worms\"), marine Chaetognatha (arrow worms), priapulid worms, and insect larvae such as grubs and maggots.', '15000', '', 12, 18),
(53, 'Barbie doll', 'img/pic3.jpg', 'Barbie is a fashion doll, manufactured by the American company Mattel. The product was first displayed on March 9, 1959 at the American International Toy Fair in New York. Since then, Barbie dolls have become a best-selling toy in history and broke the notion that \"dolls are only for girls\".\r\n\r\nAmerican businesswoman Ruth Handler is credited with creating Barbie dolls inspired by Bild Lilli dolls.\r\n\r\nBarbie also represents Mattel\'s brand of dolls and accessories such as family members and collectible dolls. For more than 50 years, Barbie dolls have been a key player in the fashion doll market, and have been the subject of countless controversies and lawsuits involving copying Barbie\'s designs, brands, or even life. .\r\n\r\nMattel has sold over a billion Barbie dolls, making it the company\'s largest and most profitable product line. However, since 2014, the production of dolls has declined sharply[1]. Barbie dolls have enriched the world toy business by introducing more related products (accessories, clothes, Barbie friends...).', '50000', '', 16, 18),
(55, 'Pitbull', 'img/pic4.jpg', 'The Pit bull is a breed of domestic dog originating from the Americas, bred in England and kept as a housekeeper and also used in dog fights. They are a breed selected from the English bulldog and the terrier. This is a fierce, warlike, tenacious, tenacious dog known as a cold-blooded killer, also known as a warrior dog or a gladiator.[2] The term Pit bull is derived from the English name pit which means big pit and bull which means bull.[3] The first Pit bull breed was bred in England in the 18th century and used to fight other dogs in the arena or in a large pit for bloody battles.[4] They are also trained to hunt.[5]\r\n\r\nIn the broadest sense, the term \"Pit Bull\" may refer to one of the breeds including the American Pit Bull Terrier, the Staffordshire Bull Terrier, the American Staffordshire Terrier, or any of those hybrids. . The Pit Bull was created as a cross between an English mastiff and a terrier, but each distinct breed of Pit Bull has a distinct history of development.\r\n\r\nAs an imported dog breed originating from the United States, its characteristics are very aggressive and aggressive[6] This breed of dog originates from the Americas and is gradually being raised in Vietnam. Considered as the fierce god of fighting dogs, with the strength of the body plus sharp teeth, when fighting Pitbulls are likened to warriors, they can bite each other to the last breath. Pitbull is considered the lord of fighting dogs.', '15000', '', 12, 18),
(56, 'Piano mini', 'img/pic5.jpg', 'Musical toys are children\'s toys that can emit funny sounds and melodies. Musical toy products for babies have many lovely designs, some outstanding models such as toy lutes, toy drums, ...\r\n\r\nInstrumental toys are becoming favorites for both girls and boys. The material for making musical toys for babies is usually made from plastic, there are some models made from wood.', '20000', '', 16, 18),
(57, 'Cat', 'img/pic6.jpg', 'Cats, more precisely domestic cats to distinguish them from other species of the feline family, are small, carnivorous mammals that live with humans, bred to hunt pests or as pets. with domestic dogs. Domestic cats have lived close to humans for at least 9,500 years, and today they are the most popular pet in the world.\r\nThere are many different breeds of cats, some hairless or tailless, and they come in a variety of coat colors. Cats are skilled predators and are known for their ability to hunt thousands of creatures for food, such as rats. They are also intelligent creatures, and can be taught or taught themselves to use simple tools like opening a doorknob or flushing the toilet.\r\nCats communicate by meowing, purring, hissing, growling, and body language. Cats in packs use both sound and body language to communicate with each other.', '15000', '', 16, 18);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `song-order`
--

CREATE TABLE `song-order` (
  `OrderID` int(11) DEFAULT NULL,
  `SongID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user`
--

CREATE TABLE `user` (
  `UserID` int(11) NOT NULL,
  `UserName` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `FullName` varchar(100) NOT NULL,
  `Phone` varchar(100) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `DateOfBirth` date NOT NULL,
  `BankCartCode` varchar(100) NOT NULL,
  `Role_1` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `user`
--

INSERT INTO `user` (`UserID`, `UserName`, `Password`, `FullName`, `Phone`, `Email`, `DateOfBirth`, `BankCartCode`, `Role_1`) VALUES
(1, 'admin', '1', 'Nguyen Hien', '0964254117', 'datvi@gmail.com', '2001-01-20', '98418918198198198', 1),
(16, 'fd', 'f', 'd', 'f', '', '0000-00-00', '', 0),
(17, 'ha', '1', 'hha', '0', '', '0000-00-00', '', 0);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `genremusic`
--
ALTER TABLE `genremusic`
  ADD PRIMARY KEY (`GenreID`);

--
-- Chỉ mục cho bảng `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`OrderID`),
  ADD KEY `fk3` (`UserID`);

--
-- Chỉ mục cho bảng `singer`
--
ALTER TABLE `singer`
  ADD PRIMARY KEY (`SingerID`);

--
-- Chỉ mục cho bảng `song`
--
ALTER TABLE `song`
  ADD PRIMARY KEY (`SongID`),
  ADD KEY `fk2` (`SingerID`),
  ADD KEY `fk6` (`GenreID`);

--
-- Chỉ mục cho bảng `song-order`
--
ALTER TABLE `song-order`
  ADD PRIMARY KEY (`SongID`),
  ADD KEY `fk4` (`OrderID`);

--
-- Chỉ mục cho bảng `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`UserID`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `genremusic`
--
ALTER TABLE `genremusic`
  MODIFY `GenreID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT cho bảng `order`
--
ALTER TABLE `order`
  MODIFY `OrderID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `singer`
--
ALTER TABLE `singer`
  MODIFY `SingerID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT cho bảng `song`
--
ALTER TABLE `song`
  MODIFY `SongID` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT cho bảng `song-order`
--
ALTER TABLE `song-order`
  MODIFY `SongID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `user`
--
ALTER TABLE `user`
  MODIFY `UserID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `order`
--
ALTER TABLE `order`
  ADD CONSTRAINT `fk3` FOREIGN KEY (`UserID`) REFERENCES `user` (`UserID`);

--
-- Các ràng buộc cho bảng `song`
--
ALTER TABLE `song`
  ADD CONSTRAINT `fk2` FOREIGN KEY (`SingerID`) REFERENCES `singer` (`SingerID`),
  ADD CONSTRAINT `fk6` FOREIGN KEY (`GenreID`) REFERENCES `genremusic` (`GenreID`);

--
-- Các ràng buộc cho bảng `song-order`
--
ALTER TABLE `song-order`
  ADD CONSTRAINT `fk4` FOREIGN KEY (`OrderID`) REFERENCES `order` (`OrderID`),
  ADD CONSTRAINT `fk5` FOREIGN KEY (`SongID`) REFERENCES `song` (`SongID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
