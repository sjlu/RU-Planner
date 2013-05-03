# ************************************************************
# Sequel Pro SQL dump
# Version 4004
#
# http://www.sequelpro.com/
# http://code.google.com/p/sequel-pro/
#
# Host: 127.0.0.1 (MySQL 5.1.66-0+squeeze1)
# Database: ru-planner
# Generation Time: 2013-05-03 19:32:32 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table comments
# ------------------------------------------------------------

DROP TABLE IF EXISTS `comments`;

CREATE TABLE `comments` (
  `id` int(5) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `course_id` int(5) NOT NULL,
  `comment` text NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `comments` WRITE;
/*!40000 ALTER TABLE `comments` DISABLE KEYS */;

INSERT INTO `comments` (`id`, `user_id`, `course_id`, `comment`, `timestamp`)
VALUES
	(1,1,62,'This class is so easy.','2013-04-30 23:10:46'),
	(2,1,103,'This class is mad easy.','2013-04-30 23:11:20'),
	(3,1,68,'This class is primarily project based.','2013-04-30 23:11:48'),
	(4,1,61,'Hardest course you\'ll take in your freshman year.','2013-04-30 23:12:07'),
	(5,1,69,'Do the homework.','2013-04-30 23:12:19'),
	(6,1,63,'Curved like no other.','2013-04-30 23:12:38'),
	(7,1,29,'A little more work than you expect for a one credit course.','2013-04-30 23:13:14'),
	(8,4,7,'THIS CLASS IS FANTASTICAL','2013-05-01 00:02:12'),
	(9,4,12,'THIS CLASS IS BOMBASTICAL','2013-05-01 00:11:58'),
	(10,3,70,'THIS CLASS IS HARD','2013-05-01 00:22:11'),
	(11,3,70,'THE TEACHER IS SO HOT','2013-05-01 00:22:17'),
	(12,3,70,'CALC 2 IS 4 CREDITS WORTH OF PAIN','2013-05-01 00:24:06'),
	(13,7,3,'Lab takes a long time.','2013-05-03 00:32:55');

/*!40000 ALTER TABLE `comments` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table courses
# ------------------------------------------------------------

DROP TABLE IF EXISTS `courses`;

CREATE TABLE `courses` (
  `id` int(5) unsigned NOT NULL AUTO_INCREMENT,
  `school` int(3) NOT NULL,
  `course` int(3) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `credits` int(3) NOT NULL,
  `upper_only` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `courses` WRITE;
/*!40000 ALTER TABLE `courses` DISABLE KEYS */;

INSERT INTO `courses` (`id`, `school`, `course`, `name`, `description`, `credits`, `upper_only`)
VALUES
	(1,332,221,'Principles of Electrical Engineering I','For a basic understanding of circuit elements and analysis',3,0),
	(2,332,222,'Principles of Electrical Engineering II','For an advanced view of circuit design, computation, and analysis',3,0),
	(3,332,223,'Principles of Electrical Engineering I Laboratory','Lab corresponding to Principles of Electrical Engineering I',1,0),
	(4,332,224,'Principles of Electrical Engineering II Laboratory','Lab corresponding to Principles of Electrical Engineering II',1,0),
	(5,332,226,'Probability and Random Processes','To develop the logical basis of probability theory to develop skills necessary to solve practical problems in probability and random processes',3,0),
	(6,332,231,'Digital Logic Design','To introduce the basic tools for design with combinational and sequential digital logic and state machines. To learn simple digital circuits in preparation for computer engineering.',3,0),
	(7,332,233,'Digital Logic Design Laboratory ','To provide practical experience with the implementation of digital circuits. Gives a good basis for studying computer engineering.',1,0),
	(8,332,252,'Programming Methodology I','To develop basic skills in efficient design of C++ algorithms and programming.',3,0),
	(9,332,254,'Programming Methodology I Lab','To introduce C++ programming and data structures',1,0),
	(10,332,301,'Wireless Revolution','To demonstrate multi-disciplinary strategic thinking in a business context, through the particular examples of wireless technology',3,0),
	(11,332,312,'Discrete Math','To develop the ability to reason and think mathematically \r\nand logically; and to apply this ability to analyzing and \r\nsolving discrete practical problems.',3,0),
	(12,332,322,'Principles of Communications Systems','To understand basic analog and digital communication system theory and design, with an emphasis on wireless communications methods.',3,0),
	(13,332,331,'Computer Architecture and Assembly Language','To develop skills in understanding and evaluating the \r\norganization, operation and programming of current \r\nmicroprocessors and their peripherals, as well as to develop \r\nskills in designing basic processor components.',3,0),
	(14,332,333,'Computer Architecture and Assembly Language Laboratory','This lab class is intended to train the students on both \r\nassembly language programming and processor design and \r\nsimulation. It will also help the students enforce their \r\nunderstanding of the knowledge learned in the co-requisite \r\ncourse 14:332:331 (Computer Architecture and Assembly \r\nLanguage).',1,0),
	(15,332,345,'Linear Signals and Systems','To develop skills to analyze linear dynamic systems in both continuous- and discrete-time, find the system response in both time and frequency domains, and examine system stability. To understand the use of the Fourier, Laplace, and Z transforms in analysis of signals and systems.',3,0),
	(16,332,346,'Digital Signal Processing','To introduce the basic principles, methods, and applications of digital signal processing, emphasizing its algorithmic, computational, and programming aspects.',3,0),
	(17,332,347,'Linear Signals and Systems Laboratory','To understand complex signals and their representation in terms of common signals.\r\nTo understand the signal frequency content and the system representation in the frequency domain.\r\nTo understand the concept of signal convolution and its use in analysis of linear dynamic systems.\r\nTo master the use of the Laplace transform in analysis of continuous-time linear dynamic systems.\r\nTo master the use of the Z transform in analysis of discrete-time linear dynamic systems.',1,0),
	(18,332,348,'Digital Signal Processing Laboratory','To carry out software and hardware experiments illustrating the basic principles and techniques of digital signal processing and to learn the programming of real-time signal processing algorithms on a concrete DSP chip.',1,0),
	(19,332,351,'Programming Methodology II','In-depth analysis of algorithms using object oriented techniques. Comparative algorithm analysis, in-depth sorting algorithms, graphs, NP-Completeness, object-oriented design. Emphasis is on programming and practical applications in Electrical and Computer Engineering. Programming languages include C++ and Java.',3,0),
	(20,332,361,'Electronic Devices','Fundamentals of semiconductor devices and microelectronic circuits, terminal characteristics of p-n and Zener diodes, diode circuits. Principles of MOSFET and BJT operation, biasing technology, single stage transistor circuit analysis at midband frequencies.',3,0),
	(21,332,363,'Electronic Devices Laboratory','Laboratory experiments in microelectronic circuits using semiconductor devices, including diodes, MOSFETs and BJTs. Employing a learn-by-doing approach, emphasizing the hands-on-experimental experiences and computer simulation.',1,0),
	(22,332,366,'Digital Electronics','Principles of digital electronics, implementation of logic gates with MOSFETs and BJTs. Understanding and analysis of different logic families including NMOS CMOS, TTL and ECL. Fundamentals of digital memory circuits.',3,0),
	(23,332,368,'Digital Electronics Laboratory','Laboratory experiments in transistor-level realization of CMOS, BiCMOS, TTL and ECL logic gates. Employing a learn-by-doing approach, emphasizing the hands-on-experimental experiences and computer simulation.',1,0),
	(24,332,373,'Elements of Electrical Engineering','Survey course in Electrical Engineering and circuit solving',3,0),
	(25,332,375,'Elements of Electrical Engineering Laboratory','Survey course for non-EE students, Experimental exercises in use of laboratory instruments. Voltage, current, impedance, frequency, and waveform measurements.',1,0),
	(26,332,376,'Virtual Reality','Introduction to VR, input/output devices, haptic interfaces, \r\ndedicated hardware, world modeling, human factors in VR \r\nsimulations, applications, the future of VR',3,1),
	(27,332,378,'Virtual Reality Lab','Introduction to Unity 3D programming, stereoscopic display \r\nprogramming, scene graphs and hierarchical models, bi-manual game \r\ninterfaces, haptic interfaces (touch feedback) and real-time interaction \r\ntechniques, term project. ',1,1),
	(28,332,382,'Electromagnetic Fields','Field theory of static, stationary and moving charges are presented.\r\nThe basic laws of Coulomb, Gauss, Faraday and Ampere are discussed in the context of engineering applications. Maxwell\'s equations are introduced to describe to the time-varying fields. A knowledge of vector analysis is assumed.',3,0),
	(29,332,393,'Professionalism/Ethics ','n undergraduate seminar on the topics of Entrepreneurship, Ethics, and Professionalism.',1,1),
	(30,332,402,'Sustainable Energy: Choosing Among the Options ','To demonstrate multi-disciplinary strategic thinking in a sustainable development context taking into account diverse constraints',3,1),
	(31,332,411,'Electrical Energy Conversion','Principles of magnetic circuit concepts, transformers, DC \r\nmachines, synchronous machines, induction machines, special \r\npurpose machines ',3,0),
	(32,332,415,'Introduction to Automatic Control Theory','To develop skills, to analyze feedback control systems in both continuous- and discrete time domains and learn methods for improving system response transient and steady state behavior (response). Understand system stability concept and learn methods for examining system stability in both time and frequency domains including determining the system stability margins.',3,0),
	(33,332,417,'Control Systems Design','Design methods for controllers of linear time-invariant systems using Bode diagrams, root locus, pole placement, and observer techniques. Linear-quadratic optimal controllers and Kalman filters. Design techniques for controllers of nonlinear systems based on linearization, first and second method of Lyapunov, describing function method. Observers for nonlinear systems and the extended Kalman filter.',3,0),
	(34,332,418,'Capstone Design – Systems and DSP','Capstone design experience in control systems as well as digital signal processing. The course focuses on team-oriented design projects involving feedback control systems, and digital signal processing systems that process speech, image, audio, and discrete-time data signals. Students participate in a design process that incorporates realistic engineering constraints such as manufacturability and economics, as well as issues dealing with safety and ethics.',3,1),
	(35,332,421,'Wireless Communications','To gain an understanding of the principles behind the design of wireless communication systems and technologies.',3,0),
	(36,332,423,'Computer and Communication Networks','The course teaches the fundamental principles of computer and communication networking. After this course students should have general knowledge on how the Internet works, issues with the integration of voice, video, and data services, and communication across wired and wireless networks.',3,0),
	(37,332,424,'Introduction to Information and Network Security','To provide solutions to securing the digital communication \r\ninfrastructure and networks.',3,0),
	(38,332,427,'Communications System Design','Design methods and laboratory experiments dealing with practical aspects of analog and digital communications schemes. Experiments involve component-level circuit construction, interconnection of modular subsystems, and use of interactive, graphics-based, system simulation software packages.',3,0),
	(39,332,428,'Capstone Design - Communcations Systems ','Capstone design experience in communications systems engineering. The course focuses on team-oriented projects involving practical analog, digital communications systems, as well as wireless communications systems. In addition to already amassed theoretical knowledge, projects require application of realistic engineering constraints such as manufacturability and economics, as well as issues dealing with safety and ethics.',3,1),
	(40,332,437,'Digital Systems Design ','To prepare students for the design of practical digital hardware systems using Verilog',3,0),
	(41,332,438,'Capstone Design - Digital Systems ','Capstone design experience in computer systems engineering. The course focuses on team-oriented design projects involving software and systems or digital system design or VLSI design or robotics and computer vision design. Students participate in a design process that incorporates realistic engineering constraints such as manufacturability and economics, as well as issues dealing with safety and ethics',3,1),
	(42,332,447,'Digital Signal Processing Design','This course emphasizes the application of basic concepts of digital signal processing (sampling, filtering, spectral analysis, decimation and interpolation), to building (within a MATLAB framework) real and useful systems for a wide range of application areas, with primary emphasis on image and speech processing systems.',3,0),
	(43,332,451,'Introduction to Parallel and Distributed Programming','To introduce the fundamentals of parallel and distributed \r\nprogramming and application development.',3,0),
	(44,332,452,'Software Engineering','The key objective of this course is to learn object-oriented design of software and documenting the design using UML symbolic representations. A key emphasis is on hands-on, team-based development of working software systems.',3,0),
	(45,332,456,'Network-Centric Programming','To introduce students to the development of network software using Linux as a reference platform and introduce computer systems concepts from a programmer’s perspective. To create a foundation for further study and professional practice in software development.',3,0),
	(46,332,460,'Power Electronics','To introduce students the basic theory of power semiconductor devices and passive components, their practical application in power electronics.\r\nTo familiarize the operation principle of AC-DC, DC-DC, DC-AC conversion circuits and their applications.\r\nTo provide the basis for further study of power electronics circuits and systems.',3,0),
	(47,332,463,'Analog Electronics','To develop analytical skills in obtaining the high frequency response of BJT and FET analog amplifiers.',3,0),
	(48,332,465,'Physical Electronics','Introduce students to the physics of semiconductors and the inner working of semiconductor devices\r\nProvide students the insight useful for understanding new semiconductor devices and technologies.',3,0),
	(49,332,466,'Opto-Electronic Devices','To introduce the student to the concepts, physical \r\noperations, and design criteria of state-of-the art \r\noptoelectronic devices and systems used in research, \r\ntechnology, medicine communication, etc.',3,0),
	(50,332,467,'Microelectronic Processing','Overview of microelectronic processing technology, including lithography, etching, oxidation, diffusion, implantation and annealing, film deposition, epitaxy growth, metallization, process integration and simulation. Conduct the basic microelectronic fabrication experiments in the lab.',3,0),
	(51,332,468,'Capstone Design - Electronics','Capstone design experience in electronics. The course focuses on team-oriented design projects involving electronic circuits or microelectronic processing or optoelectronics or microwave circuits. Students participate in a design process that incorporates realistic engineering constraints such as manufacturability and economics, as well as issues dealing with safety and ethics.',3,1),
	(52,332,472,'Introduction to Robotics and Computer Vision','To develop skills in building real world computer vision \r\nsystems. These skills include modeling and utilizing the \r\nphotometry and geometry of image formation to build \r\ncomputational algorithms for automated understanding of \r\nvisual scenes.',3,0),
	(53,332,474,'Introduction to Computer Graphics','Computer display systems, algorithms and languages for \r\ninteractive computer graphics. 3D coordinate frame \r\ntransformations. Vector, curve and surface generation. \r\nLighting, Illumination and Shading. Camera models and \r\nimage based rendering. ',3,0),
	(54,332,478,'Capstone Design – Virtual Medical Systems','Capstone design experience in medical applications of virtual \r\nreality. The course focuses on team-oriented design projects \r\ninvolving either or both hardware prototyping or software design \r\nof applications of virtual reality in Medicine. Emphasis will be on \r\ncomputer games for rehabilitation. Students participate in a design \r\nprocess that incorporates realistic engineering constraints such as \r\nreal-time rendering, ergonomics, design for usability, as well issues \r\ndealing with patient safety and confidentiality of data. ',3,1),
	(55,332,479,'VLSI Design ','Introductory digital VLSI chip design. CMOS technology, dynamic clocked logic, layout design rules, and analog MOSFET timing analysis. Computer-aided design software tools and elementary circuit testing. Cell library construction.',3,0),
	(56,332,481,'Electromagnetic Waves ','To introduce the theory and concepts of electromagnetic waves, transmission lines, and antennas, and their practical applications.',3,0),
	(57,332,482,'Deep Submicron VLSI Design for Electrical and Computer Engineering','Advanced topics in deep submicron and nanotechnology VLSI design and fabrication. Logic and state machine design for high performance and low power. Tree adders and Booth multipliers. Memory design. Timing testing for crosstalk faults. Design economics. Emerging nanotechnology devices.',3,0),
	(58,332,491,'Special Problems/ Independent Study','Independent Research under the guidance of a faculty \r\nmember',3,1),
	(59,332,494,'Topics in Electrical and Computer Engineering','As the title of the course implies, this course deals with new \r\ntopics in Electrical and Computer Engineering that are of \r\ninterest in any given semester. The details of the course \r\nwill be publicized in each semester. ',3,1),
	(60,332,496,'Co-Op Internship in Electrical and Computer Engineering','Practical training in professional environment ',3,0),
	(61,355,101,'Expository Writing','Introduction to writing based on texts, novels, and scientific papers.',3,0),
	(62,220,102,'Introduction to Micro Economics','Introduction to basic micro economic theory including supply/demand, labor/capital, and graph maximization.',3,0),
	(63,160,159,'General Chemistry for Engineers','General chemistry class designed for all engineering students. Introduces important topics like significant figures, reactions, and equilibrium equations.',3,0),
	(64,160,171,'Introduction to Experimentation','Lab class meant for students to apply their chemistry class knowledge and to learn from the physical reactions taking place.',1,0),
	(65,440,100,'Engineering Orientation','Exposes all engineering students to the different types of engineering and what can be expected in each field.',1,0),
	(66,640,151,'Calculus 1 Math/Physics','Introduces the students to calculus topics such as derivatives, integrals, and many other useful graph analysis.',4,0),
	(67,750,123,'Analytical Physics 1A','Introduces the students to basic physics principles including force, momentum, inertia, torque, moments, and other important foundations.',2,0),
	(68,440,127,'Introduction to Computers for Engineers','Introductory course for engineers involving basic programming using MATLAB. Will help students better understand and work with sophisticated and powerful software by creating and debugging programs.',3,0),
	(69,440,221,'Engineering Mechanics: Statics','Statics course which involves the physics of non moving objects. Students will learn about calculating equilibrium and forces in static environments using a variety of techniques.',3,0),
	(70,640,152,'Calculus II Math/Physics','A continuation of Calculus I, involving integrals, limits, series and sequences. ',4,0),
	(71,750,124,'Analytical Physics IB','Continuation of Analytical Physics IA where students learn more about signals and waves and the power, voltage, and current involved with each.',2,0),
	(72,640,251,'Multivariable Calculus','Third installment of calculus which involves applying concepts learned in Calculus I too numerous variables. Students will learn 3 dimensional graphing and analytical techniques.',4,0),
	(73,750,227,'Analytical Physics IIA','Advanced study of physics involving electromagnetism and force. Students will apply concepts learned in the two previous physics and additionally understand how all different forces interact.',3,0),
	(74,750,229,'Analytical Physics IIA Lab','Accompanying lab for Analytical Physics IIA, where students apply in lab what they have learned in class in order to better understand the physical properties of the material.',1,0),
	(75,640,244,'Differential Equations for Engg/Phy','The fourth installment of calculus, where students learn about second and higher order equations which require various complex techniques to differentiate. In addition, several series and sequences are required in order to properly estimate many of the equations.',4,0),
	(76,220,103,'Introduction to Macroeconomics','Determinants of aggregate employment and national income; evaluation of government policies to alleviate inflation and unemployment. Money, banking, and monetary policy. International trade and finance, and the prospects for world economic development.',3,0),
	(77,220,200,'Economic Principles and Problems','Economic principles and their application to current problems.  Open only to engineering students.',3,0),
	(78,220,300,'International Economics','Pure or \"real\" aspects of international trade, including the basic comparative advantage model, commercial policy (tariffs, quotas, etc.), economic integration, and the role of international trade in economic development. Monetary aspects of international trade, including international capital movements, foreign exchange market, concept and measurement of balance of payments, alternative means of correcting disequilibrium in the balance of payments, and international monetary arrangements. ',3,0),
	(79,220,301,'Money and Banking','Economic significance of money; structure, history, and present state of the American monetary system; credit, banking, and Federal Reserve; instruments of credit control; Federal Reserve and treasury policies; monetary reform, monetary theory and policy.',3,0),
	(80,220,302,'Labor Economics','The firm\'s labor demand, the household\'s labor supply, and wage determination in competitive and noncompetitive markets. Economics of unions. Human capital, occupational choice, wage structure, and unemployment. ',3,0),
	(81,220,303,'Labor Institutions and Markets','Private and public employee unions, industrial relations, and collective bargaining. Public regulation of labor markets including industrial safety and wage levels. ',3,0),
	(82,220,305,'American Economic History','Long-term trends in economic growth and institutions from the colonial period to World War II. Development of transportation and industry. Effects of technological change and immigration. Economics of slavery. Monetary history and government regulation.',3,0),
	(83,220,307,'Economics of Globalization: A Historical Perspective','Examination of the evolution of globalization from the 1800s to the present; assessment of the benefits of financial and trade integration relative to the costs associated with integration such as the consequences of financial crises. ',3,0),
	(84,220,308,'Introduction to Managerial Economics','Application of contemporary economic theory to managerial decisions and to public policy affecting business. ',3,0),
	(85,220,311,'Methods of Cost-Benefit Analysis','Introduction to theoretical and applied welfare economics. Theories of social welfare; the normative basis for and practical techniques of cost-benefit analysis. Selected applications. ',3,0),
	(86,220,316,'Health Economics','Medical care costs; production of health; demand for health care and insurance; health services personnel; physician and hospital behavior; cost containment; review and evaluation of public programs. ',3,0),
	(87,220,320,'Intermediate Microeconomic Analysis','Households and firms as maximizing agents; implications for demand and supply of goods and productive services in competitive and monopolistic markets; general equilibrium; welfare economics. ',3,0),
	(88,220,321,'Intermediate Macroeconomic Analysis','1:220:321 Intermediate Macroeconomic Analysis (3) Modern and classical theories of income determination, stabilization, and economic growth; emphasis on unemployment and inflation. ',3,0),
	(89,220,322,'Econometrics','Introduction to the application of statistical methods for the estimation, testing, and prediction of economic relationships. Emphasizes ordinary least squares regression and problems in its application. Extensive use of microcomputers. Special topics may include limited dependent variable models, simultaneous equation methods, and time-series methods. ',3,0),
	(90,220,326,'Econometric Theory','Introduction to econometric theory and applications. Regression-based estimators derived and their statistical properties established. Topics include linear regression model and its extensions in economics, full information maximum likelihood estimators and test procedures, and other nonlinear methods. Computer applications of these methods employed. \r\n',3,0),
	(91,220,327,'History of Economic Thought','Historical examination of the major concepts of economic theory. Covers all major traditions within economic thought, with special emphasis on the school of classical political economy. ',3,0),
	(92,640,250,'Introductory Linear Algebra','Systems of linear equations, Gaussian elimination, matrices and determinants, vectors in two- and three-dimensional Euclidean space, vector spaces, introduction to eigenvalues and eigenvectors. Possible additional topics: systems of linear inequalities and systems of differential equations.',3,0),
	(93,640,300,'Introduction to Mathematical Reasoning','Fundamental abstract concepts common to all branches of mathematics. Special emphasis placed on ability to understand and construct rigorous proofs. ',3,0),
	(94,640,321,'Introduction to Applied Mathematics','Mathematical models of mechanical vibrations, population dynamics, and traffic flow, involving ordinary differential equations and nonlinear first-order partial differential equations. \r\n',3,0),
	(95,640,348,'Cryptography','Applications of algebra and number theory to cryptography (encryption/decryption) and cryptanalysis (attacking encrypted messages). Topics include congruences, finite fields, finding large primes, pseudoprimes, and primality testing, as well as the Vigenere and Hill ciphers, the Data Encryption Standard, probabilistic, and trapdoor attacks on encrypted messages, and public key ciphers. \r\n',3,0),
	(96,640,350,'Linear Algebra','Continuation of 01:640:250. Abstract vector spaces and linear transformations, inner product spaces, diagonalization, and canonical forms. Possible additional topics: systems of ordinary differential equations and numerical techniques. \r\n',3,0),
	(97,640,351,'Introduction to Abstract Algebra I','Abstract algebraic systems, including groups, rings, fields, polynomials, and some Galois theory. \r\n',4,0),
	(98,640,354,'Linear Optimization','Linear programming problems, the simplex method, duality theory, sensitivity analysis, introduction to integer programming, the transportation problem, network flows, and other applications. \r\n',3,0),
	(99,640,356,'Theory of Numbers','General Information (Catalog Description)\r\nProperties of the natural numbers, congruences, diophantine equations, and elementary arithmetical functions. \r\n',3,0),
	(100,640,361,'Set Theory','Introduction to set theory. The set-theoretic foundations of mathematics, including the construction of the real number system, countable and uncountable sets, cardinal numbers, and ordinals, the axiom of choice.\r\n',3,0),
	(101,640,373,'Numerical Analysis I','An analysis of numerical methods for the solution of linear and nonlinear equations, approximation of functions, numerical differentiation and integration, and the numerical solution of initial and boundary value problems for ordinary differential equations.',3,0),
	(102,640,421,'Advanced Calculus for Engineering','Covers Laplace transforms, numerical solution of ordinary differential equations, Fourier series, and separation of variables method applied to the linear partial differential equations of mathematical physics (heat, wave, and Laplace\'s equation).',3,0),
	(103,830,101,'General Psychology','Survey of main areas of contemporary psychology.',3,0),
	(104,830,123,'Soul Beliefs: Causes and Consequences','\r\nExploration of the causes and consequences of various beliefs about the soul. Topics such as the self, mind/body dualism, evolution, culture, death anxiety, afterlife, and religious and political conflict.',4,0),
	(105,830,200,'Quantitative Methods in Psychology ','Quantitative methods used in psychological research. Regular exercises required.\r\n',4,0),
	(106,830,201,'Principles of Cognitive Science','Introduction to the field of human cognition, surveying methods, concepts, findings, and problems in perception, learning, memory, thinking, problem solving, psycholinguistics, and development.\r\n',3,0),
	(107,830,250,'Psychology of Art','Art as powerful experience and driving force in human beings. Structure of works of art, fundamental principles by which the human mind organizes such works, and importance of art for human survival.\r\n',3,0),
	(108,830,271,'Principles of Developmental Psychology','Survey of life-span human development covering prenatal, infant, child, adolescent, and adult periods. \r\n',3,0),
	(109,830,272,'Drugs and Human Behavior','Drug classification; contexts of drug usage; effects of various drugs; analysis of drug action in the central nervous system; aspects of \"human nature\" revealed by drug usage.\r\n',3,0),
	(110,830,301,'Sensation and Perception','Principles of sensory processes in vision, audition, and other modalities, and of the perception of objects and events.\r\n',3,0),
	(111,830,303,'Memory','Principles of acquisition, retention, recall, and forgetting of verbal and nonverbal material.\r\n',3,0),
	(112,830,305,'Cognition','Cognitive processes, including thinking, language, and memory and their development.\r\n',3,0),
	(113,830,307,'Perception in Cognitive Science','Approaches to visual perception that emphasize reasoning about stimulus properties (shading, texture, lines, movement, etc.) that give information about the structure of the environment.\r\n',3,0),
	(114,830,310,'Neuropsychology','Survey of brain damage and plasticity, brain trauma and disease, neuropsychological assessment and testing, cognitive rehabilitation, and current controversies. Provides a basic understanding of brain structure and function along with an appreciation of clinical perspectives.\r\n',3,0),
	(115,830,311,'Conditioning and Learning','Topics include habituation, sensitization, associative learning, and rule and category learning. Data derived from animal and human research.\r\n',3,0),
	(116,830,313,'Physiological Psychology','Physiological determinants and mechanisms of behavior.\r\n',3,0),
	(117,830,315,'Comparative Psychology','Evolution of behavior.\r\n',3,0),
	(118,830,321,'Social Psychology','Social aspects of behavior. Topics such as socialization, communication, small-group interaction, attitudes and attitude change, social perception, and social conflict.\r\n',3,0),
	(119,830,331,'Infant and Child Development','Review of psychological theory and research on perceptual, cognitive, social, and personal growth during infancy and childhood.\r\n',3,0),
	(120,830,333,'Adolescent Development','Review of theory and research on adolescent growth, cognition, personality, and social development.\r\n',3,0),
	(121,830,335,'Adult Development and Aging','Review of psychological theory and research on cognitive, personality, and interpersonal development.\r\n',3,0),
	(122,830,338,'Personality Psychology','Major personality systems. Personality structure, dynamics, development, and assessment.\r\n',3,0),
	(123,830,340,'Abnormal Psychology','Survey of etiology, diagnosis, and treatment of psychopathology.\r\n',3,0),
	(124,830,361,'Developmental Psychobiology','Growth, maturation, and development of behavior with emphasis on physiological mechanisms and early experience.\r\n',3,0),
	(125,830,362,'Psychology of Sex and Gender ','Biological, psychological, and cultural determinants in sex differences in behavior with emphasis on humans. Sexual behavior, aggression, personality, intelligence, and social roles.\r\n',3,0),
	(126,830,364,'Motivation and Emotion','Psychological and physiological aspects of motivation and emotion in human and animal behavior.\r\n',3,0),
	(127,830,377,'Health Psychology','Relationships between behavior and health. Stress, personality, and lifestyle as disease causes; modifying high-risk behaviors; coping with serious illness.\r\n',3,0),
	(128,965,211,'Theater Appreciation: Experiences in Contemporary Theater','Designed for nonmajors. Students attend a wide spectrum of  theater offerings-Broadway, Off-Broadway, Off-Off-Broadway, repertory, and university theater performances-and, through discussion and lectures by professional artists, gain an appreciation of performance. Theater tickets: up to $100 (generally, no text fee is required).',3,0),
	(129,160,160,'General Chemistry for Engineers II','Introduction to chemical principles and their application. Includes stoichiometry, states of  matter, atomic and molecular structure, solutions, thermodynamics, equilibrium,  oxidation-reduction, kinetics, nonmetals, metals and coordination compounds, and nuclear chemistry',3,0),
	(130,440,222,'Dynamics','Kinematics of particles and rigid bodies; rectangular, path, and polar descriptions. Relative motion. Kinetics of particles, particle systems, and rigid bodies; equations of motion, principles of work and energy, linear and angular impulse and momentum. Impact.',3,0),
	(131,180,216,'Introductory Computer-Aided Design and Drafting','Principles of computer-aided design and drafting (CADD); graphic entities, hatch patterns, layering, part file creation and information extraction. Two-dimensional drafting and pictorial drawings using a \r\nCADD system. Introduction to three-dimensional modeling and surface revolution. CADD application in \r\ncivil engineering. \r\n',3,0),
	(132,180,243,'Mechanics of Solids','Axial force, shear, moment, and torque in structural members; stress, strain, and stress-strain relations; principal stresses and strains; torsion of circular shafts; bending of singly symmetric beams; compound loading; buckling of columns; statically indeterminate systems. \r\n4. Prerequisite(s): \r\nMath:251 Multi variable Calculus; 440:221 Statics. Corequisite Math:244 Diff. Equations',3,0),
	(133,180,305,'Construction Engineering','Construction Planning and Practices. Utilization of heavy construction equipment. Economic and operational considerations in selection of construction equipment. Use of computer spreadsheets for cost recording and economic decisions. Quality and productivity control \r\n',3,0),
	(134,180,318,'Elements of Structural Analysis','Structural analysis of statically determinate trusses, frames, cables, and arches. Computation of deflections \r\nin trusses and plane frames. Influence lines for beams and trusses. Introduction to indeterminate structures. \r\n',3,0),
	(135,180,320,'Elements of Structural Design',' Design of bolted and welded connections; design of components of structural systems in tension compression, bending, and combined axial and bending loads. Use of computer in design and detailing \r\n',3,0),
	(136,180,331,'Elements of Environmental Engineering ','Engineering management of the environment with particular emphasis on water and wastewater, air and noise pollution, and solid wastes. Hazardous substances and risk analysis\r\n',3,0),
	(137,180,345,'Properties of Materials Lab','Mechanical testing of wood, concrete, plastics, and numerous metals in tension, compression, and flexure. \r\nApproximate analysis of indeterminate beams using experimental methods. Experimental study of stressstrain transformations. Hardness testing. Elastic and inelastic column buckling. Structural efficiency. \r\n',1,0),
	(138,180,372,'Soil Mechanics','Elements of engineering geology; mechanical and hydraulical properties of soils; soil-water systems and \r\nfluid flow; stresses in soils; compressibility, consolidation and settlement; shearing resistance; lateral earthpressure; slope stability; bearing capacity; numerical methods and computer applications. \r\n',3,0),
	(139,180,374,'Soil Mechanics Laboratory','Engineering classification of soils and rocks. Laboratory studies of physical properties and shear strength \r\nof soils such as Atterberg limits, compaction, permeability, unconfined compression, and direct shear tests. \r\n ',1,0),
	(140,180,387,'Fluid Mechanics','Fluid properties, Statics and kinematics; Concepts of system and control volume; \r\nmass, momentum, and energy conservation principles; Laminar and turbulent flows in conduits and channels; Boundary layer theory; drag and lift; ideal fluid flow. \r\n',3,0),
	(141,180,389,'Fluid Mechanics Laboratory','Experimental applications and demonstrations; measurement of fluid properties; applications of \r\nmass, energy, and momentum principles; energy losses; forces on immersed bodies; flow measurement devices.\r\n',1,0),
	(142,180,406,'Construction Management','Construction planning, scheduling, and control. Use of computer-based information systems for project management. Value engineering. Critical path method and PERT scheduling techniques. Computer drawn \r\nscheduling networks. Schedule compression. Resource allocation leveling and optimization. Project organization and financial control. Decision making. \r\n',3,0),
	(143,180,407,'Construction Projects','Application of skills and theories of construction engineering management to actual projects. Students are \r\nassigned to a project and work with managers to budget, schedule, and control operations. Topics include \r\nproject staffing, cost control and documentation, safety and health and labor relations. \r\n',3,0),
	(144,180,411,'Reinforced Concrete','Strength theories for the analysis and design of beams, slabs, columns, and floor systems in flexure, diagonal tension, torsion, serviceability, and load factors, including computer applications. \r\n',3,0),
	(145,180,413,'Theory of Indeterminate Structures','The force method for solving simple indeterminate structures. Classical methods of slope-deflection and \r\nmoment distribution. Formulation and algorithms for matrix methods. Application of computers for \r\nanalyzing indeterminate trusses and frames. \r\n',3,0),
	(146,180,421,'Reinforced Concrete Lab ','Conventional and high-performance concrete mix design. The effect of mix design on the mechanical \r\nproperties of concrete. Design, construction, and testing of a large-scale reinforced concrete structural \r\ncomponent. \r\n4. Co-requisite: 180:411 Reinforced Concrete ',1,0),
	(147,180,426,'Structural Design','Design of steel or concrete structures; prestressed concrete design of beams and slabs. Design project with working drawings for a bridge or high-rise building. Economic and ethical considerations. A comprehensive report. \r\n\r\n',4,0),
	(148,180,430,'Water and Wastewater Engineering','Design principles for various water and wastewater engineering systems including water supply and distribution, wastewater collection and disposal, water treatment, and wastewater treatment. Design practice. \r\n \r\n',3,0),
	(149,180,431,'Design of Environmental Engineering Facilities','Analysis and design considerations for environmental engineering facilities such as water supply and wastewater treatment plants; physical engineering management of solid and hazardous waste; resource \r\nrecovery; economic and ethical considerations. A comprehensive report. \r\n',4,0),
	(150,180,437,'Transportation Engineering','Principles of transportation engineering with applications to various modes; planning, selection,formulation Economic, environmental, and political constraints; land use studies; applications; \r\nadministration of transportation systems; term project to include proposal and analysis to meet a specific \r\ntransportation requirement',3,0),
	(151,180,438,'Transportation Engineering II','Studies in the design of transportation facilities, with emphasis on streets, highways, airports. Earthworks, \r\nconstruction, pavement and roadway design based on economic, stability, and durability considerations, and interface with the environment. ',4,0),
	(152,180,473,'Foundation Engineering','Subsurface exploration; bearing capacity, settlement, and design of shallow foundations; design of rigid and flexible retaining structures; bearing capacity, settlement, and design of deep foundations. \r\n',3,0),
	(153,180,474,'Geotechnical Engineering Design','Subsurface investigation; construction dewatering; design concepts and procedures for shallow and deep foundations; application of numerical methods; safety and economy, a comprehensive report. \r\n',4,0),
	(154,180,482,'Professional Issues in Civil Engineering ','Principles of design of civil engineering projects from the view point of the whole; interaction between individual parts (subsystems) and the effect of each on the overall system; overview of design \r\nprocess, quality of design, risk and liability, ethics, and economic considerations; report writing. ',1,0),
	(155,198,314,'Principles of Programming Languages','The course is aimed at making the student familiar with the general concepts common to all programming languages so as to facilitate learning new languages.  Language paradigms (i.e., logic, functional, procedural, object-oriented) are compared and implementation strategies are discussed.\r\n\r\n\r\n',4,0),
	(156,198,334,'Introduction to Imaging and Multimedia','Introduces fundamental techniques and concepts used in computational imaging and multimedia.  Upon completion, a successful student will be able to design and implement programs that deal with image, video, and audio data.',4,0),
	(157,198,336,'Principles of Information and Data Management','Describing and querying various forms of information such as structured data in relational databases, unstructured text (IR), semi-structured data (XML, web), deductive knowledge. Conceptual modeling and schema design. Basics of database management system services (transactions, reliability, security, optimization). Advanced topics: finding patterns in data, information mapping and integration. The course focuses on a user\'s perspective, rather than how one implements DBMS.',4,0),
	(158,198,344,'Design and Analysis of Computer Algorithms','To study a variety of useful algorithms and analyze their complexity; by that experience to gain insight into principles and data-structures useful in algorithm design.',4,0),
	(159,198,323,'Numerical Analysis and Computing','To expose the student to the development, application, and analysis of basic numerical algorithms.\r\n\r\n\r\n',4,0),
	(160,198,417,'Distributed Systems: Concepts and Design','Provides an introduction to design principles and concepts of distributed computer systems. The course covers a broad spectrum of topics encompassing system architecture, software abstractions, distributed algorithms, and issues pertaining to distributed environments such as security and fault tolerance.\r\n\r\nTopics will range from the theoretical to the practical with a strong emphasis on the practical, such as client-server programming, remote procedure/method calls, multicasting, firewall design, distributed file systems, machine virtualization, clustering, cryptography, and authentication protocols.',4,0),
	(161,198,416,'Operating Systems Design','To convey a thorough understanding of the basics of an operating system by studying techniques and algorithms for providing services in a computer system, and to understand implementation aspects of popular systems by means of case studies.\r\n',4,0),
	(162,198,440,'Introduction to Artificial Intelligence','To provide a broad introduction to Artificial Intelligence. The course will cover both fundamental concepts such as search and knowledge representation, as well as applied work in areas such as planning and vision. This course is intended for both students majoring in Computer Science as well as nonspecialists with the necessary background who wish to acquire a general familiarity with \r\nArtificial Intelligence.\r\n\r\n',4,0),
	(163,198,476,'Advanced Web Applications: Design and Implementation','Comprehensive overview of current web technologies, including design and implementation principles for web-based applications. Basic principles of scalability, security, reliability, and performance. State-of-the-art review of currently available technologies.\r\nPrerequisites: 01:198:336 and 417.',4,0),
	(164,640,311,'Advanced Calculus I ','Introduction to language and fundamental concepts of analysis. The real numbers, sequences, limits, continuity, differentiation in one variable. \r\nPrerequisites: CALC4 and 01:640:300 or permission of department.',4,0),
	(165,640,312,'Advanced Calculus II','Continuation of Math 311.\r\n',4,0),
	(166,640,352,'Introduction to Abstract Algebra II','Continuation of Introduction to Abstract Algebra I\r\n',3,0),
	(167,640,357,'Topics in Applied Algebra','Introduction to Signal and Image Processing by Discrete Fourier Transform and Wavelet Transforms\r\n',3,0),
	(168,640,374,'NUMERICAL ANALYSIS II','A continuation of Numerical Analysis I',3,0),
	(169,640,403,'Introductory Theory of Functions of a Complex Variable','First course in the theory of a complex variable. Cauchy\'s integral theorem and its applications. Taylor and Laurent expansions, singularities, conformal mapping. \r\n',3,0),
	(170,640,423,'Elementary Partial Differential Equations','Linear partial differential equations of mathematical physics (heat, wave, and Laplace\'s equation), separation of variables, Fourier series.',3,0),
	(171,640,454,'Combinatorics','Existence and enumeration of designs and patterns such as codes, graphs, and block designs, and extremal problems related to such objects. Emphasis on applications to computer, biological, physical, and social problems. ',3,0),
	(172,960,379,'Basic Probability Theory','Descriptive statistics; elementary probability theory; probability distributions; the binomial, Poisson, exponential and normal distributions; basic sampling theory; applications of probability theory.',3,0),
	(173,960,381,'Theory of Probability','Probability distributions; the binomial, geometric, exponential, Poisson, and normal distributions; moment generating functions; sampling distributions; applications of probability theory.',3,0),
	(174,960,201,'Basic Statistics for Economics ','Introduction to statistical inference, including descriptive statistics, probability, sampling, estimation, hypothesis testing, and simple regression analysis. Instruction in the use of computer packages.',4,0),
	(175,960,211,'Statistics I','Principles and methods of statistics, including probability distributions, sampling, estimation, hypothesis testing, regression and correlation analysis, curve-fitting, nonparametric methods, and analysis of variance (ANOVA)',3,0),
	(176,960,212,'Statistics II','Continuation of Statistics I',3,0),
	(177,960,285,'Introductory Statistics for Business','Topics include descriptive statistics, probability theory, random variables, sampling distributions, estimation, hypothesis testing, and one- and two-sample t-tests.',3,0),
	(178,960,401,'Basic Statistics for Research ','As applied in fields other than statistics; treats research projects dependent on the use of observed data from planned experiments. Includes inference methods in estimation and hypothesis testing, and general linear models.',3,0),
	(179,750,228,'Analytical Physics IIB','Waves and optics, relativity, quantum properties of electrons and photons, wave mechanics, atomic, solid state, nuclear and elementary particle physics.',3,0),
	(180,750,230,'Analytical Physics II Laboratory','Laboratory to complement  228.',1,0),
	(181,750,301,'Physics of Sound','The scientific basis of sound: waves, vibrating systems, normal modes, Fourier analysis and synthesis, perception and measurement of sound, noise, musical instruments, room acoustics, sound recording and reproduction, electronic synthesizers, and digital sound.',3,0),
	(182,750,305,'Modern Optics','Geometrical optics; electromagnetic waves, the wave equation; superposition, interference, diffraction, polarization, and coherence; holography; multilayer films, Fresnel equations; blackbody radiation, Einstein coefficients, lasers; waveguides and fiber optics; optical properties of materials.',3,0),
	(183,750,313,'Modern Physics','Relativistic mechanics, wave and quantum properties of photons and electrons, Schrodinger equation and its application to the structure of atoms, molecules, and solids; nuclear physics; elementary particles.',3,0),
	(184,750,351,'Thermal Physics','Principles of thermodynamics with physical and chemical applications: energy, entropy, and temperature, the three laws of thermodynamics, cycles, open systems, critical phenomena, chemical equilibrium, ideal gas reactions, phase rule, phase diagrams, kinetic theory, introduction to statistical mechanics.',3,0),
	(185,750,361,'Quantum Mechanics and Atomic Physics','Introductory quantum mechanics: matter waves, uncertainty principle, stationary states and operators; the Schrodinger equation and its solutions for simple potentials; the hydrogen atom, quantization of angular momentum, spin; complex atoms and molecules.',3,0);

/*!40000 ALTER TABLE `courses` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table major_courses
# ------------------------------------------------------------

DROP TABLE IF EXISTS `major_courses`;

CREATE TABLE `major_courses` (
  `major_id` int(5) NOT NULL,
  `course_id` int(5) NOT NULL,
  `type` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `major_courses` WRITE;
/*!40000 ALTER TABLE `major_courses` DISABLE KEYS */;

INSERT INTO `major_courses` (`major_id`, `course_id`, `type`)
VALUES
	(1,1,'MAJOR'),
	(1,2,'MAJOR'),
	(1,3,'MAJOR'),
	(1,4,'MAJOR'),
	(1,5,'MAJOR'),
	(1,6,'MAJOR'),
	(1,7,'MAJOR'),
	(1,8,'MAJOR'),
	(1,9,'MAJOR'),
	(1,11,'MAJOR'),
	(1,13,'MAJOR'),
	(1,14,'MAJOR'),
	(1,15,'MAJOR'),
	(1,17,'MAJOR'),
	(1,19,'MAJOR'),
	(1,20,'MAJOR'),
	(1,21,'MAJOR'),
	(1,22,'MAJOR'),
	(1,23,'MAJOR'),
	(1,29,'MAJOR'),
	(1,40,'MAJOR'),
	(1,44,'MAJOR'),
	(11,61,NULL),
	(11,62,NULL),
	(11,63,NULL),
	(11,64,NULL),
	(11,65,NULL),
	(11,66,NULL),
	(11,67,NULL),
	(11,68,NULL),
	(11,69,NULL),
	(11,70,NULL),
	(11,71,NULL),
	(11,72,NULL),
	(11,73,NULL),
	(11,74,NULL),
	(11,75,NULL),
	(12,76,NULL),
	(12,77,NULL),
	(12,78,NULL),
	(12,79,NULL),
	(12,80,NULL),
	(12,81,NULL),
	(12,82,NULL),
	(12,83,NULL),
	(12,84,NULL),
	(12,85,NULL),
	(12,86,NULL),
	(12,87,NULL),
	(12,88,NULL),
	(12,89,NULL),
	(12,90,NULL),
	(12,91,NULL),
	(12,92,NULL),
	(12,93,NULL),
	(12,94,NULL),
	(12,95,NULL),
	(12,96,NULL),
	(12,97,NULL),
	(12,98,NULL),
	(12,99,NULL),
	(12,100,NULL),
	(12,101,NULL),
	(12,102,NULL),
	(12,103,NULL),
	(12,104,NULL),
	(12,105,NULL),
	(12,106,NULL),
	(12,107,NULL),
	(12,108,NULL),
	(12,109,NULL),
	(12,110,NULL),
	(12,111,NULL),
	(12,112,NULL),
	(12,113,NULL),
	(12,114,NULL),
	(12,115,NULL),
	(12,116,NULL),
	(12,117,NULL),
	(12,118,NULL),
	(12,119,NULL),
	(12,120,NULL),
	(12,121,NULL),
	(12,122,NULL),
	(12,123,NULL),
	(12,124,NULL),
	(12,125,NULL),
	(12,126,NULL),
	(12,127,NULL),
	(12,128,NULL),
	(13,185,'SME'),
	(13,184,'SME'),
	(13,183,'SME'),
	(13,182,'SME'),
	(13,181,'SME'),
	(13,179,'SME'),
	(13,178,'SME'),
	(13,177,'SME'),
	(13,175,'SME'),
	(13,174,'SME'),
	(13,173,'SME'),
	(13,172,'SME'),
	(13,171,'SME'),
	(13,170,'SME'),
	(13,169,'SME'),
	(13,167,'SME'),
	(13,166,'SME'),
	(13,164,'SME'),
	(2,185,'TECH'),
	(2,183,'TECH'),
	(2,184,'TECH'),
	(1,12,'TECH'),
	(1,16,'TECH'),
	(1,92,'TECH'),
	(1,30,'TECH'),
	(1,32,'TECH'),
	(1,42,'TECH'),
	(1,47,'TECH'),
	(1,48,'TECH'),
	(1,49,'TECH'),
	(1,56,'TECH'),
	(1,96,'COMP'),
	(1,26,'COMP'),
	(1,27,'COMP'),
	(1,28,'COMP'),
	(1,35,'COMP'),
	(1,36,'COMP'),
	(1,37,'COMP'),
	(1,43,'COMP'),
	(1,45,'COMP'),
	(1,52,'COMP'),
	(1,53,'COMP'),
	(1,55,'COMP'),
	(1,57,'COMP'),
	(1,58,'COMP'),
	(1,59,'COMP'),
	(1,155,'COMP'),
	(1,156,'COMP'),
	(1,157,'COMP'),
	(1,158,'COMP'),
	(1,161,'MAJOR'),
	(1,159,'TECH'),
	(1,160,'TECH'),
	(1,162,'TECH'),
	(1,163,'TECH'),
	(1,34,'CAP'),
	(1,39,'CAP'),
	(1,41,'CAP'),
	(1,51,'CAP'),
	(1,54,'CAP'),
	(2,34,'CAP'),
	(2,39,'CAP'),
	(2,41,'CAP'),
	(2,51,'CAP'),
	(2,54,'CAP'),
	(2,1,'MAJOR'),
	(2,2,'MAJOR'),
	(2,3,'MAJOR'),
	(2,4,'MAJOR'),
	(2,5,'MAJOR'),
	(2,6,'MAJOR'),
	(2,7,'MAJOR'),
	(2,8,'MAJOR'),
	(2,9,'MAJOR'),
	(2,11,'MAJOR'),
	(2,13,'MAJOR'),
	(2,14,'MAJOR'),
	(2,15,'MAJOR'),
	(2,16,'MAJOR'),
	(2,17,'MAJOR'),
	(2,18,'MAJOR'),
	(2,20,'MAJOR'),
	(2,21,'MAJOR'),
	(2,22,'MAJOR'),
	(2,23,'MAJOR'),
	(2,29,'MAJOR'),
	(2,12,'ELEC'),
	(2,19,'ELEC'),
	(2,26,'ELEC'),
	(2,28,'ELEC'),
	(2,30,'ELEC'),
	(2,31,'ELEC'),
	(2,32,'ELEC'),
	(2,33,'ELEC'),
	(2,35,'ELEC'),
	(2,36,'ELEC'),
	(2,37,'ELEC'),
	(2,38,'ELEC'),
	(2,40,'ELEC'),
	(2,42,'ELEC'),
	(2,43,'ELEC'),
	(2,44,'ELEC'),
	(2,45,'ELEC'),
	(2,46,'ELEC'),
	(2,47,'ELEC'),
	(2,48,'ELEC'),
	(2,49,'ELEC'),
	(2,50,'ELEC'),
	(2,52,'ELEC'),
	(2,53,'ELEC'),
	(2,55,'ELEC'),
	(2,56,'ELEC'),
	(2,57,'ELEC'),
	(2,58,'ELEC'),
	(2,59,'ELEC'),
	(2,155,'TECH'),
	(2,156,'TECH'),
	(2,157,'TECH'),
	(2,158,'TECH'),
	(2,159,'TECH'),
	(2,160,'TECH'),
	(2,161,'TECH'),
	(2,162,'TECH'),
	(2,163,'TECH'),
	(2,92,'TECH'),
	(2,96,'TECH'),
	(2,164,'TECH'),
	(2,165,'TECH'),
	(2,166,'TECH'),
	(2,167,'TECH'),
	(2,168,'TECH'),
	(2,169,'TECH'),
	(2,170,'TECH'),
	(2,171,'TECH');

/*!40000 ALTER TABLE `major_courses` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table majors
# ------------------------------------------------------------

DROP TABLE IF EXISTS `majors`;

CREATE TABLE `majors` (
  `id` int(5) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `majors` WRITE;
/*!40000 ALTER TABLE `majors` DISABLE KEYS */;

INSERT INTO `majors` (`id`, `name`)
VALUES
	(1,'Computer Engineering'),
	(2,'Electrical Engineering');

/*!40000 ALTER TABLE `majors` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table migrations
# ------------------------------------------------------------

DROP TABLE IF EXISTS `migrations`;

CREATE TABLE `migrations` (
  `version` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;

INSERT INTO `migrations` (`version`)
VALUES
	(9);

/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table prerequisites
# ------------------------------------------------------------

DROP TABLE IF EXISTS `prerequisites`;

CREATE TABLE `prerequisites` (
  `course_id` int(5) NOT NULL,
  `depends_on` int(5) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `prerequisites` WRITE;
/*!40000 ALTER TABLE `prerequisites` DISABLE KEYS */;

INSERT INTO `prerequisites` (`course_id`, `depends_on`)
VALUES
	(1,70),
	(2,1),
	(3,70),
	(4,3),
	(5,1),
	(6,68),
	(7,68),
	(8,68),
	(9,68),
	(11,70),
	(12,15),
	(12,5),
	(13,6),
	(14,6),
	(15,2),
	(17,2),
	(16,15),
	(18,15),
	(19,8),
	(20,2),
	(21,2),
	(22,20),
	(23,20),
	(24,70),
	(25,70),
	(28,75),
	(28,2),
	(28,73),
	(31,2),
	(32,15),
	(33,15),
	(35,12),
	(36,5),
	(37,11),
	(37,5),
	(38,12),
	(40,13),
	(40,6),
	(40,8),
	(42,16),
	(43,13),
	(43,19),
	(44,19),
	(45,19),
	(46,20),
	(47,20),
	(48,20),
	(49,20),
	(49,28),
	(50,20),
	(52,15),
	(53,75),
	(55,6),
	(55,13),
	(55,22),
	(56,28),
	(57,55),
	(70,66),
	(71,67),
	(72,70),
	(73,71),
	(74,71),
	(75,72),
	(78,76),
	(78,62),
	(79,62),
	(79,76),
	(80,87),
	(80,88),
	(81,62),
	(81,76),
	(82,62),
	(82,76),
	(83,78),
	(84,76),
	(84,62),
	(85,87),
	(85,88),
	(86,87),
	(86,88),
	(87,62),
	(87,76),
	(87,66),
	(88,62),
	(88,76),
	(88,66),
	(89,62),
	(89,76),
	(89,66),
	(89,5),
	(90,62),
	(90,76),
	(90,5),
	(90,70),
	(91,62),
	(91,76),
	(92,70),
	(93,70),
	(94,75),
	(95,92),
	(95,93),
	(96,75),
	(96,92),
	(96,93),
	(97,92),
	(97,93),
	(97,72),
	(98,92),
	(99,72),
	(99,93),
	(100,92),
	(100,93),
	(101,75),
	(102,75),
	(106,103),
	(107,103),
	(108,103),
	(109,103),
	(110,103),
	(111,103),
	(112,103),
	(113,103),
	(114,103),
	(115,103),
	(116,103),
	(117,103),
	(118,103),
	(119,103),
	(120,103),
	(121,103),
	(122,103),
	(123,103),
	(124,103),
	(125,103),
	(126,103),
	(127,103),
	(129,64),
	(130,71),
	(130,70),
	(130,69),
	(131,68),
	(132,72),
	(132,69),
	(133,132),
	(134,132),
	(134,130),
	(135,132),
	(137,132),
	(138,132),
	(138,140),
	(139,132),
	(139,140),
	(140,130),
	(140,75),
	(141,130),
	(141,75),
	(142,133),
	(143,142),
	(143,133),
	(144,134),
	(144,135),
	(145,134),
	(146,134),
	(146,135),
	(147,134),
	(147,135),
	(147,144),
	(147,146),
	(148,136),
	(148,140),
	(148,141),
	(149,136),
	(149,140),
	(149,141),
	(151,150),
	(152,138),
	(152,139),
	(153,138),
	(153,139),
	(153,152),
	(155,11),
	(155,13),
	(156,19),
	(156,5),
	(156,92),
	(157,11),
	(158,19),
	(158,5),
	(159,92),
	(159,70),
	(160,161),
	(161,19),
	(161,13),
	(162,155),
	(163,157),
	(163,160),
	(164,75),
	(164,11),
	(165,164),
	(166,97),
	(167,92),
	(167,72),
	(168,101),
	(169,75),
	(170,75),
	(171,92),
	(171,70),
	(172,66),
	(173,72),
	(176,175),
	(179,73),
	(180,179),
	(181,67),
	(181,71),
	(181,66),
	(181,70),
	(182,73),
	(182,179),
	(182,72),
	(183,179),
	(183,70),
	(184,73),
	(184,72),
	(185,179),
	(185,75),
	(69,66),
	(69,67);

/*!40000 ALTER TABLE `prerequisites` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table user_courses
# ------------------------------------------------------------

DROP TABLE IF EXISTS `user_courses`;

CREATE TABLE `user_courses` (
  `user_id` int(5) NOT NULL,
  `course_id` int(5) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `user_courses` WRITE;
/*!40000 ALTER TABLE `user_courses` DISABLE KEYS */;

INSERT INTO `user_courses` (`user_id`, `course_id`)
VALUES
	(4,178),
	(1,76),
	(1,72),
	(1,70),
	(1,69),
	(1,62),
	(1,64),
	(1,66),
	(1,75),
	(1,4),
	(1,71),
	(1,67),
	(4,8),
	(4,9),
	(1,63),
	(1,61),
	(1,65),
	(1,68),
	(4,7),
	(4,6),
	(4,68),
	(4,105),
	(1,92),
	(1,2),
	(1,3),
	(1,1),
	(1,103),
	(1,79),
	(1,78),
	(1,74),
	(1,73),
	(6,61),
	(4,13),
	(4,14),
	(4,19),
	(4,40),
	(4,44),
	(4,61),
	(4,62),
	(4,63),
	(4,64),
	(4,65),
	(4,66),
	(4,67),
	(4,69),
	(4,70),
	(4,1),
	(4,2),
	(4,3),
	(4,4),
	(4,5),
	(4,11),
	(4,15),
	(4,17),
	(4,20),
	(4,21),
	(4,22),
	(4,23),
	(4,29),
	(4,71),
	(4,72),
	(4,73),
	(4,74),
	(4,75),
	(4,161),
	(4,76),
	(4,77),
	(4,78),
	(4,81),
	(4,92),
	(4,16),
	(4,30),
	(4,55),
	(4,34),
	(7,66),
	(7,70),
	(7,11),
	(7,1),
	(7,2),
	(7,92);

/*!40000 ALTER TABLE `user_courses` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table users
# ------------------------------------------------------------

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int(5) unsigned NOT NULL AUTO_INCREMENT,
  `netid` varchar(64) NOT NULL,
  `major` int(5) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;

INSERT INTO `users` (`id`, `netid`, `major`)
VALUES
	(1,'sjlu',2),
	(3,'nguida',1),
	(4,'wsadej',1),
	(5,'stefanpa',1),
	(6,'mbeal',1),
	(7,'waeyn',1);

/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
