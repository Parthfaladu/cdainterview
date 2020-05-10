-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: May 10, 2020 at 08:17 PM
-- Server version: 5.7.29-0ubuntu0.16.04.1
-- PHP Version: 7.1.33-3+ubuntu16.04.1+deb.sury.org+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cda_inteview`
--

-- --------------------------------------------------------

--
-- Table structure for table `configuration`
--

CREATE TABLE `configuration` (
  `id` int(11) NOT NULL,
  `facebook_pixel` text,
  `google_analytics_tag` text,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `configuration`
--

INSERT INTO `configuration` (`id`, `facebook_pixel`, `google_analytics_tag`, `created_at`, `updated_at`) VALUES
(2, NULL, NULL, '2020-05-10 11:56:16', '2020-05-10 11:56:16');

-- --------------------------------------------------------

--
-- Table structure for table `contact_us`
--

CREATE TABLE `contact_us` (
  `id` int(11) NOT NULL,
  `content` text,
  `contact_us_image_path` text NOT NULL,
  `note` text,
  `no_index` tinyint(1) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `meta_description` varchar(255) DEFAULT NULL,
  `contact_us_email` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contact_us`
--

INSERT INTO `contact_us` (`id`, `content`, `contact_us_image_path`, `note`, `no_index`, `title`, `meta_description`, `contact_us_email`, `created_at`, `updated_at`) VALUES
(1, '<p><span style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 17px; background: #ffffff; color: #373737; font-family: arial; letter-spacing: 2px; font-weight: bold;">BeMo Academic Consulting Inc.</span><br style="color: #373737; font-family: arial; font-size: 22px; letter-spacing: 2px; background-color: #ffffff;" /><span style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 22px; background: #ffffff; color: #373737; font-family: arial; letter-spacing: 2px;"><span style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 13px; background: transparent; font-weight: bold;"><u>Toll Free</u></span><span style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 13px; background: transparent;">:&nbsp;</span><span style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 14px; background: transparent;">1-855-900-BeMo (2366)</span><span style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 13px; background: transparent;"><br /></span><span style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 13px; background: transparent; font-weight: bold;"><u>Email</u></span><span style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 13px; background: transparent;">:&nbsp;</span><span style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 14px; background: transparent;">info@bemoacademicconsulting.com</span></span></p>', '/images/vnIYyzrS2sBDVwBAolMrBnxsY83mhRqC.png', '<p><span style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 15px; background: #ffffff; color: #373737; font-family: arial; text-align: center; font-weight: bold;"><u>Note</u></span><span style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 15px; background: #ffffff; color: #373737; font-family: arial; text-align: center;">: If you are having difficulties with our contact us form above, send us an email to info@bemoacademicconsulting.com (copy &amp; paste the email address)</span></p>', 1, 'contact us', 'cda interview contact us page', 'parth.fadadu@gmail.com', '2020-05-09 13:36:43', '2020-05-10 08:46:27');

-- --------------------------------------------------------

--
-- Table structure for table `home`
--

