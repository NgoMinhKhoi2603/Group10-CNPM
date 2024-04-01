-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th3 30, 2024 lúc 06:32 PM
-- Phiên bản máy phục vụ: 10.4.32-MariaDB
-- Phiên bản PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `project2`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admins`
--

CREATE TABLE `admins` (
  `Id` int(11) NOT NULL,
  `Username` varchar(255) NOT NULL,
  `Password` varchar(255) NOT NULL,
  `Status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `admins`
--

INSERT INTO `admins` (`Id`, `Username`, `Password`, `Status`) VALUES
(1, 'admin', 'e10adc3949ba59abbe56e057f20f883e', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `authors`
--

CREATE TABLE `authors` (
  `Id` int(11) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Image` varchar(255) NOT NULL,
  `Description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `authors`
--

INSERT INTO `authors` (`Id`, `Name`, `Image`, `Description`) VALUES
(1, 'Ngô Minh Khôi', '1.jpg', 'Quê quán: Hà Nội\r\n'),
(6, 'Trần Bùi Thành', '2.jpg', 'Quê quán: Hà Nội\r\n'),
(7, 'Nguyễn Trọng Trường', '3.jpg', 'Quê quán : Nghệ An'),
(8, 'Đỗ Đức Trọng', '4.jpg', 'Quê quán: Bắc Ninh'),
(9, 'Vũ Xuân Dự', '5.jpg', 'Quê quán: Hải Phòng');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `banners`
--

CREATE TABLE `banners` (
  `Id` int(11) NOT NULL,
  `Link` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `banners`
--

INSERT INTO `banners` (`Id`, `Link`) VALUES
(5, 'b1.jpg'),
(6, 'b2.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

CREATE TABLE `categories` (
  `Id` int(11) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `categories`
--

INSERT INTO `categories` (`Id`, `Name`, `Description`) VALUES
(1, 'Văn học Việt Nam', 'Các tác phẩm văn học của Việt Nam'),
(2, 'Văn học nước ngoài', 'Các tác phẩm văn học của nước ngoài'),
(3, 'Truyện tranh', 'Các tác phẩm về truyện tranh'),
(4, 'Giải mã bản thân', 'Các tác phẩm về giải mã bản thân'),
(5, 'Kiến thức khoa học', 'Các tác phẩm về khoa học');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `emailsubs`
--

CREATE TABLE `emailsubs` (
  `Id` int(11) NOT NULL,
  `Email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `emailsubs`
--

INSERT INTO `emailsubs` (`Id`, `Email`) VALUES
(1, 'ngominhkhoi262003@gmail.com'),
(8, 'quynhnga201971@gmail.com');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `eventcomments`
--

CREATE TABLE `eventcomments` (
  `Id` int(11) NOT NULL,
  `Date` date NOT NULL DEFAULT current_timestamp(),
  `Description` text DEFAULT NULL,
  `EventId` int(11) NOT NULL,
  `UserId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `eventcomments`
--

INSERT INTO `eventcomments` (`Id`, `Date`, `Description`, `EventId`, `UserId`) VALUES
(14, '2023-06-30', 'zzzzz', 1, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `events`
--

CREATE TABLE `events` (
  `Id` int(11) NOT NULL,
  `Name` varchar(255) NOT NULL,
  `Date` date NOT NULL DEFAULT current_timestamp(),
  `Image` varchar(255) NOT NULL,
  `Description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `events`
--

INSERT INTO `events` (`Id`, `Name`, `Date`, `Image`, `Description`) VALUES
(1, 'VIỆT NAM LÀ QUỐC GIA TIÊU ĐIỂM TẠI HỘI SÁCH THIẾU NHI CHÂU Á', '2023-07-01', 's1.jpg', 'Dịp lễ 30 tháng 4, khi facebook ngập tràn những tấm hình ăn chơi trên rừng dưới biển, nước trong nước ngoài, tiệc ngày tiệc đêm, áo quần lộng lẫy, thì tôi ngồi miệt mài đọc các tác phẩm dự giải thưởng Dế Mèn. Tôi vốn không thích đi chơi các dịp lễ đông đúc, còn việc đọc duyệt tác phẩm cũng đã quen mắt quen tay, thành ra không thấy áp lực gì. Vừa đọc vừa nhấp chai bia lạnh để bên, nói chung thấy đời… cũng được.\n\nNhững năm qua việc phát triển thói quen đọc sách cho trẻ con rất được chú ý. Dù gì thì gì, sách vẫn mang đến cho con trẻ khả năng tập trung, suy tư, tưởng tượng - sự cô đơn cần thiết để chúng trưởng thành. Vì thế, bố mẹ có thể chỉ ôm điện thoại nhưng không ngại chi tiền mua sách và hối thúc con “Yêu sách lên!” Các trường học đều có thư viện và tổ chức những ngày hội đọc sách. Các công ti xuất bản đều lao vào mảnh đất màu mỡ này: Kim Đồng dù vẫn là đơn vị xuất bản sách thiếu nhi mạnh nhất nhưng giờ đây bị các đơn vị khác như Nhã Nam, Đông A, Trẻ, Alpha Books, Thái Hà, Đinh Tị… cạnh tranh sôi nổi.Giải thưởng Dế Mèn dành cho văn học thiếu nhi xuất hiện trong bối cảnh này, cho thấy Báo Thể thao & Văn hóa rất mạnh bạo và giỏi “bắt trend”. Còn về việc tổ chức giải thưởng thì tờ báo đã quá dày dạn. Trong nhiều năm qua, đây là tờ báo tổ chức nhiều giải thưởng nhất: giải Cống hiến cho âm nhạc, giải Bùi Xuân Phái - vì tình yêu Hà Nội, giải Rồng tre cho biếm họa, và mới nhất là giải Dế Mèn, khởi sinh từ năm 2020, đến mùa hè 2023 này là mùa giải lần thứ 4.\n\nTôi có vinh dự tham gia ban sơ khảo hai mùa. Ngay khi một mùa giải kết thúc, các thành viên của ban tổ chức đã bắt đầu để ý đến những sáng tác cho thiếu nhi mới được xuất bản. Đến kì chú Dế Mèn cất tiếng gáy hiệu triệu các tác giả, sách và bản thảo đổ về rầm rập, cho thấy sức hút của giải. Các thành viên ban sơ khảo ai thấy ở đâu có gì lập tức mật báo về cho ban tổ chức, đảm bảo không tác giả nào bị bỏ sót, không một tác phẩm nào bị lãng quên.\n\nNăm nay khi sách và bản thảo ríu rít tụ về, ban tổ chức đã có bước lọc đầu tiên, để có được 121 tác phẩm cho ban sơ khảo làm việc. Ban sơ khảo đọc, nhận xét và chấm điểm, để lấy 10 tác phẩm vào chung kết, kèm theo những nhận xét và đề xuất. Cuối cùng là phần làm việc của ban chung khảo, để từ đó quyết định ai là Hiệp sĩ Dế Mèn và ai đoạt giải Khát vọng Dế Mèn. Trong quá trình chấm, các giám khảo bàn luận tới lui, rất nhiều ý kiến hữu ích làm cho không khí chấm giải sôi nổi một cách… nghiêm trọng. Thật tuyệt vời, năm nay chúng ta có các tác giả nhỏ tuổi tham gia. Cuốn này cao trào rất ổn nhưng mở lại lê thê, ta tính thế nào? Cuốn kia hơi đáng tiếc vì kết chơi vơi quá. Năm nay có Hiệp sĩ không, đã hai mùa chúng ta không có. Thơ không có nhiều dấu ấn nhỉ, đang có chuyện gì với thơ vậy? Có các tác giả đã dự thi năm trước năm nay lại dự thi, chứng tỏ rất hăng hái sáng tác. Thôi thế là chốt nhé, ta đi… uống bia nào!\n\nMùa giải lần thứ 4 có thơ vào chung kết, Phù thủy sợ ma của Thụy Anh, nhưng không có tác phẩm thơ đoạt giải. Mùa 3, 2, 1 cũng không dù thơ gửi về dự giải rất nhiều. Cá nhân tôi khi làm việc tại Phòng Tiếng Việt của Nhã Nam cũng nhận được nhiều bản thảo thơ cho trẻ em. Tiếc thay nhiều nhưng bình bình không nổi bật, thiên về ghép vần và “tính bài học” mà ít có tứ. Điều này khiến phải đặt ra một câu hỏi lớn hơn về thời đại: Chúng ta đang bớt mơ mộng đi chăng, chúng ta bị máy móc hóa rồi chăng?'),
(6, 'NXB KIM ĐỒNG GIỚI THIỆU NHIỀU ẤN PHẨM SÁCH THIẾU NHI ĐẶC SẮC TẠI HỘI SÁCH THIẾU NHI ', '2023-07-01', 's2.jpg', 'Trong các đơn vị xuất bản Việt Nam tham dự Hội sách lần này, Nhà xuất bản Kim Đồng là đơn vị tham dự nhiều hoạt động nhất với 4 hoạt động..Tại buổi khai mạc của Chương trình “Quốc gia Tiêu điểm: Việt Nam”, hoạ sĩ Vũ Xuân Hoàn sẽ trình bày và giới thiệu về sách thiếu nhi của Kim Đồng cùng với hai đơn vị xuất bản sách thiếu nhi tiêu biểu của Việt Nam là Nhà xuất bản Trẻ và Công ty CP Văn hóa & Truyền thông Nhã Nam. Tại đây, những người tham dự sẽ có cái nhìn sâu hơn về thị trường sách thiếu nhi Việt Nam hiện nay, cũng như tìm hiểu về sự phát triển và xu hướng xuất bản hiện nay. \n\nTham gia vào buổi tọa đàm chuyên môn “Publishing Translated Kidlit: Challenges and Opportunities” (Xuất bản sách dịch cho trẻ em: Cơ hội và thách thức), biên tập viên Lê Mỹ Ái của NXB Kim Đồng cùng hai diễn giả Hendarto Setiadi (Indonesia) và Tung Roh Suan (Singapore) sẽ chia sẻ những thách thức của quy trình mua - bán bản quyền dịch thuật trong việc xuất bản văn học dịch thuật dành cho trẻ em.\n\nMột trong những sự kiện nổi bật trong khuôn khổ chương trình, Nhà xuất bản Kim Đồng giới thiệu đến công chúng tham dự ấn phẩm mới “My Daddy is a Runner” (Ba tớ là Runner). Tại buổi ra mắt này, tác giả Tâm Bùi và họa sĩ Jeet Zdũng sẽ đọc sách và giao lưu với các độc giả nhỏ tuổi của Singapore, giúp các bạn nhỏ quốc tế hiểu thêm về nguồn cảm hứng sáng tác cuốn sách cũng như những bài học cuộc sống mà tác giả đã tìm cách thể hiện trong tác phẩm, về những trăn trở mà các gia đình trẻ ở Việt Nam đang phải đối mặt. “Ba tớ là Runner” là cuốn sách này được lựa chọn xuất bản tại Singapore trong khuôn khổ dự án xuất bản giữa hai nước. Bên cạnh đó, NXB Kim Đồng cũng xuất bản cuốn “Bầu trời nước chanh” (Lemonade Sky) của tác giả nổi tiếng người Singapore - J. H. Low.\n\nTrong chương trình “The Call of the Wild” (Trở về nơi hoang dã), nhóm tác giả Trang Nguyễn và Jeet Zdũng sẽ giao lưu, chia sẻ về hành trình sáng tạo hai cuốn sách tranh về đề tài bảo tồn động vật hoang dã thông qua cách kết hợp kiến thức khoa học với cách kể chuyện lôi cuốn để tạo ra những câu chuyện hấp dẫn thu hút độc giả ở mọi lứa tuổi.          \n\nNXB Kim Đồng cũng mang đến Hội sách hơn 30 đầu sách tiêu biểu cho thiếu nhi, với nhiều thể loại như văn học, tranh truyện dân gian, sách kĩ năng, sách khoa học... để giới thiệu và quảng bá tới bạn bè quốc tế, trong đó có nhiều ấn phẩm đã bán bản quyền xuất bản ở các nước như Hàn Quốc, Trung Quốc, Hà Lan, Anh, Nhật Bản, Đài Loan, Philippines.'),
(8, 'VUI TẾT THIẾU NHI - RỘN RÃ ĐÓN HÈ', '2023-07-01', 's3.jpg', 'Dịp lễ 30 tháng 4, khi facebook ngập tràn những tấm hình ăn chơi trên rừng dưới biển, nước trong nước ngoài, tiệc ngày tiệc đêm, áo quần lộng lẫy, thì tôi ngồi miệt mài đọc các tác phẩm dự giải thưởng Dế Mèn. Tôi vốn không thích đi chơi các dịp lễ đông đúc, còn việc đọc duyệt tác phẩm cũng đã quen mắt quen tay, thành ra không thấy áp lực gì. Vừa đọc vừa nhấp chai bia lạnh để bên, nói chung thấy đời… cũng được.\n\nNhững năm qua việc phát triển thói quen đọc sách cho trẻ con rất được chú ý. Dù gì thì gì, sách vẫn mang đến cho con trẻ khả năng tập trung, suy tư, tưởng tượng - sự cô đơn cần thiết để chúng trưởng thành. Vì thế, bố mẹ có thể chỉ ôm điện thoại nhưng không ngại chi tiền mua sách và hối thúc con “Yêu sách lên!” Các trường học đều có thư viện và tổ chức những ngày hội đọc sách. Các công ti xuất bản đều lao vào mảnh đất màu mỡ này: Kim Đồng dù vẫn là đơn vị xuất bản sách thiếu nhi mạnh nhất nhưng giờ đây bị các đơn vị khác như Nhã Nam, Đông A, Trẻ, Alpha Books, Thái Hà, Đinh Tị… cạnh tranh sôi nổi.Giải thưởng Dế Mèn dành cho văn học thiếu nhi xuất hiện trong bối cảnh này, cho thấy Báo Thể thao & Văn hóa rất mạnh bạo và giỏi “bắt trend”. Còn về việc tổ chức giải thưởng thì tờ báo đã quá dày dạn. Trong nhiều năm qua, đây là tờ báo tổ chức nhiều giải thưởng nhất: giải Cống hiến cho âm nhạc, giải Bùi Xuân Phái - vì tình yêu Hà Nội, giải Rồng tre cho biếm họa, và mới nhất là giải Dế Mèn, khởi sinh từ năm 2020, đến mùa hè 2023 này là mùa giải lần thứ 4.\n\nTôi có vinh dự tham gia ban sơ khảo hai mùa. Ngay khi một mùa giải kết thúc, các thành viên của ban tổ chức đã bắt đầu để ý đến những sáng tác cho thiếu nhi mới được xuất bản. Đến kì chú Dế Mèn cất tiếng gáy hiệu triệu các tác giả, sách và bản thảo đổ về rầm rập, cho thấy sức hút của giải. Các thành viên ban sơ khảo ai thấy ở đâu có gì lập tức mật báo về cho ban tổ chức, đảm bảo không tác giả nào bị bỏ sót, không một tác phẩm nào bị lãng quên.\n\nNăm nay khi sách và bản thảo ríu rít tụ về, ban tổ chức đã có bước lọc đầu tiên, để có được 121 tác phẩm cho ban sơ khảo làm việc. Ban sơ khảo đọc, nhận xét và chấm điểm, để lấy 10 tác phẩm vào chung kết, kèm theo những nhận xét và đề xuất. Cuối cùng là phần làm việc của ban chung khảo, để từ đó quyết định ai là Hiệp sĩ Dế Mèn và ai đoạt giải Khát vọng Dế Mèn. Trong quá trình chấm, các giám khảo bàn luận tới lui, rất nhiều ý kiến hữu ích làm cho không khí chấm giải sôi nổi một cách… nghiêm trọng. Thật tuyệt vời, năm nay chúng ta có các tác giả nhỏ tuổi tham gia. Cuốn này cao trào rất ổn nhưng mở lại lê thê, ta tính thế nào? Cuốn kia hơi đáng tiếc vì kết chơi vơi quá. Năm nay có Hiệp sĩ không, đã hai mùa chúng ta không có. Thơ không có nhiều dấu ấn nhỉ, đang có chuyện gì với thơ vậy? Có các tác giả đã dự thi năm trước năm nay lại dự thi, chứng tỏ rất hăng hái sáng tác. Thôi thế là chốt nhé, ta đi… uống bia nào!\n\nMùa giải lần thứ 4 có thơ vào chung kết, Phù thủy sợ ma của Thụy Anh, nhưng không có tác phẩm thơ đoạt giải. Mùa 3, 2, 1 cũng không dù thơ gửi về dự giải rất nhiều. Cá nhân tôi khi làm việc tại Phòng Tiếng Việt của Nhã Nam cũng nhận được nhiều bản thảo thơ cho trẻ em. Tiếc thay nhiều nhưng bình bình không nổi bật, thiên về ghép vần và “tính bài học” mà ít có tứ. Điều này khiến phải đặt ra một câu hỏi lớn hơn về thời đại: Chúng ta đang bớt mơ mộng đi chăng, chúng ta bị máy móc hóa rồi chăng?'),
(10, 'GÓC ĐỌC SÁCH HÈ – SÂN CHƠI THÚ VỊ CHO CÁC BẠN NHỎ MÙA HÈ 2023', '2023-07-01', 's4.jpg', 'Trong các đơn vị xuất bản Việt Nam tham dự Hội sách lần này, Nhà xuất bản Kim Đồng là đơn vị tham dự nhiều hoạt động nhất với 4 hoạt động..Tại buổi khai mạc của Chương trình “Quốc gia Tiêu điểm: Việt Nam”, hoạ sĩ Vũ Xuân Hoàn sẽ trình bày và giới thiệu về sách thiếu nhi của Kim Đồng cùng với hai đơn vị xuất bản sách thiếu nhi tiêu biểu của Việt Nam là Nhà xuất bản Trẻ và Công ty CP Văn hóa & Truyền thông Nhã Nam. Tại đây, những người tham dự sẽ có cái nhìn sâu hơn về thị trường sách thiếu nhi Việt Nam hiện nay, cũng như tìm hiểu về sự phát triển và xu hướng xuất bản hiện nay. \n\nTham gia vào buổi tọa đàm chuyên môn “Publishing Translated Kidlit: Challenges and Opportunities” (Xuất bản sách dịch cho trẻ em: Cơ hội và thách thức), biên tập viên Lê Mỹ Ái của NXB Kim Đồng cùng hai diễn giả Hendarto Setiadi (Indonesia) và Tung Roh Suan (Singapore) sẽ chia sẻ những thách thức của quy trình mua - bán bản quyền dịch thuật trong việc xuất bản văn học dịch thuật dành cho trẻ em.\n\nMột trong những sự kiện nổi bật trong khuôn khổ chương trình, Nhà xuất bản Kim Đồng giới thiệu đến công chúng tham dự ấn phẩm mới “My Daddy is a Runner” (Ba tớ là Runner). Tại buổi ra mắt này, tác giả Tâm Bùi và họa sĩ Jeet Zdũng sẽ đọc sách và giao lưu với các độc giả nhỏ tuổi của Singapore, giúp các bạn nhỏ quốc tế hiểu thêm về nguồn cảm hứng sáng tác cuốn sách cũng như những bài học cuộc sống mà tác giả đã tìm cách thể hiện trong tác phẩm, về những trăn trở mà các gia đình trẻ ở Việt Nam đang phải đối mặt. “Ba tớ là Runner” là cuốn sách này được lựa chọn xuất bản tại Singapore trong khuôn khổ dự án xuất bản giữa hai nước. Bên cạnh đó, NXB Kim Đồng cũng xuất bản cuốn “Bầu trời nước chanh” (Lemonade Sky) của tác giả nổi tiếng người Singapore - J. H. Low.\n\nTrong chương trình “The Call of the Wild” (Trở về nơi hoang dã), nhóm tác giả Trang Nguyễn và Jeet Zdũng sẽ giao lưu, chia sẻ về hành trình sáng tạo hai cuốn sách tranh về đề tài bảo tồn động vật hoang dã thông qua cách kết hợp kiến thức khoa học với cách kể chuyện lôi cuốn để tạo ra những câu chuyện hấp dẫn thu hút độc giả ở mọi lứa tuổi.          \n\nNXB Kim Đồng cũng mang đến Hội sách hơn 30 đầu sách tiêu biểu cho thiếu nhi, với nhiều thể loại như văn học, tranh truyện dân gian, sách kĩ năng, sách khoa học... để giới thiệu và quảng bá tới bạn bè quốc tế, trong đó có nhiều ấn phẩm đã bán bản quyền xuất bản ở các nước như Hàn Quốc, Trung Quốc, Hà Lan, Anh, Nhật Bản, Đài Loan, Philippines.'),
(11, 'VÀO DỊP 1/6 SẼ DIỄN RA LỄ TRAO GIẢI THƯỞNG THIẾU NHI DẾ MÈN LẦN THỨ 4', '2023-07-01', 's5.jpg', 'Dịp lễ 30 tháng 4, khi facebook ngập tràn những tấm hình ăn chơi trên rừng dưới biển, nước trong nước ngoài, tiệc ngày tiệc đêm, áo quần lộng lẫy, thì tôi ngồi miệt mài đọc các tác phẩm dự giải thưởng Dế Mèn. Tôi vốn không thích đi chơi các dịp lễ đông đúc, còn việc đọc duyệt tác phẩm cũng đã quen mắt quen tay, thành ra không thấy áp lực gì. Vừa đọc vừa nhấp chai bia lạnh để bên, nói chung thấy đời… cũng được.\n\nNhững năm qua việc phát triển thói quen đọc sách cho trẻ con rất được chú ý. Dù gì thì gì, sách vẫn mang đến cho con trẻ khả năng tập trung, suy tư, tưởng tượng - sự cô đơn cần thiết để chúng trưởng thành. Vì thế, bố mẹ có thể chỉ ôm điện thoại nhưng không ngại chi tiền mua sách và hối thúc con “Yêu sách lên!” Các trường học đều có thư viện và tổ chức những ngày hội đọc sách. Các công ti xuất bản đều lao vào mảnh đất màu mỡ này: Kim Đồng dù vẫn là đơn vị xuất bản sách thiếu nhi mạnh nhất nhưng giờ đây bị các đơn vị khác như Nhã Nam, Đông A, Trẻ, Alpha Books, Thái Hà, Đinh Tị… cạnh tranh sôi nổi.Giải thưởng Dế Mèn dành cho văn học thiếu nhi xuất hiện trong bối cảnh này, cho thấy Báo Thể thao & Văn hóa rất mạnh bạo và giỏi “bắt trend”. Còn về việc tổ chức giải thưởng thì tờ báo đã quá dày dạn. Trong nhiều năm qua, đây là tờ báo tổ chức nhiều giải thưởng nhất: giải Cống hiến cho âm nhạc, giải Bùi Xuân Phái - vì tình yêu Hà Nội, giải Rồng tre cho biếm họa, và mới nhất là giải Dế Mèn, khởi sinh từ năm 2020, đến mùa hè 2023 này là mùa giải lần thứ 4.\n\nTôi có vinh dự tham gia ban sơ khảo hai mùa. Ngay khi một mùa giải kết thúc, các thành viên của ban tổ chức đã bắt đầu để ý đến những sáng tác cho thiếu nhi mới được xuất bản. Đến kì chú Dế Mèn cất tiếng gáy hiệu triệu các tác giả, sách và bản thảo đổ về rầm rập, cho thấy sức hút của giải. Các thành viên ban sơ khảo ai thấy ở đâu có gì lập tức mật báo về cho ban tổ chức, đảm bảo không tác giả nào bị bỏ sót, không một tác phẩm nào bị lãng quên.\n\nNăm nay khi sách và bản thảo ríu rít tụ về, ban tổ chức đã có bước lọc đầu tiên, để có được 121 tác phẩm cho ban sơ khảo làm việc. Ban sơ khảo đọc, nhận xét và chấm điểm, để lấy 10 tác phẩm vào chung kết, kèm theo những nhận xét và đề xuất. Cuối cùng là phần làm việc của ban chung khảo, để từ đó quyết định ai là Hiệp sĩ Dế Mèn và ai đoạt giải Khát vọng Dế Mèn. Trong quá trình chấm, các giám khảo bàn luận tới lui, rất nhiều ý kiến hữu ích làm cho không khí chấm giải sôi nổi một cách… nghiêm trọng. Thật tuyệt vời, năm nay chúng ta có các tác giả nhỏ tuổi tham gia. Cuốn này cao trào rất ổn nhưng mở lại lê thê, ta tính thế nào? Cuốn kia hơi đáng tiếc vì kết chơi vơi quá. Năm nay có Hiệp sĩ không, đã hai mùa chúng ta không có. Thơ không có nhiều dấu ấn nhỉ, đang có chuyện gì với thơ vậy? Có các tác giả đã dự thi năm trước năm nay lại dự thi, chứng tỏ rất hăng hái sáng tác. Thôi thế là chốt nhé, ta đi… uống bia nào!\n\nMùa giải lần thứ 4 có thơ vào chung kết, Phù thủy sợ ma của Thụy Anh, nhưng không có tác phẩm thơ đoạt giải. Mùa 3, 2, 1 cũng không dù thơ gửi về dự giải rất nhiều. Cá nhân tôi khi làm việc tại Phòng Tiếng Việt của Nhã Nam cũng nhận được nhiều bản thảo thơ cho trẻ em. Tiếc thay nhiều nhưng bình bình không nổi bật, thiên về ghép vần và “tính bài học” mà ít có tứ. Điều này khiến phải đặt ra một câu hỏi lớn hơn về thời đại: Chúng ta đang bớt mơ mộng đi chăng, chúng ta bị máy móc hóa rồi chăng?'),
(12, 'HỌA SĨ NHẬT BẢN ĂN BÁNH TRÁNG TRỘN, VẼ TRANH TẶNG BẠN ĐỌC VIỆT', '2023-07-01', 's6.jpg', 'Trong các đơn vị xuất bản Việt Nam tham dự Hội sách lần này, Nhà xuất bản Kim Đồng là đơn vị tham dự nhiều hoạt động nhất với 4 hoạt động..Tại buổi khai mạc của Chương trình “Quốc gia Tiêu điểm: Việt Nam”, hoạ sĩ Vũ Xuân Hoàn sẽ trình bày và giới thiệu về sách thiếu nhi của Kim Đồng cùng với hai đơn vị xuất bản sách thiếu nhi tiêu biểu của Việt Nam là Nhà xuất bản Trẻ và Công ty CP Văn hóa & Truyền thông Nhã Nam. Tại đây, những người tham dự sẽ có cái nhìn sâu hơn về thị trường sách thiếu nhi Việt Nam hiện nay, cũng như tìm hiểu về sự phát triển và xu hướng xuất bản hiện nay. \n\nTham gia vào buổi tọa đàm chuyên môn “Publishing Translated Kidlit: Challenges and Opportunities” (Xuất bản sách dịch cho trẻ em: Cơ hội và thách thức), biên tập viên Lê Mỹ Ái của NXB Kim Đồng cùng hai diễn giả Hendarto Setiadi (Indonesia) và Tung Roh Suan (Singapore) sẽ chia sẻ những thách thức của quy trình mua - bán bản quyền dịch thuật trong việc xuất bản văn học dịch thuật dành cho trẻ em.\n\nMột trong những sự kiện nổi bật trong khuôn khổ chương trình, Nhà xuất bản Kim Đồng giới thiệu đến công chúng tham dự ấn phẩm mới “My Daddy is a Runner” (Ba tớ là Runner). Tại buổi ra mắt này, tác giả Tâm Bùi và họa sĩ Jeet Zdũng sẽ đọc sách và giao lưu với các độc giả nhỏ tuổi của Singapore, giúp các bạn nhỏ quốc tế hiểu thêm về nguồn cảm hứng sáng tác cuốn sách cũng như những bài học cuộc sống mà tác giả đã tìm cách thể hiện trong tác phẩm, về những trăn trở mà các gia đình trẻ ở Việt Nam đang phải đối mặt. “Ba tớ là Runner” là cuốn sách này được lựa chọn xuất bản tại Singapore trong khuôn khổ dự án xuất bản giữa hai nước. Bên cạnh đó, NXB Kim Đồng cũng xuất bản cuốn “Bầu trời nước chanh” (Lemonade Sky) của tác giả nổi tiếng người Singapore - J. H. Low.\n\nTrong chương trình “The Call of the Wild” (Trở về nơi hoang dã), nhóm tác giả Trang Nguyễn và Jeet Zdũng sẽ giao lưu, chia sẻ về hành trình sáng tạo hai cuốn sách tranh về đề tài bảo tồn động vật hoang dã thông qua cách kết hợp kiến thức khoa học với cách kể chuyện lôi cuốn để tạo ra những câu chuyện hấp dẫn thu hút độc giả ở mọi lứa tuổi.          \n\nNXB Kim Đồng cũng mang đến Hội sách hơn 30 đầu sách tiêu biểu cho thiếu nhi, với nhiều thể loại như văn học, tranh truyện dân gian, sách kĩ năng, sách khoa học... để giới thiệu và quảng bá tới bạn bè quốc tế, trong đó có nhiều ấn phẩm đã bán bản quyền xuất bản ở các nước như Hàn Quốc, Trung Quốc, Hà Lan, Anh, Nhật Bản, Đài Loan, Philippines.'),
(13, '60 TÁC PHẨM ĐƯỢC TRƯNG BÀY TẠI TRIỂN LÃM CÁC TÁC PHẨM ĐOẠT GIẢI CUỘC THI \"SÁNG TÁC VỀ NHÂN VẬT CHÂU ÂU\"', '2023-07-01', 's7.jpg', 'Dịp lễ 30 tháng 4, khi facebook ngập tràn những tấm hình ăn chơi trên rừng dưới biển, nước trong nước ngoài, tiệc ngày tiệc đêm, áo quần lộng lẫy, thì tôi ngồi miệt mài đọc các tác phẩm dự giải thưởng Dế Mèn. Tôi vốn không thích đi chơi các dịp lễ đông đúc, còn việc đọc duyệt tác phẩm cũng đã quen mắt quen tay, thành ra không thấy áp lực gì. Vừa đọc vừa nhấp chai bia lạnh để bên, nói chung thấy đời… cũng được.\n\nNhững năm qua việc phát triển thói quen đọc sách cho trẻ con rất được chú ý. Dù gì thì gì, sách vẫn mang đến cho con trẻ khả năng tập trung, suy tư, tưởng tượng - sự cô đơn cần thiết để chúng trưởng thành. Vì thế, bố mẹ có thể chỉ ôm điện thoại nhưng không ngại chi tiền mua sách và hối thúc con “Yêu sách lên!” Các trường học đều có thư viện và tổ chức những ngày hội đọc sách. Các công ti xuất bản đều lao vào mảnh đất màu mỡ này: Kim Đồng dù vẫn là đơn vị xuất bản sách thiếu nhi mạnh nhất nhưng giờ đây bị các đơn vị khác như Nhã Nam, Đông A, Trẻ, Alpha Books, Thái Hà, Đinh Tị… cạnh tranh sôi nổi.Giải thưởng Dế Mèn dành cho văn học thiếu nhi xuất hiện trong bối cảnh này, cho thấy Báo Thể thao & Văn hóa rất mạnh bạo và giỏi “bắt trend”. Còn về việc tổ chức giải thưởng thì tờ báo đã quá dày dạn. Trong nhiều năm qua, đây là tờ báo tổ chức nhiều giải thưởng nhất: giải Cống hiến cho âm nhạc, giải Bùi Xuân Phái - vì tình yêu Hà Nội, giải Rồng tre cho biếm họa, và mới nhất là giải Dế Mèn, khởi sinh từ năm 2020, đến mùa hè 2023 này là mùa giải lần thứ 4.\n\nTôi có vinh dự tham gia ban sơ khảo hai mùa. Ngay khi một mùa giải kết thúc, các thành viên của ban tổ chức đã bắt đầu để ý đến những sáng tác cho thiếu nhi mới được xuất bản. Đến kì chú Dế Mèn cất tiếng gáy hiệu triệu các tác giả, sách và bản thảo đổ về rầm rập, cho thấy sức hút của giải. Các thành viên ban sơ khảo ai thấy ở đâu có gì lập tức mật báo về cho ban tổ chức, đảm bảo không tác giả nào bị bỏ sót, không một tác phẩm nào bị lãng quên.\n\nNăm nay khi sách và bản thảo ríu rít tụ về, ban tổ chức đã có bước lọc đầu tiên, để có được 121 tác phẩm cho ban sơ khảo làm việc. Ban sơ khảo đọc, nhận xét và chấm điểm, để lấy 10 tác phẩm vào chung kết, kèm theo những nhận xét và đề xuất. Cuối cùng là phần làm việc của ban chung khảo, để từ đó quyết định ai là Hiệp sĩ Dế Mèn và ai đoạt giải Khát vọng Dế Mèn. Trong quá trình chấm, các giám khảo bàn luận tới lui, rất nhiều ý kiến hữu ích làm cho không khí chấm giải sôi nổi một cách… nghiêm trọng. Thật tuyệt vời, năm nay chúng ta có các tác giả nhỏ tuổi tham gia. Cuốn này cao trào rất ổn nhưng mở lại lê thê, ta tính thế nào? Cuốn kia hơi đáng tiếc vì kết chơi vơi quá. Năm nay có Hiệp sĩ không, đã hai mùa chúng ta không có. Thơ không có nhiều dấu ấn nhỉ, đang có chuyện gì với thơ vậy? Có các tác giả đã dự thi năm trước năm nay lại dự thi, chứng tỏ rất hăng hái sáng tác. Thôi thế là chốt nhé, ta đi… uống bia nào!\n\nMùa giải lần thứ 4 có thơ vào chung kết, Phù thủy sợ ma của Thụy Anh, nhưng không có tác phẩm thơ đoạt giải. Mùa 3, 2, 1 cũng không dù thơ gửi về dự giải rất nhiều. Cá nhân tôi khi làm việc tại Phòng Tiếng Việt của Nhã Nam cũng nhận được nhiều bản thảo thơ cho trẻ em. Tiếc thay nhiều nhưng bình bình không nổi bật, thiên về ghép vần và “tính bài học” mà ít có tứ. Điều này khiến phải đặt ra một câu hỏi lớn hơn về thời đại: Chúng ta đang bớt mơ mộng đi chăng, chúng ta bị máy móc hóa rồi chăng?'),
(14, 'VĂN HỌC THIẾU NHI: LUỒNG GIÓ MỚI TỪ NHỮNG CÂY VIẾT TRẺ', '2023-07-01', 's8.jpg', 'Trong các đơn vị xuất bản Việt Nam tham dự Hội sách lần này, Nhà xuất bản Kim Đồng là đơn vị tham dự nhiều hoạt động nhất với 4 hoạt động..Tại buổi khai mạc của Chương trình “Quốc gia Tiêu điểm: Việt Nam”, hoạ sĩ Vũ Xuân Hoàn sẽ trình bày và giới thiệu về sách thiếu nhi của Kim Đồng cùng với hai đơn vị xuất bản sách thiếu nhi tiêu biểu của Việt Nam là Nhà xuất bản Trẻ và Công ty CP Văn hóa & Truyền thông Nhã Nam. Tại đây, những người tham dự sẽ có cái nhìn sâu hơn về thị trường sách thiếu nhi Việt Nam hiện nay, cũng như tìm hiểu về sự phát triển và xu hướng xuất bản hiện nay. \n\nTham gia vào buổi tọa đàm chuyên môn “Publishing Translated Kidlit: Challenges and Opportunities” (Xuất bản sách dịch cho trẻ em: Cơ hội và thách thức), biên tập viên Lê Mỹ Ái của NXB Kim Đồng cùng hai diễn giả Hendarto Setiadi (Indonesia) và Tung Roh Suan (Singapore) sẽ chia sẻ những thách thức của quy trình mua - bán bản quyền dịch thuật trong việc xuất bản văn học dịch thuật dành cho trẻ em.\n\nMột trong những sự kiện nổi bật trong khuôn khổ chương trình, Nhà xuất bản Kim Đồng giới thiệu đến công chúng tham dự ấn phẩm mới “My Daddy is a Runner” (Ba tớ là Runner). Tại buổi ra mắt này, tác giả Tâm Bùi và họa sĩ Jeet Zdũng sẽ đọc sách và giao lưu với các độc giả nhỏ tuổi của Singapore, giúp các bạn nhỏ quốc tế hiểu thêm về nguồn cảm hứng sáng tác cuốn sách cũng như những bài học cuộc sống mà tác giả đã tìm cách thể hiện trong tác phẩm, về những trăn trở mà các gia đình trẻ ở Việt Nam đang phải đối mặt. “Ba tớ là Runner” là cuốn sách này được lựa chọn xuất bản tại Singapore trong khuôn khổ dự án xuất bản giữa hai nước. Bên cạnh đó, NXB Kim Đồng cũng xuất bản cuốn “Bầu trời nước chanh” (Lemonade Sky) của tác giả nổi tiếng người Singapore - J. H. Low.\n\nTrong chương trình “The Call of the Wild” (Trở về nơi hoang dã), nhóm tác giả Trang Nguyễn và Jeet Zdũng sẽ giao lưu, chia sẻ về hành trình sáng tạo hai cuốn sách tranh về đề tài bảo tồn động vật hoang dã thông qua cách kết hợp kiến thức khoa học với cách kể chuyện lôi cuốn để tạo ra những câu chuyện hấp dẫn thu hút độc giả ở mọi lứa tuổi.          \n\nNXB Kim Đồng cũng mang đến Hội sách hơn 30 đầu sách tiêu biểu cho thiếu nhi, với nhiều thể loại như văn học, tranh truyện dân gian, sách kĩ năng, sách khoa học... để giới thiệu và quảng bá tới bạn bè quốc tế, trong đó có nhiều ấn phẩm đã bán bản quyền xuất bản ở các nước như Hàn Quốc, Trung Quốc, Hà Lan, Anh, Nhật Bản, Đài Loan, Philippines.'),
(15, 'VIỆT NAM LÀ QUỐC GIA TIÊU ĐIỂM TẠI HỘI SÁCH THIẾU NHI CHÂU Á - ÂU', '2023-07-01', 's1.jpg', 'Dịp lễ 30 tháng 4, khi facebook ngập tràn những tấm hình ăn chơi trên rừng dưới biển, nước trong nước ngoài, tiệc ngày tiệc đêm, áo quần lộng lẫy, thì tôi ngồi miệt mài đọc các tác phẩm dự giải thưởng Dế Mèn. Tôi vốn không thích đi chơi các dịp lễ đông đúc, còn việc đọc duyệt tác phẩm cũng đã quen mắt quen tay, thành ra không thấy áp lực gì. Vừa đọc vừa nhấp chai bia lạnh để bên, nói chung thấy đời… cũng được.\n\nNhững năm qua việc phát triển thói quen đọc sách cho trẻ con rất được chú ý. Dù gì thì gì, sách vẫn mang đến cho con trẻ khả năng tập trung, suy tư, tưởng tượng - sự cô đơn cần thiết để chúng trưởng thành. Vì thế, bố mẹ có thể chỉ ôm điện thoại nhưng không ngại chi tiền mua sách và hối thúc con “Yêu sách lên!” Các trường học đều có thư viện và tổ chức những ngày hội đọc sách. Các công ti xuất bản đều lao vào mảnh đất màu mỡ này: Kim Đồng dù vẫn là đơn vị xuất bản sách thiếu nhi mạnh nhất nhưng giờ đây bị các đơn vị khác như Nhã Nam, Đông A, Trẻ, Alpha Books, Thái Hà, Đinh Tị… cạnh tranh sôi nổi.Giải thưởng Dế Mèn dành cho văn học thiếu nhi xuất hiện trong bối cảnh này, cho thấy Báo Thể thao & Văn hóa rất mạnh bạo và giỏi “bắt trend”. Còn về việc tổ chức giải thưởng thì tờ báo đã quá dày dạn. Trong nhiều năm qua, đây là tờ báo tổ chức nhiều giải thưởng nhất: giải Cống hiến cho âm nhạc, giải Bùi Xuân Phái - vì tình yêu Hà Nội, giải Rồng tre cho biếm họa, và mới nhất là giải Dế Mèn, khởi sinh từ năm 2020, đến mùa hè 2023 này là mùa giải lần thứ 4.\n\nTôi có vinh dự tham gia ban sơ khảo hai mùa. Ngay khi một mùa giải kết thúc, các thành viên của ban tổ chức đã bắt đầu để ý đến những sáng tác cho thiếu nhi mới được xuất bản. Đến kì chú Dế Mèn cất tiếng gáy hiệu triệu các tác giả, sách và bản thảo đổ về rầm rập, cho thấy sức hút của giải. Các thành viên ban sơ khảo ai thấy ở đâu có gì lập tức mật báo về cho ban tổ chức, đảm bảo không tác giả nào bị bỏ sót, không một tác phẩm nào bị lãng quên.\n\nNăm nay khi sách và bản thảo ríu rít tụ về, ban tổ chức đã có bước lọc đầu tiên, để có được 121 tác phẩm cho ban sơ khảo làm việc. Ban sơ khảo đọc, nhận xét và chấm điểm, để lấy 10 tác phẩm vào chung kết, kèm theo những nhận xét và đề xuất. Cuối cùng là phần làm việc của ban chung khảo, để từ đó quyết định ai là Hiệp sĩ Dế Mèn và ai đoạt giải Khát vọng Dế Mèn. Trong quá trình chấm, các giám khảo bàn luận tới lui, rất nhiều ý kiến hữu ích làm cho không khí chấm giải sôi nổi một cách… nghiêm trọng. Thật tuyệt vời, năm nay chúng ta có các tác giả nhỏ tuổi tham gia. Cuốn này cao trào rất ổn nhưng mở lại lê thê, ta tính thế nào? Cuốn kia hơi đáng tiếc vì kết chơi vơi quá. Năm nay có Hiệp sĩ không, đã hai mùa chúng ta không có. Thơ không có nhiều dấu ấn nhỉ, đang có chuyện gì với thơ vậy? Có các tác giả đã dự thi năm trước năm nay lại dự thi, chứng tỏ rất hăng hái sáng tác. Thôi thế là chốt nhé, ta đi… uống bia nào!\n\nMùa giải lần thứ 4 có thơ vào chung kết, Phù thủy sợ ma của Thụy Anh, nhưng không có tác phẩm thơ đoạt giải. Mùa 3, 2, 1 cũng không dù thơ gửi về dự giải rất nhiều. Cá nhân tôi khi làm việc tại Phòng Tiếng Việt của Nhã Nam cũng nhận được nhiều bản thảo thơ cho trẻ em. Tiếc thay nhiều nhưng bình bình không nổi bật, thiên về ghép vần và “tính bài học” mà ít có tứ. Điều này khiến phải đặt ra một câu hỏi lớn hơn về thời đại: Chúng ta đang bớt mơ mộng đi chăng, chúng ta bị máy móc hóa rồi chăng?'),
(16, 'VUI TẾT THIẾU NHI - RỘN RÃ ĐÓN MÙA THU', '2023-07-01', 's2.jpg', 'Trong các đơn vị xuất bản Việt Nam tham dự Hội sách lần này, Nhà xuất bản Kim Đồng là đơn vị tham dự nhiều hoạt động nhất với 4 hoạt động..Tại buổi khai mạc của Chương trình “Quốc gia Tiêu điểm: Việt Nam”, hoạ sĩ Vũ Xuân Hoàn sẽ trình bày và giới thiệu về sách thiếu nhi của Kim Đồng cùng với hai đơn vị xuất bản sách thiếu nhi tiêu biểu của Việt Nam là Nhà xuất bản Trẻ và Công ty CP Văn hóa & Truyền thông Nhã Nam. Tại đây, những người tham dự sẽ có cái nhìn sâu hơn về thị trường sách thiếu nhi Việt Nam hiện nay, cũng như tìm hiểu về sự phát triển và xu hướng xuất bản hiện nay. \n\nTham gia vào buổi tọa đàm chuyên môn “Publishing Translated Kidlit: Challenges and Opportunities” (Xuất bản sách dịch cho trẻ em: Cơ hội và thách thức), biên tập viên Lê Mỹ Ái của NXB Kim Đồng cùng hai diễn giả Hendarto Setiadi (Indonesia) và Tung Roh Suan (Singapore) sẽ chia sẻ những thách thức của quy trình mua - bán bản quyền dịch thuật trong việc xuất bản văn học dịch thuật dành cho trẻ em.\n\nMột trong những sự kiện nổi bật trong khuôn khổ chương trình, Nhà xuất bản Kim Đồng giới thiệu đến công chúng tham dự ấn phẩm mới “My Daddy is a Runner” (Ba tớ là Runner). Tại buổi ra mắt này, tác giả Tâm Bùi và họa sĩ Jeet Zdũng sẽ đọc sách và giao lưu với các độc giả nhỏ tuổi của Singapore, giúp các bạn nhỏ quốc tế hiểu thêm về nguồn cảm hứng sáng tác cuốn sách cũng như những bài học cuộc sống mà tác giả đã tìm cách thể hiện trong tác phẩm, về những trăn trở mà các gia đình trẻ ở Việt Nam đang phải đối mặt. “Ba tớ là Runner” là cuốn sách này được lựa chọn xuất bản tại Singapore trong khuôn khổ dự án xuất bản giữa hai nước. Bên cạnh đó, NXB Kim Đồng cũng xuất bản cuốn “Bầu trời nước chanh” (Lemonade Sky) của tác giả nổi tiếng người Singapore - J. H. Low.\n\nTrong chương trình “The Call of the Wild” (Trở về nơi hoang dã), nhóm tác giả Trang Nguyễn và Jeet Zdũng sẽ giao lưu, chia sẻ về hành trình sáng tạo hai cuốn sách tranh về đề tài bảo tồn động vật hoang dã thông qua cách kết hợp kiến thức khoa học với cách kể chuyện lôi cuốn để tạo ra những câu chuyện hấp dẫn thu hút độc giả ở mọi lứa tuổi.          \n\nNXB Kim Đồng cũng mang đến Hội sách hơn 30 đầu sách tiêu biểu cho thiếu nhi, với nhiều thể loại như văn học, tranh truyện dân gian, sách kĩ năng, sách khoa học... để giới thiệu và quảng bá tới bạn bè quốc tế, trong đó có nhiều ấn phẩm đã bán bản quyền xuất bản ở các nước như Hàn Quốc, Trung Quốc, Hà Lan, Anh, Nhật Bản, Đài Loan, Philippines.');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `Id` int(11) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Address` varchar(255) NOT NULL,
  `Phone` varchar(255) NOT NULL,
  `TimeOrder` date NOT NULL DEFAULT current_timestamp(),
  `Status` varchar(50) NOT NULL DEFAULT 'Chưa xác nhận',
  `Description` text DEFAULT NULL,
  `UserId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `orders`
--

INSERT INTO `orders` (`Id`, `Name`, `Address`, `Phone`, `TimeOrder`, `Status`, `Description`, `UserId`) VALUES
(16, 'NMK', '8A Ton that thuyet', '0123213123', '2023-07-21', 'Đã xác nhận', '', 2),
(18, 'Truong', '8A Ton that thuyet', '0123213123', '2023-07-21', 'Giao hàng thành công', '111', 2),
(21, 'Khoi', 'GL-HN', '0989898989', '2023-07-21', 'Chưa xác nhận', '', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `productcomments`
--

CREATE TABLE `productcomments` (
  `Id` int(11) NOT NULL,
  `Date` date NOT NULL DEFAULT current_timestamp(),
  `RatingLevel` int(11) NOT NULL,
  `Description` text DEFAULT NULL,
  `ProductId` int(11) NOT NULL,
  `UserId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `productcomments`
--

INSERT INTO `productcomments` (`Id`, `Date`, `RatingLevel`, `Description`, `ProductId`, `UserId`) VALUES
(12, '2023-07-06', 4, 'Hay', 13, 2),
(13, '2023-07-07', 5, 'Quá hay\r\n', 2, 1),
(14, '2023-07-19', 5, 'Hay', 65, 1),
(15, '2023-07-20', 3, '', 67, 1),
(16, '2023-07-21', 4, 'hay quas', 59, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `productimages`
--

CREATE TABLE `productimages` (
  `Id` int(11) NOT NULL,
  `Link` varchar(255) NOT NULL,
  `ProductId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `productorders`
--

CREATE TABLE `productorders` (
  `Price` int(11) NOT NULL,
  `Quantity` int(11) NOT NULL,
  `ProductId` int(11) NOT NULL,
  `OrderId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `productorders`
--

INSERT INTO `productorders` (`Price`, `Quantity`, `ProductId`, `OrderId`) VALUES
(89000, 2, 67, 16),
(54000, 1, 65, 16),
(690000, 1, 60, 16),
(40000, 2, 1, 18),
(39000, 4, 23, 18),
(69000, 9, 15, 21);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `Id` int(11) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Quantity` int(11) NOT NULL,
  `Price` int(11) NOT NULL,
  `Mass` int(11) DEFAULT NULL,
  `NumberPage` int(11) DEFAULT NULL,
  `Image` varchar(255) NOT NULL,
  `QuantitySold` int(11) NOT NULL DEFAULT 0,
  `Description` text DEFAULT NULL,
  `CategoryId` int(11) NOT NULL,
  `AuthorId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`Id`, `Name`, `Quantity`, `Price`, `Mass`, `NumberPage`, `Image`, `QuantitySold`, `Description`, `CategoryId`, `AuthorId`) VALUES
(1, 'Tủ sách Tuổi thần tiên - Thiên thần Ốc Tiêu', 990, 40000, 600, 198, '11.jpg', 20, 'Sách cho học sinh', 1, 1),
(2, 'Thơ Hồ Xuân Hương', 1200, 45000, 900, 300, '12.jpg', 5, 'Sách cho học sinh', 1, 6),
(10, 'Truyện ngắn Nam Cao', 1000, 47000, 1000, 350, '13.jpg', 1, 'Sách cho học sinh', 1, 7),
(12, 'Những truyện hay viết cho thiếu nhi - Võ Quảng', 1000, 47000, 1000, 350, '14.jpg', 5, 'Sách cho học sinh', 1, 8),
(13, 'Những truyện hay viết cho thiếu nhi - Tô Hoài', 1000, 30000, 250, 100, '15.jpg', 5, '', 1, 9),
(14, 'Những truyện hay viết cho thiếu nhi - Nguyên Hồng', 630, 39000, 405, 250, '16.jpg', 12, 'Sách cho học sinh', 1, 1),
(15, 'Quê nội', 523, 69000, 245, 167, '17.jpg', 9, 'Sách cho học sinh', 1, 6),
(17, 'Tủ sách Tuổi thần tiên ', 44, 99000, 405, 167, '18.jpg', 0, 'Sách cho học sinh', 1, 7),
(18, 'Miền cỏ hát', 432, 200000, 80, 250, '19.jpg', 0, 'Sách cho học sinh', 1, 8),
(20, 'Truyện ngắn Lỗ Tấn', 642, 69000, 500, 250, '21.jpg', 0, 'Sách dành cho mọi người', 2, 1),
(21, 'Thiên Mã', 444, 39000, 245, 245, '22.jpg', 0, 'Sách dành cho mọi người', 2, 6),
(22, 'Những đứa trẻ kỳ diệu - Cậu bé tàng hình', 324, 69000, 80, 250, '23.jpg', 0, 'Sách dành cho mọi người', 2, 7),
(23, 'Ngôi nhà nhỏ trên thảo nguyên - Tập 1 - Giữa đại n', 320, 39000, 122, 245, '24.jpg', 4, 'Sách dành cho mọi người', 2, 8),
(24, 'Những khán giả ngồi trong bóng tối', 638, 39000, 80, 245, '25.jpg', 4, 'Sách dành cho mọi người', 2, 9),
(25, 'Tác giả kinh điển Nhật Bản - Truyện hay cho tuổi h', 532, 69000, 200, 245, '26.jpg', 0, 'Sách dành cho mọi người', 2, 1),
(28, 'Nhật Bản', 44, 69000, 500, 245, '27.jpg', 0, 'Sách dành cho mọi người', 2, 6),
(29, 'hàn Quốc trong tôi', 444, 39000, 245, 245, '28.jpg', 0, 'Sách dành cho mọi người', 2, 7),
(31, 'Tác giả kinh điển của Hàn Quốc', 44, 89000, 122, 245, '29.jpg', 0, 'Sách dành cho mọi người', 2, 8),
(32, 'Cậu bé dòng sông', 642, 39000, 200, 200, '210.jpg', 0, 'Sách dành cho mọi người', 2, 9),
(33, 'Vạn vật thầm thì - Chuyện của nước', 640, 69000, 80, 300, '31.jpg', 2, 'Sách dành cho thiếu nhi', 3, 1),
(34, 'Vạn vật thầm thì - Chuyện của lá', 44, 99000, 405, 329, '32.jpg', 0, 'Sách dành cho thiếu nhi', 3, 6),
(35, 'Vạn vật thầm thì - Chuyện của đá', 642, 69000, 245, 300, '33.jpg', 0, 'Sách dành cho thiếu nhi', 3, 7),
(36, 'Quái vật Sắc màu - Đến trường', 532, 39000, 80, 200, '34.jpg', 0, 'Sách dành cho thiếu nhi', 3, 8),
(38, 'Quái vật Sắc màu', 324, 39000, 200, 300, '35.jpg', 0, 'Sách dành cho thiếu nhi', 3, 9),
(39, 'Tý Quậy - Tập 11', 642, 69000, 405, 250, '36.jpg', 0, 'Sách dành cho thiếu nhi', 3, 1),
(40, 'Tý Quậy - Tập 8', 44, 69000, 245, 167, '37.jpg', 0, 'Sách dành cho thiếu nhi', 3, 6),
(41, 'Tý Quậy - Tập 3', 444, 690000, 122, 245, '38.jpg', 0, 'Sách dành cho thiếu nhi', 3, 7),
(42, 'Tý Quậy - Tập 1', 44, 200000, 80, 329, '39.jpg', 0, 'Sách dành cho thiếu nhi', 3, 8),
(43, 'Những giấc mơ xinh - Ban nhạc diệu kì', 324, 200000, 500, 250, '310.jpg', 0, 'Sách dành cho thiếu nhi', 3, 9),
(44, 'Yêu Trái Đất từ những việc thật gần', 642, 69000, 405, 200, '51.jpg', 0, 'Sách dành cho nghiên cứu', 5, 1),
(46, 'Khí hậu và thời tiết', 44, 99000, 245, 167, '52.jpg', 0, 'Sách dành cho nghiên cứu', 5, 6),
(47, 'Thế giới Robot', 444, 69000, 122, 245, '53.jpg', 0, 'Sách dành cho nghiên cứu', 5, 7),
(48, 'Thế giới diệu kì', 444, 99000, 80, 329, '54.jpg', 0, 'Sách dành cho nghiên cứu', 5, 8),
(49, 'Động vật và thực vật', 642, 69000, 200, 250, '55.jpg', 0, 'Sách dành cho nghiên cứu', 5, 9),
(50, 'Ánh sáng và âm thanh', 642, 39000, 500, 300, '56.jpg', 0, 'Sách dành cho nghiên cứu', 5, 1),
(51, 'Lịch sử thế giới', 532, 39000, 405, 200, '57.jpg', 0, 'Sách dành cho nghiên cứu', 5, 6),
(52, 'Lịch sử châu Á', 324, 39000, 122, 245, '58.jpg', 0, 'Sách dành cho nghiên cứu', 5, 7),
(53, 'Lịch sử châu Mỹ', 532, 69000, 80, 329, '59.jpg', 0, 'Sách dành cho nghiên cứu', 5, 8),
(54, 'Lịch sử châu Âu', 44, 69000, 200, 250, '510.jpg', 0, 'Sách dành cho nghiên cứu', 5, 9),
(55, 'Giải mã 12 chòm sao - Khám phá tất tần tật cung Xử', 44, 69000, 500, 200, '41.jpg', 0, 'Sách dành cho nghiên cứu', 4, 1),
(56, 'Giải mã 12 chòm sao - Khám phá tất tần tật cung Th', 642, 200000, 405, 300, '42.jpg', 0, '', 4, 6),
(59, 'Giải mã', 438, 200000, 245, 167, '43.jpg', 6, 'Sách dành cho nghiên cứu', 4, 7),
(60, 'Giải mã 12 chòm sao - Khám phá tất tần tật cung Sư', 442, 690000, 122, 245, '44.jpg', 2, 'Sách dành cho nghiên cứu', 4, 8),
(61, 'Giải mã 12 chòm sao - Khám phá tất tần tật cung So', 44, 69000, 80, 250, '45.jpg', 0, 'Sách dành cho nghiên cứu', 4, 9),
(63, 'Giải mã bí mật', 532, 39000, 80, 329, '46.jpg', 0, 'Sách dành cho nghiên cứu', 4, 1),
(64, 'Giải mã 12 chòm sao - Khám phá tất tần tật cung Nh', 32, 32000, 200, 200, '47.jpg', 0, 'Sách dành cho nghiên cứu', 4, 6),
(65, 'Giải mã 12 chòm sao - Khám phá tất tần tật cung Ma', 433, 54000, 240, 230, '49.jpg', 1, 'Sách dành cho nghiên cứu', 4, 8),
(66, 'Giải mã 12 chòm sao - Khám phá tất tần tật cung Ki', 53, 32000, 500, 300, '410.jpg', 1, 'Sách dành cho nghiên cứu', 4, 9),
(67, 'Tổng hợp các cung hoàng đạo', 640, 89000, 405, 245, '410.jpg', 2, 'Sách dành cho nghiên cứu', 4, 9);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `Id` int(11) NOT NULL,
  `FirstName` varchar(50) NOT NULL,
  `LastName` varchar(50) NOT NULL,
  `Address` varchar(255) DEFAULT NULL,
  `Email` varchar(255) DEFAULT NULL,
  `Phone` varchar(255) DEFAULT NULL,
  `Username` varchar(255) NOT NULL,
  `Password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`Id`, `FirstName`, `LastName`, `Address`, `Email`, `Phone`, `Username`, `Password`) VALUES
(1, 'Ngô', 'Minh Khôi', 'Hà Nội', 'ngominhkhoi262003@gmail.com', '0336667777', 'user', 'e10adc3949ba59abbe56e057f20f883e'),
(2, 'Vũ', 'Xuân Dự', 'Tôn Thất Thuyết', 'du123@gmail.com', '1234567890', 'user2', 'e10adc3949ba59abbe56e057f20f883e');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`Id`),
  ADD UNIQUE KEY `Username` (`Username`);

--
-- Chỉ mục cho bảng `authors`
--
ALTER TABLE `authors`
  ADD PRIMARY KEY (`Id`),
  ADD UNIQUE KEY `Name` (`Name`),
  ADD UNIQUE KEY `Image` (`Image`);

--
-- Chỉ mục cho bảng `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`Id`);

--
-- Chỉ mục cho bảng `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`Id`),
  ADD UNIQUE KEY `Name` (`Name`);

--
-- Chỉ mục cho bảng `emailsubs`
--
ALTER TABLE `emailsubs`
  ADD PRIMARY KEY (`Id`),
  ADD UNIQUE KEY `Email` (`Email`);

--
-- Chỉ mục cho bảng `eventcomments`
--
ALTER TABLE `eventcomments`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `EventId` (`EventId`),
  ADD KEY `UserId` (`UserId`);

--
-- Chỉ mục cho bảng `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`Id`),
  ADD UNIQUE KEY `Name` (`Name`);

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `UserId` (`UserId`);

--
-- Chỉ mục cho bảng `productcomments`
--
ALTER TABLE `productcomments`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `ProductId` (`ProductId`),
  ADD KEY `UserId` (`UserId`);

--
-- Chỉ mục cho bảng `productimages`
--
ALTER TABLE `productimages`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `ProductId` (`ProductId`);

--
-- Chỉ mục cho bảng `productorders`
--
ALTER TABLE `productorders`
  ADD KEY `OrderId` (`OrderId`),
  ADD KEY `ProductId` (`ProductId`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`Id`),
  ADD UNIQUE KEY `Name` (`Name`),
  ADD KEY `CategoryId` (`CategoryId`),
  ADD KEY `AuthorId` (`AuthorId`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`Id`),
  ADD UNIQUE KEY `Username` (`Username`),
  ADD UNIQUE KEY `Phone` (`Phone`),
  ADD UNIQUE KEY `Email` (`Email`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `admins`
--
ALTER TABLE `admins`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `authors`
--
ALTER TABLE `authors`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `banners`
--
ALTER TABLE `banners`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `emailsubs`
--
ALTER TABLE `emailsubs`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `eventcomments`
--
ALTER TABLE `eventcomments`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT cho bảng `events`
--
ALTER TABLE `events`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT cho bảng `productcomments`
--
ALTER TABLE `productcomments`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT cho bảng `productimages`
--
ALTER TABLE `productimages`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `eventcomments`
--
ALTER TABLE `eventcomments`
  ADD CONSTRAINT `eventcomments_ibfk_1` FOREIGN KEY (`EventId`) REFERENCES `events` (`Id`),
  ADD CONSTRAINT `eventcomments_ibfk_2` FOREIGN KEY (`UserId`) REFERENCES `users` (`Id`);

--
-- Các ràng buộc cho bảng `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`UserId`) REFERENCES `users` (`Id`);

--
-- Các ràng buộc cho bảng `productcomments`
--
ALTER TABLE `productcomments`
  ADD CONSTRAINT `productcomments_ibfk_1` FOREIGN KEY (`ProductId`) REFERENCES `products` (`Id`),
  ADD CONSTRAINT `productcomments_ibfk_2` FOREIGN KEY (`UserId`) REFERENCES `users` (`Id`);

--
-- Các ràng buộc cho bảng `productimages`
--
ALTER TABLE `productimages`
  ADD CONSTRAINT `productimages_ibfk_1` FOREIGN KEY (`ProductId`) REFERENCES `products` (`Id`);

--
-- Các ràng buộc cho bảng `productorders`
--
ALTER TABLE `productorders`
  ADD CONSTRAINT `productorders_ibfk_1` FOREIGN KEY (`OrderId`) REFERENCES `orders` (`Id`),
  ADD CONSTRAINT `productorders_ibfk_2` FOREIGN KEY (`ProductId`) REFERENCES `products` (`Id`);

--
-- Các ràng buộc cho bảng `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`CategoryId`) REFERENCES `categories` (`Id`),
  ADD CONSTRAINT `products_ibfk_2` FOREIGN KEY (`AuthorId`) REFERENCES `authors` (`Id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
