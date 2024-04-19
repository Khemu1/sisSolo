-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               8.0.30 - MySQL Community Server - GPL
-- Server OS:                    Win64
-- HeidiSQL Version:             12.1.0.6537
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for sis
CREATE DATABASE IF NOT EXISTS `sis` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `sis`;

-- Dumping structure for table sis.account
CREATE TABLE IF NOT EXISTS `account` (
  `id` int NOT NULL AUTO_INCREMENT,
  `userName` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `userName` (`userName`)
) ENGINE=InnoDB AUTO_INCREMENT=154 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table sis.account: ~7 rows (approximately)
REPLACE INTO `account` (`id`, `userName`, `password`) VALUES
	(138, 'Omar', 'Omar'),
	(148, 'Yasser', 'Yasser'),
	(149, 'Fatah', 'Fatah'),
	(150, 'Tamer', 'Tamer'),
	(151, 'samer', 'samer'),
	(152, 'samar', 'samar'),
	(153, 'sadak', 'sadak');

-- Dumping structure for table sis.course
CREATE TABLE IF NOT EXISTS `course` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `level` int NOT NULL,
  `hours` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table sis.course: ~23 rows (approximately)
REPLACE INTO `course` (`id`, `name`, `level`, `hours`) VALUES
	(26, 'Electronics', 1, 3),
	(27, 'Math-1', 1, 3),
	(28, 'Math-0', 1, 3),
	(29, 'Human Rights', 1, 2),
	(30, 'Technical Report', 1, 2),
	(31, 'Discrete Math', 1, 3),
	(32, 'Programming 1', 1, 3),
	(33, 'Logic Design', 1, 3),
	(34, 'Math-2', 1, 3),
	(35, 'Probability and Statistics 1', 1, 3),
	(36, 'Microeconomics', 1, 2),
	(37, 'Introduction to Networking', 2, 3),
	(38, 'Introduction to Database', 2, 3),
	(39, 'Introduction to Software Engineering', 2, 3),
	(40, 'Programming 2', 2, 3),
	(41, 'Math-3', 2, 3),
	(42, 'Probability and Statistics 2', 2, 3),
	(43, 'Data Structures', 2, 3),
	(44, 'Web', 2, 3),
	(45, 'Machine Learning', 2, 3),
	(46, 'Introduction to Operation Research', 2, 3),
	(47, 'Network Labs', 2, 2),
	(48, 'Entrepreneurship', 2, 2);

