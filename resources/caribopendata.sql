-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Mar 20, 2017 at 12:53 AM
-- Server version: 5.6.12-log
-- PHP Version: 5.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `caribopendata`
--
CREATE DATABASE IF NOT EXISTS `caribopendata` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `caribopendata`;

-- --------------------------------------------------------

--
-- Table structure for table `author`
--

CREATE TABLE IF NOT EXISTS `author` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fname` varchar(30) DEFAULT NULL,
  `lname` varchar(30) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=117 ;

--
-- Dumping data for table `author`
--

INSERT INTO `author` (`id`, `fname`, `lname`, `email`) VALUES
(1, 'Houda', 'Abbad', 'houda.abbad@lycos.com'),
(2, 'Hideo', 'Bannai', 'bannai@inf.kyushu-u.ac.jp'),
(3, 'Mutlu', 'Beyazit', 'beyazit@adt.upb.de'),
(4, 'Francine', 'Blanchet-Sadri', 'blanchet@uncg.edu'),
(5, 'Janusz', 'Brzozowski', 'brzozo@uwaterloo.ca'),
(6, 'Cezar', 'Campeanu', 'cezar@sun11.math.upei.ca'),
(7, 'Mathieu', 'Caralp', 'mathieu.caralp@lif.univ-mrs.fr'),
(8, 'Pascal', 'Caron', 'pascal.caron@univ-rouen.fr'),
(9, 'Jean-Marc', 'Champarnaud', 'Jean-Marc.Champarnaud@univ-rouen.fr'),
(10, 'Dmitry', 'Chistikov', 'dch@mpi-sws.org'),
(11, 'Christian', 'Choffrut', 'Christian.Choffrut@liafa.jussieu.fr'),
(12, 'Stefano', 'Crespi-Reghizzi', 'stefano.crespireghizzi@polimi.it'),
(13, 'Denis', 'Debarbieux', 'denis.debarbieux@inria.fr'),
(14, 'Pierpaolo', 'Degano', 'degano@di.unipi.it'),
(15, 'Akim', 'Demaille', 'akim.demaille@gmail.com'),
(16, 'Michael', 'Domaratzki', 'mdomarat@cs.umanitoba.ca'),
(17, 'Frank', 'Drewes', 'drewes@cs.umu.se'),
(18, 'Alexandre', 'Duret-Lutz', 'adl@lrde.epita.fr'),
(19, 'Gianluigi', 'Ferrari', 'giangi@di.unipi.it'),
(20, 'Olivier', 'Gauwin', 'olivier.gauwin@labri.fr'),
(21, 'Thomas', 'Genet', 'thomas.genet@irisa.fr'),
(22, 'Daniela', 'Genova', 'd.genova@unf.edu'),
(23, 'Yuri', 'Gurevich', 'gurevich@microsoft.com'),
(24, 'Yo-Sub', 'Han', 'emmous@cs.yonsei.ac.kr'),
(25, 'MdMahbubul', 'Hasan', 'shanto86@gmail.com'),
(26, 'Pierre-Cyrille', 'Heam', 'pheam@femto-st.fr'),
(27, 'Fritz', 'Henglein', 'henglein@diku.dk'),
(28, 'Jan', 'Holub', 'Jan.Holub@fit.cvut.cz'),
(29, 'Markus', 'Holzer', 'holzer@informatik.uni-giessen.de'),
(30, 'Tomohiro', 'I', 'tomohiro.i@inf.kyushu-u.ac.jp'),
(31, 'A.S.M.Sohidull', 'Islam', 'sohansayed@gmail.com'),
(32, 'Masami', 'Ito', 'ito@cc.kyoto-su.ac.jp'),
(33, 'Sebastian', 'Jakobi', 'sebastian.jakobi@informatik.uni-giessen.de'),
(34, 'Jozef', 'Jirasek', 'jozef.jirasek@upjs.sk'),
(35, 'Oscar', 'Ibarra', 'ibarra@cs.ucsb.edu'),
(36, 'Shunsuke', 'Inenaga', 'inenaga@inf.kyushu-u.ac.jp'),
(37, 'Alois', 'Dreyfus', 'alois.dreyfus@femto-st.fr'),
(38, 'Galina', 'Jiraskova', 'jiraskov@saske.sk'),
(39, 'Natasa', 'Jonoska', 'jonoska@math.usf.edu'),
(40, 'Helmut', 'Jurgensen', 'hjj@csd.uwo.ca'),
(41, 'Lila', 'Kari', 'lila@csd.uwo.ca'),
(42, 'Andrzej', 'Kisielewicz', 'andrzej.kisielewicz@gmail.com'),
(43, 'Sang-Ki', 'Ko', 'narame7@cs.yonsei.ac.kr'),
(44, 'Stavros', 'Konstantinidis', 's.konstantinidis@smu.ca'),
(45, 'Olga', 'Kouchnarenko', 'olga.kouchnarenko@femto-st.fr'),
(46, 'Dexter', 'Kozen', 'kozen@cs.cornell.edu'),
(47, 'Wener', 'Kuich', 'kuich@tuwien.ac.at'),
(48, 'Natalia', 'Kushik', 'ngkushik@gmail.com'),
(49, 'Martin', 'Kutrib', 'kutrib@informatik.uni-giessen.de'),
(50, 'Tristan', 'LeGall', 'tristan.le-gall@cea.fr'),
(51, 'Axel', 'Legay', 'axel.legay@inria.fr'),
(52, 'Pawan', 'Lingras', 'pawan.lingras@smu.ca'),
(53, 'Norma', 'Linney', 'norma.linney@smu.ca'),
(54, 'Sylvain', 'Lombardy', 'Sylvain.Lombardy@labri.fr'),
(55, 'Eva', 'Maia', 'emaia@dcc.fc.up.pt'),
(56, 'Rupak', 'Majumdar', 'rupak@mpi-sws.org'),
(57, 'Andreas', 'Malcher', 'andreas.malcher@informatik.uni-giessen.de'),
(58, 'Andreas', 'Maletti', 'andreas.maletti@ims.uni-stuttgart.de'),
(59, 'Sebastian', 'Maneth', 'Sebastian.Maneth@gmail.com'),
(60, 'Denis', 'Maurel', 'denis.maurel@univ-tours.fr'),
(61, 'Carlo', 'Mereghetti', 'mereghetti@di.unimi.it'),
(62, 'Gianluca', 'Mezzetti', 'mezzetti@di.unipi.it'),
(63, 'Nelma', 'Moreira', 'nam@dcc.fc.up.pt'),
(64, 'Frantisek', 'Mraz', 'mraz@ksvi.ms.mff.cuni.cz'),
(65, 'Paul', 'Muir', 'muir@smu.ca'),
(66, 'Valerie', 'Murat', 'valerie.murat@inria.fr'),
(67, 'Joachim', 'Niehren', 'joachim.niehren@inria.fr'),
(68, 'Lasse', 'Nielsen', 'lasse.nielsen.dk@gmail.com'),
(69, 'Takaaki', 'Nishimoto', 'a32b16c4@gmail.com'),
(70, 'Friedrich', 'Otto', 'otto@theory.informatik.uni-kassel.de'),
(71, 'Beatrice', 'Palano', 'palano@dsi.unimi.it'),
(72, 'Giovanni', 'Pighizzini', 'pighizzini@dico.unimi.it'),
(73, 'Daniel', 'Prusa', 'prusapa1@cmp.felk.cvut.cz'),
(74, 'M.Sohel', 'Rahman', 'sohel.kcl@gmail.com'),
(75, 'Ian', 'McQuillan', 'mcquillan@cs.usask.ca'),
(76, 'George', 'Rahonis', 'grahonis@math.auth.gr'),
(77, 'Bala', 'Ravikumar', 'ravi@cs.sonoma.edu'),
(78, 'Daniel', 'Reidenbach', 'D.Reidenbach@lboro.ac.uk'),
(79, 'Rogerio', 'Reis', 'rvr@dcc.fc.up.pt'),
(80, 'Pierre-Alain', 'Reynier', 'pierre-alain.reynier@lif.univ-mrs.fr'),
(81, 'Jacques', 'Sakarovitch', 'sakarovitch@telecom-paristech.fr'),
(82, 'Michel', 'Rigo', 'm.rigo@ulg.ac.be'),
(83, 'Kai', 'Salomaa', 'ksalomaa@cs.queensu.ca'),
(84, 'Pierluigi', 'San-Pietro', 'pierluigi.sanpietro@polimi.it'),
(85, 'Porter', 'Scobey', 'porter.scobey@smu.ca'),
(86, 'Tom', 'Sebastian', 'tom.sebastian@inria.fr'),
(87, 'Ayon', 'Sen', 'ayonsn@gmail.com'),
(88, 'Geraud', 'Senizergues', 'ges@labri.fr'),
(89, 'Klaus', 'Sutner', 'sutner@cs.cmu.edu'),
(90, 'Marek', 'Szykula', 'marek.esz@gmail.com'),
(91, 'Masayuki', 'Takeda', 'takeda@inf.kyushu-u.ac.jp'),
(92, 'Jean-Marc', 'Talbot', 'jean-marc.talbot@lif.univ-mrs.fr'),
(93, 'Marc', 'Tommasi', 'Marc.Tommasi@univ-lille3.fr'),
(94, 'Mikhail', 'Volkov', 'Mikhail.Volkov@usu.ru'),
(95, 'Bruce', 'Watson', 'bruce@fastar.org'),
(96, 'Matthias', 'Wendlandt', 'matthias.wendlandt@informatik.uni-giessen.de'),
(97, 'Hsu-Chun', 'Yen', 'yen@cc.ee.ntu.edu.tw'),
(98, 'Nina', 'Yevtushenko', 'ninayevtushenko@yahoo.com'),
(99, 'Mohamed', 'Zergaoui', 'innovimax@gmail.com'),
(100, 'Alexander', 'Okhotin', 'alexander.okhotin@utu.fi'),
(103, 'Tester Fname', 'Tester LName', 'testeremail@email.org'),
(104, 'Tester Fname', 'Tester LName', 'testeremail@email.org'),
(105, 'Tester Fname', 'Tester LName', 'testeremail@email.org'),
(106, 'Tester Fname', 'Tester LName', 'testeremail@email.org'),
(107, 'Tester Fname', 'Tester LName', 'testeremail@email.org'),
(108, 'Tester Fname', 'Tester LName', 'testeremail@email.org'),
(109, 'Tester Fname', 'Tester LName', 'testeremail@email.org'),
(110, 'Tester Fname', 'Tester LName', 'testeremail@email.org'),
(111, 'Tester Fname', 'Tester LName', 'testeremail@email.org'),
(112, 'Tester Fname', 'Tester LName', 'testeremail@email.org'),
(113, 'Tester Fname', 'Tester LName', 'testeremail@email.org'),
(114, 'Tester Fname', 'Tester LName', 'testeremail@email.org'),
(115, 'Tester Fname', 'Tester LName', 'testeremail@email.org'),
(116, 'Tester Fname', 'Tester LName', 'testeremail@email.org');
