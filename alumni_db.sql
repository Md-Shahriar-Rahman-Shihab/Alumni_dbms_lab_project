-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 15, 2024 at 05:44 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `alumni_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `alumnus_bio`
--

CREATE TABLE `alumnus_bio` (
  `id` int(30) NOT NULL,
  `firstname` varchar(200) NOT NULL,
  `middlename` varchar(200) NOT NULL,
  `lastname` varchar(200) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `batch` year(4) NOT NULL,
  `course_id` int(30) NOT NULL,
  `email` varchar(250) NOT NULL,
  `connected_to` text NOT NULL,
  `avatar` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0= Unverified, 1= Verified',
  `date_created` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `alumnus_bio`
--

INSERT INTO `alumnus_bio` (`id`, `firstname`, `middlename`, `lastname`, `gender`, `batch`, `course_id`, `email`, `connected_to`, `avatar`, `status`, `date_created`) VALUES
(2, 'Mike', 'D', 'Williams', 'Male', '2009', 1, 'mwilliams@sample.com', 'My Company', '1602730260_avatar.jpg', 1, '2020-10-15'),
(3, 'Shahriar', 'Rahman', 'Shihab', 'Male', '2022', 3, 'shihab@gmail.com', 'Internship at Google via Online', '1728268020_1.jpg', 1, '2024-10-07'),
(4, 'Ahmad', 'Awsaf', 'Anondo', 'Male', '2022', 3, 'anondo@gmail.com', 'Software Engineer at Banglalink', '1728268320_2.jpg', 1, '2024-10-07'),
(5, 'Sarmin', 'Akter', 'Meera', 'Male', '2022', 3, 'meera@gmail.com', 'Phd Student at University of Missouri', '1728268440_3.jpg', 1, '2024-10-07'),
(6, 'Monir', 'Hossain', 'Rana', 'Male', '2022', 3, 'rana@gmail.com', 'Dropout ', '1728268560_4.jpg', 0, '2024-10-07');

-- --------------------------------------------------------

--
-- Table structure for table `careers`
--

CREATE TABLE `careers` (
  `id` int(30) NOT NULL,
  `company` varchar(250) NOT NULL,
  `location` text NOT NULL,
  `job_title` text NOT NULL,
  `description` text NOT NULL,
  `user_id` int(30) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `careers`
--

INSERT INTO `careers` (`id`, `company`, `location`, `job_title`, `description`, `user_id`, `date_created`) VALUES
(1, 'IT Company', 'Home-Based', 'Web Developer', '&lt;p style=&quot;-webkit-tap-highlight-color: rgba(0, 0, 0, 0); margin-top: 1.5em; margin-bottom: 1.5em; line-height: 1.5; animation: 1000ms linear 0s 1 normal none running fadeInLorem;&quot;&gt;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Sagittis eu volutpat odio facilisis mauris sit amet massa vitae. In tellus integer feugiat scelerisque varius morbi enim. Orci eu lobortis elementum nibh tellus molestie nunc. Vulputate ut pharetra sit amet aliquam id diam maecenas ultricies. Lacus sed viverra tellus in hac habitasse platea dictumst vestibulum. Eleifend donec pretium vulputate sapien nec. Enim praesent elementum facilisis leo vel fringilla est ullamcorper. Quam adipiscing vitae proin sagittis nisl rhoncus. Sed viverra ipsum nunc aliquet bibendum. Enim ut sem viverra aliquet eget sit amet tellus. Integer feugiat scelerisque varius morbi enim nunc faucibus.&lt;/p&gt;&lt;p style=&quot;-webkit-tap-highlight-color: rgba(0, 0, 0, 0); margin-top: 1.5em; margin-bottom: 1.5em; line-height: 1.5; animation: 1000ms linear 0s 1 normal none running fadeInLorem;&quot;&gt;Viverra justo nec ultrices dui. Leo vel orci porta non pulvinar neque laoreet. Id semper risus in hendrerit gravida rutrum quisque non tellus. Sit amet consectetur adipiscing elit ut. Id neque aliquam vestibulum morbi blandit cursus risus. Tristique senectus et netus et malesuada. Amet aliquam id diam maecenas ultricies mi eget mauris. Morbi tristique senectus et netus et malesuada. Diam phasellus vestibulum lorem sed risus. Tempor orci dapibus ultrices in. Mi sit amet mauris commodo quis imperdiet. Quisque sagittis purus sit amet volutpat. Vehicula ipsum a arcu cursus. Ornare quam viverra orci sagittis eu volutpat odio facilisis. Id volutpat lacus laoreet non curabitur. Cursus euismod quis viverra nibh cras pulvinar mattis nunc. Id aliquet lectus proin nibh nisl condimentum id venenatis. Eget nulla facilisi etiam dignissim diam quis enim lobortis. Lacus suspendisse faucibus interdum posuere lorem ipsum dolor sit amet.&lt;/p&gt;', 3, '2020-10-15 14:14:27'),
(2, 'Sample Company', 'Sample location', 'IT Specialist', '&lt;p style=&quot;margin-top: 1.5em; margin-bottom: 1.5em; margin-right: unset; margin-left: unset; color: rgb(68, 68, 68); font-family: &amp;quot;Open Sans&amp;quot;, sans-serif; font-size: 16px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); line-height: 1.5; animation: 1000ms linear 0s 1 normal none running fadeInLorem;&quot;&gt;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Sagittis eu volutpat odio facilisis mauris sit amet massa vitae. In tellus integer feugiat scelerisque varius morbi enim. Orci eu lobortis elementum nibh tellus molestie nunc. Vulputate ut pharetra sit amet aliquam id diam maecenas ultricies. Lacus sed viverra tellus in hac habitasse platea dictumst vestibulum. Eleifend donec pretium vulputate sapien nec. Enim praesent elementum facilisis leo vel fringilla est ullamcorper. Quam adipiscing vitae proin sagittis nisl rhoncus. Sed viverra ipsum nunc aliquet bibendum. Enim ut sem viverra aliquet eget sit amet tellus. Integer feugiat scelerisque varius morbi enim nunc faucibus.&lt;/p&gt;&lt;p style=&quot;margin-top: 1.5em; margin-bottom: 1.5em; margin-right: unset; margin-left: unset; color: rgb(68, 68, 68); font-family: &amp;quot;Open Sans&amp;quot;, sans-serif; font-size: 16px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); line-height: 1.5; animation: 1000ms linear 0s 1 normal none running fadeInLorem;&quot;&gt;Viverra justo nec ultrices dui. Leo vel orci porta non pulvinar neque laoreet. Id semper risus in hendrerit gravida rutrum quisque non tellus. Sit amet consectetur adipiscing elit ut. Id neque aliquam vestibulum morbi blandit cursus risus. Tristique senectus et netus et malesuada. Amet aliquam id diam maecenas ultricies mi eget mauris. Morbi tristique senectus et netus et malesuada. Diam phasellus vestibulum lorem sed risus. Tempor orci dapibus ultrices in. Mi sit amet mauris commodo quis imperdiet. Quisque sagittis purus sit amet volutpat. Vehicula ipsum a arcu cursus. Ornare quam viverra orci sagittis eu volutpat odio facilisis. Id volutpat lacus laoreet non curabitur. Cursus euismod quis viverra nibh cras pulvinar mattis nunc. Id aliquet lectus proin nibh nisl condimentum id venenatis. Eget nulla facilisi etiam dignissim diam quis enim lobortis. Lacus suspendisse faucibus interdum posuere lorem ipsum dolor sit amet.&lt;/p&gt;', 1, '2020-10-15 15:05:37'),
(3, 'Google', 'USA', 'Intern ', '&lt;span style=&quot;color: rgb(32, 33, 36); font-family: &amp;quot;Google Sans Text&amp;quot;, Roboto, Arial, Helvetica, sans-serif; font-size: 20px; letter-spacing: 0.05px; background-color: rgb(247, 248, 249);&quot;&gt;GoogleInterns work across Google, including being part of various teams like software engineering, business, user experience, and more. With internships across the globe, we offer many opportunities to grow with us and help create products and services used by billions. Come help us build for everyone.&lt;/span&gt;', 4, '2024-10-07 08:45:25'),
(4, 'Microsoft', 'London', 'Intern', '&lt;span style=&quot;color: rgb(32, 33, 36); font-family: &amp;quot;Google Sans Text&amp;quot;, Roboto, Arial, Helvetica, sans-serif; font-size: 20px; letter-spacing: 0.05px; background-color: rgb(247, 248, 249);&quot;&gt;GoogleInterns work across Google, including being part of various teams like software engineering, business, user experience, and more. With internships across the globe, we offer many opportunities to grow with us and help create products and services used by billions. Come help us build for everyone.&lt;/span&gt;', 4, '2024-10-07 08:46:31'),
(5, 'Intel', 'Las Vegas', 'Software Engineer', '&lt;span style=&quot;color: rgb(77, 81, 86); font-family: Arial, sans-serif;&quot;&gt;Intel Corporation is an American multinational corporation and technology company headquartered in Santa Clara, California, and incorporated in Delaware. Intel designs, manufactures and sells computer components and related products for business and consumer markets.&lt;/span&gt;', 5, '2024-10-07 08:48:54'),
(6, 'uiu', 'dhaka', 'intern', 'lorem', 1, '2024-10-07 12:49:30');

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `id` int(30) NOT NULL,
  `course` text NOT NULL,
  `about` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`id`, `course`, `about`) VALUES
(3, 'Computer Science and Engineering ', ''),
(4, 'Data Science', ''),
(5, 'English', ''),
(6, 'Pharmacy ', ''),
(7, 'Economics', ''),
(8, 'Electrical and Electronics Engineering', ''),
(9, 'Bachelor of Business Administration', ''),
(10, 'Mass Media and Journalism', ''),
(11, 'Civil Engineering', ''),
(12, 'Genetic Engineering and Biotechnology', '');

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `id` int(30) NOT NULL,
  `title` varchar(250) NOT NULL,
  `content` text NOT NULL,
  `schedule` datetime NOT NULL,
  `banner` text NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`id`, `title`, `content`, `schedule`, `banner`, `date_created`) VALUES
(2, 'CSE Project Show - Summer 2024', '&lt;p class=&quot;flex max-w-full flex-col flex-grow&quot;&gt;&lt;p data-message-author-role=&quot;assistant&quot; data-message-id=&quot;b10d1416-4291-427a-b157-1acd1bf8cc77&quot; dir=&quot;auto&quot; class=&quot;min-h-8 text-message flex w-full flex-col items-end gap-2 whitespace-normal break-words [.text-message+&amp;amp;]:mt-5&quot;&gt;&lt;p class=&quot;flex w-full flex-col gap-1 empty:hidden first:pt-[3px]&quot;&gt;&lt;p class=&quot;markdown prose w-full break-words dark:prose-invert light&quot;&gt;&lt;p&gt;The &lt;b&gt;CSE Project Show Summer 2024&lt;/b&gt; is a vibrant event where students from the Computer Science and Engineering department will showcase their innovative projects and cutting-edge solutions. From software development to AI applications and web technologies, the event offers a platform to highlight creativity, technical skills, and collaborative problem-solving. Attendees will experience live demonstrations, interactive displays, and networking opportunities with fellow students, faculty, and industry professionals. Join us to celebrate the future of tech innovation and discover the next generation of breakthroughs!&lt;/p&gt;&lt;/p&gt;&lt;/p&gt;&lt;/p&gt;&lt;/p&gt;&lt;p class=&quot;mb-2 flex gap-3 empty:hidden -ml-2&quot;&gt;&lt;p class=&quot;items-center justify-start rounded-xl p-1 flex&quot;&gt;&lt;p class=&quot;flex items-center&quot;&gt;&lt;span class=&quot;&quot; data-state=&quot;closed&quot;&gt;&lt;button class=&quot;rounded-lg text-token-text-secondary hover:bg-token-main-surface-secondary&quot; aria-label=&quot;Read aloud&quot; data-testid=&quot;voice-play-turn-action-button&quot;&gt;&lt;span class=&quot;flex h-[30px] w-[30px] items-center justify-center&quot;&gt;&lt;svg width=&quot;24&quot; height=&quot;24&quot; viewBox=&quot;0 0 24 24&quot; fill=&quot;none&quot; xmlns=&quot;http://www.w3.org/2000/svg&quot; class=&quot;icon-md-heavy&quot;&gt;&lt;/svg&gt;&lt;/span&gt;&lt;/button&gt;&lt;/span&gt;&lt;span class=&quot;&quot; data-state=&quot;closed&quot;&gt;&lt;button class=&quot;rounded-lg text-token-text-secondary hover:bg-token-main-surface-secondary&quot; aria-label=&quot;Copy&quot; data-testid=&quot;copy-turn-action-button&quot;&gt;&lt;span class=&quot;flex h-[30px] w-[30px] items-center justify-center&quot;&gt;&lt;svg width=&quot;24&quot; height=&quot;24&quot; viewBox=&quot;0 0 24 24&quot; fill=&quot;none&quot; xmlns=&quot;http://www.w3.org/2000/svg&quot; class=&quot;icon-md-heavy&quot;&gt;&lt;/svg&gt;&lt;/span&gt;&lt;/button&gt;&lt;/span&gt;&lt;p class=&quot;flex&quot;&gt;&lt;span class=&quot;&quot; data-state=&quot;closed&quot;&gt;&lt;button class=&quot;rounded-lg text-token-text-secondary hover:bg-token-main-surface-secondary&quot; aria-label=&quot;Good response&quot; data-testid=&quot;good-response-turn-action-button&quot;&gt;&lt;span class=&quot;flex h-[30px] w-[30px] items-center justify-center&quot;&gt;&lt;svg width=&quot;24&quot; height=&quot;24&quot; viewBox=&quot;0 0 24 24&quot; fill=&quot;none&quot; xmlns=&quot;http://www.w3.org/2000/svg&quot; class=&quot;icon-md-heavy&quot;&gt;&lt;/svg&gt;&lt;/span&gt;&lt;/button&gt;&lt;/span&gt;&lt;span class=&quot;&quot; data-state=&quot;closed&quot;&gt;&lt;button class=&quot;rounded-lg text-token-text-secondary hover:bg-token-main-surface-secondary&quot; aria-label=&quot;Bad response&quot; data-testid=&quot;bad-response-turn-action-button&quot;&gt;&lt;span class=&quot;flex h-[30px] w-[30px] items-center justify-center&quot;&gt;&lt;svg width=&quot;24&quot; height=&quot;24&quot; viewBox=&quot;0 0 24 24&quot; fill=&quot;none&quot; xmlns=&quot;http://www.w3.org/2000/svg&quot; class=&quot;icon-md-heavy&quot;&gt;&lt;/svg&gt;&lt;/span&gt;&lt;/button&gt;&lt;/span&gt;&lt;/p&gt;&lt;span class=&quot;&quot; data-state=&quot;closed&quot;&gt;&lt;button type=&quot;button&quot; id=&quot;radix-:r81:&quot; aria-haspopup=&quot;menu&quot; aria-expanded=&quot;false&quot; data-state=&quot;closed&quot; class=&quot;cursor-pointer h-[30px] rounded-md px-1 text-token-text-secondary hover:bg-token-main-surface-secondary&quot;&gt;&lt;p class=&quot;flex items-center pb-0&quot;&gt;&lt;svg width=&quot;24&quot; height=&quot;24&quot; viewBox=&quot;0 0 24 24&quot; fill=&quot;none&quot; xmlns=&quot;http://www.w3.org/2000/svg&quot; class=&quot;icon-md&quot;&gt;&lt;/svg&gt;&lt;span class=&quot;overflow-hidden text-clip whitespace-nowrap text-sm&quot;&gt;4o&lt;/span&gt;&lt;/p&gt;&lt;/button&gt;&lt;/span&gt;&lt;/p&gt;&lt;/p&gt;&lt;/p&gt;', '2024-10-07 10:00:00', '1728266820_1728243600_CSEProjectshow242.png', '2024-10-07 08:07:02'),
(3, 'LaunchPad by UIHP', '&lt;span style=&quot;color: rgb(5, 5, 5); font-family: &amp;quot;Segoe UI Historic&amp;quot;, &amp;quot;Segoe UI&amp;quot;, Helvetica, Arial, sans-serif; font-size: 15px;&quot;&gt;Take innovative ideas to the next level!&amp;nbsp;&lt;/span&gt;&lt;span class=&quot;html-span xexx8yu x4uap5 x18d9i69 xkhd6sd x1hl2dhg x16tdsg8 x1vvkbs x3nfvp2 x1j61x8r x1fcty0u xdj266r xat24cr xgzva0m xhhsvwb xxymvpz xlup9mm x1kky2od&quot; style=&quot;overflow-wrap: break-word; padding: 0px; margin: 0px 1px; display: inline-flex; vertical-align: middle; width: 16px; height: 16px; font-family: &amp;quot;Segoe UI Historic&amp;quot;, &amp;quot;Segoe UI&amp;quot;, Helvetica, Arial, sans-serif; color: rgb(5, 5, 5); font-size: 15px;&quot;&gt;&lt;img height=&quot;16&quot; width=&quot;16&quot; alt=&quot;🌟&quot; class=&quot;xz74otr&quot; referrerpolicy=&quot;origin-when-cross-origin&quot; src=&quot;https://static.xx.fbcdn.net/images/emoji.php/v9/te0/1/16/1f31f.png&quot; style=&quot;border: 0px; object-fit: fill;&quot;&gt;&lt;/span&gt;&lt;br class=&quot;html-br&quot; style=&quot;color: rgb(5, 5, 5); font-family: &amp;quot;Segoe UI Historic&amp;quot;, &amp;quot;Segoe UI&amp;quot;, Helvetica, Arial, sans-serif; font-size: 15px;&quot;&gt;&lt;br class=&quot;html-br&quot; style=&quot;color: rgb(5, 5, 5); font-family: &amp;quot;Segoe UI Historic&amp;quot;, &amp;quot;Segoe UI&amp;quot;, Helvetica, Arial, sans-serif; font-size: 15px;&quot;&gt;&lt;span style=&quot;color: rgb(5, 5, 5); font-family: &amp;quot;Segoe UI Historic&amp;quot;, &amp;quot;Segoe UI&amp;quot;, Helvetica, Arial, sans-serif; font-size: 15px;&quot;&gt;LaunchPad by UIHP@UIU - UIU&rsquo;s flagship open innovation cohort with Bangladesh Hi-tech Park Authority and University Innovation Hub Program - is having its final TOWNHALL event at UIU. Coming Sunday, be ready to enjoy sessions with Start-up Founders, Corporate Icons, and like-minded peers. Students, alumni, and faculty who are eager to be on a journey of transformation are all welcome!&lt;/span&gt;', '2024-10-06 10:00:00', '1728266880_1728243840_InnovationHub.jpg', '2024-10-07 08:08:35'),
(4, 'UIU Vice Chancellor Cup - 2024', 'The &lt;b&gt;UIU Vice Chancellor Cup 2024&lt;/b&gt; is the premier inter-departmental sports competition at United International University (UIU), where students showcase their athleticism, teamwork, and competitive spirit. This exciting event brings together participants from various departments to compete in a wide range of sports, including football, cricket, basketball, badminton, and more. The Vice Chancellor Cup fosters camaraderie and healthy competition, with students battling it out for the ultimate honor of being crowned champions. Join us for thrilling matches, unforgettable moments, and a celebration of sportsmanship at UIU!', '2024-10-07 18:00:00', '1728266940_VCcup.jpg', '2024-10-07 08:09:39'),
(5, 'Emerging Trends and Future Skills in Supply Chain Careers', '&lt;span style=&quot;color: rgb(5, 5, 5); font-family: &amp;quot;Segoe UI Historic&amp;quot;, &amp;quot;Segoe UI&amp;quot;, Helvetica, Arial, sans-serif; font-size: 15px;&quot;&gt;Organized By&amp;nbsp;&lt;/span&gt;&lt;span class=&quot;html-span xdj266r x11i5rnm xat24cr x1mh8g0r xexx8yu x4uap5 x18d9i69 xkhd6sd x1hl2dhg x16tdsg8 x1vvkbs&quot; style=&quot;margin: 0px; overflow-wrap: break-word; padding: 0px; font-family: &amp;quot;Segoe UI Historic&amp;quot;, &amp;quot;Segoe UI&amp;quot;, Helvetica, Arial, sans-serif; color: rgb(5, 5, 5); font-size: 15px;&quot;&gt;&lt;a attributionsrc=&quot;/privacy_sandbox/comet/register/source/?xt=AZWPl3c62QMHlSXFJeUm36-ZleIO8CByp1_xV0FdNT6OIosNu7hPGM9CK2m32VwgU1mk9VBfChFRMVpn6WgSuX8YQCB35nvHQp8Nxd5nSnZPzQYDe0YlQ1JQO9vnGVRIbMCxChfzRBwJtqwv5qn3zvv6eILvwzo-w15AlByJAZ760cy1L8oaJsJa8MYZlkmARRFzB7Pvd7sDpmR16ODtfskMAMyuUJ4gd7jlc4oM1bP-2kfAg2pnln-YlNExzmVYCVMwxM9z3VpSF0sAyRZutOBj61GHrZTnnkISIJieHwnSCzIqblzoUW-goIeUVkoAiGOfA8tBtuBvulykXaDBYpznWtKRKn9Ksa6FJMSIxT97Q5gCZEr-qHj8ZE0_SehtO4yKreB1Kq20E8JdyHuEjnY9pwc2dlKl00N5tU9eIlyGUmtwkGHVAA-fv_kjBPA3AU5-oKe5vt3cdSYewf08kY-V6QKq2nb-zVxarNCYLHQIyJvwCp3iFC6JuTllSfpkXtFS-C5nF49Gz3dmPxnK8z3jys9hOMLDgdRNhaRNddcX535G05EW949qqjJosXjJpg83UpRncvGnYpV0G5c1olWISSu_UXz9nODROCicMkc2mt60muHDhVoc_QEHbP6NHoSf9EzPjFiTJJwO1URaqlCdfZk_jpP7usyr66Mk5rVeq8Rr2yjxIlgEpu1P5Q0xbMR5C0Je1e0zUpx-qOrsxFqmAvDDdXzxgkUTsL00_UECc22oRNx4qQNhx4Ged3M3RTzFB3zbrtHr_FWAuB0YmoPf_vnMD_jdRE77xYYqgywOzShqGj4lJZ7qC6H9XAn9RwrUAmW_teXX1GrfcALFxlnYEVIKL0t6RGPQ7T2X8bzCQqLETs6CDZofoUt-gsmTcH6cWIKw64CssQkC0gjYZ5C_LKyvNW0cu65tInLWhW4uzS8yz_WP-ZHMipAsWamObWrjE5iVv7sFaQg5bSI7SfLwXd7OL85bBIymMIGhfkuxDzd4-8ws9amIUnBeqAhWjZXct_6eifuD5EnMmXWDhqV4UKEnP2iTv5vtNGy0no-5h80FUvdIV_x5xNYe_dgiLJ5D1YerbUImiv1GX2j_JKGrwPiw6cEi-3x5vRfuEUS6mfNf56SLJaocjFNHa1b27iDYCSW-kJfQ-82Jz8S4fToPwARLMzkbcO3cuWnDHaHzFndsrLqR-7fPySs9wKTROlFa9VM6ow8Egs4SzrDYHrMDR6hTiYqt0TAoT7Z6d8NiJzltdyFThyhNSE9Au5AL4v2EpfxmynBGhwdA0_o1Ja6-U393QmW37KctiKVzxNoI2VYhCuTjnWhJR4esGDBO6hsjdaHj0oWs6xWa1MOlCZo4AQFgy1UgH7lAonQN1P6YBxXNoSBSKvw0d7g-L8O5pl6ooF63PfgX3CMmrtQl3D4q_h3CRfSAt_2mdDNVrtyE5mQ6QkcGZt0zEv93001woeBXSDFv-p_w7_NofmY0zWRGXqNMocCCFK52JNQwyD7v255ZVTm6dJlZTmcAhdzZbShdICk2hoxTXr0R7VNHRTxenQkw0ve_vw12_oOl6oC-wSBynjcSjR23wp5_yHJAmgHLO45MFzofHlEaOHh4Qy6YPLbr1h60kqpShKHHyBeU70pNaCGuY9q5NJCMGWSh9qiV464ADBZdw3ZlwzuVnYTsQDovIV-EucWf0AnfSfd02nvLgW-2G2l7bPeggXpzrR5rOha0zB5tvIrEwk05p1z_klepxxchuPS24Gg2Ln9ScBW872PxE9bWFCy_PpKvCAhCPUHF9RGzzHLPxofVd0h3fQ6TXOnsTqC5aqbyp5WeE0ydBypCf252OuE75oN4AuFiIm87k7R1IovTGAGjJ_o3WuxYp1GjqFhhOnzS1AurIhzQk3ZgmGY0BM-BtEBfL-VOFdyjPOb_voF3fBoqD6e-HC3EN9qzj7k6uHlELUXQWg&quot; class=&quot;x1i10hfl xjbqb8w x1ejq31n xd10rxx x1sy0etr x17r0tee x972fbf xcfux6l x1qhh985 xm0m39n x9f619 x1ypdohk xt0psk2 xe8uvvx xdj266r x11i5rnm xat24cr x1mh8g0r xexx8yu x4uap5 x18d9i69 xkhd6sd x16tdsg8 x1hl2dhg xggy1nq x1a2a7pz x1sur9pj xkrqix3 xzsf02u x1s688f&quot; href=&quot;https://www.facebook.com/uiuscmc?__cft__[0]=AZWj8ZTaoFO0nTh3947GJzWBU8Qkh4CKyQ1hVIHyMyycJXFGDVY32PAmxeeRbkeFShJyZlNCsgKbUa68n56jnEeiSwfa85nBES831bArqfdhjtsbZR3kdQPR0myxaspkmJ1sxJKChTTEVRinEbZlzoMcwgKpC6UYCOBu5wX0Agm2okDva4mLYFB4hkjDLsBBuWo&amp;amp;__tn__=-]K*F&quot; role=&quot;link&quot; tabindex=&quot;0&quot; style=&quot;color: var(--primary-text); cursor: pointer; text-decoration-line: none; list-style: none; margin: 0px; text-align: inherit; border-style: none; padding: 0px; border-width: 0px; outline: none; -webkit-tap-highlight-color: transparent; font-weight: 600; touch-action: manipulation; display: inline; font-family: inherit;&quot;&gt;&lt;span class=&quot;xt0psk2&quot; style=&quot;display: inline; font-family: inherit;&quot;&gt;&lt;span style=&quot;font-family: inherit;&quot;&gt;UIU Supply Chain Management Club&lt;/span&gt;&lt;/a&gt;&lt;/span&gt;&lt;br class=&quot;html-br&quot; style=&quot;color: rgb(5, 5, 5); font-family: &amp;quot;Segoe UI Historic&amp;quot;, &amp;quot;Segoe UI&amp;quot;, Helvetica, Arial, sans-serif; font-size: 15px;&quot;&gt;&lt;span class=&quot;html-span xdj266r x11i5rnm xat24cr x1mh8g0r xexx8yu x4uap5 x18d9i69 xkhd6sd x1hl2dhg x16tdsg8 x1vvkbs&quot; style=&quot;margin: 0px; overflow-wrap: break-word; padding: 0px; font-family: &amp;quot;Segoe UI Historic&amp;quot;, &amp;quot;Segoe UI&amp;quot;, Helvetica, Arial, sans-serif; color: rgb(5, 5, 5); font-size: 15px;&quot;&gt;&lt;a attributionsrc=&quot;/privacy_sandbox/comet/register/source/?xt=AZWPl3c62QMHlSXFJeUm36-ZleIO8CByp1_xV0FdNT6OIosNu7hPGM9CK2m32VwgU1mk9VBfChFRMVpn6WgSuX8YQCB35nvHQp8Nxd5nSnZPzQYDe0YlQ1JQO9vnGVRIbMCxChfzRBwJtqwv5qn3zvv6eILvwzo-w15AlByJAZ760cy1L8oaJsJa8MYZlkmARRFzB7Pvd7sDpmR16ODtfskMAMyuUJ4gd7jlc4oM1bP-2kfAg2pnln-YlNExzmVYCVMwxM9z3VpSF0sAyRZutOBj61GHrZTnnkISIJieHwnSCzIqblzoUW-goIeUVkoAiGOfA8tBtuBvulykXaDBYpznWtKRKn9Ksa6FJMSIxT97Q5gCZEr-qHj8ZE0_SehtO4yKreB1Kq20E8JdyHuEjnY9pwc2dlKl00N5tU9eIlyGUmtwkGHVAA-fv_kjBPA3AU5-oKe5vt3cdSYewf08kY-V6QKq2nb-zVxarNCYLHQIyJvwCp3iFC6JuTllSfpkXtFS-C5nF49Gz3dmPxnK8z3jys9hOMLDgdRNhaRNddcX535G05EW949qqjJosXjJpg83UpRncvGnYpV0G5c1olWISSu_UXz9nODROCicMkc2mt60muHDhVoc_QEHbP6NHoSf9EzPjFiTJJwO1URaqlCdfZk_jpP7usyr66Mk5rVeq8Rr2yjxIlgEpu1P5Q0xbMR5C0Je1e0zUpx-qOrsxFqmAvDDdXzxgkUTsL00_UECc22oRNx4qQNhx4Ged3M3RTzFB3zbrtHr_FWAuB0YmoPf_vnMD_jdRE77xYYqgywOzShqGj4lJZ7qC6H9XAn9RwrUAmW_teXX1GrfcALFxlnYEVIKL0t6RGPQ7T2X8bzCQqLETs6CDZofoUt-gsmTcH6cWIKw64CssQkC0gjYZ5C_LKyvNW0cu65tInLWhW4uzS8yz_WP-ZHMipAsWamObWrjE5iVv7sFaQg5bSI7SfLwXd7OL85bBIymMIGhfkuxDzd4-8ws9amIUnBeqAhWjZXct_6eifuD5EnMmXWDhqV4UKEnP2iTv5vtNGy0no-5h80FUvdIV_x5xNYe_dgiLJ5D1YerbUImiv1GX2j_JKGrwPiw6cEi-3x5vRfuEUS6mfNf56SLJaocjFNHa1b27iDYCSW-kJfQ-82Jz8S4fToPwARLMzkbcO3cuWnDHaHzFndsrLqR-7fPySs9wKTROlFa9VM6ow8Egs4SzrDYHrMDR6hTiYqt0TAoT7Z6d8NiJzltdyFThyhNSE9Au5AL4v2EpfxmynBGhwdA0_o1Ja6-U393QmW37KctiKVzxNoI2VYhCuTjnWhJR4esGDBO6hsjdaHj0oWs6xWa1MOlCZo4AQFgy1UgH7lAonQN1P6YBxXNoSBSKvw0d7g-L8O5pl6ooF63PfgX3CMmrtQl3D4q_h3CRfSAt_2mdDNVrtyE5mQ6QkcGZt0zEv93001woeBXSDFv-p_w7_NofmY0zWRGXqNMocCCFK52JNQwyD7v255ZVTm6dJlZTmcAhdzZbShdICk2hoxTXr0R7VNHRTxenQkw0ve_vw12_oOl6oC-wSBynjcSjR23wp5_yHJAmgHLO45MFzofHlEaOHh4Qy6YPLbr1h60kqpShKHHyBeU70pNaCGuY9q5NJCMGWSh9qiV464ADBZdw3ZlwzuVnYTsQDovIV-EucWf0AnfSfd02nvLgW-2G2l7bPeggXpzrR5rOha0zB5tvIrEwk05p1z_klepxxchuPS24Gg2Ln9ScBW872PxE9bWFCy_PpKvCAhCPUHF9RGzzHLPxofVd0h3fQ6TXOnsTqC5aqbyp5WeE0ydBypCf252OuE75oN4AuFiIm87k7R1IovTGAGjJ_o3WuxYp1GjqFhhOnzS1AurIhzQk3ZgmGY0BM-BtEBfL-VOFdyjPOb_voF3fBoqD6e-HC3EN9qzj7k6uHlELUXQWg&quot; class=&quot;x1i10hfl xjbqb8w x1ejq31n xd10rxx x1sy0etr x17r0tee x972fbf xcfux6l x1qhh985 xm0m39n x9f619 x1ypdohk xt0psk2 xe8uvvx xdj266r x11i5rnm xat24cr x1mh8g0r xexx8yu x4uap5 x18d9i69 xkhd6sd x16tdsg8 x1hl2dhg xggy1nq x1a2a7pz x1sur9pj xkrqix3 xzsf02u x1s688f&quot; href=&quot;https://www.facebook.com/UIUCCC?__cft__[0]=AZWj8ZTaoFO0nTh3947GJzWBU8Qkh4CKyQ1hVIHyMyycJXFGDVY32PAmxeeRbkeFShJyZlNCsgKbUa68n56jnEeiSwfa85nBES831bArqfdhjtsbZR3kdQPR0myxaspkmJ1sxJKChTTEVRinEbZlzoMcwgKpC6UYCOBu5wX0Agm2okDva4mLYFB4hkjDLsBBuWo&amp;amp;__tn__=-]K*F&quot; role=&quot;link&quot; tabindex=&quot;0&quot; style=&quot;color: var(--primary-text); cursor: pointer; text-decoration-line: none; list-style: none; margin: 0px; text-align: inherit; border-style: none; padding: 0px; border-width: 0px; outline: none; -webkit-tap-highlight-color: transparent; font-weight: 600; touch-action: manipulation; display: inline; font-family: inherit;&quot;&gt;&lt;span class=&quot;xt0psk2&quot; style=&quot;display: inline; font-family: inherit;&quot;&gt;&lt;span style=&quot;font-family: inherit;&quot;&gt;UIU DCCSA&lt;/span&gt;&lt;/a&gt;&lt;/span&gt;&lt;span style=&quot;color: rgb(5, 5, 5); font-family: &amp;quot;Segoe UI Historic&amp;quot;, &amp;quot;Segoe UI&amp;quot;, Helvetica, Arial, sans-serif; font-size: 15px;&quot;&gt;.&lt;/span&gt;&lt;br class=&quot;html-br&quot; style=&quot;color: rgb(5, 5, 5); font-family: &amp;quot;Segoe UI Historic&amp;quot;, &amp;quot;Segoe UI&amp;quot;, Helvetica, Arial, sans-serif; font-size: 15px;&quot;&gt;&lt;span style=&quot;color: rgb(5, 5, 5); font-family: &amp;quot;Segoe UI Historic&amp;quot;, &amp;quot;Segoe UI&amp;quot;, Helvetica, Arial, sans-serif; font-size: 15px;&quot;&gt;Gain insights from Mr. Mohammed Zia Uddin, Supply Director at Reckitt Benckiser for Bangladesh, Sri Lanka, and The Maldives Cluster.&lt;/span&gt;', '2024-10-08 14:00:00', '1728267660_Dccsa.jpg', '2024-10-07 08:21:17'),
(6, 'Cyber Defence and SOC Analysis', '&lt;span style=&quot;color: rgb(5, 5, 5); font-family: &amp;quot;Segoe UI Historic&amp;quot;, &amp;quot;Segoe UI&amp;quot;, Helvetica, Arial, sans-serif; font-size: 15px;&quot;&gt;The Center for Emerging Networks and Technologies Research (CENTeR) is excited to offer our latest advanced course, &quot;Cyber Defence and SOC Analysis&quot;.&lt;/span&gt;&lt;br class=&quot;html-br&quot; style=&quot;color: rgb(5, 5, 5); font-family: &amp;quot;Segoe UI Historic&amp;quot;, &amp;quot;Segoe UI&amp;quot;, Helvetica, Arial, sans-serif; font-size: 15px;&quot;&gt;&lt;br class=&quot;html-br&quot; style=&quot;color: rgb(5, 5, 5); font-family: &amp;quot;Segoe UI Historic&amp;quot;, &amp;quot;Segoe UI&amp;quot;, Helvetica, Arial, sans-serif; font-size: 15px;&quot;&gt;&lt;span style=&quot;color: rgb(5, 5, 5); font-family: &amp;quot;Segoe UI Historic&amp;quot;, &amp;quot;Segoe UI&amp;quot;, Helvetica, Arial, sans-serif; font-size: 15px;&quot;&gt;Class Mode: Online&lt;/span&gt;&lt;br class=&quot;html-br&quot; style=&quot;color: rgb(5, 5, 5); font-family: &amp;quot;Segoe UI Historic&amp;quot;, &amp;quot;Segoe UI&amp;quot;, Helvetica, Arial, sans-serif; font-size: 15px;&quot;&gt;&lt;br class=&quot;html-br&quot; style=&quot;color: rgb(5, 5, 5); font-family: &amp;quot;Segoe UI Historic&amp;quot;, &amp;quot;Segoe UI&amp;quot;, Helvetica, Arial, sans-serif; font-size: 15px;&quot;&gt;&lt;span style=&quot;color: rgb(5, 5, 5); font-family: &amp;quot;Segoe UI Historic&amp;quot;, &amp;quot;Segoe UI&amp;quot;, Helvetica, Arial, sans-serif; font-size: 15px;&quot;&gt;𝐋𝐚𝐬𝐭 𝐝𝐚𝐭𝐞 𝐨𝐟 𝐫𝐞𝐠𝐢𝐬𝐭𝐫𝐚𝐭𝐢𝐨𝐧 : 𝐎𝐜𝐭𝐨𝐛𝐞𝐫 𝟐𝟎, 𝟐𝟎𝟐𝟒&lt;/span&gt;&lt;br class=&quot;html-br&quot; style=&quot;color: rgb(5, 5, 5); font-family: &amp;quot;Segoe UI Historic&amp;quot;, &amp;quot;Segoe UI&amp;quot;, Helvetica, Arial, sans-serif; font-size: 15px;&quot;&gt;', '2024-10-20 10:00:00', '1728267780_Cyber.jpg', '2024-10-07 08:23:10');

-- --------------------------------------------------------

--
-- Table structure for table `event_commits`
--

CREATE TABLE `event_commits` (
  `id` int(30) NOT NULL,
  `event_id` int(30) NOT NULL,
  `user_id` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `event_commits`
--

INSERT INTO `event_commits` (`id`, `event_id`, `user_id`) VALUES
(1, 1, 3),
(2, 4, 5);

-- --------------------------------------------------------

--
-- Table structure for table `forum_comments`
--

CREATE TABLE `forum_comments` (
  `id` int(30) NOT NULL,
  `topic_id` int(30) NOT NULL,
  `comment` text NOT NULL,
  `user_id` int(30) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `forum_comments`
--

INSERT INTO `forum_comments` (`id`, `topic_id`, `comment`, `user_id`, `date_created`) VALUES
(1, 3, 'Sample updated Comment', 3, '2020-10-15 15:46:03'),
(3, 3, 'Sample', 1, '2020-10-16 08:48:02'),
(5, 0, '', 1, '2020-10-16 09:49:34'),
(6, 3, 'I am interested', 5, '2024-10-07 10:22:18');

-- --------------------------------------------------------

--
-- Table structure for table `forum_topics`
--

CREATE TABLE `forum_topics` (
  `id` int(30) NOT NULL,
  `title` varchar(250) NOT NULL,
  `description` text NOT NULL,
  `user_id` int(30) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `forum_topics`
--

INSERT INTO `forum_topics` (`id`, `title`, `description`, `user_id`, `date_created`) VALUES
(2, 'Sample Topic 2', '&lt;span style=&quot;color: rgb(0, 0, 0); font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; text-align: justify;&quot;&gt;&quot;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.&quot;&lt;/span&gt;', 3, '2020-10-15 15:20:51'),
(3, 'Sample Topic 3', '&lt;span style=&quot;color: rgb(0, 0, 0); font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; text-align: justify;&quot;&gt;Vivamus gravida nunc orci. Proin ut tristique odio. Nulla suscipit ipsum arcu, a luctus lorem vulputate et. Maecenas magna lorem, tempor id ultrices id, vehicula eu diam. Aliquam erat volutpat. Praesent in sem tincidunt, mattis odio nec, ultrices justo. Vivamus sit amet sapien ornare tortor porttitor congue vel et lorem. In interdum eget metus ut sagittis. In accumsan nec purus vel ornare. Quisque non scelerisque libero, et aliquam risus. Mauris tincidunt ullamcorper efficitur. Nullam venenatis in massa et elementum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; In mollis, tortor sed pellentesque ultrices, sem sem interdum lectus, a laoreet nulla lacus at risus. Ut placerat orci at enim fermentum, eget pretium ante pharetra. Nam id nunc congue augue feugiat egestas.&lt;/span&gt;', 3, '2020-10-15 15:22:30'),
(4, 'Topic by Admin', '&lt;span style=&quot;color: rgb(0, 0, 0); font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-weight: bolder; margin: 0px; padding: 0px; text-align: justify;&quot;&gt;Lorem Ipsum&lt;/span&gt;&lt;span style=&quot;color: rgb(0, 0, 0); font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; text-align: justify;&quot;&gt;&amp;nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&rsquo;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.&lt;/span&gt;', 1, '2020-10-16 08:31:45'),
(5, 'Money Donation', '&lt;p style=&quot;background-color: rgb(16, 30, 44); line-height: 19px;&quot;&gt;&lt;font color=&quot;#bdd2e7&quot;&gt;&lt;span style=&quot;white-space: pre;&quot;&gt;Lorem ipsum dolor sit amet consectetur adipisicing elit. Rem ipsum libero, odio nihil, debitis soluta ea quod blanditiis nemo, quisquam qui atque sit repudiandae error aliquid voluptate! Molestias, saepe sint veniam suscipit, aspernatur iusto atque voluptatem, rem vel quia officiis? Amet quos neque quod provident aliquid harum repudiandae, qui aspernatur, explicabo expedita aliquam possimus quia, culpa eveniet soluta minus. Deserunt fuga earum facere optio assumenda pariatur! Nihil odit mollitia rem, ipsa voluptatem minima sint quam temporibus maiores? Alias amet, ex temporibus nisi sed laborum totam modi, ab laboriosam vel aspernatur aut sunt expedita optio itaque cum doloribus repellendus dolores. Aspernatur.&lt;/span&gt;&lt;/font&gt;&lt;br&gt;&lt;/p&gt;', 5, '2024-10-07 08:52:46');

-- --------------------------------------------------------

--
-- Table structure for table `gallery`
--

CREATE TABLE `gallery` (
  `id` int(30) NOT NULL,
  `about` text NOT NULL,
  `created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `gallery`