CREATE TABLE `home` (
  `id` int(11) NOT NULL,
  `hero_section_image_path` text NOT NULL,
  `content` text NOT NULL,
  `no_index` tinyint(1) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `meta_description` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `home`
--

INSERT INTO `home` (`id`, `hero_section_image_path`, `content`, `no_index`, `title`, `meta_description`, `created_at`, `updated_at`) VALUES
(1, '/images/PAST2AiNxdOSrUb9fIxuKHno1eINJJxn.jpg', '<p><span style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-weight: bold; font-stretch: normal; font-size: 17px; line-height: normal; font-family: Arial, Verdana, Helvetica, sans-serif; background: #ffffff; text-align: justify; color: #000066;">Ultimate Guide to CDA Structured Interview: Tips &amp; Proven Strategies to Help You Prepare &amp; Ace Your CDA Interview</span><span style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 16px; line-height: normal; font-family: Arial, Verdana, Helvetica, sans-serif; background: #ffffff; color: #373737; text-align: justify;"><br /><br /></span><span style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-weight: bold; font-stretch: normal; font-size: 16px; line-height: normal; font-family: Arial, Verdana, Helvetica, sans-serif; background: #ffffff; color: #373737; text-align: justify;">Overview:</span><span style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 16px; line-height: normal; font-family: Arial, Verdana, Helvetica, sans-serif; background: #ffffff; color: #373737; text-align: justify;"><br /><br />The purpose of the dental school interview<br />History and rationale of the CDA interview<br />Types of Questions<br />The Seven Competencies<br />Structure of the CDA interview<br /></span><span style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 16px; line-height: normal; font-family: Arial, Verdana, Helvetica, sans-serif; background: #ffffff; color: #373737; text-align: justify;"><a style="color: #ff6600; text-decoration-line: none; transition: all 450ms ease 0s;" title="How To Prepare" href="http://cdainterview.com/how-to-prepare-for-cda-interview.html" rel="self">How to prepare for your CDA Interview</a></span><span style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 16px; line-height: normal; font-family: Arial, Verdana, Helvetica, sans-serif; background: #ffffff; color: #373737; text-align: justify;"><br /></span><span style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 16px; line-height: normal; font-family: Arial, Verdana, Helvetica, sans-serif; background: #ffffff; color: #373737; text-align: justify;"><a style="color: #ff6600; text-decoration-line: none; transition: all 450ms ease 0s;" title="CDA Interview Questions" href="http://cdainterview.com/sample-cda-interview-questions.html" rel="self">Sample CDA interview questions</a></span><span style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 16px; line-height: normal; font-family: Arial, Verdana, Helvetica, sans-serif; background: #ffffff; color: #373737; text-align: justify;"><br /></span><span style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 16px; line-height: normal; font-family: Arial, Verdana, Helvetica, sans-serif; background: #ffffff; color: #373737; text-align: justify;"><a style="color: #ff6600; text-decoration-line: none; transition: all 450ms ease 0s;" href="http://bemoacademicconsulting.com/Dental-School-Interview-Preparation.html" target="_blank" rel="external noopener">BeMo CDA-structured interview prep program</a></span><span style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 16px; line-height: normal; font-family: Arial, Verdana, Helvetica, sans-serif; background: #ffffff; color: #373737; text-align: justify;"><br /></span><span style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 16px; line-height: normal; font-family: Arial, Verdana, Helvetica, sans-serif; background: #ffffff; color: #373737; text-align: justify;"><a style="color: #ff6600; text-decoration-line: none; transition: all 450ms ease 0s;" title="Contact Us" href="http://cdainterview.com/contact-us.php" rel="self">Contact us</a></span><span style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 16px; line-height: normal; font-family: Arial, Verdana, Helvetica, sans-serif; background: #ffffff; color: #373737; text-align: justify;"><br /><br /></span><span style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-weight: bold; font-stretch: normal; font-size: 16px; line-height: normal; font-family: Arial, Verdana, Helvetica, sans-serif; background: #ffffff; color: #373737; text-align: justify;">What is the purpose of the dental school interview?<br /></span><span style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 16px; line-height: normal; font-family: Arial, Verdana, Helvetica, sans-serif; background: #ffffff; color: #373737; text-align: justify;"><br />Regardless of the format of dental school interview (e.g. CDA structured interview, MMI, or Panel interview), the purpose of the interview is rather straightforward and remains constant across the board: to assess the personality and Non-Cognitive Skills (NCSs) of the candidate.<br /><br />What are NCSs? By these we mean the following: Communication skills, interpersonal skills, ethical and moral decision making capacity, maturity, professionalism, sense of social responsibility, service to community, leadership, initiative, scholarship, ability to collaborate with others, conflict resolution skills, etc.<br /><br />Research has shown that, although academic performance (i.e. GPA and DAT scores) is a great indicator of didactic abilities in the first and second years of dental school, it provides, however, a very poor predictive value when it comes to future clinical performance. In fact, research shows that, an effective interview process is the best indicator of future clinical performance in the upper years, as it gives insight into the characteristics of the candidate and whether or not there will be a likelihood of future behavioural problems (an issue that dental schools constantly encounter and struggle to overcome). For example, it has been shown that those candidates who are "conscientious" and "open to new experiences" perform more effectively in the third and fourth years of dental school studies, where the education takes place in a clinical setting for the most part.<br /><br />Thus, dental schools, much like other professional schools, have over the past decade spent a lot of resources to devise the most effective interview process that will give them insight into the NCSs of their future candidates. And of course, for Canadian dental schools the answer has been the Canadian Dental Association\'s structured interview or CDA structured interviews.<br /><br /><br /></span><span style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-weight: bold; font-stretch: normal; font-size: 16px; line-height: normal; font-family: Arial, Verdana, Helvetica, sans-serif; background: #ffffff; color: #373737; text-align: justify;">History, rationale, and the structure of the CDA interview<br /></span><span style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 16px; line-height: normal; font-family: Arial, Verdana, Helvetica, sans-serif; background: #ffffff; color: #373737; text-align: justify;"><br />Recall from our discussion above that we said an effective interview process is the most reliable way to select candidates who perform well clinically. Well in an attempt to test this theory, in 2004, Smithers et al. conducted a study, which produced results that were so shocking, that it unequivocally reinforced the Canadian Dental Association\'s earlier decision to commission a "new structured interview based on state-of-the-art contemporary interview techniques" (i.e. CDA structured interview)<br /><br />What were these shocking results you may ask? The evidence gathered by Smithers et al. (2004) simply reinforced earlier suspicions about the ineffectiveness of traditional interview processes. They showed that, "a typical [traditional] admissions interview was in fact worse than neutral in that it was negatively associated with students\' performance in the first year of dental training, did not predict academic performance, and may have led to poor selection decisions." Thus, it should come as no surprise that the traditional panel interview has been replaced by most dental school with the CDA structured interview, which is a more reliable and valid future predictor of clinical performance.<br /><br />The CDA interview was not only re-structured in its format of delivery, but it was also restructured in terms of the type of questions that would be ask, and how they would be rated or scored by the interviewers. Let us first talk about the type of questions that you may encounter on your CDA structured interview.<br /><br /><br /></span><span style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-weight: bold; font-stretch: normal; font-size: 16px; line-height: normal; font-family: Arial, Verdana, Helvetica, sans-serif; background: #ffffff; color: #373737; text-align: justify;">Types of Questions<br /></span><span style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 16px; line-height: normal; font-family: Arial, Verdana, Helvetica, sans-serif; background: #ffffff; color: #373737; text-align: justify;"><br />The types of questions that you may be asked during your dental school interview can be divided into two categories: (1) Situational Interview (SI) questions and (2) Patterned Behaviour Descriptive Interview (PBDI) questions. SI questions are those in which the candidates is placed in a hypothetical situations (i.e. vignette) and is asked what they would react in that given situation. For example,<br /><br />"You are babysitting your sister&rsquo;s young child, who is nervous and upset about his mother being away. You are trying to calm him down and offer him some ice cream. As you are dishing out the ice cream, the child bites down hard on your hand. How would you react?"<br /><br />Conversely, PBDI type questions, ask the candidates "about past behaviour with the assumption that past behaviour is the best predictor of future behaviour." An example of a PBDI type questions is:<br /><br /><br />Many of us have had to deal with juggling busy schedules. Think of a time in the past when an important but unscheduled situation arose that required your attention, but you had a number of prior commitments on your agenda. What did you do? What was the outcome?<br /><br />Notice how SI questions are typically future-oriented, as opposed to PBDI questions, which are past-oriented. The specific and actual SI and PBDI questions are devised according to seven competencies, that the CDA has found to be reliable and valid indicators of future performance. In other words, every question that is asked during a dental school interview, regardless of being a SI or PBDI question, will address one or more than one of the seven competencies.<br /><br /></span><span style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-weight: bold; font-stretch: normal; font-size: 16px; line-height: normal; font-family: Arial, Verdana, Helvetica, sans-serif; background: #ffffff; color: #373737; text-align: justify;">The Seven Competencies<br /></span><span style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 16px; line-height: normal; font-family: Arial, Verdana, Helvetica, sans-serif; background: #ffffff; color: #373737; text-align: justify;"><br />1. Communication: does the applicant have excellent communication skills?<br />2. Conscientiousness: is the applicant thorough, careful to do tasks well?<br />3. Integrity : is the applicant honest with themselves and others?<br />4. Judgment and analysis: does the applicant have the capability to make sound judgments? Do they gather all the facts before making a decision?<br />5. self-control : Does the applicant remain calm and in control in difficult situations?<br />6. sensitivity to others : Does the applicant show empathy towards others? Do they take the feelings of others into consideration?<br />7. Tact and diplomacy : Does the applicant show sensitivity in dealing with difficult issues? Does the applicant possess the necessary skills to deal with others without causing negative feelings?<br /><br />Notice in the above examples that the SI sample question is addressing the competencies of self-control, sensitivity to others, communication, while the PBDI question addresses the competencies of conscientiousness, Integrity, and judgement and analysis. In all of the questions that will be asked of you during your interview, the competency of communication is a constant that is continuously tested and retested. In order to be successful, however, you will have to be able to know which other competencies also apply to the question so that you can formulate an appropriate response, which touches on the key factors essential for the interviewers.<br /><br /><br /></span><span style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-weight: bold; font-stretch: normal; font-size: 16px; line-height: normal; font-family: Arial, Verdana, Helvetica, sans-serif; background: #ffffff; color: #373737; text-align: justify;">Structure of the CDA interview<br /></span><span style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 16px; line-height: normal; font-family: Arial, Verdana, Helvetica, sans-serif; background: #ffffff; color: #373737; text-align: justify;"><br />The CDA structured interview is comprised of seven questions, one for each of the seven competencies described above. Each question, which can either be a SI or a PBDI type, is scored on a 5-point scale for a total and a maximum of 35 points by two interviewers who are either a pair of dentists, or senior dental students. The interview usually takes about 20-30 minutes to be completed.<br /><br />Click&nbsp;</span><span style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 16px; line-height: normal; font-family: Arial, Verdana, Helvetica, sans-serif; background: #ffffff; color: #373737; text-align: justify;"><a style="color: #ff6600; text-decoration-line: none; transition: all 450ms ease 0s;" title="How To Prepare" href="http://cdainterview.com/how-to-prepare-for-cda-interview.html" rel="self">here</a></span><span style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 16px; line-height: normal; font-family: Arial, Verdana, Helvetica, sans-serif; background: #ffffff; color: #373737; text-align: justify;">&nbsp;to learn how to prepare for your CDA interview<br /><br />Click&nbsp;</span><span style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 16px; line-height: normal; font-family: Arial, Verdana, Helvetica, sans-serif; background: #ffffff; color: #373737; text-align: justify;"><a style="color: #ff6600; text-decoration-line: none; transition: all 450ms ease 0s;" title="CDA Interview Questions" href="http://cdainterview.com/sample-cda-interview-questions.html" rel="self">here</a></span><span style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 16px; line-height: normal; font-family: Arial, Verdana, Helvetica, sans-serif; background: #ffffff; color: #373737; text-align: justify;">&nbsp;to practice with our sample CDA interview questions<br /><br />Click&nbsp;</span><span style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 16px; line-height: normal; font-family: Arial, Verdana, Helvetica, sans-serif; background: #ffffff; color: #373737; text-align: justify;"><a style="color: #ff6600; text-decoration-line: none; transition: all 450ms ease 0s;" href="http://bemoacademicconsulting.com/Dental-School-Interview-Preparation.html" target="_blank" rel="external noopener">here</a></span><span style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 16px; line-height: normal; font-family: Arial, Verdana, Helvetica, sans-serif; background: #ffffff; color: #373737; text-align: justify;">&nbsp;to learn more about our money-back guarantee CDA interview preparation programs.<br /><br /></span><span style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-weight: bold; font-stretch: normal; font-size: 16px; line-height: normal; font-family: Arial, Verdana, Helvetica, sans-serif; background: #ffffff; color: #373737; text-align: justify;">Reference</span><span style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 16px; line-height: normal; font-family: Arial, Verdana, Helvetica, sans-serif; background: #ffffff; color: #373737; text-align: justify;">:<br /><br />Poole A., Catano, VM., and Cunningham, DP. Predicting performance in Canadian dental schools: the new CDA structured interview, a new personality assessment, and the DAT. Journal of Dental Education. 2007; 71: 664 - 676.</span></p>', 1, NULL, 'cda inteview home page', '2020-05-09 07:08:31', '2020-05-10 08:45:57');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `created_at`, `updated_at`) VALUES
(1, 'admin@example.com', '$2y$10$K77PlC1pyqQvCexgBoZn3.M4UgjTc92OiJ4o8szGrd/SxCkrqp7ku', '2020-05-09 13:51:57', '2020-05-09 13:51:57');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `configuration`
--
ALTER TABLE `configuration`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_us`
--
ALTER TABLE `contact_us`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `home`
--
ALTER TABLE `home`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `configuration`
--
ALTER TABLE `configuration`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `contact_us`
--
ALTER TABLE `contact_us`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `home`
--
ALTER TABLE `home`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