-- Dumping structure for table sis.enrollment
CREATE TABLE IF NOT EXISTS `enrollment` (
  `id` int NOT NULL AUTO_INCREMENT,
  `courseName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `courseLevel` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `courseHours` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `studentUserName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `teacherUserName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `courseName` (`courseName`),
  KEY `studentUserName` (`studentUserName`),
  KEY `TeacherUserName` (`teacherUserName`),
  CONSTRAINT `course_name` FOREIGN KEY (`courseName`) REFERENCES `course` (`name`),
  CONSTRAINT `student_user_name` FOREIGN KEY (`studentUserName`) REFERENCES `student` (`userName`),
  CONSTRAINT `teacher_user_name` FOREIGN KEY (`teacherUserName`) REFERENCES `teacher` (`userName`)
) ENGINE=InnoDB AUTO_INCREMENT=1892 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table sis.enrollment: ~56 rows (approximately)
REPLACE INTO `enrollment` (`id`, `courseName`, `courseLevel`, `courseHours`, `studentUserName`, `teacherUserName`) VALUES
	(1836, 'Introduction to Networking', '2', '3', 'Omar', 'Yasser'),
	(1837, 'Introduction to Database', '2', '3', 'Omar', 'Yasser'),
	(1838, 'Introduction to Software Engineering', '2', '3', 'Omar', 'Yasser'),
	(1839, 'Programming 2', '2', '3', 'Omar', 'Yasser'),
	(1840, 'Math-3', '2', '3', 'Omar', 'Yasser'),
	(1841, 'Probability and Statistics 2', '2', '3', 'Omar', 'Yasser'),
	(1842, 'Data Structures', '2', '3', 'Omar', 'Yasser'),
	(1843, 'Web', '2', '3', 'Omar', 'Yasser'),
	(1844, 'Machine Learning', '2', '3', 'Omar', 'Yasser'),
	(1845, 'Introduction to Operation Research', '2', '3', 'Omar', 'Yasser'),
	(1846, 'Network Labs', '2', '2', 'Omar', 'Yasser'),
	(1847, 'Entrepreneurship', '2', '2', 'Omar', 'Yasser'),
	(1848, 'Electronics', '1', '3', 'Tamer', 'Yasser'),
	(1849, 'Electronics', '1', '3', 'Tamer', 'Fatah'),
	(1850, 'Math-1', '1', '3', 'Tamer', 'Yasser'),
	(1851, 'Math-1', '1', '3', 'Tamer', 'Fatah'),
	(1852, 'Math-0', '1', '3', 'Tamer', 'Yasser'),
	(1853, 'Math-0', '1', '3', 'Tamer', 'Fatah'),
	(1854, 'Human Rights', '1', '2', 'Tamer', 'Yasser'),
	(1855, 'Human Rights', '1', '2', 'Tamer', 'Fatah'),
	(1856, 'Technical Report', '1', '2', 'Tamer', 'Yasser'),
	(1857, 'Technical Report', '1', '2', 'Tamer', 'Fatah'),
	(1858, 'Discrete Math', '1', '3', 'Tamer', 'Yasser'),
	(1859, 'Electronics', '1', '3', 'samer', 'Yasser'),
	(1860, 'Electronics', '1', '3', 'samer', 'Fatah'),
	(1861, 'Math-1', '1', '3', 'samer', 'Yasser'),
	(1862, 'Math-1', '1', '3', 'samer', 'Fatah'),
	(1863, 'Math-0', '1', '3', 'samer', 'Yasser'),
	(1864, 'Math-0', '1', '3', 'samer', 'Fatah'),
	(1865, 'Human Rights', '1', '2', 'samer', 'Yasser'),
	(1866, 'Human Rights', '1', '2', 'samer', 'Fatah'),
	(1867, 'Technical Report', '1', '2', 'samer', 'Yasser'),
	(1868, 'Technical Report', '1', '2', 'samer', 'Fatah'),
	(1869, 'Discrete Math', '1', '3', 'samer', 'Yasser'),
	(1870, 'Electronics', '1', '3', 'samar', 'Yasser'),
	(1871, 'Electronics', '1', '3', 'samar', 'Fatah'),
	(1872, 'Math-1', '1', '3', 'samar', 'Yasser'),
	(1873, 'Math-1', '1', '3', 'samar', 'Fatah'),
	(1874, 'Math-0', '1', '3', 'samar', 'Yasser'),
	(1875, 'Math-0', '1', '3', 'samar', 'Fatah'),
	(1876, 'Human Rights', '1', '2', 'samar', 'Yasser'),
	(1877, 'Human Rights', '1', '2', 'samar', 'Fatah'),
	(1878, 'Technical Report', '1', '2', 'samar', 'Yasser'),
	(1879, 'Technical Report', '1', '2', 'samar', 'Fatah'),
	(1880, 'Discrete Math', '1', '3', 'samar', 'Yasser'),
	(1881, 'Electronics', '1', '3', 'sadak', 'Yasser'),
	(1882, 'Electronics', '1', '3', 'sadak', 'Fatah'),
	(1883, 'Math-1', '1', '3', 'sadak', 'Yasser'),
	(1884, 'Math-1', '1', '3', 'sadak', 'Fatah'),
	(1885, 'Math-0', '1', '3', 'sadak', 'Yasser'),
	(1886, 'Math-0', '1', '3', 'sadak', 'Fatah'),
	(1887, 'Human Rights', '1', '2', 'sadak', 'Yasser'),
	(1888, 'Human Rights', '1', '2', 'sadak', 'Fatah'),
	(1889, 'Technical Report', '1', '2', 'sadak', 'Yasser'),
	(1890, 'Technical Report', '1', '2', 'sadak', 'Fatah'),
	(1891, 'Discrete Math', '1', '3', 'sadak', 'Yasser');

-- Dumping structure for table sis.student
CREATE TABLE IF NOT EXISTS `student` (
  `id` int NOT NULL AUTO_INCREMENT,
  `accountId` int NOT NULL DEFAULT '-1',
  `userName` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `address` varchar(50) NOT NULL,
  `level` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `student_account_id` (`accountId`),
  KEY `student_account_userName` (`userName`),
  CONSTRAINT `student_account_id` FOREIGN KEY (`accountId`) REFERENCES `account` (`id`),
  CONSTRAINT `student_account_userName` FOREIGN KEY (`userName`) REFERENCES `account` (`userName`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table sis.student: ~5 rows (approximately)
REPLACE INTO `student` (`id`, `accountId`, `userName`, `name`, `address`, `level`) VALUES
	(40, 138, 'Omar', 'Omar', 'Omar', 2),
	(41, 150, 'Tamer', 'Tamer', 'Tamer', 1),
	(42, 151, 'samer', 'samer', 'samer', 1),
	(43, 152, 'samar', 'samar', 'samar', 1),
	(44, 153, 'sadak', 'sadak', 'sadak', 1);

-- Dumping structure for table sis.teacher
CREATE TABLE IF NOT EXISTS `teacher` (
  `id` int NOT NULL AUTO_INCREMENT,
  `accountId` int NOT NULL DEFAULT '-1',
  `userName` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `address` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `teacher_account_id_fk` (`accountId`),
  KEY `teacher_account_name_fk` (`userName`),
  CONSTRAINT `teacher_account_id_fk` FOREIGN KEY (`accountId`) REFERENCES `account` (`id`),
  CONSTRAINT `teacher_account_name_fk` FOREIGN KEY (`userName`) REFERENCES `account` (`userName`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=177 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table sis.teacher: ~0 rows (approximately)
REPLACE INTO `teacher` (`id`, `accountId`, `userName`, `name`, `address`) VALUES
	(175, 148, 'Yasser', 'Yasser', 'Yasser'),
	(176, 149, 'Fatah', 'Fatah', 'Fatah');

-- Dumping structure for table sis.teaches
CREATE TABLE IF NOT EXISTS `teaches` (
  `id` int NOT NULL AUTO_INCREMENT,
  `teacherUserName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `course` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `teacherUserName` (`teacherUserName`),
  KEY `course` (`course`),
  CONSTRAINT `teached_course_name_fk` FOREIGN KEY (`course`) REFERENCES `course` (`name`),
  CONSTRAINT `teacher_user_name_fk` FOREIGN KEY (`teacherUserName`) REFERENCES `teacher` (`userName`)
) ENGINE=InnoDB AUTO_INCREMENT=423 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table sis.teaches: ~40 rows (approximately)
REPLACE INTO `teaches` (`id`, `teacherUserName`, `course`) VALUES
	(383, 'Yasser', 'Electronics'),
	(384, 'Yasser', 'Math-1'),
	(385, 'Yasser', 'Math-0'),
	(386, 'Yasser', 'Human Rights'),
	(387, 'Yasser', 'Technical Report'),
	(388, 'Yasser', 'Discrete Math'),
	(389, 'Yasser', 'Programming 1'),
	(390, 'Yasser', 'Logic Design'),
	(391, 'Yasser', 'Math-2'),
	(392, 'Yasser', 'Probability and Statistics 1'),
	(393, 'Yasser', 'Microeconomics'),
	(394, 'Yasser', 'Introduction to Networking'),
	(395, 'Yasser', 'Introduction to Database'),
	(396, 'Yasser', 'Introduction to Software Engineering'),
	(397, 'Yasser', 'Programming 2'),
	(398, 'Yasser', 'Math-3'),
	(399, 'Yasser', 'Probability and Statistics 2'),
	(400, 'Yasser', 'Data Structures'),
	(401, 'Yasser', 'Web'),
	(402, 'Yasser', 'Machine Learning'),
	(403, 'Yasser', 'Introduction to Operation Research'),
	(404, 'Yasser', 'Network Labs'),
	(405, 'Yasser', 'Entrepreneurship'),
	(406, 'Fatah', 'Electronics'),
	(407, 'Fatah', 'Math-1'),
	(408, 'Fatah', 'Math-0'),
	(409, 'Fatah', 'Human Rights'),
	(410, 'Fatah', 'Technical Report'),
	(411, 'Fatah', 'Discrete Math'),
	(412, 'Fatah', 'Programming 1'),
	(413, 'Fatah', 'Logic Design'),
	(414, 'Fatah', 'Math-2'),
	(415, 'Fatah', 'Probability and Statistics 1'),
	(416, 'Fatah', 'Microeconomics'),
	(417, 'Fatah', 'Introduction to Networking'),
	(418, 'Fatah', 'Introduction to Database'),
	(419, 'Fatah', 'Introduction to Software Engineering'),
	(420, 'Fatah', 'Programming 2'),
	(421, 'Fatah', 'Math-3'),
	(422, 'Fatah', 'Probability and Statistics 2');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