--

INSERT INTO `gallery` (`id`, `about`, `created`) VALUES
(6, 'United International University', '2024-10-07 08:42:03'),
(7, 'VC Cup 2024', '2024-10-07 08:42:52'),
(8, 'Mars Rover', '2024-10-07 08:43:16'),
(9, 'Convocation 2024', '2024-10-07 08:53:45');

-- --------------------------------------------------------

--
-- Table structure for table `system_settings`
--

CREATE TABLE `system_settings` (
  `id` int(30) NOT NULL,
  `name` text NOT NULL,
  `email` varchar(200) NOT NULL,
  `contact` varchar(20) NOT NULL,
  `cover_img` text NOT NULL,
  `about_content` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `system_settings`
--

INSERT INTO `system_settings` (`id`, `name`, `email`, `contact`, `cover_img`, `about_content`) VALUES
(1, 'Connect', 'info@sample.com', '+8801718031613', '1728268860_1602738120_pngtree-purple-hd-business-banner-image_5493.jpg', '&lt;p style=&quot;text-align: center; background: transparent; position: relative;&quot;&gt;&lt;span style=&quot;color: rgb(0, 0, 0); font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-weight: 400; text-align: justify;&quot;&gt;&amp;nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&rsquo;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.&lt;/span&gt;&lt;br&gt;&lt;/p&gt;&lt;p style=&quot;text-align: center; background: transparent; position: relative;&quot;&gt;&lt;br&gt;&lt;/p&gt;&lt;p style=&quot;text-align: center; background: transparent; position: relative;&quot;&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(30) NOT NULL,
  `name` text NOT NULL,
  `username` varchar(200) NOT NULL,
  `password` text NOT NULL,
  `type` tinyint(1) NOT NULL DEFAULT 3 COMMENT '1=Admin,2=Alumni officer, 3= alumnus',
  `auto_generated_pass` text NOT NULL,
  `alumnus_id` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `password`, `type`, `auto_generated_pass`, `alumnus_id`) VALUES
(1, 'Admin', 'admin', '0192023a7bbd73250516f069df18b500', 1, '', 0),
(3, 'Mike Williams', 'mwilliams@sample.com', '3cc93e9a6741d8b40460457139cf8ced', 3, '', 2),
(4, 'Shahriar Shihab', 'shihab@gmail.com', '5fe7f6f720a6f45108eaa48acde9ee89', 3, '', 3),
(5, 'Ahmad Anondo', 'anondo@gmail.com', 'c50839b9b729fccb22c48da4da5e8999', 3, '', 4),
(6, 'Sarmin Meera', 'meera@gmail.com', '6de17ec7cc0bf022b6989ee4b30644d0', 3, '', 5),
(7, 'Monir Rana', 'rana@gmail.com', '56633c28d968fbf88a4ec9b6ebeb900a', 3, '', 6);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `alumnus_bio`
--
ALTER TABLE `alumnus_bio`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `careers`
--
ALTER TABLE `careers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `event_commits`
--
ALTER TABLE `event_commits`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `forum_comments`
--
ALTER TABLE `forum_comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `forum_topics`
--
ALTER TABLE `forum_topics`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gallery`
--
ALTER TABLE `gallery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `system_settings`
--
ALTER TABLE `system_settings`
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
-- AUTO_INCREMENT for table `alumnus_bio`
--
ALTER TABLE `alumnus_bio`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `careers`
--
ALTER TABLE `careers`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `event_commits`
--
ALTER TABLE `event_commits`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `forum_comments`
--
ALTER TABLE `forum_comments`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `forum_topics`
--
ALTER TABLE `forum_topics`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `gallery`
--
ALTER TABLE `gallery`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `system_settings`
--
ALTER TABLE `system_settings`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
