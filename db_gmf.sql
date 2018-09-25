-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 25, 2018 at 04:23 AM
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
  `stat_training` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jenis_training`
--

INSERT INTO `jenis_training` (`id`, `nama_training`, `stat_training`) VALUES
(1, 'HUMAN FACTOR', 'stat_human'),
(2, 'CASR,FAR', 'stat_cas'),
(3, 'FTS LV.2', 'stat_fts'),
(4, 'SMS', 'stat_sms'),
(5, 'EWIS', 'stat_ewis'),
(6, 'MODULE 10', 'stat_module'),
(7, 'GMF QS', 'stat_gqs'),
(8, 'BATK', 'stat_batk'),
(9, 'BASIC ENG', 'stat_basic'),
(10, 'CONT_AIR', 'stat_cont');

-- --------------------------------------------------------

--
-- Table structure for table `pegawai`
--

CREATE TABLE `pegawai` (
  `no_peg` int(10) NOT NULL,
  `nama_peg` varchar(50) NOT NULL,
  `dinas` enum('TE') NOT NULL DEFAULT 'TE',
  `bidang` enum('TEA','TEB','TEC','TED','TEJ','TEL','TEN','TEQ','TER','TEX','TEZ','TE') NOT NULL,
  `unit` enum('TEA-1','TEA-2','TEA-3','TEA-4','TEC-1','TED-1','TED-2','TED-3','TED-4','TED-5','TEL-1','TEL-2','TER-1','TER-2','TER-3','TER-4','TER-5','TEA','TEB','TEC','TED','TEJ','TEL','TEN','TEQ','TER','TEX','TEZ','TE') NOT NULL,
  `jabatan` enum('Development Engineer','Engineering Expert','General Manager','Manager','Secretary','Senior Aircraft Data Officer','Senior Development Engineer','Senior Technical Publication Officer','Technical Publication Officer','Trainee for Development Engineer','Vice President') NOT NULL,
  `pendidikan` varchar(50) NOT NULL DEFAULT '-',
  `tgl_masuk` date NOT NULL,
  `tgl_lahir` date NOT NULL,
  `TOEIC` int(5) NOT NULL,
  `ass_level` enum('Manager','General Manager','Vice President') NOT NULL,
  `nilai_ass` int(10) NOT NULL,
  `tgl_ass` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pegawai`
--

