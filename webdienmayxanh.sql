-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th12 23, 2017 lúc 06:34 SA
-- Phiên bản máy phục vụ: 5.7.14
-- Phiên bản PHP: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `webdienmay`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admin`
--

CREATE TABLE `admin` (
  `maad` int(10) NOT NULL,
  `taikhoan` varchar(50) NOT NULL,
  `matkhau` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `admin`
--

INSERT INTO `admin` (`maad`, `taikhoan`, `matkhau`) VALUES
(1, 'nhan', '123456');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chitietdonhang`
--

CREATE TABLE `chitietdonhang` (
  `madh` int(10) NOT NULL,
  `masp` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chitiethoadon`
--

CREATE TABLE `chitiethoadon` (
  `masp` int(10) NOT NULL,
  `mahd` int(10) NOT NULL,
  `soluong` int(255) NOT NULL,
  `dongia` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `donhang`
--

CREATE TABLE `donhang` (
  `madh` int(10) NOT NULL,
  `makh` int(10) NOT NULL,
  `ngaydathang` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hoadon`
--

CREATE TABLE `hoadon` (
  `mahd` int(10) NOT NULL,
  `madh` int(10) NOT NULL,
  `ngaylaphd` datetime(6) NOT NULL,
  `ngaynhanhang` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `khachhang`
--

CREATE TABLE `khachhang` (
  `makh` int(10) NOT NULL,
  `tenkh` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `pass` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `khachhang`
--

INSERT INTO `khachhang` (`makh`, `tenkh`, `email`, `pass`) VALUES
(17, 'guest', 'demonzenki251@gmail.com', '123456'),
(18, 'htnhan', 'zenki.grimm@gmail.com', '123456');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `loaisp`
--

CREATE TABLE `loaisp` (
  `maloai` int(10) NOT NULL,
  `tenloai` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `loaisp`
--

INSERT INTO `loaisp` (`maloai`, `tenloai`) VALUES
(1, 'Tủ lạnh'),
(2, 'Tivi'),
(3, 'Máy lạnh'),
(4, 'Máy giặt');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nhasx`
--

CREATE TABLE `nhasx` (
  `manhasx` int(10) NOT NULL,
  `tenhang` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `nhasx`
--

INSERT INTO `nhasx` (`manhasx`, `tenhang`) VALUES
(1, 'HITACHI'),
(2, 'LG'),
(3, 'PANASONIC'),
(4, 'SAMSUNG'),
(5, 'SHARP'),
(6, 'TOSHIBA'),
(7, 'DAIKIN'),
(8, 'TCL'),
(9, 'SONY');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sanpham`
--

CREATE TABLE `sanpham` (
  `masp` int(10) NOT NULL,
  `tensp` varchar(50) NOT NULL,
  `dongia` varchar(20) NOT NULL,
  `manhasx` int(10) NOT NULL,
  `soluong` int(255) NOT NULL,
  `trangthai` varchar(10) NOT NULL,
  `maloai` int(10) NOT NULL,
  `hinh` varchar(50) NOT NULL,
  `noidung` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='sanpham';

--
-- Đang đổ dữ liệu cho bảng `sanpham`
--

INSERT INTO `sanpham` (`masp`, `tensp`, `dongia`, `manhasx`, `soluong`, `trangthai`, `maloai`, `hinh`, `noidung`) VALUES
(106, 'Máy giặt sấy Hitachi 10.5 kg BD-S5500', '59.900.000', 1, 10, '0', 4, 'mghitachis5500.png', 'Loại máy giặt:Máy giặt sấy cửa trước, Lồng ngang\r\nSố người sử dụng:Từ trên 6 người (Trên 8.5 kg)\r\nTốc độ quay vắt:1875 vòng/phút\r\nLượng nước tiêu thụ chuẩn:Khoảng 103 lít một lần giặt thường\r\nKiểu động cơ:Truyền động dây Curoa\r\nInverter:Có\r\nChương trình hoạt động:8 chương trình\r\nCông nghệ giặt:Công nghệ Beat Wave Wash, Cảm biến ECO 3 bước, Sấy khô bằng nhiệt tái sinh – Heat Recycle\r\nNơi sản xuất:Nhật Bản'),
(107, 'Máy giặt Hitachi 8kg SF-80XA 220-VT', '5.900.000', 1, 20, '0', 4, 'may-giat-hitachi-sf-80xa-220-vt-wh-1-190x190.png', 'Loại máy giặt:Cửa trên, Lồng đứng\r\nSố người sử dụng:4 - 5 người (7.5 - 8.5 kg)\r\nTốc độ quay vắt:600 vòng/phút\r\nLượng nước tiêu thụ chuẩn:Khoảng 104 lít một lần giặt thường\r\nHiệu suất sử dụng điện11.7 Wh/kg\r\nKiểu động cơ:Truyền động dây Curoa\r\nChương trình hoạt động:11 Chương trình\r\nCông nghệ giặt:Công nghệ Beat Wave Wash, Giặt thẩm thấu 4 bước\r\nNơi sản xuất:Thái Lan'),
(108, 'Máy giặt Hitachi Inverter 10 kg SF-100XAV 220-VT', '9.300.000', 1, 10, '0', 4, 'may-giat-hitachi-sf-100xav-2-190x190.png', 'Loại máy giặt:Cửa trên, Lồng đứng\r\nSố người sử dụng:Từ trên 6 người (Trên 8.5 kg)\r\nTốc độ quay vắt:700 vòng/phút\r\nLượng nước tiêu thụ chuẩn:Khoảng 166 lít một lần giặt thường\r\nHiệu suất sử dụng điện11.2 Wh/kg\r\nKiểu động cơ:Truyền động dây Curoa\r\nInverter:Có\r\nChương trình hoạt động:9 chương trình\r\nCông nghệ giặt:Giặt thẩm thấu 4 bước, Dynamic-Stream Wash\r\nNơi sản xuất:Thái Lan'),
(109, 'Máy giặt Hitachi 10kg SF-100XA 220-VT', '7.850.000', 1, 10, '0', 4, 'may-giat-hitachi-sf-110xa-3-190x190.png', 'Loại máy giặt:Cửa trên, Lồng đứng\r\nSố người sử dụng:Từ trên 6 người (Trên 8.5 kg)\r\nTốc độ quay vắt:700 vòng/phút\r\nLượng nước tiêu thụ chuẩn:Khoảng 166 lít một lần giặt thường\r\nHiệu suất sử dụng điện10.6 Wh/kg\r\nKiểu động cơ:Truyền động dây Curoa\r\nChương trình hoạt động:9 chương trình\r\nCông nghệ giặt:Giặt thẩm thấu 4 bước, Dynamic-Stream Wash\r\nNơi sản xuất:Thái Lan'),
(110, 'Máy giặt Hitachi Inverter 12kg SF-120XAV 220-VT', '11.300.000', 1, 20, '0', 4, 'may-giat-hitachi-sf-120-xav-1-190x190.png', 'Loại máy giặt:Cửa trên, Lồng đứng\r\nSố người sử dụng:Từ trên 6 người (Trên 8.5 kg)\r\nTốc độ quay vắt:750 vòng/phút\r\nLượng nước tiêu thụ chuẩn:Khoảng 166 lít một lần giặt thường\r\nHiệu suất sử dụng điện9.2 Wh/kg\r\nKiểu động cơ:Truyền động dây Curoa\r\nInverter:Có\r\nChương trình hoạt động:9 chương trình\r\nCông nghệ giặt:Giặt thẩm thấu 4 bước, Dynamic-Stream Wash, Cảm biến ECO 3 bước\r\nNơi sản xuất:Thái Lan'),
(111, 'Máy giặt Hitachi inverter 14kg SF-140XAV 220-VT', '13.700.000', 1, 10, '0', 4, 'may-giat-hitachi-sf-140xav-220-vt-sl-1-190x190.png', 'Loại máy giặt:Cửa trên, Lồng đứng\nSố người sử dụng:Từ trên 6 người (Trên 8.5 kg)\nTốc độ quay vắt:750 vòng/phút\nLượng nước tiêu thụ chuẩn:Khoảng 178 lít một lần giặt thường\nHiệu suất sử dụng điện9.2 Wh/kg\nKiểu động cơ:Truyền động dây Curoa\nInverter:Có\nChương trình hoạt động:9 chương trình\nCông nghệ giặt:Giặt thẩm thấu 4 bước, Dynamic-Stream Wash, Cảm biến ECO 3 bước\nNơi sản xuất:Thái Lan'),
(112, 'Máy giặt LG Inverter 8 kg FC1408S3E', '11.790.000', 2, 10, '0', 4, 'may-giat-lg-fc1408s3e-1-190x190.png', 'Loại máy giặt:Cửa trước, Lồng ngang\r\nSố người sử dụng:4 - 5 người (7.5 - 8.5 kg)\r\nTốc độ quay vắt:1400 vòng/phút\r\nHiệu suất sử dụng điện23.2 Wh/kg\r\nKiểu động cơ:Truyền động trực tiếp bền & êm\r\nInverter:Có\r\nChương trình hoạt động:14 Chương trình (có giặt nhanh, giặt tiết kiệm, giặt đồ len...)\r\nCông nghệ giặt:Giặt 6 chuyển động, Công nghệ hơi nước Spa steam diệt tới 99,9% tác nhân dị ứng\r\nNơi sản xuất:Việt Nam'),
(113, 'Máy giặt LG inverter 8kg FC1408S4W2', '10.490.000', 2, 10, '0', 4, 'may-giat-lg-fc1409s2w-190x190.png', 'Loại máy giặt:Cửa trước, Lồng ngang\r\nSố người sử dụng:4 - 5 người (7.5 - 8.5 kg)\r\nTốc độ quay vắt:1400 vòng/phút\r\nHiệu suất sử dụng điện23.2 Wh/kg\r\nKiểu động cơ:Truyền động trực tiếp bền & êm\r\nInverter:Có\r\nChương trình hoạt động:14 Chương trình (có giặt nhanh, giặt tiết kiệm, giặt đồ len...)\r\nCông nghệ giặt:Giặt 6 chuyển động, Công nghệ hơi nước Spa steam diệt tới 99,9% tác nhân dị ứng\r\nNơi sản xuất:Việt Nam'),
(114, 'Máy giặt LG Inverter 9kg FC1409S2W', '12.990.000', 2, 10, '0', 4, 'may-giat-lg-fc1409s2w-190x190.png', 'Loại máy giặt:Cửa trước, Lồng ngang\r\nSố người sử dụng:Từ trên 6 người (Trên 8.5 kg)\r\nTốc độ quay vắt:1400 vòng/phút\r\nHiệu suất sử dụng điện21.1 Wh/kg\r\nKiểu động cơ:Truyền động trực tiếp bền & êm\r\nInverter:Có\r\nChương trình hoạt động:14 Chương trình (có giặt nhanh, giặt tiết kiệm, giặt đồ len...)\r\nCông nghệ giặt:Công nghệ giặt tiết kiệm TurboWash, Giặt 6 chuyển động, Công nghệ hơi nước True steam diệt tác nhân dị ứng\r\nNơi sản xuất:Việt Nam'),
(115, 'Máy giặt LG 8.5kg T2385VSPM', '6.190.000', 2, 10, '0', 4, 'may-giat-lg-t2385vspm-1-1-190x190.png', 'Loại máy giặt:Cửa trên, Lồng đứng\r\nSố người sử dụng:4 - 5 người (7.5 - 8.5 kg)\r\nTốc độ quay vắt:700 vòng/phút\r\nKiểu động cơ:Truyền động dây Curoa\r\nInverter:Có\r\nChương trình hoạt động:8 chương trình\r\nCông nghệ giặt:Đấm nước Punch+3, Lồng giặt Turbo drum\r\nNơi sản xuất:Việt Nam\r\n'),
(116, 'Máy giặt LG Inverter 9.5kg T2395VSPM', '6.990.000', 2, 10, '0', 4, 'may-giat-lg-t2395vspm--190x190.png', 'Loại máy giặt:Cửa trên, Lồng đứng\r\nSố người sử dụng:Từ trên 6 người (Trên 8.5 kg)\r\nTốc độ quay vắt:700 vòng/phút\r\nHiệu suất sử dụng điện7.5 Wh/kg\r\nKiểu động cơ:Truyền động dây Curoa\r\nInverter:Có\r\nChương trình hoạt động:8 chương trình\r\nCông nghệ giặt:Đấm nước Punch+3, Lồng giặt Turbo drum\r\nNơi sản xuất:Việt Nam'),
(117, 'Máy giặt Panasonic 11.5kg NA-F115A5WRV', '9.090.000', 3, 10, '0', 4, 'maygiatpanasonic-115-kg-na-f115a5wrv-190x190.png', 'Loại máy giặt:Cửa trên, Lồng đứng\r\nSố người sử dụng:Từ trên 6 người (Trên 8.5 kg)\r\nTốc độ quay vắt:660 vòng/phút\r\nLượng nước tiêu thụ chuẩn:Khoảng 187 lít một lần giặt thường\r\nHiệu suất sử dụng điện9.2 Wh/kg\r\nKiểu động cơ:Truyền động dây Curoa\r\nChương trình hoạt động:8 chương trình\r\nCông nghệ giặt:Công nghệ giặt StainMaster, Hệ thống ActiveFoam\r\nNơi sản xuất:Thái Lan'),
(118, 'Máy giặt Panasonic 8.5kg NA-F85A4HRV', '5.690.000', 3, 10, '0', 4, 'may-giat-panasonic-na-f85a4hrv-1-190x190.png', 'Loại máy giặt:Cửa trên, Lồng đứng\r\nSố người sử dụng:4 - 5 người (7.5 - 8.5 kg)\r\nTốc độ quay vắt:700 vòng/phút\r\nLượng nước tiêu thụ chuẩn:Khoảng 184 lít một lần giặt thường\r\nHiệu suất sử dụng điện6.9 Wh/kg\r\nKiểu động cơ:Truyền động dây Curoa\r\nChương trình hoạt động:8 chương trình (có giặt nhanh, giặt ngâm, giặt chăn mền...)\r\nCông nghệ giặt:Công nghệ xả nước Aqua Spin Rinse, Lồng giặt SAZANAMI, Luồng nước Dancing, Hệ thống ActiveFoam\r\nNơi sản xuất:Việt Nam'),
(119, 'Máy giặt Panasonic 8.5kg NA-F85A4GRV', '5.790.000', 3, 10, '0', 4, 'may-giat-panasonic-na-f85a4grv-1-190x190.png', 'Loại máy giặt:Cửa trên, Lồng đứng\r\nSố người sử dụng:4 - 5 người (7.5 - 8.5 kg)\r\nTốc độ quay vắt:700 vòng/phút\r\nLượng nước tiêu thụ chuẩn:Khoảng 184 lít một lần giặt thường\r\nKiểu động cơ:Truyền động dây Curoa\r\nChương trình hoạt động:8 chương trình (có giặt nhanh, giặt ngâm, giặt chăn mền...)\r\nCông nghệ giặt:Công nghệ xả nước Aqua Spin Rinse, Lồng giặt SAZANAMI, Luồng nước Dancing\r\nNơi sản xuất:Việt Nam'),
(120, 'Máy giặt Panasonic 10kg NA-F100V5LRV', '8.890.000', 3, 10, '0', 4, 'may-giat-panasonic-na-f100v5lrv-190x190.png', 'Loại máy giặt:Cửa trên, Lồng đứng\r\nSố người sử dụng:Từ trên 6 người (Trên 8.5 kg)\r\nTốc độ quay vắt:700 vòng/phút\r\nLượng nước tiêu thụ chuẩn:Khoảng 191 lít một lần giặt thường\r\nHiệu suất sử dụng điện6.9 Wh/kg\r\nKiểu động cơ:Truyền động dây Curoa\r\nChương trình hoạt động:8 Chương trình (có giặt nhanh, giặt mạnh, giặt chăn mền...)\r\nCông nghệ giặt:Lồng giặt SAZANAMI, Hệ thống ActiveFoam, Giặt nước nóng StainMaster+, Cảm biến Econavi\r\nNơi sản xuất:Việt Nam'),
(121, 'Máy giặt Toshiba 8.2kg AW-MF920LV ', '5.690.000', 6, 10, '0', 4, 'may-giat-toshiba-aw-mf920lv-wk-daidien-190x190.png', 'Loại máy giặt:Cửa trên, Lồng đứng\r\nSố người sử dụng:4 - 5 người (7.5 - 8.5 kg)\r\nTốc độ quay vắt:700 vòng/phút\r\nLượng nước tiêu thụ chuẩn:Khoảng 125 lít một lần giặt thường\r\nHiệu suất sử dụng điện10.8 Wh/kg\r\nKiểu động cơ:Truyền động dây Curoa\r\nChương trình hoạt động:6 chương trình (có giặt nhanh, giặt ngâm, giặt mạnh...)\r\nCông nghệ giặt:Mâm giặt Mega Power Wash, Tính năng lưu giữ hương thơm Fragrance Course, Giặt cô đặc bằng bọt khí, Lồng giặt Magic Drum\r\nNơi sản xuất:Thái Lan'),
(122, 'Máy giặt Toshiba 10.5 kg G1150GV', '7.390.000', 6, 10, '0', 4, 'may-giat-toshiba-g1150gv-wk-1-190x190.png', 'Loại máy giặt:Cửa trên, Lồng đứng\r\nSố người sử dụng:Từ trên 6 người (Trên 8.5 kg)\r\nTốc độ quay vắt:700 vòng/phút\r\nLượng nước tiêu thụ chuẩn:Khoảng 158 lít một lần giặt thường\r\nHiệu suất sử dụng điện11.4 Wh/kg\r\nKiểu động cơ:Truyền động dây Curoa\r\nChương trình hoạt động:7 Chương trình (có giặt nhanh, chế độ giặt -Xả với hương thơm...)\r\nCông nghệ giặt:Lồng giặt ngôi sao pha lê, Giặt cô đặc bằng bọt khí, Hiệu ứng thác nước đôi, Mâm giặt Mega Power mạnh mẽ\r\nNơi sản xuất:Thái Lan'),
(123, 'Máy giặt Panasonic 9kg NA-F90V5LMX', '7.790.000', 3, 10, '0', 4, 'panasonic-na-f90v5lmx-190x190.png', 'Loại máy giặt:Cửa trên, Lồng đứng\r\nSố người sử dụng:Từ trên 6 người (Trên 8.5 kg)\r\nTốc độ quay vắt:700 vòng/phút\r\nLượng nước tiêu thụ chuẩn:Khoảng 186 lít một lần giặt thường\r\nHiệu suất sử dụng điện8.1 Wh/kg\r\nKiểu động cơ:Truyền động dây Curoa\r\nChương trình hoạt động:8 Chương trình (có giặt nhanh, giặt mạnh, giặt chăn mền...)\r\nCông nghệ giặt:Mâm giặt Active Wave, Hệ thống ActiveFoam, Cảm biến Econavi, Giặt nước nóng StainMaster+\r\nNơi sản xuất:Việt Nam'),
(124, 'Máy giặt sấy Samsung 21kg  FlexWash WR24M9960KV/SV', '47.990.000', 4, 10, '0', 4, 'samsung-flexwash-wr24m9960kv-190x190.png', 'Loại máy giặt:Cửa trước 2 lồng giặt, 1 lồng ngang kết hợp 1 lồng đứng\r\nSố người sử dụng:Từ trên 6 người (Trên 8.5 kg)\r\nTốc độ quay vắt:1100 vòng/phút\r\nKiểu động cơ:Truyền động trực tiếp bền & êm\r\nInverter:Có\r\nChương trình hoạt động:13 chương trình\r\nCông nghệ giặt:Lồng giặt thiết kế kim cương thế hệ 2, Công nghệ giặt bong bóng Eco Bubble\r\nNơi sản xuất:Việt Nam'),
(125, 'Máy giặt Samsung Inverter 10.5kg WW10K6410QX/SV', '15.990.000', 4, 10, '0', 4, 'samsung-ww10k6410qx-sv-190x190.png', 'Loại máy giặt:Cửa trước, Lồng ngang\r\nSố người sử dụng:Từ trên 6 người (Trên 8.5 kg)\r\nTốc độ quay vắt:1400 vòng/phút\r\nKiểu động cơ:Truyền động dây Curoa\r\nInverter:Có\r\nChương trình hoạt động:14 Chương trình\r\nCông nghệ giặt:Lồng giặt thiết kế kim cương thế hệ 2, Công nghệ giặt bong bóng Eco Bubble\r\nNơi sản xuất:Việt Nam'),
(126, 'Máy giặt Samsung  Inverter 7.5kg WW75K5210YW/SV', '9.490.000', 4, 10, '0', 4, 'samsung-ww75k5210yw-sv-190x190.png', 'Loại máy giặt:Cửa trước, Lồng ngang\r\nSố người sử dụng:Dưới 4 người (Dưới 7.5 kg)\r\nTốc độ quay vắt:1200 vòng/phút\r\nHiệu suất sử dụng điện30.4 Wh/kg\r\nKiểu động cơ:Truyền động dây Curoa\r\nInverter:Có\r\nChương trình hoạt động:14 Chương trình (có giặt nhanh, giặt tiết kiệm, giặt đồ len...)\r\nCông nghệ giặt:Lồng giặt thiết kế kim cương, Công nghệ giặt bong bóng Eco Bubble\r\nNơi sản xuất:Việt Nam'),
(127, 'Máy giặt Samsung 8kg WW80K5410WW', '10.990.000', 4, 10, '0', 4, 'samsung-ww80k5233yw-sv-190x190.png', 'Loại máy giặt:Cửa trước, Lồng ngang\r\nSố người sử dụng:4 - 5 người (7.5 - 8.5 kg)\r\nTốc độ quay vắt:1400 vòng/phút\r\nHiệu suất sử dụng điện43.5 Wh/kg\r\nKiểu động cơ:Truyền động dây Curoa\r\nInverter:Có\r\nChương trình hoạt động:14 Chương trình (có giặt nhanh, giặt tiết kiệm, giặt đồ len...)\r\nCông nghệ giặt:Lồng giặt thiết kế kim cương, Công nghệ giặt bong bóng Eco Bubble\r\nNơi sản xuất:Việt Nam'),
(128, 'Máy giặt Toshiba 9kg AW-G1000GV WG', '6.290.000', 6, 10, '0', 4, 'toshiba-aw-g1000gv-wg-190x190.png', 'Loại máy giặt:Cửa trên, Lồng đứng\r\nSố người sử dụng:Từ trên 6 người (Trên 8.5 kg)\r\nTốc độ quay vắt:700 vòng/phút\r\nLượng nước tiêu thụ chuẩn:Khoảng 161 lít một lần giặt thường\r\nKiểu động cơ:Truyền động dây Curoa\r\nChương trình hoạt động:7 Chương trình (có giặt nhanh, chế độ giặt -Xả với hương thơm...)\r\nCông nghệ giặt:Lồng giặt ngôi sao pha lê, Giặt cô đặc bằng bọt khí, Hiệu ứng thác nước đôi, Mâm giặt Hybrid powerful, Tính năng lưu giữ hương thơm\r\nNơi sản xuất:Thái Lan'),
(129, 'Máy giặt Toshiba 10kg AW-G1100GV WB', '6.990.000', 6, 10, '0', 4, 'toshiba-aw-g1100gv-wb-190x190.png', 'Loại máy giặt:Cửa trên, Lồng đứng\r\nSố người sử dụng:Từ trên 6 người (Trên 8.5 kg)\r\nTốc độ quay vắt:700 vòng/phút\r\nLượng nước tiêu thụ chuẩn:Khoảng 165 lít một lần giặt thường\r\nHiệu suất sử dụng điện11.1 Wh/kg\r\nKiểu động cơ:Truyền động dây Curoa\r\nChương trình hoạt động:7 Chương trình (có giặt nhanh, chế độ giặt -Xả với hương thơm...)\r\nCông nghệ giặt:Lồng giặt ngôi sao pha lê, Giặt cô đặc bằng bọt khí, Hiệu ứng thác nước đôi, Mâm giặt Hybrid powerful, Tính năng lưu giữ hương thơm\r\nNơi sản xuất:Thái Lan'),
(130, 'Máy giặt LG F2721HTTV', '47.690.000', 2, 10, '0', 4, 'twin-wash-lg-2721httv-t2735nwlv-190x190.png', 'Loại máy giặt:Cửa trước 2 lồng giặt, Lồng ngang\r\nSố người sử dụng:Từ trên 6 người (Trên 8.5 kg)\r\nTốc độ quay vắt:1000 vòng/phút\r\nKiểu động cơ:Truyền động trực tiếp bền & êm\r\nInverter:Có\r\nChương trình hoạt động:Máy chính 14 chương trình, máy phụ 6 chương trình\r\nCông nghệ giặt:Công nghệ giặt tiết kiệm TurboWash, Cảm biến I-sensor, Giặt 6 chuyển động\r\nNơi sản xuất:Hàn Quốc'),
(131, 'Máy lạnh Daikin Inverter 2 HP ', '20.990.000', 7, 10, '0', 3, 'daikin-2-hp-ftkc50rvmv-1-1-230x65.jpg', 'Công suất lạnh:2 HP - 17.700 BTU\r\nLoại máy:Điều hoà 1 chiều (chỉ làm lạnh)\r\nPhạm vi làm lạnh hiệu quả:Từ 20 - 30 m2 (từ 60 đến 80 m3)\r\nCông nghệ inverter:Máy lạnh Inverter\r\nTiện ích:Làm lạnh nhanh tức thì, Tự khởi động lại khi có điện, Chức năng tự chuẩn đoán lỗi, Hẹn giờ bật tắt máy\r\nChế độ tiết kiệm điệnEcono tiết kiệm điện\r\nCông nghệ kháng khuẩn khử mùi:Phin lọc khử mùi xúc tác quang Apatit Titan\r\nLàm lạnh nhanh:Có\r\nNơi lắp ráp:Thái Lan'),
(132, 'Máy lạnh Daikin 1.5 HP FTNE35MV1V9', '10.590.000', 7, 10, '0', 3, 'daikin-ftne35mv1v9-2-230x65.jpg', 'Công suất lạnh:1.5 HP - 11.100 BTU\r\nLoại máy:Điều hoà 1 chiều (chỉ làm lạnh)\r\nPhạm vi làm lạnh hiệu quả:Từ 15 - 20 m2 (từ 40 đến 60 m3)\r\nCông nghệ inverter:Máy lạnh không inverter\r\nCông suất tiêu thụ điện trung bình:1.1 kW/h\r\nNhãn năng lượng tiết kiệm điện:3 sao (Hiệu suất năng lượng 3.05)\r\nTiện ích:Tự khởi động lại khi có điện, Hẹn giờ bật tắt máy, Chế độ làm khô, Có tự điều chỉnh nhiệt độ (chế độ ngủ đêm)\r\nNơi lắp ráp:Thái Lan\r\n'),
(133, 'Máy lạnh Daikin 2.5 HP FTNE60MV1V', '22.490.000', 7, 10, '0', 3, 'daikin-ftne60mv1v-230x65.jpg', 'Công suất lạnh:2.5 HP - 21.500 BTU\r\nLoại máy:Điều hoà 1 chiều (chỉ làm lạnh)\r\nPhạm vi làm lạnh hiệu quả:Từ 30 - 40 m2 (từ 80 đến 120 m3)\r\nCông nghệ inverter:Máy lạnh không inverter\r\nCông suất tiêu thụ điện trung bình:2 kW/h\r\nNhãn năng lượng tiết kiệm điện:3 sao (Hiệu suất năng lượng 3.10)\r\nTiện ích:Làm lạnh nhanh tức thì, Tự khởi động lại khi có điện, Chức năng tự chuẩn đoán lỗi, Hẹn giờ bật tắt máy, Chế độ làm khô, Có tự điều chỉnh nhiệt độ (chế độ ngủ đêm)\r\nLàm lạnh nhanh:Có\r\nNơi lắp ráp:Thái Lan'),
(134, 'Máy lạnh LG Inverter 1HP V10APR', '10.190.000', 2, 10, '0', 3, 'dieu-hoa-lg-v10apr-230x65.png', 'Công suất lạnh:1 HP - 9.200 BTU\r\nLoại máy:Điều hoà 1 chiều (chỉ làm lạnh)\r\nPhạm vi làm lạnh hiệu quả:Dưới 15 m2 (từ 30 đến 45 m3)\r\nCông nghệ inverter:Máy lạnh Inverter\r\nCông suất tiêu thụ điện trung bình:0.81 kW/h\r\nNhãn năng lượng tiết kiệm điện:5 sao (Hiệu suất năng lượng 4.61)\r\nTiện ích:Làm lạnh nhanh tức thì, Hẹn giờ bật tắt máy, Làm lạnh không khô, Chế độ vận hành khi ngủ, Hoạt động siêu êm, Có chức năng đuổi muỗi, Chức năng tự làm sạch\r\nChế độ tiết kiệm điệnNút WATT Option - Điều chỉnh 4 mức điện năng tiêu thụ\r\nCông nghệ kháng khuẩn khử mùi:Tấm lọc kép kháng khuẩn, Tấm vi lọc bụi\r\nLàm lạnh nhanh:Có\r\nNơi lắp ráp:Thái Lan'),
(135, 'Máy lạnh LG Inverter 1.5 HP V13APR', '12.490.000', 2, 10, '0', 3, 'dieu-hoa-lg-v13apr-230x65.png', 'Công suất lạnh:1.5 HP - 12.000 BTU\r\nLoại máy:Điều hoà 1 chiều (chỉ làm lạnh)\r\nPhạm vi làm lạnh hiệu quả:Từ 15 - 20 m2 (từ 40 đến 60 m3)\r\nCông nghệ inverter:Máy lạnh Inverter\r\nCông suất tiêu thụ điện trung bình:1.03 kW/h\r\nNhãn năng lượng tiết kiệm điện:5 sao (Hiệu suất năng lượng 5.22)\r\nTiện ích:Làm lạnh nhanh tức thì, Hẹn giờ bật tắt máy, Làm lạnh không khô, Chế độ vận hành khi ngủ, Hoạt động siêu êm, Kiểm soát năng lượng chủ động 4 mức, Có chức năng đuổi muỗi, Chức năng tự làm sạch\r\nChế độ tiết kiệm điệnNút WATT Option - Điều chỉnh 4 mức điện năng tiêu thụ\r\nCông nghệ kháng khuẩn khử mùi:Tấm lọc kép kháng khuẩn\r\nLàm lạnh nhanh:Có\r\nNơi lắp ráp:Thái Lan'),
(136, 'Máy lạnh Panasonic 1.0 HP CU/CS-N9SKH-8', '8.490.000', 3, 10, '0', 3, 'dieu-hoa-panasonic-cu-cs-n9skh-8-230x65.png', 'Công suất lạnh:1 HP - 9.040 BTU\r\nLoại máy:Điều hoà 1 chiều (chỉ làm lạnh)\r\nPhạm vi làm lạnh hiệu quả:Dưới 15 m2 (từ 30 đến 45 m3)\r\nCông nghệ inverter:Máy lạnh không inverter\r\nCông suất tiêu thụ điện trung bình:0.76 kW/h\r\nNhãn năng lượng tiết kiệm điện:2 sao (Hiệu suất năng lượng 3.5)\r\nTiện ích:Hẹn giờ bật tắt máy, Chức năng hút ẩm, Chế độ vận hành khi ngủ, Hoạt động siêu êm\r\nCông nghệ kháng khuẩn khử mùi:Kháng khuẩn khử mùi Nanoe-G\r\nLàm lạnh nhanh:Chế độ iAuto\r\nNơi lắp ráp:Malaysia'),
(137, 'Máy lạnh Samsung Inverter 1.5 HP ', '11.490.000', 4, 10, '0', 3, 'dieu-hoa-samsung-ar13mvfsbwknsv.png', 'Công suất lạnh:1.5 HP - 12.000 BTU\r\nLoại máy:Điều hoà 1 chiều (chỉ làm lạnh)\r\nPhạm vi làm lạnh hiệu quả:Từ 15 - 20 m2 (từ 40 đến 60 m3)\r\nCông nghệ inverter:Máy lạnh Inverter\r\nCông suất tiêu thụ điện trung bình:1.2 kW/h\r\nNhãn năng lượng tiết kiệm điện:5 sao (Hiệu suất năng lượng 4.42)\r\nTiện ích:Chế độ Good Sleep, Bộ 3 bảo vệ tăng cường, Làm lạnh nhanh tức thì, Tự khởi động lại khi có điện, Hẹn giờ bật tắt máy, Chế độ vận hành khi ngủ\r\nChế độ tiết kiệm điệnChế độ 1 người tiết kiệm điện\r\nCông nghệ kháng khuẩn khử mùi:Tấm lọc kháng khuẩn\r\nLàm lạnh nhanh:Có\r\nNơi lắp ráp:Thái Lan'),
(138, 'Máy lạnh Toshiba Inverter 1.5HP RAS-H13PKCVG-V', '13.690.000', 6, 10, '0', 3, 'dieu-hoa-toshiba-ras-h13pkcvg-v-230x65.png', 'Công suất lạnh:1.5 HP - 12.200 BTU\r\nLoại máy:Điều hoà 1 chiều (chỉ làm lạnh)\r\nPhạm vi làm lạnh hiệu quả:Từ 15 - 20 m2 (từ 40 đến 60 m3)\r\nCông nghệ inverter:Máy lạnh Inverter\r\nCông suất tiêu thụ điện trung bình:1.26 kW/h\r\nNhãn năng lượng tiết kiệm điện:5 sao (Hiệu suất năng lượng 5.58)\r\nTiện ích:Làm lạnh nhanh tức thì, Tự khởi động lại khi có điện, Hẹn giờ bật tắt máy, Chế độ vận hành khi ngủ, Hoạt động siêu êm, Chức năng tự làm sạch\r\nChế độ tiết kiệm điệnPAM Control tiết kiệm điện\r\nCông nghệ kháng khuẩn khử mùi:Bộ lọc Toshiba IAQ, Công nghệ chống bám bẩn Magic coil\r\nLàm lạnh nhanh:Có\r\nNơi lắp ráp:Thái Lan'),
(139, 'Điều hòa 2 chiều LG Inverter 1HP B10ENC', '10.890.000', 2, 10, '0', 3, 'lg-b10enc-230x65.jpg', 'Công suất lạnh:1 HP - 9.000 BTU\r\nLoại máy:Điều hoà 2 chiều (có sưởi ấm)\r\nPhạm vi làm lạnh hiệu quả:Dưới 15 m2 (từ 30 đến 45 m3)\r\nCông nghệ inverter:Máy lạnh Inverter\r\nCông suất tiêu thụ điện trung bình:0.86 kW/h\r\nNhãn năng lượng tiết kiệm điện:5 sao (Hiệu suất năng lượng 4.42)\r\nTiện ích:Có sưởi ấm (điều hòa 2 chiều)\r\nChế độ tiết kiệm điệnNút WATT Option - Điều chỉnh 4 mức điện năng tiêu thụ\r\nCông nghệ kháng khuẩn khử mùi:Tấm lọc kép kháng khuẩn\r\nLàm lạnh nhanh:Chế độ Jet Cool\r\nNơi lắp ráp:Thái Lan'),
(140, 'Máy lạnh Daikin Inverter 1HP FTKC25RVMV', '11.090.000', 7, 10, '0', 3, 'maylanhdaikin-1-hp-ftkc25rvmv1-230x65.png', 'Công suất lạnh:1 HP - 8.500 BTU\r\nLoại máy:Điều hoà 1 chiều (chỉ làm lạnh)\r\nPhạm vi làm lạnh hiệu quả:Dưới 15 m2 (từ 30 đến 45 m3)\r\nCông nghệ inverter:Máy lạnh Inverter\r\nCông suất tiêu thụ điện trung bình:0.68 kW/h\r\nNhãn năng lượng tiết kiệm điện:5 sao (Hiệu suất năng lượng 5.35)\r\nTiện ích:Làm lạnh nhanh tức thì, Tự khởi động lại khi có điện, Chức năng tự chuẩn đoán lỗi, Hẹn giờ bật tắt máy, Chức năng hút ẩm, Intelligent Eye cảm biến chuyển động, Chế độ vận hành khi ngủ\r\nChế độ tiết kiệm điệnChế độ Econo Cool\r\nCông nghệ kháng khuẩn khử mùi:Phin lọc khử mùi xúc tác quang Apatit Titan\r\nLàm lạnh nhanh:Có\r\nNơi lắp ráp:Thái Lan'),
(141, 'Máy lạnh Daikin Inverter 2HP FTKC50RVMV', '20.990.000', 7, 10, '0', 3, 'may-lanh-daikin-ftkc50qvmv-1-230x65.jpg', 'Công suất lạnh:2 HP - 17.700 BTU\r\nLoại máy:Điều hoà 1 chiều (chỉ làm lạnh)\r\nPhạm vi làm lạnh hiệu quả:Từ 20 - 30 m2 (từ 60 đến 80 m3)\r\nCông nghệ inverter:Máy lạnh Inverter\r\nTiện ích:Làm lạnh nhanh tức thì, Tự khởi động lại khi có điện, Chức năng tự chuẩn đoán lỗi, Hẹn giờ bật tắt máy\r\nChế độ tiết kiệm điệnEcono tiết kiệm điện\r\nCông nghệ kháng khuẩn khử mùi:Phin lọc khử mùi xúc tác quang Apatit Titan\r\nLàm lạnh nhanh:Có\r\nNơi lắp ráp:Thái Lan'),
(142, 'Máy lạnh Daikin Inverter 1.5HP FTKJ35NVMVW', '27.290.000', 7, 10, '0', 3, 'may-lanh-daikin-ftkj35nvmvw-new-230x65.jpg', 'Công suất lạnh:1.5 HP - 11.900 BTU\r\nLoại máy:Điều hoà 1 chiều (chỉ làm lạnh)\r\nPhạm vi làm lạnh hiệu quả:Từ 15 - 20 m2 (từ 40 đến 60 m3)\r\nCông nghệ inverter:Máy lạnh Inverter\r\nCông suất tiêu thụ điện trung bình:0.85 kW/h\r\nTiện ích:Làm lạnh nhanh tức thì, Tự khởi động lại khi có điện, Hẹn giờ bật tắt máy, Chế độ làm khô, Có tự điều chỉnh nhiệt độ (chế độ ngủ đêm), Hoạt động siêu êm, Thổi gió dễ chịu (cho trẻ em, người già)\r\nChế độ tiết kiệm điệnEcono tiết kiệm điện\r\nCông nghệ kháng khuẩn khử mùi:Phin lọc khử mùi xúc tác quang Apatit Titan\r\nLàm lạnh nhanh:Có\r\nNơi lắp ráp:Thái Lan'),
(143, 'Máy lạnh LG Inverter 1.5HP V13ENR', '9.590.000', 2, 10, '0', 3, 'may-lanh-lg-v13enr-230x65.png', 'Công suất lạnh:1.5 HP - 12.000 BTU\r\nLoại máy:Điều hoà 1 chiều (chỉ làm lạnh)\r\nPhạm vi làm lạnh hiệu quả:Từ 15 - 20 m2 (từ 40 đến 60 m3)\r\nCông nghệ inverter:Máy lạnh Inverter\r\nCông suất tiêu thụ điện trung bình:1.1 kW/h\r\nNhãn năng lượng tiết kiệm điện:5 sao (Hiệu suất năng lượng 5.40)\r\nTiện ích:Làm lạnh nhanh tức thì, Tự khởi động lại khi có điện, Chức năng tự chuẩn đoán lỗi, Hẹn giờ bật tắt máy, Chế độ vận hành khi ngủ, Hoạt động siêu êm, Kiểm soát năng lượng chủ động 4 mức, Chức năng tự làm sạch\r\nChế độ tiết kiệm điệnCó\r\nCông nghệ kháng khuẩn khử mùi:Tấm lọc kép kháng khuẩn\r\nLàm lạnh nhanh:Có\r\nNơi lắp ráp:Thái Lan'),
(144, 'Máy lạnh Panasonic 1.5HP CU/CS-N12SKH-8', '10.690.000', 3, 10, '0', 3, 'may-lanh-panasonic-cu-cs-n12skh-8--230x65.png', 'Công suất lạnh:1.5 HP - 11.500 BTU\r\nLoại máy:Điều hoà 1 chiều (chỉ làm lạnh)\r\nPhạm vi làm lạnh hiệu quả:Từ 15 - 20 m2 (từ 40 đến 60 m3)\r\nCông nghệ inverter:Máy lạnh không inverter\r\nCông suất tiêu thụ điện trung bình:0.98 kW/h\r\nNhãn năng lượng tiết kiệm điện:2 sao (Hiệu suất năng lượng 3.59)\r\nTiện ích:Hẹn giờ bật tắt máy, Chức năng hút ẩm, Chế độ vận hành khi ngủ, Hoạt động siêu êm\r\nCông nghệ kháng khuẩn khử mùi:Kháng khuẩn khử mùi Nanoe-G\r\nLàm lạnh nhanh:Chế độ iAuto\r\nNơi lắp ráp:Malaysia'),
(145, 'Máy lạnh Panasonic Inverter 1HP CU/CS-PU9TKH-8', '10.490.000', 3, 10, '0', 3, 'may-lanh-panasonic-cu-cs-pu9tkh-8--230x65.png', 'Công suất lạnh:1 HP - 8.530 BTU\r\nLoại máy:Điều hoà 1 chiều (chỉ làm lạnh)\r\nPhạm vi làm lạnh hiệu quả:Dưới 15 m2 (từ 30 đến 45 m3)\r\nCông nghệ inverter:Máy lạnh Inverter\r\nCông suất tiêu thụ điện trung bình:0.75 kW/h\r\nNhãn năng lượng tiết kiệm điện:5 sao (Hiệu suất năng lượng 4.60)\r\nTiện ích:Làm lạnh nhanh tức thì, Tự khởi động lại khi có điện, Hẹn giờ bật tắt máy, Bảo vệ da - Kiểm soát độ ẩm, Chế độ vận hành khi ngủ, Hoạt động siêu êm\r\nChế độ tiết kiệm điệnCó\r\nCông nghệ kháng khuẩn khử mùi:Kháng khuẩn khử mùi Nanoe-G\r\nLàm lạnh nhanh:Chế độ iAuto\r\nNơi lắp ráp:Malaysia'),
(146, 'Máy lạnh Panasonic Inverter 1.5HP CU/CS-U12TKH-8', '14.190.000', 3, 10, '0', 3, 'may-lanh-panasonic-cu-cs-u12tkh-8-230x65.png', 'Công suất lạnh:1.5 HP - 11.900 BTU\r\nLoại máy:Điều hoà 1 chiều (chỉ làm lạnh)\r\nPhạm vi làm lạnh hiệu quả:Từ 15 - 20 m2 (từ 40 đến 60 m3)\r\nCông nghệ inverter:Máy lạnh Inverter\r\nCông suất tiêu thụ điện trung bình:0.92 kW/h\r\nNhãn năng lượng tiết kiệm điện:5 sao (Hiệu suất năng lượng 6.08)\r\nTiện ích:Tự khởi động lại khi có điện, Chức năng tự chuẩn đoán lỗi, Hẹn giờ bật tắt máy, Bảo vệ da - Kiểm soát độ ẩm, Có tự điều chỉnh nhiệt độ (chế độ ngủ đêm), Hoạt động siêu êm\r\nChế độ tiết kiệm điệnChỉ có Inverter\r\nCông nghệ kháng khuẩn khử mùi:Kháng khuẩn khử mùi Nanoe-G\r\nLàm lạnh nhanh:Công nghệ iAuto-X\r\nNơi lắp ráp:Malaysia'),
(147, 'Máy lạnh Samsung Inverter 1HP AR10MVFSCURNSV', '8.090.000', 4, 10, '0', 3, 'may-lanh-samsung-ar10mvfscurnsv-230x65.png', 'Công suất lạnh:1 HP - 9.000 BTU\r\nLoại máy:Điều hoà 1 chiều (chỉ làm lạnh)\r\nPhạm vi làm lạnh hiệu quả:Dưới 15 m2 (từ 30 đến 45 m3)\r\nCông nghệ inverter:Máy lạnh Inverter\r\nCông suất tiêu thụ điện trung bình:0.95 kW/h\r\nNhãn năng lượng tiết kiệm điện:4 sao (Hiệu suất năng lượng 4.14)\r\nTiện ích:Chức năng hút ẩm\r\nChế độ tiết kiệm điệnDual inverter\r\nCông nghệ kháng khuẩn khử mùi:Công nghệ Virus Doctor, Bộ lọc không khí chống nấm mốc\r\nLàm lạnh nhanh:Có\r\nNơi lắp ráp:Thái Lan'),
(148, 'Máy lạnh Samsung 1.5HP AR13MVFSBWKNSV', '11.490.000', 4, 10, '0', 3, 'may-lanh-samsung-ar13mvfhgwknsv1-230x65.png', 'Công suất lạnh:1.5 HP - 12.000 BTU\r\nLoại máy:Điều hoà 1 chiều (chỉ làm lạnh)\r\nPhạm vi làm lạnh hiệu quả:Từ 15 - 20 m2 (từ 40 đến 60 m3)\r\nCông nghệ inverter:Máy lạnh Inverter\r\nCông suất tiêu thụ điện trung bình:1.2 kW/h\r\nNhãn năng lượng tiết kiệm điện:5 sao (Hiệu suất năng lượng 4.42)\r\nTiện ích:Chế độ Good Sleep, Bộ 3 bảo vệ tăng cường, Làm lạnh nhanh tức thì, Tự khởi động lại khi có điện, Hẹn giờ bật tắt máy, Chế độ vận hành khi ngủ\r\nChế độ tiết kiệm điệnChế độ 1 người tiết kiệm điện\r\nCông nghệ kháng khuẩn khử mùi:Tấm lọc kháng khuẩn\r\nLàm lạnh nhanh:Có\r\nNơi lắp ráp:Thái Lan'),
(149, 'Máy lạnh Sharp Inverter 1.5HP AH-X12SEW', '10.390.000', 5, 10, '0', 3, 'may-lanh-sharp-ah-x12sew-230x65.png', 'Công suất lạnh:1.5 HP - 12.000 BTU\r\nLoại máy:Điều hoà 1 chiều (chỉ làm lạnh)\r\nPhạm vi làm lạnh hiệu quả:Từ 15 - 20 m2 (từ 40 đến 60 m3)\r\nCông nghệ inverter:Máy lạnh Inverter\r\nCông suất tiêu thụ điện trung bình:1 kW/h\r\nNhãn năng lượng tiết kiệm điện:5 sao (Hiệu suất năng lượng 4.97)\r\nTiện ích:Tự khởi động lại khi có điện, Hẹn giờ bật tắt máy, Có tự điều chỉnh nhiệt độ (chế độ ngủ đêm), Chế độ dành cho trẻ em\r\nChế độ tiết kiệm điệnChế độ Comfort Eco\r\nLàm lạnh nhanh:Công nghệ Powerful Jet\r\nNơi lắp ráp:Thái Lan\r\n'),
(150, 'Máy lạnh Toshiba 2HP RAS-H18QKSG-V', '15.790.000', 6, 10, '0', 3, 'may-lanh-toshiba-ras-h18qksg-v--230x65.png', 'Công suất lạnh:2 HP - 18.000 BTU\r\nLoại máy:Điều hoà 1 chiều (chỉ làm lạnh)\r\nPhạm vi làm lạnh hiệu quả:Từ 20 - 30 m2 (từ 60 đến 80 m3)\r\nCông nghệ inverter:Máy lạnh không inverter\r\nCông suất tiêu thụ điện trung bình:1.65 kW/h\r\nNhãn năng lượng tiết kiệm điện:3 sao (Hiệu suất năng lượng 3.01)\r\nTiện ích:Làm lạnh nhanh tức thì, Tự khởi động lại khi có điện, Hẹn giờ bật tắt máy\r\nChế độ tiết kiệm điệnChế độ Eco tiết kiệm năng lượng\r\nCông nghệ kháng khuẩn khử mùi:Dàn lạnh chống bám bẩn Magic Coil\r\nLàm lạnh nhanh:Chế độ HI Power\r\nNơi lắp ráp:Thái Lan'),
(151, 'Máy lạnh Sharp 1.5HP AH-A12SEW', '8.190.000', 5, 10, '0', 3, 'sharp-ah-a12sew-230x65.jpg', 'Công suất lạnh:1.5 HP - 11.940 BTU\r\nLoại máy:Điều hoà 1 chiều (chỉ làm lạnh)\r\nPhạm vi làm lạnh hiệu quả:Từ 15 - 20 m2 (từ 40 đến 60 m3)\r\nCông nghệ inverter:Máy lạnh không inverter\r\nCông suất tiêu thụ điện trung bình:1 kW/h\r\nNhãn năng lượng tiết kiệm điện:4 sao (Hiệu suất năng lượng 3.367)\r\nTiện ích:Tự khởi động lại khi có điện, Hẹn giờ bật tắt máy, Chế độ dành cho trẻ em\r\nChế độ tiết kiệm điệnChế độ Comfort Eco\r\nLàm lạnh nhanh:Công nghệ Powerful Jet\r\nNơi lắp ráp:Thái Lan'),
(152, 'Máy lạnh Toshiba 1.0HP RAS-H10QKSG-V', '7.690.000', 6, 10, '0', 3, 'toshiba-ras-h10qksg-v-daidien-230x65.jpg', 'Công suất lạnh:1 HP - 9.000 BTU\r\nLoại máy:Điều hoà 1 chiều (chỉ làm lạnh)\r\nPhạm vi làm lạnh hiệu quả:Dưới 15 m2 (từ 30 đến 45 m3)\r\nCông nghệ inverter:Máy lạnh không inverter\r\nCông suất tiêu thụ điện trung bình:0.79 kW/h\r\nNhãn năng lượng tiết kiệm điện:2 sao (Hiệu suất năng lượng 3.5)\r\nTiện ích:Làm lạnh nhanh tức thì, Hẹn giờ bật tắt máy, Chức năng tự làm sạch\r\nChế độ tiết kiệm điệnCó\r\nCông nghệ kháng khuẩn khử mùi:Tấm lọc kháng khuẩn, Bộ lọc Toshiba IAQ, Công nghệ chống bám bẩn Magic coil\r\nLàm lạnh nhanh:Chế độ HI Power\r\nNơi lắp ráp:Thái Lan'),
(153, 'Smart Tivi OLED LG 55 inch 55C7T', '57.000.000', 2, 10, '0', 2, 'smart-tivi-oled-lg-55c7t-230x140.png', 'Loại tivi:Smart Tivi OLED, 55 inch\r\nĐộ phân giải:Ultra HD 4K\r\nHệ điều hành:WebOS\r\nỨng dụng sẵn có:Trình duyệt web, YouTube, Netflix, Zing TV, VnExpress, Film+\r\nỨng dụng có thể tải thêm:FPT Play, Clip.vn, The Karaoke Chanel\r\nRemote thông minh:Có remote thông minh (tìm kiếm bằng giọng nói)\r\nĐiều khiển TV bằng điện thoại:Bằng ứng dụng LG TV Plus\r\nKết nối internet:Cổng LAN, Wifi\r\nCổng HDMI:3 cổng\r\nCổng USB:3 cổng\r\nNăm ra mắt:2017'),
(154, 'Smart Tivi TCL 55 inch L55P1-CF', '13.990.000', 8, 10, '0', 2, 'tcl-55-inch-l55p1-cf-1-230x140.png', 'Loại tivi:Android Tivi, 55 inch\r\nĐộ phân giải:Full HD\r\nHệ điều hành:Android tivi\r\nỨng dụng sẵn có:Trình duyệt web, YouTube, Facebook, Opera TV Store\r\nỨng dụng có thể tải thêm:FPT Play, Facebook, Skype, MyTV\r\nRemote thông minh:Không dùng được\r\nĐiều khiển TV bằng điện thoại:Bằng ứng dụng T-Cast\r\nKết nối internet:Cổng LAN, Wifi\r\nCổng HDMI:3 cổng\r\nCổng USB:2 cổng\r\nNăm ra mắt:2016'),
(155, 'Smart Tivi TCL 4K 43 inch L43C2L-UF', '10.490.000', 8, 10, '0', 2, 'tcl-l43c2l-uf-230x140.png', 'Loại tivi:Smart Tivi, 43 inch\r\nĐộ phân giải:Ultra HD 4K\r\nHệ điều hành:Android tivi\r\nỨng dụng sẵn có:YouTube, Trình duyệt web\r\nRemote thông minh:Không dùng được\r\nĐiều khiển TV bằng điện thoại:Bằng ứng dụng T-Cast\r\nKết nối internet:Cổng LAN, Wifi\r\nCổng HDMI:3 cổng\r\nCổng USB:2 cổng\r\nNăm ra mắt:2017'),
(156, 'Smart Tivi Cong TCL 4K 55 inch L55C1-UC', '16.990.000', 8, 10, '0', 2, 'tcl-l55c1-uc-1-230x140.png', 'Loại tivi:Smart Tivi Cong, 55 inch\r\nĐộ phân giải:Ultra HD 4K\r\nHệ điều hành:Android tivi\r\nỨng dụng sẵn có:YouTube, Trình duyệt web, Zing TV, Zing Mp3\r\nỨng dụng có thể tải thêm:FPT Play, Facebook, Skype, MyTV\r\nRemote thông minh:Không dùng được\r\nĐiều khiển TV bằng điện thoại:Bằng ứng dụng TCL nScreen\r\nKết nối internet:Cổng LAN, Wifi\r\nCổng HDMI:3 cổng (có hỗ trợ MHL)\r\nCổng USB:2 cổng\r\nNăm ra mắt:2016'),
(157, 'Tivi Samsung 55 Inch UA55LS003', '49.900.000', 4, 10, '0', 2, 'tivi-samsung-55-inch-ua55ls0.png', 'Loại tivi:Smart Tivi, 55 inch\r\nĐộ phân giải:Ultra HD 4K\r\nHệ điều hành:Tizen OS\r\nỨng dụng sẵn có:Trình duyệt web, YouTube, Netflix, Flix TV, FPT Play, Film+\r\nỨng dụng có thể tải thêm:Zing TV, Nhạc của tui, Facebook, HD Viet,Karaoke, Amazon Video\r\nRemote thông minh:Remote đa nhiệm - One Remote\r\nĐiều khiển TV bằng điện thoại:Bằng ứng dụng Samsung Smart View\r\nKết nối internet:Cổng LAN, Wifi\r\nCổng HDMI:4 cổng\r\nCổng USB:3 cổng\r\nNăm ra mắt:2017'),
(158, 'Tivi Samsung 40 inch UA40M5000', '8.400.000', 4, 10, '0', 2, 'tivi-led-samsung-ua40m5000-230x140.png', 'Loại tivi:Tivi LED cơ bản, 40 inch\r\nĐộ phân giải:Full HD\r\nCổng HDMI:2 cổng\r\nCổng USB:1 cổng\r\nCổng AV:Cổng Composite tích hợp bên trong cổng Component\r\nCổng xuất âm thanh:Jack 3.5 mm (cắm loa, tai nghe)\r\nCông nghệ hình ảnh:Wide Color Enhancer, Digital Clean View\r\nCông nghệ âm thanh:Dolby Digital\r\nNăm ra mắt:2017'),
(159, 'Tivi Samsung 65 inch UA65MU8000', '59.890.000', 4, 10, '0', 2, 'tivi-led-samsung-ua65mu6100-1-230x140.png', 'Loại tivi:Smart Tivi, 65 inch\r\nĐộ phân giải:Ultra HD 4K\r\nHệ điều hành:Tizen OS\r\nỨng dụng sẵn có:Trình duyệt web, YouTube, Netflix, Flix TV, FPT Play, Film+\r\nỨng dụng có thể tải thêm:Zing TV, Nhạc của tui, Facebook, HD Viet,Karaoke, Amazon Video\r\nRemote thông minh:Remote đa nhiệm - One Remote\r\nĐiều khiển TV bằng điện thoại:Bằng ứng dụng Samsung Smart View\r\nKết nối internet:Cổng LAN, Wifi\r\nCổng HDMI:4 cổng\r\nCổng USB:3 cổng\r\nNăm ra mắt:2017'),
(160, 'Tivi Sony 4K 43 inch KD-43X7000E', '13.200.000', 9, 10, '0', 2, 'tivi-led-sony-kd-43x7500e-230x140.png', 'Loại tivi:Internet Tivi, 43 inch\r\nĐộ phân giải:Ultra HD 4K\r\nHệ điều hành:Linux\r\nỨng dụng sẵn có:Trình duyệt web, YouTube, Netflix, Opera TV Store\r\nỨng dụng có thể tải thêm:Film+, Zing TV, FPT play, Zing mp3, Nhạc của tui\r\nRemote thông minh:Không dùng được\r\nĐiều khiển TV bằng điện thoại:Không có ứng dụng do hãng phát triển\r\nKết nối internet:Cổng LAN, Wifi\r\nCổng HDMI:3 cổng\r\nCổng USB:3 cổng\r\nNăm ra mắt:2017'),
(161, 'Tivi Sony 32 inch KDL-32R300E', '6.390.000', 9, 10, '0', 2, 'tivi-led-sony-kdl-32r300e-uplai-230x140.png', 'Loại tivi:Tivi LED cơ bản, 32 inch\r\nĐộ phân giải:HD\r\nRemote thông minh:Không dùng được\r\nĐiều khiển TV bằng điện thoại:Không dùng được\r\nCổng HDMI:2 cổng\r\nCổng USB:1 cổng\r\nNăm ra mắt:2017'),
(162, 'Smart Tivi Toshiba 40 inch 40L5650', '8.490.000', 6, 10, '0', 2, 'tivi-led-toshiba-40l5650--230x140.png', 'Loại tivi:Smart Tivi, 40 inch\r\nĐộ phân giải:Full HD\r\nHệ điều hành:Home Launcher\r\nỨng dụng sẵn có:Trình duyệt web, YouTube, Facebook, Twitter\r\nỨng dụng có thể tải thêm:FPT Play, Nhạc của tui, Zing TV, Zing Mp3\r\nRemote thông minh:Không dùng được\r\nĐiều khiển TV bằng điện thoại:Không có ứng dụng do hãng phát triển\r\nKết nối internet:Cổng LAN, Wifi\r\nCổng HDMI:3 cổng\r\nCổng USB:2 cổng\r\nNăm ra mắt:2016'),
(163, 'Tivi Toshiba 49 inch 49L5650', '11.490.000', 6, 10, '0', 2, 'tivi-led-toshiba-49l5650--230x140.png', 'Loại tivi:Smart Tivi, 49 inch\r\nĐộ phân giải:Full HD\r\nHệ điều hành:Home Launcher\r\nỨng dụng sẵn có:Trình duyệt web, YouTube, Facebook, Twitter\r\nỨng dụng có thể tải thêm:FPT Play, Nhạc của tui, Zing TV, Zing Mp3\r\nRemote thông minh:Không dùng được\r\nĐiều khiển TV bằng điện thoại:Không có ứng dụng do hãng phát triển\r\nKết nối internet:Cổng LAN, Wifi\r\nCổng HDMI:3 cổng\r\nCổng USB:2 cổng\r\nNăm ra mắt:2016'),
(164, 'Tivi LG 32 inch 32LJ550D', '6.690.000', 2, 10, '0', 2, 'tivi-lg-32lj550d-thien-230x140.png', 'Loại tivi:Smart Tivi, 32 inch\r\nĐộ phân giải:HD\r\nHệ điều hành:WebOS\r\nỨng dụng sẵn có:Trình duyệt web, YouTube, Netflix, Zing TV, VnExpress, Film+\r\nỨng dụng có thể tải thêm:FPT Play, Clip.vn, The Karaoke Chanel\r\nRemote thông minh:Không dùng được\r\nĐiều khiển TV bằng điện thoại:Bằng ứng dụng LG TV Plus\r\nKết nối internet:Cổng LAN, Wifi\r\nCổng HDMI:2 cổng\r\nCổng USB:1 cổng\r\nNăm ra mắt:2017'),
(165, 'Tivi LG 32 inch 32LJ571D', '6.990.000', 2, 10, '0', 2, 'tivi-lg-32lj571d-daidien1-230x140.png', 'Loại tivi:Smart Tivi, 32 inch\r\nĐộ phân giải:HD\r\nHệ điều hành:WebOS\r\nỨng dụng sẵn có:Trình duyệt web, YouTube, Netflix, Zing TV, VnExpress, Film+\r\nỨng dụng có thể tải thêm:FPT Play, The Karaoke Chanel\r\nRemote thông minh:Không dùng được\r\nĐiều khiển TV bằng điện thoại:Bằng ứng dụng LG TV Plus\r\nKết nối internet:Cổng LAN, Wifi\r\nCổng HDMI:2 cổng\r\nCổng USB:1 cổng\r\nNăm ra mắt:2017'),
(166, 'Tivi LG 55 inch 55SJ800T', '36.900.000', 2, 10, '0', 2, 'tivi-lg-55sj800t-thumb-230x140.png', 'Loại tivi:Smart Tivi, 55 inch\r\nĐộ phân giải:Ultra HD 4K\r\nHệ điều hành:WebOS\r\nỨng dụng sẵn có:Trình duyệt web, YouTube, Netflix, Zing TV, VnExpress, Film+\r\nỨng dụng có thể tải thêm:FPT Play, Clip.vn, The Karaoke Chanel\r\nRemote thông minh:Có\r\nĐiều khiển TV bằng điện thoại:Bằng ứng dụng LG TV Plus\r\nKết nối internet:Cổng LAN, Wifi\r\nCổng HDMI:4 cổng\r\nCổng USB:3 cổng\r\nNăm ra mắt:2017'),
(167, 'Tivi OLED LG 55EG9A7T', '39.900.000', 2, 10, '0', 2, 'tivioled-lg-55eg9a7t-fhd1-230x140.png', 'Loại tivi:Smart Tivi OLED, 55 inch\r\nĐộ phân giải:Full HD\r\nHệ điều hành:WebOS\r\nỨng dụng sẵn có:Trình duyệt web, YouTube, Netflix, Zing TV, VnExpress, Film+\r\nỨng dụng có thể tải thêm:FPT Play, Clip.vn, The Karaoke Chanel\r\nRemote thông minh:Có remote thông minh (tìm kiếm bằng giọng nói)\r\nĐiều khiển TV bằng điện thoại:Bằng ứng dụng LG TV Plus\r\nKết nối internet:Cổng LAN, Wifi\r\nCổng HDMI:3 cổng\r\nCổng USB:3 cổng\r\nNăm ra mắt:2017'),
(168, 'Tivi Samsung 49 inch UA49J5200', '12.890.000', 4, 10, '0', 2, 'tivi-samsung-49-inch-ua49j5200-1.png', 'Loại tivi:Internet Tivi, 49 inch\r\nĐộ phân giải:Full HD\r\nHệ điều hành:Samsung Smart Hub\r\nỨng dụng sẵn có:YouTube, Trình duyệt web\r\nỨng dụng có thể tải thêm:Nhạc của tui, Zing Mp3, Zing TV\r\nKết nối internet:Cổng LAN, Wifi\r\nCổng HDMI:2 cổng\r\nCổng USB:1 cổng\r\nCông nghệ hình ảnh:Wide Color Enhancer, Digital Clean View, Dynamic Clear White\r\nCông nghệ âm thanh:Dolby Digital\r\nNăm ra mắt:2015'),
(169, 'Tivi Samsung 32 inch UA32J4003', '5.890.000', 4, 10, '0', 2, 'tivi-samsung-ua32j4003d-230x140.png', 'Loại tivi:Tivi LED cơ bản, 32 inch\r\nĐộ phân giải:HD\r\nCổng HDMI:2 cổng\r\nCổng USB:1 cổng\r\nCổng AV:Cổng Composite tích hợp bên trong cổng Component\r\nCổng xuất âm thanh:Jack loa 3.5 mm\r\nCông nghệ hình ảnh:Wide Color Enhancer, Digital Clean View\r\nCông nghệ âm thanh:Dolby Digital Plus\r\nNăm ra mắt:2015'),
(170, 'Tivi Samsung 32 inch UA32J4303', '6.890.000', 4, 10, '0', 2, 'tivi-samsung-ua32j4303d-230x140.png', 'Loại tivi:Internet Tivi, 32 inch\r\nĐộ phân giải:HD\r\nHệ điều hành:Samsung Smart Hub\r\nỨng dụng sẵn có:Trình duyệt web, YouTube, Netflix\r\nỨng dụng có thể tải thêm:Nhạc của tui, Zing Mp3, Zing TV\r\nKết nối internet:Cổng LAN, Wifi\r\nCổng HDMI:2 cổng (có hỗ trợ MHL)\r\nCổng USB:1 cổng\r\nCông nghệ hình ảnh:Wide Color Enhancer, Digital Clean View\r\nCông nghệ âm thanh:Dolby Digital Plus\r\nNăm ra mắt:2015'),
(171, 'Tivi Sony 43 inch KD-43X8000E', '15.500.000', 9, 10, '0', 2, 'tivi-sony-kd-43x8000e-thumb-230x140.png', 'Loại tivi:Android Tivi, 43 inch\r\nĐộ phân giải:Ultra HD 4K\r\nHệ điều hành:Android tivi\r\nỨng dụng sẵn có:Trình duyệt web, YouTube, Google Play, Zing TV, Netflix, Film+\r\nỨng dụng có thể tải thêm:FPT Play, Nhạc của tui, Game Asphalt 8, ClipTV\r\nRemote thông minh:Có remote thông minh (tìm kiếm bằng giọng nói bằng tiếng Việt)\r\nĐiều khiển TV bằng điện thoại:Bằng ứng dụng Video & TV SideView\r\nKết nối internet:Cổng LAN, Wifi\r\nCổng HDMI:4 cổng\r\nCổng USB:3 cổng\r\nNăm ra mắt:2017'),
(172, 'Tivi Sony 49 inch KD-49X7500E', '18.900.000', 9, 10, '0', 2, 'tivisony-kd-49x7500e-230x140.png', 'Loại tivi:Android Tivi, 49 inch\r\nĐộ phân giải:Ultra HD 4K\r\nHệ điều hành:Android tivi\r\nỨng dụng sẵn có:Trình duyệt web, YouTube, Google Play, Zing TV, Netflix, Film+\r\nỨng dụng có thể tải thêm:FPT Play, Nhạc của tui, Game Asphalt 8, ClipTV\r\nRemote thông minh:Có remote thông minh (tìm kiếm bằng giọng nói)\r\nĐiều khiển TV bằng điện thoại:Bằng ứng dụng Video & TV SideView\r\nKết nối internet:Cổng LAN, Wifi\r\nCổng HDMI:3 cổng\r\nCổng USB:3 cổng\r\nNăm ra mắt:2017'),
(173, 'Tivi Sony 40 inch KDL-40R350E', '8.590.000', 9, 10, '0', 2, 'tivi-sony-kdl-40r350e-uplai-230x140.png', 'Loại tivi:Tivi LED cơ bản, 40 inch\r\nĐộ phân giải:Full HD\r\nCổng HDMI:2 cổng\r\nCổng USB:1 cổng\r\nCổng AV:Có cổng Composite và cổng Component\r\nCổng xuất âm thanh:Cổng Optical (Digital Audio Out), Jack 3.5 mm (cắm loa, tai nghe)\r\nCông nghệ hình ảnh:Clear Resolution Enhancer, Dynamic Contrast Enhancer\r\nCông nghệ âm thanh:Dolby Digital, Dolby Digital Plus\r\nNăm ra mắt:2017'),
(174, 'Tivi Sony 40 Inch KDL-40W660E', '10.500.000', 9, 10, '0', 2, 'tivi-sony-kdl-40w660e-thumb-1-230x140.png', 'Loại tivi:Internet Tivi, 40 inch\r\nĐộ phân giải:Full HD\r\nHệ điều hành:Linux\r\nỨng dụng sẵn có:Trình duyệt web, YouTube, Netflix, Opera TV Store\r\nỨng dụng có thể tải thêm:Film+, Zing TV, FPT play, Zing mp3, Nhạc của tui\r\nRemote thông minh:Không dùng được\r\nĐiều khiển TV bằng điện thoại:Không có ứng dụng do hãng phát triển\r\nKết nối internet:Cổng LAN, Wifi\r\nCổng HDMI:2 cổng\r\nCổng USB:2 cổng\r\nNăm ra mắt:2017'),
(175, 'Tivi TCL 49 inch L49P3-CF', '9.990.000', 8, 10, '0', 2, 'tivi-tcl-l49p3-cf-230x140.png', 'Loại tivi:Smart Tivi, 49 inch\r\nĐộ phân giải:Full HD\r\nHệ điều hành:Android tivi\r\nỨng dụng sẵn có:YouTube, Trình duyệt web, Zing TV, Zing Mp3\r\nỨng dụng có thể tải thêm:FPT Play, Facebook, Skype, MyTV\r\nRemote thông minh:Không dùng được\r\nĐiều khiển TV bằng điện thoại:Bằng ứng dụng TCL nScreen\r\nKết nối internet:Cổng LAN, Wifi\r\nCổng HDMI:3 cổng\r\nCổng USB:2 cổng\r\nNăm ra mắt:2017'),
(176, 'Tivi TCL 4K 55 inch L55C2-UF', '19.490.000', 8, 10, '0', 2, 'tivi-tcl-l55c2-uf-daidien--230x140.png', 'Loại tivi:Smart Tivi, 55 inch\r\nĐộ phân giải:Ultra HD 4K\r\nHệ điều hành:Android tivi\r\nỨng dụng sẵn có:YouTube, Trình duyệt web, Zing TV, Zing Mp3\r\nỨng dụng có thể tải thêm:FPT Play, Facebook, Skype, MyTV\r\nRemote thông minh:Dùng được remote thông minh (mua tại hãng)\r\nĐiều khiển TV bằng điện thoại:Bằng ứng dụng TCL nScreen\r\nKết nối internet:Cổng LAN, Wifi\r\nCổng HDMI:3 cổng\r\nCổng USB:2 cổng\r\nNăm ra mắt:2017'),
(177, 'Tivi Toshiba 55 inch 55L5650', '16.790.000', 6, 10, '0', 2, 'tivi-toshiba-55l5650-thumb-230x140.png', 'Loại tivi:Smart Tivi, 55 inch\r\nĐộ phân giải:Full HD\r\nHệ điều hành:Home Launcher\r\nỨng dụng sẵn có:Trình duyệt web, YouTube, Facebook, Twitter\r\nỨng dụng có thể tải thêm:FPT Play, Nhạc của tui, Zing TV, Zing Mp3\r\nRemote thông minh:Không dùng được\r\nĐiều khiển TV bằng điện thoại:Không có ứng dụng do hãng phát triển\r\nKết nối internet:Cổng LAN, Wifi\r\nCổng HDMI:3 cổng\r\nCổng USB:2 cổng\r\nNăm ra mắt:2016'),
(178, 'Tủ lạnh Hitachi 529 lít E5000V XT', '60.500.000', 1, 10, '0', 1, 'tu-lanh-hitachi-e5000v-xt-190x190.png', 'Kiểu tủ:Ngăn đá dưới, 5 cửa\r\nDung tích:529 lít\r\nSố người sử dụng:Trên 7 người\r\nCông nghệ Inverter:Tủ lạnh Inverter\r\nTiện ích:Làm đá tự động, Ngăn làm lạnh nhanh, Bảng điều khiển bên ngoài, Tấm cách nhiệt chân không Vacuum Insulation Panel\r\nCông nghệ làm lạnh:Hệ thống làm lạnh kép\r\nCông nghệ kháng khuẩn khử mùi:Hệ thống khử mùi 3 lớp\r\nCông nghệ bảo quản thực phẩm:Ngăn bảo quản thực phẩm chân không, Công nghệ Bảo quản rau quả Aero-care\r\nNơi sản xuất:Nhật Bản\r\nNăm sản xuất:2017'),
(179, 'Tủ lạnh Hitachi 605 lít R-S700PGV2', '38.490.000', 1, 10, '0', 1, 'tu-lanh-hitachi-r-s700pgv2-190x190.png', 'Kiểu tủ:Tủ lớn - Side by side, 2 cửa\r\nDung tích:605 lít\r\nSố người sử dụng:Trên 7 người\r\nCông nghệ Inverter:Tủ lạnh Inverter\r\nĐiện tiêu thụ:~ 1.4 kW/ngày\r\nTiện ích:Bảng điều khiển bên ngoài\r\nCông nghệ làm lạnh:Làm lạnh quạt kép\r\nCông nghệ kháng khuẩn khử mùi:Màng lọc Nano Titanium, Đệm cửa chống nấm mốc\r\nCông nghệ bảo quản thực phẩm:Ngăn rau quả cân bằng độ ẩm\r\nNơi sản xuất:Thái Lan\r\nNăm sản xuất2015'),
(180, 'Tủ lạnh Hitachi 605 lít R-S700PGV2', '38.490.000', 1, 10, '0', 1, 'tu-lanh-hitachi-r-s700pgv2-gbk-190x190.png', 'Kiểu tủ:Tủ lớn - Side by side, 2 cửa\r\nDung tích:605 lít\r\nSố người sử dụng:Trên 7 người\r\nCông nghệ Inverter:Tủ lạnh Inverter\r\nĐiện tiêu thụ:~ 1.4 kW/ngày\r\nTiện ích:Bảng điều khiển bên ngoài\r\nCông nghệ làm lạnh:Làm lạnh quạt kép\r\nCông nghệ kháng khuẩn khử mùi:Màng lọc Nano Titanium, Đệm cửa chống nấm mốc\r\nCông nghệ bảo quản thực phẩm:Ngăn rau quả cân bằng độ ẩm\r\nNơi sản xuất:Thái Lan\r\nNăm sản xuất2015'),
(181, 'Tủ lạnh Hitachi 365 lít R-VG440PGV3', '13.790.000', 1, 10, '0', 1, 'tu-lanh-hitachi-r-vg440pgv3-gbw-190x190.png', 'Kiểu tủ:Ngăn đá trên, 2 cửa\r\nDung tích:365 lít\r\nSố người sử dụng:5 - 7 người\r\nCông nghệ Inverter:Tủ lạnh Inverter\r\nĐiện tiêu thụ:~ 1.2 kW/ngày\r\nCông nghệ làm lạnh:Làm lạnh quạt kép\r\nCông nghệ kháng khuẩn khử mùi:Màng lọc Nano Titanium, Đệm cửa chống nấm mốc\r\nNơi sản xuất:Thái Lan\r\nNăm sản xuất:2014'),
(182, 'Tủ lạnh Hitachi 540 lít R-W660PGV3', '27.090.000', 1, 10, '0', 1, 'tu-lanh-hitachi-r-w660pgv3-gbw-190x190.png', 'Kiểu tủ:Tủ lớn - Side by side, 4 cửa\r\nDung tích:540 lít\r\nSố người sử dụng:Trên 7 người\r\nCông nghệ Inverter:Tủ lạnh Inverter\r\nĐiện tiêu thụ:~ 1.32 kW/ngày\r\nTiện ích:Lấy nước bên ngoài, Bảng điều khiển bên ngoài\r\nCông nghệ làm lạnh:Làm lạnh quạt kép\r\nCông nghệ kháng khuẩn khử mùi:Màng lọc Nano Titanium, Đệm cửa chống nấm mốc\r\nNơi sản xuất:Thái Lan\r\nNăm sản xuất2014'),
(183, 'Tủ lạnh Hitachi 497 lít SF48EMV SH', '52.500.000', 1, 10, '0', 1, 'tu-lanh-hitachi-sf48emv-sh-190x190.png', 'Kiểu tủ:Ngăn đá dưới, 6 cửa\r\nDung tích:497 lít\r\nSố người sử dụng:Trên 7 người\r\nCông nghệ Inverter:Tủ lạnh Inverter\r\nTiện ích:Ngăn làm lạnh nhanh, Làm đá tự động, Bảng điều khiển bên ngoài, Tấm cách nhiệt chân không Vacuum Insulation Panel\r\nCông nghệ làm lạnh:Hệ thống làm lạnh kép\r\nCông nghệ kháng khuẩn khử mùi:Màng lọc Nano Titanium, Hệ thống khử mùi 3 lớp\r\nCông nghệ bảo quản thực phẩm:Ngăn bảo quản thực phẩm chân không, Công nghệ Bảo quản rau quả Aero-care\r\nNơi sản xuất:Nhật Bản\r\nNăm sản xuất2017'),
(184, 'Tủ lạnh Hitachi 640 lít WB800PGV5 GBK', '42.900.000', 1, 10, '0', 1, 'tu-lanh-hitachi-wb800pgv5-gbk-190x190.png', 'Kiểu tủ:Tủ lớn - Side by side, 4 cửa\r\nDung tích:640 lít\r\nSố người sử dụng:Trên 7 người\r\nCông nghệ Inverter:Tủ lạnh Inverter\r\nTiện ích:Bảng điều khiển bên ngoài, Tấm cách nhiệt chân không Vacuum Insulation Panel\r\nCông nghệ làm lạnh:Hệ thống làm lạnh kép\r\nCông nghệ kháng khuẩn khử mùi:Màng lọc Nano Titanium, Đệm cửa chống nấm mốc\r\nCông nghệ bảo quản thực phẩm:Ngăn rau quả thông minh Aero-care\r\nNơi sản xuất:Thái Lan\r\nNăm sản xuất2016'),
(185, 'Tủ lạnh LG 187 lít GN-L205S', '5.190.000', 2, 10, '0', 1, 'tu-lanh-lg-gn-l205s-190x190.png', 'Kiểu tủ:Ngăn đá trên, 2 cửa\r\nDung tích:187 lít\r\nSố người sử dụng:3 - 5 người\r\nCông nghệ Inverter:Tủ lạnh Inverter\r\nĐiện tiêu thụ:~ 0.8 kW/ngày\r\nCông nghệ làm lạnh:Hệ thống khí lạnh đa chiều\r\nCông nghệ kháng khuẩn khử mùi:Khử mùi Nano Carbon\r\nCông nghệ bảo quản thực phẩm:Ngăn rau quả cân bằng độ ẩm\r\nNơi sản xuất:Indonesia\r\nNăm sản xuất:2017'),
(186, 'Tủ lạnh LG 255 lít GN-L255PS', '7.590.000', 2, 10, '0', 1, 'tu-lanh-lg-gn-l255pn-190x190.png', 'Kiểu tủ:Ngăn đá trên, 2 cửa\r\nDung tích:255 lít\r\nSố người sử dụng:3 - 5 người\r\nCông nghệ Inverter:Tủ lạnh Inverter\r\nTiện ích:Ngăn kệ có thể thay đổi linh hoạt\r\nCông nghệ làm lạnh:Hệ thống khí lạnh đa chiều\r\nCông nghệ kháng khuẩn khử mùi:Khử mùi Nano Carbon\r\nCông nghệ bảo quản thực phẩm:Ngăn cân bằng độ ẩm™ với lưới mắt cáo, Làm lạnh từ cửa tủ DoorCooling+\r\nNơi sản xuất:Indonesia\r\nNăm sản xuất:2017'),
(187, 'Tủ lạnh LG 255 lít GN-L255PS', '7.590.000', 2, 10, '0', 1, 'tu-lanh-lg-gn-l255pn-190x190.png', 'Kiểu tủ:Ngăn đá trên, 2 cửa\r\nDung tích:255 lít\r\nSố người sử dụng:3 - 5 người\r\nCông nghệ Inverter:Tủ lạnh Inverter\r\nTiện ích:Ngăn kệ có thể thay đổi linh hoạt\r\nCông nghệ làm lạnh:Hệ thống khí lạnh đa chiều\r\nCông nghệ kháng khuẩn khử mùi:Khử mùi Nano Carbon\r\nCông nghệ bảo quản thực phẩm:Ngăn cân bằng độ ẩm™ với lưới mắt cáo, Làm lạnh từ cửa tủ DoorCooling+\r\nNơi sản xuất:Indonesia\r\nNăm sản xuất:2017'),
(188, 'Tủ lạnh LG 393 lít GN-L422PS', '11.690.000', 2, 10, '0', 1, 'tu-lanh-lg-gn-l422ps-190x190.png', 'Kiểu tủ:Ngăn đá trên, 2 cửa\r\nDung tích:393 lít\r\nSố người sử dụng:5 - 7 người\r\nCông nghệ Inverter:Tủ lạnh Inverter\r\nTiện ích:Ngăn kệ có thể thay đổi linh hoạt\r\nCông nghệ làm lạnh:Hệ thống khí lạnh đa chiều\r\nCông nghệ kháng khuẩn khử mùi:Khử mùi Nano Carbon\r\nCông nghệ bảo quản thực phẩm:Ngăn cân bằng độ ẩm™ với lưới mắt cáo, Làm lạnh từ cửa tủ DoorCooling+\r\nNơi sản xuất:Indonesia\r\nNăm sản xuất2017'),
(189, 'Tủ lạnh 512 lít LG GN-L702SD', '16.660.000', 2, 10, '0', 1, 'tu-lanh-lg-gn-l702sd-190x190.png', 'Kiểu tủ:Door in door, 3 cửa\r\nDung tích:512 lít\r\nSố người sử dụng:Trên 7 người\r\nCông nghệ Inverter:Tủ lạnh Inverter\r\nTiện ích:Làm đá tự động, Bảng điều khiển bên ngoài, Cửa home bar lấy rượu, bia\r\nCông nghệ làm lạnh:Hệ thống khí lạnh đa chiều\r\nCông nghệ kháng khuẩn khử mùi:Hygiene Fresh™\r\nCông nghệ bảo quản thực phẩm:Ngăn rau quả cân bằng độ ẩm, Ngăn Fresh O Zone, Làm lạnh từ cửa tủ DoorCooling+\r\nNơi sản xuất:Indonesia\r\nNăm sản xuất2017'),
(190, 'Tủ lạnh LG 613 lít GR-B247JDS', '19.490.000', 2, 10, '0', 1, 'tu-lanh-lg-gr-b247jds-190x190.png', 'Kiểu tủ:Tủ lớn - Side by side, 2 cửa\r\nDung tích:613 lít\r\nSố người sử dụng:Trên 7 người\r\nCông nghệ Inverter:Tủ lạnh Inverter\r\nĐiện tiêu thụ:~ 1.47 kW/ngày\r\nTiện ích:Bảng điều khiển bên ngoài\r\nCông nghệ làm lạnh:Hệ thống khí lạnh đa chiều\r\nCông nghệ kháng khuẩn khử mùi:Đệm cửa chống nấm mốc, Bộ lọc khử mùi Than hoạt tính\r\nCông nghệ bảo quản thực phẩm:Ngăn rau quả cân bằng độ ẩm, Ngăn FreshZone -1°C\r\nNơi sản xuất:Trung Quốc\r\nNăm sản xuất:2017'),
(191, 'Tủ lạnh LG 601 lít GR-D247JS', '37.390.000', 2, 10, '0', 1, 'tu-lanh-lg-gr-d247js-190x190.png', 'Kiểu tủ:Tủ lớn - Side by side, 2 cửa\r\nDung tích:601 lít\r\nSố người sử dụng:Trên 7 người\r\nCông nghệ Inverter:Tủ lạnh Inverter\r\nĐiện tiêu thụ:~ 1.66 kW/ngày\r\nTiện ích:Lấy nước bên ngoài, Làm đá tự động, Lấy đá bên ngoài, Bảng điều khiển bên ngoài\r\nCông nghệ làm lạnh:Luồng khí lạnh đa chiều\r\nCông nghệ kháng khuẩn khử mùi:Hygiene Fresh™\r\nCông nghệ bảo quản thực phẩm:Ngăn chuyên biệt 2 chế độ rau củ / hoa quả, Ngăn cân bằng độ ẩm™ với lưới mắt cáo\r\nNơi sản xuất:Trung Quốc\r\nNăm sản xuất:2016'),
(192, 'Tủ lạnh LG 601 lít GR-P247JS', '41.290.000', 2, 10, '0', 1, 'tu-lanh-lg-gr-p247js-190x190.png', 'Kiểu tủ:Tủ lớn - Side by side, 2 cửa\r\nDung tích:601 lít\r\nSố người sử dụng:Trên 7 người\r\nCông nghệ Inverter:Tủ lạnh Inverter\r\nĐiện tiêu thụ:~ 1.66 kW/ngày\r\nTiện ích:Lấy nước bên ngoài, Làm đá tự động, Lấy đá bên ngoài, Bảng điều khiển bên ngoài\r\nCông nghệ làm lạnh:Hệ thống khí lạnh đa chiều\r\nCông nghệ kháng khuẩn khử mùi:Hygiene Fresh™\r\nCông nghệ bảo quản thực phẩm:Ngăn cân bằng độ ẩm™ với lưới mắt cáo\r\nNơi sản xuất:Trung Quốc\r\nNăm sản xuất2016');
INSERT INTO `sanpham` (`masp`, `tensp`, `dongia`, `manhasx`, `soluong`, `trangthai`, `maloai`, `hinh`, `noidung`) VALUES
(193, 'Tủ lạnh LG 601 lít GR-X247JS', '47.900.000', 2, 10, '0', 1, 'tu-lanh-lg-gr-x247js-190x190.png', 'Kiểu tủ:Door in door, 2 cửa\r\nDung tích:601 lít\r\nSố người sử dụng:Trên 7 người\r\nCông nghệ Inverter:Tủ lạnh Inverter\r\nTiện ích:Lấy nước bên ngoài, Làm đá tự động, Lấy đá bên ngoài, Bảng điều khiển bên ngoài, Thiết kế Instaview Door-in-Door\r\nCông nghệ làm lạnh:Hệ thống khí lạnh đa chiều\r\nCông nghệ kháng khuẩn khử mùi:Hygiene Fresh™\r\nCông nghệ bảo quản thực phẩm:Ngăn chuyên biệt 2 chế độ rau củ / hoa quả, Ngăn cân bằng độ ẩm™ với lưới mắt cáo\r\nNơi sản xuất:Indonesia\r\nNăm sản xuất:2017'),
(194, 'Tủ lạnh Panasonic 363 lít NR-BD418VSVN', '12.490.000', 3, 10, '0', 1, 'tu-lanh-panasonic-nr-bd418vsvn-1-190x190.png', 'Kiểu tủ:Ngăn đá trên, 2 cửa\r\nDung tích:363 lít\r\nSố người sử dụng:5 - 7 người\r\nCông nghệ Inverter:Tủ lạnh Inverter\r\nĐiện tiêu thụ:~ 0.84 kW/ngày\r\nTiện ích:Ngăn kệ có thể thay đổi linh hoạt\r\nCông nghệ làm lạnh:Panorama\r\nCông nghệ kháng khuẩn khử mùi:Kháng khuẩn tinh thể bạc Ag Clean\r\nCông nghệ bảo quản thực phẩm:Ngăn rau quả giữ ẩm Fresh Safe\r\nNơi sản xuất:Thái Lan\r\nNăm sản xuất:2017'),
(195, 'Tủ lạnh Panasonic 405 lít NR-BD468GKVN', '14.690.000', 3, 10, '0', 1, 'tu-lanh-panasonic-nr-bd468gkvn-190x190.png', 'Kiểu tủ:Ngăn đá trên, 2 cửa\r\nDung tích:405 lít\r\nSố người sử dụng:5 - 7 người\r\nCông nghệ Inverter:Tủ lạnh Inverter\r\nĐiện tiêu thụ:~ 0.93 kW/ngày\r\nTiện ích:Ngăn kệ có thể thay đổi linh hoạt\r\nCông nghệ làm lạnh:Panorama\r\nCông nghệ kháng khuẩn khử mùi:Kháng khuẩn tinh thể bạc Ag Clean\r\nCông nghệ bảo quản thực phẩm:Ngăn rau quả giữ ẩm Fresh Safe, Ngăn Extra Cool Zone giữ lạnh thực phẩm ở nhiệt độ 2°C\r\nNơi sản xuất:Thái Lan\r\nNăm sản xuất2017'),
(196, 'Tủ lạnh Panasonic 405 lít NR-BD468VSVN', '14.090.000', 3, 10, '0', 1, 'tu-lanh-panasonic-nr-bd468vsvn-190x190.png', '\r\nKiểu tủ:Ngăn đá trên, 2 cửa\r\nDung tích:405 lít\r\nSố người sử dụng:5 - 7 người\r\nCông nghệ Inverter:Tủ lạnh Inverter\r\nĐiện tiêu thụ:~ 0.93 kW/ngày\r\nTiện ích:Ngăn kệ có thể thay đổi linh hoạt\r\nCông nghệ làm lạnh:Panorama\r\nCông nghệ kháng khuẩn khử mùi:Kháng khuẩn tinh thể bạc Ag Clean\r\nCông nghệ bảo quản thực phẩm:Ngăn rau quả giữ ẩm Fresh Safe, Ngăn Extra Cool Zone giữ lạnh thực phẩm ở nhiệt độ 2°C\r\nNơi sản xuất:Thái Lan\r\nNăm sản xuất2017'),
(197, 'Tủ lạnh Panasonic 267 lít NR-BL308PSVN', '7.990.000', 3, 10, '0', 1, 'tu-lanh-panasonic-nr-bl308psvn-190x190.png', 'Kiểu tủ:Ngăn đá trên, 2 cửa\r\nDung tích:267 lít\r\nSố người sử dụng:3 - 5 người\r\nCông nghệ Inverter:Tủ lạnh Inverter\r\nĐiện tiêu thụ:~ 0.94 kW/ngày\r\nTiện ích:Ngăn kệ có thể thay đổi linh hoạt\r\nCông nghệ làm lạnh:Luồng khí lạnh vòng cung\r\nCông nghệ kháng khuẩn khử mùi:Kháng khuẩn tinh thể bạc Ag Clean\r\nCông nghệ bảo quản thực phẩm:Ngăn rau quả giữ ẩm Fresh Safe\r\nNơi sản xuất:Việt Nam\r\nNăm sản xuất:2017'),
(198, 'Tủ lạnh Panasonic 546 lít NR-BY608XSVN', '20.490.000', 3, 10, '0', 1, 'tu-lanh-panasonic-nr-by608xsvn-190x190.png', 'Kiểu tủ:Ngăn đá dưới, 2 cửa\r\nDung tích:546 lít\r\nSố người sử dụng:Trên 7 người\r\nCông nghệ Inverter:Tủ lạnh Inverter\r\nĐiện tiêu thụ:~ 1.24 kW/ngày\r\nTiện ích:Làm đá nhanh, Bảng điều khiển bên ngoài, Bảo quản thịt cá không cần rã đông, Chuông báo cửa mở\r\nCông nghệ làm lạnh:Panorama\r\nCông nghệ kháng khuẩn khử mùi:Kháng khuẩn tinh thể bạc Ag Clean\r\nCông nghệ bảo quản thực phẩm:Ngăn Prime Fresh bảo quản thực phẩm không cần rã đông, Ngăn rau quả giữ ẩm Fresh Safe\r\nNơi sản xuất:Thái Lan\r\nNăm sản xuất:2016'),
(199, 'Tủ lạnh Panasonic 491 lít NR-CY558GKVN', '27.390.000', 3, 10, '0', 1, 'tu-lanh-panasonic-nr-cy558gkvn-190x190.png', 'Kiểu tủ:Ngăn đá dưới, 3 cửa\r\nDung tích:491 lít\r\nSố người sử dụng:Trên 7 người\r\nCông nghệ Inverter:Tủ lạnh Inverter\r\nTiện ích:Bảng điều khiển bên ngoài, Bảo quản thịt cá không cần rã đông\r\nCông nghệ làm lạnh:Panorama\r\nCông nghệ kháng khuẩn khử mùi:Kháng khuẩn tinh thể bạc Ag Clean\r\nCông nghệ bảo quản thực phẩm:Ngăn Prime Fresh bảo quản thực phẩm không cần rã đông, Ngăn rau quả giữ ẩm Fresh Safe\r\nNơi sản xuất:Thái Lan\r\nNăm sản xuất:2017'),
(200, 'Tủ lạnh Panasonic 489 lít NR-F510GT-N2', '46.990.000', 3, 10, '0', 1, 'tu-lanh-panasonic-nr-f510gt.png', 'Kiểu tủ:Tủ lớn - Side by side, 6 cửa\r\nDung tích:489 lít\r\nSố người sử dụng:Trên 7 người\r\nCông nghệ Inverter:Tủ lạnh Inverter\r\nTiện ích:Ngăn làm lạnh nhanh, Bảng điều khiển bên ngoài, Bảo quản thịt cá không cần rã đông\r\nCông nghệ làm lạnh:Panorama\r\nCông nghệ kháng khuẩn khử mùi:Kháng khuẩn tinh thể bạc Ag Clean\r\nCông nghệ bảo quản thực phẩm:Ngăn Prime Fresh bảo quản thực phẩm không cần rã đông\r\nNơi sản xuất:Nhật Bản\r\nNăm sản xuất2015'),
(201, 'Tủ lạnh Samsung 620 lít RH58K6687SL/SV', '59.490.000', 4, 10, '0', 1, 'tu-lanh-samsung-rh58k6687sl-sv-190x190.png', 'Kiểu tủ:Tủ lớn - Side by side, 3 cửa\r\nDung tích:620 lít\r\nSố người sử dụng:Trên 7 người\r\nCông nghệ Inverter:Tủ lạnh Inverter\r\nĐiện tiêu thụ:~ 1.5 kW/ngày\r\nTiện ích:Lấy nước bên ngoài, Bảng điều khiển bên ngoài\r\nCông nghệ làm lạnh:2 dàn lạnh riêng biệt (Twin Cooling Plus™)\r\nCông nghệ kháng khuẩn khử mùi:Tính năng Active Fresh Keeper\r\nCông nghệ bảo quản thực phẩm:Ngăn FreshZone -1°C, Tấm kim loại Metal Cooling giúp giữ lạnh hiệu quả và hạn chế tình trạng mất nhiệt\r\nNơi sản xuất:Trung Quốc\r\nNăm sản xuất:2016'),
(202, 'Tủ lạnh Samsung 641 ít RH62K62377P/SV', '43.590.000', 4, 10, '0', 1, 'tu-lanh-samsung-rh62k62377p-sv-1-190x190.png', 'Kiểu tủ:Tủ lớn - Side by side, 2 cửa\r\nDung tích:620 lít\r\nSố người sử dụng:Trên 7 người\r\nCông nghệ Inverter:Tủ lạnh Inverter\r\nĐiện tiêu thụ:~ 1.57 kW/ngày\r\nTiện ích:Cánh cửa Showcase tìm thấy ngay thực phẩm bên trong\r\nCông nghệ làm lạnh:2 dàn lạnh riêng biệt (Twin Cooling Plus™)\r\nCông nghệ kháng khuẩn khử mùi:Tính năng Active Fresh Keeper\r\nCông nghệ bảo quản thực phẩm:Tấm kim loại Metal Cooling giúp giữ lạnh hiệu quả và hạn chế tình trạng mất nhiệt\r\nNơi sản xuất:Trung Quốc\r\nNăm sản xuất:2017\r\n'),
(203, 'Tủ lạnh Samsung 641 lít RS62K62277P/SV', '30.900.000', 4, 10, '0', 1, 'tu-lanh-samsung-rs62k62277p-sv-1-190x190.png', 'Kiểu tủ:Tủ lớn - Side by side, 2 cửa\r\nDung tích:641 lít\r\nSố người sử dụng:Trên 7 người\r\nCông nghệ Inverter:Tủ lạnh Inverter\r\nĐiện tiêu thụ:~ 1.57 kW/ngày\r\nTiện ích:Bảng điều khiển bên ngoài\r\nCông nghệ làm lạnh:2 dàn lạnh riêng biệt (Twin Cooling Plus™)\r\nCông nghệ kháng khuẩn khử mùi:Tính năng Active Fresh Keeper\r\nCông nghệ bảo quản thực phẩm:Tấm kim loại Metal Cooling giúp giữ lạnh hiệu quả và hạn chế tình trạng mất nhiệt, Công nghệ Precise Chef Cooling Samsung giảm thiểu sự biến động nhiệt độ\r\nNơi sản xuất:Trung Quốc\r\nNăm sản xuất:2017'),
(204, 'Tủ lạnh Samsung 548 lít RS552N', '32.900.000', 4, 10, '0', 1, 'tu-lanh-samsung-rs552nrua9m-sv-190x190.png', 'Kiểu tủ:Tủ lớn - Side by side, 2 cửa\r\nDung tích:548 lít\r\nSố người sử dụng:Trên 7 người\r\nCông nghệ Inverter:Tủ lạnh Inverter\r\nĐiện tiêu thụ:~ 1.5 kW/ngày\r\nTiện ích:Bảng điều khiển bên ngoài, Chuông báo cửa mở, Ngăn Cool Pack duy trì độ lạnh khi mất điện\r\nCông nghệ làm lạnh:2 dàn lạnh riêng biệt (Twin Cooling Plus™)\r\nCông nghệ bảo quản thực phẩm:Ngăn rau quả cân bằng độ ẩm\r\nNơi sản xuất:Trung Quốc\r\nNăm sản xuất2016'),
(205, 'Tủ lạnh Samsung 208 lít RT19M300', '5.590.000', 4, 10, '0', 1, 'tu-lanh-samsung-rt19m300bgs-sv-190x190.png', 'Kiểu tủ:Ngăn đá trên, 2 cửa\r\nDung tích:208 lít\r\nSố người sử dụng:3 - 5 người\r\nCông nghệ Inverter:Tủ lạnh Inverter\r\nĐiện tiêu thụ:~ 0.9 kW/ngày\r\nCông nghệ làm lạnh:Luồng khí lạnh đa chiều\r\nCông nghệ kháng khuẩn khử mùi:Bộ lọc Carbon hoạt tính\r\nCông nghệ bảo quản thực phẩm:Ngăn rau quả giữ ẩm\r\nNơi sản xuất:Việt Nam\r\nNăm sản xuất2017'),
(206, 'Tủ lạnh Samsung 208 lít RT20K300', '5.890.000', 4, 10, '0', 1, 'tu-lanh-samsung-rt20k300ase-sv-190x190.png', 'Dung tích tổng:208 lít\r\nSố người sử dụng:3 - 5 người\r\nDung tích ngăn đá:54 lít\r\nDung tích ngăn lạnh:154 lít\r\nCông nghệ Inverter:Tủ lạnh Inverter\r\nĐiện năng tiêu thụ:~ 0.78 kW/ngày\r\nCông nghệ làm lạnh:All around cooling\r\nCông nghệ kháng khuẩn, khử mùi:Bộ lọc Carbon hoạt tính\r\nCông nghệ bảo quản thực phẩm:Ngăn rau quả cân bằng độ ẩm\r\nKiểu tủ:Ngăn đá trên\r\nSố cửa:2 cửa'),
(207, 'Tủ lạnh Samsung 360 lít RT35K598', '14.190.000', 4, 10, '0', 1, 'tu-lanh-samsung-rt35k5982s8-sv-190x190.png', 'Kiểu tủ:Ngăn đá trên, 2 cửa\r\nDung tích:360 lít\r\nSố người sử dụng:5 - 7 người\r\nCông nghệ Inverter:Tủ lạnh Inverter\r\nĐiện tiêu thụ:~ 1.08 kW/ngày\r\nTiện ích:Làm đá tự động, Lấy nước bên ngoài, Bảng điều khiển bên ngoài, Ngăn Cool Pack duy trì độ lạnh khi mất điện\r\nCông nghệ làm lạnh:2 dàn lạnh riêng biệt (Twin Cooling Plus™)\r\nCông nghệ kháng khuẩn khử mùi:Bộ lọc khử mùi Than hoạt tính\r\nCông nghệ bảo quản thực phẩm:Ngăn rau củ giữ ẩm đến 90%\r\nNơi sản xuất:Thái Lan\r\nNăm sản xuất2017'),
(208, 'Tủ lạnh Sharp 165 lít SJ-16VF3-CMS', '3.990.000', 5, 10, '0', 1, 'tu-lanh-sharp-sj-16vf3-cms-190x190.png', 'Kiểu tủ:Ngăn đá trên, 2 cửa\r\nDung tích:165 lít\r\nSố người sử dụng:1 - 3 người\r\nCông nghệ Inverter:Tủ lạnh thường\r\nĐiện tiêu thụ:~ 1.11 kW/ngày\r\nTiện ích:Làm đá nhanh\r\nCông nghệ làm lạnh:Gián tiếp\r\nCông nghệ kháng khuẩn khử mùi:Bộ khử mùi phân tử bạc Nano Ag+\r\nNơi sản xuất:Thái Lan\r\nNăm sản xuất2016'),
(209, 'Tủ lạnh Sharp 758 lít SJ-F5X76VM-SL', '39.990.000', 5, 10, '0', 1, 'tu-lanh-sharp-sj-f5x76vm-sl-1-190x190.png', 'Kiểu tủ:Tủ lớn - Side by side, 5 cửa\r\nDung tích:758 lít\r\nSố người sử dụng:Trên 7 người\r\nCông nghệ Inverter:Tủ lạnh Inverter\r\nTiện ích:Làm đá tự động, Làm đá nhanh, Bảng điều khiển bên ngoài\r\nCông nghệ làm lạnh:Hệ thống làm lạnh kép Hybrid Cooling\r\nCông nghệ kháng khuẩn khử mùi:Plasmacluster Ion, Bộ khử mùi phân tử bạc Nano Ag+\r\nCông nghệ bảo quản thực phẩm:Ngăn điều chỉnh đa nhiệt độ (-18°C,-8°C,0°C,3°C)\r\nNơi sản xuất:Thái Lan\r\nNăm sản xuất2015'),
(210, 'Tủ lạnh Sharp 678 lít SJ-FX680V-ST', '24.900.000', 5, 10, '0', 1, 'tu-lanh-sharp-sj-fx680v-st-190x190.png', 'Kiểu tủ:Tủ lớn - Side by side, 4 cửa\r\nDung tích:678 lít\r\nSố người sử dụng:Trên 7 người\r\nCông nghệ Inverter:Tủ lạnh Inverter\r\nTiện ích:Làm đá nhanh, Bảng điều khiển bên ngoài, Chuông báo cửa mở\r\nCông nghệ làm lạnh:Hệ thống làm lạnh kép Hybrid Cooling\r\nCông nghệ kháng khuẩn khử mùi:Bộ lọc với các phân tử Ag+Cu\r\nCông nghệ bảo quản thực phẩm:Ngăn làm lạnh kép Hybrid cooling giữ lâu thực phẩm\r\nNơi sản xuất:Thái Lan\r\nNăm sản xuất2015'),
(211, 'Tủ lạnh Sharp 601 lít SJ-GF60A-T', '54.990.000', 5, 10, '0', 1, 'tu-lanh-sharp-sj-gf60a-t-daidien--190x190.png', 'Kiểu tủ:Tủ lớn - Side by side, 6 cửa\r\nDung tích:601 lít\r\nSố người sử dụng:Trên 7 người\r\nCông nghệ Inverter:Tủ lạnh Inverter\r\nĐiện tiêu thụ:~ 1.15 kW/ngày\r\nTiện ích:Làm đá tự động, Bảng điều khiển bên ngoài, Cấp đông nhanh\r\nCông nghệ làm lạnh:Gián tiếp\r\nCông nghệ kháng khuẩn khử mùi:Plasmacluster Ion, Bộ khử mùi phân tử bạc Nano Ag+\r\nCông nghệ bảo quản thực phẩm:Làm đông thực phẩm nóng\r\nNơi sản xuất:Nhật Bản\r\nNăm sản xuất:2016'),
(212, 'Tủ lạnh Sharp 196 lít SJ-X201E-DS', '5.590.000', 5, 10, '0', 1, 'tu-lanh-sharp-sj-x201e-ds-190x190.png', 'Kiểu tủ:Ngăn đá trên, 2 cửa\r\nDung tích:196 lít\r\nSố người sử dụng:1 - 3 người\r\nCông nghệ Inverter:Tủ lạnh Inverter\r\nĐiện tiêu thụ:~ 0.66 kW/ngày\r\nCông nghệ làm lạnh:Gián tiếp\r\nCông nghệ kháng khuẩn khử mùi:Bộ lọc với các phân tử Ag+Cu\r\nCông nghệ bảo quản thực phẩm:Ngăn giữ tươi linh hoạt\r\nNơi sản xuất:Thái Lan\r\nNăm sản xuất:2017'),
(213, 'Tủ lạnh Sharp 241 lít SJ-X251E-SL', '6.490.000', 5, 10, '0', 1, 'tu-lanh-sharp-sj-x251e-sl-190x190.png', 'Kiểu tủ:Ngăn đá trên, 2 cửa\r\nDung tích:241 lít\r\nSố người sử dụng:3 - 5 người\r\nCông nghệ Inverter:Tủ lạnh Inverter\r\nĐiện tiêu thụ:~ 0.67 kW/ngày\r\nTiện ích:Làm đá nhanh\r\nCông nghệ làm lạnh:Gián tiếp\r\nCông nghệ kháng khuẩn khử mùi:Bộ lọc với các phân tử Ag+Cu\r\nCông nghệ bảo quản thực phẩm:Ngăn rau quả cân bằng độ ẩm\r\nNơi sản xuất:Thái Lan\r\nNăm sản xuất:2016'),
(214, 'Tủ lạnh Toshiba 505 lít GR-HG55VD', '17.790.000', 6, 10, '0', 1, 'tu-lanh-toshiba-gr-hg55vdz-gg-190x190.png', 'Kiểu tủ:Ngăn đá trên, 2 cửa\r\nDung tích:505 lít\r\nSố người sử dụng:Trên 7 người\r\nCông nghệ Inverter:Tủ lạnh Inverter\r\nĐiện tiêu thụ:~ 1.03 kW/ngày\r\nTiện ích:Ngăn làm lạnh nhanh, Làm đá nhanh, Ngăn kệ có thể thay đổi linh hoạt\r\nCông nghệ làm lạnh:Luồng khí lạnh vòng cung\r\nCông nghệ kháng khuẩn khử mùi:Led Hybrid, Khử mùi tăng cường ở ngăn đông\r\nCông nghệ bảo quản thực phẩm:Ngăn rau củ giữ ẩm đến 90%\r\nNơi sản xuất:Thái Lan\r\nNăm sản xuất:2016'),
(215, 'Tủ lạnh Toshiba 505 lít GR-HG55 XK', '17.790.000', 6, 10, '0', 1, 'tu-lanh-toshiba-gr-hg55vdz-xk-1-190x190.png', 'Kiểu tủ:Ngăn đá trên, 2 cửa\r\nDung tích:505 lít\r\nSố người sử dụng:Trên 7 người\r\nCông nghệ Inverter:Tủ lạnh Inverter\r\nĐiện tiêu thụ:~ 1.03 kW/ngày\r\nTiện ích:Ngăn làm lạnh nhanh, Làm đá nhanh, Ngăn kệ có thể thay đổi linh hoạt\r\nCông nghệ làm lạnh:Luồng khí lạnh vòng cung\r\nCông nghệ kháng khuẩn khử mùi:Led Hybrid, Khử mùi tăng cường ở ngăn đông\r\nCông nghệ bảo quản thực phẩm:Ngăn rau củ giữ ẩm đến 90%\r\nNơi sản xuất:Thái Lan\r\nNăm sản xuất:2016'),
(216, 'Tủ lạnh Toshiba 186 lít GR-M25VMBZ', '6.490.000', 6, 10, '0', 1, 'tu-lanh-toshiba-gr-m25vmbz-ukg-190x190.png', 'Kiểu tủ:Ngăn đá trên, 2 cửa\r\nDung tích:186 lít\r\nSố người sử dụng:3 - 5 người\r\nCông nghệ Inverter:Tủ lạnh Inverter\r\nĐiện tiêu thụ:~0.97 kW/ ngày\r\nTiện ích:Ngăn kệ có thể thay đổi linh hoạt\r\nCông nghệ làm lạnh:Làm lạnh tuần hoàn\r\nCông nghệ kháng khuẩn khử mùi:Hybrid Bio\r\nNơi sản xuất:Thái Lan\r\nNăm sản xuất:2017'),
(217, 'Tủ lạnh Toshiba 330 lít GR-MG39VUBZ', '11.490.000', 6, 10, '0', 1, 'tu-lanh-toshiba-gr-mg39vubz-xk-190x190.png', 'Kiểu tủ:Ngăn đá trên, 2 cửa\r\nDung tích:330 lít\r\nSố người sử dụng:3 - 5 người\r\nCông nghệ Inverter:Tủ lạnh Inverter\r\nTiện ích:Làm lạnh nhanh Dual Cooling Zone, Ngăn kệ có thể thay đổi linh hoạt\r\nCông nghệ làm lạnh:Luồng khí lạnh vòng cung\r\nCông nghệ kháng khuẩn khử mùi:Hybrid Bio, Khử mùi ở ngăn đông\r\nCông nghệ bảo quản thực phẩm:Ngăn làm lạnh kép Dual Cooling Zone\r\nNơi sản xuất:Thái Lan\r\nNăm sản xuất:2017');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`maad`);

--
-- Chỉ mục cho bảng `chitietdonhang`
--
ALTER TABLE `chitietdonhang`
  ADD PRIMARY KEY (`madh`),
  ADD KEY `masp` (`masp`);

--
-- Chỉ mục cho bảng `chitiethoadon`
--
ALTER TABLE `chitiethoadon`
  ADD PRIMARY KEY (`mahd`),
  ADD KEY `masp` (`masp`);

--
-- Chỉ mục cho bảng `donhang`
--
ALTER TABLE `donhang`
  ADD PRIMARY KEY (`madh`),
  ADD KEY `makh` (`makh`);

--
-- Chỉ mục cho bảng `hoadon`
--
ALTER TABLE `hoadon`
  ADD PRIMARY KEY (`mahd`),
  ADD KEY `madh` (`madh`);

--
-- Chỉ mục cho bảng `khachhang`
--
ALTER TABLE `khachhang`
  ADD PRIMARY KEY (`makh`);

--
-- Chỉ mục cho bảng `loaisp`
--
ALTER TABLE `loaisp`
  ADD PRIMARY KEY (`maloai`);

--
-- Chỉ mục cho bảng `nhasx`
--
ALTER TABLE `nhasx`
  ADD PRIMARY KEY (`manhasx`);

--
-- Chỉ mục cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`masp`),
  ADD KEY `maloai` (`maloai`),
  ADD KEY `manhasx` (`manhasx`),
  ADD KEY `maloai_2` (`maloai`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `khachhang`
--
ALTER TABLE `khachhang`
  MODIFY `makh` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT cho bảng `loaisp`
--
ALTER TABLE `loaisp`
  MODIFY `maloai` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `masp` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=218;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
