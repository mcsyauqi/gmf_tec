-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 17, 2018 at 05:27 AM
-- Server version: 10.1.34-MariaDB
-- PHP Version: 7.2.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_gmf`
--

-- --------------------------------------------------------

--
-- Table structure for table `jenis_training`
--

CREATE TABLE `jenis_training` (
  `id` int(255) NOT NULL,
  `nama_training` varchar(300) NOT NULL,
  `id_name` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jenis_training`
--

INSERT INTO `jenis_training` (`id`, `nama_training`, `id_name`) VALUES
(1, 'HUMAN FACTOR', 'HUMAN FACTOR'),
(2, 'CASR,FAR', 'CASR,FAR'),
(3, 'FTS LV.2', 'FTS LV.2'),
(4, 'SMS', 'SMS'),
(5, 'EWIS', 'EWIS'),
(6, 'MODULE 10', 'MODULE 10'),
(7, 'GMF QS', 'GMF QS'),
(8, 'BATK', 'BATK'),
(9, 'BASIC ENG', 'BASIC ENG'),
(10, 'CONT_AIR', 'CONT_AIR');

-- --------------------------------------------------------

--
-- Table structure for table `pegawai`
--

CREATE TABLE `pegawai` (
  `no_peg` int(10) NOT NULL,
  `nama_peg` varchar(50) NOT NULL,
  `dinas` enum('JKTTE','JKTTGW') NOT NULL DEFAULT 'JKTTE',
  `bidang` enum('JKTTEA','JKTTEB','JKTTEC','JKTTED','JKTTEJ','JKTTEL','JKTTEN','JKTTEQ','JKTTER','JKTTEX','JKTTEZ','JKTTE') NOT NULL,
  `unit` enum('TEA-1','TEA-2','TEA-3','TEA-4','TEC-1','TED-1','TED-2','TED-3','TED-4','TED-5','TEL-1','TEL-2','TER-1','TER-2','TER-3','TER-4','TER-5','JKTTEA','JKTTEB','JKTTEC','JKTTED','JKTTEJ','JKTTEL','JKTTEN','JKTTEQ','JKTTER','JKTTEX','JKTTEZ','JKTTE') NOT NULL,
  `jabatan` enum('Development Engineer','Engineering Expert','General Manager','Manager','Secretary','Senior Aircraft Data Officer','Senior Development Engineer','Senior Technical Publication Officer','Technical Publication Officer','Trainee for Development Engineer','Vice President') NOT NULL,
  `pendidikan` varchar(50) NOT NULL DEFAULT '-',
  `tgl_masuk` date NOT NULL,
  `tgl_lahir` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pegawai`
--

INSERT INTO `pegawai` (`no_peg`, `nama_peg`, `dinas`, `bidang`, `unit`, `jabatan`, `pendidikan`, `tgl_masuk`, `tgl_lahir`) VALUES
(0, 'Nuwas', 'JKTTE', 'JKTTED', 'TED-5', 'Secretary', 's1', '2018-09-21', '2018-09-14'),
(519884, 'Siti Royanti', 'JKTTE', 'JKTTED', 'TED-1', 'Senior Aircraft Data Officer', 'SLTA - SMEA', '1984-02-06', '1963-10-05'),
(522776, 'Endro Cahyo', 'JKTTE', 'JKTTED', 'TED-5', 'Manager', 'STRATA 1', '1988-09-15', '1963-12-06'),
(524943, 'Ahadi', 'JKTTE', 'JKTTER', 'TER-5', 'Technical Publication Officer', 'SLTA - SMA', '1991-06-01', '1963-06-23'),
(525307, 'Rona Talakua', 'JKTTE', 'JKTTER', 'TER-5', 'Technical Publication Officer', 'SLTA - SMA', '1990-06-01', '1968-04-12'),
(525723, 'Endik Gunawan', 'JKTTE', 'JKTTEL', 'JKTTEL', 'General Manager', 'STRATA 2', '1991-05-29', '1966-11-07'),
(526912, 'Nurdin Muhamad', 'JKTTE', 'JKTTEL', 'TEL-1', 'Senior Development Engineer', 'STRATA 1', '1992-06-16', '1966-10-20'),
(527264, 'Rosdiana', 'JKTTE', 'JKTTER', 'TER-5', 'Senior Technical Publication Officer', 'SLTA - SMK', '1992-04-16', '1969-03-30'),
(527555, 'Budi Santoso', 'JKTTE', 'JKTTER', 'TER-3', 'Senior Aircraft Data Officer', 'SLTA - SMA', '1992-07-06', '1970-05-20'),
(527556, 'Khalikin', 'JKTTE', 'JKTTER', 'TER-5', 'Senior Technical Publication Officer', 'SLTA - SMEA', '1992-07-06', '1969-05-17'),
(527561, 'Bambang Suryowinarto', 'JKTTE', 'JKTTE', 'JKTTE', 'Vice President', 'STRATA 1', '1993-02-01', '1964-09-30'),
(527563, 'R.Purubojo Soemadi', 'JKTTE', 'JKTTE', 'JKTTE', 'Engineering Expert', 'STRATA 1', '1993-02-01', '1965-03-13'),
(527627, 'Dadang Juanda', 'JKTTE', 'JKTTEA', 'TEA-1', 'Manager', 'SETARA DIPLOMA II', '1993-12-27', '1970-07-23'),
(527722, 'Denny Faizal', 'JKTTE', 'JKTTED', 'TED-5', 'Development Engineer', 'SLTA - SMA', '1992-09-16', '1968-04-02'),
(527736, 'Arman Januarsyah', 'JKTTE', 'JKTTER', 'TER-2', 'Senior Development Engineer', 'STRATA 1', '1993-12-31', '1967-01-25'),
(527830, 'Evita Rosa', 'JKTTE', 'JKTTER', 'TER-5', 'Senior Technical Publication Officer', 'SLTA - SMA', '1992-10-01', '1971-07-13'),
(527941, 'Yudi Priyambodo', 'JKTTE', 'JKTTER', 'TER-2', 'Senior Development Engineer', 'SETARA DIPLOMA II', '1994-04-16', '1967-06-26'),
(528819, 'Nugroho', 'JKTTE', 'JKTTEA', 'JKTTEA', 'Senior Development Engineer', 'STRATA 1', '1993-12-24', '1967-07-08'),
(528822, 'Zuriati', 'JKTTE', 'JKTTEA', 'JKTTEA', 'General Manager', 'STRATA 1', '1993-12-27', '1968-09-17'),
(529216, 'Edy Noerachman', 'JKTTE', 'JKTTER', 'TER-4', 'Manager', 'DIPLOMA III', '1993-12-24', '1970-02-08'),
(530334, 'Endi Harijoso', 'JKTTE', 'JKTTEQ', 'JKTTEQ', 'General Manager', 'STRATA 1', '1994-12-01', '1969-03-17'),
(530336, 'Betran Gerson', 'JKTTE', 'JKTTEA', 'TEA-3', 'Manager', 'STRATA 1', '1994-12-01', '1965-12-02'),
(530337, 'Helmi', 'JKTTE', 'JKTTEA', 'JKTTEA', 'Senior Development Engineer', 'STRATA 1', '1994-12-01', '1969-06-15'),
(530339, 'Eri Rusli', 'JKTTE', 'JKTTEA', 'JKTTEA', 'Senior Development Engineer', 'STRATA 1', '1994-12-01', '1966-07-10'),
(530341, 'Ferdinan Sinaga', 'JKTTE', 'JKTTER', 'JKTTER', 'General Manager', 'STRATA 1', '1994-12-01', '1969-03-17'),
(530346, 'Fordiyanto', 'JKTTE', 'JKTTER', 'TER-5', 'Manager', 'STRATA 1', '1994-12-01', '1968-11-18'),
(530348, 'Arif Sugianto', 'JKTTE', 'JKTTED', 'JKTTED', 'General Manager', 'STRATA 3', '1994-12-01', '1969-03-25'),
(530351, 'Muhammad Noor Eko B.S', 'JKTTE', 'JKTTER', 'TER-2', 'Senior Development Engineer', 'STRATA 1', '1994-12-01', '1965-05-15'),
(530352, 'Ahmad Yani Chumaidhy', 'JKTTE', 'JKTTE', 'JKTTE', 'Engineering Expert', 'STRATA 1', '1994-12-01', '1965-10-02'),
(530354, 'Mochamad Ramdhan  A', 'JKTTE', 'JKTTEA', 'JKTTEA', 'Engineering Expert', 'STRATA 1', '1994-12-01', '1966-01-21'),
(530356, 'Syafrial Hidayat', 'JKTTE', 'JKTTEA', 'TEA-4', 'Engineering Expert', 'STRATA 1', '1994-12-01', '1969-04-30'),
(532013, 'Andriyono Novan Kartoko', 'JKTTE', 'JKTTEJ', 'JKTTEJ', 'General Manager', 'STRATA 1', '2008-12-04', '1979-11-22'),
(532015, 'Mahar Bachtiar Hidayat', 'JKTTE', 'JKTTEN', 'JKTTEN', 'General Manager', 'STRATA 1', '2008-12-04', '1981-01-31'),
(532072, 'Glorianta Sananta Sri', 'JKTTE', 'JKTTEA', 'JKTTEA', 'Engineering Expert', 'STRATA 1', '2009-01-02', '1966-07-21'),
(532135, 'Agus Pribadi Muhardjanto', 'JKTTE', 'JKTTEA', 'JKTTEA', 'Engineering Expert', 'STRATA 1', '2009-02-10', '1965-08-17'),
(532180, 'Nazarullah Ibny', 'JKTTE', 'JKTTED', 'TED-2', 'Manager', 'STRATA 1', '2009-05-11', '1980-07-01'),
(532213, 'Agus Prasetyo Nugroho', 'JKTTE', 'JKTTER', 'TER-1', 'Manager', 'STRATA 1', '2009-06-10', '1983-08-01'),
(532226, 'Fany Fitriani', 'JKTTE', 'JKTTE', 'JKTTE', 'Secretary', 'DIPLOMA III', '2009-08-01', '1982-07-20'),
(532227, 'Purwoko Yuliono', 'JKTTE', 'JKTTEA', 'TEA-2', 'Manager', 'STRATA 1', '2009-08-01', '1977-07-24'),
(532235, 'Firmansyah', 'JKTTE', 'JKTTED', 'TED-1', 'Manager', 'STRATA 2', '2009-08-03', '1982-01-31'),
(532262, 'Prima Edy Setiawan', 'JKTTE', 'JKTTEZ', 'JKTTEZ', 'General Manager', 'STRATA 1', '2009-11-01', '1980-09-13'),
(532275, 'Doddy Triadi Pinilih Enggarsyah', 'JKTTE', 'JKTTER', 'TER-2', 'Manager', 'STRATA 1', '2009-11-01', '1982-05-04'),
(532464, 'Lola Eria', 'JKTTE', 'JKTTER', 'TER-4', 'Senior Technical Publication Officer', 'SLTA - SMK PENERBANGAN', '2010-06-01', '1991-05-10'),
(532793, 'Abdur Rahim', 'JKTTE', 'JKTTEA', 'TEA-4', 'Manager', 'STRATA 2', '2010-08-01', '1976-08-24'),
(532975, 'Arief Suwardiman', 'JKTTE', 'JKTTER', 'TER-3', 'Manager', 'STRATA 1', '2010-11-01', '1976-06-29'),
(532976, 'Diki Hartanto', 'JKTTE', 'JKTTED', 'TED-3', 'Manager', 'STRATA 1', '2010-11-01', '1986-07-03'),
(532977, 'Viona Nauvalisya', 'JKTTE', 'JKTTEA', 'TEC-1', 'Manager', 'STRATA 1', '2010-11-01', '1987-01-03'),
(533056, 'Sulistiana', 'JKTTE', 'JKTTER', 'TER-4', 'Senior Development Engineer', 'STRATA 1', '2011-02-14', '1983-08-11'),
(533079, 'Amrih Setiyono', 'JKTTE', 'JKTTER', 'TER-1', 'Senior Development Engineer', 'STRATA 1', '2011-03-01', '1987-01-30'),
(533084, 'Yoga Seftian Dwianda', 'JKTTE', 'JKTTED', 'TED-4', 'Manager', 'STRATA 1', '2011-03-16', '1986-09-17'),
(533208, 'Aulia Athar', 'JKTTE', 'JKTTEA', 'TEA-3', 'Senior Development Engineer', 'STRATA 1', '2011-05-16', '1985-09-26'),
(533212, 'Bunga Hapsari Aliya Putri', 'JKTTE', 'JKTTEL', 'TEL-1', 'Manager', 'STRATA 1', '2011-05-16', '1987-02-09'),
(533213, 'Hendra Permana', 'JKTTE', 'JKTTEA', 'JKTTEA', 'Senior Development Engineer', 'STRATA 1', '2011-05-16', '1986-02-16'),
(533246, 'Yulian Ari Nugroho', 'JKTTE', 'JKTTER', 'TER-3', 'Senior Development Engineer', 'STRATA 1', '2011-06-01', '1987-07-13'),
(533356, 'Judo Taryanto', 'JKTTE', 'JKTTEA', 'JKTTEA', 'Senior Development Engineer', 'STRATA 1', '2011-07-01', '1981-10-17'),
(533375, 'Fenny Noviatus Syahriyah', 'JKTTE', 'JKTTED', 'TED-2', 'Senior Development Engineer', 'STRATA 1', '2011-07-01', '1988-03-01'),
(580103, 'Aryo Nugroho', 'JKTTE', 'JKTTED', 'TED-3', 'Senior Development Engineer', 'STRATA 1', '2012-05-01', '1989-02-05'),
(580104, 'Denny Indra Purnama', 'JKTTE', 'JKTTEA', 'TEA-1', 'Senior Development Engineer', 'STRATA 1', '2012-05-01', '1987-12-07'),
(580129, 'Yunarko Dwi Wibowo', 'JKTTE', 'JKTTEA', 'TEA-2', 'Senior Development Engineer', 'STRATA 1', '2012-05-01', '1987-06-12'),
(580176, 'Irwan Fauzi', 'JKTTE', 'JKTTE', 'JKTTE', 'Manager', 'STRATA 2', '2012-07-01', '1980-07-01'),
(580177, 'Dahlon Satria Palu', 'JKTTE', 'JKTTER', 'TER-4', 'Senior Development Engineer', 'STRATA 1', '2012-07-01', '1985-05-29'),
(580187, 'Aditya Eka Arisaputra', 'JKTTE', 'JKTTEA', 'TEA-3', 'Senior Development Engineer', 'STRATA 1', '2012-09-13', '1989-09-25'),
(580189, 'Ignatius Danang Saptyadi', 'JKTTE', 'JKTTEL', 'TEL-2', 'Manager', 'STRATA 1', '2012-09-13', '1989-04-15'),
(580202, 'Agib Faruq Afanny', 'JKTTE', 'JKTTEA', 'TEA-3', 'Senior Development Engineer', 'STRATA 1', '2012-11-27', '1989-10-11'),
(580203, 'Raga Raditya Pramono', 'JKTTE', 'JKTTER', 'TER-3', 'Senior Development Engineer', 'STRATA 1', '2012-11-27', '1989-07-04'),
(580204, 'Febrian Fajar Leksmana', 'JKTTE', 'JKTTER', 'TER-1', 'Senior Development Engineer', 'STRATA 1', '2012-11-27', '1988-02-20'),
(580211, 'Byoma Wing Argyoganendro', 'JKTTE', 'JKTTEB', 'JKTTEB', 'General Manager', 'STRATA 2', '2012-12-11', '1986-05-23'),
(580427, 'Muchamad Musyafa\'', 'JKTTE', 'JKTTEX', 'JKTTEX', 'General Manager', 'STRATA 1', '2013-03-05', '1989-10-30'),
(580431, 'Dhany Ahmad Barkah', 'JKTTE', 'JKTTEA', 'TEA-1', 'Senior Development Engineer', 'STRATA 1', '2013-03-25', '1988-05-07'),
(580448, 'Aditya Ginanjar', 'JKTTE', 'JKTTER', 'TER-2', 'Senior Development Engineer', 'STRATA 1', '2013-05-01', '1989-02-23'),
(580449, 'Nadia Fadhila Suryana', 'JKTTE', 'JKTTER', 'TER-5', 'Senior Technical Publication Officer', 'DIPLOMA III', '2013-05-01', '1991-01-13'),
(580470, 'Didit Agus Priyanto', 'JKTTE', 'JKTTEA', 'TEA-4', 'Senior Development Engineer', 'STRATA 1', '2013-08-04', '1989-08-20'),
(580587, 'Davy Febrynzki', 'JKTTE', 'JKTTEA', 'TEA-2', 'Senior Development Engineer', 'STRATA 1', '2013-12-01', '1990-02-19'),
(580588, 'Imanuddin Yahya', 'JKTTE', 'JKTTEA', 'TEA-1', 'Senior Development Engineer', 'STRATA 1', '2013-12-01', '1990-02-02'),
(580590, 'Tika Ayu Nastiti', 'JKTTE', 'JKTTEA', 'TEA-1', 'Senior Development Engineer', 'STRATA 1', '2013-12-16', '1991-03-02'),
(580592, 'Maulana Mulia', 'JKTTE', 'JKTTER', 'TER-2', 'Senior Development Engineer', 'STRATA 1', '2013-12-20', '1989-06-26'),
(580593, 'Nicolaus Bagus Hariaji ', 'JKTTE', 'JKTTER', 'TER-2', 'Senior Development Engineer', 'STRATA 1', '2013-12-20', '1990-08-11'),
(580616, 'Judis Priastono Utama ', 'JKTTE', 'JKTTEA', 'TEA-1', 'Senior Development Engineer', 'STRATA 1', '2014-02-19', '1990-02-08'),
(580625, 'Fendy Kurniawan', 'JKTTE', 'JKTTER', 'TER-4', 'Senior Development Engineer', 'STRATA 1', '2014-03-17', '1987-12-16'),
(580626, 'Candra Tomi Pamungkas ', 'JKTTE', 'JKTTEA', 'TEA-3', 'Senior Development Engineer', 'STRATA 1', '2014-04-01', '1988-10-11'),
(580646, 'Gandhi Mahaputra', 'JKTTE', 'JKTTEA', 'TEA-2', 'Development Engineer', 'STRATA 1', '2015-01-01', '1991-04-02'),
(580739, 'I Gusti Agung Aditya Jaya', 'JKTTE', 'JKTTEA', 'TEA-4', 'Senior Development Engineer', 'STRATA 3', '2014-07-14', '1986-06-13'),
(580743, 'Intan Paramarti Purwanto', 'JKTTE', 'JKTTER', 'TER-1', 'Development Engineer', 'STRATA 2', '2014-07-18', '1990-11-03'),
(580974, 'Sulung Fitrianto', 'JKTTE', 'JKTTER', 'TER-4', 'Senior Development Engineer', 'STRATA 1', '2014-11-01', '1990-04-27'),
(580976, 'Dyah Kartikawati', 'JKTTE', 'JKTTER', 'TER-2', 'Development Engineer', 'STRATA 1', '2014-11-01', '1991-08-05'),
(580977, 'Anindya Devi Ramadhani', 'JKTTE', 'JKTTEA', 'TER-1', 'Senior Development Engineer', 'STRATA 2', '2014-11-01', '1990-04-01'),
(580978, 'Fachmi Yuni Arista', 'JKTTE', 'JKTTEA', 'TEA-4', 'Development Engineer', 'STRATA 1', '2014-11-01', '1991-07-20'),
(581038, 'Syamsurisal', 'JKTTE', 'JKTTEA', 'TEA-1', 'Senior Development Engineer', 'STRATA 1', '2014-12-01', '1990-02-18'),
(581061, 'Danang Budi Ariwibowo', 'JKTTE', 'JKTTER', 'TER-2', 'Development Engineer', 'STRATA 1', '2015-06-01', '1989-10-14'),
(581083, 'Rizka Fadhila Az Zahra', 'JKTTE', 'JKTTED', 'TED-2', 'Development Engineer', 'STRATA 1', '2015-07-01', '1992-04-07'),
(581097, 'Fathiya Ikrimah', 'JKTTE', 'JKTTEA', 'TEA-4', 'Development Engineer', 'STRATA 1', '2015-07-01', '1990-03-07'),
(581098, 'Rutta Ginting', 'JKTTE', 'JKTTEA', 'TEA-2', 'Development Engineer', 'STRATA 1', '2015-07-01', '1991-07-28'),
(581158, 'Hafid Pradithya Jenie', 'JKTTE', 'JKTTED', 'TED-3', 'Senior Development Engineer', 'STRATA 1', '2015-07-01', '1992-05-13'),
(581161, 'Gunawan', 'JKTTE', 'JKTTED', 'TED-3', 'Development Engineer', 'STRATA 1', '2015-08-01', '1992-10-23'),
(581163, 'Monda Perdana', 'JKTTE', 'JKTTED', 'TED-1', 'Development Engineer', 'DIPLOMA III', '2015-08-01', '1989-07-17'),
(581169, 'Ardanti Retnohandini', 'JKTTE', 'JKTTEA', 'TEC-1', 'Development Engineer', 'STRATA 1', '2015-08-01', '1992-08-20'),
(581170, 'Adithya Ramadhan', 'JKTTE', 'JKTTEA', 'TEA-3', 'Development Engineer', 'STRATA 1', '2015-08-01', '1990-04-05'),
(581172, 'Ida Bagus Gede Dharma Dhyaksa', 'JKTTE', 'JKTTED', 'TED-3', 'Development Engineer', 'STRATA 1', '2015-08-01', '1992-04-03'),
(581182, 'Muhammad Rizky Ichwani', 'JKTTE', 'JKTTED', 'TED-2', 'Development Engineer', 'STRATA 1', '2015-10-01', '1991-10-17'),
(581209, 'Muammar Rizky', 'JKTTE', 'JKTTEA', 'TEA-2', 'Development Engineer', 'STRATA 1', '2015-10-01', '1992-04-09'),
(581261, 'Faisal Maulana', 'JKTTE', 'JKTTEA', 'TEA-1', 'Development Engineer', 'STRATA 1', '2015-12-01', '1989-12-30'),
(581279, 'Nanda Perdana Putra', 'JKTTE', 'JKTTER', 'TER-2', 'Development Engineer', 'STRATA 1', '2015-12-01', '1979-03-21'),
(581281, 'Dianika Fachrur Harrys', 'JKTTE', 'JKTTED', 'TED-4', 'Development Engineer', 'STRATA 1', '2015-12-01', '1990-08-07'),
(581282, 'Ongki Budi A', 'JKTTE', 'JKTTEA', 'TEA-4', 'Development Engineer', 'STRATA 2', '2015-12-01', '1989-02-19'),
(581284, 'Rizky Arissandi', 'JKTTE', 'JKTTEA', 'TEA-1', 'Development Engineer', 'STRATA 1', '2015-12-01', '1992-01-13'),
(581304, 'Ruth Velisia Natalia Manik', 'JKTTE', 'JKTTER', 'TER-2', 'Development Engineer', 'STRATA 1', '2015-12-01', '1992-12-09'),
(581305, 'Surya Aditya Chamora', 'JKTTE', 'JKTTEA', 'TEA-4', 'Development Engineer', 'STRATA 2', '2015-12-01', '1990-08-22'),
(581315, 'Satrio Sani Sadewo', 'JKTTE', 'JKTTED', 'TED-1', 'Development Engineer', 'STRATA 1', '2016-01-01', '1992-05-11'),
(581316, 'Gelang Gapuro Adi', 'JKTTE', 'JKTTEA', 'TEA-3', 'Development Engineer', 'STRATA 1', '2016-01-01', '1991-04-11'),
(581318, 'Indra Dwi Hermanto', 'JKTTE', 'JKTTED', 'TED-1', 'Development Engineer', 'STRATA 1', '2016-01-01', '1990-12-17'),
(581319, 'Dito Wijanarko', 'JKTTE', 'JKTTER', 'TER-1', 'Development Engineer', 'STRATA 1', '2016-01-01', '1992-05-24'),
(581334, 'Yudi Anom Priambudi', 'JKTTE', 'JKTTER', 'TEL-1', 'Development Engineer', 'STRATA 1', '2016-02-01', '1990-05-11'),
(581335, 'Yanuar Rizky Pahlevi', 'JKTTE', 'JKTTEL', 'TEL-2', 'Development Engineer', 'STRATA 1', '2016-02-01', '1992-01-06'),
(581336, 'Akbar Suryo Sadarpo', 'JKTTE', 'JKTTEA', 'TEA-2', 'Development Engineer', 'STRATA 1', '2016-02-01', '1991-01-20'),
(581343, 'Nadya Noor Oktarini', 'JKTTE', 'JKTTEA', 'TEA-1', 'Development Engineer', 'STRATA 1', '2016-02-01', '1992-10-04'),
(581344, 'Daniel Hermanto Marpaung', 'JKTTE', 'JKTTEA', 'TEA-1', 'Development Engineer', 'STRATA 1', '2016-02-01', '1991-11-20'),
(581345, 'Rimbo Gano', 'JKTTE', 'JKTTED', 'TED-4', 'Development Engineer', 'STRATA 1', '2016-02-01', '1992-09-17'),
(581531, 'Muhammad Rizqi Wicaksono', 'JKTTE', 'JKTTEA', 'TEA-4', 'Development Engineer', 'STRATA 1', '2016-03-01', '1992-05-26'),
(581536, 'Fransisca T.B Sinaga', 'JKTTE', 'JKTTEA', 'TEA-3', 'Development Engineer', 'STRATA 1', '2016-03-31', '1993-10-08'),
(581599, 'Dody Fanditya Rakhman', 'JKTTE', 'JKTTER', 'TER-3', 'Development Engineer', 'DIPLOMA IV', '2016-06-01', '1992-01-16'),
(581660, 'Retno Dinanti K W', 'JKTTE', 'JKTTEA', 'TEA-2', 'Development Engineer', 'STRATA 2', '2016-07-01', '1989-10-20'),
(581661, 'Muhammad Abdurrafiq', 'JKTTE', 'JKTTEA', 'TEA-1', 'Development Engineer', 'STRATA 1', '2016-07-01', '1992-11-20'),
(581694, 'Ingrid Zafira Harvinia', 'JKTTE', 'JKTTER', 'TER-1', 'Development Engineer', 'STRATA 2', '2016-09-01', '1989-09-10'),
(581695, 'Fahad Arwani', 'JKTTE', 'JKTTEA', 'TEA-3', 'Development Engineer', 'STRATA 1', '2016-08-01', '1992-01-17'),
(581696, 'Dita Febriana', 'JKTTE', 'JKTTEA', 'TEA-1', 'Development Engineer', 'STRATA 1', '2016-08-01', '1992-02-19'),
(581697, 'Fitriani Tresnaputri', 'JKTTE', 'JKTTEA', 'TEA-4', 'Development Engineer', 'STRATA 1', '2016-08-01', '1991-07-06'),
(581698, 'Muhammad Shanizal Hasny', 'JKTTE', 'JKTTED', 'TED-1', 'Development Engineer', 'STRATA 1', '2016-02-15', '1992-03-10'),
(581792, 'Basthiyan Sidqi Fidari R.', 'JKTTE', 'JKTTEA', 'TEA-2', 'Development Engineer', 'STRATA 2', '2016-11-01', '1988-11-08'),
(581794, 'Rahmat Wintoloaji', 'JKTTE', 'JKTTEA', 'TEA-2', 'Development Engineer', 'STRATA 1', '2016-11-01', '1991-05-29'),
(581796, 'Rustam Nur Afendi', 'JKTTE', 'JKTTEA', 'TEA-1', 'Development Engineer', 'STRATA 2', '2016-11-01', '1989-04-03'),
(581803, 'Darren Francis Gregorie Meka', 'JKTTE', 'JKTTEA', 'TEA-4', 'Development Engineer', 'STRATA 2', '2016-11-01', '1992-08-30'),
(581812, 'Riki Rizki', 'JKTTE', 'JKTTER', 'TER-4', 'Development Engineer', 'STRATA 1', '2016-11-01', '1994-09-19'),
(581826, 'Alvien Kurniawan Sosilo', 'JKTTE', 'JKTTER', 'TER-3', 'Development Engineer', 'STRATA 1', '2016-11-01', '1994-09-22'),
(581828, 'Faizal Hafiz Taqriri', 'JKTTE', 'JKTTEA', 'TEA-2', 'Development Engineer', 'STRATA 1', '2016-11-01', '1992-04-16'),
(581829, 'Sri Bayu Agus Prianto', 'JKTTE', 'JKTTED', 'TED-3', 'Development Engineer', 'STRATA 1', '2016-11-01', '1994-04-28'),
(581830, 'Yordian Fachrie', 'JKTTE', 'JKTTEA', 'TEA-1', 'Development Engineer', 'STRATA 1', '2016-11-01', '1993-04-30'),
(581834, 'Mukhamad Aziz', 'JKTTE', 'JKTTEA', 'TEA-3', 'Development Engineer', 'STRATA 2', '2016-11-01', '1991-12-20'),
(581875, 'Dimas Kurniawan', 'JKTTE', 'JKTTEA', 'TEA-1', 'Development Engineer', 'STRATA 1', '2016-12-01', '1992-10-13'),
(581921, 'Dwiki Darmawan', 'JKTTE', 'JKTTEA', 'TEA-1', 'Development Engineer', 'STRATA 1', '2016-12-01', '1992-12-22'),
(581922, 'Lukito Ardhi Nugroho', 'JKTTE', 'JKTTED', 'TED-4', 'Development Engineer', 'STRATA 2', '2016-12-01', '1990-03-06'),
(581923, 'Dimas Aldiandra Adrians', 'JKTTE', 'JKTTEL', 'TEL-1', 'Development Engineer', 'STRATA 1', '2016-12-01', '1993-04-28'),
(581925, 'Bangkit Rachmat Hilca', 'JKTTE', 'JKTTE', 'TEC-1', 'Development Engineer', 'STRATA 2', '2016-12-01', '1989-12-31'),
(581926, 'Gesa Sukmawan', 'JKTTE', 'JKTTED', 'TED-1', 'Development Engineer', 'STRATA 1', '2016-12-01', '1993-10-17'),
(581927, 'Lutfi Havidz Kirantho', 'JKTTE', 'JKTTEA', 'TEA-2', 'Development Engineer', 'STRATA 1', '2017-01-02', '1987-10-29'),
(581928, 'Winaldo Satryadi', 'JKTTE', 'JKTTE', 'TEC-1', 'Development Engineer', 'STRATA 1', '2016-12-01', '1994-06-23'),
(581929, 'Havid Satyaji Nugroho', 'JKTTE', 'JKTTER', 'TER-3', 'Development Engineer', 'STRATA 1', '2016-12-01', '1993-05-16'),
(581930, 'M. Amirullah Akbar', 'JKTTE', 'JKTTE', 'TEC-1', 'Development Engineer', 'STRATA 2', '2016-12-01', '1991-08-24'),
(581931, 'Fanny Ardhy Pratama', 'JKTTE', 'JKTTER', 'TER-4', 'Development Engineer', 'STRATA 1', '2016-12-01', '1991-05-27'),
(581932, 'Taufiq Rachman Hidayat', 'JKTTE', 'JKTTEA', 'TEA-1', 'Development Engineer', 'STRATA 1', '2016-12-01', '1993-08-02'),
(581947, 'Ghufran Haris Suryadi', 'JKTTE', 'JKTTER', 'TER-1', 'Development Engineer', 'STRATA 1', '2017-01-02', '1993-12-11'),
(581952, 'Muhammad Fitrah Sugita', 'JKTTE', 'JKTTEA', 'TEA-1', 'Development Engineer', 'STRATA 1', '2017-01-02', '1987-06-13'),
(581982, 'M. Faisal Winarto', 'JKTTE', 'JKTTER', 'TER-4', 'Development Engineer', 'STRATA 1', '2017-02-01', '1992-01-29'),
(581992, 'Siti Hidayati Mutiara Kurnia', 'JKTTE', 'JKTTER', 'TER-2', 'Development Engineer', 'STRATA 1', '2017-02-01', '1993-02-06'),
(581997, 'Dhanistha Aryaditya', 'JKTTE', 'JKTTE', 'TEC-1', 'Development Engineer', 'STRATA 1', '2017-02-01', '1990-08-30'),
(581998, 'Arjun Kholifatulloh', 'JKTTE', 'JKTTE', 'TEC-1', 'Development Engineer', 'STRATA 1', '2017-03-01', '1993-06-03'),
(582008, 'Moh. Sidharta Yuliarta', 'JKTTE', 'JKTTE', 'TEC-1', 'Development Engineer', 'STRATA 2', '2017-04-01', '1983-07-31'),
(582014, 'Erlangga bin Rudy Sunaryo', 'JKTTE', 'JKTTEA', 'TEA-3', 'Development Engineer', 'STRATA 1', '2017-04-01', '1993-07-01'),
(582044, 'Wanda Andreas Widyatmoko', 'JKTTE', 'JKTTED', 'TED-3', 'Development Engineer', 'STRATA 1', '2017-05-01', '1993-01-20'),
(582068, 'Anugrah Fajar Iqbal Ikhsan', 'JKTTE', 'JKTTEA', 'TEA-2', 'Development Engineer', 'STRATA 1', '2017-05-01', '1993-06-02'),
(582081, 'Aulia Faza', 'JKTTE', 'JKTTEA', 'TEA-4', 'Development Engineer', 'STRATA 2', '2017-05-01', '1993-03-18'),
(582085, 'Martina Widiramdhani', 'JKTTE', 'JKTTE', 'TEC-1', 'Development Engineer', 'STRATA 2', '2017-05-01', '1992-03-14'),
(582094, 'Haditya Wanaputra', 'JKTTE', 'JKTTEA', 'TEA-4', 'Development Engineer', 'STRATA 1', '2017-06-01', '1992-05-03'),
(582151, 'Gita Andhika Swastanto', 'JKTTE', 'JKTTEA', 'TEA-2', 'Development Engineer', 'STRATA 1', '2017-06-01', '1992-07-12'),
(582788, 'Arif F. De Mello', 'JKTTE', 'JKTTE', 'TEC-1', 'Development Engineer', 'STRATA 1', '2018-05-01', '1994-02-02'),
(582790, 'Bisma Kertanegara', 'JKTTE', 'JKTTE', 'TEC-1', 'Development Engineer', 'STRATA 1', '2018-05-01', '1995-07-08'),
(582797, 'Achmad Fathony', 'JKTTE', 'JKTTE', 'TEC-1', 'Development Engineer', 'STRATA 1', '2018-06-01', '1993-10-26'),
(582798, 'Miftahurrohim', 'JKTTE', 'JKTTE', 'TEC-1', 'Development Engineer', 'STRATA 1', '2018-06-01', '1991-10-05'),
(582801, 'Mochammad Nurwanto', 'JKTTE', 'JKTTE', 'TEC-1', 'Development Engineer', 'STRATA 1', '2018-06-01', '1994-10-13'),
(582803, 'Bambang Muhammad Yusup', 'JKTTE', 'JKTTE', 'TEC-1', 'Development Engineer', 'STRATA 1', '2018-06-01', '1995-03-20'),
(582804, 'Sarah Nabilah', 'JKTTE', 'JKTTE', 'TEC-1', 'Development Engineer', 'STRATA 1', '2018-06-01', '1995-12-28'),
(582807, 'Aulia Lazuardi Muhammad', 'JKTTE', 'JKTTE', 'TEC-1', 'Development Engineer', 'STRATA 2', '2018-06-01', '1991-06-21'),
(582810, 'Didit Pringgondani', 'JKTTE', 'JKTTE', 'TEC-1', 'Development Engineer', 'STRATA 1', '2018-06-01', '1994-10-13'),
(582824, 'Dewi Larasati', 'JKTTE', 'JKTTE', 'TEC-1', 'Development Engineer', 'STRATA 1', '2018-06-01', '1995-11-29'),
(582825, 'Selvi Keniapurna', 'JKTTE', 'JKTTE', 'TEC-1', 'Development Engineer', 'STRATA 1', '2018-06-01', '1991-02-07'),
(582876, 'Ahmad Fadli', 'JKTTE', 'JKTTE', 'TEC-1', 'Development Engineer', 'STRATA 1', '2018-07-01', '1994-12-26'),
(582882, 'Eko Priamadi', 'JKTTE', 'JKTTE', 'TEC-1', 'Development Engineer', 'STRATA 2', '2018-08-01', '1989-04-10'),
(582887, 'Faishal Muhammad', 'JKTTE', 'JKTTE', 'TEC-1', 'Development Engineer', 'STRATA 2', '2018-08-01', '1995-10-25'),
(582902, 'Puji Rochmat Kurniadi', 'JKTTE', 'JKTTE', 'TEC-1', 'Development Engineer', 'STRATA 1', '2018-08-01', '1995-05-11'),
(582907, 'Daryo Rahmadi', 'JKTTE', 'JKTTE', 'TEC-1', 'Development Engineer', 'STRATA 1', '2018-09-01', '1995-07-20'),
(582932, 'Danny Eldo', 'JKTTE', 'JKTTE', 'TEC-1', 'Trainee for Development Engineer', 'STRATA 2', '2018-05-07', '1988-04-10'),
(582937, 'Fridam Amruloh Baqarizky', 'JKTTE', 'JKTTE', 'TEC-1', 'Trainee for Development Engineer', 'STRATA 1', '2018-05-07', '1997-08-17'),
(582943, 'Ahmaf Furqan', 'JKTTE', 'JKTTE', 'TEC-1', 'Trainee for Development Engineer', 'STRATA 2', '2018-06-04', '1990-08-23'),
(781297, 'Mardjoko Taryono', 'JKTTE', 'JKTTER', 'TER-2', 'Senior Development Engineer', 'STRATA 1', '2012-05-14', '1956-03-10'),
(782206, 'Mawardi', 'JKTTE', 'JKTTER', 'TER-2', 'Senior Development Engineer', 'STRATA 1', '2015-09-21', '1959-07-28'),
(782391, 'Agus Subekti', 'JKTTE', 'JKTTED', 'TED-2', 'Senior Development Engineer', 'STRATA 1', '1983-10-01', '1960-08-11'),
(782405, 'Aris Mundi Prabowo', 'JKTTE', 'JKTTE', 'JKTTE', 'Engineering Expert', 'STRATA 1', '1989-01-02', '1960-11-27'),
(782407, 'I Gede Nyoman Sudikayasa', 'JKTTE', 'JKTTEA', 'JKTTEA', 'Senior Development Engineer', 'STRATA 1', '2016-12-19', '1967-04-01'),
(782457, 'Barjito', 'JKTTE', 'JKTTEA', 'JKTTEA', 'Engineering Expert', 'STRATA 1', '1983-10-01', '1961-02-10'),
(782506, 'Mega Resty Sudigdo', 'JKTTE', 'JKTTER', 'TEC-1', 'Trainee for Development Engineer', 'STRATA 1', '2018-06-04', '1995-02-10');

-- --------------------------------------------------------

--
-- Table structure for table `training`
--

CREATE TABLE `training` (
  `id_status` int(11) NOT NULL,
  `no_peg` int(10) NOT NULL,
  `done_human` date DEFAULT '0000-00-00',
  `due_human` date DEFAULT '0000-00-00',
  `stat_human` tinyint(1) DEFAULT '1',
  `done_cas` date DEFAULT '0000-00-00',
  `due_cas` date DEFAULT '0000-00-00',
  `stat_cas` tinyint(1) DEFAULT '1',
  `done_fts` date DEFAULT '0000-00-00',
  `stat_fts` tinyint(1) DEFAULT '1',
  `done_sms` date DEFAULT '0000-00-00',
  `stat_sms` tinyint(1) DEFAULT '1',
  `done_ewis` date DEFAULT '0000-00-00',
  `stat_ewis` tinyint(1) DEFAULT '1',
  `done_module` date DEFAULT '0000-00-00',
  `stat_module` tinyint(1) DEFAULT '1',
  `done_gqs` date DEFAULT '0000-00-00',
  `stat_gqs` tinyint(1) DEFAULT '1',
  `done_batk` date DEFAULT '0000-00-00',
  `stat_batk` tinyint(1) DEFAULT '1',
  `done_basic` date DEFAULT '0000-00-00',
  `stat_basic` tinyint(1) DEFAULT '1',
  `done_cont` date DEFAULT '0000-00-00',
  `stat_cont` tinyint(1) DEFAULT '1',
  `done_typer1` date DEFAULT '0000-00-00',
  `stat_typer1` varchar(15) DEFAULT NULL,
  `done_typer2` date DEFAULT '0000-00-00',
  `stat_typer2` varchar(15) DEFAULT NULL,
  `done_typer3` date DEFAULT '0000-00-00',
  `stat_typer3` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `training`
--

INSERT INTO `training` (`id_status`, `no_peg`, `done_human`, `due_human`, `stat_human`, `done_cas`, `due_cas`, `stat_cas`, `done_fts`, `stat_fts`, `done_sms`, `stat_sms`, `done_ewis`, `stat_ewis`, `done_module`, `stat_module`, `done_gqs`, `stat_gqs`, `done_batk`, `stat_batk`, `done_basic`, `stat_basic`, `done_cont`, `stat_cont`, `done_typer1`, `stat_typer1`, `done_typer2`, `stat_typer2`, `done_typer3`, `stat_typer3`) VALUES
(3, 519884, '2016-12-25', '2018-12-24', 4, '2015-03-13', '2017-03-12', 1, '2012-02-15', 1, '2008-12-10', 5, '0000-00-00', 0, '0000-00-00', 4, '0000-00-00', 4, '0000-00-00', 0, '0000-00-00', 0, '0000-00-00', 0, '0000-00-00', '', '0000-00-00', '', '0000-00-00', ''),
(4, 522776, '2017-12-05', '2019-12-04', 5, '2015-03-19', '2017-03-18', 1, '2010-10-26', 5, '2015-08-18', 5, '2015-05-29', 5, '2017-10-24', 5, '0000-00-00', 4, '1989-04-21', 5, '0000-00-00', 0, '0000-00-00', 4, '0000-00-00', '', '0000-00-00', '', '0000-00-00', ''),
(5, 524943, '2017-05-16', '2019-05-15', 5, '2016-10-20', '2018-10-19', 4, '2010-05-25', 5, '2010-02-24', 5, '2017-03-24', 5, '0000-00-00', 4, '0000-00-00', 4, '0000-00-00', 0, '2005-03-15', 5, '0000-00-00', 4, '0000-00-00', '', '0000-00-00', '', '0000-00-00', ''),
(6, 525307, '2017-05-16', '2019-05-15', 5, '0000-00-00', '0000-00-00', 4, '2008-04-22', 5, '2010-02-25', 5, '2017-06-09', 5, '0000-00-00', 4, '2018-06-28', 4, '0000-00-00', 0, '0000-00-00', 0, '0000-00-00', 4, '0000-00-00', '', '0000-00-00', '', '0000-00-00', ''),
(7, 525723, '2017-06-02', '2019-06-01', 5, '2016-08-01', '2018-07-31', 4, '2016-02-10', 5, '2008-02-18', 5, '2015-12-10', 5, '0000-00-00', 4, '2016-08-04', 5, '1992-02-20', 5, '0000-00-00', 0, '1999-02-22', 5, '1993-07-08', 'A300', '0000-00-00', '', '0000-00-00', ''),
(8, 526912, '2017-06-02', '2019-06-01', 5, '2014-12-22', '2016-12-21', 1, '2017-10-11', 5, '2008-08-13', 5, '2014-01-17', 5, '0000-00-00', 4, '0000-00-00', 4, '1992-10-19', 5, '2012-04-16', 5, '0000-00-00', 4, '1994-07-28', '', '0000-00-00', '', '0000-00-00', ''),
(9, 527264, '2017-05-16', '2019-05-15', 5, '2016-08-01', '2018-07-31', 4, '2010-06-25', 5, '2008-07-25', 5, '2016-08-02', 5, '0000-00-00', 4, '2016-08-04', 5, '0000-00-00', 0, '2005-03-15', 5, '0000-00-00', 4, '0000-00-00', '', '0000-00-00', '', '0000-00-00', ''),
(10, 527555, '2018-04-05', '2020-04-04', 5, '2016-09-22', '2018-09-21', 4, '2010-04-30', 5, '2008-06-05', 5, '0000-00-00', 0, '0000-00-00', 4, '0000-00-00', 2, '0000-00-00', 0, '0000-00-00', 0, '0000-00-00', 4, '2016-01-18', 'B737 NG', '0000-00-00', '', '0000-00-00', ''),
(11, 527556, '2017-05-16', '2019-05-15', 5, '2016-08-01', '2018-07-31', 4, '2010-06-03', 5, '2010-02-25', 5, '2016-08-02', 5, '0000-00-00', 4, '2016-08-04', 5, '0000-00-00', 0, '2005-03-15', 5, '2018-03-23', 5, '0000-00-00', '', '0000-00-00', '', '0000-00-00', ''),
(12, 527561, '2017-12-28', '2019-12-27', 5, '2016-08-01', '2018-07-31', 4, '2016-08-05', 5, '2008-02-18', 5, '2016-08-02', 5, '0000-00-00', 4, '2016-08-04', 5, '1993-04-05', 5, '1995-05-17', 5, '1994-05-16', 5, '1994-01-18', 'A300', '0000-00-00', '', '0000-00-00', ''),
(13, 527563, '2018-08-13', '2020-08-12', 5, '2016-10-20', '2018-10-19', 4, '2010-03-19', 5, '2008-07-25', 5, '2013-01-29', 5, '0000-00-00', 4, '0000-00-00', 4, '1993-07-08', 5, '1995-02-23', 5, '1994-07-08', 5, '1994-01-10', 'A300', '0000-00-00', '', '0000-00-00', ''),
(14, 527627, '2017-05-15', '2019-05-14', 5, '2016-08-01', '2018-07-31', 4, '2010-07-07', 5, '2008-03-03', 5, '2016-08-01', 5, '2017-06-22', 5, '2016-08-04', 5, '0000-00-00', 0, '2003-03-28', 5, '2010-10-15', 5, '2003-11-07', 'B737 NG', '1999-09-15', 'B737 CL', '1994-09-29', 'MD11'),
(15, 527722, '2018-03-19', '2020-03-18', 5, '2016-09-22', '2018-09-21', 4, '2015-11-24', 5, '2014-04-11', 5, '2015-11-06', 5, '0000-00-00', 4, '2018-02-28', 5, '0000-00-00', 0, '2015-09-04', 5, '0000-00-00', 4, '0000-00-00', '', '0000-00-00', '', '0000-00-00', ''),
(16, 527736, '2017-05-16', '2019-05-15', 5, '2015-03-13', '2017-03-12', 1, '0000-00-00', 0, '2008-11-14', 5, '2012-04-27', 5, '0000-00-00', 4, '0000-00-00', 4, '0000-00-00', 0, '2012-04-16', 5, '0000-00-00', 4, '2013-12-27', 'A320', '2009-05-01', 'B737 CL', '0000-00-00', ''),
(17, 527830, '2018-02-27', '2020-02-26', 5, '2016-08-01', '2018-07-31', 4, '2010-05-27', 5, '2008-06-05', 5, '2016-08-02', 5, '0000-00-00', 4, '2016-08-04', 5, '0000-00-00', 0, '2005-03-15', 5, '2018-03-23', 5, '0000-00-00', '', '0000-00-00', '', '0000-00-00', ''),
(18, 527941, '2018-04-05', '2020-04-04', 5, '2016-09-22', '2018-09-21', 4, '2010-12-17', 5, '0000-00-00', 5, '2012-07-13', 5, '0000-00-00', 4, '0000-00-00', 4, '0000-00-00', 0, '2015-01-30', 5, '2017-10-13', 5, '1999-03-26', 'B737 CL', '0000-00-00', '', '0000-00-00', ''),
(19, 528819, '2018-04-05', '2020-04-04', 5, '2018-05-03', '2020-05-02', 5, '2010-05-19', 5, '2008-06-05', 5, '2012-06-01', 5, '0000-00-00', 4, '0000-00-00', 4, '1994-09-20', 5, '1995-02-23', 5, '1995-09-15', 5, '2000-10-12', 'B737 CL', '0000-00-00', '', '0000-00-00', ''),
(20, 528822, '2018-04-19', '2020-04-18', 5, '2018-06-01', '2018-05-31', 1, '2016-06-07', 5, '2008-07-25', 5, '2016-06-02', 5, '0000-00-00', 4, '2016-06-07', 5, '1994-09-20', 5, '1995-07-03', 5, '1996-09-16', 5, '2009-11-06', 'A330', '0000-00-00', '', '0000-00-00', ''),
(21, 529216, '2017-05-16', '2019-05-15', 5, '2017-06-08', '2019-06-07', 5, '2010-04-15', 5, '2008-03-03', 5, '2012-06-01', 5, '2017-10-24', 5, '2016-08-04', 5, '1994-09-20', 5, '1996-12-05', 5, '2003-06-19', 5, '2011-10-24', 'B737 NG', '0000-00-00', '', '0000-00-00', ''),
(22, 530334, '2017-06-02', '2019-06-01', 5, '2015-06-17', '2017-06-16', 1, '2010-06-30', 5, '2008-03-03', 5, '2012-04-27', 5, '2017-10-24', 5, '0000-00-00', 4, '1995-12-29', 5, '2006-05-09', 5, '2017-10-13', 5, '1999-11-12', 'A330', '0000-00-00', '', '0000-00-00', ''),
(23, 530336, '2017-05-16', '2019-05-15', 5, '2016-10-20', '2018-10-19', 4, '2010-06-30', 5, '2008-03-03', 5, '2012-06-19', 5, '0000-00-00', 4, '0000-00-00', 4, '1995-03-22', 5, '1995-09-27', 5, '1996-11-08', 5, '2000-06-02', 'B737 CL', '0000-00-00', '', '0000-00-00', ''),
(24, 530337, '2018-01-16', '2020-01-15', 5, '2015-05-12', '2017-05-11', 1, '2010-04-22', 5, '2008-03-03', 5, '2011-12-23', 5, '0000-00-00', 4, '0000-00-00', 4, '1995-03-22', 5, '1996-08-27', 5, '1999-04-14', 5, '2010-05-21', 'B737 NG', '1995-08-25', 'B747', '0000-00-00', ''),
(25, 530339, '2018-04-05', '2020-04-04', 5, '2017-07-24', '2019-07-23', 5, '2010-04-09', 5, '2008-03-03', 5, '2012-06-19', 5, '0000-00-00', 4, '0000-00-00', 4, '1995-07-19', 5, '1995-09-27', 5, '1996-11-08', 5, '2016-01-25', 'A320', '0000-00-00', '', '0000-00-00', ''),
(26, 530341, '2018-04-19', '2020-04-18', 5, '2015-03-17', '2017-03-16', 1, '2010-04-30', 5, '2010-02-25', 5, '2010-02-25', 5, '0000-00-00', 4, '2018-05-25', 5, '1995-04-03', 5, '1995-08-14', 5, '1999-09-20', 5, '1997-09-08', 'A330', '0000-00-00', '', '0000-00-00', ''),
(27, 530346, '2018-04-19', '2020-04-18', 5, '2016-08-01', '2018-07-31', 4, '2010-08-26', 5, '2008-03-03', 5, '2012-01-13', 5, '2017-10-24', 5, '2016-08-04', 5, '1995-07-19', 5, '1995-09-27', 5, '1999-04-14', 5, '2004-03-10', '727-200', '2001-05-30', 'B747', '0000-00-00', ''),
(28, 530348, '2016-12-05', '2018-12-04', 4, '2017-06-08', '2019-06-07', 5, '2010-06-25', 5, '2016-12-05', 5, '2012-04-18', 5, '2018-06-04', 5, '2018-04-20', 5, '1995-10-27', 5, '1996-08-27', 5, '1999-09-20', 5, '1998-04-15', 'B747', '0000-00-00', '', '0000-00-00', ''),
(29, 530351, '2017-05-16', '2019-05-15', 5, '2016-09-22', '2018-09-21', 4, '2010-06-02', 5, '2008-03-03', 5, '2012-02-24', 5, '0000-00-00', 4, '0000-00-00', 4, '1995-10-27', 5, '1997-05-25', 5, '0000-00-00', 4, '1996-10-30', 'B747', '0000-00-00', '', '0000-00-00', ''),
(30, 530352, '2016-11-22', '2018-11-21', 4, '2016-12-27', '2018-12-26', 4, '2010-07-26', 5, '2008-02-18', 5, '2011-06-06', 5, '2014-01-17', 5, '2016-08-04', 5, '1995-10-27', 5, '1996-12-05', 5, '2000-08-25', 5, '2003-05-12', 'A330', '0000-00-00', '', '0000-00-00', ''),
(31, 530354, '2018-04-05', '2020-04-04', 5, '2016-08-01', '2018-07-31', 4, '2010-06-16', 5, '2008-02-18', 5, '2012-06-22', 5, '0000-00-00', 4, '2016-08-04', 5, '1995-10-27', 5, '1996-08-27', 5, '1999-06-25', 5, '1998-07-27', 'B737 CL', '0000-00-00', '', '0000-00-00', ''),
(32, 530356, '2017-07-12', '2019-07-11', 5, '2017-08-01', '2019-07-31', 5, '2015-07-07', 5, '2008-03-03', 5, '2015-07-06', 5, '0000-00-00', 4, '2017-08-03', 5, '1995-07-19', 5, '1995-09-27', 5, '1999-09-07', 5, '2000-09-19', 'B747', '0000-00-00', '', '0000-00-00', ''),
(33, 532013, '2018-04-19', '2020-04-18', 5, '2013-11-08', '2015-11-07', 1, '2011-02-04', 5, '2008-08-01', 5, '2013-02-06', 5, '2018-07-18', 5, '0000-00-00', 4, '0000-00-00', 0, '2012-04-03', 5, '2016-03-04', 5, '2012-07-23', 'CRJ 1000', '0000-00-00', '', '0000-00-00', ''),
(34, 532015, '2016-12-05', '2018-12-04', 4, '2015-05-11', '2017-05-10', 1, '2010-04-15', 5, '2008-07-25', 5, '2012-06-14', 5, '2017-10-24', 5, '2018-04-20', 5, '2011-03-14', 5, '2007-09-12', 5, '2017-10-13', 5, '2010-03-30', 'B737 NG', '0000-00-00', '', '0000-00-00', ''),
(35, 532072, '2018-08-13', '2020-08-12', 5, '2015-05-11', '2017-05-10', 1, '2009-11-05', 5, '2008-07-25', 5, '2012-06-01', 5, '0000-00-00', 4, '0000-00-00', 4, '1993-05-11', 5, '2007-09-12', 5, '0000-00-00', 4, '0000-00-00', '', '0000-00-00', '', '0000-00-00', ''),
(36, 532135, '2018-08-13', '2020-08-12', 5, '2016-10-20', '2018-10-19', 4, '2010-06-25', 5, '2008-07-25', 5, '2011-12-02', 5, '0000-00-00', 4, '0000-00-00', 4, '1993-05-11', 5, '0000-00-00', 0, '0000-00-00', 4, '0000-00-00', '', '0000-00-00', '', '0000-00-00', ''),
(37, 532180, '2018-04-19', '2020-04-18', 5, '2017-03-20', '2019-03-19', 5, '2010-04-22', 5, '2008-08-01', 5, '2017-08-11', 5, '2017-10-24', 5, '0000-00-00', 4, '2011-06-23', 5, '2010-12-10', 5, '2016-03-04', 5, '0000-00-00', '', '0000-00-00', '', '0000-00-00', ''),
(38, 532213, '2018-04-19', '2020-04-18', 5, '2017-06-12', '2019-06-11', 5, '2010-01-27', 5, '2008-08-01', 5, '2011-12-02', 5, '2017-10-24', 5, '0000-00-00', 4, '2009-01-22', 5, '2010-12-10', 5, '2016-02-19', 5, '0000-00-00', '', '0000-00-00', '', '0000-00-00', ''),
(39, 532226, '2017-05-15', '2019-05-14', 5, '0000-00-00', '0000-00-00', 0, '0000-00-00', 0, '2008-11-17', 5, '0000-00-00', 0, '0000-00-00', 0, '0000-00-00', 0, '0000-00-00', 0, '0000-00-00', 0, '0000-00-00', 0, '0000-00-00', '', '0000-00-00', '', '0000-00-00', ''),
(40, 532227, '2017-06-02', '2019-06-01', 5, '2017-07-24', '2019-07-23', 5, '2010-07-21', 5, '2008-08-01', 5, '2012-05-04', 5, '2017-10-24', 5, '2017-07-20', 5, '0000-00-00', 0, '2010-12-10', 5, '2016-02-19', 5, '2009-08-27', 'B737 NG', '0000-00-00', '', '0000-00-00', ''),
(41, 532235, '2017-12-05', '2019-12-04', 5, '2016-09-22', '2018-09-21', 4, '2010-04-15', 5, '2008-11-25', 5, '2012-09-18', 5, '0000-00-00', 4, '0000-00-00', 4, '2010-03-25', 5, '2010-12-10', 5, '2016-02-19', 5, '2012-05-16', 'A330', '0000-00-00', '', '0000-00-00', ''),
(42, 532262, '2018-04-19', '2020-04-18', 5, '2016-08-10', '2018-08-09', 4, '2010-05-27', 5, '2008-11-17', 5, '2012-06-21', 5, '2017-10-24', 5, '0000-00-00', 4, '0000-00-00', 0, '2013-04-26', 5, '2016-02-19', 5, '2009-07-27', 'A330', '0000-00-00', '', '0000-00-00', ''),
(43, 532275, '2017-08-22', '2019-08-21', 5, '2017-06-08', '2019-06-07', 5, '2010-06-09', 5, '2008-11-17', 5, '2011-12-23', 5, '2017-10-24', 5, '0000-00-00', 4, '2011-03-14', 5, '2010-12-10', 5, '2016-03-04', 5, '2010-02-04', 'A330', '0000-00-00', '', '0000-00-00', ''),
(44, 532464, '2014-06-10', '2016-06-09', 1, '2015-10-13', '2017-10-12', 1, '2011-11-21', 5, '2010-04-09', 5, '2013-01-30', 5, '0000-00-00', 4, '0000-00-00', 4, '0000-00-00', 0, '2013-04-26', 5, '0000-00-00', 4, '0000-00-00', '', '0000-00-00', '', '0000-00-00', ''),
(45, 532793, '2018-04-05', '2020-04-04', 5, '2015-03-19', '2017-03-20', 1, '2010-03-17', 5, '2010-02-24', 5, '2012-06-28', 5, '2017-10-24', 5, '2017-07-20', 5, '2011-03-14', 5, '2011-05-06', 5, '2016-02-19', 5, '2017-02-06', 'B787-8/9 ', '0000-00-00', '', '0000-00-00', ''),
(46, 532975, '2017-06-02', '2019-06-01', 5, '2017-06-12', '2019-06-11', 5, '2010-06-10', 5, '2010-02-25', 5, '2012-09-18', 5, '2017-10-24', 5, '2016-08-04', 5, '2011-06-23', 5, '2010-12-10', 5, '2016-02-19', 5, '0000-00-00', '', '0000-00-00', '', '0000-00-00', ''),
(47, 532976, '2018-04-05', '2020-04-04', 5, '2016-08-01', '2018-07-31', 4, '2012-06-14', 5, '2010-02-24', 5, '2015-07-31', 5, '2017-10-24', 5, '2016-08-04', 5, '0000-00-00', 0, '2010-12-10', 5, '0000-00-00', 4, '2012-11-21', 'A320', '0000-00-00', '', '0000-00-00', ''),
(48, 532977, '2016-12-05', '2018-12-04', 4, '2016-08-10', '2018-08-09', 4, '2012-02-15', 5, '2010-02-24', 5, '2011-12-23', 5, '2017-10-24', 5, '0000-00-00', 4, '2011-11-28', 5, '2010-12-10', 5, '2016-05-04', 5, '2011-06-01', 'A330', '0000-00-00', '', '0000-00-00', ''),
(49, 533056, '2018-04-19', '2020-04-18', 5, '2017-03-20', '2019-03-19', 5, '2012-06-14', 5, '2012-02-28', 5, '2015-04-30', 5, '0000-00-00', 4, '0000-00-00', 4, '2011-03-14', 5, '2011-07-29', 5, '2017-10-27', 5, '2014-09-05', 'A330', '0000-00-00', '', '0000-00-00', ''),
(50, 533079, '2018-04-19', '2020-04-18', 5, '2016-11-03', '2018-11-02', 4, '2011-01-07', 5, '2011-02-28', 5, '2012-05-30', 5, '0000-00-00', 4, '2015-05-25', 5, '2011-11-28', 5, '2010-12-10', 5, '2017-10-13', 5, '2012-09-28', 'B737 NG', '0000-00-00', '', '0000-00-00', ''),
(51, 533084, '2016-12-05', '2018-12-04', 4, '2018-06-06', '2020-06-06', 5, '2013-06-26', 5, '2012-02-28', 5, '2015-12-04', 5, '2017-10-24', 5, '0000-00-00', 4, '2011-03-14', 5, '2012-07-06', 5, '2018-06-25', 5, '2012-05-16', 'A330', '0000-00-00', '', '0000-00-00', ''),
(52, 533208, '2018-08-13', '2020-08-12', 5, '2017-08-15', '2019-08-14', 5, '2012-07-11', 5, '2011-02-28', 5, '2012-01-09', 5, '0000-00-00', 4, '0000-00-00', 4, '2011-06-23', 5, '2011-10-24', 5, '2017-10-13', 5, '0000-00-00', '', '0000-00-00', '', '0000-00-00', ''),
(53, 533212, '2016-10-06', '2018-10-05', 4, '2017-03-20', '2019-03-19', 5, '2012-11-28', 5, '2011-02-28', 5, '2012-06-19', 5, '0000-00-00', 4, '0000-00-00', 4, '2011-06-23', 5, '2011-10-24', 5, '2017-11-14', 5, '2014-02-07', 'CRJ 1000', '0000-00-00', '', '0000-00-00', ''),
(54, 533213, '2018-08-13', '2020-08-12', 5, '2016-01-18', '2018-01-17', 1, '2012-03-09', 5, '2011-02-28', 5, '2012-06-25', 5, '0000-00-00', 4, '0000-00-00', 4, '2011-06-23', 5, '2011-10-24', 5, '2016-05-04', 5, '2014-05-23', 'B737 NG', '0000-00-00', '', '0000-00-00', ''),
(55, 533246, '2018-04-05', '2020-04-04', 5, '2017-03-20', '2019-03-19', 5, '2012-06-14', 5, '2011-02-28', 5, '2012-01-13', 5, '0000-00-00', 4, '0000-00-00', 4, '2011-11-28', 5, '2010-12-10', 5, '2017-12-15', 5, '2013-07-29', 'B737 NG', '0000-00-00', '', '0000-00-00', ''),
(56, 533356, '2018-02-22', '2020-02-21', 5, '2018-05-03', '2020-05-02', 5, '2017-05-15', 5, '2011-02-28', 5, '0000-00-00', 4, '0000-00-00', 4, '2018-02-28', 5, '2012-05-24', 5, '2014-09-29', 5, '2018-06-25', 4, '0000-00-00', '', '0000-00-00', '', '0000-00-00', ''),
(57, 533375, '2018-08-13', '2020-08-12', 5, '2016-05-31', '2018-06-01', 1, '2015-04-10', 5, '2012-02-28', 5, '2014-01-02', 5, '0000-00-00', 4, '0000-00-00', 4, '2011-11-28', 5, '2011-05-06', 5, '2017-10-13', 5, '2016-01-25', 'A320', '0000-00-00', '', '0000-00-00', ''),
(58, 580103, '2018-04-05', '2020-04-04', 5, '2017-03-20', '2019-03-19', 5, '2013-04-12', 5, '2012-03-27', 5, '2014-02-21', 5, '0000-00-00', 4, '0000-00-00', 4, '2012-03-05', 5, '2012-07-06', 5, '2017-10-13', 5, '2012-06-19', 'A320', '0000-00-00', '', '0000-00-00', ''),
(59, 580104, '2018-04-05', '2020-04-04', 5, '2017-06-04', '2019-06-03', 5, '2013-06-25', 5, '2012-11-26', 5, '2012-03-26', 5, '2018-07-18', 5, '2018-02-28', 5, '2012-03-05', 5, '2012-07-06', 5, '2017-10-13', 5, '2013-05-24', 'A320', '0000-00-00', '', '0000-00-00', ''),
(60, 580129, '2017-09-27', '2019-09-26', 5, '2016-11-03', '2018-11-02', 4, '2012-11-28', 5, '2012-03-27', 5, '2014-01-17', 5, '0000-00-00', 4, '0000-00-00', 4, '2012-03-05', 5, '2012-07-06', 5, '2018-06-25', 4, '2016-02-29', 'ATR72', '0000-00-00', '', '0000-00-00', ''),
(61, 580176, '2018-04-19', '2020-04-18', 5, '2017-06-06', '2019-06-05', 5, '2015-05-05', 5, '2012-02-29', 5, '2012-02-24', 5, '0000-00-00', 4, '0000-00-00', 4, '2012-05-24', 5, '2012-07-06', 5, '2017-11-14', 5, '2013-01-04', 'B737 NG', '0000-00-00', '', '0000-00-00', ''),
(62, 580177, '2018-02-27', '2020-02-26', 5, '2017-06-12', '2019-06-11', 5, '2012-11-28', 5, '2012-02-28', 5, '2015-06-09', 5, '0000-00-00', 4, '0000-00-00', 4, '2012-05-24', 5, '2012-07-06', 5, '2017-10-27', 5, '2015-09-11', 'B737 NG', '0000-00-00', '', '0000-00-00', ''),
(63, 580187, '2018-04-19', '2020-04-18', 5, '2017-03-20', '2019-03-19', 5, '2012-07-11', 5, '2013-03-19', 5, '2015-09-30', 5, '0000-00-00', 4, '0000-00-00', 4, '2012-05-24', 5, '2012-07-06', 5, '2018-06-25', 4, '2012-11-27', 'A330', '0000-00-00', '', '0000-00-00', ''),
(64, 580189, '2018-05-23', '2020-05-22', 5, '2015-11-06', '2017-11-05', 2, '2013-04-12', 5, '2012-03-27', 5, '2015-11-26', 5, '0000-00-00', 4, '2018-02-28', 5, '2012-11-05', 5, '2012-04-16', 5, '2018-08-02', 4, '2016-07-26', 'B737 NG', '0000-00-00', '', '0000-00-00', ''),
(65, 580202, '2018-08-13', '2020-08-12', 5, '2017-03-20', '2019-03-19', 5, '2013-04-12', 5, '2012-10-02', 5, '2015-09-30', 5, '0000-00-00', 4, '0000-00-00', 4, '2012-08-01', 5, '2013-08-26', 5, '2017-11-14', 5, '2016-01-25', 'A320', '0000-00-00', '', '0000-00-00', ''),
(66, 580203, '2018-04-05', '2020-04-04', 5, '2017-04-17', '2019-04-16', 5, '2013-06-25', 5, '2013-03-19', 5, '2015-03-13', 5, '0000-00-00', 4, '0000-00-00', 4, '2012-08-01', 5, '2013-04-26', 5, '2017-11-14', 5, '2016-09-15', 'ATR72', '0000-00-00', '', '0000-00-00', ''),
(67, 580204, '2016-12-05', '2018-12-04', 4, '2017-06-05', '2019-06-04', 5, '2013-04-12', 5, '2012-10-02', 5, '2014-02-21', 5, '0000-00-00', 4, '2018-08-10', 5, '2012-08-01', 5, '2013-04-26', 5, '2018-03-23', 5, '2016-09-15', 'ATR72', '0000-00-00', '', '0000-00-00', ''),
(68, 580211, '2018-06-07', '2020-06-06', 5, '2017-06-12', '2019-06-11', 5, '2012-07-11', 5, '2012-10-02', 5, '2015-08-13', 5, '2017-10-24', 5, '2018-04-20', 5, '0000-00-00', 0, '2012-07-06', 5, '2017-10-02', 5, '0000-00-00', '', '0000-00-00', '', '0000-00-00', ''),
(69, 580427, '2016-12-05', '2018-10-04', 4, '2017-06-06', '2019-06-05', 5, '2013-04-12', 5, '2013-03-19', 5, '2013-02-01', 5, '2018-07-18', 5, '0000-00-00', 4, '2012-11-05', 5, '2013-04-26', 5, '2017-10-27', 5, '2014-10-31', 'ATR72', '0000-00-00', '', '0000-00-00', ''),
(70, 580431, '2017-05-15', '2019-05-14', 5, '2016-02-17', '2018-02-16', 1, '2013-06-25', 5, '2012-10-02', 5, '2015-05-29', 5, '0000-00-00', 4, '0000-00-00', 4, '2013-02-13', 5, '2013-09-09', 5, '2018-07-09', 5, '2013-04-26', 'B737 NG', '0000-00-00', '', '0000-00-00', ''),
(71, 580448, '2018-04-05', '2020-04-04', 5, '2017-06-06', '2019-06-05', 5, '2013-06-25', 5, '2013-05-24', 5, '2015-10-16', 5, '0000-00-00', 4, '0000-00-00', 4, '2013-02-13', 5, '2013-04-26', 5, '2017-10-27', 5, '2016-01-25', 'B737 NG', '0000-00-00', '', '0000-00-00', ''),
(72, 580449, '2018-04-05', '2020-04-04', 5, '2017-03-20', '2019-03-19', 5, '2013-06-25', 5, '2013-05-24', 5, '2015-11-13', 5, '0000-00-00', 4, '0000-00-00', 4, '2013-02-13', 5, '2013-09-09', 5, '0000-00-00', 4, '2013-03-08', 'CRJ 1000', '0000-00-00', '', '0000-00-00', ''),
(73, 580470, '2016-11-23', '2018-11-22', 4, '2017-04-17', '2019-04-16', 5, '2013-04-12', 5, '2014-02-06', 5, '2015-12-04', 5, '0000-00-00', 4, '0000-00-00', 4, '2014-04-21', 5, '2013-09-09', 5, '2017-10-13', 5, '0000-00-00', '', '0000-00-00', '', '0000-00-00', ''),
(74, 580587, '2017-05-15', '2019-05-14', 5, '2015-03-12', '2017-03-11', 1, '2013-01-01', 5, '2014-06-23', 5, '2013-06-01', 5, '0000-00-00', 4, '2018-02-28', 5, '2014-04-21', 5, '2014-09-29', 5, '0000-00-00', 4, '2016-12-06', 'B737 NG', '0000-00-00', '', '0000-00-00', ''),
(75, 580588, '2017-05-15', '2019-05-14', 5, '2016-08-27', '2018-08-26', 4, '2015-04-10', 5, '2014-02-06', 5, '2015-05-22', 5, '0000-00-00', 4, '0000-00-00', 4, '2014-04-21', 5, '2013-09-09', 5, '2017-10-27', 5, '0000-00-00', '', '0000-00-00', '', '0000-00-00', ''),
(76, 580590, '2017-05-15', '2019-05-14', 5, '2016-09-15', '2018-09-14', 4, '2014-01-01', 5, '2014-02-06', 5, '2015-12-11', 5, '2018-08-15', 5, '2018-07-10', 5, '2014-04-21', 5, '2013-09-09', 5, '2017-10-27', 5, '2016-01-25', 'A320', '0000-00-00', '', '0000-00-00', ''),
(77, 580592, '2017-12-14', '2019-12-13', 5, '2017-06-06', '2019-06-05', 5, '2015-10-05', 5, '2014-02-06', 5, '2015-03-27', 5, '0000-00-00', 4, '0000-00-00', 4, '2014-04-21', 5, '2014-09-29', 5, '0000-00-00', 4, '2015-01-23', 'ATR72', '0000-00-00', '', '0000-00-00', ''),
(78, 580593, '2017-05-16', '2019-05-15', 5, '2017-06-12', '2019-06-11', 5, '2015-10-05', 5, '2014-02-06', 5, '2015-10-27', 5, '0000-00-00', 4, '2018-06-28', 4, '2014-04-21', 5, '2013-09-09', 5, '0000-00-00', 4, '2015-03-06', 'CRJ 1000', '0000-00-00', '', '0000-00-00', ''),
(79, 580616, '2017-09-26', '2019-09-25', 5, '0000-00-00', '0000-00-00', 4, '2015-05-05', 5, '2014-02-06', 5, '2015-05-22', 5, '0000-00-00', 4, '2018-02-28', 5, '2014-04-21', 5, '2014-09-29', 5, '2017-10-13', 5, '2016-04-12', 'A330', '0000-00-00', '', '0000-00-00', ''),
(80, 580625, '2017-12-20', '2019-12-19', 5, '2017-03-20', '2019-03-19', 5, '2014-01-23', 5, '2014-02-06', 5, '2015-12-04', 5, '0000-00-00', 4, '0000-00-00', 4, '2014-04-21', 5, '2014-09-29', 5, '2017-10-27', 5, '2014-12-12', 'A320', '0000-00-00', '', '0000-00-00', ''),
(81, 580626, '2018-04-05', '2020-04-04', 5, '2017-06-06', '2019-06-05', 5, '2015-11-24', 5, '2014-02-06', 5, '2015-08-28', 5, '0000-00-00', 4, '0000-00-00', 4, '2014-04-21', 5, '2014-09-29', 5, '2018-07-09', 5, '2016-04-06', 'A320', '0000-00-00', '', '0000-00-00', ''),
(82, 580646, '2018-01-16', '2020-01-15', 5, '2017-01-09', '2019-01-08', 5, '2015-04-10', 5, '2014-02-06', 5, '2015-03-03', 5, '0000-00-00', 4, '0000-00-00', 4, '2014-08-13', 5, '2014-02-28', 5, '0000-00-00', 4, '0000-00-00', '', '0000-00-00', '', '0000-00-00', ''),
(83, 580739, '2018-04-19', '2020-04-18', 5, '2017-06-08', '2019-06-07', 5, '2016-03-21', 5, '2014-02-06', 5, '2017-01-20', 5, '0000-00-00', 4, '0000-00-00', 4, '0000-00-00', 0, '2014-02-28', 5, '0000-00-00', 4, '0000-00-00', '', '0000-00-00', '', '0000-00-00', ''),
(84, 580743, '2018-04-25', '2020-04-24', 5, '2017-04-17', '2019-04-16', 5, '2015-11-24', 5, '2014-02-06', 5, '2015-03-31', 5, '0000-00-00', 4, '0000-00-00', 4, '2014-08-13', 5, '2014-02-28', 5, '0000-00-00', 4, '2015-03-27', 'A330', '0000-00-00', '', '0000-00-00', ''),
(85, 580974, '2017-09-26', '2019-09-25', 5, '2017-06-06', '2019-06-05', 5, '2015-11-24', 5, '2014-06-23', 5, '2018-02-23', 5, '0000-00-00', 4, '2018-02-28', 5, '2015-02-05', 5, '2014-09-29', 5, '2017-12-15', 5, '0000-00-00', '', '0000-00-00', '', '0000-00-00', ''),
(86, 580976, '2017-01-10', '2019-01-09', 5, '2017-01-10', '2019-01-09', 5, '2015-11-19', 5, '2016-01-11', 5, '2015-11-13', 5, '0000-00-00', 4, '0000-00-00', 4, '2014-11-09', 5, '2014-09-29', 5, '0000-00-00', 4, '2016-02-17', 'A330', '0000-00-00', '', '0000-00-00', ''),
(87, 580977, '2017-01-10', '2019-01-09', 5, '2016-10-24', '2018-10-23', 4, '2016-02-10', 5, '2016-01-11', 5, '2015-12-04', 5, '2018-08-15', 5, '0000-00-00', 4, '2015-02-05', 5, '2014-09-29', 5, '2017-11-14', 5, '2015-11-27', 'B737 NG', '0000-00-00', '', '0000-00-00', ''),
(88, 580978, '2017-01-10', '2019-01-09', 5, '2016-11-28', '2018-11-27', 4, '2015-11-24', 5, '2016-01-11', 5, '2015-06-09', 5, '0000-00-00', 4, '0000-00-00', 4, '2014-08-13', 5, '2014-09-29', 5, '2018-07-09', 5, '2016-07-26', 'B737 NG', '0000-00-00', '', '0000-00-00', ''),
(89, 581038, '2017-01-10', '2019-01-09', 5, '2017-03-20', '2019-03-19', 5, '2015-11-24', 5, '2014-11-14', 5, '2015-03-31', 5, '2018-07-18', 5, '0000-00-00', 4, '0000-00-00', 0, '2014-09-29', 5, '2018-03-23', 5, '2017-07-25', 'A330', '0000-00-00', '', '0000-00-00', ''),
(90, 581061, '2017-03-14', '2019-03-13', 5, '2017-06-06', '2019-06-05', 5, '2016-03-21', 5, '2015-02-11', 5, '2016-10-14', 5, '0000-00-00', 4, '0000-00-00', 4, '2015-07-03', 5, '2015-01-30', 5, '0000-00-00', 4, '2015-12-09', 'A320', '0000-00-00', '', '0000-00-00', ''),
(91, 581083, '2017-03-14', '2019-03-13', 5, '2017-06-06', '2019-06-05', 5, '2015-11-19', 5, '2015-01-21', 5, '2015-12-04', 5, '0000-00-00', 4, '2018-02-28', 5, '2015-11-02', 5, '2015-01-30', 5, '2017-10-27', 5, '0000-00-00', '', '0000-00-00', '', '0000-00-00', ''),
(92, 581097, '2017-04-25', '2019-04-24', 5, '2017-06-06', '2019-06-05', 5, '2015-11-24', 5, '2015-02-11', 5, '2015-10-27', 5, '0000-00-00', 4, '0000-00-00', 4, '0000-00-00', 0, '2015-01-30', 5, '0000-00-00', 4, '2016-02-15', 'A320', '0000-00-00', '', '0000-00-00', ''),
(93, 581098, '2017-01-10', '2019-01-09', 5, '2017-06-06', '2019-06-05', 5, '2015-11-24', 5, '2015-02-11', 5, '2015-12-04', 5, '0000-00-00', 4, '2018-06-28', 4, '2015-11-02', 5, '2015-01-30', 5, '2017-10-27', 5, '2016-01-25', 'A320', '0000-00-00', '', '0000-00-00', ''),
(94, 581158, '2017-01-10', '2019-01-09', 5, '2017-03-20', '2019-03-19', 5, '2015-11-24', 5, '2015-02-11', 5, '2018-06-08', 5, '0000-00-00', 4, '0000-00-00', 4, '2018-09-03', 4, '2015-01-30', 5, '0000-00-00', 4, '0000-00-00', '', '0000-00-00', '', '0000-00-00', ''),
(95, 581161, '2017-01-10', '2019-01-09', 5, '2017-06-06', '2019-06-05', 5, '2015-11-24', 5, '2015-02-11', 5, '2018-02-23', 5, '0000-00-00', 4, '0000-00-00', 4, '2016-02-19', 5, '2015-04-06', 5, '2017-11-14', 5, '2016-10-03', 'CRJ 1000', '0000-00-00', '', '0000-00-00', ''),
(96, 581163, '2018-04-05', '2020-04-04', 5, '2017-06-06', '2019-06-05', 5, '2015-11-19', 5, '2015-02-11', 5, '2016-10-14', 5, '0000-00-00', 4, '2018-06-28', 4, '2016-02-09', 5, '2015-04-06', 5, '2017-10-27', 5, '2016-07-26', 'B737 NG', '0000-00-00', '', '0000-00-00', ''),
(97, 581169, '2017-04-26', '2019-04-25', 5, '2017-06-06', '2019-06-05', 5, '2015-11-24', 5, '2015-02-11', 5, '2017-01-20', 5, '0000-00-00', 4, '2018-02-28', 5, '2017-11-30', 5, '2015-04-06', 5, '0000-00-00', 4, '2018-06-25', 'A330', '0000-00-00', '', '0000-00-00', ''),
(98, 581170, '2017-08-22', '2019-08-21', 5, '2017-06-08', '2019-06-07', 5, '2015-11-24', 5, '2015-03-20', 5, '2015-12-04', 5, '0000-00-00', 4, '0000-00-00', 4, '2015-11-02', 5, '2015-04-06', 5, '2018-07-09', 5, '2016-09-15', 'ATR72', '0000-00-00', '', '0000-00-00', ''),
(99, 581172, '2017-04-26', '2019-04-25', 5, '2017-06-08', '2019-06-07', 5, '2015-11-19', 5, '2015-02-11', 5, '2016-10-14', 5, '0000-00-00', 4, '2018-08-10', 5, '2016-02-09', 5, '2015-04-06', 5, '0000-00-00', 4, '2016-08-11', 'ATR72', '0000-00-00', '', '0000-00-00', ''),
(100, 581182, '2017-04-26', '2019-04-25', 5, '2017-06-08', '2019-06-07', 5, '2015-11-19', 5, '2015-04-13', 5, '2015-12-04', 5, '0000-00-00', 4, '0000-00-00', 4, '2015-07-03', 5, '2015-10-30', 5, '2018-03-23', 5, '2016-02-29', 'ATR72', '0000-00-00', '', '0000-00-00', ''),
(101, 581209, '2017-04-13', '2019-04-12', 5, '2017-06-08', '2019-06-07', 5, '2015-11-24', 5, '2015-05-26', 5, '2016-06-03', 5, '0000-00-00', 4, '0000-00-00', 4, '2016-02-09', 5, '2015-10-19', 5, '2018-03-23', 5, '2016-11-09', 'A330', '0000-00-00', '', '0000-00-00', ''),
(102, 581261, '2017-07-13', '2019-07-12', 5, '2017-06-08', '2019-06-07', 5, '2015-11-19', 5, '2015-05-26', 5, '2015-10-16', 5, '0000-00-00', 4, '2018-02-28', 5, '2016-02-09', 5, '2015-06-26', 5, '2017-12-15', 5, '0000-00-00', '', '0000-00-00', '', '0000-00-00', ''),
(103, 581279, '2018-04-05', '2020-04-04', 5, '2017-06-08', '2019-06-07', 5, '2015-11-24', 5, '2016-05-26', 5, '2015-12-11', 5, '0000-00-00', 4, '0000-00-00', 4, '0000-00-00', 0, '2015-06-26', 5, '2017-11-14', 5, '2016-11-09', 'A330', '0000-00-00', '', '0000-00-00', ''),
(104, 581281, '2017-08-23', '2019-08-22', 5, '2017-06-06', '2019-06-05', 5, '2016-03-21', 5, '2015-08-18', 5, '2016-12-09', 5, '0000-00-00', 4, '2018-05-25', 5, '2016-02-09', 5, '2015-06-26', 5, '2017-12-15', 5, '0000-00-00', '', '0000-00-00', '', '0000-00-00', ''),
(105, 581282, '2017-07-13', '2019-07-12', 5, '2017-06-08', '2019-06-07', 5, '2015-11-24', 5, '2015-08-18', 5, '2015-12-04', 5, '0000-00-00', 4, '2018-02-28', 5, '2016-11-30', 5, '2015-06-26', 5, '2017-10-27', 5, '2017-04-11', 'A320', '0000-00-00', '', '0000-00-00', ''),
(106, 581284, '2017-01-23', '2019-01-22', 5, '2017-06-06', '2019-06-05', 5, '2015-11-24', 5, '2015-08-18', 5, '2015-12-04', 5, '0000-00-00', 4, '0000-00-00', 4, '2016-06-17', 5, '2015-06-26', 5, '2018-07-09', 5, '2016-03-16', 'CRJ 1000', '0000-00-00', '', '0000-00-00', ''),
(107, 581304, '2017-12-14', '2019-12-13', 5, '2017-06-08', '2019-06-07', 5, '2015-11-24', 5, '2015-08-18', 5, '2017-01-20', 5, '0000-00-00', 4, '0000-00-00', 4, '2016-02-09', 5, '2015-06-26', 5, '0000-00-00', 4, '0000-00-00', '', '0000-00-00', '', '0000-00-00', ''),
(108, 581305, '2017-07-20', '2019-07-19', 5, '2017-06-08', '2019-06-07', 5, '2015-11-19', 5, '2015-08-18', 5, '2016-04-26', 5, '0000-00-00', 4, '2018-06-28', 4, '0000-00-00', 4, '2015-06-26', 5, '2017-12-15', 5, '0000-00-00', '', '0000-00-00', '', '0000-00-00', ''),
(109, 581315, '2017-12-05', '2019-12-04', 5, '2017-06-08', '2019-06-07', 5, '2015-11-24', 5, '2015-08-18', 5, '2015-12-04', 5, '0000-00-00', 4, '0000-00-00', 4, '2016-04-15', 5, '2015-09-04', 5, '2017-11-14', 5, '2016-10-19', 'A320', '0000-00-00', '', '0000-00-00', ''),
(110, 581316, '2017-12-05', '2019-12-04', 5, '2017-06-08', '2019-06-07', 5, '2015-11-19', 5, '2015-08-18', 5, '2016-12-09', 5, '0000-00-00', 4, '0000-00-00', 4, '2016-02-09', 5, '2015-09-04', 5, '2018-07-09', 5, '2016-09-26', 'B787-8/9 ', '0000-00-00', '', '0000-00-00', ''),
(111, 581318, '2017-12-05', '2019-12-04', 5, '2017-06-08', '2019-06-07', 5, '2015-11-24', 5, '2015-08-18', 5, '2015-12-04', 5, '0000-00-00', 4, '0000-00-00', 4, '2016-09-16', 5, '2015-09-04', 5, '2017-11-14', 5, '2016-01-25', 'A320', '0000-00-00', '', '0000-00-00', ''),
(112, 581319, '2017-12-05', '2019-12-04', 5, '2017-06-12', '2019-06-11', 5, '2015-11-24', 5, '2015-08-18', 5, '2017-04-21', 5, '0000-00-00', 4, '2018-02-28', 5, '2015-12-02', 5, '2015-09-04', 5, '2018-06-25', 4, '2016-10-12', 'A320', '0000-00-00', '', '0000-00-00', ''),
(113, 581334, '2017-09-26', '2019-09-25', 5, '2017-06-12', '2019-06-11', 5, '2015-11-19', 5, '2015-09-23', 5, '2016-12-09', 5, '0000-00-00', 4, '2018-05-25', 4, '2016-02-09', 5, '2015-10-30', 5, '2018-03-23', 5, '2016-02-17', 'A330', '0000-00-00', '', '0000-00-00', ''),
(114, 581335, '2017-09-26', '2019-09-25', 5, '2017-08-03', '2019-08-02', 5, '2015-11-24', 5, '2015-09-23', 5, '2015-12-04', 5, '0000-00-00', 4, '2018-02-28', 5, '2016-09-16', 5, '2015-10-30', 5, '2018-03-23', 5, '2016-01-25', 'A320', '0000-00-00', '', '0000-00-00', ''),
(115, 581336, '2018-01-23', '2020-01-22', 5, '2017-01-09', '2019-01-08', 5, '2015-11-19', 5, '2015-09-23', 5, '2016-06-03', 5, '0000-00-00', 4, '0000-00-00', 4, '2016-02-09', 5, '2015-10-29', 5, '2017-12-15', 5, '2016-11-09', 'A330', '0000-00-00', '', '0000-00-00', ''),
(116, 581343, '2017-12-14', '2019-12-13', 5, '2016-11-28', '2018-11-27', 4, '2015-11-19', 5, '2016-02-10', 5, '2015-11-13', 5, '0000-00-00', 4, '2018-07-11', 5, '2016-02-09', 5, '2015-09-04', 5, '2017-11-14', 5, '0000-00-00', '', '0000-00-00', '', '0000-00-00', ''),
(117, 581344, '2018-01-23', '2020-01-22', 5, '2017-03-20', '2019-03-19', 5, '2015-11-19', 5, '2015-08-18', 5, '2015-11-13', 5, '0000-00-00', 4, '2018-06-28', 5, '2016-02-09', 5, '2015-09-04', 5, '2017-12-15', 5, '0000-00-00', '', '0000-00-00', '', '0000-00-00', ''),
(118, 581345, '2017-10-17', '2019-10-16', 5, '2017-06-08', '2019-06-07', 5, '2015-11-24', 5, '2015-08-18', 5, '2015-12-04', 5, '0000-00-00', 4, '2018-02-28', 5, '2016-06-17', 5, '2015-10-30', 5, '2018-07-09', 5, '2016-09-30', 'B737 NG', '0000-00-00', '', '0000-00-00', ''),
(119, 581531, '2017-12-20', '2019-12-19', 5, '2017-06-12', '2019-06-11', 5, '2015-11-19', 5, '2016-06-28', 5, '2016-01-08', 5, '0000-00-00', 4, '0000-00-00', 4, '2016-09-16', 5, '2015-10-30', 5, '2018-06-25', 4, '2016-01-25', 'A320', '0000-00-00', '', '0000-00-00', ''),
(120, 581536, '2018-02-27', '2020-02-26', 5, '2018-06-07', '2020-06-06', 5, '2018-04-26', 5, '2016-01-26', 5, '0000-00-00', 4, '0000-00-00', 4, '2018-02-28', 5, '0000-00-00', 4, '0000-00-00', 2, '2017-12-15', 5, '0000-00-00', '', '0000-00-00', '', '0000-00-00', ''),
(121, 581599, '2018-04-19', '2020-04-18', 5, '2017-09-15', '2019-09-14', 5, '2016-03-21', 5, '2016-02-10', 5, '2016-08-26', 5, '0000-00-00', 4, '2018-02-28', 5, '2016-02-09', 5, '2016-05-04', 5, '0000-00-00', 4, '2016-10-12', 'A320', '0000-00-00', '', '0000-00-00', ''),
(122, 581660, '2018-03-19', '2020-03-18', 5, '2017-06-12', '2019-06-11', 5, '2016-06-02', 5, '2016-02-10', 5, '2016-04-25', 5, '0000-00-00', 4, '2018-02-28', 5, '2016-04-15', 5, '2016-01-11', 5, '2017-11-14', 5, '2016-07-26', 'B737 NG', '0000-00-00', '', '0000-00-00', ''),
(123, 581661, '2018-04-19', '2020-04-18', 5, '2016-09-27', '2018-09-26', 4, '2016-06-02', 5, '2016-05-11', 5, '2016-08-26', 5, '0000-00-00', 4, '0000-00-00', 4, '2016-11-30', 5, '2016-01-11', 5, '0000-00-00', 4, '2016-01-25', 'A320', '0000-00-00', '', '0000-00-00', ''),
(124, 581694, '2018-04-25', '2020-04-24', 5, '2017-07-24', '2019-07-23', 5, '2016-03-31', 5, '2016-06-28', 5, '2016-03-24', 5, '0000-00-00', 4, '0000-00-00', 4, '2016-04-20', 5, '2016-12-02', 5, '0000-00-00', 4, '2016-07-06', 'B737 NG', '0000-00-00', '', '0000-00-00', ''),
(125, 581695, '2018-04-19', '2020-04-18', 5, '2017-06-12', '2019-06-11', 5, '2016-03-21', 5, '2016-06-28', 5, '2016-07-29', 5, '0000-00-00', 4, '2018-06-28', 5, '2016-06-17', 5, '2017-03-13', 5, '0000-00-00', 4, '2016-09-30', 'B737 NG', '0000-00-00', '', '0000-00-00', ''),
(126, 581696, '2018-04-05', '2020-04-04', 5, '2017-06-08', '2019-06-07', 5, '2016-03-08', 5, '2016-04-20', 5, '2016-09-27', 5, '0000-00-00', 4, '0000-00-00', 4, '2016-11-30', 5, '2016-05-04', 5, '2017-11-14', 5, '2016-07-26', 'B737 NG', '0000-00-00', '', '0000-00-00', ''),
(127, 581697, '2018-04-25', '2020-04-05', 5, '2017-06-12', '2019-06-11', 5, '2016-03-31', 5, '2016-06-28', 5, '2016-03-24', 5, '0000-00-00', 4, '2018-02-28', 5, '2016-06-17', 5, '2016-12-02', 5, '2017-12-15', 5, '2016-07-26', 'B737 NG', '0000-00-00', '', '0000-00-00', ''),
(128, 581698, '2018-04-05', '2020-04-06', 5, '2017-06-12', '2019-06-11', 5, '2016-03-08', 5, '2016-06-28', 5, '2016-08-26', 5, '0000-00-00', 4, '0000-00-00', 4, '2016-06-17', 5, '2016-12-02', 5, '2017-12-15', 5, '2016-09-15', 'ATR72', '0000-00-00', '', '0000-00-00', ''),
(129, 581792, '2016-11-18', '2020-04-07', 4, '2017-06-12', '2019-06-11', 5, '2016-05-16', 5, '2016-06-28', 5, '2016-12-16', 5, '0000-00-00', 4, '0000-00-00', 4, '2016-09-16', 5, '2016-12-02', 5, '0000-00-00', 4, '0000-00-00', '', '0000-00-00', '', '0000-00-00', ''),
(130, 581794, '2016-11-18', '2020-04-08', 4, '2017-06-12', '2019-06-11', 5, '2016-06-03', 5, '2017-02-24', 5, '2016-07-19', 5, '0000-00-00', 4, '0000-00-00', 4, '2016-09-16', 5, '2017-03-13', 5, '0000-00-00', 4, '2016-11-23', 'ATR72', '0000-00-00', '', '0000-00-00', ''),
(131, 581796, '2017-01-18', '2020-04-09', 5, '2017-09-14', '2019-09-13', 5, '2016-05-16', 5, '2016-06-28', 5, '2016-11-11', 5, '0000-00-00', 4, '0000-00-00', 4, '2016-09-16', 5, '2016-12-02', 5, '2018-03-23', 5, '2017-05-16', 'B737 NG', '0000-00-00', '', '0000-00-00', ''),
(132, 581803, '2016-12-10', '2020-04-10', 4, '2016-01-26', '2018-01-25', 1, '2016-05-17', 5, '2016-06-28', 5, '2016-09-27', 5, '0000-00-00', 4, '0000-00-00', 4, '2016-11-30', 5, '2017-08-21', 5, '0000-00-00', 4, '2016-07-26', 'B737 NG', '0000-00-00', '', '0000-00-00', ''),
(133, 581812, '2016-11-18', '2020-04-11', 4, '2017-04-17', '2019-04-16', 5, '2016-06-03', 5, '2016-10-18', 5, '2016-11-11', 5, '0000-00-00', 4, '2018-07-10', 5, '2016-09-15', 5, '2016-12-02', 5, '0000-00-00', 4, '0000-00-00', '', '0000-00-00', '', '0000-00-00', ''),
(134, 581826, '2018-04-19', '2020-04-12', 5, '2016-02-27', '2018-02-26', 1, '2016-08-02', 5, '2016-07-25', 5, '2016-11-11', 5, '0000-00-00', 4, '0000-00-00', 4, '2017-02-14', 5, '2016-10-28', 5, '0000-00-00', 4, '2017-09-05', 'A330', '0000-00-00', '', '0000-00-00', ''),
(135, 581828, '2018-08-13', '2020-04-13', 5, '2017-04-17', '2019-04-16', 5, '2017-02-16', 5, '2016-11-17', 5, '2016-07-19', 5, '0000-00-00', 4, '0000-00-00', 4, '2016-09-16', 5, '2016-10-28', 5, '0000-00-00', 4, '2018-04-27', 'ATR72', '0000-00-00', '', '0000-00-00', ''),
(136, 581829, '2018-04-19', '2020-04-14', 5, '2016-09-15', '2018-09-14', 4, '2016-08-02', 5, '2016-07-25', 5, '2016-08-26', 5, '2018-08-15', 5, '0000-00-00', 4, '2017-02-14', 5, '2016-10-28', 5, '0000-00-00', 4, '2017-03-22', 'A330', '0000-00-00', '', '0000-00-00', ''),
(137, 581830, '2017-03-10', '2020-04-15', 5, '2017-06-06', '2019-06-05', 5, '2016-06-27', 5, '2017-02-24', 5, '2017-03-07', 5, '0000-00-00', 4, '0000-00-00', 4, '2016-09-16', 5, '2017-03-13', 5, '0000-00-00', 4, '2016-11-23', 'ATR72', '0000-00-00', '', '0000-00-00', ''),
(138, 581834, '2018-04-19', '2020-04-16', 5, '2017-06-13', '2019-06-12', 5, '2016-06-27', 5, '2016-07-25', 5, '2016-07-19', 5, '0000-00-00', 4, '0000-00-00', 4, '2017-02-14', 5, '2016-12-02', 5, '0000-00-00', 4, '2017-05-10', 'B777', '0000-00-00', '', '0000-00-00', ''),
(139, 581875, '2016-10-13', '2020-04-17', 4, '2017-04-17', '2019-04-16', 5, '2016-07-19', 5, '2016-07-25', 5, '2016-11-11', 5, '0000-00-00', 4, '0000-00-00', 4, '2017-02-14', 5, '2016-10-28', 5, '2017-11-14', 5, '2016-09-15', 'ATR72', '0000-00-00', '', '0000-00-00', ''),
(140, 581921, '2018-04-19', '2020-04-18', 5, '2017-06-08', '2019-06-07', 5, '2016-07-19', 5, '2016-07-25', 5, '2016-11-11', 5, '0000-00-00', 4, '0000-00-00', 4, '2017-02-14', 5, '2016-10-28', 5, '2017-11-14', 5, '2017-03-22', 'A330', '0000-00-00', '', '0000-00-00', ''),
(141, 581922, '2018-04-19', '2020-04-19', 5, '2017-04-17', '2019-04-16', 5, '2016-11-21', 5, '2016-08-16', 5, '2016-10-25', 5, '0000-00-00', 4, '2018-06-29', 5, '2017-02-14', 5, '2017-07-28', 5, '0000-00-00', 4, '2016-10-21', 'B777', '0000-00-00', '', '0000-00-00', ''),
(142, 581923, '2018-04-19', '2020-04-20', 5, '2016-08-30', '2018-08-29', 4, '2016-07-21', 5, '2016-07-25', 5, '2016-11-11', 5, '0000-00-00', 4, '0000-00-00', 4, '2017-02-14', 5, '2016-10-28', 5, '0000-00-00', 4, '0000-00-00', 'B777', '0000-00-00', '', '0000-00-00', ''),
(143, 581925, '2018-04-19', '2020-04-21', 5, '2017-04-17', '2019-04-16', 5, '2016-09-05', 5, '2016-07-25', 5, '2016-08-26', 5, '0000-00-00', 4, '0000-00-00', 4, '2017-02-14', 5, '2017-07-28', 5, '0000-00-00', 4, '2018-05-02', 'B777', '0000-00-00', '', '0000-00-00', ''),
(144, 581926, '2018-04-19', '2020-04-22', 5, '2017-04-17', '2019-04-16', 5, '2016-08-26', 5, '2016-07-25', 5, '2016-09-14', 5, '0000-00-00', 4, '2018-02-28', 5, '2017-02-14', 5, '2016-10-17', 5, '2018-03-23', 5, '2017-12-08', 'B777', '0000-00-00', '', '0000-00-00', ''),
(145, 581927, '2018-04-19', '2020-04-23', 5, '2017-06-12', '2019-06-11', 5, '2017-02-16', 5, '2016-08-16', 5, '2016-10-25', 5, '0000-00-00', 4, '0000-00-00', 4, '2017-02-17', 5, '2017-07-28', 5, '2018-03-23', 5, '2016-10-21', 'B777', '0000-00-00', '', '0000-00-00', ''),
(146, 581928, '2016-10-13', '2020-04-24', 4, '2017-04-17', '2019-04-16', 5, '2016-12-02', 5, '2016-12-14', 5, '2016-11-08', 5, '0000-00-00', 4, '0000-00-00', 4, '2017-09-13', 5, '2016-10-28', 5, '0000-00-00', 4, '2016-07-26', 'B737 NG', '0000-00-00', '', '0000-00-00', ''),
(147, 581929, '2018-04-19', '2020-04-25', 5, '2017-04-17', '2019-04-16', 5, '2016-07-29', 5, '2016-08-16', 5, '2016-11-11', 5, '0000-00-00', 4, '0000-00-00', 4, '2017-02-17', 5, '2017-03-13', 5, '0000-00-00', 4, '0000-00-00', '', '0000-00-00', '', '0000-00-00', ''),
(148, 581930, '2016-10-13', '2020-04-26', 4, '2017-04-17', '2019-04-16', 5, '2017-01-10', 5, '2017-03-22', 5, '2016-11-08', 5, '0000-00-00', 4, '0000-00-00', 4, '0000-00-00', 4, '2016-10-28', 5, '0000-00-00', 4, '2016-07-26', 'B737 NG', '0000-00-00', '', '0000-00-00', ''),
(149, 581931, '2018-04-19', '2020-04-27', 5, '2017-04-17', '2019-04-16', 5, '2016-08-26', 5, '2016-08-16', 5, '2016-11-11', 5, '0000-00-00', 4, '0000-00-00', 4, '2017-02-17', 5, '2017-03-13', 5, '0000-00-00', 4, '2017-06-14', 'ATR72', '0000-00-00', '', '0000-00-00', ''),
(150, 581932, '2016-10-13', '2020-04-28', 4, '2017-04-17', '2019-04-16', 5, '2017-01-10', 5, '2016-10-18', 5, '2016-07-19', 5, '0000-00-00', 4, '0000-00-00', 4, '2018-05-18', 5, '2016-12-02', 5, '0000-00-00', 4, '2016-07-26', 'B737 NG', '0000-00-00', '', '0000-00-00', ''),
(151, 581947, '2016-10-13', '2020-04-29', 4, '2017-04-17', '2019-04-16', 5, '2017-03-15', 5, '2016-10-18', 5, '2016-11-08', 5, '0000-00-00', 4, '0000-00-00', 4, '2017-02-17', 5, '2017-08-21', 5, '0000-00-00', 4, '2016-07-26', 'B737 NG', '0000-00-00', '', '0000-00-00', ''),
(152, 581952, '2018-04-19', '2020-04-30', 5, '2017-04-17', '2019-04-16', 5, '2016-07-29', 5, '2016-08-16', 5, '2017-02-17', 5, '0000-00-00', 4, '0000-00-00', 4, '2017-09-13', 5, '2017-03-13', 5, '2018-07-09', 5, '2016-10-12', 'A320', '0000-00-00', '', '0000-00-00', ''),
(153, 581982, '2017-10-25', '2020-05-01', 5, '2017-06-12', '2019-06-11', 5, '2016-11-21', 5, '2016-08-16', 5, '2016-11-11', 5, '2018-08-15', 5, '2018-02-28', 5, '2017-02-17', 5, '2017-08-21', 5, '0000-00-00', 4, '2017-05-16', 'B737 NG', '0000-00-00', '', '0000-00-00', ''),
(154, 581992, '2016-11-18', '2020-05-02', 4, '2017-06-12', '2019-06-11', 5, '2017-05-15', 5, '2016-08-16', 5, '2016-08-26', 5, '0000-00-00', 4, '0000-00-00', 4, '2017-02-17', 5, '2017-07-28', 5, '0000-00-00', 4, '0000-00-00', '', '0000-00-00', '', '0000-00-00', ''),
(155, 581997, '2017-04-06', '2020-05-03', 5, '2017-06-12', '2019-06-11', 5, '2018-04-26', 5, '2016-08-16', 5, '2017-06-08', 5, '0000-00-00', 4, '2018-07-10', 5, '2017-11-30', 5, '2017-09-25', 5, '0000-00-00', 4, '0000-00-00', '', '0000-00-00', '', '0000-00-00', ''),
(156, 581998, '2019-02-08', '2020-05-04', 5, '2017-06-12', '2019-06-11', 5, '2017-03-15', 5, '2016-10-18', 5, '2017-06-09', 5, '0000-00-00', 4, '0000-00-00', 4, '0000-00-00', 4, '2017-10-13', 5, '0000-00-00', 4, '2017-09-29', 'B777', '0000-00-00', '', '0000-00-00', ''),
(157, 582008, '2017-10-25', '2020-05-05', 5, '2017-10-26', '2019-10-25', 5, '2017-06-12', 5, '2016-10-18', 5, '2016-10-28', 5, '0000-00-00', 4, '0000-00-00', 4, '2017-09-13', 5, '2017-10-13', 5, '0000-00-00', 4, '2017-04-11', 'A320', '0000-00-00', '', '0000-00-00', ''),
(158, 582014, '2017-08-30', '2020-05-06', 5, '2018-04-24', '2020-04-23', 5, '2018-05-23', 5, '2016-10-18', 5, '2017-02-08', 5, '0000-00-00', 4, '0000-00-00', 4, '2017-11-30', 5, '2017-07-28', 5, '0000-00-00', 4, '2016-12-06', 'B787-8/9 ', '0000-00-00', '', '0000-00-00', ''),
(159, 582044, '2017-05-19', '2020-05-07', 5, '2017-06-08', '2019-06-07', 5, '2016-12-02', 5, '2017-03-22', 5, '2016-10-28', 5, '0000-00-00', 4, '0000-00-00', 4, '2017-02-14', 5, '2017-09-25', 5, '2018-03-23', 5, '2017-11-23', 'CRJ 1000', '0000-00-00', '', '0000-00-00', ''),
(160, 582068, '2017-11-10', '2020-05-08', 5, '2017-04-17', '2019-04-16', 5, '2017-06-12', 5, '2017-03-22', 5, '2016-10-28', 5, '0000-00-00', 4, '0000-00-00', 4, '2017-02-14', 5, '2017-07-28', 5, '0000-00-00', 4, '2017-10-10', 'B737 NG', '0000-00-00', '', '0000-00-00', ''),
(161, 582081, '2018-08-08', '2020-05-09', 4, '2017-10-26', '2019-10-25', 5, '2017-10-18', 5, '2017-03-22', 5, '2016-10-28', 5, '0000-00-00', 4, '2018-02-28', 5, '2017-09-13', 5, '2017-10-13', 5, '0000-00-00', 4, '2017-06-12', 'B737 NG', '0000-00-00', '', '0000-00-00', ''),
(162, 582085, '2017-06-07', '2020-05-10', 5, '2017-06-12', '2019-06-11', 5, '2016-12-02', 5, '2017-05-26', 5, '2016-11-29', 5, '0000-00-00', 4, '0000-00-00', 4, '0000-00-00', 4, '2017-03-13', 5, '0000-00-00', 4, '2017-11-17', 'A320', '0000-00-00', '', '0000-00-00', ''),
(163, 582094, '2017-05-04', '2020-05-11', 5, '2017-06-07', '2019-06-06', 5, '2017-07-17', 5, '2017-04-18', 5, '2016-11-28', 5, '0000-00-00', 4, '0000-00-00', 4, '2017-11-30', 5, '2017-09-25', 5, '0000-00-00', 4, '2018-04-27', 'ATR72', '0000-00-00', '', '0000-00-00', ''),
(164, 582151, '2017-05-02', '2020-05-12', 5, '2017-06-12', '2019-06-11', 5, '2017-07-17', 5, '2017-04-18', 5, '2016-12-16', 5, '0000-00-00', 4, '0000-00-00', 4, '2017-11-30', 5, '2017-09-25', 5, '0000-00-00', 4, '0000-00-00', '', '0000-00-00', '', '0000-00-00', ''),
(165, 582788, '0000-00-00', '0000-00-00', 4, '2018-01-09', '2020-01-08', 5, '2017-12-21', 5, '2018-07-05', 5, '2018-08-16', 4, '0000-00-00', 4, '0000-00-00', 4, '2018-03-12', 5, '2018-04-04', 5, '2017-11-14', 5, '0000-00-00', '', '0000-00-00', '', '0000-00-00', ''),
(166, 582790, '2018-04-05', '2020-04-04', 5, '2018-01-09', '2020-01-08', 5, '2017-12-21', 5, '2018-07-05', 5, '2018-04-20', 5, '0000-00-00', 4, '0000-00-00', 4, '2018-03-12', 5, '0000-00-00', 4, '2017-11-14', 5, '0000-00-00', '', '0000-00-00', '', '0000-00-00', ''),
(167, 582797, '0000-00-00', '0000-00-00', 4, '2017-12-21', '2019-12-20', 5, '2018-04-26', 5, '2018-07-05', 5, '2018-08-16', 4, '0000-00-00', 4, '0000-00-00', 4, '2018-03-12', 5, '2018-04-04', 5, '0000-00-00', 4, '0000-00-00', '', '0000-00-00', '', '0000-00-00', ''),
(168, 582798, '0000-00-00', '0000-00-00', 4, '2017-12-21', '2019-12-20', 5, '2018-04-26', 5, '2018-07-05', 5, '0000-00-00', 4, '0000-00-00', 4, '0000-00-00', 2, '2018-03-12', 5, '0000-00-00', 2, '0000-00-00', 4, '0000-00-00', '', '0000-00-00', '', '0000-00-00', ''),
(169, 582801, '2018-06-29', '2020-06-28', 5, '2018-04-19', '2020-04-18', 5, '2018-01-10', 5, '2018-07-05', 5, '0000-00-00', 4, '0000-00-00', 4, '0000-00-00', 4, '2018-03-12', 5, '0000-00-00', 2, '0000-00-00', 4, '0000-00-00', '', '0000-00-00', '', '0000-00-00', ''),
(170, 582803, '2018-06-29', '2020-06-28', 5, '2018-06-07', '2020-06-06', 5, '2018-05-24', 5, '2018-07-05', 5, '2018-05-04', 5, '0000-00-00', 4, '0000-00-00', 4, '2018-03-12', 5, '0000-00-00', 4, '0000-00-00', 4, '0000-00-00', '', '0000-00-00', '', '0000-00-00', ''),
(171, 582804, '2018-06-29', '2020-06-28', 5, '2018-05-04', '2020-05-03', 5, '2018-01-10', 5, '2018-07-05', 5, '2018-07-04', 5, '0000-00-00', 4, '0000-00-00', 4, '2018-03-12', 5, '0000-00-00', 4, '0000-00-00', 4, '0000-00-00', '', '0000-00-00', '', '0000-00-00', ''),
(172, 582807, '0000-00-00', '0000-00-00', 4, '2018-03-07', '2020-03-06', 5, '2018-05-24', 5, '2018-01-18', 5, '2018-01-30', 5, '0000-00-00', 4, '0000-00-00', 4, '2018-05-18', 5, '0000-00-00', 4, '0000-00-00', 4, '0000-00-00', '', '0000-00-00', '', '0000-00-00', ''),
(173, 582810, '2018-06-29', '2020-06-28', 5, '2018-02-05', '2020-02-04', 5, '2018-07-18', 5, '2018-01-18', 5, '2018-07-04', 5, '0000-00-00', 4, '0000-00-00', 4, '2018-05-18', 5, '0000-00-00', 4, '0000-00-00', 4, '0000-00-00', '', '0000-00-00', '', '0000-00-00', ''),
(174, 582824, '2018-06-29', '2020-06-28', 5, '2018-03-07', '2020-03-06', 5, '2018-07-04', 5, '2018-01-18', 5, '2018-01-30', 5, '0000-00-00', 4, '0000-00-00', 4, '2018-05-18', 5, '0000-00-00', 4, '0000-00-00', 4, '0000-00-00', '', '0000-00-00', '', '0000-00-00', ''),
(175, 582825, '2018-06-29', '2020-06-28', 5, '2018-02-05', '2020-02-04', 5, '2018-07-30', 5, '2018-01-18', 5, '0000-00-00', 4, '0000-00-00', 4, '0000-00-00', 4, '2018-05-18', 5, '0000-00-00', 4, '0000-00-00', 4, '0000-00-00', '', '0000-00-00', '', '0000-00-00', ''),
(176, 582876, '2018-06-29', '2020-06-28', 5, '2018-03-07', '2020-03-06', 5, '2018-07-30', 5, '2018-01-18', 5, '0000-00-00', 4, '0000-00-00', 4, '0000-00-00', 4, '2018-05-18', 5, '0000-00-00', 4, '0000-00-00', 4, '0000-00-00', '', '0000-00-00', '', '0000-00-00', ''),
(177, 582882, '2018-06-29', '2020-06-28', 5, '2018-07-20', '2020-07-19', 5, '2018-07-30', 5, '2018-07-05', 5, '0000-00-00', 4, '0000-00-00', 4, '0000-00-00', 4, '2018-05-18', 5, '0000-00-00', 4, '0000-00-00', 4, '0000-00-00', '', '0000-00-00', '', '0000-00-00', ''),
(178, 582887, '0000-00-00', '0000-00-00', 4, '2018-07-20', '2020-07-19', 5, '2018-07-30', 5, '2018-07-05', 5, '0000-00-00', 4, '0000-00-00', 4, '0000-00-00', 4, '2018-05-18', 5, '0000-00-00', 4, '0000-00-00', 4, '0000-00-00', '', '0000-00-00', '', '0000-00-00', ''),
(179, 582902, '2018-07-05', '2020-07-04', 5, '2018-06-07', '2020-06-06', 5, '2018-07-30', 5, '2018-08-16', 4, '0000-00-00', 4, '0000-00-00', 4, '0000-00-00', 4, '2018-05-18', 5, '0000-00-00', 4, '0000-00-00', 4, '0000-00-00', '', '0000-00-00', '', '0000-00-00', ''),
(180, 582907, '2018-07-05', '2020-07-04', 5, '2018-07-20', '2020-07-19', 5, '2018-07-30', 5, '2018-08-16', 4, '2018-07-27', 5, '0000-00-00', 4, '0000-00-00', 4, '2018-05-18', 5, '0000-00-00', 4, '0000-00-00', 4, '0000-00-00', '', '0000-00-00', '', '0000-00-00', ''),
(181, 582932, '0000-00-00', '0000-00-00', 4, '0000-00-00', '0000-00-00', 4, '0000-00-00', 4, '2018-07-05', 5, '0000-00-00', 4, '0000-00-00', 4, '0000-00-00', 4, '2018-09-03', 4, '0000-00-00', 4, '0000-00-00', 4, '0000-00-00', '', '0000-00-00', '', '0000-00-00', ''),
(182, 582937, '0000-00-00', '0000-00-00', 4, '0000-00-00', '0000-00-00', 4, '0000-00-00', 4, '2018-07-05', 5, '0000-00-00', 4, '0000-00-00', 4, '0000-00-00', 4, '2018-09-03', 4, '0000-00-00', 4, '0000-00-00', 4, '0000-00-00', '', '0000-00-00', '', '0000-00-00', ''),
(183, 582943, '0000-00-00', '0000-00-00', 4, '0000-00-00', '0000-00-00', 4, '0000-00-00', 4, '2018-07-05', 5, '0000-00-00', 4, '0000-00-00', 4, '0000-00-00', 4, '2018-09-03', 4, '0000-00-00', 4, '0000-00-00', 4, '0000-00-00', '', '0000-00-00', '', '0000-00-00', ''),
(184, 781297, '2017-07-20', '2019-07-19', 5, '2017-09-05', '2019-09-04', 5, '2015-08-21', 5, '2008-08-14', 5, '2015-08-20', 5, '2008-01-11', 5, '2017-09-07', 5, '0000-00-00', 0, '0000-00-00', 0, '0000-00-00', 0, '2004-06-07', 'B737 CL', '0000-00-00', '', '0000-00-00', ''),
(185, 782206, '2018-04-05', '2020-04-04', 5, '0000-00-00', '0000-00-00', 4, '0000-00-00', 0, '0000-00-00', 0, '0000-00-00', 0, '0000-00-00', 0, '0000-00-00', 0, '0000-00-00', 0, '0000-00-00', 0, '0000-00-00', 0, '1997-05-20', 'MD11', '0000-00-00', '', '0000-00-00', ''),
(186, 782391, '2016-12-05', '2018-12-04', 4, '2015-03-13', '2017-03-12', 1, '2015-03-09', 5, '2008-08-14', 5, '2014-12-19', 5, '0000-00-00', 0, '0000-00-00', 0, '0000-00-00', 0, '0000-00-00', 0, '0000-00-00', 0, '1994-04-08', 'B747', '0000-00-00', '', '0000-00-00', '');
INSERT INTO `training` (`id_status`, `no_peg`, `done_human`, `due_human`, `stat_human`, `done_cas`, `due_cas`, `stat_cas`, `done_fts`, `stat_fts`, `done_sms`, `stat_sms`, `done_ewis`, `stat_ewis`, `done_module`, `stat_module`, `done_gqs`, `stat_gqs`, `done_batk`, `stat_batk`, `done_basic`, `stat_basic`, `done_cont`, `stat_cont`, `done_typer1`, `stat_typer1`, `done_typer2`, `stat_typer2`, `done_typer3`, `stat_typer3`) VALUES
(187, 782405, '2018-04-05', '2020-04-04', 5, '2011-01-18', '2013-01-17', 1, '2008-04-22', 5, '2008-03-03', 5, '0000-00-00', 0, '0000-00-00', 4, '0000-00-00', 4, '1989-04-21', 5, '0000-00-00', 0, '1992-10-07', 5, '2000-11-22', 'B747', '0000-00-00', '', '0000-00-00', ''),
(188, 782407, '0000-00-00', '0000-00-00', 4, '2018-07-24', '2020-07-23', 5, '2017-08-14', 5, '2018-07-05', 5, '0000-00-00', 0, '0000-00-00', 4, '0000-00-00', 4, '0000-00-00', 0, '0000-00-00', 0, '0000-00-00', 0, '0000-00-00', '', '0000-00-00', '', '0000-00-00', ''),
(189, 782457, '2018-02-27', '2020-02-26', 5, '0000-00-00', '0000-00-00', 4, '2010-07-01', 5, '2008-03-03', 5, '2012-03-26', 5, '0000-00-00', 4, '0000-00-00', 4, '0000-00-00', 0, '0000-00-00', 0, '0000-00-00', 0, '0000-00-00', '', '0000-00-00', '', '0000-00-00', ''),
(190, 782506, '0000-00-00', '0000-00-00', 4, '2018-05-04', '2020-05-03', 5, '0000-00-00', 4, '2018-07-05', 5, '0000-00-00', 4, '0000-00-00', 4, '0000-00-00', 4, '2018-09-03', 4, '0000-00-00', 4, '0000-00-00', 4, '0000-00-00', '', '0000-00-00', '', '0000-00-00', ''),
(192, 0, '0000-00-00', '0000-00-00', 0, '0000-00-00', '0000-00-00', 0, '0000-00-00', 0, '0000-00-00', 0, '0000-00-00', 0, '0000-00-00', 0, '0000-00-00', 0, '0000-00-00', 0, '0000-00-00', 0, '0000-00-00', 0, '0000-00-00', NULL, '0000-00-00', NULL, '0000-00-00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id_admin` int(11) NOT NULL,
  `tipe` varchar(15) DEFAULT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(30) NOT NULL,
  `no_peg` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_admin`, `tipe`, `username`, `password`, `no_peg`) VALUES
(1, 'super_admin', 'gmf', '123', 532977),
(2, 'admin', 'syauqi', '123', 532015),
(3, 'admin', 'prima', '123', 532262),
(4, 'admin', 'arif', '123', 530348),
(5, 'admin', 'endi', '123', 530334),
(6, 'admin', 'andriyono', '123', 532013),
(7, 'admin', 'ferdinan', '123', 530341),
(8, 'admin', 'byoma', '123', 580211),
(9, 'admin', 'muchamad', '123', 580427),
(10, 'admin', 'zuriati', '123', 528822),
(11, 'admin', 'endik', '123', 525723);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `jenis_training`
--
ALTER TABLE `jenis_training`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pegawai`
--
ALTER TABLE `pegawai`
  ADD PRIMARY KEY (`no_peg`);

--
-- Indexes for table `training`
--
ALTER TABLE `training`
  ADD PRIMARY KEY (`id_status`),
  ADD KEY `no_peg` (`no_peg`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_admin`),
  ADD KEY `no_peg` (`no_peg`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `jenis_training`
--
ALTER TABLE `jenis_training`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `training`
--
ALTER TABLE `training`
  MODIFY `id_status` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=193;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `training`
--
ALTER TABLE `training`
  ADD CONSTRAINT `training_ibfk_1` FOREIGN KEY (`no_peg`) REFERENCES `pegawai` (`no_peg`);

--
-- Constraints for table `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `user_ibfk_1` FOREIGN KEY (`no_peg`) REFERENCES `pegawai` (`no_peg`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
