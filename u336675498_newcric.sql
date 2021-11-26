-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Aug 25, 2021 at 09:33 AM
-- Server version: 10.4.15-MariaDB-cll-lve
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `u336675498_newcric`
--

-- --------------------------------------------------------

--
-- Table structure for table `ads_setting`
--

CREATE TABLE `ads_setting` (
  `id` int(11) NOT NULL,
  `banner_ad` text COLLATE utf8_unicode_ci NOT NULL,
  `interstitial_ad` text COLLATE utf8_unicode_ci NOT NULL,
  `native_ad` text COLLATE utf8_unicode_ci NOT NULL,
  `video_ad` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `ads_setting`
--

INSERT INTO `ads_setting` (`id`, `banner_ad`, `interstitial_ad`, `native_ad`, `video_ad`) VALUES
(0, '1122033181645577_1122033911645504', '1122033181645577_1122035241645371', '362161925035368_384614806123413', '1122033181645577_1127899334392295'),
(0, '1122033181645577_1122033911645504', '1122033181645577_1122035241645371', '362161925035368_384614806123413', '1122033181645577_1127899334392295');

-- --------------------------------------------------------

--
-- Table structure for table `app_setting`
--

CREATE TABLE `app_setting` (
  `id` int(11) NOT NULL,
  `privacy_policy` text COLLATE utf8_unicode_ci NOT NULL,
  `terms` text COLLATE utf8_unicode_ci NOT NULL,
  `read_me` text COLLATE utf8_unicode_ci NOT NULL,
  `top_fantacy_apps` longtext COLLATE utf8_unicode_ci NOT NULL,
  `m_l` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `app_setting`
--

INSERT INTO `app_setting` (`id`, `privacy_policy`, `terms`, `read_me`, `top_fantacy_apps`, `m_l`) VALUES
(1, '<h1>Privacy Policy</h1>\r\n<div class=\"entry-content\">\r\n<p>Criccoach built the CricCoach app as a Free app. This SERVICE is provided by Criccoach at no cost and is intended for use as is.</p>\r\n<p>This page is used to inform visitors regarding my policies with the collection, use, and disclosure of Personal Information if anyone decided to use my Service.</p>\r\n<p>If you choose to use my Service, then you agree to the collection and use of information in relation to this policy. The Personal Information that I collect is used for providing and improving the Service. I will not use or share your information with anyone except as described in this Privacy Policy.</p>\r\n<p>The terms used in this Privacy Policy have the same meanings as in our Terms and Conditions, which is accessible at CricCoach unless otherwise defined in this Privacy Policy.</p>\r\n<p><strong>Information Collection and Use</strong></p>\r\n<p>For a better experience, while using our Service, I may require you to provide us with certain personally identifiable information, including but not limited to No. The information that I request will be retained on your device and is not collected by me in any way.</p>\r\n<p>The app does use third party services that may collect information used to identify you.</p>\r\n<p>Link to privacy policy of third party service providers used by the app</p>\r\n<ul>\r\n<li><a href=\"https://www.google.com/policies/privacy/\" target=\"_blank\" rel=\"noreferrer noopener\">Google Play Services</a></li>\r\n<li><a href=\"https://firebase.google.com/policies/analytics\" target=\"_blank\" rel=\"noreferrer noopener\">Google Analytics for Firebase</a></li>\r\n<li><a href=\"https://www.facebook.com/about/privacy/update/printable\" target=\"_blank\" rel=\"noreferrer noopener\">Facebook</a></li>\r\n</ul>\r\n<p><strong>Log Data</strong></p>\r\n<p>I want to inform you that whenever you use my Service, in a case of an error in the app I collect data and information (through third party products) on your phone called Log Data. This Log Data may include information such as your device Internet Protocol (&ldquo;IP&rdquo;) address, device name, operating system version, the configuration of the app when utilizing my Service, the time and date of your use of the Service, and other statistics.</p>\r\n<p><strong>Cookies</strong></p>\r\n<p>Cookies are files with a small amount of data that are commonly used as anonymous unique identifiers. These are sent to your browser from the websites that you visit and are stored on your device&rsquo;s internal memory.</p>\r\n<p>This Service does not use these &ldquo;cookies&rdquo; explicitly. However, the app may use third party code and libraries that use &ldquo;cookies&rdquo; to collect information and improve their services. You have the option to either accept or refuse these cookies and know when a cookie is being sent to your device. If you choose to refuse our cookies, you may not be able to use some portions of this Service.</p>\r\n<p><strong>Service Providers</strong></p>\r\n<p>I may employ third-party companies and individuals due to the following reasons:</p>\r\n<ul>\r\n<li>To facilitate our Service;</li>\r\n<li>To provide the Service on our behalf;</li>\r\n<li>To perform Service-related services; or</li>\r\n<li>To assist us in analyzing how our Service is used.</li>\r\n</ul>\r\n<p>I want to inform users of this Service that these third parties have access to your Personal Information. The reason is to perform the tasks assigned to them on our behalf. However, they are obligated not to disclose or use the information for any other purpose.</p>\r\n<p><strong>Security</strong></p>\r\n<p>I value your trust in providing us your Personal Information, thus we are striving to use commercially acceptable means of protecting it. But remember that no method of transmission over the internet, or method of electronic storage is 100% secure and reliable, and I cannot guarantee its absolute security.</p>\r\n<p><strong>Links to Other Sites</strong></p>\r\n<p>This Service may contain links to other sites. If you click on a third-party link, you will be directed to that site. Note that these external sites are not operated by me. Therefore, I strongly advise you to review the Privacy Policy of these websites. I have no control over and assume no responsibility for the content, privacy policies, or practices of any third-party sites or services.</p>\r\n<p><strong>Children&rsquo;s Privacy</strong></p>\r\n<p>These Services do not address anyone under the age of 13. I do not knowingly collect personally identifiable information from children under 13. In the case I discover that a child under 13 has provided me with personal information, I immediately delete this from our servers. If you are a parent or guardian and you are aware that your child has provided us with personal information, please contact me so that I will be able to do necessary actions.</p>\r\n<p><strong>Changes to This Privacy Policy</strong></p>\r\n<p>I may update our Privacy Policy from time to time. Thus, you are advised to review this page periodically for any changes. I will notify you of any changes by posting the new Privacy Policy on this page.</p>\r\n<p>This policy is effective as of 2021-01-10</p>\r\n<p><strong>Contact Us</strong></p>\r\n<p>If you have any questions or suggestions about my Privacy Policy, do not hesitate to contact me at Criccoachapp@gmail.com.</p>\r\n<p>This privacy policy page was created at&nbsp;<a href=\"https://privacypolicytemplate.net/\" target=\"_blank\" rel=\"noreferrer noopener\">privacypolicytemplate.net&nbsp;</a>and modified/generated by&nbsp;<a href=\"https://app-privacy-policy-generator.nisrulz.com/\" target=\"_blank\" rel=\"noreferrer noopener\">App Privacy Policy Generator</a></p>\r\n</div>', '<p><strong>Terms &amp; Conditions</strong></p>\r\n<p><span style=\"font-weight: 400;\">By downloading or using the app, these terms will automatically apply to you &ndash; you should make sure therefore that you read them carefully before using the app. You&rsquo;re not allowed to copy, or modify the app, any part of the app, or our trademarks in any way. You&rsquo;re not allowed to attempt to extract the source code of the app, and you also shouldn&rsquo;t try to translate the app into other languages, or make derivative versions. The app itself, and all the trade marks, copyright, database rights and other intellectual property rights related to it, still belong to Criccoach.</span></p>\r\n<p><span style=\"font-weight: 400;\">Criccoach is committed to ensuring that the app is as useful and efficient as possible. For that reason, we reserve the right to make changes to the app or to charge for its services, at any time and for any reason. We will never charge you for the app or its services without making it very clear to you exactly what you&rsquo;re paying for.</span></p>\r\n<p><span style=\"font-weight: 400;\">Criccoach - Fantasy Team Prediction for Dream11 app stores and processes personal data that you have provided to us, in order to provide our Service. It&rsquo;s your responsibility to keep your phone and access to the app secure. We therefore recommend that you do not jailbreak or root your phone, which is the process of removing software restrictions and limitations imposed by the official operating system of your device. It could make your phone vulnerable to malware/viruses/malicious programs, compromise your phone&rsquo;s security features and it could mean that Criccoach - Fantasy Team Prediction for Dream11 won&rsquo;t work properly or at all.</span></p>\r\n<p><span style=\"font-weight: 400;\">The app does use third party services that declare their own Terms and Conditions.</span></p>\r\n<p><span style=\"font-weight: 400;\">Link to Terms and Conditions of third party service providers used by the app</span></p>\r\n<ul>\r\n<li style=\"font-weight: 400;\" aria-level=\"1\"><a href=\"https://policies.google.com/terms\"><span style=\"font-weight: 400;\">Google Play Services</span></a></li>\r\n<li style=\"font-weight: 400;\" aria-level=\"1\"><a href=\"https://developers.google.com/admob/terms\"><span style=\"font-weight: 400;\">AdMob</span></a></li>\r\n<li style=\"font-weight: 400;\" aria-level=\"1\"><a href=\"https://firebase.google.com/terms/analytics\"><span style=\"font-weight: 400;\">Google Analytics for Firebase</span></a></li>\r\n<li style=\"font-weight: 400;\" aria-level=\"1\"><a href=\"https://firebase.google.com/terms/crashlytics\"><span style=\"font-weight: 400;\">Firebase Crashlytics</span></a></li>\r\n<li style=\"font-weight: 400;\" aria-level=\"1\"><a href=\"https://www.facebook.com/legal/terms/plain_text_terms\"><span style=\"font-weight: 400;\">Facebook</span></a></li>\r\n</ul>\r\n<p><span style=\"font-weight: 400;\">You should be aware that there are certain things that Criccoach will not take responsibility for. Certain functions of the app will require the app to have an active internet connection. The connection can be Wi-Fi, or provided by your mobile network provider, but Criccoach cannot take responsibility for the app not working at full functionality if you don&rsquo;t have access to Wi-Fi, and you don&rsquo;t have any of your data allowance left.</span></p>\r\n<p><span style=\"font-weight: 400;\">If you&rsquo;re using the app outside of an area with Wi-Fi, you should remember that your terms of the agreement with your mobile network provider will still apply. As a result, you may be charged by your mobile provider for the cost of data for the duration of the connection while accessing the app, or other third party charges. In using the app, you&rsquo;re accepting responsibility for any such charges, including roaming data charges if you use the app outside of your home territory (i.e. region or country) without turning off data roaming. If you are not the bill payer for the device on which you&rsquo;re using the app, please be aware that we assume that you have received permission from the bill payer for using the app.</span></p>\r\n<p><span style=\"font-weight: 400;\">Along the same lines, Criccoach cannot always take responsibility for the way you use the app i.e. You need to make sure that your device stays charged &ndash; if it runs out of battery and you can&rsquo;t turn it on to avail the Service, Criccoach cannot accept responsibility.</span></p>\r\n<p><span style=\"font-weight: 400;\">With respect to Criccoach&rsquo;s responsibility for your use of the app, when you&rsquo;re using the app, it&rsquo;s important to bear in mind that although we endeavour to ensure that it is updated and correct at all times, we do rely on third parties to provide information to us so that we can make it available to you. Criccoach accepts no liability for any loss, direct or indirect, you experience as a result of relying wholly on this functionality of the app.</span></p>\r\n<p><span style=\"font-weight: 400;\">At some point, we may wish to update the app. The app is currently available on Android &ndash; the requirements for system(and for any additional systems we decide to extend the availability of the app to) may change, and you&rsquo;ll need to download the updates if you want to keep using the app. Criccoach does not promise that it will always update the app so that it is relevant to you and/or works with the Android version that you have installed on your device. However, you promise to always accept updates to the application when offered to you, We may also wish to stop providing the app, and may terminate use of it at any time without giving notice of termination to you. Unless we tell you otherwise, upon any termination, (a) the rights and licenses granted to you in these terms will end; (b) you must stop using the app, and (if needed) delete it from your device.</span></p>\r\n<p><strong>Changes to This Terms and Conditions</strong></p>\r\n<p><span style=\"font-weight: 400;\">We may update our Terms and Conditions from time to time. Thus, you are advised to review this page periodically for any changes. We will notify you of any changes by posting the new Terms and Conditions on this page.</span></p>\r\n<p><span style=\"font-weight: 400;\">These terms and conditions are effective as of 2021-15-02</span></p>\r\n<p><strong>Contact Us</strong></p>\r\n<p><span style=\"font-weight: 400;\">If you have any questions or suggestions about our Terms and Conditions, do not hesitate to contact us at Criccoachapp@gmail.com.</span></p>\r\n<p>&nbsp;</p>', '<h2 style=\"text-align: center;\">Indicators We Use</h2>\r\n<p>{ ☆☆☆☆☆&nbsp; } - Investment Idicator for perticular match<br />* less Star - Less Investment<br />* 2-3 Stars - Avg Investment<br />* 4-5 Stas - good Investment</p>\r\n<h2 style=\"text-align: center;\"><strong>Follow this strategy to stay profit In Fantasy Sports&nbsp;&nbsp;</strong></h2>\r\n<p>1. Don\'t Play or invest in all matches. ( Avoid to play bad Matches )</p>\r\n<p>2. What is Bad Matches ?&nbsp;<br />A match fully depends on luck, their is no top performer or higher profile player</p>\r\n<p>3. For profit we should Play domestic and associate teams matches . ( Ex. SMA Trophy, Momentum cup, T20S, Lpl, PSL, Ipl, Ireland, afghanistan, womens one day &amp; T20 Matches, Scotland etc. )</p>\r\n<h2 style=\"text-align: center;\">Investment in Leagues&nbsp;</h2>\r\n<p>✦ Follow My investment tips for get in profit</p>\r\n<p>Combination For Invest In Fantasy Platforms</p>\r\n<p>➛ Head to Head ( 2 Members ) - 40%<br />➛ 3 Members Contest - 30%<br />➛ 4 Members Contest - 20%</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>', '<table style=\"border-collapse: collapse; width: 100%;\" border=\"1\">\r\n<tbody>\r\n<tr>\r\n<td style=\"width: 48.8049%;\">\r\n<p style=\"text-align: center;\"><strong>Rs 100</strong></p>\r\n<p style=\"text-align: center;\">sign up bonus</p>\r\n</td>\r\n<td style=\"width: 48.8049%;\">\r\n<p style=\"text-align: center;\"><strong>Rs 100</strong></p>\r\n<p style=\"text-align: center;\">sign up bonus</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 48.8049%;\">\r\n<p style=\"text-align: center;\"><strong>Rs 100</strong></p>\r\n<p style=\"text-align: center;\">sign up bonus</p>\r\n</td>\r\n<td style=\"width: 48.8049%;\">\r\n<p style=\"text-align: center;\"><strong>Rs 100</strong></p>\r\n<p style=\"text-align: center;\">sign up bonus</p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table style=\"border-collapse: collapse; width: 100%;\" border=\"1\">\r\n<tbody>\r\n<tr>\r\n<td style=\"width: 98.7632%; text-align: center;\"><img src=\"https://res-5.cloudinary.com/crunchbase-production/image/upload/c_lpad,h_170,w_170,f_auto,b_white,q_auto:eco/g671or1ojkzesgquoxiq\" alt=\"\" width=\"102\" height=\"102\" /> &nbsp;Dream 11 Fantacy App&nbsp; &nbsp;</td>\r\n</tr>\r\n</tbody>\r\n</table>', 200),
(1, '<h1>Privacy Policy</h1>\r\n<div class=\"entry-content\">\r\n<p>Criccoach built the CricCoach app as a Free app. This SERVICE is provided by Criccoach at no cost and is intended for use as is.</p>\r\n<p>This page is used to inform visitors regarding my policies with the collection, use, and disclosure of Personal Information if anyone decided to use my Service.</p>\r\n<p>If you choose to use my Service, then you agree to the collection and use of information in relation to this policy. The Personal Information that I collect is used for providing and improving the Service. I will not use or share your information with anyone except as described in this Privacy Policy.</p>\r\n<p>The terms used in this Privacy Policy have the same meanings as in our Terms and Conditions, which is accessible at CricCoach unless otherwise defined in this Privacy Policy.</p>\r\n<p><strong>Information Collection and Use</strong></p>\r\n<p>For a better experience, while using our Service, I may require you to provide us with certain personally identifiable information, including but not limited to No. The information that I request will be retained on your device and is not collected by me in any way.</p>\r\n<p>The app does use third party services that may collect information used to identify you.</p>\r\n<p>Link to privacy policy of third party service providers used by the app</p>\r\n<ul>\r\n<li><a href=\"https://www.google.com/policies/privacy/\" target=\"_blank\" rel=\"noreferrer noopener\">Google Play Services</a></li>\r\n<li><a href=\"https://firebase.google.com/policies/analytics\" target=\"_blank\" rel=\"noreferrer noopener\">Google Analytics for Firebase</a></li>\r\n<li><a href=\"https://www.facebook.com/about/privacy/update/printable\" target=\"_blank\" rel=\"noreferrer noopener\">Facebook</a></li>\r\n</ul>\r\n<p><strong>Log Data</strong></p>\r\n<p>I want to inform you that whenever you use my Service, in a case of an error in the app I collect data and information (through third party products) on your phone called Log Data. This Log Data may include information such as your device Internet Protocol (&ldquo;IP&rdquo;) address, device name, operating system version, the configuration of the app when utilizing my Service, the time and date of your use of the Service, and other statistics.</p>\r\n<p><strong>Cookies</strong></p>\r\n<p>Cookies are files with a small amount of data that are commonly used as anonymous unique identifiers. These are sent to your browser from the websites that you visit and are stored on your device&rsquo;s internal memory.</p>\r\n<p>This Service does not use these &ldquo;cookies&rdquo; explicitly. However, the app may use third party code and libraries that use &ldquo;cookies&rdquo; to collect information and improve their services. You have the option to either accept or refuse these cookies and know when a cookie is being sent to your device. If you choose to refuse our cookies, you may not be able to use some portions of this Service.</p>\r\n<p><strong>Service Providers</strong></p>\r\n<p>I may employ third-party companies and individuals due to the following reasons:</p>\r\n<ul>\r\n<li>To facilitate our Service;</li>\r\n<li>To provide the Service on our behalf;</li>\r\n<li>To perform Service-related services; or</li>\r\n<li>To assist us in analyzing how our Service is used.</li>\r\n</ul>\r\n<p>I want to inform users of this Service that these third parties have access to your Personal Information. The reason is to perform the tasks assigned to them on our behalf. However, they are obligated not to disclose or use the information for any other purpose.</p>\r\n<p><strong>Security</strong></p>\r\n<p>I value your trust in providing us your Personal Information, thus we are striving to use commercially acceptable means of protecting it. But remember that no method of transmission over the internet, or method of electronic storage is 100% secure and reliable, and I cannot guarantee its absolute security.</p>\r\n<p><strong>Links to Other Sites</strong></p>\r\n<p>This Service may contain links to other sites. If you click on a third-party link, you will be directed to that site. Note that these external sites are not operated by me. Therefore, I strongly advise you to review the Privacy Policy of these websites. I have no control over and assume no responsibility for the content, privacy policies, or practices of any third-party sites or services.</p>\r\n<p><strong>Children&rsquo;s Privacy</strong></p>\r\n<p>These Services do not address anyone under the age of 13. I do not knowingly collect personally identifiable information from children under 13. In the case I discover that a child under 13 has provided me with personal information, I immediately delete this from our servers. If you are a parent or guardian and you are aware that your child has provided us with personal information, please contact me so that I will be able to do necessary actions.</p>\r\n<p><strong>Changes to This Privacy Policy</strong></p>\r\n<p>I may update our Privacy Policy from time to time. Thus, you are advised to review this page periodically for any changes. I will notify you of any changes by posting the new Privacy Policy on this page.</p>\r\n<p>This policy is effective as of 2021-01-10</p>\r\n<p><strong>Contact Us</strong></p>\r\n<p>If you have any questions or suggestions about my Privacy Policy, do not hesitate to contact me at Criccoachapp@gmail.com.</p>\r\n<p>This privacy policy page was created at&nbsp;<a href=\"https://privacypolicytemplate.net/\" target=\"_blank\" rel=\"noreferrer noopener\">privacypolicytemplate.net&nbsp;</a>and modified/generated by&nbsp;<a href=\"https://app-privacy-policy-generator.nisrulz.com/\" target=\"_blank\" rel=\"noreferrer noopener\">App Privacy Policy Generator</a></p>\r\n</div>', '<p><strong>Terms &amp; Conditions</strong></p>\r\n<p><span style=\"font-weight: 400;\">By downloading or using the app, these terms will automatically apply to you &ndash; you should make sure therefore that you read them carefully before using the app. You&rsquo;re not allowed to copy, or modify the app, any part of the app, or our trademarks in any way. You&rsquo;re not allowed to attempt to extract the source code of the app, and you also shouldn&rsquo;t try to translate the app into other languages, or make derivative versions. The app itself, and all the trade marks, copyright, database rights and other intellectual property rights related to it, still belong to Criccoach.</span></p>\r\n<p><span style=\"font-weight: 400;\">Criccoach is committed to ensuring that the app is as useful and efficient as possible. For that reason, we reserve the right to make changes to the app or to charge for its services, at any time and for any reason. We will never charge you for the app or its services without making it very clear to you exactly what you&rsquo;re paying for.</span></p>\r\n<p><span style=\"font-weight: 400;\">Criccoach - Fantasy Team Prediction for Dream11 app stores and processes personal data that you have provided to us, in order to provide our Service. It&rsquo;s your responsibility to keep your phone and access to the app secure. We therefore recommend that you do not jailbreak or root your phone, which is the process of removing software restrictions and limitations imposed by the official operating system of your device. It could make your phone vulnerable to malware/viruses/malicious programs, compromise your phone&rsquo;s security features and it could mean that Criccoach - Fantasy Team Prediction for Dream11 won&rsquo;t work properly or at all.</span></p>\r\n<p><span style=\"font-weight: 400;\">The app does use third party services that declare their own Terms and Conditions.</span></p>\r\n<p><span style=\"font-weight: 400;\">Link to Terms and Conditions of third party service providers used by the app</span></p>\r\n<ul>\r\n<li style=\"font-weight: 400;\" aria-level=\"1\"><a href=\"https://policies.google.com/terms\"><span style=\"font-weight: 400;\">Google Play Services</span></a></li>\r\n<li style=\"font-weight: 400;\" aria-level=\"1\"><a href=\"https://developers.google.com/admob/terms\"><span style=\"font-weight: 400;\">AdMob</span></a></li>\r\n<li style=\"font-weight: 400;\" aria-level=\"1\"><a href=\"https://firebase.google.com/terms/analytics\"><span style=\"font-weight: 400;\">Google Analytics for Firebase</span></a></li>\r\n<li style=\"font-weight: 400;\" aria-level=\"1\"><a href=\"https://firebase.google.com/terms/crashlytics\"><span style=\"font-weight: 400;\">Firebase Crashlytics</span></a></li>\r\n<li style=\"font-weight: 400;\" aria-level=\"1\"><a href=\"https://www.facebook.com/legal/terms/plain_text_terms\"><span style=\"font-weight: 400;\">Facebook</span></a></li>\r\n</ul>\r\n<p><span style=\"font-weight: 400;\">You should be aware that there are certain things that Criccoach will not take responsibility for. Certain functions of the app will require the app to have an active internet connection. The connection can be Wi-Fi, or provided by your mobile network provider, but Criccoach cannot take responsibility for the app not working at full functionality if you don&rsquo;t have access to Wi-Fi, and you don&rsquo;t have any of your data allowance left.</span></p>\r\n<p><span style=\"font-weight: 400;\">If you&rsquo;re using the app outside of an area with Wi-Fi, you should remember that your terms of the agreement with your mobile network provider will still apply. As a result, you may be charged by your mobile provider for the cost of data for the duration of the connection while accessing the app, or other third party charges. In using the app, you&rsquo;re accepting responsibility for any such charges, including roaming data charges if you use the app outside of your home territory (i.e. region or country) without turning off data roaming. If you are not the bill payer for the device on which you&rsquo;re using the app, please be aware that we assume that you have received permission from the bill payer for using the app.</span></p>\r\n<p><span style=\"font-weight: 400;\">Along the same lines, Criccoach cannot always take responsibility for the way you use the app i.e. You need to make sure that your device stays charged &ndash; if it runs out of battery and you can&rsquo;t turn it on to avail the Service, Criccoach cannot accept responsibility.</span></p>\r\n<p><span style=\"font-weight: 400;\">With respect to Criccoach&rsquo;s responsibility for your use of the app, when you&rsquo;re using the app, it&rsquo;s important to bear in mind that although we endeavour to ensure that it is updated and correct at all times, we do rely on third parties to provide information to us so that we can make it available to you. Criccoach accepts no liability for any loss, direct or indirect, you experience as a result of relying wholly on this functionality of the app.</span></p>\r\n<p><span style=\"font-weight: 400;\">At some point, we may wish to update the app. The app is currently available on Android &ndash; the requirements for system(and for any additional systems we decide to extend the availability of the app to) may change, and you&rsquo;ll need to download the updates if you want to keep using the app. Criccoach does not promise that it will always update the app so that it is relevant to you and/or works with the Android version that you have installed on your device. However, you promise to always accept updates to the application when offered to you, We may also wish to stop providing the app, and may terminate use of it at any time without giving notice of termination to you. Unless we tell you otherwise, upon any termination, (a) the rights and licenses granted to you in these terms will end; (b) you must stop using the app, and (if needed) delete it from your device.</span></p>\r\n<p><strong>Changes to This Terms and Conditions</strong></p>\r\n<p><span style=\"font-weight: 400;\">We may update our Terms and Conditions from time to time. Thus, you are advised to review this page periodically for any changes. We will notify you of any changes by posting the new Terms and Conditions on this page.</span></p>\r\n<p><span style=\"font-weight: 400;\">These terms and conditions are effective as of 2021-15-02</span></p>\r\n<p><strong>Contact Us</strong></p>\r\n<p><span style=\"font-weight: 400;\">If you have any questions or suggestions about our Terms and Conditions, do not hesitate to contact us at Criccoachapp@gmail.com.</span></p>\r\n<p>&nbsp;</p>', '<h2 style=\"text-align: center;\">Indicators We Use</h2>\r\n<p>{ ☆☆☆☆☆&nbsp; } - Investment Idicator for perticular match<br />* less Star - Less Investment<br />* 2-3 Stars - Avg Investment<br />* 4-5 Stas - good Investment</p>\r\n<h2 style=\"text-align: center;\"><strong>Follow this strategy to stay profit In Fantasy Sports&nbsp;&nbsp;</strong></h2>\r\n<p>1. Don\'t Play or invest in all matches. ( Avoid to play bad Matches )</p>\r\n<p>2. What is Bad Matches ?&nbsp;<br />A match fully depends on luck, their is no top performer or higher profile player</p>\r\n<p>3. For profit we should Play domestic and associate teams matches . ( Ex. SMA Trophy, Momentum cup, T20S, Lpl, PSL, Ipl, Ireland, afghanistan, womens one day &amp; T20 Matches, Scotland etc. )</p>\r\n<h2 style=\"text-align: center;\">Investment in Leagues&nbsp;</h2>\r\n<p>✦ Follow My investment tips for get in profit</p>\r\n<p>Combination For Invest In Fantasy Platforms</p>\r\n<p>➛ Head to Head ( 2 Members ) - 40%<br />➛ 3 Members Contest - 30%<br />➛ 4 Members Contest - 20%</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>', '<table style=\"border-collapse: collapse; width: 100%;\" border=\"1\">\r\n<tbody>\r\n<tr>\r\n<td style=\"width: 48.8049%;\">\r\n<p style=\"text-align: center;\"><strong>Rs 100</strong></p>\r\n<p style=\"text-align: center;\">sign up bonus</p>\r\n</td>\r\n<td style=\"width: 48.8049%;\">\r\n<p style=\"text-align: center;\"><strong>Rs 100</strong></p>\r\n<p style=\"text-align: center;\">sign up bonus</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 48.8049%;\">\r\n<p style=\"text-align: center;\"><strong>Rs 100</strong></p>\r\n<p style=\"text-align: center;\">sign up bonus</p>\r\n</td>\r\n<td style=\"width: 48.8049%;\">\r\n<p style=\"text-align: center;\"><strong>Rs 100</strong></p>\r\n<p style=\"text-align: center;\">sign up bonus</p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table style=\"border-collapse: collapse; width: 100%;\" border=\"1\">\r\n<tbody>\r\n<tr>\r\n<td style=\"width: 98.7632%; text-align: center;\"><img src=\"https://res-5.cloudinary.com/crunchbase-production/image/upload/c_lpad,h_170,w_170,f_auto,b_white,q_auto:eco/g671or1ojkzesgquoxiq\" alt=\"\" width=\"102\" height=\"102\" /> &nbsp;Dream 11 Fantacy App&nbsp; &nbsp;</td>\r\n</tr>\r\n</tbody>\r\n</table>', 200);

-- --------------------------------------------------------

--
-- Table structure for table `banners`
--

CREATE TABLE `banners` (
  `id` int(11) DEFAULT NULL,
  `banner_image` text COLLATE utf8_unicode_ci NOT NULL,
  `banner_link` text COLLATE utf8_unicode_ci NOT NULL,
  `t_banner_image` text COLLATE utf8_unicode_ci NOT NULL,
  `t_banner_link` text COLLATE utf8_unicode_ci NOT NULL,
  `web_url` text COLLATE utf8_unicode_ci NOT NULL,
  `floating_icon` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `banners`
--

INSERT INTO `banners` (`id`, `banner_image`, `banner_link`, `t_banner_image`, `t_banner_link`, `web_url`, `floating_icon`) VALUES
(NULL, '4 Digit Otp (2)-min.jpg', 'https://www.fantasyexpertnews.com/', 'FANTASY TEAM PREDICTION (1)-compressed.jpg', 'https://t.me/s/criccoach', 'https://t.me/s/Criccoach', 'Screenshot_2021-01-10-19-25-36-637_com.criccoach.predictiontipsfordream.jpg'),
(NULL, '4 Digit Otp (2)-min.jpg', 'https://www.fantasyexpertnews.com/', 'FANTASY TEAM PREDICTION (1)-compressed.jpg', 'https://t.me/s/criccoach', 'https://t.me/s/Criccoach', 'Screenshot_2021-01-10-19-25-36-637_com.criccoach.predictiontipsfordream.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `category` text COLLATE utf8_unicode_ci NOT NULL,
  `icon` text COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `category`, `icon`, `status`) VALUES
(14, 'Cricket', 'cricket-ball-png-clipart.png', 1),
(16, 'Basketball', 'basketball.png', 1),
(17, 'Baseball', 'ball-baseball.png', 1),
(19, 'Footballl', 'soccer-ball-balls-icon-12.png', 1);

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` int(11) NOT NULL,
  `category` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_time` datetime NOT NULL,
  `match_details` longtext COLLATE utf8_unicode_ci NOT NULL,
  `match_name` text COLLATE utf8_unicode_ci NOT NULL,
  `match_rating` float NOT NULL,
  `match_status` text COLLATE utf8_unicode_ci NOT NULL,
  `match_timer` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `player_update` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `team1_image` text COLLATE utf8_unicode_ci NOT NULL,
  `team1_name` text COLLATE utf8_unicode_ci NOT NULL,
  `team2_image` text COLLATE utf8_unicode_ci NOT NULL,
  `team2_name` text COLLATE utf8_unicode_ci NOT NULL,
  `team_status` text COLLATE utf8_unicode_ci NOT NULL,
  `team1_players` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `team2_players` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'draft',
  `team_preview` text COLLATE utf8_unicode_ci NOT NULL,
  `team1_full` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `team2_full` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `subcategory` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `category`, `date_time`, `match_details`, `match_name`, `match_rating`, `match_status`, `match_timer`, `player_update`, `team1_image`, `team1_name`, `team2_image`, `team2_name`, `team_status`, `team1_players`, `team2_players`, `status`, `team_preview`, `team1_full`, `team2_full`, `subcategory`) VALUES
(440, '14', '2021-08-26 14:30:00', '<h2 id=\"block-a916ea03-f2bb-4fbd-b967-1e72d3bb0dc0\" style=\"text-align: justify;\">SLBL vs SLGR Match Details:</h2>\r\n<p id=\"block-94045668-8d3e-46b5-b41b-9f6b35c9ad89\" style=\"text-align: justify;\">Match: SLC Blues vs SLC Greens<br />Competition: SLC Invitational T20 2021<br />Time &amp; Date: 14 August 2021, 07:00 PM (IST)<br />Venue: Pallekele International Cricket Stadium</p>\r\n<hr />\r\n<h2 id=\"block-2a70f1e2-2eaa-4515-8f29-63283b7204bd\" style=\"text-align: justify;\">SLBL vs SLRE Pitch Report:</h2>\r\n<p style=\"text-align: justify;\">The pitch of Pallekele International Cricket Stadium is a good batting track and provides lots of help to pacers while spinners need to use variation to get success.</p>\r\n<hr />\r\n<p style=\"text-align: justify;\">Venue Stats (T20I)</p>\r\n<p style=\"text-align: justify;\">Avg First Inning Score:&nbsp;175</p>\r\n<p style=\"text-align: justify;\">Total Match Played:&nbsp;20<br />Batting First Won:&nbsp;11<br />Batting Second Won:&nbsp;7<br />Tie:&nbsp;2<br />Highest Score:&nbsp;Australia 263/3<br />Lowest Score:&nbsp;Sri Lanka 116/10</p>\r\n<hr />\r\n<h2 style=\"text-align: justify;\">SLBL vs SLGR Team Squad</h2>\r\n<h3 style=\"text-align: justify;\"><span id=\"SLC_Blues_Squad\"></span>SLC Blues Squad</h3>\r\n<p style=\"text-align: justify;\">Nishan Madushka, Lahiru Samarakoon, Dhananjaya de Silva, Sahan Arachchige, Dhananjaya Lakshan, Sadeera Samarawickrama, Ashen Bandara, Angelo Perera, Shiran Fernando, Dilshan Madushanka, Sachindu Colombage, Maheesh Theekshana, Kalana Perera, Suranga Lakmal, Praveen Jayawickrama, Pawan Rathnayake.</p>\r\n<h3 style=\"text-align: justify;\"><span id=\"SLC_Greens_Squad\"></span>SLC Greens Squad</h3>\r\n<p style=\"text-align: justify;\">Lahiru Udara, Ishan Jayaratne, Krishan Arachchige, Shammu Ashan, Suminda Lakshan, Mahela Udawatte, Pathum Nissanka, Saminda Fernando, Kamindu Mendis, Ashan Priyanjan, Lakshan Sandakan, Lahiru Kumara, Nuwan Thushara, Ramesh Mendis, Vishwa Fernando.</p>\r\n<hr />\r\n<h3 style=\"text-align: justify;\">SLC Blues Player Stats</h3>\r\n<p style=\"text-align: justify;\"><strong>Most Runs</strong></p>\r\n<table style=\"border-collapse: collapse; width: 100%;\" border=\"1\">\r\n<tbody>\r\n<tr>\r\n<td style=\"width: 35.9785%; text-align: center;\"><strong>Player</strong></td>\r\n<td style=\"width: 7.59919%; text-align: center;\" data-align=\"center\"><strong>MAT</strong></td>\r\n<td style=\"width: 8.40619%; text-align: center;\" data-align=\"center\"><strong>INNS</strong></td>\r\n<td style=\"width: 9.07868%; text-align: center;\" data-align=\"center\"><strong>RUNS</strong></td>\r\n<td style=\"width: 6.2542%; text-align: center;\" data-align=\"center\"><strong>HS</strong></td>\r\n<td style=\"width: 8.60794%; text-align: center;\" data-align=\"center\"><strong>AVG</strong></td>\r\n<td style=\"width: 10.0202%; text-align: center;\" data-align=\"center\"><strong>SR</strong></td>\r\n<td style=\"width: 7.73369%; text-align: center;\" data-align=\"center\"><strong>100s</strong></td>\r\n<td style=\"width: 6.2542%; text-align: center;\" data-align=\"center\"><strong>50s</strong></td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 35.9785%;\">Nishan Madushka (T20s)</td>\r\n<td style=\"width: 7.59919%; text-align: center;\" data-align=\"center\">17</td>\r\n<td style=\"width: 8.40619%; text-align: center;\" data-align=\"center\">16</td>\r\n<td style=\"width: 9.07868%; text-align: center;\" data-align=\"center\">500</td>\r\n<td style=\"width: 6.2542%; text-align: center;\" data-align=\"center\">64*</td>\r\n<td style=\"width: 8.60794%; text-align: center;\" data-align=\"center\">38.46</td>\r\n<td style=\"width: 10.0202%; text-align: center;\" data-align=\"center\">100.6</td>\r\n<td style=\"width: 7.73369%; text-align: center;\" data-align=\"center\">0</td>\r\n<td style=\"width: 6.2542%; text-align: center;\" data-align=\"center\">4</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 35.9785%;\">Lahiru Samarakoon (T20s)</td>\r\n<td style=\"width: 7.59919%; text-align: center;\" data-align=\"center\">22</td>\r\n<td style=\"width: 8.40619%; text-align: center;\" data-align=\"center\">20</td>\r\n<td style=\"width: 9.07868%; text-align: center;\" data-align=\"center\">425</td>\r\n<td style=\"width: 6.2542%; text-align: center;\" data-align=\"center\">99</td>\r\n<td style=\"width: 8.60794%; text-align: center;\" data-align=\"center\">21.25</td>\r\n<td style=\"width: 10.0202%; text-align: center;\" data-align=\"center\">157.99</td>\r\n<td style=\"width: 7.73369%; text-align: center;\" data-align=\"center\">&ndash;</td>\r\n<td style=\"width: 6.2542%; text-align: center;\" data-align=\"center\">3</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 35.9785%;\">Dhananjaya de Silva</td>\r\n<td style=\"width: 7.59919%; text-align: center;\" data-align=\"center\">20</td>\r\n<td style=\"width: 8.40619%; text-align: center;\" data-align=\"center\">19</td>\r\n<td style=\"width: 9.07868%; text-align: center;\" data-align=\"center\">406</td>\r\n<td style=\"width: 6.2542%; text-align: center;\" data-align=\"center\">62</td>\r\n<td style=\"width: 8.60794%; text-align: center;\" data-align=\"center\">23.88</td>\r\n<td style=\"width: 10.0202%; text-align: center;\" data-align=\"center\">110.02</td>\r\n<td style=\"width: 7.73369%; text-align: center;\" data-align=\"center\">&ndash;</td>\r\n<td style=\"width: 6.2542%; text-align: center;\" data-align=\"center\">2</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 35.9785%;\">Sahan Arachchige (T20s)</td>\r\n<td style=\"width: 7.59919%; text-align: center;\" data-align=\"center\">28</td>\r\n<td style=\"width: 8.40619%; text-align: center;\" data-align=\"center\">21</td>\r\n<td style=\"width: 9.07868%; text-align: center;\" data-align=\"center\">371</td>\r\n<td style=\"width: 6.2542%; text-align: center;\" data-align=\"center\">66</td>\r\n<td style=\"width: 8.60794%; text-align: center;\" data-align=\"center\">26.5</td>\r\n<td style=\"width: 10.0202%; text-align: center;\" data-align=\"center\">127.05</td>\r\n<td style=\"width: 7.73369%; text-align: center;\" data-align=\"center\">&ndash;</td>\r\n<td style=\"width: 6.2542%; text-align: center;\" data-align=\"center\">1</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 35.9785%;\">Dhananjaya Lakshan (T20s)</td>\r\n<td style=\"width: 7.59919%; text-align: center;\" data-align=\"center\">29</td>\r\n<td style=\"width: 8.40619%; text-align: center;\" data-align=\"center\">23</td>\r\n<td style=\"width: 9.07868%; text-align: center;\" data-align=\"center\">294</td>\r\n<td style=\"width: 6.2542%; text-align: center;\" data-align=\"center\">63</td>\r\n<td style=\"width: 8.60794%; text-align: center;\" data-align=\"center\">15.47</td>\r\n<td style=\"width: 10.0202%; text-align: center;\" data-align=\"center\">127.82</td>\r\n<td style=\"width: 7.73369%; text-align: center;\" data-align=\"center\">&ndash;</td>\r\n<td style=\"width: 6.2542%; text-align: center;\" data-align=\"center\">1</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 35.9785%;\">Sadeera Samarawickrama</td>\r\n<td style=\"width: 7.59919%; text-align: center;\" data-align=\"center\">9</td>\r\n<td style=\"width: 8.40619%; text-align: center;\" data-align=\"center\">9</td>\r\n<td style=\"width: 9.07868%; text-align: center;\" data-align=\"center\">111</td>\r\n<td style=\"width: 6.2542%; text-align: center;\" data-align=\"center\">32</td>\r\n<td style=\"width: 8.60794%; text-align: center;\" data-align=\"center\">12.33</td>\r\n<td style=\"width: 10.0202%; text-align: center;\" data-align=\"center\">94.06</td>\r\n<td style=\"width: 7.73369%; text-align: center;\" data-align=\"center\">&ndash;</td>\r\n<td style=\"width: 6.2542%; text-align: center;\" data-align=\"center\">&ndash;</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 35.9785%;\">Ashen Bandara</td>\r\n<td style=\"width: 7.59919%; text-align: center;\" data-align=\"center\">4</td>\r\n<td style=\"width: 8.40619%; text-align: center;\" data-align=\"center\">4</td>\r\n<td style=\"width: 9.07868%; text-align: center;\" data-align=\"center\">84</td>\r\n<td style=\"width: 6.2542%; text-align: center;\" data-align=\"center\">44</td>\r\n<td style=\"width: 8.60794%; text-align: center;\" data-align=\"center\">28</td>\r\n<td style=\"width: 10.0202%; text-align: center;\" data-align=\"center\">106.32</td>\r\n<td style=\"width: 7.73369%; text-align: center;\" data-align=\"center\">&ndash;</td>\r\n<td style=\"width: 6.2542%; text-align: center;\" data-align=\"center\">&ndash;</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 35.9785%;\">Hashan Randika ( U19)</td>\r\n<td style=\"width: 7.59919%; text-align: center;\" data-align=\"center\">1</td>\r\n<td style=\"width: 8.40619%; text-align: center;\" data-align=\"center\">2</td>\r\n<td style=\"width: 9.07868%; text-align: center;\" data-align=\"center\">79</td>\r\n<td style=\"width: 6.2542%; text-align: center;\" data-align=\"center\">78</td>\r\n<td style=\"width: 8.60794%; text-align: center;\" data-align=\"center\">39.5</td>\r\n<td style=\"width: 10.0202%; text-align: center;\" data-align=\"center\">79.8</td>\r\n<td style=\"width: 7.73369%; text-align: center;\" data-align=\"center\">0</td>\r\n<td style=\"width: 6.2542%; text-align: center;\" data-align=\"center\">1</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 35.9785%;\">Angelo Perera</td>\r\n<td style=\"width: 7.59919%; text-align: center;\" data-align=\"center\">6</td>\r\n<td style=\"width: 8.40619%; text-align: center;\" data-align=\"center\">5</td>\r\n<td style=\"width: 9.07868%; text-align: center;\" data-align=\"center\">59</td>\r\n<td style=\"width: 6.2542%; text-align: center;\" data-align=\"center\">16</td>\r\n<td style=\"width: 8.60794%; text-align: center;\" data-align=\"center\">11.8</td>\r\n<td style=\"width: 10.0202%; text-align: center;\" data-align=\"center\">90.76</td>\r\n<td style=\"width: 7.73369%; text-align: center;\" data-align=\"center\">&ndash;</td>\r\n<td style=\"width: 6.2542%; text-align: center;\" data-align=\"center\">&ndash;</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 35.9785%;\">Shiran Fernando (T20s)</td>\r\n<td style=\"width: 7.59919%; text-align: center;\" data-align=\"center\">15</td>\r\n<td style=\"width: 8.40619%; text-align: center;\" data-align=\"center\">5</td>\r\n<td style=\"width: 9.07868%; text-align: center;\" data-align=\"center\">25</td>\r\n<td style=\"width: 6.2542%; text-align: center;\" data-align=\"center\">16</td>\r\n<td style=\"width: 8.60794%; text-align: center;\" data-align=\"center\">25</td>\r\n<td style=\"width: 10.0202%; text-align: center;\" data-align=\"center\">147.05</td>\r\n<td style=\"width: 7.73369%; text-align: center;\" data-align=\"center\">&ndash;</td>\r\n<td style=\"width: 6.2542%; text-align: center;\" data-align=\"center\">&ndash;</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 35.9785%;\">Dilshan Madushanka (T20s)</td>\r\n<td style=\"width: 7.59919%; text-align: center;\" data-align=\"center\">1</td>\r\n<td style=\"width: 8.40619%; text-align: center;\" data-align=\"center\">&ndash;</td>\r\n<td style=\"width: 9.07868%; text-align: center;\" data-align=\"center\">&ndash;</td>\r\n<td style=\"width: 6.2542%; text-align: center;\" data-align=\"center\">&ndash;</td>\r\n<td style=\"width: 8.60794%; text-align: center;\" data-align=\"center\">&ndash;</td>\r\n<td style=\"width: 10.0202%; text-align: center;\" data-align=\"center\">&ndash;</td>\r\n<td style=\"width: 7.73369%; text-align: center;\" data-align=\"center\">&ndash;</td>\r\n<td style=\"width: 6.2542%; text-align: center;\" data-align=\"center\">&ndash;</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 35.9785%;\">Sachindu Colombage (T20s)</td>\r\n<td style=\"width: 7.59919%; text-align: center;\" data-align=\"center\">20</td>\r\n<td style=\"width: 8.40619%; text-align: center;\" data-align=\"center\">8</td>\r\n<td style=\"width: 9.07868%; text-align: center;\" data-align=\"center\">16</td>\r\n<td style=\"width: 6.2542%; text-align: center;\" data-align=\"center\">4*</td>\r\n<td style=\"width: 8.60794%; text-align: center;\" data-align=\"center\">3.2</td>\r\n<td style=\"width: 10.0202%; text-align: center;\" data-align=\"center\">94.11</td>\r\n<td style=\"width: 7.73369%; text-align: center;\" data-align=\"center\">0</td>\r\n<td style=\"width: 6.2542%; text-align: center;\" data-align=\"center\">0</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 35.9785%;\">Maheesh Theekshana (T20s)</td>\r\n<td style=\"width: 7.59919%; text-align: center;\" data-align=\"center\">18</td>\r\n<td style=\"width: 8.40619%; text-align: center;\" data-align=\"center\">6</td>\r\n<td style=\"width: 9.07868%; text-align: center;\" data-align=\"center\">13</td>\r\n<td style=\"width: 6.2542%; text-align: center;\" data-align=\"center\">8</td>\r\n<td style=\"width: 8.60794%; text-align: center;\" data-align=\"center\">6.5</td>\r\n<td style=\"width: 10.0202%; text-align: center;\" data-align=\"center\">68.42</td>\r\n<td style=\"width: 7.73369%; text-align: center;\" data-align=\"center\">0</td>\r\n<td style=\"width: 6.2542%; text-align: center;\" data-align=\"center\">0</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 35.9785%;\">Kalana Perera (T20s)</td>\r\n<td style=\"width: 7.59919%; text-align: center;\" data-align=\"center\">12</td>\r\n<td style=\"width: 8.40619%; text-align: center;\" data-align=\"center\">5</td>\r\n<td style=\"width: 9.07868%; text-align: center;\" data-align=\"center\">8</td>\r\n<td style=\"width: 6.2542%; text-align: center;\" data-align=\"center\">3*</td>\r\n<td style=\"width: 8.60794%; text-align: center;\" data-align=\"center\">2</td>\r\n<td style=\"width: 10.0202%; text-align: center;\" data-align=\"center\">47.05</td>\r\n<td style=\"width: 7.73369%; text-align: center;\" data-align=\"center\">0</td>\r\n<td style=\"width: 6.2542%; text-align: center;\" data-align=\"center\">0</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 35.9785%;\">Suranga Lakmal</td>\r\n<td style=\"width: 7.59919%; text-align: center;\" data-align=\"center\">11</td>\r\n<td style=\"width: 8.40619%; text-align: center;\" data-align=\"center\">6</td>\r\n<td style=\"width: 9.07868%; text-align: center;\" data-align=\"center\">7</td>\r\n<td style=\"width: 6.2542%; text-align: center;\" data-align=\"center\">5</td>\r\n<td style=\"width: 8.60794%; text-align: center;\" data-align=\"center\">2.33</td>\r\n<td style=\"width: 10.0202%; text-align: center;\" data-align=\"center\">63.63</td>\r\n<td style=\"width: 7.73369%; text-align: center;\" data-align=\"center\">&ndash;</td>\r\n<td style=\"width: 6.2542%; text-align: center;\" data-align=\"center\">&ndash;</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 35.9785%;\">Praveen Jayawickrama (T20s)</td>\r\n<td style=\"width: 7.59919%; text-align: center;\" data-align=\"center\">8</td>\r\n<td style=\"width: 8.40619%; text-align: center;\" data-align=\"center\">4</td>\r\n<td style=\"width: 9.07868%; text-align: center;\" data-align=\"center\">7</td>\r\n<td style=\"width: 6.2542%; text-align: center;\" data-align=\"center\">6</td>\r\n<td style=\"width: 8.60794%; text-align: center;\" data-align=\"center\">3.5</td>\r\n<td style=\"width: 10.0202%; text-align: center;\" data-align=\"center\">140</td>\r\n<td style=\"width: 7.73369%; text-align: center;\" data-align=\"center\">&ndash;</td>\r\n<td style=\"width: 6.2542%; text-align: center;\" data-align=\"center\">&ndash;</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 35.9785%;\">Pawan Rathnayake (T20s)</td>\r\n<td style=\"width: 7.59919%; text-align: center;\" data-align=\"center\">2</td>\r\n<td style=\"width: 8.40619%; text-align: center;\" data-align=\"center\">1</td>\r\n<td style=\"width: 9.07868%; text-align: center;\" data-align=\"center\">5</td>\r\n<td style=\"width: 6.2542%; text-align: center;\" data-align=\"center\">5</td>\r\n<td style=\"width: 8.60794%; text-align: center;\" data-align=\"center\">5</td>\r\n<td style=\"width: 10.0202%; text-align: center;\" data-align=\"center\">83.33</td>\r\n<td style=\"width: 7.73369%; text-align: center;\" data-align=\"center\">0</td>\r\n<td style=\"width: 6.2542%; text-align: center;\" data-align=\"center\">\r\n<p>0</p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<figure>\r\n<p style=\"text-align: justify;\"><strong>Most Wickets</strong></p>\r\n<table style=\"border-collapse: collapse; width: 100%; height: 396px;\" border=\"1\">\r\n<tbody>\r\n<tr style=\"height: 22px;\">\r\n<td style=\"width: 36.7182%; height: 22px; text-align: justify;\">Player</td>\r\n<td style=\"width: 7.73369%; height: 22px; text-align: justify;\" data-align=\"center\">MAT</td>\r\n<td style=\"width: 8.60794%; height: 22px; text-align: justify;\" data-align=\"center\">INNS</td>\r\n<td style=\"width: 7.59919%; height: 22px; text-align: justify;\" data-align=\"center\">OVR</td>\r\n<td style=\"width: 6.45595%; height: 22px; text-align: justify;\" data-align=\"center\">WK</td>\r\n<td style=\"width: 9.28043%; height: 22px; text-align: justify;\" data-align=\"center\">BBI</td>\r\n<td style=\"width: 8.74243%; height: 22px; text-align: justify;\" data-align=\"center\">AVG</td>\r\n<td style=\"width: 7.39744%; height: 22px; text-align: justify;\" data-align=\"center\">ECN</td>\r\n<td style=\"width: 7.3302%; height: 22px; text-align: justify;\" data-align=\"center\">SR</td>\r\n</tr>\r\n<tr style=\"height: 22px;\">\r\n<td style=\"width: 36.7182%; height: 22px; text-align: justify;\">Sachindu Colombage (T20s)</td>\r\n<td style=\"width: 7.73369%; height: 22px; text-align: justify;\" data-align=\"center\">20</td>\r\n<td style=\"width: 8.60794%; height: 22px; text-align: justify;\" data-align=\"center\">20</td>\r\n<td style=\"width: 7.59919%; height: 22px; text-align: justify;\" data-align=\"center\">384</td>\r\n<td style=\"width: 6.45595%; height: 22px; text-align: justify;\" data-align=\"center\">30</td>\r\n<td style=\"width: 9.28043%; height: 22px; text-align: justify;\" data-align=\"center\">3/8</td>\r\n<td style=\"width: 8.74243%; height: 22px; text-align: justify;\" data-align=\"center\">14.8</td>\r\n<td style=\"width: 7.39744%; height: 22px; text-align: justify;\" data-align=\"center\">6.93</td>\r\n<td style=\"width: 7.3302%; height: 22px; text-align: justify;\" data-align=\"center\">12.8</td>\r\n</tr>\r\n<tr style=\"height: 22px;\">\r\n<td style=\"width: 36.7182%; height: 22px; text-align: justify;\">Shiran Fernando (T20s)</td>\r\n<td style=\"width: 7.73369%; height: 22px; text-align: justify;\" data-align=\"center\">15</td>\r\n<td style=\"width: 8.60794%; height: 22px; text-align: justify;\" data-align=\"center\">15</td>\r\n<td style=\"width: 7.59919%; height: 22px; text-align: justify;\" data-align=\"center\">57.5</td>\r\n<td style=\"width: 6.45595%; height: 22px; text-align: justify;\" data-align=\"center\">27</td>\r\n<td style=\"width: 9.28043%; height: 22px; text-align: justify;\" data-align=\"center\">4/19</td>\r\n<td style=\"width: 8.74243%; height: 22px; text-align: justify;\" data-align=\"center\">14.81</td>\r\n<td style=\"width: 7.39744%; height: 22px; text-align: justify;\" data-align=\"center\">6.91</td>\r\n<td style=\"width: 7.3302%; height: 22px; text-align: justify;\" data-align=\"center\">12.8</td>\r\n</tr>\r\n<tr style=\"height: 22px;\">\r\n<td style=\"width: 36.7182%; height: 22px; text-align: justify;\">Lahiru Samarakoon (T20s)</td>\r\n<td style=\"width: 7.73369%; height: 22px; text-align: justify;\" data-align=\"center\">22</td>\r\n<td style=\"width: 8.60794%; height: 22px; text-align: justify;\" data-align=\"center\">19</td>\r\n<td style=\"width: 7.59919%; height: 22px; text-align: justify;\" data-align=\"center\">54.1</td>\r\n<td style=\"width: 6.45595%; height: 22px; text-align: justify;\" data-align=\"center\">21</td>\r\n<td style=\"width: 9.28043%; height: 22px; text-align: justify;\" data-align=\"center\">3/19</td>\r\n<td style=\"width: 8.74243%; height: 22px; text-align: justify;\" data-align=\"center\">20.95</td>\r\n<td style=\"width: 7.39744%; height: 22px; text-align: justify;\" data-align=\"center\">8.12</td>\r\n<td style=\"width: 7.3302%; height: 22px; text-align: justify;\" data-align=\"center\">15.4</td>\r\n</tr>\r\n<tr style=\"height: 22px;\">\r\n<td style=\"width: 36.7182%; height: 22px; text-align: justify;\">Dhananjaya Lakshan (T20s)</td>\r\n<td style=\"width: 7.73369%; height: 22px; text-align: justify;\" data-align=\"center\">29</td>\r\n<td style=\"width: 8.60794%; height: 22px; text-align: justify;\" data-align=\"center\">17</td>\r\n<td style=\"width: 7.59919%; height: 22px; text-align: justify;\" data-align=\"center\">46.5</td>\r\n<td style=\"width: 6.45595%; height: 22px; text-align: justify;\" data-align=\"center\">17</td>\r\n<td style=\"width: 9.28043%; height: 22px; text-align: justify;\" data-align=\"center\">3/17</td>\r\n<td style=\"width: 8.74243%; height: 22px; text-align: justify;\" data-align=\"center\">24.11</td>\r\n<td style=\"width: 7.39744%; height: 22px; text-align: justify;\" data-align=\"center\">8.75</td>\r\n<td style=\"width: 7.3302%; height: 22px; text-align: justify;\" data-align=\"center\">16.5</td>\r\n</tr>\r\n<tr style=\"height: 22px;\">\r\n<td style=\"width: 36.7182%; height: 22px; text-align: justify;\">Maheesh Theekshana (T20s)</td>\r\n<td style=\"width: 7.73369%; height: 22px; text-align: justify;\" data-align=\"center\">18</td>\r\n<td style=\"width: 8.60794%; height: 22px; text-align: justify;\" data-align=\"center\">18</td>\r\n<td style=\"width: 7.59919%; height: 22px; text-align: justify;\" data-align=\"center\">390</td>\r\n<td style=\"width: 6.45595%; height: 22px; text-align: justify;\" data-align=\"center\">17</td>\r\n<td style=\"width: 9.28043%; height: 22px; text-align: justify;\" data-align=\"center\">2/9</td>\r\n<td style=\"width: 8.74243%; height: 22px; text-align: justify;\" data-align=\"center\">19.64</td>\r\n<td style=\"width: 7.39744%; height: 22px; text-align: justify;\" data-align=\"center\">5.13</td>\r\n<td style=\"width: 7.3302%; height: 22px; text-align: justify;\" data-align=\"center\">22.9</td>\r\n</tr>\r\n<tr style=\"height: 22px;\">\r\n<td style=\"width: 36.7182%; height: 22px; text-align: justify;\">Sahan Arachchige (T20s)</td>\r\n<td style=\"width: 7.73369%; height: 22px; text-align: justify;\" data-align=\"center\">28</td>\r\n<td style=\"width: 8.60794%; height: 22px; text-align: justify;\" data-align=\"center\">18</td>\r\n<td style=\"width: 7.59919%; height: 22px; text-align: justify;\" data-align=\"center\">48.2</td>\r\n<td style=\"width: 6.45595%; height: 22px; text-align: justify;\" data-align=\"center\">16</td>\r\n<td style=\"width: 9.28043%; height: 22px; text-align: justify;\" data-align=\"center\">2/17</td>\r\n<td style=\"width: 8.74243%; height: 22px; text-align: justify;\" data-align=\"center\">23.68</td>\r\n<td style=\"width: 7.39744%; height: 22px; text-align: justify;\" data-align=\"center\">7.84</td>\r\n<td style=\"width: 7.3302%; height: 22px; text-align: justify;\" data-align=\"center\">18.1</td>\r\n</tr>\r\n<tr style=\"height: 22px;\">\r\n<td style=\"width: 36.7182%; height: 22px; text-align: justify;\">Kalana Perera (T20s)</td>\r\n<td style=\"width: 7.73369%; height: 22px; text-align: justify;\" data-align=\"center\">12</td>\r\n<td style=\"width: 8.60794%; height: 22px; text-align: justify;\" data-align=\"center\">12</td>\r\n<td style=\"width: 7.59919%; height: 22px; text-align: justify;\" data-align=\"center\">180</td>\r\n<td style=\"width: 6.45595%; height: 22px; text-align: justify;\" data-align=\"center\">14</td>\r\n<td style=\"width: 9.28043%; height: 22px; text-align: justify;\" data-align=\"center\">2/1</td>\r\n<td style=\"width: 8.74243%; height: 22px; text-align: justify;\" data-align=\"center\">13.42</td>\r\n<td style=\"width: 7.39744%; height: 22px; text-align: justify;\" data-align=\"center\">6.26</td>\r\n<td style=\"width: 7.3302%; height: 22px; text-align: justify;\" data-align=\"center\">12.8</td>\r\n</tr>\r\n<tr style=\"height: 22px;\">\r\n<td style=\"width: 36.7182%; height: 22px; text-align: justify;\">Praveen Jayawickrama (T20s)</td>\r\n<td style=\"width: 7.73369%; height: 22px; text-align: justify;\" data-align=\"center\">8</td>\r\n<td style=\"width: 8.60794%; height: 22px; text-align: justify;\" data-align=\"center\">8</td>\r\n<td style=\"width: 7.59919%; height: 22px; text-align: justify;\" data-align=\"center\">23</td>\r\n<td style=\"width: 6.45595%; height: 22px; text-align: justify;\" data-align=\"center\">9</td>\r\n<td style=\"width: 9.28043%; height: 22px; text-align: justify;\" data-align=\"center\">3/14</td>\r\n<td style=\"width: 8.74243%; height: 22px; text-align: justify;\" data-align=\"center\">11.11</td>\r\n<td style=\"width: 7.39744%; height: 22px; text-align: justify;\" data-align=\"center\">4.34</td>\r\n<td style=\"width: 7.3302%; height: 22px; text-align: justify;\" data-align=\"center\">15.3</td>\r\n</tr>\r\n<tr style=\"height: 22px;\">\r\n<td style=\"width: 36.7182%; height: 22px; text-align: justify;\">Suranga Lakmal</td>\r\n<td style=\"width: 7.73369%; height: 22px; text-align: justify;\" data-align=\"center\">11</td>\r\n<td style=\"width: 8.60794%; height: 22px; text-align: justify;\" data-align=\"center\">11</td>\r\n<td style=\"width: 7.59919%; height: 22px; text-align: justify;\" data-align=\"center\">34.4</td>\r\n<td style=\"width: 6.45595%; height: 22px; text-align: justify;\" data-align=\"center\">8</td>\r\n<td style=\"width: 9.28043%; height: 22px; text-align: justify;\" data-align=\"center\">2/26</td>\r\n<td style=\"width: 8.74243%; height: 22px; text-align: justify;\" data-align=\"center\">41.25</td>\r\n<td style=\"width: 7.39744%; height: 22px; text-align: justify;\" data-align=\"center\">9.51</td>\r\n<td style=\"width: 7.3302%; height: 22px; text-align: justify;\" data-align=\"center\">26</td>\r\n</tr>\r\n<tr style=\"height: 22px;\">\r\n<td style=\"width: 36.7182%; height: 22px; text-align: justify;\">Hashan Randika (U19)</td>\r\n<td style=\"width: 7.73369%; height: 22px; text-align: justify;\" data-align=\"center\">1</td>\r\n<td style=\"width: 8.60794%; height: 22px; text-align: justify;\" data-align=\"center\">1</td>\r\n<td style=\"width: 7.59919%; height: 22px; text-align: justify;\" data-align=\"center\">22.5</td>\r\n<td style=\"width: 6.45595%; height: 22px; text-align: justify;\" data-align=\"center\">5</td>\r\n<td style=\"width: 9.28043%; height: 22px; text-align: justify;\" data-align=\"center\">5/112</td>\r\n<td style=\"width: 8.74243%; height: 22px; text-align: justify;\" data-align=\"center\">22.4</td>\r\n<td style=\"width: 7.39744%; height: 22px; text-align: justify;\" data-align=\"center\">4.91</td>\r\n<td style=\"width: 7.3302%; height: 22px; text-align: justify;\" data-align=\"center\">27.4</td>\r\n</tr>\r\n<tr style=\"height: 22px;\">\r\n<td style=\"width: 36.7182%; height: 22px; text-align: justify;\">Dhananjaya de Silva</td>\r\n<td style=\"width: 7.73369%; height: 22px; text-align: justify;\" data-align=\"center\">20</td>\r\n<td style=\"width: 8.60794%; height: 22px; text-align: justify;\" data-align=\"center\">10</td>\r\n<td style=\"width: 7.59919%; height: 22px; text-align: justify;\" data-align=\"center\">20</td>\r\n<td style=\"width: 6.45595%; height: 22px; text-align: justify;\" data-align=\"center\">5</td>\r\n<td style=\"width: 9.28043%; height: 22px; text-align: justify;\" data-align=\"center\">2/22</td>\r\n<td style=\"width: 8.74243%; height: 22px; text-align: justify;\" data-align=\"center\">28.2</td>\r\n<td style=\"width: 7.39744%; height: 22px; text-align: justify;\" data-align=\"center\">7.05</td>\r\n<td style=\"width: 7.3302%; height: 22px; text-align: justify;\" data-align=\"center\">24</td>\r\n</tr>\r\n<tr style=\"height: 22px;\">\r\n<td style=\"width: 36.7182%; height: 22px; text-align: justify;\">Dilshan Madushanka (T20s)</td>\r\n<td style=\"width: 7.73369%; height: 22px; text-align: justify;\" data-align=\"center\">1</td>\r\n<td style=\"width: 8.60794%; height: 22px; text-align: justify;\" data-align=\"center\">1</td>\r\n<td style=\"width: 7.59919%; height: 22px; text-align: justify;\" data-align=\"center\">2</td>\r\n<td style=\"width: 6.45595%; height: 22px; text-align: justify;\" data-align=\"center\">1</td>\r\n<td style=\"width: 9.28043%; height: 22px; text-align: justify;\" data-align=\"center\">1/24</td>\r\n<td style=\"width: 8.74243%; height: 22px; text-align: justify;\" data-align=\"center\">24</td>\r\n<td style=\"width: 7.39744%; height: 22px; text-align: justify;\" data-align=\"center\">12</td>\r\n<td style=\"width: 7.3302%; height: 22px; text-align: justify;\" data-align=\"center\">12</td>\r\n</tr>\r\n<tr style=\"height: 22px;\">\r\n<td style=\"width: 36.7182%; height: 22px; text-align: justify;\">Sadeera Samarawickrama</td>\r\n<td style=\"width: 7.73369%; height: 22px; text-align: justify;\" data-align=\"center\">9</td>\r\n<td style=\"width: 8.60794%; height: 22px; text-align: justify;\" data-align=\"center\">&ndash;</td>\r\n<td style=\"width: 7.59919%; height: 22px; text-align: justify;\" data-align=\"center\">&ndash;</td>\r\n<td style=\"width: 6.45595%; height: 22px; text-align: justify;\" data-align=\"center\">&ndash;</td>\r\n<td style=\"width: 9.28043%; height: 22px; text-align: justify;\" data-align=\"center\">&ndash;</td>\r\n<td style=\"width: 8.74243%; height: 22px; text-align: justify;\" data-align=\"center\">&ndash;</td>\r\n<td style=\"width: 7.39744%; height: 22px; text-align: justify;\" data-align=\"center\">&ndash;</td>\r\n<td style=\"width: 7.3302%; height: 22px; text-align: justify;\" data-align=\"center\">&ndash;</td>\r\n</tr>\r\n<tr style=\"height: 22px;\">\r\n<td style=\"width: 36.7182%; height: 22px; text-align: justify;\">Nishan Madushka (T20s)</td>\r\n<td style=\"width: 7.73369%; height: 22px; text-align: justify;\" data-align=\"center\">17</td>\r\n<td style=\"width: 8.60794%; height: 22px; text-align: justify;\" data-align=\"center\">&ndash;</td>\r\n<td style=\"width: 7.59919%; height: 22px; text-align: justify;\" data-align=\"center\">&ndash;</td>\r\n<td style=\"width: 6.45595%; height: 22px; text-align: justify;\" data-align=\"center\">&ndash;</td>\r\n<td style=\"width: 9.28043%; height: 22px; text-align: justify;\" data-align=\"center\">&ndash;</td>\r\n<td style=\"width: 8.74243%; height: 22px; text-align: justify;\" data-align=\"center\">&ndash;</td>\r\n<td style=\"width: 7.39744%; height: 22px; text-align: justify;\" data-align=\"center\">&ndash;</td>\r\n<td style=\"width: 7.3302%; height: 22px; text-align: justify;\" data-align=\"center\">&ndash;</td>\r\n</tr>\r\n<tr style=\"height: 22px;\">\r\n<td style=\"width: 36.7182%; height: 22px; text-align: justify;\">Ashen Bandara</td>\r\n<td style=\"width: 7.73369%; height: 22px; text-align: justify;\" data-align=\"center\">4</td>\r\n<td style=\"width: 8.60794%; height: 22px; text-align: justify;\" data-align=\"center\">1</td>\r\n<td style=\"width: 7.59919%; height: 22px; text-align: justify;\" data-align=\"center\">1</td>\r\n<td style=\"width: 6.45595%; height: 22px; text-align: justify;\" data-align=\"center\">&ndash;</td>\r\n<td style=\"width: 9.28043%; height: 22px; text-align: justify;\" data-align=\"center\">&ndash;</td>\r\n<td style=\"width: 8.74243%; height: 22px; text-align: justify;\" data-align=\"center\">&ndash;</td>\r\n<td style=\"width: 7.39744%; height: 22px; text-align: justify;\" data-align=\"center\">2</td>\r\n<td style=\"width: 7.3302%; height: 22px; text-align: justify;\" data-align=\"center\">&ndash;</td>\r\n</tr>\r\n<tr style=\"height: 22px;\">\r\n<td style=\"width: 36.7182%; height: 22px; text-align: justify;\">Pawan Rathnayake (T20s)</td>\r\n<td style=\"width: 7.73369%; height: 22px; text-align: justify;\" data-align=\"center\">2</td>\r\n<td style=\"width: 8.60794%; height: 22px; text-align: justify;\" data-align=\"center\">&ndash;</td>\r\n<td style=\"width: 7.59919%; height: 22px; text-align: justify;\" data-align=\"center\">&ndash;</td>\r\n<td style=\"width: 6.45595%; height: 22px; text-align: justify;\" data-align=\"center\">&ndash;</td>\r\n<td style=\"width: 9.28043%; height: 22px; text-align: justify;\" data-align=\"center\">&ndash;</td>\r\n<td style=\"width: 8.74243%; height: 22px; text-align: justify;\" data-align=\"center\">&ndash;</td>\r\n<td style=\"width: 7.39744%; height: 22px; text-align: justify;\" data-align=\"center\">&ndash;</td>\r\n<td style=\"width: 7.3302%; height: 22px; text-align: justify;\" data-align=\"center\">&ndash;</td>\r\n</tr>\r\n<tr style=\"height: 22px;\">\r\n<td style=\"width: 36.7182%; height: 22px; text-align: justify;\">Angelo Perera</td>\r\n<td style=\"width: 7.73369%; height: 22px; text-align: justify;\" data-align=\"center\">6</td>\r\n<td style=\"width: 8.60794%; height: 22px; text-align: justify;\" data-align=\"center\">1</td>\r\n<td style=\"width: 7.59919%; height: 22px; text-align: justify;\" data-align=\"center\">1</td>\r\n<td style=\"width: 6.45595%; height: 22px; text-align: justify;\" data-align=\"center\">&ndash;</td>\r\n<td style=\"width: 9.28043%; height: 22px; text-align: justify;\" data-align=\"center\">&ndash;</td>\r\n<td style=\"width: 8.74243%; height: 22px; text-align: justify;\" data-align=\"center\">&ndash;</td>\r\n<td style=\"width: 7.39744%; height: 22px; text-align: justify;\" data-align=\"center\">17</td>\r\n<td style=\"width: 7.3302%; height: 22px; text-align: justify;\" data-align=\"center\">&ndash;</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<figure>\r\n<h3 style=\"text-align: justify;\">SLC Greens Player Stats</h3>\r\n<p style=\"text-align: justify;\"><strong>Most Runs</strong></p>\r\n<table style=\"border-collapse: collapse; width: 100%;\" border=\"1\">\r\n<tbody>\r\n<tr>\r\n<td style=\"width: 33.7592%; text-align: justify;\">Player</td>\r\n<td style=\"width: 7.86819%; text-align: justify;\" data-align=\"center\">MAT</td>\r\n<td style=\"width: 8.67518%; text-align: justify;\" data-align=\"center\">INNS</td>\r\n<td style=\"width: 9.41493%; text-align: justify;\" data-align=\"center\">RUNS</td>\r\n<td style=\"width: 6.5232%; text-align: justify;\" data-align=\"center\">HS</td>\r\n<td style=\"width: 8.87693%; text-align: justify;\" data-align=\"center\">AVG</td>\r\n<td style=\"width: 10.3564%; text-align: justify;\" data-align=\"center\">SR</td>\r\n<td style=\"width: 6.5232%; text-align: justify;\" data-align=\"center\">50s</td>\r\n<td style=\"width: 7.93544%; text-align: justify;\" data-align=\"center\">100s</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 33.7592%; text-align: justify;\">Lahiru Udara (T20s)</td>\r\n<td style=\"width: 7.86819%; text-align: justify;\" data-align=\"center\">34</td>\r\n<td style=\"width: 8.67518%; text-align: justify;\" data-align=\"center\">32</td>\r\n<td style=\"width: 9.41493%; text-align: justify;\" data-align=\"center\">678</td>\r\n<td style=\"width: 6.5232%; text-align: justify;\" data-align=\"center\">94</td>\r\n<td style=\"width: 8.87693%; text-align: justify;\" data-align=\"center\">22.6</td>\r\n<td style=\"width: 10.3564%; text-align: justify;\" data-align=\"center\">135.87</td>\r\n<td style=\"width: 6.5232%; text-align: justify;\" data-align=\"center\">4</td>\r\n<td style=\"width: 7.93544%; text-align: justify;\" data-align=\"center\">&ndash;</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 33.7592%; text-align: justify;\">Ishan Jayaratne (T20s)</td>\r\n<td style=\"width: 7.86819%; text-align: justify;\" data-align=\"center\">51</td>\r\n<td style=\"width: 8.67518%; text-align: justify;\" data-align=\"center\">32</td>\r\n<td style=\"width: 9.41493%; text-align: justify;\" data-align=\"center\">478</td>\r\n<td style=\"width: 6.5232%; text-align: justify;\" data-align=\"center\">48</td>\r\n<td style=\"width: 8.87693%; text-align: justify;\" data-align=\"center\">22.76</td>\r\n<td style=\"width: 10.3564%; text-align: justify;\" data-align=\"center\">149.84</td>\r\n<td style=\"width: 6.5232%; text-align: justify;\" data-align=\"center\">&ndash;</td>\r\n<td style=\"width: 7.93544%; text-align: justify;\" data-align=\"center\">&ndash;</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 33.7592%; text-align: justify;\">Krishan Arachchige (T20s)</td>\r\n<td style=\"width: 7.86819%; text-align: justify;\" data-align=\"center\">15</td>\r\n<td style=\"width: 8.67518%; text-align: justify;\" data-align=\"center\">14</td>\r\n<td style=\"width: 9.41493%; text-align: justify;\" data-align=\"center\">372</td>\r\n<td style=\"width: 6.5232%; text-align: justify;\" data-align=\"center\">71*</td>\r\n<td style=\"width: 8.87693%; text-align: justify;\" data-align=\"center\">31</td>\r\n<td style=\"width: 10.3564%; text-align: justify;\" data-align=\"center\">115.52</td>\r\n<td style=\"width: 6.5232%; text-align: justify;\" data-align=\"center\">4</td>\r\n<td style=\"width: 7.93544%; text-align: justify;\" data-align=\"center\">0</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 33.7592%; text-align: justify;\">Shammu Ashan (T20s)</td>\r\n<td style=\"width: 7.86819%; text-align: justify;\" data-align=\"center\">29</td>\r\n<td style=\"width: 8.67518%; text-align: justify;\" data-align=\"center\">27</td>\r\n<td style=\"width: 9.41493%; text-align: justify;\" data-align=\"center\">296</td>\r\n<td style=\"width: 6.5232%; text-align: justify;\" data-align=\"center\">44</td>\r\n<td style=\"width: 8.87693%; text-align: justify;\" data-align=\"center\">17.41</td>\r\n<td style=\"width: 10.3564%; text-align: justify;\" data-align=\"center\">114.28</td>\r\n<td style=\"width: 6.5232%; text-align: justify;\" data-align=\"center\">&ndash;</td>\r\n<td style=\"width: 7.93544%; text-align: justify;\" data-align=\"center\">&ndash;</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 33.7592%; text-align: justify;\">Suminda Lakshan (T20s)</td>\r\n<td style=\"width: 7.86819%; text-align: justify;\" data-align=\"center\">11</td>\r\n<td style=\"width: 8.67518%; text-align: justify;\" data-align=\"center\">11</td>\r\n<td style=\"width: 9.41493%; text-align: justify;\" data-align=\"center\">173</td>\r\n<td style=\"width: 6.5232%; text-align: justify;\" data-align=\"center\">31*</td>\r\n<td style=\"width: 8.87693%; text-align: justify;\" data-align=\"center\">19.22</td>\r\n<td style=\"width: 10.3564%; text-align: justify;\" data-align=\"center\">113.07</td>\r\n<td style=\"width: 6.5232%; text-align: justify;\" data-align=\"center\">0</td>\r\n<td style=\"width: 7.93544%; text-align: justify;\" data-align=\"center\">0</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 33.7592%; text-align: justify;\">Lahiru Gamage (T20s)</td>\r\n<td style=\"width: 7.86819%; text-align: justify;\" data-align=\"center\">52</td>\r\n<td style=\"width: 8.67518%; text-align: justify;\" data-align=\"center\">23</td>\r\n<td style=\"width: 9.41493%; text-align: justify;\" data-align=\"center\">116</td>\r\n<td style=\"width: 6.5232%; text-align: justify;\" data-align=\"center\">25</td>\r\n<td style=\"width: 8.87693%; text-align: justify;\" data-align=\"center\">8.92</td>\r\n<td style=\"width: 10.3564%; text-align: justify;\" data-align=\"center\">92.8</td>\r\n<td style=\"width: 6.5232%; text-align: justify;\" data-align=\"center\">&ndash;</td>\r\n<td style=\"width: 7.93544%; text-align: justify;\" data-align=\"center\">&ndash;</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 33.7592%; text-align: justify;\">Mahela Udawatte</td>\r\n<td style=\"width: 7.86819%; text-align: justify;\" data-align=\"center\">8</td>\r\n<td style=\"width: 8.67518%; text-align: justify;\" data-align=\"center\">8</td>\r\n<td style=\"width: 9.41493%; text-align: justify;\" data-align=\"center\">96</td>\r\n<td style=\"width: 6.5232%; text-align: justify;\" data-align=\"center\">25</td>\r\n<td style=\"width: 8.87693%; text-align: justify;\" data-align=\"center\">12</td>\r\n<td style=\"width: 10.3564%; text-align: justify;\" data-align=\"center\">110.34</td>\r\n<td style=\"width: 6.5232%; text-align: justify;\" data-align=\"center\">&ndash;</td>\r\n<td style=\"width: 7.93544%; text-align: justify;\" data-align=\"center\">&ndash;</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 33.7592%; text-align: justify;\">Pathum Nissanka</td>\r\n<td style=\"width: 7.86819%; text-align: justify;\" data-align=\"center\">4</td>\r\n<td style=\"width: 8.67518%; text-align: justify;\" data-align=\"center\">3</td>\r\n<td style=\"width: 9.41493%; text-align: justify;\" data-align=\"center\">81</td>\r\n<td style=\"width: 6.5232%; text-align: justify;\" data-align=\"center\">39</td>\r\n<td style=\"width: 8.87693%; text-align: justify;\" data-align=\"center\">27</td>\r\n<td style=\"width: 10.3564%; text-align: justify;\" data-align=\"center\">115.71</td>\r\n<td style=\"width: 6.5232%; text-align: justify;\" data-align=\"center\">&ndash;</td>\r\n<td style=\"width: 7.93544%; text-align: justify;\" data-align=\"center\">&ndash;</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 33.7592%; text-align: justify;\">Saminda Fernando (T20s)</td>\r\n<td style=\"width: 7.86819%; text-align: justify;\" data-align=\"center\">17</td>\r\n<td style=\"width: 8.67518%; text-align: justify;\" data-align=\"center\">12</td>\r\n<td style=\"width: 9.41493%; text-align: justify;\" data-align=\"center\">80</td>\r\n<td style=\"width: 6.5232%; text-align: justify;\" data-align=\"center\">20</td>\r\n<td style=\"width: 8.87693%; text-align: justify;\" data-align=\"center\">10</td>\r\n<td style=\"width: 10.3564%; text-align: justify;\" data-align=\"center\">98.76</td>\r\n<td style=\"width: 6.5232%; text-align: justify;\" data-align=\"center\">0</td>\r\n<td style=\"width: 7.93544%; text-align: justify;\" data-align=\"center\">0</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 33.7592%; text-align: justify;\">Kamindu Mendis</td>\r\n<td style=\"width: 7.86819%; text-align: justify;\" data-align=\"center\">4</td>\r\n<td style=\"width: 8.67518%; text-align: justify;\" data-align=\"center\">4</td>\r\n<td style=\"width: 9.41493%; text-align: justify;\" data-align=\"center\">66</td>\r\n<td style=\"width: 6.5232%; text-align: justify;\" data-align=\"center\">41</td>\r\n<td style=\"width: 8.87693%; text-align: justify;\" data-align=\"center\">16.5</td>\r\n<td style=\"width: 10.3564%; text-align: justify;\" data-align=\"center\">143.47</td>\r\n<td style=\"width: 6.5232%; text-align: justify;\" data-align=\"center\">&ndash;</td>\r\n<td style=\"width: 7.93544%; text-align: justify;\" data-align=\"center\">&ndash;</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 33.7592%; text-align: justify;\">Ashan Priyanjan</td>\r\n<td style=\"width: 7.86819%; text-align: justify;\" data-align=\"center\">3</td>\r\n<td style=\"width: 8.67518%; text-align: justify;\" data-align=\"center\">3</td>\r\n<td style=\"width: 9.41493%; text-align: justify;\" data-align=\"center\">54</td>\r\n<td style=\"width: 6.5232%; text-align: justify;\" data-align=\"center\">40</td>\r\n<td style=\"width: 8.87693%; text-align: justify;\" data-align=\"center\">54</td>\r\n<td style=\"width: 10.3564%; text-align: justify;\" data-align=\"center\">87.09</td>\r\n<td style=\"width: 6.5232%; text-align: justify;\" data-align=\"center\">&ndash;</td>\r\n<td style=\"width: 7.93544%; text-align: justify;\" data-align=\"center\">&ndash;</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 33.7592%; text-align: justify;\">Lakshan Sandakan</td>\r\n<td style=\"width: 7.86819%; text-align: justify;\" data-align=\"center\">20</td>\r\n<td style=\"width: 8.67518%; text-align: justify;\" data-align=\"center\">7</td>\r\n<td style=\"width: 9.41493%; text-align: justify;\" data-align=\"center\">23</td>\r\n<td style=\"width: 6.5232%; text-align: justify;\" data-align=\"center\">10</td>\r\n<td style=\"width: 8.87693%; text-align: justify;\" data-align=\"center\">7.66</td>\r\n<td style=\"width: 10.3564%; text-align: justify;\" data-align=\"center\">60.52</td>\r\n<td style=\"width: 6.5232%; text-align: justify;\" data-align=\"center\">&ndash;</td>\r\n<td style=\"width: 7.93544%; text-align: justify;\" data-align=\"center\">&ndash;</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 33.7592%; text-align: justify;\">Lasith Embuldeniya (T20s)</td>\r\n<td style=\"width: 7.86819%; text-align: justify;\" data-align=\"center\">4</td>\r\n<td style=\"width: 8.67518%; text-align: justify;\" data-align=\"center\">2</td>\r\n<td style=\"width: 9.41493%; text-align: justify;\" data-align=\"center\">8</td>\r\n<td style=\"width: 6.5232%; text-align: justify;\" data-align=\"center\">4*</td>\r\n<td style=\"width: 8.87693%; text-align: justify;\" data-align=\"center\">8</td>\r\n<td style=\"width: 10.3564%; text-align: justify;\" data-align=\"center\">57.14</td>\r\n<td style=\"width: 6.5232%; text-align: justify;\" data-align=\"center\">0</td>\r\n<td style=\"width: 7.93544%; text-align: justify;\" data-align=\"center\">0</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 33.7592%; text-align: justify;\">Lahiru Kumara</td>\r\n<td style=\"width: 7.86819%; text-align: justify;\" data-align=\"center\">7</td>\r\n<td style=\"width: 8.67518%; text-align: justify;\" data-align=\"center\">3</td>\r\n<td style=\"width: 9.41493%; text-align: justify;\" data-align=\"center\">5</td>\r\n<td style=\"width: 6.5232%; text-align: justify;\" data-align=\"center\">4</td>\r\n<td style=\"width: 8.87693%; text-align: justify;\" data-align=\"center\">5</td>\r\n<td style=\"width: 10.3564%; text-align: justify;\" data-align=\"center\">166.66</td>\r\n<td style=\"width: 6.5232%; text-align: justify;\" data-align=\"center\">&ndash;</td>\r\n<td style=\"width: 7.93544%; text-align: justify;\" data-align=\"center\">&ndash;</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 33.7592%; text-align: justify;\">Nuwan Thushara (T20s)</td>\r\n<td style=\"width: 7.86819%; text-align: justify;\" data-align=\"center\">28</td>\r\n<td style=\"width: 8.67518%; text-align: justify;\" data-align=\"center\">8</td>\r\n<td style=\"width: 9.41493%; text-align: justify;\" data-align=\"center\">3</td>\r\n<td style=\"width: 6.5232%; text-align: justify;\" data-align=\"center\">2</td>\r\n<td style=\"width: 8.87693%; text-align: justify;\" data-align=\"center\">1.5</td>\r\n<td style=\"width: 10.3564%; text-align: justify;\" data-align=\"center\">42.85</td>\r\n<td style=\"width: 6.5232%; text-align: justify;\" data-align=\"center\">&ndash;</td>\r\n<td style=\"width: 7.93544%; text-align: justify;\" data-align=\"center\">&ndash;</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 33.7592%; text-align: justify;\">Ramesh Mendis</td>\r\n<td style=\"width: 7.86819%; text-align: justify;\" data-align=\"center\">2</td>\r\n<td style=\"width: 8.67518%; text-align: justify;\" data-align=\"center\">1</td>\r\n<td style=\"width: 9.41493%; text-align: justify;\" data-align=\"center\">2</td>\r\n<td style=\"width: 6.5232%; text-align: justify;\" data-align=\"center\">2</td>\r\n<td style=\"width: 8.87693%; text-align: justify;\" data-align=\"center\">2</td>\r\n<td style=\"width: 10.3564%; text-align: justify;\" data-align=\"center\">40</td>\r\n<td style=\"width: 6.5232%; text-align: justify;\" data-align=\"center\">&ndash;</td>\r\n<td style=\"width: 7.93544%; text-align: justify;\" data-align=\"center\">&ndash;</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 33.7592%; text-align: justify;\">Vishwa Fernando</td>\r\n<td style=\"width: 7.86819%; text-align: justify;\" data-align=\"center\">1</td>\r\n<td style=\"width: 8.67518%; text-align: justify;\" data-align=\"center\">1</td>\r\n<td style=\"width: 9.41493%; text-align: justify;\" data-align=\"center\">2</td>\r\n<td style=\"width: 6.5232%; text-align: justify;\" data-align=\"center\">2</td>\r\n<td style=\"width: 8.87693%; text-align: justify;\" data-align=\"center\">2</td>\r\n<td style=\"width: 10.3564%; text-align: justify;\" data-align=\"center\">100</td>\r\n<td style=\"width: 6.5232%; text-align: justify;\" data-align=\"center\">&ndash;</td>\r\n<td style=\"width: 7.93544%; text-align: justify;\" data-align=\"center\">&ndash;</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<figure style=\"text-align: justify;\"></figure>\r\n<p style=\"text-align: justify;\"><strong>Most Wickets</strong></p>\r\n<table style=\"border-collapse: collapse; width: 100%;\" border=\"1\">\r\n<tbody>\r\n<tr>\r\n<td style=\"width: 34.5662%; text-align: justify;\">Player</td>\r\n<td style=\"width: 8.06994%; text-align: justify;\" data-align=\"center\">MAT</td>\r\n<td style=\"width: 8.87693%; text-align: justify;\" data-align=\"center\">INNS</td>\r\n<td style=\"width: 9.14593%; text-align: justify;\" data-align=\"center\">OVR</td>\r\n<td style=\"width: 6.6577%; text-align: justify;\" data-align=\"center\">WK</td>\r\n<td style=\"width: 8.13719%; text-align: justify;\" data-align=\"center\">BBI</td>\r\n<td style=\"width: 9.07868%; text-align: justify;\" data-align=\"center\">AVG</td>\r\n<td style=\"width: 7.73369%; text-align: justify;\" data-align=\"center\">ECN</td>\r\n<td style=\"width: 7.59919%; text-align: justify;\" data-align=\"center\">SR</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 34.5662%; text-align: justify;\">Ishan Jayaratne (T20s)</td>\r\n<td style=\"width: 8.06994%; text-align: justify;\" data-align=\"center\">51</td>\r\n<td style=\"width: 8.87693%; text-align: justify;\" data-align=\"center\">46</td>\r\n<td style=\"width: 9.14593%; text-align: justify;\" data-align=\"center\">161</td>\r\n<td style=\"width: 6.6577%; text-align: justify;\" data-align=\"center\">68</td>\r\n<td style=\"width: 8.13719%; text-align: justify;\" data-align=\"center\">4/10</td>\r\n<td style=\"width: 9.07868%; text-align: justify;\" data-align=\"center\">16.86</td>\r\n<td style=\"width: 7.73369%; text-align: justify;\" data-align=\"center\">7.12</td>\r\n<td style=\"width: 7.59919%; text-align: justify;\" data-align=\"center\">14.2</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 34.5662%; text-align: justify;\">Lahiru Gamage (T20s)</td>\r\n<td style=\"width: 8.06994%; text-align: justify;\" data-align=\"center\">52</td>\r\n<td style=\"width: 8.87693%; text-align: justify;\" data-align=\"center\">52</td>\r\n<td style=\"width: 9.14593%; text-align: justify;\" data-align=\"center\">171.1</td>\r\n<td style=\"width: 6.6577%; text-align: justify;\" data-align=\"center\">68</td>\r\n<td style=\"width: 8.13719%; text-align: justify;\" data-align=\"center\">4/13</td>\r\n<td style=\"width: 9.07868%; text-align: justify;\" data-align=\"center\">17.91</td>\r\n<td style=\"width: 7.73369%; text-align: justify;\" data-align=\"center\">7.11</td>\r\n<td style=\"width: 7.59919%; text-align: justify;\" data-align=\"center\">15.1</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 34.5662%; text-align: justify;\">Nuwan Thushara (T20s)</td>\r\n<td style=\"width: 8.06994%; text-align: justify;\" data-align=\"center\">28</td>\r\n<td style=\"width: 8.87693%; text-align: justify;\" data-align=\"center\">28</td>\r\n<td style=\"width: 9.14593%; text-align: justify;\" data-align=\"center\">91</td>\r\n<td style=\"width: 6.6577%; text-align: justify;\" data-align=\"center\">43</td>\r\n<td style=\"width: 8.13719%; text-align: justify;\" data-align=\"center\">4/32</td>\r\n<td style=\"width: 9.07868%; text-align: justify;\" data-align=\"center\">16.06</td>\r\n<td style=\"width: 7.73369%; text-align: justify;\" data-align=\"center\">7.59</td>\r\n<td style=\"width: 7.59919%; text-align: justify;\" data-align=\"center\">12.6</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 34.5662%; text-align: justify;\">Lakshan Sandakan</td>\r\n<td style=\"width: 8.06994%; text-align: justify;\" data-align=\"center\">20</td>\r\n<td style=\"width: 8.87693%; text-align: justify;\" data-align=\"center\">20</td>\r\n<td style=\"width: 9.14593%; text-align: justify;\" data-align=\"center\">76.4</td>\r\n<td style=\"width: 6.6577%; text-align: justify;\" data-align=\"center\">23</td>\r\n<td style=\"width: 8.13719%; text-align: justify;\" data-align=\"center\">4/23</td>\r\n<td style=\"width: 9.07868%; text-align: justify;\" data-align=\"center\">24.21</td>\r\n<td style=\"width: 7.73369%; text-align: justify;\" data-align=\"center\">7.26</td>\r\n<td style=\"width: 7.59919%; text-align: justify;\" data-align=\"center\">20</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 34.5662%; text-align: justify;\">Shammu Ashan (T20s)</td>\r\n<td style=\"width: 8.06994%; text-align: justify;\" data-align=\"center\">29</td>\r\n<td style=\"width: 8.87693%; text-align: justify;\" data-align=\"center\">9</td>\r\n<td style=\"width: 9.14593%; text-align: justify;\" data-align=\"center\">17</td>\r\n<td style=\"width: 6.6577%; text-align: justify;\" data-align=\"center\">6</td>\r\n<td style=\"width: 8.13719%; text-align: justify;\" data-align=\"center\">1/4</td>\r\n<td style=\"width: 9.07868%; text-align: justify;\" data-align=\"center\">16.5</td>\r\n<td style=\"width: 7.73369%; text-align: justify;\" data-align=\"center\">5.82</td>\r\n<td style=\"width: 7.59919%; text-align: justify;\" data-align=\"center\">17</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 34.5662%; text-align: justify;\">Lahiru Kumara</td>\r\n<td style=\"width: 8.06994%; text-align: justify;\" data-align=\"center\">7</td>\r\n<td style=\"width: 8.87693%; text-align: justify;\" data-align=\"center\">6</td>\r\n<td style=\"width: 9.14593%; text-align: justify;\" data-align=\"center\">22.3</td>\r\n<td style=\"width: 6.6577%; text-align: justify;\" data-align=\"center\">6</td>\r\n<td style=\"width: 8.13719%; text-align: justify;\" data-align=\"center\">2/24</td>\r\n<td style=\"width: 9.07868%; text-align: justify;\" data-align=\"center\">33.5</td>\r\n<td style=\"width: 7.73369%; text-align: justify;\" data-align=\"center\">8.93</td>\r\n<td style=\"width: 7.59919%; text-align: justify;\" data-align=\"center\">22.5</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 34.5662%; text-align: justify;\">Suminda Lakshan (T20s)</td>\r\n<td style=\"width: 8.06994%; text-align: justify;\" data-align=\"center\">11</td>\r\n<td style=\"width: 8.87693%; text-align: justify;\" data-align=\"center\">8</td>\r\n<td style=\"width: 9.14593%; text-align: justify;\" data-align=\"center\">25</td>\r\n<td style=\"width: 6.6577%; text-align: justify;\" data-align=\"center\">5</td>\r\n<td style=\"width: 8.13719%; text-align: justify;\" data-align=\"center\">2/38</td>\r\n<td style=\"width: 9.07868%; text-align: justify;\" data-align=\"center\">39.79</td>\r\n<td style=\"width: 7.73369%; text-align: justify;\" data-align=\"center\">7.96</td>\r\n<td style=\"width: 7.59919%; text-align: justify;\" data-align=\"center\">28</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 34.5662%; text-align: justify;\">Lasith Embuldeniya (T20s)</td>\r\n<td style=\"width: 8.06994%; text-align: justify;\" data-align=\"center\">4</td>\r\n<td style=\"width: 8.87693%; text-align: justify;\" data-align=\"center\">3</td>\r\n<td style=\"width: 9.14593%; text-align: justify;\" data-align=\"center\">9.2</td>\r\n<td style=\"width: 6.6577%; text-align: justify;\" data-align=\"center\">2</td>\r\n<td style=\"width: 8.13719%; text-align: justify;\" data-align=\"center\">1/9</td>\r\n<td style=\"width: 9.07868%; text-align: justify;\" data-align=\"center\">21.5</td>\r\n<td style=\"width: 7.73369%; text-align: justify;\" data-align=\"center\">4.6</td>\r\n<td style=\"width: 7.59919%; text-align: justify;\" data-align=\"center\">28</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 34.5662%; text-align: justify;\">Ramesh Mendis</td>\r\n<td style=\"width: 8.06994%; text-align: justify;\" data-align=\"center\">2</td>\r\n<td style=\"width: 8.87693%; text-align: justify;\" data-align=\"center\">2</td>\r\n<td style=\"width: 9.14593%; text-align: justify;\" data-align=\"center\">4</td>\r\n<td style=\"width: 6.6577%; text-align: justify;\" data-align=\"center\">1</td>\r\n<td style=\"width: 8.13719%; text-align: justify;\" data-align=\"center\">1/13</td>\r\n<td style=\"width: 9.07868%; text-align: justify;\" data-align=\"center\">22</td>\r\n<td style=\"width: 7.73369%; text-align: justify;\" data-align=\"center\">5.5</td>\r\n<td style=\"width: 7.59919%; text-align: justify;\" data-align=\"center\">24</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 34.5662%; text-align: justify;\">Vishwa Fernando</td>\r\n<td style=\"width: 8.06994%; text-align: justify;\" data-align=\"center\">1</td>\r\n<td style=\"width: 8.87693%; text-align: justify;\" data-align=\"center\">1</td>\r\n<td style=\"width: 9.14593%; text-align: justify;\" data-align=\"center\">2</td>\r\n<td style=\"width: 6.6577%; text-align: justify;\" data-align=\"center\">&ndash;</td>\r\n<td style=\"width: 8.13719%; text-align: justify;\" data-align=\"center\">&ndash;</td>\r\n<td style=\"width: 9.07868%; text-align: justify;\" data-align=\"center\">&ndash;</td>\r\n<td style=\"width: 7.73369%; text-align: justify;\" data-align=\"center\">8</td>\r\n<td style=\"width: 7.59919%; text-align: justify;\" data-align=\"center\">&ndash;</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 34.5662%; text-align: justify;\">Kamindu Mendis</td>\r\n<td style=\"width: 8.06994%; text-align: justify;\" data-align=\"center\">4</td>\r\n<td style=\"width: 8.87693%; text-align: justify;\" data-align=\"center\">3</td>\r\n<td style=\"width: 9.14593%; text-align: justify;\" data-align=\"center\">5</td>\r\n<td style=\"width: 6.6577%; text-align: justify;\" data-align=\"center\">&ndash;</td>\r\n<td style=\"width: 8.13719%; text-align: justify;\" data-align=\"center\">&ndash;</td>\r\n<td style=\"width: 9.07868%; text-align: justify;\" data-align=\"center\">&ndash;</td>\r\n<td style=\"width: 7.73369%; text-align: justify;\" data-align=\"center\">9.6</td>\r\n<td style=\"width: 7.59919%; text-align: justify;\" data-align=\"center\">&ndash;</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 34.5662%; text-align: justify;\">Lahiru Udara (T20s)</td>\r\n<td style=\"width: 8.06994%; text-align: justify;\" data-align=\"center\">34</td>\r\n<td style=\"width: 8.87693%; text-align: justify;\" data-align=\"center\">&ndash;</td>\r\n<td style=\"width: 9.14593%; text-align: justify;\" data-align=\"center\">&ndash;</td>\r\n<td style=\"width: 6.6577%; text-align: justify;\" data-align=\"center\">&ndash;</td>\r\n<td style=\"width: 8.13719%; text-align: justify;\" data-align=\"center\">&ndash;</td>\r\n<td style=\"width: 9.07868%; text-align: justify;\" data-align=\"center\">&ndash;</td>\r\n<td style=\"width: 7.73369%; text-align: justify;\" data-align=\"center\">&ndash;</td>\r\n<td style=\"width: 7.59919%; text-align: justify;\" data-align=\"center\">&ndash;</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 34.5662%; text-align: justify;\">Krishan Arachchige (T20s)</td>\r\n<td style=\"width: 8.06994%; text-align: justify;\" data-align=\"center\">15</td>\r\n<td style=\"width: 8.87693%; text-align: justify;\" data-align=\"center\">&ndash;</td>\r\n<td style=\"width: 9.14593%; text-align: justify;\" data-align=\"center\">&ndash;</td>\r\n<td style=\"width: 6.6577%; text-align: justify;\" data-align=\"center\">&ndash;</td>\r\n<td style=\"width: 8.13719%; text-align: justify;\" data-align=\"center\">&ndash;</td>\r\n<td style=\"width: 9.07868%; text-align: justify;\" data-align=\"center\">&ndash;</td>\r\n<td style=\"width: 7.73369%; text-align: justify;\" data-align=\"center\">&ndash;</td>\r\n<td style=\"width: 7.59919%; text-align: justify;\" data-align=\"center\">&ndash;</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 34.5662%; text-align: justify;\">Saminda Fernando (T20s)</td>\r\n<td style=\"width: 8.06994%; text-align: justify;\" data-align=\"center\">17</td>\r\n<td style=\"width: 8.87693%; text-align: justify;\" data-align=\"center\">&ndash;</td>\r\n<td style=\"width: 9.14593%; text-align: justify;\" data-align=\"center\">&ndash;</td>\r\n<td style=\"width: 6.6577%; text-align: justify;\" data-align=\"center\">&ndash;</td>\r\n<td style=\"width: 8.13719%; text-align: justify;\" data-align=\"center\">&ndash;</td>\r\n<td style=\"width: 9.07868%; text-align: justify;\" data-align=\"center\">&ndash;</td>\r\n<td style=\"width: 7.73369%; text-align: justify;\" data-align=\"center\">&ndash;</td>\r\n<td style=\"width: 7.59919%; text-align: justify;\" data-align=\"center\">&ndash;</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 34.5662%; text-align: justify;\">Pathum Nissanka</td>\r\n<td style=\"width: 8.06994%; text-align: justify;\" data-align=\"center\">4</td>\r\n<td style=\"width: 8.87693%; text-align: justify;\" data-align=\"center\">&ndash;</td>\r\n<td style=\"width: 9.14593%; text-align: justify;\" data-align=\"center\">&ndash;</td>\r\n<td style=\"width: 6.6577%; text-align: justify;\" data-align=\"center\">&ndash;</td>\r\n<td style=\"width: 8.13719%; text-align: justify;\" data-align=\"center\">&ndash;</td>\r\n<td style=\"width: 9.07868%; text-align: justify;\" data-align=\"center\">&ndash;</td>\r\n<td style=\"width: 7.73369%; text-align: justify;\" data-align=\"center\">&ndash;</td>\r\n<td style=\"width: 7.59919%; text-align: justify;\" data-align=\"center\">&ndash;</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 34.5662%; text-align: justify;\">Mahela Udawatte</td>\r\n<td style=\"width: 8.06994%; text-align: justify;\" data-align=\"center\">8</td>\r\n<td style=\"width: 8.87693%; text-align: justify;\" data-align=\"center\">&ndash;</td>\r\n<td style=\"width: 9.14593%; text-align: justify;\" data-align=\"center\">&ndash;</td>\r\n<td style=\"width: 6.6577%; text-align: justify;\" data-align=\"center\">&ndash;</td>\r\n<td style=\"width: 8.13719%; text-align: justify;\" data-align=\"center\">&ndash;</td>\r\n<td style=\"width: 9.07868%; text-align: justify;\" data-align=\"center\">&ndash;</td>\r\n<td style=\"width: 7.73369%; text-align: justify;\" data-align=\"center\">&ndash;</td>\r\n<td style=\"width: 7.59919%; text-align: justify;\" data-align=\"center\">&ndash;</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 34.5662%; text-align: justify;\">Ashan Priyanjan</td>\r\n<td style=\"width: 8.06994%; text-align: justify;\" data-align=\"center\">3</td>\r\n<td style=\"width: 8.87693%; text-align: justify;\" data-align=\"center\">&ndash;</td>\r\n<td style=\"width: 9.14593%; text-align: justify;\" data-align=\"center\">&ndash;</td>\r\n<td style=\"width: 6.6577%; text-align: justify;\" data-align=\"center\">&ndash;</td>\r\n<td style=\"width: 8.13719%; text-align: justify;\" data-align=\"center\">&ndash;</td>\r\n<td style=\"width: 9.07868%; text-align: justify;\" data-align=\"center\">&ndash;</td>\r\n<td style=\"width: 7.73369%; text-align: justify;\" data-align=\"center\">&ndash;</td>\r\n<td style=\"width: 7.59919%; text-align: justify;\" data-align=\"center\">&ndash;</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<figure></figure>\r\n<figure><hr />\r\n<h2 style=\"text-align: justify;\">SLBL vs SLGR Probable Playing 11 for Today&rsquo;s Match</h2>\r\n<h3 style=\"text-align: justify;\"><span id=\"SLC_Blues_Playing_11\"></span>SLC Blues Playing 11</h3>\r\n<p style=\"text-align: justify;\">Sadeera Samarawickrama, Nishan Madushka, Dhananjaya Lakshan, Pavan Rathnayake, Angelo Perera (c), Sahan Arachchige, Ashen Bandara, Shiran Fernando, Suranga Lakmal, Praveen Jayawickrama, Dilshan Madushanka.</p>\r\n<h3 style=\"text-align: justify;\"><span id=\"SLC_Greens_Playing_11\"></span>SLC Greens Playing 11</h3>\r\n<p style=\"text-align: justify;\">Lahiru Udara, Mahela Udawatte, Pathum Nissanka, Kamindu Mendis, Ashan Priyanjan (c), Sammu Ashan, Ramesh Mendis, Ishan Jayaratne, Suminda Lakshan, Lahiru Kumara, Lakshan Sandakan.</p>\r\n<hr />\r\n<h2 style=\"text-align: justify;\"><span id=\"SLBL_vs_SLGR_Fantasy_Cricket_Tips\"></span>SLBL vs SLGR Fantasy Cricket Tips</h2>\r\n<p style=\"text-align: justify;\"><strong>SLBL</strong></p>\r\n<p style=\"text-align: justify;\"><strong>Ashen Bandara</strong>&nbsp;&ndash; was the top run-scorer for the Blues in the last match as he has scored 45 runs at a strike rate of 125 runs and he hit 5 fours in the knock.</p>\r\n<p style=\"text-align: justify;\"><strong>Dhananjaya Lakshan</strong>&nbsp;&ndash; picked up a wicket from 2 overs at an economy of 3 in the last match. he is also bats in top order but scores only 4 runs off 2 balls. His all-rounder ability makes him a good fantasy points source.</p>\r\n<p style=\"text-align: justify;\"><strong>Angelo Perera</strong>&nbsp;&ndash; he has picked 2 wickets from 2 overs at an economy rate of 3 in the last match but scored only 7 runs in 9 balls. His all-rounder ability makes him the top captain option for the fantasy teams.</p>\r\n<p style=\"text-align: justify;\"><strong>SLGR</strong></p>\r\n<p style=\"text-align: justify;\"><strong>Pathum Nissanka </strong>&ndash;&nbsp;The right-hand batsman has bats Greens bats at 1st down for them, In the last match He smashed 45 runs in 36 balls and he can contribute with the bat against in this match.</p>\r\n<p style=\"text-align: justify;\"><strong>Kamindu Mendis&nbsp;</strong>&ndash; The right-hand batsman bats in the middle order and was the top scorer for Greens in the last match as he scored 74 runs in 48 deliveries including 5 fours and 3 sixes.</p>\r\n</figure>\r\n</figure>\r\n</figure>', 'SLC Invitational T20', 3, 'Covering', NULL, NULL, 'SLRE.png', 'SLRE', 'SLGY.png', 'SLGY', 'Pre-Toss Team is Published', '                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    ', NULL, 'publish', '', 'SLC Red', 'SLC Green', 0);

-- --------------------------------------------------------

--
-- Table structure for table `new_data`
--

CREATE TABLE `new_data` (
  `id` int(11) NOT NULL,
  `heading` text COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `image` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `new_data`
--

INSERT INTO `new_data` (`id`, `heading`, `content`, `image`) VALUES
(20, 'Fantafeat : Low Commision Fantasy', '<h1 class=\"entry-title\">FantaFeat Referral Code【 FREEPLAY 】| App Download | Customer Care Number<br />FantaFeat Apk Download Link</h1>\r\n<p style=\"font-size: 18px;\">As of now, the Fantafeat app is only available for Android users, but soon IOS users will also be able to play on Fantafeat fantasy.</p>\r\n<table style=\"border-collapse: collapse; width: 100%;\" border=\"1\">\r\n<tbody>\r\n<tr>\r\n<th style=\"width: 47.2764%; text-align: center;\">App</th>\r\n<th style=\"width: 52.7236%; text-align: center;\">FantaFeat Fantasy App</th>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 47.2764%; text-align: center;\">Apk (Android)</td>\r\n<td style=\"width: 52.7236%; text-align: center;\"><strong><a href=\"https://www.fantafeat.com/apk/download.html?refcode=FREEPLAY\">FantaFeat Apk Download</a></strong></td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 47.2764%; text-align: center;\">FantaFeat Referral Code</td>\r\n<td style=\"width: 52.7236%; text-align: center;\"><strong>FREEPLAY</strong></td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 47.2764%; text-align: center;\">Signup Bonus</td>\r\n<td style=\"width: 52.7236%; text-align: center;\">Rs 100</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 47.2764%; text-align: center;\">Contact mail</td>\r\n<td style=\"width: 52.7236%; text-align: center;\">&nbsp;<a href=\"mailto:support@fantafeat.com\">Support@fantafeat.com</a></td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 47.2764%; text-align: center;\">Contact Number</td>\r\n<td style=\"width: 52.7236%; text-align: center;\"><a href=\"tel:+91 9534 22 9534\">+91 9534 22 9534</a></td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 47.2764%; text-align: center;\">Minimum Withdrawal</td>\r\n<td style=\"width: 52.7236%; text-align: center;\">Rs 200</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<figure class=\"wp-block-table\"></figure>\r\n<h3 id=\"h-video-tutorial-for-hindi-users\"><strong>Video Tutorial For Hindi Users</strong></h3>\r\n<figure class=\"wp-block-embed alignfull is-type-video is-provider-youtube wp-block-embed-youtube wp-embed-aspect-16-9 wp-has-aspect-ratio\">\r\n<div class=\"wp-block-embed__wrapper\" style=\"text-align: center;\"><iframe style=\"width: 197px; height: 111px;\" title=\"Fantafeat -  Referral Code - { FREEPLAY }, Get 100 Sign up Bonus, App Download Link, Customer Care\" src=\"https://www.youtube.com/embed/Yk1nX5iLpQo?feature=oembed\" width=\"364\" height=\"205\" frameborder=\"0\" allowfullscreen=\"allowfullscreen\" loading=\"lazy\" data-mce-fragment=\"1\"></iframe></div>\r\n</figure>\r\n<h2>How To Signup/Login On FantaFeat App?</h2>\r\n<p style=\"font-size: 18px;\">Register On Fantafeat fantasy app as soon as possible and get early comer benefits like &ndash; Low competition, Higher Referrals, Up to 100% Bonus leagues, Multiple sports Like Baseball, football, basketball, cricket, volleyball and much more. Stay ahead of the competition and earn the maximum possible cash amount you can.</p>\r\n<p style=\"font-size: 18px;\"><strong>1.</strong> <strong><a href=\"https://www.fantafeat.com/apk/download.html?refcode=FREEPLAY\">Download the FantaFeat Apk</a></strong><br /><strong>2.</strong> Click on &ldquo;<strong>New To Fantafeat</strong>&ldquo;<br /><strong>3.</strong> Enter your Fullname, Email, Password, Mobile, Gender, Team Name, State<br /><strong>4.</strong> Enter FantaFeat Referral Code &ldquo;<strong>FREEPLAY</strong>&ldquo;.<br /><strong>5.</strong> Verify mail id and mobile number via OTP.</p>\r\n<div class=\"wp-block-image\">\r\n<figure class=\"aligncenter size-large is-resized\"><a href=\"https://www.fantafeat.com/apk/download.html?refcode=FREEPLAY\"><img class=\"wp-image-7174\" style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"https://www.fantasyexpertnews.com/wp-content/uploads/2021/01/68650-ipad-play-google-button-iphone-android-now-1-1024x355.png\" sizes=\"(max-width: 282px) 100vw, 282px\" srcset=\"https://www.fantasyexpertnews.com/wp-content/uploads/2021/01/68650-ipad-play-google-button-iphone-android-now-1-1024x355.png 1024w, https://www.fantasyexpertnews.com/wp-content/uploads/2021/01/68650-ipad-play-google-button-iphone-android-now-1-300x104.png 300w, https://www.fantasyexpertnews.com/wp-content/uploads/2021/01/68650-ipad-play-google-button-iphone-android-now-1-768x266.png 768w, https://www.fantasyexpertnews.com/wp-content/uploads/2021/01/68650-ipad-play-google-button-iphone-android-now-1-1536x533.png 1536w, https://www.fantasyexpertnews.com/wp-content/uploads/2021/01/68650-ipad-play-google-button-iphone-android-now-1.png 2000w\" alt=\"\" width=\"282\" height=\"98\" loading=\"lazy\" /></a></figure>\r\n</div>\r\n<h3 id=\"h-new-users-registration-process-shown-in-figure\">New Users Registration Process Shown in Figure</h3>\r\n<div class=\"wp-block-image\">\r\n<figure class=\"aligncenter size-large is-resized\"><img class=\"wp-image-7175\" style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"https://www.fantasyexpertnews.com/wp-content/uploads/2021/01/4-Digit-Otp-5-min-473x1024.jpg\" sizes=\"(max-width: 237px) 100vw, 237px\" srcset=\"https://www.fantasyexpertnews.com/wp-content/uploads/2021/01/4-Digit-Otp-5-min-473x1024.jpg 473w, https://www.fantasyexpertnews.com/wp-content/uploads/2021/01/4-Digit-Otp-5-min-709x1536.jpg 709w\" alt=\"Fantafeat New User Register\" width=\"237\" height=\"512\" loading=\"lazy\" /></figure>\r\n</div>\r\n<p>&nbsp;</p>\r\n<h3 id=\"h-fill-all-basic-details-and-click-on-sign-up-button-for-next-process\">Fill all basic details and click on sign up button for next process</h3>\r\n<div class=\"wp-block-image\">\r\n<figure class=\"aligncenter size-large is-resized\"><img class=\"wp-image-7176\" style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"https://www.fantasyexpertnews.com/wp-content/uploads/2021/01/WhatsApp-Image-2021-01-28-at-5.43.52-PM-2-min-473x1024.jpeg\" alt=\"fantafeat Referral code \" width=\"237\" height=\"512\" loading=\"lazy\" /></figure>\r\n</div>\r\n<h2>Email &amp; Mobile Verification</h2>\r\n<p style=\"font-size: 18px;\">Mobile Number and Email id is verified during the signup process, All you need is a valid number with a valid email id to be eligible for further verifications.</p>\r\n<h2>FantaFeat Account Verification</h2>\r\n<p style=\"font-size: 18px;\">Just like you verified all the documents on Other Fantasy app like Dream11, on the same side you have to upload valid documents on FantaFeat as well. The users needs to verify their mobile Number, email id, Pan card, Bank Details to be eligible for withdrawal his/her Winning amount.</p>\r\n<h3>Pan Card &amp; Bank Verification</h3>\r\n<p style=\"font-size: 18px;\">Verifying PAN card and Bank details is compulsory to get withdraw your winnings in Bank account.</p>\r\n<p style=\"font-size: 18px;\">1. Your Name should be same on { PAN Card &amp; Bank Proof ( Passbook/check) } <br />2. PAN Card Number, Bank Account Number<br />3. Date of Birth, State, Bank Name<br />4. Account Number, IFSC Code of Your Bank Branch<br />Shown in figure .</p>\r\n<div class=\"wp-block-image\">\r\n<figure class=\"aligncenter size-large is-resized\"><img class=\"wp-image-7182\" style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"https://www.fantasyexpertnews.com/wp-content/uploads/2021/01/WhatsApp-Image-2021-01-28-at-5.43.52-PM-3-1-473x1024.jpeg\" sizes=\"(max-width: 237px) 100vw, 237px\" srcset=\"https://www.fantasyexpertnews.com/wp-content/uploads/2021/01/WhatsApp-Image-2021-01-28-at-5.43.52-PM-3-1-473x1024.jpeg 473w, https://www.fantasyexpertnews.com/wp-content/uploads/2021/01/WhatsApp-Image-2021-01-28-at-5.43.52-PM-3-1-709x1536.jpeg 709w\" alt=\"Fantafeat Pan card verification\" width=\"237\" height=\"512\" loading=\"lazy\" />\r\n<figcaption></figcaption>\r\n</figure>\r\n</div>\r\n<div class=\"wp-block-image\">\r\n<figure class=\"aligncenter size-large is-resized\"><img class=\"wp-image-7181\" style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"https://www.fantasyexpertnews.com/wp-content/uploads/2021/01/WhatsApp-Image-2021-01-28-at-5.43.52-PM-4-473x1024.jpeg\" alt=\"\" width=\"237\" height=\"512\" loading=\"lazy\" /></figure>\r\n</div>\r\n<p>&nbsp;</p>\r\n<h2 id=\"h-fantafeat-customer-care-number\">FantaFeat Customer Care Number</h2>\r\n<p style=\"font-size: 18px;\">There are lots of ways to contact to <strong>FantaFeat</strong> Customer care. We are indexing various ways to connect with FantaFeat care regarding any issues.</p>\r\n<table style=\"border-collapse: collapse; width: 100%; height: 154px;\" border=\"1\">\r\n<tbody>\r\n<tr style=\"height: 22px;\">\r\n<th style=\"width: 39.2737%; height: 22px;\">Contact Ways</th>\r\n<th style=\"width: 60.659%; text-align: center; height: 22px;\">Links/Contact</th>\r\n</tr>\r\n<tr style=\"height: 22px;\">\r\n<td style=\"width: 39.2737%; text-align: center; height: 22px;\">Support Email</td>\r\n<td style=\"width: 60.659%; text-align: center; height: 22px;\"><a href=\"mailto:support@fantafeat.com\">support@fantafeat.com</a></td>\r\n</tr>\r\n<tr style=\"height: 22px;\">\r\n<td style=\"width: 39.2737%; text-align: center; height: 22px;\">Call/Whatsapp</td>\r\n<td style=\"width: 60.659%; text-align: center; height: 22px;\"><strong>+91 9534 22 9534</strong></td>\r\n</tr>\r\n<tr style=\"height: 22px;\">\r\n<td style=\"width: 39.2737%; text-align: center; height: 22px;\">Telegram</td>\r\n<td style=\"width: 60.659%; text-align: center; height: 22px;\"><a href=\"https://t.me/fantafeat\">Official Telegram</a></td>\r\n</tr>\r\n<tr style=\"height: 22px;\">\r\n<td style=\"width: 39.2737%; text-align: center; height: 22px;\">Instagram</td>\r\n<td style=\"width: 60.659%; text-align: center; height: 22px;\"><a href=\"https://instagram.com/fantafeat\">Official Instagram</a></td>\r\n</tr>\r\n<tr style=\"height: 22px;\">\r\n<td style=\"width: 39.2737%; text-align: center; height: 22px;\">Facebook</td>\r\n<td style=\"width: 60.659%; text-align: center; height: 22px;\"><a href=\"https://www.facebook.com/fantafeatofficial/\">Official Page</a></td>\r\n</tr>\r\n<tr style=\"height: 22px;\">\r\n<td style=\"width: 39.2737%; text-align: center; height: 22px;\">Twitter</td>\r\n<td style=\"width: 60.659%; text-align: center; height: 22px;\"><a href=\"https://twitter.com/fantafeat_offic\">Official Twitter Profile</a></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<figure class=\"wp-block-table\"></figure>\r\n<h2 id=\"h-fantafeat-withdrawal-policy\">FantaFeat Withdrawal Policy</h2>\r\n<p style=\"font-size: 18px;\">You Can withdrawal winning Amount in your bank. We contacted Fantafeat customer care and they assured and informed that Paytm withdrawal (Without KYC is coming soon) along with instant withdrawals in February -2021. You Can withdrawal minimum <strong>200 </strong>rs in your bank. You will get this withdrawal in 24 &ndash; 48 hours maximum.</p>\r\n<h2>FantaFeat Referral Code</h2>\r\n<p style=\"font-size: 18px;\">FantaFeat offers great referral benefits to his users, where a referred person gets 100Rs as a signup bonus and the referrer gets 100Rs after the deposit of 20Rs more made by the referred person in his/her FantaFeat app account.</p>\r\n<p style=\"font-size: 18px;\"><strong>1.</strong> Click on Top Left Navigation Menu &ldquo;Three lines&rdquo;.<br /><strong>2. </strong>Click on &ldquo;Refer Friends &rdquo;<br /><strong>3.</strong> Copy your unique FantaFeat refer code.<br /><strong>4.</strong> You can Share it directly on Whatsapp and other social media handles.<br /><strong>5.</strong> Your refer person will get 100Rs signup bonus.<br /><strong>6.</strong> You will get 100Rs bonus just after your referral deposits 20Rs or more.</p>\r\n<div class=\"wp-block-image\">\r\n<figure class=\"aligncenter size-large is-resized\"><img class=\"wp-image-7172\" style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"https://www.fantasyexpertnews.com/wp-content/uploads/2021/01/WhatsApp-Image-2021-01-28-at-5.43.52-PM-473x1024.jpeg\" alt=\"FantaFeat Referral Code\" width=\"237\" height=\"512\" loading=\"lazy\" /></figure>\r\n</div>\r\n<h2 id=\"h-fantafeat-deposit-offer\">Fantafeat Deposit offer</h2>\r\n<p class=\"has-medium-font-size\">If you are thinking of making a deposit on FantaFeat, then you will get an extra bonus Upto 4th times deposit. But you have to deposit rs 100 or above.</p>\r\n<table style=\"border-collapse: collapse; width: 100%;\" border=\"1\">\r\n<tbody>\r\n<tr>\r\n<td style=\"width: 72.6295%; text-align: center;\"><strong>1st Time Deposit</strong></td>\r\n<td style=\"width: 27.3033%; text-align: center;\"><strong>100%</strong></td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 72.6295%; text-align: center;\"><strong>2nd Time Deposit</strong></td>\r\n<td style=\"width: 27.3033%; text-align: center;\"><strong>75%</strong></td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 72.6295%; text-align: center;\"><strong>3rd Time Deposit</strong></td>\r\n<td style=\"width: 27.3033%; text-align: center;\"><strong>50%</strong></td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 72.6295%; text-align: center;\"><strong>4th Time Deposit</strong></td>\r\n<td style=\"width: 27.3033%; text-align: center;\"><strong>25%</strong></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<div class=\"wp-block-group\">\r\n<div class=\"wp-block-group__inner-container\">\r\n<div class=\"wp-block-columns\">\r\n<div class=\"wp-block-column\" style=\"flex-basis: 100%;\">&nbsp;</div>\r\n</div>\r\n</div>\r\n</div>\r\n<p>If You Facing any issues you can contact us on whatsapp &ndash; 7725948516.</p>', 'WhatsApp-Image-2021-01-28-at-5.38.20-PM-1-min.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `payment_request`
--

CREATE TABLE `payment_request` (
  `id` int(11) NOT NULL,
  `username` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_points` int(11) NOT NULL,
  `payment_type` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_number` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `reward_limit`
--

CREATE TABLE `reward_limit` (
  `id` int(11) NOT NULL,
  `per_refer` int(11) NOT NULL,
  `video_ad` int(11) NOT NULL,
  `minimum_limit` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reward_limit`
--

INSERT INTO `reward_limit` (`id`, `per_refer`, `video_ad`, `minimum_limit`) VALUES
(0, 10, 10, 300);

-- --------------------------------------------------------

--
-- Table structure for table `slider`
--

CREATE TABLE `slider` (
  `id` int(11) NOT NULL,
  `url` text COLLATE utf8_unicode_ci NOT NULL,
  `slider` text COLLATE utf8_unicode_ci NOT NULL,
  `category` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `slider`
--

INSERT INTO `slider` (`id`, `url`, `slider`, `category`) VALUES
(46, '-hhhhhh', 'appimg.png', '14'),
(49, 'https://real11.com/download/?referId=Criccoach', 'Join NOw.png', '14'),
(51, 'https://telegram.me/criccoach', 't.me_cricoachapp(1).jpg', '14'),
(54, 'https://real11.com/download/?referId=Criccoach', 'Click Here.png', '16'),
(55, '0', '6543.jpg', '14');

-- --------------------------------------------------------

--
-- Table structure for table `subcategory`
--

CREATE TABLE `subcategory` (
  `id` int(11) NOT NULL,
  `sub_c_name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `main_c_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subcategory`
--

INSERT INTO `subcategory` (`id`, `sub_c_name`, `main_c_id`) VALUES
(6, 'sss', 16),
(7, 'Vivo Ipl 2021', 14);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `email` varchar(200) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`id`, `username`, `password`, `email`, `image`) VALUES
(1, 'admin', 'admin', 'shresthgoel2@gmail.com', 'btlogos.png');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_noti`
--

CREATE TABLE `tbl_noti` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `read` int(11) NOT NULL DEFAULT 0,
  `msg` varchar(255) NOT NULL,
  `date` varchar(255) NOT NULL,
  `img` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_noti`
--

INSERT INTO `tbl_noti` (`id`, `title`, `read`, `msg`, `date`, `img`) VALUES
(80, 'Image', 0, 'My Image', '2021-01-26 09:32:37', 'https://digitalfiroz.com/CricCoach/img/Thumbnail Placeholder.png'),
(81, 'Test', 0, 'Testing By criccoach', '2021-01-26 09:41:52', 'https://digitalfiroz.com/CricCoach/img/FANTASY TEAM PREDICTION.jpg'),
(82, 'Test', 0, 'Testing By criccoach', '2021-01-26 14:23:41', 'https://digitalfiroz.com/CricCoach/img/FANTASY TEAM PREDICTION.jpg'),
(83, 'Sa-w v Pak-w T20I', 0, 'Final Team Published ', '2021-01-29 18:56:35', 'https://digitalfiroz.com/CricCoach/img/'),
(84, 'Super Smash T20', 0, 'Canterbury Kings v Otago Volts', '2021-01-29 20:19:47', 'https://digitalfiroz.com/CricCoach/img/'),
(85, 'Abu Dhabi T10', 0, 'Final Team Published ', '2021-01-29 21:50:38', 'https://digitalfiroz.com/CricCoach/img/'),
(86, 'BigBash T20', 0, 'SIX vs SCO Pre Toss Preview And Team Published', '2021-01-30 11:53:37', 'https://digitalfiroz.com/CricCoach/img/'),
(87, 'Abu Dhabi T10', 0, 'BT v MA | Match Preview + Stats Published', '2021-01-30 12:08:18', 'https://digitalfiroz.com/CricCoach/img/'),
(88, 'BigBash T20', 0, 'SIX vs SCO | Final Team Published', '2021-01-30 13:20:30', 'https://digitalfiroz.com/CricCoach/img/'),
(89, 'BigBash T20', 0, 'Thunder v Heat | Match preview + Stats Update + Team', '2021-01-30 15:45:15', 'https://digitalfiroz.com/CricCoach/img/'),
(90, 'Abu Dhabi T10', 0, 'BT v MA |  Abu Dhabi T10 | Final Teams Published', '2021-01-30 17:19:27', 'https://digitalfiroz.com/CricCoach/img/'),
(91, 'BigBash T20', 0, 'Final Team Published | Thunders v Heat', '2021-01-31 13:28:48', 'https://digitalfiroz.com/CricCoach/img/'),
(92, 'BigBash T20', 0, 'Team Updated | Check Final Teams ', '2021-01-31 13:36:17', 'https://digitalfiroz.com/CricCoach/img/'),
(93, 'Abu Dhabi T10', 0, 'BT v NW | Player Stats + Preview + Team Update', '2021-01-31 15:54:29', 'https://digitalfiroz.com/CricCoach/img/'),
(94, 'Abu Dhabi T10', 0, 'TAD v PD | Final Team Published', '2021-01-31 17:21:37', 'https://digitalfiroz.com/CricCoach/img/'),
(95, 'Abu Dhabi T10', 0, 'TAD v PD | Final Team Published', '2021-01-31 17:22:02', 'https://digitalfiroz.com/CricCoach/img/'),
(96, 'Abu Dhabi T10', 0, 'TAD v PD | Final Team Published', '2021-01-31 17:22:24', 'https://digitalfiroz.com/CricCoach/img/'),
(97, 'Sa-w v Pak-w T20I', 0, 'Final Team published', '2021-01-31 18:53:57', 'https://digitalfiroz.com/CricCoach/img/'),
(98, 'Abu Dhabi T10', 0, 'QAL v DG | Final Team Published', '2021-01-31 21:55:10', 'https://digitalfiroz.com/CricCoach/img/'),
(99, 'Abu Dhabi T10', 0, 'PD v BT | Final Team Published ', '2021-02-01 17:14:58', 'https://digitalfiroz.com/CricCoach/img/'),
(100, 'Abu Dhabi T10', 0, 'TAD v NW | Final Team Published', '2021-02-01 19:40:58', 'https://digitalfiroz.com/CricCoach/img/'),
(101, 'South Africa Odd Cup', 0, 'Final Team Published ', '2021-02-02 13:28:17', 'https://digitalfiroz.com/CricCoach/img/'),
(102, 'Abu Dhabi T10', 0, 'BT v QAL | Final Team Published', '2021-02-03 17:27:56', 'https://digitalfiroz.com/CricCoach/img/'),
(103, 'Abu Dhabi T10', 0, 'Final Team Published ', '2021-02-03 21:55:38', 'https://digitalfiroz.com/CricCoach/img/'),
(104, 'BigBash T20', 0, 'PS v HEA | Final Team Published', '2021-02-04 13:54:08', 'https://digitalfiroz.com/CricCoach/img/'),
(105, 'Abu Dhabi T10', 0, 'Final Team Published', '2021-02-04 17:25:00', 'https://digitalfiroz.com/CricCoach/img/'),
(106, 'test', 0, 'test', '2021-02-04 20:02:57', 'https://digitalfiroz.com/CricCoach/img/'),
(107, 'Abu Dhabi T10', 0, 'TAD v BT | Final Team Published', '2021-02-04 21:58:58', 'https://digitalfiroz.com/CricCoach/img/'),
(108, 'Abu Dhabi T10', 0, 'NW v DB | Final Team Published', '2021-02-05 17:24:24', 'https://digitalfiroz.com/CricCoach/img/'),
(109, 'Abu Dhabi T10', 0, 'TAd v QAL | Final Team Published', '2021-02-05 19:38:34', 'https://digitalfiroz.com/CricCoach/img/'),
(110, 'BigBash T20', 0, 'SIX vs SCO | Final Team Published', '2021-02-06 14:00:55', 'https://digitalfiroz.com/CricCoach/img/'),
(111, 'West Indies ODD Cup', 0, 'LEI v WNI Player Stats + Preview Update', '2021-02-06 20:59:05', 'https://digitalfiroz.com/CricCoach/img/'),
(112, 'Abu Dhabi T10', 0, 'DB v NW | Final Team Published', '2021-02-06 21:23:39', 'https://digitalfiroz.com/CricCoach/img/'),
(113, 'Westindies ODD', 0, 'Final Team Published', '2021-02-07 18:29:06', 'https://digitalfiroz.com/CricCoach/img/'),
(114, 'ECS T10 - Barcelona', 0, '? All Matches Player Stats + Lineups Update', '2021-02-07 18:31:43', 'https://digitalfiroz.com/CricCoach/img/'),
(115, 'ECS-T10 ', 0, 'Final Team Published ', '2021-02-08 14:53:55', 'https://digitalfiroz.com/CricCoach/img/'),
(116, 'West Indies ODD Cup', 0, 'GUY v BAR | Player Stats + Team Update ', '2021-02-08 16:15:58', 'https://digitalfiroz.com/CricCoach/img/WhatsApp Image 2021-02-08 at 4.15.20 PM.jpeg'),
(117, 'ECS T10 - Barcelona', 0, 'GRA v XI-S | Players Stats + Preview Update', '2021-02-08 16:21:33', 'https://digitalfiroz.com/CricCoach/img/WhatsApp Image 2021-02-08 at 4.20.37 PM.jpeg'),
(118, 'ECS T10 - Barcelona', 0, 'FTH v MIB | Final Team Published', '2021-02-08 16:47:33', 'https://digitalfiroz.com/CricCoach/img/WhatsApp Image 2021-02-08 at 4.47.14 PM.jpeg'),
(119, 'Important Update', 0, 'If lineups out late, then teams will update also on telegram channel. so join Telegram @criccoachapp', '2021-02-08 23:02:04', 'https://digitalfiroz.com/CricCoach/img/'),
(120, 'Important Update', 0, 'If lineups out late, then teams will update also on telegram channel. so join Telegram @criccoachapp', '2021-02-08 23:02:16', 'https://digitalfiroz.com/CricCoach/img/'),
(121, 'ECS T10 - Barcelona', 0, 'XI-S v MIB Final TEam Published', '2021-02-10 12:55:07', 'https://digitalfiroz.com/CricCoach/img/'),
(122, 'ECS T10 - Barcelona', 0, 'XI-S v MIB Final TEam Published', '2021-02-10 12:56:51', 'https://digitalfiroz.com/CricCoach/img/'),
(123, 'West Indies ODD Cup', 0, 'LEE vs BAR | Preview + Stats + Pre toss Team Update', '2021-02-10 14:16:22', 'https://digitalfiroz.com/CricCoach/img/WhatsApp Image 2021-02-10 at 2.16.00 PM.jpeg'),
(124, 'Important Update', 0, 'If lineups out late, then teams will update also on telegram channel. so join Telegram @criccoachapp', '2021-02-10 15:27:00', 'https://digitalfiroz.com/CricCoach/img/'),
(125, 'ECS T10 - Barcelona', 0, 'BEN vs XI-S | Final Team Published', '2021-02-10 16:54:37', 'https://digitalfiroz.com/CricCoach/img/'),
(126, 'ECS T10 - Barcelona', 0, 'FTH v GRA | FInal Team Published', '2021-02-10 18:47:51', 'https://digitalfiroz.com/CricCoach/img/'),
(127, 'South Africa Tour of Pakistan', 0, 'PAK v SA | Players Stats + Preview Update', '2021-02-10 19:29:44', 'https://digitalfiroz.com/CricCoach/img/'),
(128, 'West Indies ODD Cup', 0, 'Final Team Published', '2021-02-10 22:58:26', 'https://digitalfiroz.com/CricCoach/img/'),
(129, 'South Africa Tour of Pakistan', 0, 'Final Team Published ', '2021-02-11 18:21:59', 'https://digitalfiroz.com/CricCoach/img/'),
(130, 'South Africa Tour of Pakistan', 0, 'Final Team Published ', '2021-02-11 18:24:35', 'https://digitalfiroz.com/CricCoach/img/'),
(131, 'West Indies ODD Cup', 0, 'Final Team Published ', '2021-02-11 18:28:09', 'https://digitalfiroz.com/CricCoach/img/'),
(132, 'ECS T10 - Barcelona', 0, 'XI-S v FTH | Final Team Published', '2021-02-12 14:46:34', 'https://digitalfiroz.com/CricCoach/img/'),
(133, 'ECS T10 - Barcelona', 0, 'XI-S v FTH | Final Team Published', '2021-02-12 14:48:20', 'https://digitalfiroz.com/CricCoach/img/'),
(134, 'ECS T10 - Barcelona', 0, 'XI-S v FTH | Final Team Published', '2021-02-12 14:48:38', 'https://digitalfiroz.com/CricCoach/img/'),
(135, 'ECS T10 - Barcelona', 0, 'Final Team Published', '2021-02-12 16:58:24', 'https://digitalfiroz.com/CricCoach/img/'),
(136, 'South Africa Tour of Pakistan', 0, 'Final Team Published', '2021-02-13 18:22:16', 'https://digitalfiroz.com/CricCoach/img/'),
(137, 'ECS T10 - Barcelona', 0, 'Final Team Published ', '2021-02-15 14:56:41', 'https://digitalfiroz.com/CricCoach/img/'),
(138, 'ECS T10 - Barcelona', 0, 'Final Team Published ', '2021-02-15 14:57:02', 'https://digitalfiroz.com/CricCoach/img/'),
(139, 'ECS T10 - Barcelona', 0, 'Final Team Published ', '2021-02-15 16:52:40', 'https://digitalfiroz.com/CricCoach/img/'),
(140, 'ECS T10 - Barcelona', 0, 'Final Team Published ', '2021-02-15 16:52:59', 'https://digitalfiroz.com/CricCoach/img/'),
(141, 'Important Update', 0, 'If lineups out late, then teams will update also on telegram channel. so join Telegram @criccoachapp', '2021-02-15 17:04:05', 'https://digitalfiroz.com/CricCoach/img/'),
(142, 'West Indies ODD Cup', 0, 'Final Team Published', '2021-02-15 18:20:25', 'https://digitalfiroz.com/CricCoach/img/'),
(143, 'ECS T10 - Barcelona', 0, 'SKY vs BAK | Final Team Published', '2021-02-15 18:54:22', 'https://digitalfiroz.com/CricCoach/img/'),
(144, 'ECS T10 - Barcelona', 0, 'SKY vs BAK | Final Team Published', '2021-02-15 18:56:42', 'https://digitalfiroz.com/CricCoach/img/'),
(145, 'Jharkand Women\'s T20', 0, 'Final Team Published', '2021-02-16 13:51:52', 'https://digitalfiroz.com/CricCoach/img/'),
(146, 'Jharkand Women\'s T20', 0, 'Final Team Published', '2021-02-16 13:52:24', 'https://digitalfiroz.com/CricCoach/img/'),
(147, 'West Indies ODD', 0, 'WIS vs JAM | Player Stats + Preview update ', '2021-02-16 15:39:28', 'https://digitalfiroz.com/CricCoach/img/'),
(148, 'West Indies ODD Cup', 0, 'WIS v JAM | Pre Toss Team Published ', '2021-02-16 17:34:07', 'https://digitalfiroz.com/CricCoach/img/'),
(149, 'Important Update', 0, 'If lineups out late, then teams will update also on telegram channel. so join Telegram @criccoachapp', '2021-02-16 22:51:25', 'https://digitalfiroz.com/CricCoach/img/'),
(150, 'Important Update', 0, 'If lineups out late, then teams will update also on telegram channel. so join Telegram @criccoachapp', '2021-02-16 22:51:40', 'https://digitalfiroz.com/CricCoach/img/'),
(151, 'Jharkand Women\'s T20', 0, 'Final Team Published', '2021-02-17 13:53:34', 'https://digitalfiroz.com/CricCoach/img/'),
(152, 'Jharkand Women\'s T20', 0, 'Final Team Published', '2021-02-17 13:54:36', 'https://digitalfiroz.com/CricCoach/img/'),
(153, 'West Indies ODD Cup', 0, 'LEE vs TRI | Player Stats + Preview update ', '2021-02-17 15:54:07', 'https://digitalfiroz.com/CricCoach/img/'),
(154, 'ECS T10 - Barcelona', 0, 'Final Team Published ', '2021-02-17 16:57:16', 'https://digitalfiroz.com/CricCoach/img/'),
(155, 'ECS T10 - Barcelona', 0, 'Final Team Published ', '2021-02-17 18:54:54', 'https://digitalfiroz.com/CricCoach/img/'),
(156, 'ECS T10 - Barcelona', 0, 'Final Team Published ', '2021-02-17 18:56:10', 'https://digitalfiroz.com/CricCoach/img/'),
(157, 'West Indies ODD Cup', 0, 'Final Team Published ', '2021-02-17 22:54:07', 'https://digitalfiroz.com/CricCoach/img/'),
(158, 'ECS T10 - Barcelona', 0, 'Final Team Published ', '2021-02-18 16:56:00', 'https://digitalfiroz.com/CricCoach/img/'),
(159, 'Ford Trophy ( New Zealand Odd Cup )', 0, 'WF v ND | Match Preview + Player Stats + Teams  Update ', '2021-02-18 17:43:55', 'https://digitalfiroz.com/CricCoach/img/'),
(160, 'West Indies ODD Cup', 0, 'WIS v BAR | 45 minutes Left | Check Player stats Now  ', '2021-02-18 17:45:15', 'https://digitalfiroz.com/CricCoach/img/'),
(161, 'ECS T10 - Barcelona', 0, 'Final Team Published ', '2021-02-18 20:38:20', 'https://digitalfiroz.com/CricCoach/img/'),
(162, 'ECS T10 - Barcelona', 0, 'Final Team Published ', '2021-02-18 20:40:25', 'https://digitalfiroz.com/CricCoach/img/'),
(163, 'South Africa T20 Challenge', 0, 'Final Team Published', '2021-02-19 13:23:32', 'https://digitalfiroz.com/CricCoach/img/'),
(164, 'Important Update', 0, 'If lineups out late, then teams will update also on telegram channel. so join Telegram @criccoachapp', '2021-02-19 17:22:43', 'https://digitalfiroz.com/CricCoach/img/'),
(165, 'Important Update', 0, 'If lineups out late, then teams will update also on telegram channel. so join Telegram @criccoach', '2021-02-19 17:23:51', 'https://digitalfiroz.com/CricCoach/img/'),
(166, 'Pakistan Super League, 2021', 0, 'Karachi v Quetta | Player Stats + Playing11 Update', '2021-02-19 17:59:34', 'https://digitalfiroz.com/CricCoach/img/'),
(167, 'West Indies ODD Cup', 0, 'Final Team Published ', '2021-02-19 18:23:51', 'https://digitalfiroz.com/CricCoach/img/'),
(168, 'South Africa T20 Challenge', 0, 'Final Team Published', '2021-02-20 17:56:37', 'https://digitalfiroz.com/CricCoach/img/'),
(169, 'South Africa T20 Challenge', 0, 'Final Team Published', '2021-02-20 17:56:43', 'https://digitalfiroz.com/CricCoach/img/'),
(170, 'South Africa T20 Challenge', 0, 'Final Team Published', '2021-02-20 17:57:56', 'https://digitalfiroz.com/CricCoach/img/'),
(171, 'South Africa T20 Challenge', 0, 'Final Team Published', '2021-02-21 13:27:52', 'https://digitalfiroz.com/CricCoach/img/'),
(172, 'Pakistan Super League, 2021', 0, 'Final Team Published', '2021-02-21 14:26:00', 'https://digitalfiroz.com/CricCoach/img/'),
(173, 'Pakistan Super League, 2021', 0, 'Final Team Published', '2021-02-21 14:28:38', 'https://digitalfiroz.com/CricCoach/img/'),
(174, 'West Indies ODD', 0, 'BAR v JAM | Players Stats + Playing11 Update ', '2021-02-21 15:26:27', 'https://digitalfiroz.com/CricCoach/img/'),
(175, 'South Africa T20 Challenge ', 0, 'WAR v DOL | Players Stats + Playing11 Update ', '2021-02-21 15:35:37', 'https://digitalfiroz.com/CricCoach/img/'),
(176, 'South Africa T20 Challenge ', 0, 'WAR v DOL | Final Team Published ', '2021-02-21 17:53:20', 'https://digitalfiroz.com/CricCoach/img/'),
(177, 'South Africa T20 Challenge ', 0, 'WAR v DOL | Final Team Published ', '2021-02-21 17:56:20', 'https://digitalfiroz.com/CricCoach/img/'),
(178, 'Pakistan Super League, 2021', 0, 'Final Team Published', '2021-02-21 19:22:49', 'https://digitalfiroz.com/CricCoach/img/'),
(179, 'Pakistan Super League, 2021', 0, 'Final Team Published', '2021-02-21 19:22:55', 'https://digitalfiroz.com/CricCoach/img/'),
(180, 'South Africa T20 Challenge ', 0, 'Final Team Published', '2021-02-22 13:25:55', 'https://digitalfiroz.com/CricCoach/img/'),
(181, 'Important Update', 0, 'If lineups out late, then teams will update also on telegram channel. so join Telegram @criccoach', '2021-02-22 13:26:13', 'https://digitalfiroz.com/CricCoach/img/'),
(182, 'ECS T10 - Barcelona', 0, 'Final Team Published ', '2021-02-22 14:56:28', 'https://digitalfiroz.com/CricCoach/img/'),
(183, 'ECS T10 - Barcelona', 0, 'Final Team Published ', '2021-02-22 14:59:20', 'https://digitalfiroz.com/CricCoach/img/'),
(184, 'ECS T10 - Barcelona', 0, 'CLI v RIW | Final Team Update', '2021-02-22 15:08:49', 'https://digitalfiroz.com/CricCoach/img/'),
(185, 'Pakistan Super League, 2021', 0, 'LAH vs QUE | Match Preview + Player Stats + Teams  Update', '2021-02-22 16:53:53', 'https://digitalfiroz.com/CricCoach/img/'),
(186, 'South Africa T20 Challenge ', 0, 'Final Team Published', '2021-02-22 17:57:16', 'https://digitalfiroz.com/CricCoach/img/'),
(187, 'West Indies ODD Cup', 0, 'Final Team Published ', '2021-02-22 18:25:29', 'https://digitalfiroz.com/CricCoach/img/'),
(188, 'Pakistan Super League, 2021', 0, 'LAH vs QUE Final Team Published', '2021-02-22 19:23:01', 'https://digitalfiroz.com/CricCoach/img/'),
(189, 'South Africa T20 Challenge ', 0, 'Final Team Published', '2021-02-23 13:26:43', 'https://digitalfiroz.com/CricCoach/img/'),
(190, 'South Africa T20 Challenge ', 0, 'Final Team Published', '2021-02-23 13:28:45', 'https://digitalfiroz.com/CricCoach/img/'),
(191, 'Jharkand Women\'s T20', 0, 'Final Team Published', '2021-02-23 13:44:47', 'https://digitalfiroz.com/CricCoach/img/'),
(192, 'South Africa T20 Challenge ', 0, 'Final Team Published', '2021-02-24 13:23:49', 'https://digitalfiroz.com/CricCoach/img/'),
(193, 'South Africa T20 Challenge', 0, 'DOL vs HL | Players Stats + Playing11 + Teams Update ', '2021-02-24 15:03:24', 'https://digitalfiroz.com/CricCoach/img/'),
(194, 'Pakistan Super League, 2021', 0, 'KAR vs ISL | Players Stats + Playing11 + Teams Update', '2021-02-24 15:27:33', 'https://digitalfiroz.com/CricCoach/img/'),
(195, 'South Africa T20 Challenge', 0, 'DOL vs HL | Final Team Published', '2021-02-24 17:54:13', 'https://digitalfiroz.com/CricCoach/img/'),
(196, 'West Indies ODD Cup', 0, 'Final Team Published ', '2021-02-24 22:51:29', 'https://digitalfiroz.com/CricCoach/img/'),
(197, 'West Indies ODD Cup', 0, 'Final Team Published ', '2021-02-24 22:51:59', 'https://digitalfiroz.com/CricCoach/img/'),
(198, 'Australia vs Newzealand 2nd T20I', 0, 'Final Team Published', '2021-02-25 06:24:34', 'https://digitalfiroz.com/CricCoach/img/'),
(199, 'Australia vs Newzealand 2nd T20I', 0, 'Final Team Published', '2021-02-25 06:24:54', 'https://digitalfiroz.com/CricCoach/img/'),
(200, 'Vijay Hazare Trophy', 0, 'DEL vs HIM | Final Teams Published ', '2021-02-25 08:56:09', 'https://digitalfiroz.com/CricCoach/img/'),
(201, 'South Africa T20 Challenge', 0, 'WAR vs KTS | Players Stats + Playing11 + Teams Update ', '2021-02-25 17:05:25', 'https://digitalfiroz.com/CricCoach/img/'),
(202, 'South Africa T20 Challenge ', 0, 'Final Team Published', '2021-02-25 17:54:57', 'https://digitalfiroz.com/CricCoach/img/'),
(203, 'England Women\'s Tour of New Zealand', 0, 'NZ-W v EN-W | 2nd ODI Preview Update', '2021-02-25 18:47:16', 'https://digitalfiroz.com/CricCoach/img/'),
(204, 'Important Update', 0, 'If lineups out late, then teams will update also on telegram channel. so join Telegram @criccoach', '2021-02-25 22:54:32', 'https://digitalfiroz.com/CricCoach/img/'),
(205, 'West Indies ODD Cup', 0, 'Final Team Published ', '2021-02-25 22:59:04', 'https://digitalfiroz.com/CricCoach/img/'),
(206, 'South Africa T20 Challenge ', 0, 'Final Team Published', '2021-02-26 13:26:00', 'https://digitalfiroz.com/CricCoach/img/'),
(207, 'South Africa T20 Challenge ', 0, 'Final Team Published', '2021-02-26 17:51:15', 'https://digitalfiroz.com/CricCoach/img/'),
(208, 'South Africa T20 Challenge ', 0, 'Final Team Published', '2021-02-26 17:53:50', 'https://digitalfiroz.com/CricCoach/img/'),
(209, 'West Indies ODD Cup', 0, 'Final Team Published ', '2021-02-26 18:24:17', 'https://digitalfiroz.com/CricCoach/img/'),
(210, 'Pakistan Super League, 2021', 0, 'Final Team Published', '2021-02-26 20:19:53', 'https://digitalfiroz.com/CricCoach/img/'),
(211, 'Australia Women\'s ODD', 0, 'Final Team Published', '2021-02-27 05:14:27', 'https://digitalfiroz.com/CricCoach/img/'),
(212, 'Pakistan Super League, 2021', 0, 'Final Team Published', '2021-02-27 14:22:21', 'https://digitalfiroz.com/CricCoach/img/'),
(213, 'South Africa T20 Challenge', 0, 'Final Team Published', '2021-02-27 17:53:52', 'https://digitalfiroz.com/CricCoach/img/'),
(214, 'Pakistan Super League, 2021', 0, 'Final Team Published', '2021-02-27 19:23:19', 'https://digitalfiroz.com/CricCoach/img/'),
(215, 'West Indies ODD Cup', 0, 'Final Team Published ', '2021-02-27 22:50:27', 'https://digitalfiroz.com/CricCoach/img/'),
(216, 'West Indies ODD Cup', 0, 'Final Team Published ', '2021-02-27 22:50:51', 'https://digitalfiroz.com/CricCoach/img/'),
(217, 'Match Previews Update', 0, 'PSl T20 - CSA T20', '2021-02-28 13:22:01', 'https://digitalfiroz.com/CricCoach/img/'),
(218, 'South Africa T20 Challenge', 0, 'Final Team Published', '2021-02-28 18:23:03', 'https://digitalfiroz.com/CricCoach/img/'),
(219, 'Pakistan Super League, 2021', 0, 'Final Team Published', '2021-02-28 19:23:29', 'https://digitalfiroz.com/CricCoach/img/'),
(220, 'England Women\'s Tour of New Zealand', 0, 'Preview + Players Stats + Teams Update ', '2021-03-02 22:09:58', 'https://digitalfiroz.com/CricCoach/img/'),
(221, 'Srilanka Tour of West Indies, 2021', 0, 'WI vs SL 1st T20I : Match Preview + Players Stats + Dream11 Team', '2021-03-03 18:04:36', 'https://digitalfiroz.com/CricCoach/img/'),
(222, 'Pakistan Super League, 2021', 0, 'Final Team Published', '2021-03-03 19:18:19', 'https://digitalfiroz.com/CricCoach/img/'),
(223, 'Pakistan Super League, 2021', 0, 'Final Team Published', '2021-03-03 19:23:12', 'https://digitalfiroz.com/CricCoach/img/'),
(224, 'West Indies v Srilanka T20I ', 0, 'Final Team Published', '2021-03-04 03:20:12', 'https://digitalfiroz.com/CricCoach/img/'),
(225, 'Pakistan Super League, 2021', 0, 'LAH vs ISL | Players Stats + Team News + Grand League Teams Update', '2021-03-04 11:17:02', 'https://digitalfiroz.com/CricCoach/img/'),
(226, 'England Women\'s Tour of New Zealand', 0, 'Final Team Published', '2021-03-05 07:16:00', 'https://digitalfiroz.com/CricCoach/img/'),
(227, 'England Women\'s Tour of New Zealand', 0, 'Final Team Published', '2021-03-05 07:16:12', 'https://digitalfiroz.com/CricCoach/img/'),
(228, 'Srilanka Tour of West Indies, 2021', 0, 'WI vs SL 3rd ODI : Match Preview + Players Stats ', '2021-03-13 17:56:04', 'https://digitalfiroz.com/CricCoach/img/'),
(229, 'Road Saftey Series, 2021', 0, 'Final Team Published', '2021-03-13 18:51:50', 'https://digitalfiroz.com/CricCoach/img/'),
(230, 'ECS T10 - Rome', 0, 'Final Team Published', '2021-03-15 14:46:13', 'https://digitalfiroz.com/CricCoach/img/'),
(231, 'Road Saftey Series, 2021', 0, 'SA-L v BD-L | Natch Preview + Players Stats + Recent Performance + Team', '2021-03-15 14:51:18', 'https://digitalfiroz.com/CricCoach/img/'),
(232, 'Road Saftey Series, 2021', 0, 'Final Team Published', '2021-03-15 18:54:44', 'https://digitalfiroz.com/CricCoach/img/'),
(233, 'England Tour of India, 2021', 0, 'IND vs ENG | 3rd T20I Match Preview + H2H Stats + Dream11 Team', '2021-03-15 19:43:27', 'https://digitalfiroz.com/CricCoach/img/'),
(234, 'England Tour of India, 2021', 0, '3rd T20I | Final Team Published', '2021-03-16 18:48:30', 'https://digitalfiroz.com/CricCoach/img/'),
(235, 'Road Saftey Series, 2021', 0, 'Final Team Published', '2021-03-16 18:52:54', 'https://digitalfiroz.com/CricCoach/img/'),
(236, 'Afghanistan v Zimbabwe 1st t20', 0, 'Final Team Published', '2021-03-17 15:15:09', 'https://digitalfiroz.com/CricCoach/img/'),
(237, 'Road Saftey Series, 2021', 0, 'Final Team Published', '2021-03-17 18:50:49', 'https://digitalfiroz.com/CricCoach/img/'),
(238, ' 	England Tour of India, 2021', 0, 'Final Team Published', '2021-03-18 18:47:18', 'https://digitalfiroz.com/CricCoach/img/'),
(239, 'Dubai D10', 0, 'Final Team Published', '2021-03-24 18:16:26', 'https://digitalfiroz.com/CricCoach/img/'),
(240, 'Dubai D10', 0, 'Final Team Published', '2021-03-24 20:09:20', 'https://digitalfiroz.com/CricCoach/img/'),
(241, 'Bihar T20 League', 0, 'Final Team Published', '2021-03-25 13:54:33', 'https://digitalfiroz.com/CricCoach/img/'),
(242, 'Bihar T20 League', 0, 'Final Team Published', '2021-03-25 17:56:33', 'https://digitalfiroz.com/CricCoach/img/'),
(243, 'Dubai D10', 0, 'Final Team Published', '2021-03-25 18:16:07', 'https://digitalfiroz.com/CricCoach/img/'),
(244, 'Dubai D10', 0, 'Players Stats + team info Updates ', '2021-03-26 17:42:22', 'https://digitalfiroz.com/CricCoach/img/'),
(245, 'Dubai D10', 0, 'Final Team Published', '2021-03-26 18:21:02', 'https://digitalfiroz.com/CricCoach/img/'),
(246, 'Dubai D10', 0, 'Players Stats + team info Updates ', '2021-03-26 21:56:27', 'https://digitalfiroz.com/CricCoach/img/'),
(247, 'Dubai D10', 0, 'Players Stats + team info Updates ', '2021-03-26 22:00:34', 'https://digitalfiroz.com/CricCoach/img/'),
(248, 'Dubai D10', 0, 'Players Stats + team info Updates ', '2021-03-27 15:29:23', 'https://digitalfiroz.com/CricCoach/img/'),
(249, 'Dubai D10', 0, 'Final Team Published', '2021-03-27 18:17:58', 'https://digitalfiroz.com/CricCoach/img/'),
(250, 'Bihar T20 League', 0, 'Final Team Published', '2021-03-27 20:38:13', 'https://digitalfiroz.com/CricCoach/img/'),
(251, 'Dubai D10', 0, 'Players Stats + team info Updates ', '2021-03-29 14:20:38', 'https://digitalfiroz.com/CricCoach/img/'),
(252, 'Dubai D10', 0, 'Final Team Published', '2021-03-29 18:17:02', 'https://digitalfiroz.com/CricCoach/img/'),
(253, 'Dubai D10', 0, 'Final Team Published', '2021-03-29 18:17:07', 'https://digitalfiroz.com/CricCoach/img/'),
(254, 'Dubai D10', 0, 'Final Team Published', '2021-03-29 20:43:14', 'https://digitalfiroz.com/CricCoach/img/'),
(255, 'Dubai D10', 0, 'Final Team Published', '2021-03-31 18:16:31', 'https://digitalfiroz.com/CricCoach/img/'),
(256, 'AU-W vs NZ-W 3rd T20I', 0, 'Players Stats + team info Updates', '2021-03-31 18:40:56', 'https://digitalfiroz.com/CricCoach/img/'),
(257, 'Dubai D10', 0, 'Players Stats + team info Updates ', '2021-04-02 15:52:04', 'https://digitalfiroz.com/CricCoach/img/'),
(258, 'Dubai D10', 0, 'Final Team Published', '2021-04-02 18:27:45', 'https://digitalfiroz.com/CricCoach/img/'),
(259, 'Dubai D10', 0, 'Players Stats + team info Updates ', '2021-04-09 08:06:32', 'https://digitalfiroz.com/CricCoach/img/'),
(260, 'AU-W vs NZ-W 3rd T20I', 0, 'Players Stats + team info Updates', '2021-04-09 08:12:38', 'https://digitalfiroz.com/CricCoach/img/'),
(261, 'Dubai D10', 0, 'Players Stats + team info Updates ', '2021-04-09 08:13:26', 'https://digitalfiroz.com/CricCoach/img/'),
(262, 'Dubai D10', 0, 'Players Stats + team info Updates ', '2021-04-09 08:13:33', 'https://digitalfiroz.com/CricCoach/img/'),
(263, 'Road Saftey Series, 2021', 0, 'Final Team Published', '2021-04-09 08:14:52', 'https://digitalfiroz.com/CricCoach/img/'),
(264, 'Pakistan Super League, 2021', 0, 'KAR vs ISL | Players Stats + Playing11 + Teams Update', '2021-04-18 13:33:16', 'https://digitalfiroz.com/CricCoach/img/'),
(265, 'ECS T10 - Barcelona', 0, 'CLI v RIW | Final Team Update', '2021-04-18 13:33:51', 'https://digitalfiroz.com/CricCoach/img/'),
(266, 'Pakistan Super League, 2021', 0, 'KAR vs ISL | Players Stats + Playing11 + Teams Update', '2021-04-18 13:41:37', 'https://digitalfiroz.com/CricCoach/img/'),
(267, 'Pakistan Super League, 2021', 0, 'KAR vs ISL | Players Stats + Playing11 + Teams Update', '2021-04-18 13:49:50', 'https://digitalfiroz.com/CricCoach/img/'),
(268, 'Test', 0, 'Simple test', '2021-04-18 13:49:58', 'https://digitalfiroz.com/CricCoach/img/images.jpg'),
(269, 'Vivo Ipl 2021', 0, 'DC v RCB | 22nd T20 | Players Stats & Teams Info Update', '2021-04-27 14:51:02', 'https://digitalfiroz.com/CricCoach/img/'),
(270, ' 	Vivo Ipl 2021', 0, 'CSK v SRH | 23rd T20 | Players Stats & Teams Info Update', '2021-04-28 14:46:09', 'https://digitalfiroz.com/CricCoach/img/'),
(271, 'Vincy Premier League 2021', 0, 'SPB vs GRD Match Player Stats + Teams Updated', '2021-05-16 19:53:09', 'https://digitalfiroz.com/CricCoach/img/'),
(272, 'ECS T10 - Krefeld', 0, 'VG vs KCH | Dream11 Team + Players Stats Update', '2021-05-16 19:53:23', 'https://digitalfiroz.com/CricCoach/img/'),
(273, 'Sri lanka Tour of Bangladesh, 2021', 0, 'BAN vs SL | 3rd Odi Match Dream11 Team & News Update', '2021-05-27 18:26:44', 'https://digitalfiroz.com/CricCoach/img/'),
(274, 'Test', 0, 'Simple test', '2021-07-20 18:17:40', 'https://digitalfiroz.com/CricCoach/img/images.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_notifications`
--

CREATE TABLE `tbl_notifications` (
  `id` int(11) NOT NULL,
  `title` varchar(80) NOT NULL,
  `message` varchar(200) NOT NULL,
  `photo` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_notifications`
--

INSERT INTO `tbl_notifications` (`id`, `title`, `message`, `photo`) VALUES
(124, 'ECS T10 - Barcelona', 'Final Team Published ', ''),
(130, 'West Indies ODD Cup', 'LEE vs TRI | Player Stats + Preview update ', ''),
(131, 'West Indies ODD Cup', 'Final Team Published ', ''),
(132, 'Ford Trophy ( New Zealand Odd Cup )', 'WF v ND | Match Preview + Player Stats + Teams  Update ', ''),
(134, 'South Africa T20 Challenge', 'Final Team Published', ''),
(135, 'Important Update', 'If lineups out late, then teams will update also on telegram channel. so join Telegram @criccoach', ''),
(136, 'Pakistan Super League, 2021', 'Karachi v Quetta | Player Stats + Playing11 Update', ''),
(137, 'Pakistan Super League, 2021', 'Final Team Published', ''),
(138, 'West Indies ODD', 'BAR v JAM | Players Stats + Playing11 Update ', ''),
(139, 'South Africa T20 Challenge ', 'WAR v DOL | Players Stats + Playing11 Update ', ''),
(140, 'South Africa T20 Challenge ', 'WAR v DOL | Final Team Published ', ''),
(141, 'South Africa T20 Challenge ', 'Final Team Published', ''),
(142, 'ECS T10 - Barcelona', 'CLI v RIW | Final Team Update', ''),
(143, 'Pakistan Super League, 2021', 'LAH vs QUE | Match Preview + Player Stats + Teams  Update', ''),
(144, 'Pakistan Super League, 2021', 'LAH vs QUE Final Team Published', ''),
(145, 'Jharkand Women\'s T20', 'Final Team Published', ''),
(146, 'South Africa T20 Challenge', 'DOL vs HL | Players Stats + Playing11 + Teams Update ', ''),
(147, 'Pakistan Super League, 2021', 'KAR vs ISL | Players Stats + Playing11 + Teams Update', ''),
(178, 'Test', 'Simple test', 'images.jpg'),
(179, 'Vivo Ipl 2021', 'DC v RCB | 22nd T20 | Players Stats & Teams Info Update', ''),
(180, ' 	Vivo Ipl 2021', 'CSK v SRH | 23rd T20 | Players Stats & Teams Info Update', ''),
(181, 'ECS T10 - Krefeld', 'VG vs KCH | Dream11 Team + Players Stats Update', ''),
(182, 'Vincy Premier League 2021', 'SPB vs GRD Match Player Stats + Teams Updated', ''),
(183, 'Sri lanka Tour of Bangladesh, 2021', 'BAN vs SL | 3rd Odi Match Dream11 Team & News Update', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_settings`
--

CREATE TABLE `tbl_settings` (
  `id` int(11) NOT NULL,
  `app_name` varchar(255) NOT NULL,
  `app_logo` varchar(255) NOT NULL,
  `app_website` varchar(255) NOT NULL,
  `one_key` varchar(255) NOT NULL,
  `one_hash` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_settings`
--

INSERT INTO `tbl_settings` (`id`, `app_name`, `app_logo`, `app_website`, `one_key`, `one_hash`) VALUES
(1, 'Beyondthink', 'btlogos.png', 'https://beyondthinktest.tk/', '2292ff6d-9723-487d-8d3a-fcc32247dd2c', 'OGJjNDgzMWEtMDQyNC00ZGEyLWE3YjgtMjg5ZDYwOWQ1ODFh');

-- --------------------------------------------------------

--
-- Table structure for table `team`
--

CREATE TABLE `team` (
  `id` int(11) NOT NULL,
  `image` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `team`
--

INSERT INTO `team` (`id`, `image`) VALUES
(9, 'tm/CriccochLogo (1)h.png'),
(10, 'tm/Screenshot_2021-01-05-Join-Fantasy-Cricket-and-Fantasy-Football-Leagues-on-Dream11-min1.png');

-- --------------------------------------------------------

--
-- Table structure for table `team_preview`
--

CREATE TABLE `team_preview` (
  `id` int(11) NOT NULL,
  `team_images` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `team_info` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `match_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `team_preview`
--

INSERT INTO `team_preview` (`id`, `team_images`, `team_info`, `match_id`) VALUES
(1, '', '<p>sa</p>', 347),
(2, 'download (3).jpg', '<p>Sangharsh</p>', 347),
(3, 'download (1).jpg', '<p>sssssssssssss</p>', 347),
(4, '', '', 351),
(5, 'Screenshot_20191219-192658-492x1024.jpg', '<p style=\"text-align: center;\">This Is <strong>Sample</strong> Team.</p>', 348),
(6, 'images.jpg', '<p>fgf</p>', 348),
(8, 'Screenshot_2021-04-17 Upcoming Matches Dream11(1).png', '', 392),
(9, 'Screenshot_2021-04-17 Upcoming Matches Dream11.png', '', 392),
(10, 'MI(11).png', '<h2 style=\"text-align: center;\">Dream11 team</h2>', 392),
(11, 'Screenshot_2021-04-19 Upcoming Matches Dream11.png', '<h2 style=\"text-align: center;\"><span style=\"font-family: verdana, geneva, sans-serif;\"><strong>Head To Head </strong></span></h2>', 394),
(12, 'Screenshot_2021-04-19 Upcoming Matches Dream11(1).png', '<h2 style=\"text-align: center;\"><span style=\"font-family: verdana, geneva, sans-serif;\">Mini Grand League </span></h2>', 394),
(13, 'Screenshot_2021-04-19 Upcoming Matches Dream11(2).png', '', 394),
(15, '', '', 396),
(16, '', '', 396),
(17, 'Screenshot_2021-04-20 Upcoming Matches Dream11.png', '', 397),
(18, 'Screenshot_2021-04-20 Upcoming Matches Dream11(1).png', '<h2 style=\"text-align: center;\"><span style=\"font-family: verdana, geneva, sans-serif;\"><strong>Grand league</strong></span></h2>', 397),
(19, '', '', 397),
(22, 'Screenshot_2021-04-21 Upcoming Matches Dream11.png', '<h2 style=\"text-align: center;\"><span style=\"font-family: arial, helvetica, sans-serif;\"><strong>Head To Head</strong></span></h2>', 400),
(23, 'Screenshot_2021-04-21 Upcoming Matches Dream11(1).png', '<h2 style=\"text-align: center;\"><strong><span style=\"font-family: arial, helvetica, sans-serif;\">Mini Grand League</span></strong></h2>', 400),
(24, 'Screenshot_2021-04-22 Upcoming Matches Dream11.png', '<p style=\"text-align: center;\"><strong><span style=\"font-size: 14pt;\">Head To Head</span></strong><br /><strong>Note*</strong> - Final Team Update on Our Telegram channel</p>', 401),
(25, 'Screenshot_2021-04-22 Upcoming Matches Dream11(1).png', '<p style=\"text-align: center;\"><strong><span style=\"font-size: 14pt;\">Mini Grand League</span></strong></p>', 401),
(26, 'Screenshot_2021-04-22 Upcoming Matches Dream11(2).png', '<p style=\"text-align: center;\"><strong><span style=\"font-size: 14pt;\">Head To Head</span></strong><br /><strong>Note*</strong> - Final Team Update on Telegram Channel</p>', 399),
(27, 'Screenshot_2021-04-22 Upcoming Matches Dream11(3).png', '<p style=\"text-align: center;\"><strong><span style=\"font-size: 14pt;\">Mini Grand League</span></strong></p>', 399),
(28, 'Screenshot_2021-04-23 Upcoming Matches Dream11.png', '<p style=\"text-align: center;\"><span style=\"font-size: 14pt;\"><strong>Head To Head</strong></span><br /><strong>Note*</strong> - This is not final team, for final teams join our telegram channel</p>', 403),
(29, 'Screenshot_2021-04-23 Upcoming Matches Dream11(1).png', '<p style=\"text-align: center;\"><strong><span style=\"font-size: 14pt;\">Mini Grand League</span></strong></p>', 403),
(30, 'Screenshot_2021-04-24-Upcoming-Matches-Dream11-min.png', '<p style=\"text-align: center;\"><strong><span style=\"font-size: 14pt;\">Head To Head</span></strong><br /><strong>Note*</strong> - This is Not Final team, Will Update After Toss On Tlegram Channel</p>', 404),
(31, 'Screenshot_2021-04-24-Upcoming-Matches-Dream111-min-1.png', '<p style=\"text-align: center;\"><strong><span style=\"font-size: 14pt;\">Grand League</span></strong></p>', 404),
(32, 'Screenshot_2021-04-25-Upcoming-Matches-Dream11-min.png', '<p style=\"text-align: center;\"><strong><span style=\"font-size: 14pt;\">Head To Head</span></strong><br /><strong>Note</strong>* - Final Team Update on Telegram Channel</p>', 406),
(33, 'Screenshot_2021-04-25-Upcoming-Matches-Dream111-min.png', '<p style=\"text-align: center;\"><strong><span style=\"font-size: 14pt;\">Mini Grand League</span></strong></p>', 406),
(34, 'Screenshot_2021-04-27 Upcoming Matches Dream11.png', '<p style=\"text-align: center;\"><strong><span style=\"font-size: 14pt;\">Head To Head </span></strong><br /><strong>Note*</strong> - Final Team will update on telegram channel</p>', 409),
(35, 'Screenshot_2021-04-27 Upcoming Matches Dream11(1).png', '<p style=\"text-align: center;\"><strong><span style=\"font-size: 14pt;\">Mini Grand League</span></strong></p>', 409),
(36, 'Screenshot_2021-04-27 Upcoming Matches Dream11(2).png', '', 409),
(37, 'Screenshot_2021-04-27 Upcoming Matches Dream11(3).png', '<p style=\"text-align: center;\"><strong><span style=\"font-size: 14pt;\">Head To Head </span></strong><br />Note* - Final Team Update On Telegram</p>', 410),
(38, 'Screenshot_2021-04-27 Upcoming Matches Dream11(4).png', '<p style=\"text-align: center;\"><span style=\"font-size: 14pt;\"><strong>Mini Grand League</strong></span></p>', 410),
(39, 'Screenshot_2021-04-28 Upcoming Matches Dream11.png', '<p style=\"text-align: center;\"><strong><span style=\"font-size: 14pt;\">Head To Head </span></strong></p>\r\n<p style=\"text-align: center;\">Note* - Final Will Update on telegram Channel.</p>', 411),
(40, 'Screenshot_2021-04-28 Upcoming Matches Dream11(1).png', '<p style=\"text-align: center;\"><strong><span style=\"font-size: 14pt;\">Mini Grand League</span></strong></p>', 411),
(41, 'Screenshot_2021-04-29 Upcoming Matches Dream11.png', '<p style=\"text-align: center;\"><strong><span style=\"font-size: 14pt;\">Head To Head</span></strong></p>\r\n<p style=\"text-align: center;\"><strong>Note*</strong> - Final Team Update on Telegram Channel</p>', 412),
(42, 'Screenshot_2021-04-29 Upcoming Matches Dream11(1).png', '<p style=\"text-align: center;\"><strong><span style=\"font-size: 14pt;\">MIni Grand League</span></strong></p>', 412),
(43, '', '', 413),
(44, 'Screenshot_2021-04-29 Upcoming Matches Dream11(2).png', '<p style=\"text-align: center;\"><span style=\"font-size: 14pt;\"><strong>Head To Head</strong></span></p>\r\n<p style=\"text-align: center;\"><span style=\"font-size: 14pt;\"><strong>Note* - </strong>Final Team Update On Telegram Channel<br /></span></p>', 413),
(45, 'Screenshot_2021-04-29 Upcoming Matches Dream11(3).png', '<p style=\"text-align: center;\"><strong><span style=\"font-size: 14pt;\">Mini Grand League</span></strong></p>', 413),
(46, 'Screenshot_2021-04-29-Upcoming-Matches-Dream113.png', '<p style=\"text-align: center;\"><strong><span style=\"font-size: 14pt;\">Head To Head</span></strong></p>\r\n<p style=\"text-align: center;\"><strong>Note*</strong> - Final Team Update on Telegram Channel</p>', 414),
(47, 'Screenshot_2021-04-29-Upcoming-Matches-Dream112.png', '<p style=\"text-align: center;\"><strong><span style=\"font-size: 14pt;\">Mini Grand League</span></strong></p>', 414),
(48, 'Screenshot_2021-04-30-Upcoming-Matches-Dream11.png', '<p style=\"text-align: center;\"><span style=\"font-size: 14pt;\"><strong>Head To Head</strong></span></p>\r\n<p style=\"text-align: center;\"><strong>Note*</strong> - Final Team Update on Telegram Channel.</p>', 416),
(49, 'Screenshot_2021-04-30-Upcoming-Matches-Dream112.png', '<p style=\"text-align: center;\"><span style=\"font-size: 14pt;\"><strong>MIni Grand League</strong></span></p>', 416),
(50, 'Screenshot_2021-05-01-Upcoming-Matches-Dream112.png', '<p style=\"text-align: center;\"><span style=\"font-size: 14pt;\"><strong>Head To Head&nbsp;</strong></span><br /><strong>Note*</strong>- Final team Update on Telegram Channel</p>', 417),
(51, 'Screenshot_2021-05-01-Upcoming-Matches-Dream111.png', '<p style=\"text-align: center;\"><strong><span style=\"font-size: 14pt;\">Mini Grand League</span></strong></p>', 417),
(52, 'Screenshot_2021-05-01-Upcoming-Matches-Dream113.png', '<p style=\"text-align: center;\"><span style=\"font-size: 14pt;\"><strong>Head To Head&nbsp;</strong></span></p>\r\n<p style=\"text-align: center;\">Note* - Final Team Update On Telegram Channel</p>', 419),
(53, 'Screenshot_2021-05-01-Upcoming-Matches-Dream114.png', '<p style=\"text-align: center;\"><strong><span style=\"font-size: 14pt;\">MIni Grand League</span></strong></p>', 419),
(54, 'Screenshot_2021-05-01-Upcoming-Matches-Dream114.png', '<p style=\"text-align: center;\"><strong><span style=\"font-size: 14pt;\">MIni Grand League</span></strong></p>', 419),
(55, 'Screenshot_2021-05-03 Upcoming Matches Dream11.png', '<p style=\"text-align: center;\"><span style=\"font-size: 14pt;\"><strong>Head To Head</strong></span><br />Note*- Final Team Update On Telegram Channel</p>', 420),
(56, 'Screenshot_2021-05-03 Upcoming Matches Dream11(1).png', '<p style=\"text-align: center;\"><strong><span style=\"font-size: 14pt;\">Mini Grand League</span></strong></p>', 420),
(58, '', '<p>Telegram Channel - <a href=\"https://telegram.me/criccoach\" target=\"_blank\" rel=\"noopener\"><strong>Criccoach</strong></a></p>', 421),
(59, '', '<p style=\"text-align: center;\"><strong>Final Teams Update on Telegram Channel</strong></p>', 421),
(60, 'Screenshot_2021-05-13 Upcoming Matches Dream11.png', '<p style=\"text-align: center;\"><strong><span style=\"font-size: 14pt;\">Head To Head</span></strong></p>\r\n<p style=\"text-align: center;\"><strong>Note</strong> - Final TEams Updates on Telegram Channle.</p>', 423),
(61, '', '', 423),
(64, 'Screenshot_2021-05-16 Upcoming Matches Dream11(1).png', '<p style=\"text-align: center;\"><span style=\"font-size: 14pt;\"><strong>Small League ( 2/3 members )</strong></span></p>\r\n<p style=\"text-align: center;\"><span style=\"font-size: 12pt;\"><strong>Note* -</strong> Final Team Update on Telegram, Channel</span></p>', 428),
(65, 'Screenshot_2021-05-16 Upcoming Matches Dream11(2).png', '<p style=\"text-align: center;\"><span style=\"font-size: 14pt;\"><strong>Mini Grand League </strong></span></p>', 428),
(67, 'Screenshot_2021-05-16 Upcoming Matches Dream11(4).png', '<p style=\"text-align: center;\"><strong><span style=\"font-size: 14pt;\">Head To Head</span></strong></p>\r\n<p style=\"text-align: center;\"><span style=\"font-size: 12pt;\"><strong>Note* - </strong>Final Team Update on Telegram</span></p>', 427),
(68, 'Screenshot_2021-05-16 Upcoming Matches Dream11(3).png', '<p style=\"text-align: center;\"><span style=\"font-size: 14pt;\"><strong>Mini Grand League</strong></span></p>', 427),
(69, 'Screenshot_2021-05-16-Upcoming-Matches-Dream115.png', '<p style=\"text-align: center;\"><span style=\"font-size: 14pt;\"><strong>Head To Head</strong></span></p>\r\n<p style=\"text-align: center;\"><span style=\"font-size: 14pt;\"><strong>Note* - </strong>Final Team Update on Telegram Channel</span></p>', 430),
(70, 'Screenshot_2021-05-16-Upcoming-Matches-Dream116.png', '<p style=\"text-align: center;\"><span style=\"font-size: 14pt;\"><strong>Mini Grand League</strong></span></p>', 430),
(71, 'Screenshot_2021-05-17-Upcoming-Matches-Dream116.png', '<p style=\"text-align: center;\"><span style=\"font-size: 14pt;\"><strong>Head To Head</strong></span></p>\r\n<p style=\"text-align: center;\"><strong>Note*</strong> - Final Team Update on Telegram Channel</p>', 431),
(72, 'Screenshot_2021-05-17-Upcoming-Matches-Dream118.png', '<p style=\"text-align: center;\"><span style=\"font-size: 14pt;\"><strong>Mini Grand League</strong></span></p>', 431),
(73, 'Screenshot_2021-05-17-Upcoming-Matches-Dream119.png', '<p style=\"text-align: center;\"><span style=\"font-size: 14pt;\"><strong>Head To Head</strong></span></p>\r\n<p style=\"text-align: center;\"><strong>Note*</strong>- Final TEam Will Publish on Telegram Channel</p>', 432),
(74, 'Screenshot_2021-05-17-Upcoming-Matches-Dream1110.png', '<p style=\"text-align: center;\"><span style=\"font-size: 14pt;\"><strong>Mini Grand League</strong></span></p>', 432),
(75, 'Screenshot_2021-05-27 Upcoming Matches Dream11(1).png', '<p style=\"text-align: center;\"><strong><span style=\"font-size: 14pt;\">Small League Team</span></strong></p>', 434),
(76, 'Screenshot_2021-05-27 Upcoming Matches Dream11.png', '<p style=\"text-align: center;\"><span style=\"font-size: 14pt;\"><strong>Mini Grand League Team</strong></span></p>', 434),
(77, '', '', 434),
(78, '', '', 396),
(79, '', '', 396),
(80, 'Screenshot-2021-08-14-at-12-43-18-Upcoming-Matches-Dream11.png', '<h2 style=\"text-align: center;\"><strong>Small League Team</strong></h2>\r\n<p style=\"text-align: center;\"><strong>Final Teams Update on Telegram</strong></p>', 440),
(81, 'Screenshot-2021-08-14-at-12-47-46-Upcoming-Matches-Dream11.png', '<h2 style=\"text-align: center;\">Mini Grand League Team</h2>\r\n<p>&nbsp;</p>', 440),
(82, '', '', 440);

-- --------------------------------------------------------

--
-- Table structure for table `top_fantacy_apps`
--

CREATE TABLE `top_fantacy_apps` (
  `id` int(11) NOT NULL,
  `signupbonus` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `refferal_code` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `withdraw_type` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `minimum_withdraw` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `appIcon` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `app_url` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `app_name` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `top_fantacy_apps`
--

INSERT INTO `top_fantacy_apps` (`id`, `signupbonus`, `refferal_code`, `withdraw_type`, `minimum_withdraw`, `appIcon`, `app_url`, `app_name`) VALUES
(4, '100', 'FREEPLAY', 'Bank/Paytm', '200', 'logo-contact.png', 'https://www.fantafeat.com/apk/download.html?refcode=FREEPLAY', 'Fantafeat'),
(6, '100', 'Criccoach', 'Bank/Paytm', '200', 'dCJf3x46_400x400.jpg', 'https://real11.page.link/hkucSdhe4y9uuF2MA', 'Real11'),
(7, '100', 'FREEPLAY', 'Bank/Paytm', '200', 'why.png', 'https://api.royal11.live/download/FREEPLAY', 'Royal11');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `password` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `password`, `username`) VALUES
(1, 'Fantasyexpert@#', 'Fantasyexpert');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_number` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `userid` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `refer_code` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `earning` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `minimum_limit` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `phone_number`, `password`, `userid`, `refer_code`, `earning`, `minimum_limit`) VALUES
(25, 'Haider', 'haiderbilal503@gmail.com', '6375122761', '1234qwer', 'mfczs3xa', '', '0', '20'),
(28, 'John Doe ', 'cnxplaystore420@gmail.com', '9154191237', 'Google@1234', 'mijouhdy', '', '', ''),
(29, 'kishore singh', 'ks815199@gmail.com', '6260951267', 'kishore singh', 'rmrcw7sh', 'kishore singh', '', ''),
(30, 'Firoz', 'hfiroz39@gmail.com', '7976885655', 'GREENlion7976', 'o8s48v6n', '\n', '0', ''),
(31, 'Laxman Jakhar', 'laxmanjakhar96@gmail.com', '9119162030', '9119162', 'pgb4vze0', '', '', ''),
(32, 'Suraj', 'dd2786955@gmail.com', '8329020256', 'dada1234', 'auaid8y6', '', '', ''),
(33, 'swarup ghag', 'swarupghag055@gmail.com', '+919356903122', 'swarup ghag', 'tmumi2nu', '', '', ''),
(34, 'Rajendra sharma', 'rajendrasharma4033@gmail.com', '+918319627404', '47874787', 'og2tgigw', '\n', '', ''),
(35, 'ankitchourey ', 'ankitchourey3@gmail.com', '8305088340', '@nkit7803', 'oopagadx', '', '', ''),
(36, 'g.sandeep09', 'g.sandeep09@gmail.com', '9088880808', 'India@2021', 'oi0dn6vm', '', '', ''),
(37, 'mgosavi162', 'mgosavi162@gmail.com', '7757078857', 'Mahesh@123', 'ngkersr2', 'jsjhiskznz', '0', ''),
(38, 'text\n', 'text\n', 'text\n', 'text', 'mpdbhdpi', 'text\n', '', ''),
(39, 'sourav1997', 'mailtosourav1997@gmail.com', '+916290631755', 'sourav@97', 'pd2d5uqq', '', '', ''),
(40, 'Anirban Ray ', 'souravray5116@gmail.com', '8159897314', 'sourav1234', 'uzvo7ehy', '', '', ''),
(41, 'abd_123', 'mbprince35@gmail.com', '7093029828', '121312@abd', 'zeth7and', '', '', ''),
(42, 'Abhishek ', 'abhishekbrk11@gmail.com', '9102970033', '11111111', 't5o6xynz', '', '', ''),
(43, 'Bharat Patel', 'rbharatpatel@gmail.com', '9574037555', '6420', 'r35da2ez', '', '', ''),
(44, 'musharraf', 'rahimusharraf06@gmail.com', '8082504939', '7051024003', '76vb3v2d', 'livedaily', '', ''),
(45, 'nripen mahato', 'nripenmahato4@gmail.com', '7507808832', '7507808832', '5anx46z2', '\n', '', ''),
(46, 'SURAJ BANJARE ', 'banjaresuraj346@gmail.com', '7000484025', '495691', 'aw3nxpuu', '495691', '', ''),
(47, 'Akshay kukreti', 'akshaykukreti123456789@email.com', '7457889800', '12345678', 'uw7ixfzx', '', '', ''),
(48, 'vijay', 'vadivijay234@gmail.com', '9773254654', '816849', 'szr0bvaj', '', '', ''),
(49, 'Mahadev ', 'nagmanis21@gmail.com ', '7667478117', 'ADITYA1234 ', 'p37y6qa6', 'ADITYA1234 \n', '', ''),
(50, 'Aditya kumar', 'adityastation86@gmail.com', '7667478117', 'ADITYA1234 ', 'utex2fq0', 'ADITYA1234 ', '', ''),
(51, 'vishal', 'muma2323vishal@gmail.com', '99179352451', '12345678900987654321', 'tbjs48ip', '\n\n', '', ''),
(52, 'Shashi7777', 'welcomesashi@gmail.com', '9404529977', 'A1234567', '6hdxanxo', 'Shashikant\n', '', ''),
(53, 'JayMaheshpati', 'vasavars0003@gmail.com', '9099887138', 'gj227503', 'fxuw8mm0', '', '', ''),
(54, 'naufal', 'nj3153@gmail.com', '8123877685', '8123877686', 'j6u6nj0u', '', '', ''),
(55, 'RahulVM', 'rahulmariguddi@gmail.com', '8411957000', 'Shahrukh@123', 'dox2ohkp', '', '', ''),
(56, 'Subhash chand', 'yovanshktry@gmail.com', '9720959708', 'subhash@7866', 'fiukubh2', '', '', ''),
(57, 'Pushu2306', 'pushu2306@gmail.com', '9146680008', '123pushkar', 'a86kwhmg', '', '', ''),
(58, 'hasan', 'hasanansary606@gmail.com', '7384964796', 'hasan@607', 'bqwvfc3m', '', '', ''),
(59, 'Yuvraj', 'syuvraj575@gmail.com', '9571064716', '756812', 'xfzgjs7p', '', '', ''),
(60, 'ajeet', 'ajeetsinghdharan@gmail.com ', '9729504626', 'Ajeet@123', 'o4iuxowm', '', '', ''),
(61, 'Umesh9000', 'umeshdhaked8949266277@gmail.com', '8949266277', 'pqrstu7809', 'wjwdic07', '', '', ''),
(62, 'pratik', 'pratughag08@gmail.com', '+449011335824', '0890', '3f8cua2k', '', '', ''),
(63, 'amar', 'baskaranamarnath4@gmail.com ', '8754979844', 'Amarji1@', 'hhmb4s43', '', '', ''),
(64, 'himanshu ', 'hj2414114@gmail.com', '7987708922', 'Hjain@1998', 'rdu6yx5k', '', '', ''),
(65, 'zidan shaikh', 'rauf703shaikh@gmail ', '7071666332', 'zidansk123', 'ub38zh5v', '007', '', ''),
(66, 'Nisha Kumari yadav', 'nishakumariyadav700@gmail.com', '+1919143620079', '@Tushar123i', '7ouhcztd', '', '0', ''),
(67, 'vanker hiamnshu', 'vankerramesh@gmail.com ', '7600212483', 'Tupyhim8', 't24qtyeo', '', '0', ''),
(68, 'Sekhar 9926', 'Nagamkiran3@gmail.com', '9959779926', 'sekhar9936', 'dcdopd08', '', '', ''),
(69, 'Hisenberg', 'patil6nitin@gmail.com', '7021985577', 'Ihtemalyf@123', 'fhwqj54f', '', '', ''),
(70, 'janedoe', 'playstorecnx700@gmail.com', '6364908594', 'Password@1', 'ocsqvwwg', '', '0', ''),
(71, 'Ramu Das', 'ramu.das1566@gmail.com', '9862989321 ', 'a1b2c3d4', 'zx434aqk', '', '', ''),
(72, 'Vikram Hegde', 'vikihegde031@gmail.com', '9916358710', 'Vikram@2018', 'skzbm7n7', '', '', ''),
(73, 'uday', 'arupbagdi280@gmail.com', '7865039668', 'udaybagdi', 'av8eiopk', '', '', ''),
(74, 'naresh bhawat', 'bhawatnaresh2515@gmail.com', '79773 79540 ', '9521171517', '77noe8a7', '', '', ''),
(75, 'krishnadabde917@gmail.com ', 'krishnadabde917@gmail.com ', '9537775273', 'krishna1997', '7k2wth4b', '\n', '', ''),
(76, 'pintu ', 'pintuchaudhari007@gmail.com', '7878756441', 'pintu007', 'scg6qdni', 'Sunday 111', '', ''),
(77, 'nitesh', 'nitroxy1996@gmail.com', '6376825998', 'asia@91939', 'okf2vagn', '', '', ''),
(78, 'vivek singh', 'viveksingh99174@gmail.com', '7505131274', 'vivek 123', 'f25savrx', '', '', ''),
(79, 'dhananjay', 'dhananjaymali12356@gmail.com', '7499197376', '76207712', 'udvf7rc8', '', '', ''),
(80, 'anirbanbanerjee', 'ani.banerjee.2006@gmail.com', '9051455544', 'raiaa-2014', 'tbhcbgiu', '', '', ''),
(81, 'Dinesh Kumar bolla', 'dineshbolla9@gmail.com', '9581018144', 'bolla5168895', 'zhqqiho4', '', '', ''),
(82, 'mithlesh ', 'mahantmithlesh208@gmail.com', '8817328784', 'Mithlesh@112233', 'euxz2zm2', '', '', ''),
(83, 'prabhat poonia ', 'prabhatpoonia040@gmail.com', '93520 93242 ', 'pppBHAT@#', 'fj3heyxw', '', '', ''),
(84, 'MD SANET', 'mdshafiqurrahman33792@gmail.com', '01640310556', 'ferzanasa', 'u84odw7f', '', '', ''),
(85, 'Sunil lovewanshi', 'sunillovewanshi6261336931@gmail.com', '6261336931', 'sunil@12345', 'mhoikwzo', '', '', ''),
(86, 'shiva', 'vikramsingh28071@gmail.com', '7015428071', 'vik@1234', 'hx5sbniz', 'vik@1234', '', ''),
(87, 'atikur rahaman', 'crazy.piklu@gmail.com', '1730591943', '19851804', '0ccckkmo', '', '', ''),
(88, 'Ravi Kumar Srivastava', 'ravisrivastava298@gmail.com', '879978650', 'RAVI1234', 'iwhzqpsb', '\n\n', '', ''),
(89, 'sushilmotale', 'sushilmotale202001@gmail.com', '9022903856', '12525880', 'z4tugi2o', '', '', ''),
(90, 'harsh ', 'drishy1717@gmail.com', '6307854912', '48263262hv', '5tahernv', '', '', ''),
(91, 'sanjuchaudhari', 'sanjuchaudhari86@gmail.com', '8200039960', '3627sd27', 'rcmt0t6q', '\n', '', ''),
(92, 'leela sahu', 'sahuleelasahu796@gmail.com', '7974963708', '42314173', 'o7toiz2p', '42314173\n\n\n', '', ''),
(93, 'ashu Sharma', 'ashusharma2332001@gmail.com', '9358962641', '9876543210@', 'yyrnzzzu', '', '', ''),
(94, 'Arjun', 'arjunmukhopadhyay3@gmail.com', '+1918945825690', 'Purnima@1990', '0zrfcmyk', '', '', ''),
(95, 'Ashu', 'aaaashumalik@gmail.com', '9213777712 ', 'ashu@1987', 'z7uaxfr8', '', '0', ''),
(96, 'Mohan Singh', 'mohankirola@gmail.com', '+919873121997', 'Mohan25@', 'rq0orkau', '\n\n', '', ''),
(97, 'kapil', 'kapuson100@gmail.com', '9604668938', 'free', 'utu0vk3r', '', '', ''),
(98, 'surypogusuresh\n', 'sureshrc6071@gmail.com', '6305466071', '2211', 'ng5nkvyz', 'suresh', '', ''),
(99, 'karthik', 'karthikaluri877@gmail.com', '6281218447', '1c2r3a4s5s', 'c0jcivi7', '\n\n\n', '', ''),
(100, 'Al-Amin ', 'romana@gmail.com', '01766768306', 'alamin45', 'akk84vxp', 'ccc', '', ''),
(101, 'Alamin khan', 'Alamin@gmail.com', '01766768306', 'ALAMINSA', 'mqrnr08p', 'RL11', '', ''),
(102, 'atul Vishwakarma', 'atulv3498@gmail.com', '7580882232', 'genius@1', 'hvmwyuyn', '', '', ''),
(103, 'Sanu Boom', 'freefire50p9@gmail.com', '9060577191', 'sanuk1156', 'ntpougxo', '', '', ''),
(104, 'sohil khan', 'khaans731@gmail.com', '+919596042073', '78625200', 'y26qpp3z', 'TAJAMU557BC', '', ''),
(105, 'Kholi', 'amit.saini.rohtakiya540@gmail.com', '8901894086', 'Monurao@0741', 'hw4jtvr6', '', '', ''),
(106, 'Nitin Kumar', 'farkalenitiiin@gmail.com', '7828320018', '9285113333', 'ohrgbbs0', 'https://p.paytm.me/xCTH/7901d3f8', '', ''),
(107, 'rrr', 'bonigisyamprasad1213@gmail.com', '+17032121343', 'Syam@123', 'maqpmikz', '', '', ''),
(108, 'abi', 'bhawanivishnoi76@gmail.com', '7297816429', 'Abhi@2002', '8o43utnb', '', '', ''),
(109, 'shortskiduniya1@gmail.com', 'shortskiduniya1@gmail.com', '+919958685304', '7065000101', 'hymqh8nd', '', '', ''),
(110, 'DJ hard', 'hajipurayushkumar@email.com ', '9507156166', '9523759718', 'bxgk7500', '', '', ''),
(111, 'mantun', 'mantundss14@gmail.com', '9304864897', '851128', '88zgkjey', '851128\n', '', ''),
(112, 'Aniket', 'aniketpudale51@gmail.com', '9148188108', 'Appa108', '6xog2a4d', '', '', ''),
(113, 'jkr', 'jatin206245@gmail.com', '8077767621', 'Jatin12345@', 'mztraek7', '', '', ''),
(114, 'suraj parihar', 'parihar.suraj4@gmail.com', '7389177790', 'possible123', 'b06znzhr', '\n', '', ''),
(115, 'fantasy expert man', 'mdsartajali666@gmail.com', '6201267651', '62012676', '6c8imghd', '', '', ''),
(116, 'fantasy cricketer', 'mdsartajalidbg@gmail.com', '6201267651', '62012676', 'ctqco0us', '62012676', '', ''),
(117, 'Surya Kiran', 'suryakiran87639@gmail.com', '8555874516', 'Surya1234', 'soc6k6xh', '\n', '', ''),
(118, 'vishal Yadav', 'vishal98837@gmail.com', '8240381785', '@vishal1234i', 'w3z7g0pi', '', '0', ''),
(119, 'PintuATK', 'pintumondal58936@gmail.com', '7980550663', 'pintu12345', 'dnnswynt', '', '', ''),
(120, 'ziya khan ', 'ziyak5760@gmail.com', '9905857253', '7255014290', 'tamqbif3', '', '', ''),
(121, 'nikul', 'nikuls837@gmail.com', '9451175586', 'NIKUL321', '37x5mhaj', '', '', ''),
(122, 'Nikhil ', 'nikul837@gmail.com', '9451176903', '945117', '3nhdy7mp', '', '', ''),
(123, 'IsmailA', 'ismailabbas734@gmail.com', '7349711081', 'Ismail916*', '4ihni0q7', '', '', ''),
(124, 'yash Paul sharma ', 'ss6821149sharma@gmail.com', '6006275273', 'yash', 'debiauvt', 'yash ', '', ''),
(125, 'sai', 'saikrishnaprasadcheerla@gmail.com', '9703308330', '3232s', '4kqcz3jc', '', '', ''),
(126, 'ab', 'abhik.sharma.8123@gmail.com', '7976454390', 'Abhishek8955', 'huqydmdc', '', '', ''),
(127, 'bsrudra', 'bssatnami11@gmail.com', '7566934312', 'bhaw1756', 'wbxf0nn8', '\n\n', '', ''),
(128, 'kalpesh', 'kalpeshparmar1434@gmail.com', '9157106442', 'Dkal1810/', '53gzvfqi', '', '', ''),
(129, 'Abhishek Kumar', 'abhishekk620706@gmail.com', '6207069557', 'Abhishek', '6dyfcz35', '', '', ''),
(130, 'vickydsouza', 'vdsouza270@gmail.com', '7820920170', 'vickydsouza@1987', 'wqzvufaw', 'vickydsouza@1987', '', ''),
(131, 'sanjit', 'mahatoaryan17@gmail.com', '8334097784', 'sanjitdon', 'pxvhfhyy', 'sanjitdon', '', ''),
(132, 'abcd1234', 'abuhussain213@gmail.com', '8389812105', 'abc123@', 'kw64tiu3', '', '', ''),
(133, 'Pranab', 'sbipranab88@gmail.com ', '9547674616', 'pranab88', 'voqjv5tw', '', '', ''),
(134, 'krashnansh', 'krashnansh', '9793363597', '9793363597', '43g8sp6w', '', '', ''),
(135, 'ahmedbhimani', 'ahmedbhimani7777@gmail.com', '9724766031', 'ahmed7777', 'jnonk7xz', '', '', ''),
(136, 'ZIYA', 'hareshmakvana7781@gmail.com ', '6351845115 ', 'RUTVA17', 'kforfnco', '', '', ''),
(137, 'Rahul ', 'rahulgiri386@gmail.com', '6266135821', 'rahul34@', 'bzogrgmr', '', '', ''),
(138, 'MD Faiyaz alam ', '8892776413i@gmail.com', '9380297937', 'FAIY1234', 'afbamwmp', '\n78668778', '', ''),
(139, 'Badal', 'jetstarbadal@gmail.com', '9621643977', 'bad96@21', '3oqszw8s', '', '', ''),
(140, 'Durgesh Singh', 'singh1999durgesh@gmail.com', '8318588568', 'Singh@1999', 'm4iavbbd', '', '', ''),
(141, 'Rohit7272', 'salverohit7272@gmail.com', '9823987260', 'Rohit@7272', '57i3itvf', '', '', ''),
(142, 'Jayesh chaudhary ', 'jayeshbhai403011@gmail.com', '9081699380', '40301150', '5shi6agp', '', '', ''),
(143, 'mohan jakhar', 'mohanlaljakhar2018@gmail.com', '8058478393', 'jakhar123', '7bijqs0q', '', '', ''),
(144, 'jayanta', 'jsgupta201@gmail.com', '8789827311', 'jayanta5370', 'zj7csk4j', '', '', ''),
(145, 'ali', 'monoharali74@gmail.com', '+1919337927751', '78madud6', 'p2zqh4x7', 'win2000\n\nji', '', ''),
(146, 'sohel pathan', 'pathansohel888809@gmail.com', '9859592351', 'psohel07', '0zqd58xd', '', '', ''),
(147, 'rajan2345', 'rajanj448@gmail.com', '9372092013', 'rajan@2345', 'q60oawuw', '', '', ''),
(148, 'siddhant', 'siddhantdeshmukh23022001@gmail.com', '8329280823', 'Siddhant@123', '2xthfs8t', '7721009013', '', ''),
(149, 'ABDALLAH', 'abdallahbaadi353@gailom', '9594099725', '18012697', 'fwoyoecx', '18012697', '', ''),
(150, 'feelmeram', 'feelmeram321@gmail.com', '9894095044', 'ram123ram', 'o4bcico3', '', '', ''),
(151, 'Mumbai Meri Jaan', 'dip03saw@gmail.com', '9004991444', 'Cricket@123', '2ezu87mt', '', '', ''),
(152, 'Raj Soni', 'r2a6j0s2@gmail.com', '6393575842', 'raj@1234', 'idkg5nkk', '', '', ''),
(153, 'rajsoni', 'rajsoni5731@gmail.com', '6393575842', 'rajsoni@1234', '0wqu65iv', '', '', ''),
(154, 'Joker8382', 'kishanjayaswal1998@gmail.com', '7905390308', 'Kishan1998', 'js333dgg', '', '', ''),
(155, 'hdhd', 'playstorecnx2626@gmail.com', '6366356685', 'asasasA123', '6aja5dag', '', '0', ''),
(156, 'niteshdj', 'nitesh942723@gmail.com', '7002851796', 'Pune@942723nit', '2oiqkd8q', '', '', ''),
(157, 'vimal', 'vimalselvan626@gmail.com', '7708307260', 'vimal1987', 'emafjxgb', '\n', '', ''),
(158, 'Jai maa kali', 'ravikarajput1705@gmail.com', '9140511705', 'VikasH@12345', 'inaqqrbp', '', '', ''),
(159, 'raju2-', 'emd72006@gmail.com', '7738171073', 'Shanti', '0bssno7w', '', '', ''),
(160, 'aman001', 'amanshaab7419@gmail.com', '8700043610', 'Aman@123', 'urcpgy8d', '', '', ''),
(161, 'helal962', 'nameis31271@gmail.com', '+1919330247879', 'helal961', 'jz0cndcv', '', '0', ''),
(162, 'shoaib786', 'shoaibshoaib00@gmail.com', '7382577786', '33333786', 's0fd5wah', '', '', ''),
(163, 'Jaswant', 'jaswantsoondi@gmail.com', '8002475168', 'sundi12', 'wdh4iq00', '', '', ''),
(164, 'joydip ', 'joydipmahata96@gmail.com', '6296567914', 'joydip96', 'wc3pxjmy', '', '', ''),
(165, 'Shashi ', 'shashidarling14355@gmail.com ', '9916156663', 'Babu@1983', '60gf327p', '', '', ''),
(166, 'rafmmg', 'brandmakerpatan@gmail.com', '9356808557', 'Ram@1234', 'jovpu8dy', '', '', ''),
(167, 'rajesh bari', 'rajbari5533@gmail.com', '7030590993', 'rajesh@123**', 'xqmr0pn4', '1214', '', ''),
(168, 'gopal', 'gopal.wakade1@gmail.com', '9049910883', '2014aj83', 'hdp62a8y', '\n\n', '', ''),
(169, 'Uttam kumar', 'gorav 231356@gmail.com', '9262926757', 'af490843', '3odsdht8', '', '', ''),
(170, 'nawal kishor', 'nkishor705@gmail.com', '9627082666', '9627082666', 'f22h64gy', '', '', ''),
(171, 'pravin k', 'pravinkirdakar7777@gmail.com ', '9970071604', 'pravin66666', 'i08yaj6w', '', '', ''),
(172, 'Naveen Kumar', 'naveenkumarlochab@gmail.com', '6239471456', '8930020066', 'secdsm4d', '\n\n', '', ''),
(173, 'ANKUSH SARKAR', 'ankushsarkar365@gmail.com', '8334968124', 'a743134b', '5acdptks', '', '', ''),
(174, 'khan555', 'mdzeeshankhan65@gmail.com', '9088309035', 'srkkhan786', 'v4e7vhy3', '', '', ''),
(175, 'manikonar', 'manikonar41@gmail.com', '8898284784', 'manikonar', 'tg7jzqbq', '', '', ''),
(176, 'Bell', 'bs821484@gmail.com', '+919996844483', '123456', 'sacp0gbv', '123456', '', ''),
(177, 'Shankar', 'skamlashankar21502@gmail.com', '8429831929', 'sahu1225sahu', 'idux6aqg', '', '', ''),
(178, 'sanu', 'tyagisanu7@gmail.com', '7015884522', '1029384756', 'khn5psw3', '', '', ''),
(179, 'ajay', 'ajaypradhan7777@gmail.com', '7722073959', '3012352909', 'zhkdyauf', '\n\n\n\n\n', '', ''),
(180, 'damu', 'damodarasacharya755@gmail.com', '+18105069755', '8105069', 'jkeu4spa', '', '0', ''),
(181, 'AMAN SONI ', 'as4021897@gmail.com', '9131631223', 'o131631223', '5apbbrax', '\n', '', ''),
(182, 'mahatab ali', 'mahatabali123mr@gmail.com', '6297801837', 'm114433r', 'ydcrfyps', '12345678', '', ''),
(183, 'Mosvi Basharat', 'bsyed418@gmail.com', '9796853240', '9796853240', 'vweqcvw4', '', '', ''),
(184, 'deepu66bn', 'deepakdubey66bn@gmail.com', '7908261093', 'deepak@123', 'xx3cxut4', '', '', ''),
(185, 'patelsachu2896', 'patelsachin54@yahoo.com', '7778986448', 'Sachu@2896', 'poi527ha', '', '', ''),
(186, 'shafi', 'shafumuhammad7869@gmail.com', '8590004957', 'Shafi@123', '8my8mzgd', '', '', ''),
(187, 'mangal', 'ms621581@gmail.com', '8448633043', 'mangal3449', '5546hu3m', '', '', ''),
(188, 'sab n', 'sajinsajeev69@gmail.com', '9947956748', 'sajin123', 'jnkm0v47', '', '', ''),
(189, 'Saidaiah Kotte', 'k.saidaiah1234@gmail.com', '9985274022', 'saida@123', 'bs7b8tsv', '', '', ''),
(190, 'mr rajput', 'ankushsingh3373@gmail.com', '6006599065', 'ankushrajput', 'df8fwjh8', '', '0', ''),
(191, 'dinuchaudhari', 'chaudharidinakar14@gmail.com', '9359540288', '12345678', 'xwb5ac53', '', '', ''),
(192, 'salman', 'bashasalman822@gmail.com', '6300139324', 'Shaik@1122', '3ayaminv', '', '', ''),
(193, 'yasin', 'khatriyasin241@gmail.com', '9016592242', 'yasin007', 'jkrgkr35', '', '', ''),
(194, 'pramod patel', 'pramodpatel0451@gmail.com', '7019276362', 'pramod', '824urojc', '', '', ''),
(195, 'mady', 'madhurbajaj499@gmail.com', '9888225167', 'Anisha@786', 'zv4cadtq', '', '', ''),
(196, 'pintu yadav', 'yadavpintu13284@gmail.com', '9838177461', '96963924', 'dve77ja6', 'FREEPLAY\n', '', ''),
(197, 'bharat@786', 'bmalhotra897@gmail.com', '9877996105', 'XYZ@786', 'nbbd6syd', '\n', '0', ''),
(198, 'MARKAPUR HEROES', 'Vinay523316@gmail.com', '9848897978', 'Chandramukhi964000', 'aapiy27e', '', '0', ''),
(199, 'DJFANTASY', 'jhanu300@gmail.com', '7019521979', 'Djfantasy786', 'bcnxvc38', '', '', ''),
(200, 'Hemant', 'bhagyashreehp1@gmail.com', '8329648825', 'Hemant@4', 'twh653zk', '', '', ''),
(201, 'anil ram', 'anilram7494092755@gmail.com', '7494092755', '7494092755', 'wbevtpv2', '', '', ''),
(202, 'anilaaryan', 'ar3304578@gmail.com', '7494092755', '7494092755', 'umbjccvf', 'FREE PLAY\n', '', ''),
(203, 'madddqw1', 'giremahadev8@gmail.com', '9309827053', 'mahesh9049@', '4mcw4fca', 'mahesh9049@', '', ''),
(204, 'rajsingh', 'maharanapratap88@gmail.com', '8770319828', 'raj@1234', 'eo5psxkm', '', '', ''),
(205, 'teja', 'srinivasareddy9872@gmail.com', '7989530073', 'rohit 2580', '0s3fh0nq', '', '10', ''),
(206, 'varunk89', 'varunkulk1989@gmail.com ', '8660538818', '9738990663', '5wovqr3z', '', '', ''),
(207, 'jinnu', 'jinnuspaul@gmail.com', '8089230693', 'jinnu@555', 'p7k0c6hi', '', '', ''),
(208, 'GAGN DEEP', 'gagandeep2631@gmail.com', '7037090000', 'gagan4667', 'hunetmhq', '', '', ''),
(209, 'svskreddy', 'svskreddy88@gmail.com', '8897831592', '8008376493', 'g7vcqejp', '0s3fh0nq', '0', ''),
(210, 'devendra', 'pratapdevendra1981@gmail.com', '9355459755', 'Devendra1981', 'fzjstrgk', 'Devendra1981', '', ''),
(211, 'Amit kumar ramawat', 'hariomramawat38@gmail.com', '9928738114', '9928738114', '2fm4o5of', '', '', ''),
(212, 'MAHTO_123', 'digvijaymahto@gmail.com', '9171307879', 'Love@143', '7ci30v83', '', '', ''),
(213, 'bagad shrawan', 'shrawanbagad3182@gmail.com', '9921183658', 'shrawanbagad3182', 'svnck0dy', '', '', ''),
(214, 'shrawan bagad', 'shrawan bagad', '9921183658', '124456', 'a4f0atop', '', '', ''),
(215, 'seenu A', 'seenufct@gmail.com', '9880289191', 'seenufct1234', 'hkbruqfn', '\n', '', ''),
(216, 'Salka Debbarma', 'salkadebbarma4567@gmail.com', '7005498402', 'Salka@1992', 'tuaczeyx', '', '', ''),
(217, 'Sam', 'vishaltapase28@gmail.com', '7021489091', 'Samyak@2021', 'nr5q5xb2', '', '', ''),
(218, 'ramkrishnamallick976@gmail.com', 'ramkrishnamallick976@gmail.com', '9547813565', 'rinku@1980', 'czmbd6y6', '\n\n\n', '', ''),
(219, 'adolf', 'ah0711065@gmail.com', '+916301813238', 'adolf143', '58bz4aur', '\n', '', ''),
(220, 'MANISH 11', 'manishkumarmahi90@gmail.com', '9142703862', 'Manish@123', 'rv8jng65', '', '', ''),
(221, 'amansimr', 'abhdhd767@gmail.com', '9743580643', 'aA@12345', 'sk3djkft', '', '', ''),
(222, 'James SWARUP Kumbhakar', 'puruliajsk@gmail.com', '8942816926', '9800278548p', '46d4rxg5', '', '', ''),
(223, 'rahulgupta', 'rahulguptargp@gmail.com', '7488185543', 'rahulgupta12', 'featqrqg', '', '', ''),
(224, 'VINAY', 'markapurheroes@gmail.com', '9848897978', 'Chandramukhi', '7gw6szpd', '', '', ''),
(225, 'poonamchand', 'poonamchandkhati888@gmail.com', '8114431022', '811443pk', 'suhjbrg0', '', '', ''),
(226, 'MNM', 'moorthymnm85@gmail ', '9845214594 ', '98452145', 'qvhatksm', '560100\n', '', ''),
(227, 'shankarpavi111@gamil.com ', 'shankarpavi111@gamil.com ', '9787956049', 'shankar', 'kn7y60sd', 'ba', '', ''),
(228, 'kiran landage', 'kiranlandge208@gmail.com', '9021634136', 'sHubm1#l', '2gqjofsm', '', '', ''),
(229, 'sanjay', 'sanjaykumawat3961@gmail. com', '9588293741', 'sk123123', 'jfxb36o2', '', '', ''),
(230, 'Arun', 'asarunsingh00@gmail.com', '9816926663', 'Arunkumar@784', 'xkfr2u3r', '\n\n', '', ''),
(231, 'Arun784', 'kumararunsingh0@gmail.com', '9716926663', 'Arun@784', '02kbxrrh', '', '', ''),
(232, 'ashish\n', 'ashishkumar44682@gmail.com ', '8285307161', 'ashish992', '5h2a8ho2', '', '', ''),
(233, 'Rx suri', 'xrx2176@gmail.com', '8296643873', 'suresh@8800', '0wv6vwt3', '', '', ''),
(234, 'Sairaj', 'sanjaybhoi7711@gmail.com', '9075322498', '685668', 'q5bt8p6c', '123456789s', '', ''),
(235, 'Ankit', 'ankit1234lad@gmail.com', '9726388199', 'ankit1234', '3ivpmets', '', '', ''),
(236, 'deepakbind', 'bindhritik@gmail.com', '9794156500', '303435', 'hauvtesf', '', '', ''),
(237, 'atishnindane07', 'atishnindane07@gmail.com ', '9359625272', 'atish@123', 'zyumptrk', 'atish123', '', ''),
(238, 'Roni Tambuli', 'ronitambuli@gmail.com', '9002948178', 'roni@123', 'numequov', '123456', '', ''),
(239, 'Thajudheen.k.t', 'thajuktt211@gmail.com ', '9495208021', 'Thaju@23', 'vyd2g3wu', '', '', ''),
(240, 'POORNESH J', 'poornesh.j@gmail.com ', '9008777406', '041622343', 'z3wf6z4m', '', '', ''),
(241, 'Bargav11', 'Naiduvandutla@gmail.com', '7989978317', 'Dream11@', '4526soyr', '', '', ''),
(242, 'ELIYAZSHAIK', 'sbbrheizbfj@gmail.com', '8374561785', 'ELIYAZSHAIK786', '8jg77x56', '', '', ''),
(243, 'namomeenajaipur', 'namomeenajaipur@gmail.com', '7339911914', '9928214671', '2nncep54', '', '0', ''),
(244, 'Bhakhar123', 'bhaakharsingh@gmail.com', '8385087111', 'bhakharddk9', 'zf5ea6xr', '', '0', ''),
(245, 'kartik', 'rajj96623@gmail.com', '9729454239', 'KAR12@#', 'cq32oq6z', '\n', '', ''),
(246, 'Abhishek saini ', 'abhishekbhai9636@gmail.com ', '9636532284 ', 'abhishek', 'wct6oe52', '', '', ''),
(247, 'Dexodia', 'ffuucckkyyoouu@gmail.com', '1122334455', 'ffuucckkyyoouu', '8q8qjm7g', '', '0', ''),
(248, 'pramod0212', 'patelpramod021@gmail.com', '9001281502', 'Newtarget007@', 'rszho400', '', '0', ''),
(249, 'YOGENDRA N', 'yogendra1988ranjitha@gmail.com', '9164235483', 'YOGENDRA@9559', 'mj3vqngw', '', '', ''),
(250, 'viajy', 'abcsharma360@gmail.com', '8059303653', 'rakku272', '5dj2awmt', '', '', ''),
(251, 'vijay27', 'rakkusharma4@gmail.com', '8059303653', 'rakku2728', 'bmd38yox', '', '', ''),
(252, 'kishor1212', 'lkishor258@gmail.com', '+1918074433249', 'Nanda1212', 'uxhs2kbs', '\n', '', ''),
(253, 'srinivasalu', 'srisrinivasalu188@gmail.com', '8197485340', 'srien@$&amp;', 'twxv2umu', '\n\n\n\n\n', '', ''),
(254, 'dineshrana', 'dinesh.hich@gmail.com', '8571027051', 'eshu2013', 'gbf0sf8h', '', '', ''),
(255, 'ravi', 'ravivsravi0009@gmail.com', '9902007773', 'Ravi123Ravi', 't7akk76n', '', '', ''),
(256, 'vikku', 'vc7992471@gmail.com', '7017315972', '4vivekch', '4mcpj0wh', '', '', ''),
(257, 'sunil Kumar ', 'artistsunil7@gmail.com', '9596690623', '69062395', '6guma7xb', '', '', ''),
(258, 'bhil', 'ya5341183@gmail.com', '7202096033', 'bhil1234', 'x33js6jm', '', '', ''),
(259, 'ajit77', 'ajitmadhavi3152010@gmail.com', '9821999987', 'school17', '34q62xii', '', '', ''),
(260, 'Rohit pawara', 'rp400210@gmail.com', '7666543372', '144956RO', 'r8ymper0', 'ROd2\n\n', '', ''),
(261, 'govind ', 'govindsuthar1867@gmail.com ', '8955545156', 'omgovind', 'nxmr8fzf', '', '', ''),
(262, 'Sagar', 'bhardasagar12345@gmail.com', '9664961860', 'Sagar123@', 'z4giznz8', '', '', ''),
(263, 'Deva@2580', 'devaroy9042@gmail.com', '630306364', 'Deva2580', 'qu3kairi', '', '', ''),
(264, 'konkimalla', 'krishnasanthoshi1989@gmail.com', '9948695989', 'Muthu1989@', 'kjbg2xza', '', '', ''),
(265, 'shubham', 'shubhpawar40@gmail.com', '9325456200', 'pawar123', '6haanoey', '\n\n', '', ''),
(266, 'jeetendra', 'jeetamt93@gmail.', '7740862718', '14325678', '0pzsefqh', '14325678', '', ''),
(267, 'Dixon pd', 'dixonpddixon2@gmail.com', '7025620235', '25051996', 'bibidemn', '', '', ''),
(268, 'hk0771 50', 'hk077150@gmail.com', '9814749914', '12344321', 'cw0wzowb', '', '', ''),
(269, 'sachin katoch', 'ravindersinghkatoch847@gmail.com', '8493825239', 'sachinkk', 'gcmp543x', '', '', ''),
(270, 'saivaz', 'vazas93@gmail.com', '9724474520', 'vaza2424', 'uniir2dp', '', '', ''),
(271, 'rajan', 'rajanj1998@gmail.com', '7010936414', 'Rajan@123', '0hbf0ss6', '', '', ''),
(272, 'krishna', 'dubukwadkrishna@gmail.com', '7057041807', '1234567890', '3npvn64e', '', '', ''),
(273, 'Gannojudevender', 'gannojudevender@gmail.com', '8008873651', '123devkamal', 'ys4rih8s', '', '', ''),
(274, 'soren123', 'nirmalsoren891@gmail.com', '9547828983', 'soren.*#@1', '750gnoma', '', '', ''),
(275, 'jeevana', 'jeevanpoojary664@gmail.com', '7624856382', 'jeevan 12344', '4in4apa0', '\n', '', ''),
(276, 'swami koragajja ', 'sachinsachinpoojaey@gmail.com', '7624856382', 'A123456#', 'yf2r0wi8', '', '', ''),
(277, 'Ashok', 'akpatel630@gmail.com', '9712043082', 'a#971969', 'dmxpiqzd', '', '', ''),
(278, 'sonu', 'gusainsonu95@gmail.com ', '9568603632', '9568603632', 'otq5mbux', '', '', ''),
(279, 'dinkar', 'chaudharidinakar123\n\n@gmail.com', '9359540288', '12345678', 'r7fm0e0d', '', '', ''),
(280, '83', 'godmafia42@gmail.com', '8305217054', 'aashish12', 'mpc3jtjz', '', '', ''),
(281, 'Nagesh verma', 'nageshverma492@gmail.com', '8128426429', 'zqu0048447', 'v84cekhm', '', '', ''),
(282, 'pokkiri', 'dinesht2003@gmail.com', '8680991594', 'Hanika@123', 'mf3dabky', '', '', ''),
(283, 'rocky', 'rachitkurmi0@gmail.com', '9548440945', 'Sudhir8954$', 'mqfu8tdm', '', '', ''),
(284, 'chandan', 'chandansinghnegi81@gmail.com', '+918299518837', 'cha5@QWE', 'no2da4ev', '', '0', ''),
(285, 'vinodsaini', 'computerplanet25@gmail.com', '9313161846', '12345679', 'z7u058nw', '\n', '', ''),
(286, 'misha', 'naishargeeshrivastava@gmail.com', '8238145088', 'naishu@2000', 'wt4xgf33', '', '', ''),
(287, 'ashwanikumar09627', 'ashwanikumar09627@gmail.com', '8955234446', 'ashwani223', 'k02yenp0', '', '', ''),
(288, 'Khan', 'Khanraziq@002gamil.com ', '9152806245 ', 'khan77789', 'e0e8h22d', '', '', ''),
(289, 'samal ', 'samalkaibartta87@gmail.com', '9693635147', 'Sam@123', 'tq00o5om', '', '', ''),
(290, 'kaibartta', 'samalkumar172@gmail.com', '8969120751', 'kaib@12', 'aujtr8u4', '', '', ''),
(291, 'abhi', 'abhimannudev41@gmail.com', '8250145602', '9614306236', 'bjkdh6n7', '', '', ''),
(292, 'anil', 'anilvishwakarma460@gmail.com', '7359496504', '989277010', 'a6fnmfv4', '\n', '', ''),
(293, 'shahzad mujawar', 'shahzadmujawar590@gmail.com', '8698699528', 'shahzad320', 'a860fdkp', '', '', ''),
(294, 'adarsh135790', 'singh1952017@gmail.com', '9919191332', '9919191332', 'bcqq5b7j', 'FREEPLAY', '', ''),
(295, 'mohitkr26', 'mohitkr2666@gmail.com', '7004290176', 'mihitkr123', 'zwjopc07', '', '', ''),
(296, 'samanamah', 'srahul8941@gmail.com', '6396509649', 'rahu63@$', '4unxkwet', '', '', ''),
(297, 'kalyanji ', 'kalyanjichheda1976@gmail.com ', '9987492983', 'kalyanji76', 'krg5txe4', '', '', ''),
(298, 'Arun2513', 'Prasadcomunication@gmail.com ', '7797447494 ', 'arungudiya2513@', 'adkffkij', '\n\n', '', ''),
(299, 'mahakalihap', 'mahakalihap@gmail.com', '9428678972', 'hap12345', '0hru00o6', '', '', ''),
(300, 'Rajesh', 'vadarajesh90@gmail.com', '8074441226', '7253744', 'ekcscura', '', '', ''),
(301, 'Jitendra ', 'jitenkarki77@gmail.com ', '9027341188', 'jitu5544', 'shdn3znr', 'jitu777', '', ''),
(302, 'Durjoy420', 'durjoybanik347@gmail.com', '+917908810877', '@amitomardurjoy', 'k2i0apii', '', '', ''),
(303, 'kamlesh123mahto', 'kamlesh91023mahto63@gmail.com', '9102363601', 'kartikrajkumar', 'nwd6ynip', '\n', '', ''),
(304, 'mohan', 'mohanakash8800@gmail.com', '9629008224', '7518', 'o4goranf', '7518', '0', ''),
(305, 'om kumar singh', 'omkumarsingh421@gmail.com', '7061772173', 'singh9090', 'adgofb0h', '', '', ''),
(306, 'voot', 'coot4523@gmail.com', '8287883738', '47DPeKQ#', 'htp46b2h', '', '', ''),
(307, 'vipindolly', 'vipinhmr41@gmail.com', '9816610442', 'delhi1234', '4wu676ob', '', '', ''),
(308, 'anurag', 'mranu031@gmail.com', '8858562584', 'anuragji', 'ie8if4q7', '', '', ''),
(309, 'Anurag yadav', 'talshee786@gmail.com', '8828650288', 'plokijuh', 'cjodv6hu', '11111', '', ''),
(310, 'krishnamurthy', 'krishnamurthyvr26@gmail.com', '7019234785', 'mk199324', 'ckei2b3e', '', '', ''),
(311, 'aj', 'ajmourya11111111@gmail.com', '9981935948', 'rajwap', 'mvzoy2pa', '', '', ''),
(312, 'Ajay Kumar\n', 'shonika000@gmail.com\n', '9981935948', 'rajwap', 'rovrv2hy', '\n\n', '', ''),
(313, 'DremarKrish', 'anu.anupamsingh@gmail.com', '8869949001', '123456789', 'mxhviwfy', '\n', '', ''),
(314, 'Param', 'chalamattiparameshwarappa@gmail.com', '7090197624', '7090197624', '8ibd2nuz', '\n', '', ''),
(315, 'Anil kumar', 'anilmahala8875@gmail.com', '6377644709', 'Anil653@#', 'nm7hucyx', '', '', ''),
(316, 'Riyaz', 'riyazraf@gmail.com', '9836660749', '97151949', 'jw723xya', '', '0', ''),
(317, 'AJITH ', 'ajr07ajithraj@gmail.com', '9526497285', '11ajith22', 'pefwz4a0', '', '', ''),
(318, 'heer', 'divyeshpatel9262@gmail.com', '8160412588', 'sonu@1712', 'kh4adecn', '', '', ''),
(319, 'Shiva@3456', 'bajpais332@gmail.com', '8081993781', '1.shiva2.', 'qtgsbrij', '8081GUJARAT', '', ''),
(320, 'Yogesh Bhalke', 'yogeshbhalke855@gmail.com', '+919922146264', '245383', '4c8cv250', '', '', ''),
(321, 'jamila', 'jamilakhatoon306@gmail.com', '8969534512', '8969905993', 'jmbox6hx', '', '', ''),
(322, 'kapil664', 'kapilbohra80@gmail.com', '9833019590', 'trtrtrtr', '4m442360', '', '', ''),
(323, 'santosh ', 'santoshahire11388@gmail.com', '7057803520', 'santosh143', '008m4mk6', '', '', ''),
(324, 'psk', 'psk163305@gmail.com', '9619284249', 'Csd@163305', '3xewwxag', '', '', ''),
(325, 'aravinthk', 'Aravinthmoon@gmail.com', '9986993774 ', 'Nokia@123', 'aaskvd3o', '', '', ''),
(326, 'Rafi', 'arifarifulislamarif1986@gmail.com', '01963364636', '1986', 'bm42xyoz', '12', '', ''),
(327, 'Dhavalrana010', 'drana5414@gmail.com', '+17990515612', '1733140000', 'v87bx82e', '', '', ''),
(328, 'Rajeshkannau', 'rajeskannau@gmail.com', '9789568101', 'Rajesh@123', 'ytudfndc', '', '', ''),
(329, 'Manoj Kumar', 'km9639410@gmail.com', '8882592994', '767853', 'abw5hrsq', '', '', ''),
(330, 'prathviraj S Naik', 'prathvirajnaik62@gmail.com', '9380921836', '8088884352', 'ufk44e7p', '', '', ''),
(331, 'chetan', 'chetandyavanagoudar@gmail.com', '+919036647176', '9036647176', 'opah6khh', '9036647176', '', ''),
(332, 'prem', 'premakumardarla@gmail.com', '6301110334', 'prem143', 'gaqdnn0j', '1234', '', ''),
(333, 'Gotu malavi ', 'Malaviyg@gmail.com ', '7974441919', 'pail4455', 'kky8orde', '', '', ''),
(334, 'subham', 'vikashmishraapi002@gmail.com', '9326916463', 'v93i26k91', 'dcs5wbdm', '\n', '', ''),
(335, 'syshja', 'dgshsua@gmail.com', '578362728', 'bshdus', 'gkhux5c0', '', '', ''),
(336, 'shuaia', 'bshauka@gmail.com', '887652117', 'nobi789', 'rof0zeu6', '', '', ''),
(337, 'Tarunposwal16', 'Iamflirtbazz@gmail.com', '7011084536', 'Tarunposwal#16', '4x2atb0v', '', '', ''),
(338, 'sk basha', 'skjohnbash@gmail.com', '9618535356', '7866', 'jfwwxb23', '', '', ''),
(339, 'Akshay', 'akshayranmode22@gmail.com', '9696912222', 'Akshay1222', 'jxdkfg6y', '\n', '', ''),
(340, 'sumit9831', 'sumit.barman83.sb@gmail.com', '7003062984', 'Papai@9831', 'f7rgdp2f', '', '', ''),
(341, '8882445581', 'singhprakash487@gmail.com', '+918882445581', 'prakash487', 's6mfj3mw', '\n', '', ''),
(342, 'Madan', 'madankishan444@gmail.com', '9337883713', 'kishan', 'e5iv6qb6', 'FREEPLAY', '', ''),
(343, 'vijay joshi', 'vijayjoshi6641@gmail.com', '+1918793760053', '12345678', 'wkwkize2', '\n\n\n', '', ''),
(344, 'Vansh16e7', 'Vanshkashyap8911@gmail.com ', '9557969964', '99978899', '5vpf2g77', '', '', ''),
(345, 'ganesh', 'ganeshkumar31081993@gmail.com', '8667066560', 'Aryan@3108', 'mmgrj4go', '', '', ''),
(346, 'ankit5111', 'ankit51115111sharma@gmail.com', '9877407426', '174305', 'xvucsner', '\n', '', ''),
(347, 'Nikko', 'nikhleshagarwal0405@gmail.com', '6290467706', '67@890nikhil', '7bpo6gje', '\n\n', '', ''),
(348, 'sojib ', 'mdsojib8681@gmail.com', '01910868163', '2899195', '002jdry2', '0', '', ''),
(349, 'pari', 'parimaheta41169@gmail.com', '8511880558', 'pari851188', 'hujb2s44', '', '', ''),
(350, 'parimal', 'p306579@gmail.com', '8511880558', 'pari851188', 'pd0nv4p0', '', '', ''),
(351, 'THAJU', 'subaidank13@gmail.com', '9495208021', 'Thaju23', 'qku7ixbn', '', '', ''),
(352, 'Bindass Boy Asish', 'asish3540@gmail.com', '8826908011', 'Asiah@11', 'gwyc7tc4', '', '', ''),
(353, 'Biswas0011', 'bhalobastemonlage@gmail.com', '8826908011', 'Asiah@11', 'mdzg73hb', '', '', ''),
(354, 'vikram_saini', 'vikramsaini7809001@gmail.com', '6230520200', 'Akash001@', 'd58fwk4p', '', '', ''),
(355, 'Masoom Ojha ', 'shubhamojha353@gmail.com', '8744854161', '1234567890', 'ykvfd3kw', '', '', ''),
(356, 'mohanzombie\n', 'mohanbanners\n@gmail.com', '7386469546', 'lakshmi_7557', '3df6umkh', '', '', ''),
(357, 'Kailash Chandra Mali', 'malikailash36@gmail.com', ' 9602304727', '12345y78', 'xh0456wy', '', '', ''),
(358, 'munesh', 'muneshkumar110000@gmail.com', '9667477365', '100200300', 'wshcond3', '', '', ''),
(359, 'narayan ray ', 'royn2984@gmail.com ', '7061876522', 'vip123', '4ahqa3xq', '', '', ''),
(360, 'raj', 'rajeshpadave01@gmail.com', '8369493847', 'rajesh@01', 'kcpfjawc', '\n', '', ''),
(361, 'ml0558939', 'ml0558939@gmail.com', '9598580111', 'Gola@143', 'xcftm86f', '', '', ''),
(362, 'glen', 'glen.royston@yahoo.in', '8050889386', 'yorker', 'n5pgkwoy', '', '', ''),
(363, 'JP GROUP 976', 'jaypandit976@gmail.com', '7376005778', '7376005778', 'xo3moqfs', '', '', ''),
(364, 'lokesh', 'lokeshdivya25@gmail.com', '8270153695', 'Lokesh1@', 'poc8oczq', '', '', ''),
(365, 'Ajay ji', 'ajaymarkanday2@gmail.com', '7879366431', 'Ajay@123', '0aa7oht3', '', '', ''),
(366, 'gs', 'gabbarmeena2003@gmail.com', '8239817467', 'gabbar3@', 'qq8gkuhp', '\n', '', ''),
(367, 'Akash', 'rk80022018@gmail.com', '7488914295', '80230112', 'zcejg4gz', '', '', ''),
(368, 'sandip kumar', 'sk4088342@gmail.com', '8173075763', '246589', 'ucpccnaq', '', '', ''),
(369, 'jagbhan', 'jagbhan20@gmail.com', '8962444909', 'yadav1234', 'ttd4p7b0', '', '', ''),
(370, 'Ghanshyam ', 'shyamthakur865@gmail.com', '7018403898', 'ghanu123', '6f24zdk8', '', '', ''),
(371, 'Mithun', 'mk712155@gmail.com', '9918138543', 'Mithun1@', 'kjm2zrjj', '', '', ''),
(372, 'Sachin sarij', 'Ssachinsaroj11@gmail ', '8595610834', '@@11@@22', '7edf5oyx', '1470\n1470\n1470\n', '', ''),
(373, 'satish7212', 'msssatishkumar@gmail.com', '8840331753', 'aman@2012', '8mjz486y', '', '', ''),
(374, 'ramansoni11', 'ramansoni045@gmail.com', '9782721526', 'manish', '3pruwdw3', '', '', ''),
(375, 'rashid', 'rjamal575@gmail.com', '8896857966', 'kldkld78', '842j8r0i', '', '', ''),
(376, 'kiranm', 'saikiranm1809@gmail.com ', '9912528215', 'saikiran35', '6wmryt5q', '', '', ''),
(377, 'bishal Kumar 12', 'bishalkumar2287@gmail.com', '9348633744', '652369', 'qa7036ti', '\nCIO\nnnj', '', ''),
(378, 'samy', 'alag67874@gmail.com', '9894721729', '059303615', '8s4miakq', '', '', ''),
(379, 'j855', 'nj855@gamil.com', '9871523886', 'kumar@123', 'k822xmis', '', '', ''),
(380, 'pavankumar', 'pavankumar.pk624@gmail.com', '9985681685', 'P@1chinnuu', '4dbkorsh', '', '', ''),
(381, 'Samarth', 'nagarsamarth62@gmail.com', '9990748420', '123456789@', '4p0vrea4', '', '', ''),
(382, 'gyanoji Ingole', 'gyanojiingole432@gmail.com', '9850866011', 'gyanoji', 'o4mcvz57', '', '', ''),
(383, 'RAKESH KUMAR GUPTA', 'rakeshgupta.baraon@gmail.com', '9708670204', '12345678', 'm27hi26t', '', '', ''),
(384, 'Pravin memane', 'pravincmemane558@gmail.com', '7620727039', 'sonalipravin', '3ctiae6a', '', '', ''),
(385, 'rohi9855', 'rahulkumar9855@gmail.com', '9855964774', 'rohit6#:&quot;', 'k3zfej2u', '', '', ''),
(386, 'sanjay das', 'sdas066@gmail.com ', '7031926896', 'sanjay135@', '83in358x', '', '', ''),
(387, 'naga', 'naganaga39412@gmail.com', '7674844384', 'nagababu', 't6ixrh22', '', '', ''),
(388, 'vishant bhagava', 'vishantbhargava1488@gmail.com', '7838111488', 'Dream11', 'sfae42ri', '', '', ''),
(389, 'chetanpatel', 'chetanpatel664@gmail.com', '9913723803', 'chetu', 'vy6nomgu', '', '', ''),
(390, 'vishnu', 'vvvv54044@gmail.com', '9360565355', 'Vishnu@123', '6kkk4pfu', '', '', ''),
(391, 'harjinder', 'jinder3355@gmail.com', '9023390755', '233755', 'z88wjmht', '', '', ''),
(392, 'prapra5', 'pradeepprasad52@gmail.com', '9602520907', 'pradeep123', 'qstumehc', '', '', ''),
(393, 'Deepak ', 'Dmandal0511@gmail.com ', '9958631916', 'Pakhi051714', 'cqxjwn2r', '', '', ''),
(394, 'DEBDATTA 1996', 'debdattasingh394@gmail.com', '9829925447', 'DATTA@123', '4ty6pygh', '', '', ''),
(395, 'anilveer', 'anilv9707 ', '9405924059', 'anil9707', 'j6i2sbfn', '', '', ''),
(396, 'anil123', 'anilv9707@gmail.com ', '9405924059', 'anil9707', '7yppuzbw', '', '', ''),
(397, 'Mithun Roy', 'mithunroy7223@gmail.com', '8392019321', 'mithun', 'a7yg3xh3', 'mi1321\n', '', ''),
(398, 'mayank ', 'rm5011318@gmail.com', '7041391065', 'mayank990', '0twtsevo', '', '', ''),
(399, 'Akshay Kumar', 'akshaykrtiwarigrd@gmail.com', '9031892373', 'akshay#2773', 'fb7jitr2', '', '', ''),
(400, 'shailen soren', 'shailensorenxx011@gmail.com', '9002933034', 'shailen soren', 'utxfx636', '\n', '', ''),
(401, 'sohel1234', 'sohelshaikh51687@gmail.com ', '9503473994', 'sohel2002@', '8znap2nt', '', '', ''),
(402, 'Anandakumar', 'anandakumaathani1996@Gmail.com', '8970244029', '729927', 'ifgbakjk', '2854', '', ''),
(403, 'abhi342', 'kandala0@gmail.com', '8106597196', 'Abhi1234', '4ibebbzq', '', '', ''),
(404, 'ashiqur rahaman', 'rahamanashiqur055@gmail.com', '01742252128', 'aaaaa 55555', 'kyzdir4z', 'AAAAA 55555', '', ''),
(405, 'pratap xalxo', 'pratapxalxo6@ gmail.com', '9538549155', 'pratapxalxo6', '4ija3gq6', '', '', ''),
(406, 'Rajat Tiwari', 'rajat90015@gmail.com', '9001512221', 'rajat90015@', 'hkrnn0pb', '', '', ''),
(407, 'Jagadeesha.M', 'jagadeesham258@gmail.com', '9008582876', 'Jagasri#1234', '4qfabne2', '', '', ''),
(408, 'anup1982', 'anupkumargupta1981@gmail.com', '+449990366347', 'anup1982', '7w54nbfc', '', '', ''),
(409, 'dmumbai11', 'ds88375@gmail.com', '9969601886', 'Ara80888', '6htp44dv', '', '', ''),
(410, 'wnisam', 'wtariq446@gmail.com', '7006602294', 'tariqwani', 'g4mphycv', '', '0', ''),
(411, 'Vinod bhan', 'vinodbhan2386@gmail.com', '9622191494', 'bhan2386', 'ymwj7cu3', 'Bhan2386\n', '', ''),
(412, 'ganesh32', 'whitedevil032115@gmail.com', '9082371637', 'ganesh00', 'ffgxh84b', '', '', ''),
(413, '22992299', 'ujasbhatthj@gmail.com', '9328173230', '22882288', 'mnk7z66h', '', '', ''),
(414, 'karan walia', 'dineshwalia108@gmail.com', '9354124824', '1234rakhi', 'iksokjm8', '', '', ''),
(415, 'Mohammed ', 'Arafasanitaryputtur@gmail.com', '8123877686', 'moorje', '78wbfypt', '', '', ''),
(416, 'prakashcute ', 'prakashcute19@gmail.com', '+1919786901465', '9786901465', 'fiz0k7p7', '', '', ''),
(417, 'rajendra', 'rajen3440p@gmail.com', '6371911207', '123456', 'wqyp2x7d', '', '', ''),
(418, 'Subhadip', 'subah.subhadip@yahoo.com', '8597771848', 'subhadip', 'q5p7t4yp', '', '', ''),
(419, 'thunder', 'nc589128@gmail.com', '+1918357875125', '147852369', 'qkko6xb5', '', '', ''),
(420, 'handsome ', 'krishnamahato11122@gmail.com ', '9572433041', 'krishna123', 'hz7j68zi', '', '', ''),
(421, 'Ananda', 'anandareddy46@gmail.com', '9972542833', '9972542833', 'uzf8mhj0', '\n', '', ''),
(422, 'Dinesh ', 'kakpmcdkd@gmail.com', '8978543948', 'dinesh2736@', 'fq7nogsi', 'EBONUS100', '', ''),
(423, 'nabiullah Shaikh', 'shaikhnabiullah96@gmail.com', '8623095789', '8623095789', 'dstjg8y7', '8623095789', '', ''),
(424, 'rajesh kumar ', 'rajeshghritlahre744@gmail.com', '6262577854', 'gopilala', 'hdxqgp5s', '', '', ''),
(425, 'gannoju1990@gmail.com', 'gannoju1990@gmail.com', '8008873651', '123devkamal', 'hpop8nod', '', '', ''),
(426, 'MANUGJOSEPH', 'mailmeatmanugeorge@gmail.com', '7034794459', 'manugj@1234', 'fn3b08ep', '', '', ''),
(427, 'pankaj@kopsa', 'kataranaresh018@gmail.com', '9512638399', 'pankaj000', 'g7g86ss7', '', '', ''),
(428, 'King', 'predatorking0707@gmqil.com', '9205238492', '6000G@gh', 'g8dhqq6o', '', '', ''),
(429, 'loxal', 'ppl86491@gmail.com', '9750160028', 'parthu97', 'oofrvbt0', '', '', ''),
(430, 'Manish', 'manishdev954@gmail.com', '8709059567', 'pat!@@1200', 'ivhwb5yy', '', '', ''),
(431, 'bhil898', 'mbhil786@gmail.com ', '7202096033', 'bhil1234#', 'wn4ue7to', '', '', ''),
(432, 'SKN', 'satishkumarnaik65@gmail.com', '9993338484', 'satish123', 'ehezd03v', 'satish123', '', ''),
(433, 'husankhan', 'husainkhan00786@gmail.com', '9850069146', '9850069146', '8jyud6pj', '', '', ''),
(434, 'Raja Sekhar', 'rajasekhar456@gmail.com', '9820723656', 'rajiitb@123', 'gcjv3be3', '', '0', ''),
(435, 'divendra', 'hemanthkichha1@gmail.com', '6362369546', 'nanakka1234', 'd7azu20g', '', '', ''),
(436, 'vikash kumar', 'vikash321415@gmail.com', '7505642039', '75056420', 'pug0uno0', '', '', ''),
(437, 'Raghu', 'raghunekara469@gmail.com', '8722626912', '36393639', 'xof4mv5k', 'gxvhfjh14', '', ''),
(438, 'dhananiraj', 'dhananiraj1@gmail.com', '9104807728', '8128281617', '5h63z2od', '1234', '', ''),
(439, 'KALYAN SINGH', 'anduustadhumai@gmail.com', '8791597843', '12345678', 'rzpykuuf', '', '', ''),
(440, 'vikas singh', 'vikejamuniya1988@gmail.com', '9335414163', 'kuldeeps', 'r52m0gd3', '', '', ''),
(441, 'Kumar', 'kumarvarlak@gmail.com', '9845450365', 'met4629', 'p486ss5f', '\n', '', ''),
(442, 'Aadhya123', 'chavapraveen2222@gmail.com', '9550439714', 'aadhya123', 'd5dfisxq', '\n', '', ''),
(443, 'Tilok chand', 'nayakmanaram1996@gmail.com', '9680167055', '52331200', 'ugut0hei', '', '', ''),
(444, 'Pallav', 'sen.pallav28@gmail.com', '9001551574', 'pals9001', '4a8h02dh', '', '', ''),
(445, 'Vivek kumar', '770084ranjankumar@gmail.com', '6203755934', '7700084', '634yw302', '', '', ''),
(446, 'koushik das', 'koushikdas6639@gmail.com', '8348378303', 'das83483', 'snohnf46', '', '', ''),
(447, 'Bigshot\n', 'predatorking0707@gmail.com', '9205238492', '4000A@as', 'enyakkr0', '', '', ''),
(448, 'Dheeresh Kumar kushwaha', 'Dheereshkushwaha97@gmail.com', '8103825659', '7697551159', 'jcsrtv2d', '', '', ''),
(449, 'Mithun bag', 'sd002729@gmail.com', '6290804292', 'game@12345', '5qtirvm0', '\n\n\n\n\n', '', ''),
(450, 'kamble ', 'kambleghininath@gmail.com', '9637106312', 'kamble@87', '2theco3d', 'kamble@87', '', ''),
(451, 'jaken', 'jalenregan456@gmail.com', '8822676991', 'ppp1x', '2j2atey3', '', '', ''),
(452, 'Rishabh Kumar Pillay ', 'rishabh2003pillay@gmail.com ', '7066714847', 'Rishabhkp07', 'akmeat7z', '', '', ''),
(453, 'Sus', 'Sushilmurmu285@gmail.com', '7008494471', 'Sushil@12345', '2toyuvfy', '', '0', ''),
(454, 'ArjunGairola', 'gairolaanil1@gmail.com', '8595855491', '9711257893', 'uophsqqb', '', '', ''),
(455, 'AJAY KUMAR KHATA', 'bluekhata@gmail.com ', '9674176739', 'pass@123', '0wuvjw7q', '', '', ''),
(456, 'sushanto ', 'sushantopanja7@gmail.com', '7063056309', 'sushanto@356', 'h0bc005f', '', '', ''),
(457, 'prakashsp', 'prakashsp1985@gmail.com', '8825709275', '18sp1985', '58jnzyo6', '', '', ''),
(458, 'sangharsh', 'newwebapps99@gmail.com', '8329707127', '412803', 'hgqqjmbz', '', '', ''),
(459, 'samm', 'samitbanik33@gmail.com', '9436375830', 'samitbanik1234', 'kb5cng6z', '', '', ''),
(460, 'MukeshKumar', 'mukeshkamro@gmail.com', '9754970034\n', '112044', 'iox7eist', '', '', ''),
(461, 'Birbal', 'ajit80810@gmail.com', '9113388227', '9334526273', '0s7ijcom', '', '', ''),
(462, 'sanat', 'sanat123@gmail.com', '6294490847', 'sanat123', 'ax45puxs', '', '', ''),
(463, 'shaik Akbar basha ', 'akbar786basha0409@gmail.com', '72079 02455 ', 'akbar123', 'fdeagxm0', '', '', ''),
(464, 'Chauhan', 'chauhabsuresh1986@gamil.com\n', '9624595200', 'chauhan1986', 'dk0mrvh2', '', '', ''),
(465, 'bholeshambo', 'mani999924@gmail.com', '+919971890933', 'Shiva$29', 'dk2omn8p', '', '', ''),
(466, 'dinku', 'dinkuroy404@gmail.com', '9064781848', '987654321', '76pimnsp', '\n', '', ''),
(467, 'raman', 'kumarraman08504@gmail.com ', '8709159674', 'ramankumar', 'c4dirto4', '', '', ''),
(468, 'prakash', 'prakasraj730@gmail.com', '9092568652', 'kanishka@1', 't2ivwhvh', '', '', ''),
(469, 'Subha\n', 'subhadip.badshah@gmail.com', '9614681572', 'subhadip', 'hseatcqi', '', '', ''),
(470, '7567519567', 'shreyasvasave@gmail.com', '7567519567', 'Pass@123', 'xqjpjif8', '', '', ''),
(471, 'munna11', 'munnatirpari@gmail.com', '7739501312@', 'Riyaz1412', 'mpnb4hma', '', '', ''),
(472, 'ronit', 'ronitkumar648@gmail.com', '9315384061', 'ronit9315', 'iy2ike8z', '', '', ''),
(473, 'kuldeep chauhan ', 'chauhansudip645@gmail.com', '8853399218', 'anu@15', 'j606qktc', '', '', ''),
(474, 'chetan@123', 'chetanc10091998@gmail.com', '9765017757', 'Chetan@123', 'xyf2vpuz', 'Chetan@123', '', ''),
(475, 'dattatray', 'dattadharmadhikari70@gmail.com', '8796289534', 'datta8796', 'h80m8iz8', '\n\n', '', ''),
(476, 'chauhansuresh', 'chauhabsuresh1986@gmail.com', '9624595200', 'chauhan1986', 'it4tsty3', '', '', ''),
(477, 'kkkk', 'avishkarkatkar0982@gmail.com', '3333222211', 'iiii8888', 'nixest7p', '', '', ''),
(478, 'sadop', 'ksadhan68@gmail.com', '3344334433', 'iiii8888', 'cqcca8kt', '', '0', ''),
(479, 'ritesh', 'riteshsingh1190@gmail.com', '+919321090464', 'Ringh@123', 'rroau06i', '', '', ''),
(480, 'Kamlesh', 'mehrakamlesh33@gmail.com', '9987330659', '9456763392k', 'jvcytq48', 'ksme', '', ''),
(481, 'Suraj Shaw', 'rahulshaw668@gmail.com', '8159849709', 'rahul4427', 'iudcfvvg', '', '', ''),
(482, 'PRAVIN DURYODHAN KIRDAKAR ', 'pravinkirdakar5555@gmail.com ', '9970071604', 'pravin5555', 'yok7psh7', '', '', ''),
(483, 'test', 'vidmek05@gmail.com', '9999999999', 'Trst@123', '6oiqd5jp', '', '', ''),
(484, 'Mytestapp', 'test@gmail.com', '9999999999', 'Test@123', 'ciofuhoo', '', '0', ''),
(485, 'boby', 'bobybobymt@gmail.com', '7012473256', '1998boby', 'vjr65hye', '\n\n', '', ''),
(486, 'inkkm', 'inkkm.group@gmail.com', '9739988004', '123456', 'a6wmkssj', '', '', ''),
(487, 'sanatdas', 'sanat8348@gmail.com', '6294490847', 'sanat123', 'y2vieedq', '', '', ''),
(488, 'anurag123', 'rozgarexamoffical@gmail.com', '9817982711', 'apple@123', 'kuqouzre', '', '', ''),
(489, 'Pramanik', 'top5gamingproducts@gmail.com', '9817982711', 'Anurag@123', '24joft70', '', '0', ''),
(490, 'playstore ', 'playcnx06@gmail.com', '9154191242', 'playstore', 'odybcexp', '', '', ''),
(491, 'manju', 'baanadamanjunatha@gmail.com', '9964042868', 'manju@123', '84u7t4bi', '', '', ''),
(492, 'Policybazaarq', 'ittwisenonejittal@gmail.com', '9983366834', 'Wuhb@1234567', 'n6kyetox', '1234567880\n', '', ''),
(493, 'Rohit', 'lovenet.roohit@gmail.com', '9006192907 ', '9006192907', 'narxtd2m', '', '', ''),
(494, 'Geswarrampatel', 'geswarrampatel@gmail.com', '8839911673', 'rohan@740', 'pwnaa3pr', '', '', ''),
(495, 'manish kumar', 'monu7209677662@gmail.com', '7209677662', 'm7209677662', 'v85bdxhp', '', '', ''),
(496, 'Aamir', 'ah9488280@gmail.com', '7415949525', 'aamir', 'q578ktdt', '', '', ''),
(497, 'sherni', 'esteemall94@gmail.com', '8792072763', 'sushpari', 'fhfwuu2u', '', '', ''),
(498, 'Bsjp90', 'panja.biswajit1990@gmail.com', '9804191328', 'Bp151917', 'mzeci7gx', '\n', '', ''),
(499, 'Yamaraj90', 'abbi.kallur@gmail.com', '+919611747125', 'Abbi@1990', '5yd2gcwj', '', '', ''),
(500, 'Venkat', 'aparanji.2009@gmail.com', '8185860303', 'cherrynaga@1', 'kyfzfy7r', '', '', ''),
(501, 'vikas90', 'vikasingh458@gmail.com', '7290889538', 'Ganeshdev90@', 'xi7f4ete', '', '', ''),
(502, 'patelchirag0009', 'patelchirag0009@gmail.com', '8511147713', 'swam@2010', 'r3my72js', '', '', ''),
(503, 'Divyesh', 'heer123@gmail.com', '8160412588', 'sonu@1712', 'nz8fttj8', '', '', ''),
(504, 'sadi', 'sasinoob101@gmail.com', '8848993821', '8848993821', 'mfufjjwy', '', '', ''),
(505, 'vadarajesh', 'rajeshvada56@gmail.com', '8074441226', 'srilatha1', 'agy8bxva', '', '', ''),
(506, 'pdilip517', 'pdilip517@gmail.com', '9004429455', 'dilippatel', '50rptubu', '', '', ''),
(507, 'plt', 'mparmesh888@gmail.com', '9812214297', 'Pk@5678', 'mbkyogna', '', '', ''),
(508, 'Udhayakumar ', 'udhayakumar90879@gmail.com', '+919344514031', '123456', 'pc8dezyt', '', '', ''),
(509, '@sagarrajput007', 'singhluckey353@gmail.com', '8299416480', '1234sagar', '5u7uj8dc', '', '', ''),
(510, 'chodna', 'rsinha026@gmail.com', '8918020535', 'chodna123', '2tzctsc7', '', '', ''),
(511, 'Rana', 'ranaranacsk@gmail.com ', '9985884836', 'Ranadeep*123#', 'kfebdovf', '', '', ''),
(512, 'Dharmik ', 'dharmik.kacha.0705@gmail.com ', '8849604376', 'dharmik65', 'f07dcfvz', '', '', ''),
(513, 'Amar007', 'rahulraz866@gmail.com', '9905852536', '854329', 'uqgkp6ne', '', '', ''),
(514, 'YashRaj', '123shekharbhau@gmail.com', '9595353075', 'Yash', 'tkmss2ua', 'Y\nYash', '', ''),
(515, 'ravi@2786', 'rrk2786@gmail.com', '9790426214', 'Ravi@27', 'spcgmtaw', '', '', ''),
(516, 'inkkmgroups', 'inkkm.groups@gmail.com', '9739988004', '12345', 'udmmicio', '', '0', ''),
(517, 'boss6579', 'ravi822005@gmail.com', '8220282965', 'ravi6579', 'uacwvx0h', '', '0', ''),
(518, 'amit choudhart', 'amitpiploda32@gmail.com', '6350447663', '12345678', 'sfzk360g', 'gff\n', '', ''),
(519, 'Lux meena', 'luxmeena2@gmail.com', '9166898322', '9166898322', 'uuxngqbw', '', '', ''),
(520, 'Umesh', 'umesh.vaidya99@gmail.com', '8976362316', 'Gold@786', 'x7qzf4cn', '\n\n\n786\n\n\n \n\n\n\n786', '', ''),
(521, 'Manjunathan R', 'Manjuvtv@gmail.com ', '8296476256 ', 'TRenz@89', 'rdi4x6ou', '', '', ''),
(522, 'Roushan Kumar', 'kumarroushaniit@gmail.com', '7903724377', '1234567890', 'm6eq3rfp', '', '', ''),
(523, 'dk', 'dineshd11id@gmail.com', '6299195137', 'dineshdnd', 'sbw2jpk7', '', '', ''),
(524, 'Shivam yadav', 'shivamyadav979284@gmail.com', '9792846925', '23456', 'hexszwfv', 'hdhd ji sjsnks', '', ''),
(525, 'raghvendra', 'raghvendrajanghela5097@gmail.com', '9131711868', '123456', 'bu5g7mak', '', '', ''),
(526, 'RAHUL Dada', 'rahulborse502@gmail.com', '9730340501', 'Rahul070707', '3uon2usp', 'RB0707', '', ''),
(527, 'jeet ameta', 'jeetamt94@gmail.com', '7740862718', '14325678', 'nx5x4wvp', '', '', ''),
(528, 'harinderriat', 'harinderriat@gmail.com', '8146597567', 'hari67', 'q62ubanq', '', '', ''),
(529, 'harinder', 'www.harit67@yahoo.com', '8146597567', '30111976', 'txngbppb', '0000', '', ''),
(530, 'ajay 1995', 'ajaynarayan277304@gmail.com', '+1917565096339', '123456', 'hup86voz', '03', '', ''),
(531, 'abc@gmail.com', 'abc@gmail.com', '8087004199', 'abc@123', '7v2h2z36', '', '0', ''),
(532, 'parte9753', 'devendraparte53@gmail.com', '9753764316', 'Dppa@1981', '0e4an7ob', '', '', ''),
(533, 'jagdish jarang', 'jarangjagdish504@gmail.com', '+1917043774494', '7043774494', 'bmj7cpfm', '', '', '');
INSERT INTO `users` (`id`, `username`, `email`, `phone_number`, `password`, `userid`, `refer_code`, `earning`, `minimum_limit`) VALUES
(534, 'dev', 'subahdas10@gmail.com', '7797083077', '741164bb', 's4yktc34', '12345', '', ''),
(535, 'Shailendra Kumar ', 'Shailendrakumar05252@gmail.com ', '8825368112 ', 'shailendra1234', 'dt8mcfr6', '', '', ''),
(536, 'chhedi kumar pandit', 'kumarkhedi124@gmail.com', 'chhedi@1123', 'chhedi@1123', 'vbna3iw3', '', '', ''),
(537, 'akbhandari', 'akshay6581bhandari@gmail.com', '9723711227', '773366', 'v0ttj5eh', '', '', ''),
(538, 'Dipak', 'dipaklaxkar11352@gmail.com', '+1919137102532', 'rameshdipk1@', '3iiuukvy', 'sakwk', '', ''),
(539, 'tushar01', 'toskarchandrakant20@gmail.com', '9004590627', 'tushar@1', '8xmnd8ih', '', '', ''),
(540, 'criccoch', 'arichandranayyammal@gmail.com', '9952241057', 'ehm-y__hoq8Zz4V', '4eofmchu', '', '', ''),
(541, 'sahamul', 'sahamul72@gmail.com', '8372944324', 'sahamu@7', '6yx07i7m', '', '', ''),
(542, 'SHYAM LAL ', 'shyamlalchaudhary1965@gmail.com ', '9871538290', 'SLc@1965', '0h27hwpq', '', '', ''),
(543, 'ratan', 'ratansuthar7259@gmail.com', '7259294148', '7259294148', 'mmcmwpa3', '', '', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `new_data`
--
ALTER TABLE `new_data`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment_request`
--
ALTER TABLE `payment_request`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subcategory`
--
ALTER TABLE `subcategory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_noti`
--
ALTER TABLE `tbl_noti`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_notifications`
--
ALTER TABLE `tbl_notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_settings`
--
ALTER TABLE `tbl_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `team`
--
ALTER TABLE `team`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `team_preview`
--
ALTER TABLE `team_preview`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `top_fantacy_apps`
--
ALTER TABLE `top_fantacy_apps`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
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
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=441;

--
-- AUTO_INCREMENT for table `new_data`
--
ALTER TABLE `new_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `payment_request`
--
ALTER TABLE `payment_request`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `slider`
--
ALTER TABLE `slider`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `subcategory`
--
ALTER TABLE `subcategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbl_noti`
--
ALTER TABLE `tbl_noti`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=275;

--
-- AUTO_INCREMENT for table `tbl_notifications`
--
ALTER TABLE `tbl_notifications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=184;

--
-- AUTO_INCREMENT for table `team`
--
ALTER TABLE `team`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `team_preview`
--
ALTER TABLE `team_preview`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;

--
-- AUTO_INCREMENT for table `top_fantacy_apps`
--
ALTER TABLE `top_fantacy_apps`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=544;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