INSERT INTO `pegawai` (`no_peg`, `nama_peg`, `dinas`, `bidang`, `unit`, `jabatan`, `pendidikan`, `tgl_masuk`, `tgl_lahir`, `TOEIC`, `ass_level`, `nilai_ass`, `tgl_ass`) VALUES
(519884, 'Siti Royanti', 'TE', 'TED', 'TED-1', 'Senior Aircraft Data Officer', 'STRATA I', '1984-02-06', '1963-10-05', 0, '', 0, '0000-00-00'),
(522776, 'Endro Cahyo', 'TE', 'TED', 'TED-5', 'Manager', 'STRATA 1', '1988-09-15', '1963-12-06', 0, '', 0, '0000-00-00'),
(524943, 'Ahadi', 'TE', 'TER', 'TER-5', 'Technical Publication Officer', 'SLTA - SMA', '1991-06-01', '1963-06-23', 0, '', 0, '0000-00-00'),
(525307, 'Rona Talakua', 'TE', 'TER', 'TER-5', 'Technical Publication Officer', 'SLTA - SMA', '1990-06-01', '1968-04-12', 0, '', 0, '0000-00-00'),
(525723, 'Endik Gunawan', 'TE', 'TEL', 'TEL', 'General Manager', 'STRATA I', '1991-05-29', '1966-11-07', 0, '', 0, '0000-00-00'),
(526912, 'Nurdin Muhamad', 'TE', 'TEL', 'TEL-1', 'Senior Development Engineer', 'STRATA 1', '1992-06-16', '1966-10-20', 0, '', 0, '0000-00-00'),
(527264, 'Rosdiana', 'TE', 'TER', 'TER-5', 'Senior Technical Publication Officer', 'SLTA - SMK', '1992-04-16', '1969-03-30', 0, '', 0, '0000-00-00'),
(527555, 'Budi Santoso', 'TE', 'TER', 'TER-3', 'Senior Aircraft Data Officer', 'SLTA - SMA', '1992-07-06', '1970-05-20', 0, '', 0, '0000-00-00'),
(527556, 'Khalikin', 'TE', 'TER', 'TER-5', 'Senior Technical Publication Officer', 'SLTA - SMEA', '1992-07-06', '1969-05-17', 0, '', 0, '0000-00-00'),
(527561, 'Bambang Suryowinarto', 'TE', 'TE', 'TE', 'Vice President', 'STRATA 1', '1993-02-01', '1964-09-30', 0, '', 0, '0000-00-00'),
(527563, 'R.Purubojo Soemadi', 'TE', 'TE', 'TE', 'Engineering Expert', 'STRATA 1', '1993-02-01', '1965-03-13', 0, '', 0, '0000-00-00'),
(527627, 'Dadang Juanda', 'TE', 'TEA', 'TEA-1', 'Manager', 'SETARA DIPLOMA II', '1993-12-27', '1970-07-23', 0, '', 0, '0000-00-00'),
(527722, 'Denny Faizal', 'TE', 'TED', 'TED-5', 'Development Engineer', 'SLTA - SMA', '1992-09-16', '1968-04-02', 0, '', 0, '0000-00-00'),
(527736, 'Arman Januarsyah', 'TE', 'TER', 'TER-2', 'Senior Development Engineer', 'STRATA 1', '1993-12-31', '1967-01-25', 0, '', 0, '0000-00-00'),
(527830, 'Evita Rosa', 'TE', 'TER', 'TER-5', 'Senior Technical Publication Officer', 'SLTA - SMA', '1992-10-01', '1971-07-13', 0, '', 0, '0000-00-00'),
(527941, 'Yudi Priyambodo', 'TE', 'TER', 'TER-2', 'Senior Development Engineer', 'SETARA DIPLOMA II', '1994-04-16', '1967-06-26', 0, '', 0, '0000-00-00'),
(528819, 'Nugroho', 'TE', 'TEA', 'TEA', 'Senior Development Engineer', 'STRATA 1', '1993-12-24', '1967-07-08', 0, '', 0, '0000-00-00'),
(528822, 'Zuriati', 'TE', 'TEA', 'TEA', 'General Manager', 'STRATA 1', '1993-12-27', '1968-09-17', 0, '', 0, '0000-00-00'),
(529216, 'Edy Noerachman', 'TE', 'TER', 'TER-4', 'Manager', 'DIPLOMA III', '1993-12-24', '1970-02-08', 0, '', 0, '0000-00-00'),
(530334, 'Endi Harijoso', 'TE', 'TEQ', 'TEQ', 'General Manager', 'STRATA 1', '1994-12-01', '1969-03-17', 0, '', 0, '0000-00-00'),
(530336, 'Betran Gerson', 'TE', 'TEA', 'TEA-3', 'Manager', 'STRATA 1', '1994-12-01', '1965-12-02', 0, '', 0, '0000-00-00'),
(530337, 'Helmi', 'TE', 'TEA', 'TEA', 'Senior Development Engineer', 'STRATA 1', '1994-12-01', '1969-06-15', 0, '', 0, '0000-00-00'),
(530339, 'Eri Rusli', 'TE', 'TEA', 'TEA', 'Senior Development Engineer', 'STRATA 1', '1994-12-01', '1966-07-10', 0, '', 0, '0000-00-00'),
(530341, 'Ferdinan Sinaga', 'TE', 'TER', 'TER', 'General Manager', 'STRATA 1', '1994-12-01', '1969-03-17', 0, '', 0, '0000-00-00'),
(530346, 'Fordiyanto', 'TE', 'TER', 'TER-5', 'Manager', 'STRATA 1', '1994-12-01', '1968-11-18', 0, '', 0, '0000-00-00'),
(530348, 'Arif Sugianto', 'TE', 'TED', 'TED', 'General Manager', 'STRATA 3', '1994-12-01', '1969-03-25', 0, '', 0, '0000-00-00'),
(530351, 'Muhammad Noor Eko B.S', 'TE', 'TER', 'TER-2', 'Senior Development Engineer', 'STRATA 1', '1994-12-01', '1965-05-15', 0, '', 0, '0000-00-00'),
(530352, 'Ahmad Yani Chumaidhy', 'TE', 'TE', 'TE', 'Engineering Expert', 'STRATA 1', '1994-12-01', '1965-10-02', 0, '', 0, '0000-00-00'),
(530354, 'Mochamad Ramdhan  A', 'TE', 'TEA', 'TEA', 'Engineering Expert', 'STRATA 1', '1994-12-01', '1966-01-21', 0, '', 0, '0000-00-00'),
(530356, 'Syafrial Hidayat', 'TE', 'TEA', 'TEA-4', 'Engineering Expert', 'STRATA 1', '1994-12-01', '1969-04-30', 0, '', 0, '0000-00-00'),
(532013, 'Andriyono Novan Kartoko', 'TE', 'TEJ', 'TEJ', 'General Manager', 'STRATA 1', '2008-12-04', '1979-11-22', 0, '', 0, '0000-00-00'),
(532015, 'Mahar Bachtiar Hidayat', 'TE', 'TEN', 'TEN', 'General Manager', 'STRATA 1', '2008-12-04', '1981-01-31', 0, '', 0, '0000-00-00'),
(532072, 'Glorianta Sananta Sri', 'TE', 'TEA', 'TEA', 'Engineering Expert', 'STRATA 1', '2009-01-02', '1966-07-21', 0, '', 0, '0000-00-00'),
(532135, 'Agus Pribadi Muhardjanto', 'TE', 'TEA', 'TEA', 'Engineering Expert', 'STRATA 1', '2009-02-10', '1965-08-17', 0, '', 0, '0000-00-00'),
(532180, 'Nazarullah Ibny', 'TE', 'TED', 'TED-2', 'Manager', 'STRATA 1', '2009-05-11', '1980-07-01', 0, '', 0, '0000-00-00'),
(532213, 'Agus Prasetyo Nugroho', 'TE', 'TER', 'TER-1', 'Manager', 'STRATA 1', '2009-06-10', '1983-08-01', 0, '', 0, '0000-00-00'),
(532226, 'Fany Fitriani', 'TE', 'TE', 'TE', 'Secretary', 'DIPLOMA III', '2009-08-01', '1982-07-20', 0, '', 0, '0000-00-00'),
(532227, 'Purwoko Yuliono', 'TE', 'TEA', 'TEA-2', 'Manager', 'STRATA 1', '2009-08-01', '1977-07-24', 0, '', 0, '0000-00-00'),
(532235, 'Firmansyah', 'TE', 'TED', 'TED-1', 'Manager', 'STRATA 2', '2009-08-03', '1982-01-31', 0, '', 0, '0000-00-00'),
(532262, 'Prima Edy Setiawan', 'TE', 'TEZ', 'TEZ', 'General Manager', 'STRATA 1', '2009-11-01', '1980-09-13', 0, '', 0, '0000-00-00'),
(532275, 'Doddy Triadi Pinilih Enggarsyah', 'TE', 'TER', 'TER-2', 'Manager', 'STRATA 1', '2009-11-01', '1982-05-04', 0, '', 0, '0000-00-00'),
(532464, 'Lola Eria', 'TE', 'TER', 'TER-4', 'Senior Technical Publication Officer', 'SLTA - SMK PENERBANGAN', '2010-06-01', '1991-05-10', 0, '', 0, '0000-00-00'),
(532793, 'Abdur Rahim', 'TE', 'TEA', 'TEA-4', 'Manager', 'STRATA 2', '2010-08-01', '1976-08-24', 0, '', 0, '0000-00-00'),
(532975, 'Arief Suwardiman', 'TE', 'TER', 'TER-3', 'Manager', 'STRATA 1', '2010-11-01', '1976-06-29', 0, '', 0, '0000-00-00'),
(532976, 'Diki Hartanto', 'TE', 'TED', 'TED-3', 'Manager', 'STRATA 1', '2010-11-01', '1986-07-03', 0, '', 0, '0000-00-00'),
(532977, 'Viona Nauvalisya', 'TE', 'TEA', 'TEC-1', 'Manager', 'STRATA 1', '2010-11-01', '1987-01-03', 0, '', 0, '0000-00-00'),
(533056, 'Sulistiana', 'TE', 'TER', 'TER-4', 'Senior Development Engineer', 'STRATA 1', '2011-02-14', '1983-08-11', 0, '', 0, '0000-00-00'),
(533079, 'Amrih Setiyono', 'TE', 'TER', 'TER-1', 'Senior Development Engineer', 'STRATA 1', '2011-03-01', '1987-01-30', 0, '', 0, '0000-00-00'),
(533084, 'Yoga Seftian Dwianda', 'TE', 'TED', 'TED-4', 'Manager', 'STRATA 1', '2011-03-16', '1986-09-17', 0, '', 0, '0000-00-00'),
(533208, 'Aulia Athar', 'TE', 'TEA', 'TEA-3', 'Senior Development Engineer', 'STRATA 1', '2011-05-16', '1985-09-26', 0, '', 0, '0000-00-00'),
(533212, 'Bunga Hapsari Aliya Putri', 'TE', 'TEL', 'TEL-1', 'Manager', 'STRATA 1', '2011-05-16', '1987-02-09', 0, '', 0, '0000-00-00'),
(533213, 'Hendra Permana', 'TE', 'TEA', 'TEA', 'Senior Development Engineer', 'STRATA 1', '2011-05-16', '1986-02-16', 0, '', 0, '0000-00-00'),
(533246, 'Yulian Ari Nugroho', 'TE', 'TER', 'TER-3', 'Senior Development Engineer', 'STRATA 1', '2011-06-01', '1987-07-13', 0, '', 0, '0000-00-00'),
(533356, 'Judo Taryanto', 'TE', 'TEA', 'TEA', 'Senior Development Engineer', 'STRATA 1', '2011-07-01', '1981-10-17', 0, '', 0, '0000-00-00'),
(533375, 'Fenny Noviatus Syahriyah', 'TE', 'TED', 'TED-2', 'Senior Development Engineer', 'STRATA 1', '2011-07-01', '1988-03-01', 0, '', 0, '0000-00-00'),
(580103, 'Aryo Nugroho', 'TE', 'TED', 'TED-3', 'Senior Development Engineer', 'STRATA 1', '2012-05-01', '1989-02-05', 0, '', 0, '0000-00-00'),
(580104, 'Denny Indra Purnama', 'TE', 'TEA', 'TEA-1', 'Senior Development Engineer', 'STRATA 1', '2012-05-01', '1987-12-07', 0, '', 0, '0000-00-00'),
(580129, 'Yunarko Dwi Wibowo', 'TE', 'TEA', 'TEA-2', 'Senior Development Engineer', 'STRATA 1', '2012-05-01', '1987-06-12', 0, '', 0, '0000-00-00'),
(580176, 'Irwan Fauzi', 'TE', 'TE', 'TE', 'Manager', 'STRATA 2', '2012-07-01', '1980-07-01', 0, '', 0, '0000-00-00'),
(580177, 'Dahlon Satria Palu', 'TE', 'TER', 'TER-4', 'Senior Development Engineer', 'STRATA 1', '2012-07-01', '1985-05-29', 0, '', 0, '0000-00-00'),
(580187, 'Aditya Eka Arisaputra', 'TE', 'TEA', 'TEA-3', 'Senior Development Engineer', 'STRATA 1', '2012-09-13', '1989-09-25', 0, '', 0, '0000-00-00'),
(580189, 'Ignatius Danang Saptyadi', 'TE', 'TEL', 'TEL-2', 'Manager', 'STRATA 1', '2012-09-13', '1989-04-15', 0, '', 0, '0000-00-00'),
(580202, 'Agib Faruq Afanny', 'TE', 'TEA', 'TEA-3', 'Senior Development Engineer', 'STRATA 1', '2012-11-27', '1989-10-11', 0, '', 0, '0000-00-00'),
(580203, 'Raga Raditya Pramono', 'TE', 'TER', 'TER-3', 'Senior Development Engineer', 'STRATA 1', '2012-11-27', '1989-07-04', 0, '', 0, '0000-00-00'),
(580204, 'Febrian Fajar Leksmana', 'TE', 'TER', 'TER-1', 'Senior Development Engineer', 'STRATA 1', '2012-11-27', '1988-02-20', 0, '', 0, '0000-00-00'),
(580211, 'Byoma Wing Argyoganendro', 'TE', 'TEB', 'TEB', 'General Manager', 'STRATA 2', '2012-12-11', '1986-05-23', 0, '', 0, '0000-00-00'),
(580427, 'Muchamad Musyafa\'', 'TE', 'TEX', 'TEX', 'General Manager', 'STRATA 1', '2013-03-05', '1989-10-30', 0, '', 0, '0000-00-00'),
(580431, 'Dhany Ahmad Barkah', 'TE', 'TEA', 'TEA-1', 'Senior Development Engineer', 'STRATA 1', '2013-03-25', '1988-05-07', 0, '', 0, '0000-00-00'),
(580448, 'Aditya Ginanjar', 'TE', 'TER', 'TER-2', 'Senior Development Engineer', 'STRATA 1', '2013-05-01', '1989-02-23', 0, '', 0, '0000-00-00'),
(580449, 'Nadia Fadhila Suryana', 'TE', 'TER', 'TER-5', 'Senior Technical Publication Officer', 'DIPLOMA III', '2013-05-01', '1991-01-13', 0, '', 0, '0000-00-00'),
(580470, 'Didit Agus Priyanto', 'TE', 'TEA', 'TEA-4', 'Senior Development Engineer', 'STRATA 1', '2013-08-04', '1989-08-20', 0, '', 0, '0000-00-00'),
(580587, 'Davy Febrynzki', 'TE', 'TEA', 'TEA-2', 'Senior Development Engineer', 'STRATA 1', '2013-12-01', '1990-02-19', 0, '', 0, '0000-00-00'),
(580588, 'Imanuddin Yahya', 'TE', 'TEA', 'TEA-1', 'Senior Development Engineer', 'STRATA 1', '2013-12-01', '1990-02-02', 0, '', 0, '0000-00-00'),
(580590, 'Tika Ayu Nastiti', 'TE', 'TEA', 'TEA-1', 'Senior Development Engineer', 'STRATA 1', '2013-12-16', '1991-03-02', 0, '', 0, '0000-00-00'),
(580592, 'Maulana Mulia', 'TE', 'TER', 'TER-2', 'Senior Development Engineer', 'STRATA 1', '2013-12-20', '1989-06-26', 0, '', 0, '0000-00-00'),
(580593, 'Nicolaus Bagus Hariaji ', 'TE', 'TER', 'TER-2', 'Senior Development Engineer', 'STRATA 1', '2013-12-20', '1990-08-11', 0, '', 0, '0000-00-00'),
(580616, 'Judis Priastono Utama ', 'TE', 'TEA', 'TEA-1', 'Senior Development Engineer', 'STRATA 1', '2014-02-19', '1990-02-08', 0, '', 0, '0000-00-00'),
(580625, 'Fendy Kurniawan', 'TE', 'TER', 'TER-4', 'Senior Development Engineer', 'STRATA 1', '2014-03-17', '1987-12-16', 0, '', 0, '0000-00-00'),
(580626, 'Candra Tomi Pamungkas ', 'TE', 'TEA', 'TEA-3', 'Senior Development Engineer', 'STRATA 1', '2014-04-01', '1988-10-11', 0, '', 0, '0000-00-00'),
(580646, 'Gandhi Mahaputra', 'TE', 'TEA', 'TEA-2', 'Development Engineer', 'STRATA 1', '2015-01-01', '1991-04-02', 0, '', 0, '0000-00-00'),
(580739, 'I Gusti Agung Aditya Jaya', 'TE', 'TEA', 'TEA-4', 'Senior Development Engineer', 'STRATA 3', '2014-07-14', '1986-06-13', 0, '', 0, '0000-00-00'),
(580743, 'Intan Paramarti Purwanto', 'TE', 'TER', 'TER-1', 'Development Engineer', 'STRATA 2', '2014-07-18', '1990-11-03', 0, '', 0, '0000-00-00'),
(580974, 'Sulung Fitrianto', 'TE', 'TER', 'TER-4', 'Senior Development Engineer', 'STRATA 1', '2014-11-01', '1990-04-27', 0, '', 0, '0000-00-00'),
(580976, 'Dyah Kartikawati', 'TE', 'TER', 'TER-2', 'Development Engineer', 'STRATA 1', '2014-11-01', '1991-08-05', 0, '', 0, '0000-00-00'),
(580977, 'Anindya Devi Ramadhani', 'TE', 'TEA', 'TER-1', 'Senior Development Engineer', 'STRATA 2', '2014-11-01', '1990-04-01', 0, '', 0, '0000-00-00'),
(580978, 'Fachmi Yuni Arista', 'TE', 'TEA', 'TEA-4', 'Development Engineer', 'STRATA 1', '2014-11-01', '1991-07-20', 0, '', 0, '0000-00-00'),
(581038, 'Syamsurisal', 'TE', 'TEA', 'TEA-1', 'Senior Development Engineer', 'STRATA 1', '2014-12-01', '1990-02-18', 0, '', 0, '0000-00-00'),
(581061, 'Danang Budi Ariwibowo', 'TE', 'TER', 'TER-2', 'Development Engineer', 'STRATA 1', '2015-06-01', '1989-10-14', 0, '', 0, '0000-00-00'),
(581083, 'Rizka Fadhila Az Zahra', 'TE', 'TED', 'TED-2', 'Development Engineer', 'STRATA 1', '2015-07-01', '1992-04-07', 0, '', 0, '0000-00-00'),
(581097, 'Fathiya Ikrimah', 'TE', 'TEA', 'TEA-4', 'Development Engineer', 'STRATA 1', '2015-07-01', '1990-03-07', 0, '', 0, '0000-00-00'),
(581098, 'Rutta Ginting', 'TE', 'TEA', 'TEA-2', 'Development Engineer', 'STRATA 1', '2015-07-01', '1991-07-28', 0, '', 0, '0000-00-00'),
(581158, 'Hafid Pradithya Jenie', 'TE', 'TED', 'TED-3', 'Senior Development Engineer', 'STRATA 1', '2015-07-01', '1992-05-13', 0, '', 0, '0000-00-00'),
(581161, 'Gunawan', 'TE', 'TED', 'TED-3', 'Development Engineer', 'STRATA 1', '2015-08-01', '1992-10-23', 0, '', 0, '0000-00-00'),
(581163, 'Monda Perdana', 'TE', 'TED', 'TED-1', 'Development Engineer', 'DIPLOMA III', '2015-08-01', '1989-07-17', 0, '', 0, '0000-00-00'),
(581169, 'Ardanti Retnohandini', 'TE', 'TEA', 'TEC-1', 'Development Engineer', 'STRATA 1', '2015-08-01', '1992-08-20', 0, '', 0, '0000-00-00'),
(581170, 'Adithya Ramadhan', 'TE', 'TEA', 'TEA-3', 'Development Engineer', 'STRATA 1', '2015-08-01', '1990-04-05', 0, '', 0, '0000-00-00'),
(581172, 'Ida Bagus Gede Dharma Dhyaksa', 'TE', 'TED', 'TED-3', 'Development Engineer', 'STRATA 1', '2015-08-01', '1992-04-03', 0, '', 0, '0000-00-00'),
(581182, 'Muhammad Rizky Ichwani', 'TE', 'TED', 'TED-2', 'Development Engineer', 'STRATA 1', '2015-10-01', '1991-10-17', 0, '', 0, '0000-00-00'),
(581209, 'Muammar Rizky', 'TE', 'TEA', 'TEA-2', 'Development Engineer', 'STRATA 1', '2015-10-01', '1992-04-09', 0, '', 0, '0000-00-00'),
(581261, 'Faisal Maulana', 'TE', 'TEA', 'TEA-1', 'Development Engineer', 'STRATA 1', '2015-12-01', '1989-12-30', 0, '', 0, '0000-00-00'),
(581279, 'Nanda Perdana Putra', 'TE', 'TER', 'TER-2', 'Development Engineer', 'STRATA 1', '2015-12-01', '1979-03-21', 0, '', 0, '0000-00-00'),
(581281, 'Dianika Fachrur Harrys', 'TE', 'TED', 'TED-4', 'Development Engineer', 'STRATA 1', '2015-12-01', '1990-08-07', 0, '', 0, '0000-00-00'),
(581282, 'Ongki Budi A', 'TE', 'TEA', 'TEA-4', 'Development Engineer', 'STRATA 2', '2015-12-01', '1989-02-19', 0, '', 0, '0000-00-00'),
(581284, 'Rizky Arissandi', 'TE', 'TEA', 'TEA-1', 'Development Engineer', 'STRATA 1', '2015-12-01', '1992-01-13', 0, '', 0, '0000-00-00'),
(581304, 'Ruth Velisia Natalia Manik', 'TE', 'TER', 'TER-2', 'Development Engineer', 'STRATA 1', '2015-12-01', '1992-12-09', 0, '', 0, '0000-00-00'),
(581305, 'Surya Aditya Chamora', 'TE', 'TEA', 'TEA-4', 'Development Engineer', 'STRATA 2', '2015-12-01', '1990-08-22', 0, '', 0, '0000-00-00'),
(581315, 'Satrio Sani Sadewo', 'TE', 'TED', 'TED-1', 'Development Engineer', 'STRATA 1', '2016-01-01', '1992-05-11', 0, '', 0, '0000-00-00'),
(581316, 'Gelang Gapuro Adi', 'TE', 'TEA', 'TEA-3', 'Development Engineer', 'STRATA 1', '2016-01-01', '1991-04-11', 0, '', 0, '0000-00-00'),
(581318, 'Indra Dwi Hermanto', 'TE', 'TED', 'TED-1', 'Development Engineer', 'STRATA 1', '2016-01-01', '1990-12-17', 0, '', 0, '0000-00-00'),
(581319, 'Dito Wijanarko', 'TE', 'TER', 'TER-1', 'Development Engineer', 'STRATA 1', '2016-01-01', '1992-05-24', 0, '', 0, '0000-00-00'),
(581334, 'Yudi Anom Priambudi', 'TE', 'TEL', 'TEL-1', 'Development Engineer', 'STRATA 1', '2016-02-01', '1990-05-11', 0, '', 0, '0000-00-00'),
(581335, 'Yanuar Rizky Pahlevi', 'TE', 'TEL', 'TEL-2', 'Development Engineer', 'STRATA 1', '2016-02-01', '1992-01-06', 0, '', 0, '0000-00-00'),
(581336, 'Akbar Suryo Sadarpo', 'TE', 'TEA', 'TEA-2', 'Development Engineer', 'STRATA 1', '2016-02-01', '1991-01-20', 0, '', 0, '0000-00-00'),
(581343, 'Nadya Noor Oktarini', 'TE', 'TEA', 'TEA-1', 'Development Engineer', 'STRATA 1', '2016-02-01', '1992-10-04', 0, '', 0, '0000-00-00'),
(581344, 'Daniel Hermanto Marpaung', 'TE', 'TEA', 'TEA-1', 'Development Engineer', 'STRATA 1', '2016-02-01', '1991-11-20', 0, '', 0, '0000-00-00'),
(581345, 'Rimbo Gano', 'TE', 'TED', 'TED-4', 'Development Engineer', 'STRATA 1', '2016-02-01', '1992-09-17', 0, '', 0, '0000-00-00'),
(581531, 'Muhammad Rizqi Wicaksono', 'TE', 'TEA', 'TEA-4', 'Development Engineer', 'STRATA 1', '2016-03-01', '1992-05-26', 0, '', 0, '0000-00-00'),
(581536, 'Fransisca T.B Sinaga', 'TE', 'TEA', 'TEA-3', 'Development Engineer', 'STRATA 1', '2016-03-31', '1993-10-08', 0, '', 0, '0000-00-00'),
(581599, 'Dody Fanditya Rakhman', 'TE', 'TER', 'TER-3', 'Development Engineer', 'DIPLOMA IV', '2016-06-01', '1992-01-16', 0, '', 0, '0000-00-00'),
(581660, 'Retno Dinanti K W', 'TE', 'TEA', 'TEA-2', 'Development Engineer', 'STRATA 2', '2016-07-01', '1989-10-20', 0, '', 0, '0000-00-00'),
(581661, 'Muhammad Abdurrafiq', 'TE', 'TEA', 'TEA-1', 'Development Engineer', 'STRATA 1', '2016-07-01', '1992-11-20', 0, '', 0, '0000-00-00'),
(581694, 'Ingrid Zafira Harvinia', 'TE', 'TER', 'TER-1', 'Development Engineer', 'STRATA 2', '2016-09-01', '1989-09-10', 0, '', 0, '0000-00-00'),
(581695, 'Fahad Arwani', 'TE', 'TEA', 'TEA-3', 'Development Engineer', 'STRATA 1', '2016-08-01', '1992-01-17', 0, '', 0, '0000-00-00'),
(581696, 'Dita Febriana', 'TE', 'TEA', 'TEA-1', 'Development Engineer', 'STRATA 1', '2016-08-01', '1992-02-19', 0, '', 0, '0000-00-00'),
(581697, 'Fitriani Tresnaputri', 'TE', 'TEA', 'TEA-4', 'Development Engineer', 'STRATA 1', '2016-08-01', '1991-07-06', 0, '', 0, '0000-00-00'),
(581698, 'Muhammad Shanizal Hasny', 'TE', 'TED', 'TED-1', 'Development Engineer', 'STRATA 1', '2016-02-15', '1992-03-10', 0, '', 0, '0000-00-00'),
(581792, 'Basthiyan Sidqi Fidari R.', 'TE', 'TEA', 'TEA-2', 'Development Engineer', 'STRATA 2', '2016-11-01', '1988-11-08', 0, '', 0, '0000-00-00'),
(581794, 'Rahmat Wintoloaji', 'TE', 'TEA', 'TEA-2', 'Development Engineer', 'STRATA 1', '2016-11-01', '1991-05-29', 0, '', 0, '0000-00-00'),
(581796, 'Rustam Nur Afendi', 'TE', 'TEA', 'TEA-1', 'Development Engineer', 'STRATA 2', '2016-11-01', '1989-04-03', 0, '', 0, '0000-00-00'),
(581803, 'Darren Francis Gregorie Meka', 'TE', 'TEA', 'TEA-4', 'Development Engineer', 'STRATA 2', '2016-11-01', '1992-08-30', 0, '', 0, '0000-00-00'),
(581812, 'Riki Rizki', 'TE', 'TER', 'TER-4', 'Development Engineer', 'STRATA 1', '2016-11-01', '1994-09-19', 0, '', 0, '0000-00-00'),
(581826, 'Alvien Kurniawan Sosilo', 'TE', 'TER', 'TER-3', 'Development Engineer', 'STRATA 1', '2016-11-01', '1994-09-22', 0, '', 0, '0000-00-00'),
(581828, 'Faizal Hafiz Taqriri', 'TE', 'TEA', 'TEA-2', 'Development Engineer', 'STRATA 1', '2016-11-01', '1992-04-16', 0, '', 0, '0000-00-00'),
(581829, 'Sri Bayu Agus Prianto', 'TE', 'TED', 'TED-3', 'Development Engineer', 'STRATA 1', '2016-11-01', '1994-04-28', 0, '', 0, '0000-00-00'),
(581830, 'Yordian Fachrie', 'TE', 'TEA', 'TEA-1', 'Development Engineer', 'STRATA 1', '2016-11-01', '1993-04-30', 0, '', 0, '0000-00-00'),
(581834, 'Mukhamad Aziz', 'TE', 'TEA', 'TEA-3', 'Development Engineer', 'STRATA 2', '2016-11-01', '1991-12-20', 0, '', 0, '0000-00-00'),
(581875, 'Dimas Kurniawan', 'TE', 'TEA', 'TEA-1', 'Development Engineer', 'STRATA 1', '2016-12-01', '1992-10-13', 0, '', 0, '0000-00-00'),
(581921, 'Dwiki Darmawan', 'TE', 'TEA', 'TEA-1', 'Development Engineer', 'STRATA 1', '2016-12-01', '1992-12-22', 0, '', 0, '0000-00-00'),
(581922, 'Lukito Ardhi Nugroho', 'TE', 'TED', 'TED-4', 'Development Engineer', 'STRATA 2', '2016-12-01', '1990-03-06', 0, '', 0, '0000-00-00'),
(581923, 'Dimas Aldiandra Adrians', 'TE', 'TEL', 'TEL-1', 'Development Engineer', 'STRATA 1', '2016-12-01', '1993-04-28', 0, '', 0, '0000-00-00'),
(581925, 'Bangkit Rachmat Hilca', 'TE', 'TE', 'TEC-1', 'Development Engineer', 'STRATA 2', '2016-12-01', '1989-12-31', 0, '', 0, '0000-00-00'),
(581926, 'Gesa Sukmawan', 'TE', 'TED', 'TED-1', 'Development Engineer', 'STRATA 1', '2016-12-01', '1993-10-17', 0, '', 0, '0000-00-00'),
(581927, 'Lutfi Havidz Kirantho', 'TE', 'TEA', 'TEA-2', 'Development Engineer', 'STRATA 1', '2017-01-02', '1987-10-29', 0, '', 0, '0000-00-00'),
(581928, 'Winaldo Satryadi', 'TE', 'TE', 'TEC-1', 'Development Engineer', 'STRATA 1', '2016-12-01', '1994-06-23', 0, '', 0, '0000-00-00'),
(581929, 'Havid Satyaji Nugroho', 'TE', 'TER', 'TER-3', 'Development Engineer', 'STRATA 1', '2016-12-01', '1993-05-16', 0, '', 0, '0000-00-00'),
(581930, 'M. Amirullah Akbar', 'TE', 'TE', 'TEC-1', 'Development Engineer', 'STRATA 2', '2016-12-01', '1991-08-24', 0, '', 0, '0000-00-00'),
(581931, 'Fanny Ardhy Pratama', 'TE', 'TER', 'TER-4', 'Development Engineer', 'STRATA 1', '2016-12-01', '1991-05-27', 0, '', 0, '0000-00-00'),
(581932, 'Taufiq Rachman Hidayat', 'TE', 'TEA', 'TEA-1', 'Development Engineer', 'STRATA 1', '2016-12-01', '1993-08-02', 0, '', 0, '0000-00-00'),
(581947, 'Ghufran Haris Suryadi', 'TE', 'TER', 'TER-1', 'Development Engineer', 'STRATA 1', '2017-01-02', '1993-12-11', 0, '', 0, '0000-00-00'),
(581952, 'Muhammad Fitrah Sugita', 'TE', 'TEA', 'TEA-1', 'Development Engineer', 'STRATA 1', '2017-01-02', '1987-06-13', 0, '', 0, '0000-00-00'),
(581982, 'M. Faisal Winarto', 'TE', 'TER', 'TER-4', 'Development Engineer', 'STRATA 1', '2017-02-01', '1992-01-29', 0, '', 0, '0000-00-00'),
(581992, 'Siti Hidayati Mutiara Kurnia', 'TE', 'TER', 'TER-2', 'Development Engineer', 'STRATA 1', '2017-02-01', '1993-02-06', 0, '', 0, '0000-00-00'),
(581997, 'Dhanistha Aryaditya', 'TE', 'TE', 'TEC-1', 'Development Engineer', 'STRATA 1', '2017-02-01', '1990-08-30', 0, '', 0, '0000-00-00'),
(581998, 'Arjun Kholifatulloh', 'TE', 'TE', 'TEC-1', 'Development Engineer', 'STRATA 1', '2017-03-01', '1993-06-03', 0, '', 0, '0000-00-00'),
(582008, 'Moh. Sidharta Yuliarta', 'TE', 'TE', 'TEC-1', 'Development Engineer', 'STRATA 2', '2017-04-01', '1983-07-31', 0, '', 0, '0000-00-00'),
(582014, 'Erlangga bin Rudy Sunaryo', 'TE', 'TEA', 'TEA-3', 'Development Engineer', 'STRATA 1', '2017-04-01', '1993-07-01', 0, '', 0, '0000-00-00'),
(582044, 'Wanda Andreas Widyatmoko', 'TE', 'TED', 'TED-3', 'Development Engineer', 'STRATA 1', '2017-05-01', '1993-01-20', 0, '', 0, '0000-00-00'),
(582068, 'Anugrah Fajar Iqbal Ikhsan', 'TE', 'TEA', 'TEA-2', 'Development Engineer', 'STRATA 1', '2017-05-01', '1993-06-02', 0, '', 0, '0000-00-00'),
(582081, 'Aulia Faza', 'TE', 'TEA', 'TEA-4', 'Development Engineer', 'STRATA 2', '2017-05-01', '1993-03-18', 0, '', 0, '0000-00-00'),
(582085, 'Martina Widiramdhani', 'TE', 'TE', 'TEC-1', 'Development Engineer', 'STRATA 2', '2017-05-01', '1992-03-14', 0, '', 0, '0000-00-00'),
(582094, 'Haditya Wanaputra', 'TE', 'TEA', 'TEA-4', 'Development Engineer', 'STRATA 1', '2017-06-01', '1992-05-03', 0, '', 0, '0000-00-00'),
(582151, 'Gita Andhika Swastanto', 'TE', 'TEA', 'TEA-2', 'Development Engineer', 'STRATA 1', '2017-06-01', '1992-07-12', 0, '', 0, '0000-00-00'),
(582788, 'Arif F. De Mello', 'TE', 'TE', 'TEC-1', 'Development Engineer', 'STRATA 1', '2018-05-01', '1994-02-02', 0, '', 0, '0000-00-00'),
(582790, 'Bisma Kertanegara', 'TE', 'TE', 'TEC-1', 'Development Engineer', 'STRATA 1', '2018-05-01', '1995-07-08', 0, '', 0, '0000-00-00'),
(582797, 'Achmad Fathony', 'TE', 'TE', 'TEC-1', 'Development Engineer', 'STRATA 1', '2018-06-01', '1993-10-26', 0, '', 0, '0000-00-00'),
(582798, 'Miftahurrohim', 'TE', 'TE', 'TEC-1', 'Development Engineer', 'STRATA 1', '2018-06-01', '1991-10-05', 0, '', 0, '0000-00-00'),
(582801, 'Mochammad Nurwanto', 'TE', 'TE', 'TEC-1', 'Development Engineer', 'STRATA 1', '2018-06-01', '1994-10-13', 0, '', 0, '0000-00-00'),
(582803, 'Bambang Muhammad Yusup', 'TE', 'TE', 'TEC-1', 'Development Engineer', 'STRATA 1', '2018-06-01', '1995-03-20', 0, '', 0, '0000-00-00'),
(582804, 'Sarah Nabilah', 'TE', 'TE', 'TEC-1', 'Development Engineer', 'STRATA 1', '2018-06-01', '1995-12-28', 0, '', 0, '0000-00-00'),
(582807, 'Aulia Lazuardi Muhammad', 'TE', 'TE', 'TEC-1', 'Development Engineer', 'STRATA 2', '2018-06-01', '1991-06-21', 0, '', 0, '0000-00-00'),
(582810, 'Didit Pringgondani', 'TE', 'TE', 'TEC-1', 'Development Engineer', 'STRATA 1', '2018-06-01', '1994-10-13', 0, '', 0, '0000-00-00'),
(582824, 'Dewi Larasati', 'TE', 'TE', 'TEC-1', 'Development Engineer', 'STRATA 1', '2018-06-01', '1995-11-29', 0, '', 0, '0000-00-00'),
(582825, 'Selvi Keniapurna', 'TE', 'TE', 'TEC-1', 'Development Engineer', 'STRATA 1', '2018-06-01', '1991-02-07', 0, '', 0, '0000-00-00'),
(582876, 'Ahmad Fadli', 'TE', 'TE', 'TEC-1', 'Development Engineer', 'STRATA 1', '2018-07-01', '1994-12-26', 0, '', 0, '0000-00-00'),
(582882, 'Eko Priamadi', 'TE', 'TE', 'TEC-1', 'Development Engineer', 'STRATA 2', '2018-08-01', '1989-04-10', 0, '', 0, '0000-00-00'),
(582887, 'Faishal Muhammad', 'TE', 'TE', 'TEC-1', 'Development Engineer', 'STRATA 2', '2018-08-01', '1995-10-25', 0, '', 0, '0000-00-00'),
(582902, 'Puji Rochmat Kurniadi', 'TE', 'TE', 'TEC-1', 'Development Engineer', 'STRATA 1', '2018-08-01', '1995-05-11', 0, '', 0, '0000-00-00'),
(582907, 'Daryo Rahmadi', 'TE', 'TE', 'TEC-1', 'Development Engineer', 'STRATA 1', '2018-09-01', '1995-07-20', 0, '', 0, '0000-00-00'),
(582932, 'Danny Eldo', 'TE', 'TE', 'TEC-1', 'Trainee for Development Engineer', 'STRATA 2', '2018-05-07', '1988-04-10', 0, '', 0, '0000-00-00'),
(582937, 'Fridam Amruloh Baqarizky', 'TE', 'TE', 'TEC-1', 'Trainee for Development Engineer', 'STRATA 1', '2018-05-07', '1997-08-17', 0, '', 0, '0000-00-00'),
(582943, 'Ahmaf Furqan', 'TE', 'TE', 'TEC-1', 'Trainee for Development Engineer', 'STRATA 2', '2018-06-04', '1990-08-23', 0, '', 0, '0000-00-00'),
(781297, 'Mardjoko Taryono', 'TE', 'TER', 'TER-2', 'Senior Development Engineer', 'STRATA 1', '2012-05-14', '1956-03-10', 0, '', 0, '0000-00-00'),
(782206, 'Mawardi', 'TE', 'TER', 'TER-2', 'Senior Development Engineer', 'STRATA 1', '2015-09-21', '1959-07-28', 0, '', 0, '0000-00-00'),
(782391, 'Agus Subekti', 'TE', 'TED', 'TED-2', 'Senior Development Engineer', 'STRATA 1', '1983-10-01', '1960-08-11', 0, '', 0, '0000-00-00'),
(782405, 'Aris Mundi Prabowo', 'TE', 'TE', 'TE', 'Engineering Expert', 'STRATA 1', '1989-01-02', '1960-11-27', 0, '', 0, '0000-00-00'),
(782407, 'I Gede Nyoman Sudikayasa', 'TE', 'TEA', 'TEA', 'Senior Development Engineer', 'STRATA 1', '2016-12-19', '1967-04-01', 0, '', 0, '0000-00-00'),
(782457, 'Barjito', 'TE', 'TEA', 'TEA', 'Engineering Expert', 'STRATA 1', '1983-10-01', '1961-02-10', 0, '', 0, '0000-00-00'),
(782506, 'Mega Resty Sudigdo', 'TE', 'TE', 'TEC-1', 'Trainee for Development Engineer', 'STRATA 1', '2018-06-04', '1995-02-10', 0, '', 0, '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `training`
--

CREATE TABLE `training` (
  `id_status` int(11) NOT NULL,
  `no_peg` int(10) NOT NULL,
  `unit` varchar(100) NOT NULL,
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

INSERT INTO `training` (`id_status`, `no_peg`, `unit`, `done_human`, `due_human`, `stat_human`, `done_cas`, `due_cas`, `stat_cas`, `done_fts`, `stat_fts`, `done_sms`, `stat_sms`, `done_ewis`, `stat_ewis`, `done_module`, `stat_module`, `done_gqs`, `stat_gqs`, `done_batk`, `stat_batk`, `done_basic`, `stat_basic`, `done_cont`, `stat_cont`, `done_typer1`, `stat_typer1`, `done_typer2`, `stat_typer2`, `done_typer3`, `stat_typer3`) VALUES
(1, 519884, 'TED-1', '2016-12-25', '2018-12-25', 5, '2015-03-13', '2017-03-13', 5, '2012-02-15', 1, '2008-12-10', 5, '0000-00-00', 0, '0000-00-00', 4, '0000-00-00', 4, '0000-00-00', 0, '0000-00-00', 0, '0000-00-00', 0, '0000-00-00', '', '0000-00-00', '', '0000-00-00', ''),
(2, 522776, 'TED-5', '2017-12-05', '2019-12-04', 5, '2015-03-19', '2017-03-18', 1, '2010-10-26', 5, '2015-08-18', 5, '2015-05-29', 5, '2017-10-24', 5, '0000-00-00', 4, '1989-04-21', 5, '0000-00-00', 0, '0000-00-00', 4, '0000-00-00', '', '0000-00-00', '', '0000-00-00', ''),
(3, 524943, 'TER-5', '2017-05-16', '2019-05-15', 5, '2016-10-20', '2018-10-19', 4, '2010-05-25', 5, '2010-02-24', 5, '2017-03-24', 5, '0000-00-00', 4, '0000-00-00', 4, '0000-00-00', 0, '2005-03-15', 5, '0000-00-00', 4, '0000-00-00', '', '0000-00-00', '', '0000-00-00', ''),
(4, 525307, 'TER-5', '2017-05-16', '2019-05-15', 5, '0000-00-00', '0000-00-00', 4, '2008-04-22', 5, '2010-02-25', 5, '2017-06-09', 5, '0000-00-00', 4, '2018-06-28', 4, '0000-00-00', 0, '0000-00-00', 0, '0000-00-00', 4, '0000-00-00', '', '0000-00-00', '', '0000-00-00', ''),
(5, 525723, 'TEL', '2017-06-02', '2019-06-01', 5, '2016-08-01', '2018-07-31', 4, '2016-02-10', 5, '2008-02-18', 5, '2015-12-10', 5, '0000-00-00', 4, '2016-08-04', 5, '1992-02-20', 5, '0000-00-00', 0, '1999-02-22', 5, '1993-07-08', 'A300', '0000-00-00', '', '0000-00-00', ''),
(6, 526912, 'TEL-1', '2017-06-02', '2019-06-01', 5, '2014-12-22', '2016-12-21', 1, '2017-10-11', 5, '2008-08-13', 5, '2014-01-17', 5, '0000-00-00', 4, '0000-00-00', 4, '1992-10-19', 5, '2012-04-16', 5, '0000-00-00', 4, '1994-07-28', '', '0000-00-00', '', '0000-00-00', ''),
(7, 527264, 'TER-5', '2017-05-16', '2019-05-15', 5, '2016-08-01', '2018-07-31', 4, '2010-06-25', 5, '2008-07-25', 5, '2016-08-02', 5, '0000-00-00', 4, '2016-08-04', 5, '0000-00-00', 0, '2005-03-15', 5, '0000-00-00', 4, '0000-00-00', '', '0000-00-00', '', '0000-00-00', ''),
(8, 527555, 'TER-3', '2018-04-05', '2020-04-04', 5, '2016-09-22', '2018-09-21', 4, '2010-04-30', 5, '2008-06-05', 5, '0000-00-00', 0, '0000-00-00', 4, '0000-00-00', 2, '0000-00-00', 0, '0000-00-00', 0, '0000-00-00', 4, '2016-01-18', 'B737 NG', '0000-00-00', '', '0000-00-00', ''),
(9, 527556, 'TER-5', '2017-05-16', '2019-05-15', 5, '2016-08-01', '2018-07-31', 4, '2010-06-03', 5, '2010-02-25', 5, '2016-08-02', 5, '0000-00-00', 4, '2016-08-04', 5, '0000-00-00', 0, '2005-03-15', 5, '2018-03-23', 5, '0000-00-00', '', '0000-00-00', '', '0000-00-00', ''),
(10, 527561, 'TE', '2017-12-28', '2019-12-27', 5, '2016-08-01', '2018-07-31', 4, '2016-08-05', 5, '2008-02-18', 5, '2016-08-02', 5, '0000-00-00', 4, '2016-08-04', 5, '1993-04-05', 5, '1995-05-17', 5, '1994-05-16', 5, '1994-01-18', 'A300', '0000-00-00', '', '0000-00-00', ''),
(11, 527563, 'TE', '2018-08-13', '2020-08-12', 5, '2016-10-20', '2018-10-19', 4, '2010-03-19', 5, '2008-07-25', 5, '2013-01-29', 5, '0000-00-00', 4, '0000-00-00', 4, '1993-07-08', 5, '1995-02-23', 5, '1994-07-08', 5, '1994-01-10', 'A300', '0000-00-00', '', '0000-00-00', ''),
(12, 527627, 'TEA-1', '2017-05-15', '2019-05-14', 5, '2016-08-01', '2018-07-31', 4, '2010-07-07', 5, '2008-03-03', 5, '2016-08-01', 5, '2017-06-22', 5, '2016-08-04', 5, '0000-00-00', 0, '2003-03-28', 5, '2010-10-15', 5, '2003-11-07', 'B737 NG', '1999-09-15', 'B737 CL', '1994-09-29', 'MD11'),
(13, 527722, 'TED-5', '2018-03-19', '2020-03-18', 5, '2016-09-22', '2018-09-21', 4, '2015-11-24', 5, '2014-04-11', 5, '2015-11-06', 5, '0000-00-00', 4, '2018-02-28', 5, '0000-00-00', 0, '2015-09-04', 5, '0000-00-00', 4, '0000-00-00', '', '0000-00-00', '', '0000-00-00', ''),
(14, 527736, 'TER-2', '2017-05-16', '2019-05-15', 5, '2015-03-13', '2017-03-12', 1, '0000-00-00', 0, '2008-11-14', 5, '2012-04-27', 5, '0000-00-00', 4, '0000-00-00', 4, '0000-00-00', 0, '2012-04-16', 5, '0000-00-00', 4, '2013-12-27', 'A320', '2009-05-01', 'B737 CL', '0000-00-00', ''),
(15, 527830, 'TER-5', '2018-02-27', '2020-02-26', 5, '2016-08-01', '2018-07-31', 4, '2010-05-27', 5, '2008-06-05', 5, '2016-08-02', 5, '0000-00-00', 4, '2016-08-04', 5, '0000-00-00', 0, '2005-03-15', 5, '2018-03-23', 5, '0000-00-00', '', '0000-00-00', '', '0000-00-00', ''),
(16, 527941, 'TER-2', '2018-04-05', '2020-04-04', 5, '2016-09-22', '2018-09-21', 4, '2010-12-17', 5, '0000-00-00', 5, '2012-07-13', 5, '0000-00-00', 4, '0000-00-00', 4, '0000-00-00', 0, '2015-01-30', 5, '2017-10-13', 5, '1999-03-26', 'B737 CL', '0000-00-00', '', '0000-00-00', ''),
(17, 528819, 'TEA', '2018-04-05', '2020-04-04', 5, '2018-05-03', '2020-05-02', 5, '2010-05-19', 5, '2008-06-05', 5, '2012-06-01', 5, '0000-00-00', 4, '0000-00-00', 4, '1994-09-20', 5, '1995-02-23', 5, '1995-09-15', 5, '2000-10-12', 'B737 CL', '0000-00-00', '', '0000-00-00', ''),
(18, 528822, 'TEA', '2018-04-19', '2020-04-18', 5, '2018-06-01', '2018-05-31', 1, '2016-06-07', 5, '2008-07-25', 5, '2016-06-02', 5, '0000-00-00', 4, '2016-06-07', 5, '1994-09-20', 5, '1995-07-03', 5, '1996-09-16', 5, '2009-11-06', 'A330', '0000-00-00', '', '0000-00-00', ''),
(19, 529216, 'TER-4', '2017-05-16', '2019-05-15', 5, '2017-06-08', '2019-06-07', 5, '2010-04-15', 5, '2008-03-03', 5, '2012-06-01', 5, '2017-10-24', 5, '2016-08-04', 5, '1994-09-20', 5, '1996-12-05', 5, '2003-06-19', 5, '2011-10-24', 'B737 NG', '0000-00-00', '', '0000-00-00', ''),
(20, 530334, 'TEQ', '2017-06-02', '2019-06-01', 5, '2015-06-17', '2017-06-16', 1, '2010-06-30', 5, '2008-03-03', 5, '2012-04-27', 5, '2017-10-24', 5, '0000-00-00', 4, '1995-12-29', 5, '2006-05-09', 5, '2017-10-13', 5, '1999-11-12', 'A330', '0000-00-00', '', '0000-00-00', ''),
(21, 530336, 'TEA-3', '2017-05-16', '2019-05-15', 5, '2016-10-20', '2018-10-19', 4, '2010-06-30', 5, '2008-03-03', 5, '2012-06-19', 5, '0000-00-00', 4, '0000-00-00', 4, '1995-03-22', 5, '1995-09-27', 5, '1996-11-08', 5, '2000-06-02', 'B737 CL', '0000-00-00', '', '0000-00-00', ''),
(22, 530337, 'TEA', '2018-01-16', '2020-01-15', 5, '2015-05-12', '2017-05-11', 1, '2010-04-22', 5, '2008-03-03', 5, '2011-12-23', 5, '0000-00-00', 4, '0000-00-00', 4, '1995-03-22', 5, '1996-08-27', 5, '1999-04-14', 5, '2010-05-21', 'B737 NG', '1995-08-25', 'B747', '0000-00-00', ''),
(23, 530339, 'TEA', '2018-04-05', '2020-04-04', 5, '2017-07-24', '2019-07-23', 5, '2010-04-09', 5, '2008-03-03', 5, '2012-06-19', 5, '0000-00-00', 4, '0000-00-00', 4, '1995-07-19', 5, '1995-09-27', 5, '1996-11-08', 5, '2016-01-25', 'A320', '0000-00-00', '', '0000-00-00', ''),
(24, 530341, 'TER', '2018-04-19', '2020-04-18', 5, '2015-03-17', '2017-03-16', 1, '2010-04-30', 5, '2010-02-25', 5, '2010-02-25', 5, '0000-00-00', 4, '2018-05-25', 5, '1995-04-03', 5, '1995-08-14', 5, '1999-09-20', 5, '1997-09-08', 'A330', '0000-00-00', '', '0000-00-00', ''),
(25, 530346, 'TER-5', '2018-04-19', '2020-04-18', 5, '2016-08-01', '2018-07-31', 4, '2010-08-26', 5, '2008-03-03', 5, '2012-01-13', 5, '2017-10-24', 5, '2016-08-04', 5, '1995-07-19', 5, '1995-09-27', 5, '1999-04-14', 5, '2004-03-10', '727-200', '2001-05-30', 'B747', '0000-00-00', ''),
(26, 530348, 'TED', '2016-12-05', '2018-12-04', 4, '2017-06-08', '2019-06-07', 5, '2010-06-25', 5, '2016-12-05', 5, '2012-04-18', 5, '2018-06-04', 5, '2018-04-20', 5, '1995-10-27', 5, '1996-08-27', 5, '1999-09-20', 5, '1998-04-15', 'B747', '0000-00-00', '', '0000-00-00', ''),
(27, 530351, 'TER-2', '2017-05-16', '2019-05-15', 5, '2016-09-22', '2018-09-21', 4, '2010-06-02', 5, '2008-03-03', 5, '2012-02-24', 5, '0000-00-00', 4, '0000-00-00', 4, '1995-10-27', 5, '1997-05-25', 5, '0000-00-00', 4, '1996-10-30', 'B747', '0000-00-00', '', '0000-00-00', ''),
(28, 530352, 'TE', '2016-11-22', '2018-11-21', 4, '2016-12-27', '2018-12-26', 4, '2010-07-26', 5, '2008-02-18', 5, '2011-06-06', 5, '2014-01-17', 5, '2016-08-04', 5, '1995-10-27', 5, '1996-12-05', 5, '2000-08-25', 5, '2003-05-12', 'A330', '0000-00-00', '', '0000-00-00', ''),
(29, 530354, 'TEA', '2018-04-05', '2020-04-04', 5, '2016-08-01', '2018-07-31', 4, '2010-06-16', 5, '2008-02-18', 5, '2012-06-22', 5, '0000-00-00', 4, '2016-08-04', 5, '1995-10-27', 5, '1996-08-27', 5, '1999-06-25', 5, '1998-07-27', 'B737 CL', '0000-00-00', '', '0000-00-00', ''),
(30, 530356, 'TEA-4', '2017-07-12', '2019-07-11', 5, '2017-08-01', '2019-07-31', 5, '2015-07-07', 5, '2008-03-03', 5, '2015-07-06', 5, '0000-00-00', 4, '2017-08-03', 5, '1995-07-19', 5, '1995-09-27', 5, '1999-09-07', 5, '2000-09-19', 'B747', '0000-00-00', '', '0000-00-00', ''),
(31, 532013, 'TEJ', '2018-04-19', '2020-04-18', 5, '2013-11-08', '2015-11-07', 1, '2011-02-04', 5, '2008-08-01', 5, '2013-02-06', 5, '2018-07-18', 5, '0000-00-00', 4, '0000-00-00', 0, '2012-04-03', 5, '2016-03-04', 5, '2012-07-23', 'CRJ 1000', '0000-00-00', '', '0000-00-00', ''),
(32, 532015, 'TEN', '2016-12-05', '2018-12-04', 4, '2015-05-11', '2017-05-10', 1, '2010-04-15', 5, '2008-07-25', 5, '2012-06-14', 5, '2017-10-24', 5, '2018-04-20', 5, '2011-03-14', 5, '2007-09-12', 5, '2017-10-13', 5, '2010-03-30', 'B737 NG', '0000-00-00', '', '0000-00-00', ''),
(33, 532072, 'TEA', '2018-08-13', '2020-08-12', 5, '2015-05-11', '2017-05-10', 1, '2009-11-05', 5, '2008-07-25', 5, '2012-06-01', 5, '0000-00-00', 4, '0000-00-00', 4, '1993-05-11', 5, '2007-09-12', 5, '0000-00-00', 4, '0000-00-00', '', '0000-00-00', '', '0000-00-00', ''),
(34, 532135, 'TEA', '2018-08-13', '2020-08-12', 5, '2016-10-20', '2018-10-19', 4, '2010-06-25', 5, '2008-07-25', 5, '2011-12-02', 5, '0000-00-00', 4, '0000-00-00', 4, '1993-05-11', 5, '0000-00-00', 0, '0000-00-00', 4, '0000-00-00', '', '0000-00-00', '', '0000-00-00', ''),
(35, 532180, 'TED-2', '2018-04-19', '2020-04-18', 5, '2017-03-20', '2019-03-19', 5, '2010-04-22', 5, '2008-08-01', 5, '2017-08-11', 5, '2017-10-24', 5, '0000-00-00', 4, '2011-06-23', 5, '2010-12-10', 5, '2016-03-04', 5, '0000-00-00', '', '0000-00-00', '', '0000-00-00', ''),
(36, 532213, 'TER-1', '2018-04-19', '2020-04-18', 5, '2017-06-12', '2019-06-11', 5, '2010-01-27', 5, '2008-08-01', 5, '2011-12-02', 5, '2017-10-24', 5, '0000-00-00', 4, '2009-01-22', 5, '2010-12-10', 5, '2016-02-19', 5, '0000-00-00', '', '0000-00-00', '', '0000-00-00', ''),
(37, 532226, 'TE', '2017-05-15', '2019-05-14', 5, '0000-00-00', '0000-00-00', 0, '0000-00-00', 0, '2008-11-17', 5, '0000-00-00', 0, '0000-00-00', 0, '0000-00-00', 0, '0000-00-00', 0, '0000-00-00', 0, '0000-00-00', 0, '0000-00-00', '', '0000-00-00', '', '0000-00-00', ''),
(38, 532227, 'TEA-2', '2017-06-02', '2019-06-01', 5, '2017-07-24', '2019-07-23', 5, '2010-07-21', 5, '2008-08-01', 5, '2012-05-04', 5, '2017-10-24', 5, '2017-07-20', 5, '0000-00-00', 0, '2010-12-10', 5, '2016-02-19', 5, '2009-08-27', 'B737 NG', '0000-00-00', '', '0000-00-00', ''),
(39, 532235, 'TED-1', '2017-12-05', '2019-12-04', 5, '2016-09-22', '2018-09-21', 4, '2010-04-15', 5, '2008-11-25', 5, '2012-09-18', 5, '0000-00-00', 4, '0000-00-00', 4, '2010-03-25', 5, '2010-12-10', 5, '2016-02-19', 5, '2012-05-16', 'A330', '0000-00-00', '', '0000-00-00', ''),
(40, 532262, 'TEZ', '2018-04-19', '2020-04-18', 5, '2016-08-10', '2018-08-09', 4, '2010-05-27', 5, '2008-11-17', 5, '2012-06-21', 5, '2017-10-24', 5, '0000-00-00', 4, '0000-00-00', 0, '2013-04-26', 5, '2016-02-19', 5, '2009-07-27', 'A330', '0000-00-00', '', '0000-00-00', ''),
(41, 532275, 'TER-2', '2017-08-22', '2019-08-21', 5, '2017-06-08', '2019-06-07', 5, '2010-06-09', 5, '2008-11-17', 5, '2011-12-23', 5, '2017-10-24', 5, '0000-00-00', 4, '2011-03-14', 5, '2010-12-10', 5, '2016-03-04', 5, '2010-02-04', 'A330', '0000-00-00', '', '0000-00-00', ''),
(42, 532464, 'TER-4', '2014-06-10', '2016-06-09', 1, '2015-10-13', '2017-10-12', 1, '2011-11-21', 5, '2010-04-09', 5, '2013-01-30', 5, '0000-00-00', 4, '0000-00-00', 4, '0000-00-00', 0, '2013-04-26', 5, '0000-00-00', 4, '0000-00-00', '', '0000-00-00', '', '0000-00-00', ''),
(43, 532793, 'TEA-4', '2018-04-05', '2020-04-04', 5, '2015-03-19', '2017-03-20', 1, '2010-03-17', 5, '2010-02-24', 5, '2012-06-28', 5, '2017-10-24', 5, '2017-07-20', 5, '2011-03-14', 5, '2011-05-06', 5, '2016-02-19', 5, '2017-02-06', 'B787-8/9 ', '0000-00-00', '', '0000-00-00', ''),
(44, 532975, 'TER-3', '2017-06-02', '2019-06-01', 5, '2017-06-12', '2019-06-11', 5, '2010-06-10', 5, '2010-02-25', 5, '2012-09-18', 5, '2017-10-24', 5, '2016-08-04', 5, '2011-06-23', 5, '2010-12-10', 5, '2016-02-19', 5, '0000-00-00', '', '0000-00-00', '', '0000-00-00', ''),
(45, 532976, 'TED-3', '2018-04-05', '2020-04-04', 5, '2016-08-01', '2018-07-31', 4, '2012-06-14', 5, '2010-02-24', 5, '2015-07-31', 5, '2017-10-24', 5, '2016-08-04', 5, '0000-00-00', 0, '2010-12-10', 5, '0000-00-00', 4, '2012-11-21', 'A320', '0000-00-00', '', '0000-00-00', ''),
(46, 532977, 'TEC-1', '2016-12-05', '2018-12-04', 4, '2016-08-10', '2018-08-09', 4, '2012-02-15', 5, '2010-02-24', 5, '2011-12-23', 5, '2017-10-24', 5, '0000-00-00', 4, '2011-11-28', 5, '2010-12-10', 5, '2016-05-04', 5, '2011-06-01', 'A330', '0000-00-00', '', '0000-00-00', ''),
(47, 533056, 'TER-4', '2018-04-19', '2020-04-18', 5, '2017-03-20', '2019-03-19', 5, '2012-06-14', 5, '2012-02-28', 5, '2015-04-30', 5, '0000-00-00', 4, '0000-00-00', 4, '2011-03-14', 5, '2011-07-29', 5, '2017-10-27', 5, '2014-09-05', 'A330', '0000-00-00', '', '0000-00-00', ''),
(48, 533079, 'TER-1', '2018-04-19', '2020-04-18', 5, '2016-11-03', '2018-11-02', 4, '2011-01-07', 5, '2011-02-28', 5, '2012-05-30', 5, '0000-00-00', 4, '2015-05-25', 5, '2011-11-28', 5, '2010-12-10', 5, '2017-10-13', 5, '2012-09-28', 'B737 NG', '0000-00-00', '', '0000-00-00', ''),
(49, 533084, 'TED-4', '2016-12-05', '2018-12-04', 4, '2018-06-06', '2020-06-06', 5, '2013-06-26', 5, '2012-02-28', 5, '2015-12-04', 5, '2017-10-24', 5, '0000-00-00', 4, '2011-03-14', 5, '2012-07-06', 5, '2018-06-25', 5, '2012-05-16', 'A330', '0000-00-00', '', '0000-00-00', ''),
(50, 533208, 'TEA-3', '2018-08-13', '2020-08-12', 5, '2017-08-15', '2019-08-14', 5, '2012-07-11', 5, '2011-02-28', 5, '2012-01-09', 5, '0000-00-00', 4, '0000-00-00', 4, '2011-06-23', 5, '2011-10-24', 5, '2017-10-13', 5, '0000-00-00', '', '0000-00-00', '', '0000-00-00', ''),
(51, 533212, 'TEL-1', '2016-10-06', '2018-10-05', 4, '2017-03-20', '2019-03-19', 5, '2012-11-28', 5, '2011-02-28', 5, '2012-06-19', 5, '0000-00-00', 4, '0000-00-00', 4, '2011-06-23', 5, '2011-10-24', 5, '2017-11-14', 5, '2014-02-07', 'CRJ 1000', '0000-00-00', '', '0000-00-00', ''),
(52, 533213, 'TEA', '2018-08-13', '2020-08-12', 5, '2016-01-18', '2018-01-17', 1, '2012-03-09', 5, '2011-02-28', 5, '2012-06-25', 5, '0000-00-00', 4, '0000-00-00', 4, '2011-06-23', 5, '2011-10-24', 5, '2016-05-04', 5, '2014-05-23', 'B737 NG', '0000-00-00', '', '0000-00-00', ''),
(53, 533246, 'TER-3', '2018-04-05', '2020-04-04', 5, '2017-03-20', '2019-03-19', 5, '2012-06-14', 5, '2011-02-28', 5, '2012-01-13', 5, '0000-00-00', 4, '0000-00-00', 4, '2011-11-28', 5, '2010-12-10', 5, '2017-12-15', 5, '2013-07-29', 'B737 NG', '0000-00-00', '', '0000-00-00', ''),
(54, 533356, 'TEA', '2018-02-22', '2020-02-21', 5, '2018-05-03', '2020-05-02', 5, '2017-05-15', 5, '2011-02-28', 5, '0000-00-00', 4, '0000-00-00', 4, '2018-02-28', 5, '2012-05-24', 5, '2014-09-29', 5, '2018-06-25', 4, '0000-00-00', '', '0000-00-00', '', '0000-00-00', ''),
(55, 533375, 'TED-2', '2018-08-13', '2020-08-12', 5, '2016-05-31', '2018-06-01', 1, '2015-04-10', 5, '2012-02-28', 5, '2014-01-02', 5, '0000-00-00', 4, '0000-00-00', 4, '2011-11-28', 5, '2011-05-06', 5, '2017-10-13', 5, '2016-01-25', 'A320', '0000-00-00', '', '0000-00-00', ''),
(56, 580103, 'TED-3', '2018-04-05', '2020-04-04', 5, '2017-03-20', '2019-03-19', 5, '2013-04-12', 5, '2012-03-27', 5, '2014-02-21', 5, '0000-00-00', 4, '0000-00-00', 4, '2012-03-05', 5, '2012-07-06', 5, '2017-10-13', 5, '2012-06-19', 'A320', '0000-00-00', '', '0000-00-00', ''),
(57, 580104, 'TEA-1', '2018-04-05', '2020-04-04', 5, '2017-06-04', '2019-06-03', 5, '2013-06-25', 5, '2012-11-26', 5, '2012-03-26', 5, '2018-07-18', 5, '2018-02-28', 5, '2012-03-05', 5, '2012-07-06', 5, '2017-10-13', 5, '2013-05-24', 'A320', '0000-00-00', '', '0000-00-00', ''),
(58, 580129, 'TEA-2', '2017-09-27', '2019-09-26', 5, '2016-11-03', '2018-11-02', 4, '2012-11-28', 5, '2012-03-27', 5, '2014-01-17', 5, '0000-00-00', 4, '0000-00-00', 4, '2012-03-05', 5, '2012-07-06', 5, '2018-06-25', 4, '2016-02-29', 'ATR72', '0000-00-00', '', '0000-00-00', ''),
(59, 580176, 'TE', '2018-04-19', '2020-04-18', 5, '2017-06-06', '2019-06-05', 5, '2015-05-05', 5, '2012-02-29', 5, '2012-02-24', 5, '0000-00-00', 4, '0000-00-00', 4, '2012-05-24', 5, '2012-07-06', 5, '2017-11-14', 5, '2013-01-04', 'B737 NG', '0000-00-00', '', '0000-00-00', ''),
(60, 580177, 'TER-4', '2018-02-27', '2020-02-26', 5, '2017-06-12', '2019-06-11', 5, '2012-11-28', 5, '2012-02-28', 5, '2015-06-09', 5, '0000-00-00', 4, '0000-00-00', 4, '2012-05-24', 5, '2012-07-06', 5, '2017-10-27', 5, '2015-09-11', 'B737 NG', '0000-00-00', '', '0000-00-00', ''),
(61, 580187, 'TEA-3', '2018-04-19', '2020-04-18', 5, '2017-03-20', '2019-03-19', 5, '2012-07-11', 5, '2013-03-19', 5, '2015-09-30', 5, '0000-00-00', 4, '0000-00-00', 4, '2012-05-24', 5, '2012-07-06', 5, '2018-06-25', 4, '2012-11-27', 'A330', '0000-00-00', '', '0000-00-00', ''),
(62, 580189, 'TEL-2', '2018-05-23', '2020-05-22', 5, '2015-11-06', '2017-11-05', 2, '2013-04-12', 5, '2012-03-27', 5, '2015-11-26', 5, '0000-00-00', 4, '2018-02-28', 5, '2012-11-05', 5, '2012-04-16', 5, '2018-08-02', 4, '2016-07-26', 'B737 NG', '0000-00-00', '', '0000-00-00', ''),
(63, 580202, 'TEA-3', '2018-08-13', '2020-08-12', 5, '2017-03-20', '2019-03-19', 5, '2013-04-12', 5, '2012-10-02', 5, '2015-09-30', 5, '0000-00-00', 4, '0000-00-00', 4, '2012-08-01', 5, '2013-08-26', 5, '2017-11-14', 5, '2016-01-25', 'A320', '0000-00-00', '', '0000-00-00', ''),
(64, 580203, 'TER-3', '2018-04-05', '2020-04-04', 5, '2017-04-17', '2019-04-16', 5, '2013-06-25', 5, '2013-03-19', 5, '2015-03-13', 5, '0000-00-00', 4, '0000-00-00', 4, '2012-08-01', 5, '2013-04-26', 5, '2017-11-14', 5, '2016-09-15', 'ATR72', '0000-00-00', '', '0000-00-00', ''),
(65, 580204, 'TER-1', '2016-12-05', '2018-12-04', 4, '2017-06-05', '2019-06-04', 5, '2013-04-12', 5, '2012-10-02', 5, '2014-02-21', 5, '0000-00-00', 4, '2018-08-10', 5, '2012-08-01', 5, '2013-04-26', 5, '2018-03-23', 5, '2016-09-15', 'ATR72', '0000-00-00', '', '0000-00-00', ''),
(66, 580211, 'TEB', '2018-06-07', '2020-06-06', 5, '2017-06-12', '2019-06-11', 5, '2012-07-11', 5, '2012-10-02', 5, '2015-08-13', 5, '2017-10-24', 5, '2018-04-20', 5, '0000-00-00', 0, '2012-07-06', 5, '2017-10-02', 5, '0000-00-00', '', '0000-00-00', '', '0000-00-00', ''),
(67, 580427, 'TEX', '2016-12-05', '2018-10-04', 4, '2017-06-06', '2019-06-05', 5, '2013-04-12', 5, '2013-03-19', 5, '2013-02-01', 5, '2018-07-18', 5, '0000-00-00', 4, '2012-11-05', 5, '2013-04-26', 5, '2017-10-27', 5, '2014-10-31', 'ATR72', '0000-00-00', '', '0000-00-00', ''),
(68, 580431, 'TEA-1', '2017-05-15', '2019-05-14', 5, '2016-02-17', '2018-02-16', 1, '2013-06-25', 5, '2012-10-02', 5, '2015-05-29', 5, '0000-00-00', 4, '0000-00-00', 4, '2013-02-13', 5, '2013-09-09', 5, '2018-07-09', 5, '2013-04-26', 'B737 NG', '0000-00-00', '', '0000-00-00', ''),
(69, 580448, 'TER-2', '2018-04-05', '2020-04-04', 5, '2017-06-06', '2019-06-05', 5, '2013-06-25', 5, '2013-05-24', 5, '2015-10-16', 5, '0000-00-00', 4, '0000-00-00', 4, '2013-02-13', 5, '2013-04-26', 5, '2017-10-27', 5, '2016-01-25', 'B737 NG', '0000-00-00', '', '0000-00-00', ''),
(70, 580449, 'TER-5', '2018-04-05', '2020-04-04', 5, '2017-03-20', '2019-03-19', 5, '2013-06-25', 5, '2013-05-24', 5, '2015-11-13', 5, '0000-00-00', 4, '0000-00-00', 4, '2013-02-13', 5, '2013-09-09', 5, '0000-00-00', 4, '2013-03-08', 'CRJ 1000', '0000-00-00', '', '0000-00-00', ''),
(71, 580470, 'TEA-4', '2016-11-23', '2018-11-22', 4, '2017-04-17', '2019-04-16', 5, '2013-04-12', 5, '2014-02-06', 5, '2015-12-04', 5, '0000-00-00', 4, '0000-00-00', 4, '2014-04-21', 5, '2013-09-09', 5, '2017-10-13', 5, '0000-00-00', '', '0000-00-00', '', '0000-00-00', ''),
(72, 580587, 'TEA-2', '2017-05-15', '2019-05-14', 5, '2015-03-12', '2017-03-11', 1, '2013-01-01', 5, '2014-06-23', 5, '2013-06-01', 5, '0000-00-00', 4, '2018-02-28', 5, '2014-04-21', 5, '2014-09-29', 5, '0000-00-00', 4, '2016-12-06', 'B737 NG', '0000-00-00', '', '0000-00-00', ''),
(73, 580588, 'TEA-1', '2017-05-15', '2019-05-14', 5, '2016-08-27', '2018-08-26', 4, '2015-04-10', 5, '2014-02-06', 5, '2015-05-22', 5, '0000-00-00', 4, '0000-00-00', 4, '2014-04-21', 5, '2013-09-09', 5, '2017-10-27', 5, '0000-00-00', '', '0000-00-00', '', '0000-00-00', ''),
(74, 580590, 'TEA-1', '2017-05-15', '2019-05-14', 5, '2016-09-15', '2018-09-14', 4, '2014-01-01', 5, '2014-02-06', 5, '2015-12-11', 5, '2018-08-15', 5, '2018-07-10', 5, '2014-04-21', 5, '2013-09-09', 5, '2017-10-27', 5, '2016-01-25', 'A320', '0000-00-00', '', '0000-00-00', ''),
(75, 580592, 'TER-2', '2017-12-14', '2019-12-13', 5, '2017-06-06', '2019-06-05', 5, '2015-10-05', 5, '2014-02-06', 5, '2015-03-27', 5, '0000-00-00', 4, '0000-00-00', 4, '2014-04-21', 5, '2014-09-29', 5, '0000-00-00', 4, '2015-01-23', 'ATR72', '0000-00-00', '', '0000-00-00', ''),
(76, 580593, 'TER-2', '2017-05-16', '2019-05-15', 5, '2017-06-12', '2019-06-11', 5, '2015-10-05', 5, '2014-02-06', 5, '2015-10-27', 5, '0000-00-00', 4, '2018-06-28', 4, '2014-04-21', 5, '2013-09-09', 5, '0000-00-00', 4, '2015-03-06', 'CRJ 1000', '0000-00-00', '', '0000-00-00', ''),
(77, 580616, 'TEA-1', '2017-09-26', '2019-09-25', 5, '0000-00-00', '0000-00-00', 4, '2015-05-05', 5, '2014-02-06', 5, '2015-05-22', 5, '0000-00-00', 4, '2018-02-28', 5, '2014-04-21', 5, '2014-09-29', 5, '2017-10-13', 5, '2016-04-12', 'A330', '0000-00-00', '', '0000-00-00', ''),
(78, 580625, 'TER-4', '2017-12-20', '2019-12-19', 5, '2017-03-20', '2019-03-19', 5, '2014-01-23', 5, '2014-02-06', 5, '2015-12-04', 5, '0000-00-00', 4, '0000-00-00', 4, '2014-04-21', 5, '2014-09-29', 5, '2017-10-27', 5, '2014-12-12', 'A320', '0000-00-00', '', '0000-00-00', ''),
(79, 580626, 'TEA-3', '2018-04-05', '2020-04-04', 5, '2017-06-06', '2019-06-05', 5, '2015-11-24', 5, '2014-02-06', 5, '2015-08-28', 5, '0000-00-00', 4, '0000-00-00', 4, '2014-04-21', 5, '2014-09-29', 5, '2018-07-09', 5, '2016-04-06', 'A320', '0000-00-00', '', '0000-00-00', ''),
(80, 580646, 'TEA-2', '2018-01-16', '2020-01-15', 5, '2017-01-09', '2019-01-08', 5, '2015-04-10', 5, '2014-02-06', 5, '2015-03-03', 5, '0000-00-00', 4, '0000-00-00', 4, '2014-08-13', 5, '2014-02-28', 5, '0000-00-00', 4, '0000-00-00', '', '0000-00-00', '', '0000-00-00', ''),
(81, 580739, 'TEA-4', '2018-04-19', '2020-04-18', 5, '2017-06-08', '2019-06-07', 5, '2016-03-21', 5, '2014-02-06', 5, '2017-01-20', 5, '0000-00-00', 4, '0000-00-00', 4, '0000-00-00', 0, '2014-02-28', 5, '0000-00-00', 4, '0000-00-00', '', '0000-00-00', '', '0000-00-00', ''),
(82, 580743, 'TER-1', '2018-04-25', '2020-04-24', 5, '2017-04-17', '2019-04-16', 5, '2015-11-24', 5, '2014-02-06', 5, '2015-03-31', 5, '0000-00-00', 4, '0000-00-00', 4, '2014-08-13', 5, '2014-02-28', 5, '0000-00-00', 4, '2015-03-27', 'A330', '0000-00-00', '', '0000-00-00', ''),
(83, 580974, 'TER-4', '2017-09-26', '2019-09-25', 5, '2017-06-06', '2019-06-05', 5, '2015-11-24', 5, '2014-06-23', 5, '2018-02-23', 5, '0000-00-00', 4, '2018-02-28', 5, '2015-02-05', 5, '2014-09-29', 5, '2017-12-15', 5, '0000-00-00', '', '0000-00-00', '', '0000-00-00', ''),
(84, 580976, 'TER-2', '2017-01-10', '2019-01-09', 5, '2017-01-10', '2019-01-09', 5, '2015-11-19', 5, '2016-01-11', 5, '2015-11-13', 5, '0000-00-00', 4, '0000-00-00', 4, '2014-11-09', 5, '2014-09-29', 5, '0000-00-00', 4, '2016-02-17', 'A330', '0000-00-00', '', '0000-00-00', ''),
(85, 580977, 'TER-1', '2017-01-10', '2019-01-09', 5, '2016-10-24', '2018-10-23', 4, '2016-02-10', 5, '2016-01-11', 5, '2015-12-04', 5, '2018-08-15', 5, '0000-00-00', 4, '2015-02-05', 5, '2014-09-29', 5, '2017-11-14', 5, '2015-11-27', 'B737 NG', '0000-00-00', '', '0000-00-00', ''),
(86, 580978, 'TEA-4', '2017-01-10', '2019-01-09', 5, '2016-11-28', '2018-11-27', 4, '2015-11-24', 5, '2016-01-11', 5, '2015-06-09', 5, '0000-00-00', 4, '0000-00-00', 4, '2014-08-13', 5, '2014-09-29', 5, '2018-07-09', 5, '2016-07-26', 'B737 NG', '0000-00-00', '', '0000-00-00', ''),
(87, 581038, 'TEA-1', '2017-01-10', '2019-01-09', 5, '2017-03-20', '2019-03-19', 5, '2015-11-24', 5, '2014-11-14', 5, '2015-03-31', 5, '2018-07-18', 5, '0000-00-00', 4, '0000-00-00', 0, '2014-09-29', 5, '2018-03-23', 5, '2017-07-25', 'A330', '0000-00-00', '', '0000-00-00', ''),
(88, 581061, 'TER-2', '2017-03-14', '2019-03-13', 5, '2017-06-06', '2019-06-05', 5, '2016-03-21', 5, '2015-02-11', 5, '2016-10-14', 5, '0000-00-00', 4, '0000-00-00', 4, '2015-07-03', 5, '2015-01-30', 5, '0000-00-00', 4, '2015-12-09', 'A320', '0000-00-00', '', '0000-00-00', ''),
(89, 581083, 'TED-2', '2017-03-14', '2019-03-13', 5, '2017-06-06', '2019-06-05', 5, '2015-11-19', 5, '2015-01-21', 5, '2015-12-04', 5, '0000-00-00', 4, '2018-02-28', 5, '2015-11-02', 5, '2015-01-30', 5, '2017-10-27', 5, '0000-00-00', '', '0000-00-00', '', '0000-00-00', ''),
(90, 581097, 'TEA-4', '2017-04-25', '2019-04-24', 5, '2017-06-06', '2019-06-05', 5, '2015-11-24', 5, '2015-02-11', 5, '2015-10-27', 5, '0000-00-00', 4, '0000-00-00', 4, '0000-00-00', 0, '2015-01-30', 5, '0000-00-00', 4, '2016-02-15', 'A320', '0000-00-00', '', '0000-00-00', ''),
(91, 581098, 'TEA-2', '2017-01-10', '2019-01-09', 5, '2017-06-06', '2019-06-05', 5, '2015-11-24', 5, '2015-02-11', 5, '2015-12-04', 5, '0000-00-00', 4, '2018-06-28', 4, '2015-11-02', 5, '2015-01-30', 5, '2017-10-27', 5, '2016-01-25', 'A320', '0000-00-00', '', '0000-00-00', ''),
(92, 581158, 'TED-3', '2017-01-10', '2019-01-09', 5, '2017-03-20', '2019-03-19', 5, '2015-11-24', 5, '2015-02-11', 5, '2018-06-08', 5, '0000-00-00', 4, '0000-00-00', 4, '2018-09-03', 4, '2015-01-30', 5, '0000-00-00', 4, '0000-00-00', '', '0000-00-00', '', '0000-00-00', ''),
(93, 581161, 'TED-3', '2017-01-10', '2019-01-09', 5, '2017-06-06', '2019-06-05', 5, '2015-11-24', 5, '2015-02-11', 5, '2018-02-23', 5, '0000-00-00', 4, '0000-00-00', 4, '2016-02-19', 5, '2015-04-06', 5, '2017-11-14', 5, '2016-10-03', 'CRJ 1000', '0000-00-00', '', '0000-00-00', ''),
(94, 581163, 'TED-1', '2018-04-05', '2020-04-04', 5, '2017-06-06', '2019-06-05', 5, '2015-11-19', 5, '2015-02-11', 5, '2016-10-14', 5, '0000-00-00', 4, '2018-06-28', 4, '2016-02-09', 5, '2015-04-06', 5, '2017-10-27', 5, '2016-07-26', 'B737 NG', '0000-00-00', '', '0000-00-00', ''),
(95, 581169, 'TEC-1', '2017-04-26', '2019-04-25', 5, '2017-06-06', '2019-06-05', 5, '2015-11-24', 5, '2015-02-11', 5, '2017-01-20', 5, '0000-00-00', 4, '2018-02-28', 5, '2017-11-30', 5, '2015-04-06', 5, '0000-00-00', 4, '2018-06-25', 'A330', '0000-00-00', '', '0000-00-00', ''),
(96, 581170, 'TEA-3', '2017-08-22', '2019-08-21', 5, '2017-06-08', '2019-06-07', 5, '2015-11-24', 5, '2015-03-20', 5, '2015-12-04', 5, '0000-00-00', 4, '0000-00-00', 4, '2015-11-02', 5, '2015-04-06', 5, '2018-07-09', 5, '2016-09-15', 'ATR72', '0000-00-00', '', '0000-00-00', ''),
(97, 581172, 'TED-3', '2017-04-26', '2019-04-25', 5, '2017-06-08', '2019-06-07', 5, '2015-11-19', 5, '2015-02-11', 5, '2016-10-14', 5, '0000-00-00', 4, '2018-08-10', 5, '2016-02-09', 5, '2015-04-06', 5, '0000-00-00', 4, '2016-08-11', 'ATR72', '0000-00-00', '', '0000-00-00', ''),
(98, 581182, 'TED-2', '2017-04-26', '2019-04-25', 5, '2017-06-08', '2019-06-07', 5, '2015-11-19', 5, '2015-04-13', 5, '2015-12-04', 5, '0000-00-00', 4, '0000-00-00', 4, '2015-07-03', 5, '2015-10-30', 5, '2018-03-23', 5, '2016-02-29', 'ATR72', '0000-00-00', '', '0000-00-00', ''),
(99, 581209, 'TEA-2', '2017-04-13', '2019-04-12', 5, '2017-06-08', '2019-06-07', 5, '2015-11-24', 5, '2015-05-26', 5, '2016-06-03', 5, '0000-00-00', 4, '0000-00-00', 4, '2016-02-09', 5, '2015-10-19', 5, '2018-03-23', 5, '2016-11-09', 'A330', '0000-00-00', '', '0000-00-00', ''),
(100, 581261, 'TEA-1', '2017-07-13', '2019-07-12', 5, '2017-06-08', '2019-06-07', 5, '2015-11-19', 5, '2015-05-26', 5, '2015-10-16', 5, '0000-00-00', 4, '2018-02-28', 5, '2016-02-09', 5, '2015-06-26', 5, '2017-12-15', 5, '0000-00-00', '', '0000-00-00', '', '0000-00-00', ''),
(101, 581279, 'TER-2', '2018-04-05', '2020-04-04', 5, '2017-06-08', '2019-06-07', 5, '2015-11-24', 5, '2016-05-26', 5, '2015-12-11', 5, '0000-00-00', 4, '0000-00-00', 4, '0000-00-00', 0, '2015-06-26', 5, '2017-11-14', 5, '2016-11-09', 'A330', '0000-00-00', '', '0000-00-00', ''),
(102, 581281, 'TED-4', '2017-08-23', '2019-08-22', 5, '2017-06-06', '2019-06-05', 5, '2016-03-21', 5, '2015-08-18', 5, '2016-12-09', 5, '0000-00-00', 4, '2018-05-25', 5, '2016-02-09', 5, '2015-06-26', 5, '2017-12-15', 5, '0000-00-00', '', '0000-00-00', '', '0000-00-00', ''),
(103, 581282, 'TEA-4', '2017-07-13', '2019-07-12', 5, '2017-06-08', '2019-06-07', 5, '2015-11-24', 5, '2015-08-18', 5, '2015-12-04', 5, '0000-00-00', 4, '2018-02-28', 5, '2016-11-30', 5, '2015-06-26', 5, '2017-10-27', 5, '2017-04-11', 'A320', '0000-00-00', '', '0000-00-00', ''),
(104, 581284, 'TEA-1', '2017-01-23', '2019-01-22', 5, '2017-06-06', '2019-06-05', 5, '2015-11-24', 5, '2015-08-18', 5, '2015-12-04', 5, '0000-00-00', 4, '0000-00-00', 4, '2016-06-17', 5, '2015-06-26', 5, '2018-07-09', 5, '2016-03-16', 'CRJ 1000', '0000-00-00', '', '0000-00-00', ''),
(105, 581304, 'TER-2', '2017-12-14', '2019-12-13', 5, '2017-06-08', '2019-06-07', 5, '2015-11-24', 5, '2015-08-18', 5, '2017-01-20', 5, '0000-00-00', 4, '0000-00-00', 4, '2016-02-09', 5, '2015-06-26', 5, '0000-00-00', 4, '0000-00-00', '', '0000-00-00', '', '0000-00-00', ''),
(106, 581305, 'TEA-4', '2017-07-20', '2019-07-19', 5, '2017-06-08', '2019-06-07', 5, '2015-11-19', 5, '2015-08-18', 5, '2016-04-26', 5, '0000-00-00', 4, '2018-06-28', 4, '0000-00-00', 4, '2015-06-26', 5, '2017-12-15', 5, '0000-00-00', '', '0000-00-00', '', '0000-00-00', ''),
(107, 581315, 'TED-1', '2017-12-05', '2019-12-04', 5, '2017-06-08', '2019-06-07', 5, '2015-11-24', 5, '2015-08-18', 5, '2015-12-04', 5, '0000-00-00', 4, '0000-00-00', 4, '2016-04-15', 5, '2015-09-04', 5, '2017-11-14', 5, '2016-10-19', 'A320', '0000-00-00', '', '0000-00-00', ''),
(108, 581316, 'TEA-3', '2017-12-05', '2019-12-04', 5, '2017-06-08', '2019-06-07', 5, '2015-11-19', 5, '2015-08-18', 5, '2016-12-09', 5, '0000-00-00', 4, '0000-00-00', 4, '2016-02-09', 5, '2015-09-04', 5, '2018-07-09', 5, '2016-09-26', 'B787-8/9 ', '0000-00-00', '', '0000-00-00', ''),
(109, 581318, 'TED-1', '2017-12-05', '2019-12-04', 5, '2017-06-08', '2019-06-07', 5, '2015-11-24', 5, '2015-08-18', 5, '2015-12-04', 5, '0000-00-00', 4, '0000-00-00', 4, '2016-09-16', 5, '2015-09-04', 5, '2017-11-14', 5, '2016-01-25', 'A320', '0000-00-00', '', '0000-00-00', ''),
(110, 581319, 'TER-1', '2017-12-05', '2019-12-04', 5, '2017-06-12', '2019-06-11', 5, '2015-11-24', 5, '2015-08-18', 5, '2017-04-21', 5, '0000-00-00', 4, '2018-02-28', 5, '2015-12-02', 5, '2015-09-04', 5, '2018-06-25', 4, '2016-10-12', 'A320', '0000-00-00', '', '0000-00-00', ''),
(111, 581334, 'TEL-1', '2017-09-26', '2019-09-25', 5, '2017-06-12', '2019-06-11', 5, '2015-11-19', 5, '2015-09-23', 5, '2016-12-09', 5, '0000-00-00', 4, '2018-05-25', 4, '2016-02-09', 5, '2015-10-30', 5, '2018-03-23', 5, '2016-02-17', 'A330', '0000-00-00', '', '0000-00-00', ''),
(112, 581335, 'TEL-2', '2017-09-26', '2019-09-25', 5, '2017-08-03', '2019-08-02', 5, '2015-11-24', 5, '2015-09-23', 5, '2015-12-04', 5, '0000-00-00', 4, '2018-02-28', 5, '2016-09-16', 5, '2015-10-30', 5, '2018-03-23', 5, '2016-01-25', 'A320', '0000-00-00', '', '0000-00-00', ''),
(113, 581336, 'TEA-2', '2018-01-23', '2020-01-22', 5, '2017-01-09', '2019-01-08', 5, '2015-11-19', 5, '2015-09-23', 5, '2016-06-03', 5, '0000-00-00', 4, '0000-00-00', 4, '2016-02-09', 5, '2015-10-29', 5, '2017-12-15', 5, '2016-11-09', 'A330', '0000-00-00', '', '0000-00-00', ''),
(114, 581343, 'TEA-1', '2017-12-14', '2019-12-13', 5, '2016-11-28', '2018-11-27', 4, '2015-11-19', 5, '2016-02-10', 5, '2015-11-13', 5, '0000-00-00', 4, '2018-07-11', 5, '2016-02-09', 5, '2015-09-04', 5, '2017-11-14', 5, '0000-00-00', '', '0000-00-00', '', '0000-00-00', ''),
(115, 581344, 'TEA-1', '2018-01-23', '2020-01-22', 5, '2017-03-20', '2019-03-19', 5, '2015-11-19', 5, '2015-08-18', 5, '2015-11-13', 5, '0000-00-00', 4, '2018-06-28', 5, '2016-02-09', 5, '2015-09-04', 5, '2017-12-15', 5, '0000-00-00', '', '0000-00-00', '', '0000-00-00', ''),
(116, 581345, 'TED-4', '2017-10-17', '2019-10-16', 5, '2017-06-08', '2019-06-07', 5, '2015-11-24', 5, '2015-08-18', 5, '2015-12-04', 5, '0000-00-00', 4, '2018-02-28', 5, '2016-06-17', 5, '2015-10-30', 5, '2018-07-09', 5, '2016-09-30', 'B737 NG', '0000-00-00', '', '0000-00-00', ''),
(117, 581531, 'TEA-4', '2017-12-20', '2019-12-19', 5, '2017-06-12', '2019-06-11', 5, '2015-11-19', 5, '2016-06-28', 5, '2016-01-08', 5, '0000-00-00', 4, '0000-00-00', 4, '2016-09-16', 5, '2015-10-30', 5, '2018-06-25', 4, '2016-01-25', 'A320', '0000-00-00', '', '0000-00-00', ''),
(118, 581536, 'TEA-3', '2018-02-27', '2020-02-26', 5, '2018-06-07', '2020-06-06', 5, '2018-04-26', 5, '2016-01-26', 5, '0000-00-00', 4, '0000-00-00', 4, '2018-02-28', 5, '0000-00-00', 4, '0000-00-00', 2, '2017-12-15', 5, '0000-00-00', '', '0000-00-00', '', '0000-00-00', ''),
(119, 581599, 'TER-3', '2018-04-19', '2020-04-18', 5, '2017-09-15', '2019-09-14', 5, '2016-03-21', 5, '2016-02-10', 5, '2016-08-26', 5, '0000-00-00', 4, '2018-02-28', 5, '2016-02-09', 5, '2016-05-04', 5, '0000-00-00', 4, '2016-10-12', 'A320', '0000-00-00', '', '0000-00-00', ''),
(120, 581660, 'TEA-2', '2018-03-19', '2020-03-18', 5, '2017-06-12', '2019-06-11', 5, '2016-06-02', 5, '2016-02-10', 5, '2016-04-25', 5, '0000-00-00', 4, '2018-02-28', 5, '2016-04-15', 5, '2016-01-11', 5, '2017-11-14', 5, '2016-07-26', 'B737 NG', '0000-00-00', '', '0000-00-00', ''),
(121, 581661, 'TEA-1', '2018-04-19', '2020-04-18', 5, '2016-09-27', '2018-09-26', 4, '2016-06-02', 5, '2016-05-11', 5, '2016-08-26', 5, '0000-00-00', 4, '0000-00-00', 4, '2016-11-30', 5, '2016-01-11', 5, '0000-00-00', 4, '2016-01-25', 'A320', '0000-00-00', '', '0000-00-00', ''),
(122, 581694, 'TER-1', '2018-04-25', '2020-04-24', 5, '2017-07-24', '2019-07-23', 5, '2016-03-31', 5, '2016-06-28', 5, '2016-03-24', 5, '0000-00-00', 4, '0000-00-00', 4, '2016-04-20', 5, '2016-12-02', 5, '0000-00-00', 4, '2016-07-06', 'B737 NG', '0000-00-00', '', '0000-00-00', ''),
(123, 581695, 'TEA-3', '2018-04-19', '2020-04-18', 5, '2017-06-12', '2019-06-11', 5, '2016-03-21', 5, '2016-06-28', 5, '2016-07-29', 5, '0000-00-00', 4, '2018-06-28', 5, '2016-06-17', 5, '2017-03-13', 5, '0000-00-00', 4, '2016-09-30', 'B737 NG', '0000-00-00', '', '0000-00-00', ''),
(124, 581696, 'TEA-1', '2018-04-05', '2020-04-04', 5, '2017-06-08', '2019-06-07', 5, '2016-03-08', 5, '2016-04-20', 5, '2016-09-27', 5, '0000-00-00', 4, '0000-00-00', 4, '2016-11-30', 5, '2016-05-04', 5, '2017-11-14', 5, '2016-07-26', 'B737 NG', '0000-00-00', '', '0000-00-00', ''),
(125, 581697, 'TEA-4', '2018-04-25', '2020-04-05', 5, '2017-06-12', '2019-06-11', 5, '2016-03-31', 5, '2016-06-28', 5, '2016-03-24', 5, '0000-00-00', 4, '2018-02-28', 5, '2016-06-17', 5, '2016-12-02', 5, '2017-12-15', 5, '2016-07-26', 'B737 NG', '0000-00-00', '', '0000-00-00', ''),
(126, 581698, 'TED-1', '2018-04-05', '2020-04-06', 5, '2017-06-12', '2019-06-11', 5, '2016-03-08', 5, '2016-06-28', 5, '2016-08-26', 5, '0000-00-00', 4, '0000-00-00', 4, '2016-06-17', 5, '2016-12-02', 5, '2017-12-15', 5, '2016-09-15', 'ATR72', '0000-00-00', '', '0000-00-00', ''),
(127, 581792, 'TEA-2', '2016-11-18', '2020-04-07', 4, '2017-06-12', '2019-06-11', 5, '2016-05-16', 5, '2016-06-28', 5, '2016-12-16', 5, '0000-00-00', 4, '0000-00-00', 4, '2016-09-16', 5, '2016-12-02', 5, '0000-00-00', 4, '0000-00-00', '', '0000-00-00', '', '0000-00-00', ''),
(128, 581794, 'TEA-2', '2016-11-18', '2020-04-08', 4, '2017-06-12', '2019-06-11', 5, '2016-06-03', 5, '2017-02-24', 5, '2016-07-19', 5, '0000-00-00', 4, '0000-00-00', 4, '2016-09-16', 5, '2017-03-13', 5, '0000-00-00', 4, '2016-11-23', 'ATR72', '0000-00-00', '', '0000-00-00', ''),
(129, 581796, 'TEA-1', '2017-01-18', '2020-04-09', 5, '2017-09-14', '2019-09-13', 5, '2016-05-16', 5, '2016-06-28', 5, '2016-11-11', 5, '0000-00-00', 4, '0000-00-00', 4, '2016-09-16', 5, '2016-12-02', 5, '2018-03-23', 5, '2017-05-16', 'B737 NG', '0000-00-00', '', '0000-00-00', ''),
(130, 581803, 'TEA-4', '2016-12-10', '2020-04-10', 4, '2016-01-26', '2018-01-25', 1, '2016-05-17', 5, '2016-06-28', 5, '2016-09-27', 5, '0000-00-00', 4, '0000-00-00', 4, '2016-11-30', 5, '2017-08-21', 5, '0000-00-00', 4, '2016-07-26', 'B737 NG', '0000-00-00', '', '0000-00-00', ''),
(131, 581812, 'TER-4', '2016-11-18', '2020-04-11', 4, '2017-04-17', '2019-04-16', 5, '2016-06-03', 5, '2016-10-18', 5, '2016-11-11', 5, '0000-00-00', 4, '2018-07-10', 5, '2016-09-15', 5, '2016-12-02', 5, '0000-00-00', 4, '0000-00-00', '', '0000-00-00', '', '0000-00-00', ''),
(132, 581826, 'TER-3', '2018-04-19', '2020-04-12', 5, '2016-02-27', '2018-02-26', 1, '2016-08-02', 5, '2016-07-25', 5, '2016-11-11', 5, '0000-00-00', 4, '0000-00-00', 4, '2017-02-14', 5, '2016-10-28', 5, '0000-00-00', 4, '2017-09-05', 'A330', '0000-00-00', '', '0000-00-00', ''),
(133, 581828, 'TEA-2', '2018-08-13', '2020-04-13', 5, '2017-04-17', '2019-04-16', 5, '2017-02-16', 5, '2016-11-17', 5, '2016-07-19', 5, '0000-00-00', 4, '0000-00-00', 4, '2016-09-16', 5, '2016-10-28', 5, '0000-00-00', 4, '2018-04-27', 'ATR72', '0000-00-00', '', '0000-00-00', ''),
(134, 581829, 'TED-3', '2018-04-19', '2020-04-14', 5, '2016-09-15', '2018-09-14', 4, '2016-08-02', 5, '2016-07-25', 5, '2016-08-26', 5, '2018-08-15', 5, '0000-00-00', 4, '2017-02-14', 5, '2016-10-28', 5, '0000-00-00', 4, '2017-03-22', 'A330', '0000-00-00', '', '0000-00-00', ''),
(135, 581830, 'TEA-1', '2017-03-10', '2020-04-15', 5, '2017-06-06', '2019-06-05', 5, '2016-06-27', 5, '2017-02-24', 5, '2017-03-07', 5, '0000-00-00', 4, '0000-00-00', 4, '2016-09-16', 5, '2017-03-13', 5, '0000-00-00', 4, '2016-11-23', 'ATR72', '0000-00-00', '', '0000-00-00', ''),
(136, 581834, 'TEA-3', '2018-04-19', '2020-04-16', 5, '2017-06-13', '2019-06-12', 5, '2016-06-27', 5, '2016-07-25', 5, '2016-07-19', 5, '0000-00-00', 4, '0000-00-00', 4, '2017-02-14', 5, '2016-12-02', 5, '0000-00-00', 4, '2017-05-10', 'B777', '0000-00-00', '', '0000-00-00', ''),
(137, 581875, 'TEA-1', '2016-10-13', '2020-04-17', 4, '2017-04-17', '2019-04-16', 5, '2016-07-19', 5, '2016-07-25', 5, '2016-11-11', 5, '0000-00-00', 4, '0000-00-00', 4, '2017-02-14', 5, '2016-10-28', 5, '2017-11-14', 5, '2016-09-15', 'ATR72', '0000-00-00', '', '0000-00-00', ''),
(138, 581921, 'TEA-1', '2018-04-19', '2020-04-18', 5, '2017-06-08', '2019-06-07', 5, '2016-07-19', 5, '2016-07-25', 5, '2016-11-11', 5, '0000-00-00', 4, '0000-00-00', 4, '2017-02-14', 5, '2016-10-28', 5, '2017-11-14', 5, '2017-03-22', 'A330', '0000-00-00', '', '0000-00-00', ''),
(139, 581922, 'TED-4', '2018-04-19', '2020-04-19', 5, '2017-04-17', '2019-04-16', 5, '2016-11-21', 5, '2016-08-16', 5, '2016-10-25', 5, '0000-00-00', 4, '2018-06-29', 5, '2017-02-14', 5, '2017-07-28', 5, '0000-00-00', 4, '2016-10-21', 'B777', '0000-00-00', '', '0000-00-00', ''),
(140, 581923, 'TEL-1', '2018-04-19', '2020-04-20', 5, '2016-08-30', '2018-08-29', 4, '2016-07-21', 5, '2016-07-25', 5, '2016-11-11', 5, '0000-00-00', 4, '0000-00-00', 4, '2017-02-14', 5, '2016-10-28', 5, '0000-00-00', 4, '0000-00-00', 'B777', '0000-00-00', '', '0000-00-00', ''),
(141, 581925, 'TEC-1', '2018-04-19', '2020-04-21', 5, '2017-04-17', '2019-04-16', 5, '2016-09-05', 5, '2016-07-25', 5, '2016-08-26', 5, '0000-00-00', 4, '0000-00-00', 4, '2017-02-14', 5, '2017-07-28', 5, '0000-00-00', 4, '2018-05-02', 'B777', '0000-00-00', '', '0000-00-00', ''),
(142, 581926, 'TED-1', '2018-04-19', '2020-04-22', 5, '2017-04-17', '2019-04-16', 5, '2016-08-26', 5, '2016-07-25', 5, '2016-09-14', 5, '0000-00-00', 4, '2018-02-28', 5, '2017-02-14', 5, '2016-10-17', 5, '2018-03-23', 5, '2017-12-08', 'B777', '0000-00-00', '', '0000-00-00', ''),
(143, 581927, 'TEA-2', '2018-04-19', '2020-04-23', 5, '2017-06-12', '2019-06-11', 5, '2017-02-16', 5, '2016-08-16', 5, '2016-10-25', 5, '0000-00-00', 4, '0000-00-00', 4, '2017-02-17', 5, '2017-07-28', 5, '2018-03-23', 5, '2016-10-21', 'B777', '0000-00-00', '', '0000-00-00', ''),
(144, 581928, 'TEC-1', '2016-10-13', '2020-04-24', 4, '2017-04-17', '2019-04-16', 5, '2016-12-02', 5, '2016-12-14', 5, '2016-11-08', 5, '0000-00-00', 4, '0000-00-00', 4, '2017-09-13', 5, '2016-10-28', 5, '0000-00-00', 4, '2016-07-26', 'B737 NG', '0000-00-00', '', '0000-00-00', ''),
(145, 581929, 'TER-3', '2018-04-19', '2020-04-25', 5, '2017-04-17', '2019-04-16', 5, '2016-07-29', 5, '2016-08-16', 5, '2016-11-11', 5, '0000-00-00', 4, '0000-00-00', 4, '2017-02-17', 5, '2017-03-13', 5, '0000-00-00', 4, '0000-00-00', '', '0000-00-00', '', '0000-00-00', ''),
(146, 581930, 'TEC-1', '2016-10-13', '2020-04-26', 4, '2017-04-17', '2019-04-16', 5, '2017-01-10', 5, '2017-03-22', 5, '2016-11-08', 5, '0000-00-00', 4, '0000-00-00', 4, '0000-00-00', 4, '2016-10-28', 5, '0000-00-00', 4, '2016-07-26', 'B737 NG', '0000-00-00', '', '0000-00-00', ''),
(147, 581931, 'TER-4', '2018-04-19', '2020-04-27', 5, '2017-04-17', '2019-04-16', 5, '2016-08-26', 5, '2016-08-16', 5, '2016-11-11', 5, '0000-00-00', 4, '0000-00-00', 4, '2017-02-17', 5, '2017-03-13', 5, '0000-00-00', 4, '2017-06-14', 'ATR72', '0000-00-00', '', '0000-00-00', ''),
(148, 581932, 'TEA-1', '2016-10-13', '2020-04-28', 4, '2017-04-17', '2019-04-16', 5, '2017-01-10', 5, '2016-10-18', 5, '2016-07-19', 5, '0000-00-00', 4, '0000-00-00', 4, '2018-05-18', 5, '2016-12-02', 5, '0000-00-00', 4, '2016-07-26', 'B737 NG', '0000-00-00', '', '0000-00-00', ''),
(149, 581947, 'TER-1', '2016-10-13', '2020-04-29', 4, '2017-04-17', '2019-04-16', 5, '2017-03-15', 5, '2016-10-18', 5, '2016-11-08', 5, '0000-00-00', 4, '0000-00-00', 4, '2017-02-17', 5, '2017-08-21', 5, '0000-00-00', 4, '2016-07-26', 'B737 NG', '0000-00-00', '', '0000-00-00', ''),
(150, 581952, 'TEA-1', '2018-04-19', '2020-04-30', 5, '2017-04-17', '2019-04-16', 5, '2016-07-29', 5, '2016-08-16', 5, '2017-02-17', 5, '0000-00-00', 4, '0000-00-00', 4, '2017-09-13', 5, '2017-03-13', 5, '2018-07-09', 5, '2016-10-12', 'A320', '0000-00-00', '', '0000-00-00', ''),
(151, 581982, 'TER-4', '2017-10-25', '2020-05-01', 5, '2017-06-12', '2019-06-11', 5, '2016-11-21', 5, '2016-08-16', 5, '2016-11-11', 5, '2018-08-15', 5, '2018-02-28', 5, '2017-02-17', 5, '2017-08-21', 5, '0000-00-00', 4, '2017-05-16', 'B737 NG', '0000-00-00', '', '0000-00-00', ''),
(152, 581992, 'TER-2', '2016-11-18', '2020-05-02', 4, '2017-06-12', '2019-06-11', 5, '2017-05-15', 5, '2016-08-16', 5, '2016-08-26', 5, '0000-00-00', 4, '0000-00-00', 4, '2017-02-17', 5, '2017-07-28', 5, '0000-00-00', 4, '0000-00-00', '', '0000-00-00', '', '0000-00-00', ''),
(153, 581997, 'TEC-1', '2017-04-06', '2020-05-03', 5, '2017-06-12', '2019-06-11', 5, '2018-04-26', 5, '2016-08-16', 5, '2017-06-08', 5, '0000-00-00', 4, '2018-07-10', 5, '2017-11-30', 5, '2017-09-25', 5, '0000-00-00', 4, '0000-00-00', '', '0000-00-00', '', '0000-00-00', ''),
(154, 581998, 'TEC-1', '2019-02-08', '2020-05-04', 5, '2017-06-12', '2019-06-11', 5, '2017-03-15', 5, '2016-10-18', 5, '2017-06-09', 5, '0000-00-00', 4, '0000-00-00', 4, '0000-00-00', 4, '2017-10-13', 5, '0000-00-00', 4, '2017-09-29', 'B777', '0000-00-00', '', '0000-00-00', ''),
(155, 582008, 'TEC-1', '2017-10-25', '2020-05-05', 5, '2017-10-26', '2019-10-25', 5, '2017-06-12', 5, '2016-10-18', 5, '2016-10-28', 5, '0000-00-00', 4, '0000-00-00', 4, '2017-09-13', 5, '2017-10-13', 5, '0000-00-00', 4, '2017-04-11', 'A320', '0000-00-00', '', '0000-00-00', ''),
(156, 582014, 'TEA-3', '2017-08-30', '2020-05-06', 5, '2018-04-24', '2020-04-23', 5, '2018-05-23', 5, '2016-10-18', 5, '2017-02-08', 5, '0000-00-00', 4, '0000-00-00', 4, '2017-11-30', 5, '2017-07-28', 5, '0000-00-00', 4, '2016-12-06', 'B787-8/9 ', '0000-00-00', '', '0000-00-00', ''),
(157, 582044, 'TED-3', '2017-05-19', '2020-05-07', 5, '2017-06-08', '2019-06-07', 5, '2016-12-02', 5, '2017-03-22', 5, '2016-10-28', 5, '0000-00-00', 4, '0000-00-00', 4, '2017-02-14', 5, '2017-09-25', 5, '2018-03-23', 5, '2017-11-23', 'CRJ 1000', '0000-00-00', '', '0000-00-00', ''),
(158, 582068, 'TEA-2', '2017-11-10', '2020-05-08', 5, '2017-04-17', '2019-04-16', 5, '2017-06-12', 5, '2017-03-22', 5, '2016-10-28', 5, '0000-00-00', 4, '0000-00-00', 4, '2017-02-14', 5, '2017-07-28', 5, '0000-00-00', 4, '2017-10-10', 'B737 NG', '0000-00-00', '', '0000-00-00', ''),
(159, 582081, 'TEA-4', '2018-08-08', '2020-05-09', 4, '2017-10-26', '2019-10-25', 5, '2017-10-18', 5, '2017-03-22', 5, '2016-10-28', 5, '0000-00-00', 4, '2018-02-28', 5, '2017-09-13', 5, '2017-10-13', 5, '0000-00-00', 4, '2017-06-12', 'B737 NG', '0000-00-00', '', '0000-00-00', ''),
(160, 582085, 'TEC-1', '2017-06-07', '2020-05-10', 5, '2017-06-12', '2019-06-11', 5, '2016-12-02', 5, '2017-05-26', 5, '2016-11-29', 5, '0000-00-00', 4, '0000-00-00', 4, '0000-00-00', 4, '2017-03-13', 5, '0000-00-00', 4, '2017-11-17', 'A320', '0000-00-00', '', '0000-00-00', ''),
(161, 582094, 'TEA-4', '2017-05-04', '2020-05-11', 5, '2017-06-07', '2019-06-06', 5, '2017-07-17', 5, '2017-04-18', 5, '2016-11-28', 5, '0000-00-00', 4, '0000-00-00', 4, '2017-11-30', 5, '2017-09-25', 5, '0000-00-00', 4, '2018-04-27', 'ATR72', '0000-00-00', '', '0000-00-00', ''),
(162, 582151, 'TEA-2', '2017-05-02', '2020-05-12', 5, '2017-06-12', '2019-06-11', 5, '2017-07-17', 5, '2017-04-18', 5, '2016-12-16', 5, '0000-00-00', 4, '0000-00-00', 4, '2017-11-30', 5, '2017-09-25', 5, '0000-00-00', 4, '0000-00-00', '', '0000-00-00', '', '0000-00-00', ''),
(163, 582788, 'TEC-1', '0000-00-00', '0000-00-00', 4, '2018-01-09', '2020-01-08', 5, '2017-12-21', 5, '2018-07-05', 5, '2018-08-16', 4, '0000-00-00', 4, '0000-00-00', 4, '2018-03-12', 5, '2018-04-04', 5, '2017-11-14', 5, '0000-00-00', '', '0000-00-00', '', '0000-00-00', ''),
(164, 582790, 'TEC-1', '2018-04-05', '2020-04-04', 5, '2018-01-09', '2020-01-08', 5, '2017-12-21', 5, '2018-07-05', 5, '2018-04-20', 5, '0000-00-00', 4, '0000-00-00', 4, '2018-03-12', 5, '0000-00-00', 4, '2017-11-14', 5, '0000-00-00', '', '0000-00-00', '', '0000-00-00', ''),
(165, 582797, 'TEC-1', '0000-00-00', '0000-00-00', 4, '2017-12-21', '2019-12-20', 5, '2018-04-26', 5, '2018-07-05', 5, '2018-08-16', 4, '0000-00-00', 4, '0000-00-00', 4, '2018-03-12', 5, '2018-04-04', 5, '0000-00-00', 4, '0000-00-00', '', '0000-00-00', '', '0000-00-00', ''),
(166, 582798, 'TEC-1', '0000-00-00', '0000-00-00', 4, '2017-12-21', '2019-12-20', 5, '2018-04-26', 5, '2018-07-05', 5, '0000-00-00', 4, '0000-00-00', 4, '0000-00-00', 2, '2018-03-12', 5, '0000-00-00', 2, '0000-00-00', 4, '0000-00-00', '', '0000-00-00', '', '0000-00-00', ''),
(167, 582801, 'TEC-1', '2018-06-29', '2020-06-28', 5, '2018-04-19', '2020-04-18', 5, '2018-01-10', 5, '2018-07-05', 5, '0000-00-00', 4, '0000-00-00', 4, '0000-00-00', 4, '2018-03-12', 5, '0000-00-00', 2, '0000-00-00', 4, '0000-00-00', '', '0000-00-00', '', '0000-00-00', ''),
(168, 582803, 'TEC-1', '2018-06-29', '2020-06-28', 5, '2018-06-07', '2020-06-06', 5, '2018-05-24', 5, '2018-07-05', 5, '2018-05-04', 5, '0000-00-00', 4, '0000-00-00', 4, '2018-03-12', 5, '0000-00-00', 4, '0000-00-00', 4, '0000-00-00', '', '0000-00-00', '', '0000-00-00', ''),
(169, 582804, 'TEC-1', '2018-06-29', '2020-06-28', 5, '2018-05-04', '2020-05-03', 5, '2018-01-10', 5, '2018-07-05', 5, '2018-07-04', 5, '0000-00-00', 4, '0000-00-00', 4, '2018-03-12', 5, '0000-00-00', 4, '0000-00-00', 4, '0000-00-00', '', '0000-00-00', '', '0000-00-00', ''),
(170, 582807, 'TEC-1', '0000-00-00', '0000-00-00', 4, '2018-03-07', '2020-03-06', 5, '2018-05-24', 5, '2018-01-18', 5, '2018-01-30', 5, '0000-00-00', 4, '0000-00-00', 4, '2018-05-18', 5, '0000-00-00', 4, '0000-00-00', 4, '0000-00-00', '', '0000-00-00', '', '0000-00-00', ''),
(171, 582810, 'TEC-1', '2018-06-29', '2020-06-28', 5, '2018-02-05', '2020-02-04', 5, '2018-07-18', 5, '2018-01-18', 5, '2018-07-04', 5, '0000-00-00', 4, '0000-00-00', 4, '2018-05-18', 5, '0000-00-00', 4, '0000-00-00', 4, '0000-00-00', '', '0000-00-00', '', '0000-00-00', ''),
(172, 582824, 'TEC-1', '2018-06-29', '2020-06-28', 5, '2018-03-07', '2020-03-06', 5, '2018-07-04', 5, '2018-01-18', 5, '2018-01-30', 5, '0000-00-00', 4, '0000-00-00', 4, '2018-05-18', 5, '0000-00-00', 4, '0000-00-00', 4, '0000-00-00', '', '0000-00-00', '', '0000-00-00', ''),
(173, 582825, 'TEC-1', '2018-06-29', '2020-06-28', 5, '2018-02-05', '2020-02-04', 5, '2018-07-30', 5, '2018-01-18', 5, '0000-00-00', 4, '0000-00-00', 4, '0000-00-00', 4, '2018-05-18', 5, '0000-00-00', 4, '0000-00-00', 4, '0000-00-00', '', '0000-00-00', '', '0000-00-00', ''),
(174, 582876, 'TEC-1', '2018-06-29', '2020-06-28', 5, '2018-03-07', '2020-03-06', 5, '2018-07-30', 5, '2018-01-18', 5, '0000-00-00', 4, '0000-00-00', 4, '0000-00-00', 4, '2018-05-18', 5, '0000-00-00', 4, '0000-00-00', 4, '0000-00-00', '', '0000-00-00', '', '0000-00-00', ''),
(175, 582882, 'TEC-1', '2018-06-29', '2020-06-28', 5, '2018-07-20', '2020-07-19', 5, '2018-07-30', 5, '2018-07-05', 5, '0000-00-00', 4, '0000-00-00', 4, '0000-00-00', 4, '2018-05-18', 5, '0000-00-00', 4, '0000-00-00', 4, '0000-00-00', '', '0000-00-00', '', '0000-00-00', ''),
(176, 582887, 'TEC-1', '0000-00-00', '0000-00-00', 4, '2018-07-20', '2020-07-19', 5, '2018-07-30', 5, '2018-07-05', 5, '0000-00-00', 4, '0000-00-00', 4, '0000-00-00', 4, '2018-05-18', 5, '0000-00-00', 4, '0000-00-00', 4, '0000-00-00', '', '0000-00-00', '', '0000-00-00', ''),
(177, 582902, 'TEC-1', '2018-07-05', '2020-07-04', 5, '2018-06-07', '2020-06-06', 5, '2018-07-30', 5, '2018-08-16', 4, '0000-00-00', 4, '0000-00-00', 4, '0000-00-00', 4, '2018-05-18', 5, '0000-00-00', 4, '0000-00-00', 4, '0000-00-00', '', '0000-00-00', '', '0000-00-00', ''),
(178, 582907, 'TEC-1', '2018-07-05', '2020-07-04', 5, '2018-07-20', '2020-07-19', 5, '2018-07-30', 5, '2018-08-16', 4, '2018-07-27', 5, '0000-00-00', 4, '0000-00-00', 4, '2018-05-18', 5, '0000-00-00', 4, '0000-00-00', 4, '0000-00-00', '', '0000-00-00', '', '0000-00-00', '');
INSERT INTO `training` (`id_status`, `no_peg`, `unit`, `done_human`, `due_human`, `stat_human`, `done_cas`, `due_cas`, `stat_cas`, `done_fts`, `stat_fts`, `done_sms`, `stat_sms`, `done_ewis`, `stat_ewis`, `done_module`, `stat_module`, `done_gqs`, `stat_gqs`, `done_batk`, `stat_batk`, `done_basic`, `stat_basic`, `done_cont`, `stat_cont`, `done_typer1`, `stat_typer1`, `done_typer2`, `stat_typer2`, `done_typer3`, `stat_typer3`) VALUES
(179, 582932, 'TEC-1', '0000-00-00', '0000-00-00', 4, '0000-00-00', '0000-00-00', 4, '0000-00-00', 4, '2018-07-05', 5, '0000-00-00', 4, '0000-00-00', 4, '0000-00-00', 4, '2018-09-03', 4, '0000-00-00', 4, '0000-00-00', 4, '0000-00-00', '', '0000-00-00', '', '0000-00-00', ''),
(180, 582937, 'TEC-1', '0000-00-00', '0000-00-00', 4, '0000-00-00', '0000-00-00', 4, '0000-00-00', 4, '2018-07-05', 5, '0000-00-00', 4, '0000-00-00', 4, '0000-00-00', 4, '2018-09-03', 4, '0000-00-00', 4, '0000-00-00', 4, '0000-00-00', '', '0000-00-00', '', '0000-00-00', ''),
(181, 582943, 'TEC-1', '0000-00-00', '0000-00-00', 4, '0000-00-00', '0000-00-00', 4, '0000-00-00', 4, '2018-07-05', 5, '0000-00-00', 4, '0000-00-00', 4, '0000-00-00', 4, '2018-09-03', 4, '0000-00-00', 4, '0000-00-00', 4, '0000-00-00', '', '0000-00-00', '', '0000-00-00', ''),
(182, 781297, 'TER-2', '2017-07-20', '2019-07-19', 5, '2017-09-05', '2019-09-04', 5, '2015-08-21', 5, '2008-08-14', 5, '2015-08-20', 5, '2008-01-11', 5, '2017-09-07', 5, '0000-00-00', 0, '0000-00-00', 0, '0000-00-00', 0, '2004-06-07', 'B737 CL', '0000-00-00', '', '0000-00-00', ''),
(183, 782206, 'TER-2', '2018-04-05', '2020-04-04', 5, '0000-00-00', '0000-00-00', 4, '0000-00-00', 0, '0000-00-00', 0, '0000-00-00', 0, '0000-00-00', 0, '0000-00-00', 0, '0000-00-00', 0, '0000-00-00', 0, '0000-00-00', 0, '1997-05-20', 'MD11', '0000-00-00', '', '0000-00-00', ''),
(184, 782391, 'TED-2', '2016-12-05', '2018-12-04', 4, '2015-03-13', '2017-03-12', 1, '2015-03-09', 5, '2008-08-14', 5, '2014-12-19', 5, '0000-00-00', 0, '0000-00-00', 0, '0000-00-00', 0, '0000-00-00', 0, '0000-00-00', 0, '1994-04-08', 'B747', '0000-00-00', '', '0000-00-00', ''),
(185, 782405, 'TE', '2018-04-05', '2020-04-04', 5, '2011-01-18', '2013-01-17', 1, '2008-04-22', 5, '2008-03-03', 5, '0000-00-00', 0, '0000-00-00', 4, '0000-00-00', 4, '1989-04-21', 5, '0000-00-00', 0, '1992-10-07', 5, '2000-11-22', 'B747', '0000-00-00', '', '0000-00-00', ''),
(186, 782407, 'TEA', '0000-00-00', '0000-00-00', 4, '2018-07-24', '2020-07-23', 5, '2017-08-14', 5, '2018-07-05', 5, '0000-00-00', 0, '0000-00-00', 4, '0000-00-00', 4, '0000-00-00', 0, '0000-00-00', 0, '0000-00-00', 0, '0000-00-00', '', '0000-00-00', '', '0000-00-00', ''),
(187, 782457, 'TEA', '2018-02-27', '2020-02-26', 5, '0000-00-00', '0000-00-00', 4, '2010-07-01', 5, '2008-03-03', 5, '2012-03-26', 5, '0000-00-00', 4, '0000-00-00', 4, '0000-00-00', 0, '0000-00-00', 0, '0000-00-00', 0, '0000-00-00', '', '0000-00-00', '', '0000-00-00', ''),
(188, 782506, 'TEC-1', '0000-00-00', '0000-00-00', 4, '2018-05-04', '2020-05-03', 5, '0000-00-00', 4, '2018-07-05', 5, '0000-00-00', 4, '0000-00-00', 4, '0000-00-00', 4, '2018-09-03', 4, '0000-00-00', 4, '0000-00-00', 4, '0000-00-00', '', '0000-00-00', '', '0000-00-00', ''),
(189, 782457, 'TEA', '0000-00-00', '0000-00-00', 5, '0000-00-00', '0000-00-00', 4, '0000-00-00', 5, '0000-00-00', 5, '0000-00-00', 5, '0000-00-00', 4, '0000-00-00', 4, '0000-00-00', 0, '0000-00-00', 0, '0000-00-00', 0, '0000-00-00', '', '0000-00-00', '', '0000-00-00', ''),
(190, 782506, 'TEC-1', '0000-00-00', '0000-00-00', 4, '0000-00-00', '0000-00-00', 5, '0000-00-00', 4, '0000-00-00', 5, '0000-00-00', 4, '0000-00-00', 4, '0000-00-00', 4, '0000-00-00', 4, '0000-00-00', 4, '0000-00-00', 4, '0000-00-00', '', '0000-00-00', '', '0000-00-00', '');

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
(15, 'super_admin', 'bambang', '123', 999999),
(16, 'admin', 'endik', '123', 525723);

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
  MODIFY `id_status` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=191;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
