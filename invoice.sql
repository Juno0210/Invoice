/*
 Navicat Premium Data Transfer

 Source Server         : Invoice
 Source Server Type    : MySQL
 Source Server Version : 100428
 Source Host           : localhost:3306
 Source Schema         : invoice

 Target Server Type    : MySQL
 Target Server Version : 100428
 File Encoding         : 65001

 Date: 13/06/2023 02:20:11
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for buildings
-- ----------------------------
DROP TABLE IF EXISTS `buildings`;
CREATE TABLE `buildings`  (
  `ID` int NOT NULL AUTO_INCREMENT,
  `BuildingName` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `Region` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `BuildingAddress` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `Timestamp` timestamp NOT NULL DEFAULT current_timestamp,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 556 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of buildings
-- ----------------------------
INSERT INTO `buildings` VALUES (1, 'IPT', 'عمشيت', 'الطريق العام', '2023-06-12 11:15:13');
INSERT INTO `buildings` VALUES (2, 'اسطفان 1', 'ساحل علما', 'شمال بيت اختي كلوديت', '2023-06-12 14:46:03');
INSERT INTO `buildings` VALUES (3, 'الأطرش', 'عمشيت', 'العربة', '2023-06-12 14:48:53');
INSERT INTO `buildings` VALUES (4, 'البايع', 'عمشيت', 'مار يوحنا', '2023-06-12 14:48:54');
INSERT INTO `buildings` VALUES (5, 'البير شديد', 'عمشيت', 'الطريق البحري', '2023-06-12 14:48:54');
INSERT INTO `buildings` VALUES (6, 'الجفصين', 'عمشيت', 'مار زخيا', '2023-06-12 14:48:54');
INSERT INTO `buildings` VALUES (7, 'الحايك 1', 'عمشيت', 'مار زخيا قرب محل مارون', '2023-06-12 14:48:54');
INSERT INTO `buildings` VALUES (8, 'الحايك 2', 'عمشيت', 'مار زخيا', '2023-06-12 14:48:54');
INSERT INTO `buildings` VALUES (9, 'الحج', 'عمشيت', 'العربة', '2023-06-12 14:48:54');
INSERT INTO `buildings` VALUES (10, 'الحج صالح', 'عمشيت', 'العربة', '2023-06-12 14:48:54');
INSERT INTO `buildings` VALUES (11, 'الحدّاد', 'عمشيت', 'مار زخيا', '2023-06-12 14:48:55');
INSERT INTO `buildings` VALUES (12, 'الحشّاش', 'عمشيت', 'الطريق العام', '2023-06-12 14:48:55');
INSERT INTO `buildings` VALUES (13, 'الحلاق', 'عمشيت', 'العربة', '2023-06-12 14:48:55');
INSERT INTO `buildings` VALUES (14, 'الدكان', 'عمشيت', 'العربة', '2023-06-12 14:48:55');
INSERT INTO `buildings` VALUES (15, 'الزرّيعة', 'عمشيت', 'الطريق العام', '2023-06-12 14:48:55');
INSERT INTO `buildings` VALUES (16, 'الزغندي', 'عمشيت', 'مار يوحنا', '2023-06-12 14:48:55');
INSERT INTO `buildings` VALUES (17, 'الزيت', 'عمشيت', 'العربة', '2023-06-12 14:48:55');
INSERT INTO `buildings` VALUES (18, 'الشاعر', 'عمشيت', 'قرب عواميد الخشب', '2023-06-12 14:48:55');
INSERT INTO `buildings` VALUES (19, 'العرم', 'عمشيت', 'العربة', '2023-06-12 14:48:55');
INSERT INTO `buildings` VALUES (20, 'الفوانيس', 'عمشيت', 'الطريق البحري', '2023-06-12 14:48:55');
INSERT INTO `buildings` VALUES (21, 'القوبا', 'عمشيت', 'العربة', '2023-06-12 14:48:55');
INSERT INTO `buildings` VALUES (22, 'المحطة', 'عمشيت', 'الطريق البحري', '2023-06-12 14:48:55');
INSERT INTO `buildings` VALUES (23, 'المحلاّت', 'عمشيت', 'الطريق البحري', '2023-06-12 14:48:55');
INSERT INTO `buildings` VALUES (24, 'المخرطة', 'عمشيت', 'مار الياس', '2023-06-12 14:48:55');
INSERT INTO `buildings` VALUES (25, 'المطحنة', 'عمشيت', 'العربة', '2023-06-12 14:48:56');
INSERT INTO `buildings` VALUES (26, 'المعلّم', 'عمشيت', 'الطريق العام', '2023-06-12 14:48:56');
INSERT INTO `buildings` VALUES (27, 'النابلسي', 'عمشيت', 'العربة', '2023-06-12 14:48:56');
INSERT INTO `buildings` VALUES (28, 'النفق', 'عمشيت', 'الطريق البحري', '2023-06-12 14:48:56');
INSERT INTO `buildings` VALUES (29, 'الهاشم', 'عمشيت', 'العربة', '2023-06-12 14:48:56');
INSERT INTO `buildings` VALUES (30, 'الياس الغزال', 'عمشيت', 'الطريق البحري', '2023-06-12 14:48:56');
INSERT INTO `buildings` VALUES (31, 'الياس أبي يونس', 'عمشيت', 'الطريق البحري', '2023-06-12 14:48:56');
INSERT INTO `buildings` VALUES (32, 'الياس ساسين', 'عمشيت', 'العربة', '2023-06-12 14:48:56');
INSERT INTO `buildings` VALUES (33, 'الياس كنعان', 'عمشيت', 'الطريق البحري', '2023-06-12 14:48:56');
INSERT INTO `buildings` VALUES (34, 'انعام', 'عمشيت', 'شاليهات القوبا', '2023-06-12 14:48:56');
INSERT INTO `buildings` VALUES (35, 'ايفان', 'عمشيت', 'عواميد الخشب', '2023-06-12 14:48:56');
INSERT INTO `buildings` VALUES (36, 'ايلي العرم', 'عمشيت', 'العربة', '2023-06-12 14:48:56');
INSERT INTO `buildings` VALUES (37, 'ايلي عبّود', 'عمشيت', 'العربة', '2023-06-12 14:48:56');
INSERT INTO `buildings` VALUES (38, 'أبو رامي', 'عمشيت', 'كفرسالة', '2023-06-12 14:48:56');
INSERT INTO `buildings` VALUES (39, 'أبي حنا', 'عمشيت', 'مار يوحنا', '2023-06-12 14:48:56');
INSERT INTO `buildings` VALUES (40, 'أبي عيسى', 'عمشيت', 'كفرسالة', '2023-06-12 14:48:56');
INSERT INTO `buildings` VALUES (41, 'أسعد سعادة', 'عمشيت', 'الطريق البحري', '2023-06-12 14:48:56');
INSERT INTO `buildings` VALUES (42, 'أسعد غالب', 'عمشيت', 'فوق الجسر', '2023-06-12 14:48:56');
INSERT INTO `buildings` VALUES (43, 'أنور خوري', 'عمشيت', 'حي التراتجة', '2023-06-12 14:48:56');
INSERT INTO `buildings` VALUES (44, 'أنيس شحادة', 'عمشيت', 'عواميد الخشب', '2023-06-12 14:48:56');
INSERT INTO `buildings` VALUES (45, 'باخوس', 'عمشيت', 'العربة', '2023-06-12 14:48:57');
INSERT INTO `buildings` VALUES (46, 'بدوي', 'عمشيت', 'الطريق البحري', '2023-06-12 14:48:57');
INSERT INTO `buildings` VALUES (47, 'بديع مارون', 'عمشيت', 'العربة', '2023-06-12 14:48:57');
INSERT INTO `buildings` VALUES (48, 'بربر الحايك', 'عمشيت', 'العربة', '2023-06-12 14:48:57');
INSERT INTO `buildings` VALUES (49, 'بربور', 'عمشيت', 'العربة', '2023-06-12 14:48:57');
INSERT INTO `buildings` VALUES (50, 'برق', 'عمشيت', 'مقابل كنيسة مار زخيا', '2023-06-12 14:48:57');
INSERT INTO `buildings` VALUES (51, 'بركات', 'عمشيت', 'آخر الخط بعد المطرانيّة', '2023-06-12 14:48:57');
INSERT INTO `buildings` VALUES (52, 'برمو 1', 'ساحل علما', 'قبل كنيسة مار ضومط، نزلة على اليمين ثاني بناية يسار', '2023-06-12 14:48:57');
INSERT INTO `buildings` VALUES (53, 'برمو 2', 'ساحل علما', 'شمال بناية اسطفان 1 شمال بيت اختي كلوديت', '2023-06-12 14:48:57');
INSERT INTO `buildings` VALUES (54, 'بسّام صقر', 'عمشيت', 'الطريق العام', '2023-06-12 14:48:57');
INSERT INTO `buildings` VALUES (55, 'بطرس حكيّم', 'عمشيت', 'فوق الجسر', '2023-06-12 14:48:57');
INSERT INTO `buildings` VALUES (56, 'بطرس خير', 'عمشيت', 'الطريق البحري', '2023-06-12 14:48:57');
INSERT INTO `buildings` VALUES (57, 'بطرس عوّاد', 'عمشيت', 'العربة', '2023-06-12 14:48:57');
INSERT INTO `buildings` VALUES (58, 'بطرس فرام', 'عمشيت', 'فوق الجسر', '2023-06-12 14:48:57');
INSERT INTO `buildings` VALUES (59, 'بكاسيني', 'عمشيت', 'العربة', '2023-06-12 14:48:57');
INSERT INTO `buildings` VALUES (60, 'بو عبدو', 'عمشيت', 'الطريق العام', '2023-06-12 14:48:57');
INSERT INTO `buildings` VALUES (61, 'بول ساسين', 'عمشيت', 'مار زخيا', '2023-06-12 14:48:57');
INSERT INTO `buildings` VALUES (62, 'بول عبّود', 'عمشيت', 'مار زخيا', '2023-06-12 14:48:57');
INSERT INTO `buildings` VALUES (63, 'بيار صقر', 'عمشيت', 'فوق الجسر', '2023-06-12 14:48:57');
INSERT INTO `buildings` VALUES (64, 'بيار عيد', 'عمشيت', 'الطريق البحري', '2023-06-12 14:48:58');
INSERT INTO `buildings` VALUES (65, 'بيار متى', 'عمشيت', 'مار يوحنا', '2023-06-12 14:48:58');
INSERT INTO `buildings` VALUES (66, 'بيار يزبك', 'عمشيت', 'فوق الجسر', '2023-06-12 14:48:58');
INSERT INTO `buildings` VALUES (67, 'بيراميد 1', 'عمشيت', 'مار زخيا', '2023-06-12 14:48:58');
INSERT INTO `buildings` VALUES (68, 'بيراميد 2', 'عمشيت', 'العربة', '2023-06-12 14:48:58');
INSERT INTO `buildings` VALUES (69, 'بيراميد 3', 'عمشيت', 'العربة', '2023-06-12 14:48:58');
INSERT INTO `buildings` VALUES (70, 'بيراميد 4', 'عمشيت', 'العربة', '2023-06-12 14:48:58');
INSERT INTO `buildings` VALUES (71, 'بيراميد 5', 'عمشيت', 'مار زخيا', '2023-06-12 14:48:58');
INSERT INTO `buildings` VALUES (72, 'تارك', 'عمشيت', 'العربة', '2023-06-12 14:48:58');
INSERT INTO `buildings` VALUES (73, 'جاك العرم', 'عمشيت', 'العربة', '2023-06-12 14:48:58');
INSERT INTO `buildings` VALUES (74, 'جان حبيب', 'عمشيت', 'حي التراتجة', '2023-06-12 14:48:58');
INSERT INTO `buildings` VALUES (75, 'جان خوري', 'عمشيت', 'فوق الجسر', '2023-06-12 14:48:58');
INSERT INTO `buildings` VALUES (76, 'جان وجان', 'عمشيت', 'محيط المحطة', '2023-06-12 14:48:58');
INSERT INTO `buildings` VALUES (77, 'جبرايل', 'عمشيت', 'العربة', '2023-06-12 14:48:58');
INSERT INTO `buildings` VALUES (78, 'جبرايل 2', 'عمشيت', 'حي التراتجة', '2023-06-12 14:48:58');
INSERT INTO `buildings` VALUES (79, 'جرجس', 'عمشيت', 'العربة', '2023-06-12 14:48:59');
INSERT INTO `buildings` VALUES (80, 'جعاره', 'عمشيت', 'مار زخيا', '2023-06-12 14:48:59');
INSERT INTO `buildings` VALUES (81, 'جعفوري 2', 'عمشيت', 'الطريق العام', '2023-06-12 14:48:59');
INSERT INTO `buildings` VALUES (82, 'جهاد متى', 'عمشيت', 'الطريق العام', '2023-06-12 14:48:59');
INSERT INTO `buildings` VALUES (83, 'جورج ابراهيم', 'عمشيت', 'الطريق العام', '2023-06-12 14:48:59');
INSERT INTO `buildings` VALUES (84, 'جورج خوري', 'عمشيت', 'العربة', '2023-06-12 14:48:59');
INSERT INTO `buildings` VALUES (85, 'جورج راشد', 'عمشيت', 'فوق الجسر', '2023-06-12 14:48:59');
INSERT INTO `buildings` VALUES (86, 'جورج صقر', 'عمشيت', 'العربة', '2023-06-12 14:48:59');
INSERT INTO `buildings` VALUES (87, 'جورج مارون', 'عمشيت', 'العربة', '2023-06-12 14:48:59');
INSERT INTO `buildings` VALUES (88, 'جورج مخايل', 'عمشيت', 'الطريق البحري', '2023-06-12 14:48:59');
INSERT INTO `buildings` VALUES (89, 'جورج معوّض', 'عمشيت', 'فوق الجسر', '2023-06-12 14:48:59');
INSERT INTO `buildings` VALUES (90, 'جوزيف أنطون', 'عمشيت', 'المحلات -  طريق البحر', '2023-06-12 14:48:59');
INSERT INTO `buildings` VALUES (91, 'جوزيف زغيب', 'عمشيت', 'مار زخيا، بعد منزل فادي برجاس', '2023-06-12 14:48:59');
INSERT INTO `buildings` VALUES (92, 'جوزيف مارون', 'عمشيت', 'العربة', '2023-06-12 14:48:59');
INSERT INTO `buildings` VALUES (93, 'جوزيف يونس', 'عمشيت', 'العربة', '2023-06-12 14:48:59');
INSERT INTO `buildings` VALUES (94, 'حبيب', 'عمشيت', 'مار زخيا، مقابل بيت منير عوّاد', '2023-06-12 14:48:59');
INSERT INTO `buildings` VALUES (95, 'حرب', 'عمشيت', 'آخر الخط بعد المطرانية', '2023-06-12 14:48:59');
INSERT INTO `buildings` VALUES (96, 'حسّان', 'عمشيت', 'العربة', '2023-06-12 14:48:59');
INSERT INTO `buildings` VALUES (97, 'حسبالله', 'عمشيت', 'الطريق العام', '2023-06-12 14:48:59');
INSERT INTO `buildings` VALUES (98, 'حسين برق', 'عمشيت', 'العربة', '2023-06-12 14:49:00');
INSERT INTO `buildings` VALUES (99, 'حكيّم', 'عمشيت', 'مار زخيا', '2023-06-12 14:49:00');
INSERT INTO `buildings` VALUES (100, 'حلاّني', 'عمشيت', 'العربة', '2023-06-12 14:49:00');
INSERT INTO `buildings` VALUES (101, 'حلو 1', 'عمشيت', 'الطريق العام', '2023-06-12 14:49:00');
INSERT INTO `buildings` VALUES (102, 'حلو 2', 'عمشيت', 'الطريق العام', '2023-06-12 14:49:00');
INSERT INTO `buildings` VALUES (103, 'حوّاط', 'عمشيت', 'قرب عواميد الخشب', '2023-06-12 14:49:00');
INSERT INTO `buildings` VALUES (104, 'حويك', 'عمشيت', 'العربة', '2023-06-12 14:49:00');
INSERT INTO `buildings` VALUES (105, 'حيدر', 'عمشيت', 'العربة', '2023-06-12 14:49:00');
INSERT INTO `buildings` VALUES (106, 'خطّار قبلان', 'عمشيت', 'الطريق البحري', '2023-06-12 14:49:00');
INSERT INTO `buildings` VALUES (107, 'خليفة', 'عمشيت', 'الطريق العام', '2023-06-12 14:49:00');
INSERT INTO `buildings` VALUES (108, 'خوري 2', 'عمشيت', 'العربة', '2023-06-12 14:49:00');
INSERT INTO `buildings` VALUES (109, 'خير', 'عمشيت', 'الطريق العام', '2023-06-12 14:49:00');
INSERT INTO `buildings` VALUES (110, 'خيرالله 1', 'ساحل علما', 'غرب بيت قيصر خيرالله', '2023-06-12 14:49:00');
INSERT INTO `buildings` VALUES (111, 'خيرالله 2', 'ساحل علما', 'شمال بيت قيصر خيرالله', '2023-06-12 14:49:00');
INSERT INTO `buildings` VALUES (112, 'خيمة', 'عمشيت', 'العربة', '2023-06-12 14:49:00');
INSERT INTO `buildings` VALUES (113, 'داغر', 'عمشيت', 'مار الياس', '2023-06-12 14:49:00');
INSERT INTO `buildings` VALUES (114, 'داني خوري', 'عمشيت', 'العربة', '2023-06-12 14:49:00');
INSERT INTO `buildings` VALUES (115, 'داوود 2', 'عمشيت', 'الطريق العام', '2023-06-12 14:49:00');
INSERT INTO `buildings` VALUES (116, 'راشد', 'عمشيت', 'مار زخيا', '2023-06-12 14:49:01');
INSERT INTO `buildings` VALUES (117, 'رامز شلهوب', 'عمشيت', 'العربة', '2023-06-12 14:49:01');
INSERT INTO `buildings` VALUES (118, 'رزق', 'عمشيت', 'حي التراتجة', '2023-06-12 14:49:01');
INSERT INTO `buildings` VALUES (119, 'رفيق الحايك', 'عمشيت', 'الطريق البحري', '2023-06-12 14:49:01');
INSERT INTO `buildings` VALUES (120, 'رفيق السمراني', 'عمشيت', 'الطريق البحري', '2023-06-12 14:49:01');
INSERT INTO `buildings` VALUES (121, 'رفيق سعادة', 'عمشيت', 'مار زخيا', '2023-06-12 14:49:01');
INSERT INTO `buildings` VALUES (122, 'رقيبي', 'عمشيت', 'حي التراتجة', '2023-06-12 14:49:01');
INSERT INTO `buildings` VALUES (123, 'رمزي عنيسي', 'عمشيت', 'الطريق البحري', '2023-06-12 14:49:01');
INSERT INTO `buildings` VALUES (124, 'زخيا', 'عمشيت', 'حي التراتجة', '2023-06-12 14:49:01');
INSERT INTO `buildings` VALUES (125, 'زخيا صليبا', 'عمشيت', 'فوق الجسر', '2023-06-12 14:49:02');
INSERT INTO `buildings` VALUES (126, 'زغيب 1', 'عمشيت', 'مار زخيا', '2023-06-12 14:49:02');
INSERT INTO `buildings` VALUES (127, 'زياد نصّار', 'عمشيت', 'قرب عواميد الخشب', '2023-06-12 14:49:02');
INSERT INTO `buildings` VALUES (128, 'زينة عبّود', 'عمشيت', 'الطريق البحري', '2023-06-12 14:49:02');
INSERT INTO `buildings` VALUES (129, 'س.جعفوري', 'عمشيت', 'الطريق العام', '2023-06-12 14:49:02');
INSERT INTO `buildings` VALUES (130, 'سابا 1', 'ساحل علما', 'بناية كارول', '2023-06-12 14:49:02');
INSERT INTO `buildings` VALUES (131, 'سابا 2', 'ساحل علما', 'علبة الدش', '2023-06-12 14:49:02');
INSERT INTO `buildings` VALUES (132, 'ساسين 1', 'عمشيت', 'مار زخيا', '2023-06-12 14:49:02');
INSERT INTO `buildings` VALUES (133, 'سامي أبي يونس', 'عمشيت', 'الطريق البحري', '2023-06-12 14:49:02');
INSERT INTO `buildings` VALUES (134, 'سامي صقر', 'عمشيت', 'الطريق العام', '2023-06-12 14:49:02');
INSERT INTO `buildings` VALUES (135, 'سانتا بربرا', 'عمشيت', 'الطريق البحري', '2023-06-12 14:49:02');
INSERT INTO `buildings` VALUES (136, 'سبيرو', 'عمشيت', 'حي التراتجة', '2023-06-12 14:49:02');
INSERT INTO `buildings` VALUES (137, 'سرور', 'عمشيت', 'العربة', '2023-06-12 14:49:02');
INSERT INTO `buildings` VALUES (138, 'سقلاوي', 'عمشيت', 'الطريق البحري', '2023-06-12 14:49:02');
INSERT INTO `buildings` VALUES (139, 'سليم', 'عمشيت', 'العربة', '2023-06-12 14:49:02');
INSERT INTO `buildings` VALUES (140, 'سليمان الخوري', 'عمشيت', 'الطريق البحري', '2023-06-12 14:49:02');
INSERT INTO `buildings` VALUES (141, 'سمراني', 'عمشيت', 'فوق الجسر', '2023-06-12 14:49:02');
INSERT INTO `buildings` VALUES (142, 'سمعان', 'عمشيت', 'مار يوحنا', '2023-06-12 14:49:02');
INSERT INTO `buildings` VALUES (143, 'سمعان 2', 'عمشيت', 'مار يوحنا', '2023-06-12 14:49:02');
INSERT INTO `buildings` VALUES (144, 'سمير الحايك', 'عمشيت', 'حي التراتجة', '2023-06-12 14:49:02');
INSERT INTO `buildings` VALUES (145, 'سناك', 'عمشيت', 'الطريق العام', '2023-06-12 14:49:03');
INSERT INTO `buildings` VALUES (146, 'سهيلة زيادة', 'عمشيت', 'فوق الجسر', '2023-06-12 14:49:03');
INSERT INTO `buildings` VALUES (147, 'شاليهات القوبا', 'عمشيت', 'الطريق البحري', '2023-06-12 14:49:03');
INSERT INTO `buildings` VALUES (148, 'شبلي', 'عمشيت', 'العربة', '2023-06-12 14:49:03');
INSERT INTO `buildings` VALUES (149, 'شدياق', 'عمشيت', 'حي التراتجة', '2023-06-12 14:49:03');
INSERT INTO `buildings` VALUES (150, 'شديد', 'عمشيت', 'الطريق البحري', '2023-06-12 14:49:03');
INSERT INTO `buildings` VALUES (151, 'شديد 2', 'عمشيت', 'الطريق البحري', '2023-06-12 14:49:03');
INSERT INTO `buildings` VALUES (152, 'شربل صقر', 'عمشيت', 'فوق الجسر', '2023-06-12 14:49:03');
INSERT INTO `buildings` VALUES (153, 'شربل مخايل', 'عمشيت', 'فرن الصبايا', '2023-06-12 14:49:03');
INSERT INTO `buildings` VALUES (154, 'شمص', 'عمشيت', 'كفرسالة', '2023-06-12 14:49:03');
INSERT INTO `buildings` VALUES (155, 'شهرزاد', 'ساحل علما', 'شمال بناية برمو 2 قرب بيت اختي كلوديت', '2023-06-12 14:49:03');
INSERT INTO `buildings` VALUES (156, 'صادق', 'عمشيت', 'العربة', '2023-06-12 14:49:03');
INSERT INTO `buildings` VALUES (157, 'صالح برق', 'عمشيت', 'العربة', '2023-06-12 14:49:03');
INSERT INTO `buildings` VALUES (158, 'صقر 1', 'عمشيت', 'مار يوحنا', '2023-06-12 14:49:03');
INSERT INTO `buildings` VALUES (159, 'صليبا 2', 'عمشيت', 'مار زخيا', '2023-06-12 14:49:03');
INSERT INTO `buildings` VALUES (160, 'ضاهر', 'عمشيت', 'فوق الجسر', '2023-06-12 14:49:03');
INSERT INTO `buildings` VALUES (161, 'طوني اسطفان', 'عمشيت', 'فوق الجسر', '2023-06-12 14:49:03');
INSERT INTO `buildings` VALUES (162, 'طوني أبي يونس', 'عمشيت', 'الطريق البحري', '2023-06-12 14:49:03');
INSERT INTO `buildings` VALUES (163, 'طوني عبّود', 'عمشيت', 'مار زخيا', '2023-06-12 14:49:03');
INSERT INTO `buildings` VALUES (164, 'طوني مخايل', 'عمشيت', 'الطريق البحري', '2023-06-12 14:49:04');
INSERT INTO `buildings` VALUES (165, 'عارف موسى', 'عمشيت', 'الطريق العام', '2023-06-12 14:49:04');
INSERT INTO `buildings` VALUES (166, 'عازار', 'عمشيت', 'العربة', '2023-06-12 14:49:04');
INSERT INTO `buildings` VALUES (167, 'عازار 1', 'ساحل علما', 'مزار ما الياس', '2023-06-12 14:49:04');
INSERT INTO `buildings` VALUES (168, 'عازار 2', 'عمشيت', 'العربة', '2023-06-12 14:49:04');
INSERT INTO `buildings` VALUES (169, 'عاطف حرب', 'عمشيت', 'فوق الجسر', '2023-06-12 14:49:04');
INSERT INTO `buildings` VALUES (170, 'عامر برق', 'عمشيت', 'مار زخيا', '2023-06-12 14:49:04');
INSERT INTO `buildings` VALUES (171, 'عبد', 'عمشيت', 'العربة', '2023-06-12 14:49:04');
INSERT INTO `buildings` VALUES (172, 'عبدالنور', 'عمشيت', 'العربة', '2023-06-12 14:49:04');
INSERT INTO `buildings` VALUES (173, 'عبود 1', 'عمشيت', 'مار زخيا', '2023-06-12 14:49:04');
INSERT INTO `buildings` VALUES (174, 'عبود 2', 'عمشيت', 'الطريق العام', '2023-06-12 14:49:04');
INSERT INTO `buildings` VALUES (175, 'عقيقي', 'عمشيت', 'الطريق البحري', '2023-06-12 14:49:04');
INSERT INTO `buildings` VALUES (176, 'عقيل', 'عمشيت', 'العربة', '2023-06-12 14:49:04');
INSERT INTO `buildings` VALUES (177, 'عمر برق', 'عمشيت', 'عواميد الخشب', '2023-06-12 14:49:04');
INSERT INTO `buildings` VALUES (178, 'عنداري', 'عمشيت', 'مار يوحنا', '2023-06-12 14:49:04');
INSERT INTO `buildings` VALUES (179, 'عوّاد 2', 'عمشيت', 'حي التراتجة', '2023-06-12 14:49:04');
INSERT INTO `buildings` VALUES (180, 'عون', 'عمشيت', 'مار زخيا', '2023-06-12 14:49:04');
INSERT INTO `buildings` VALUES (181, 'عيد', 'عمشيت', 'العربة', '2023-06-12 14:49:04');
INSERT INTO `buildings` VALUES (182, 'عيسى', 'عمشيت', 'قرب الجفصين', '2023-06-12 14:49:04');
INSERT INTO `buildings` VALUES (183, 'عيسى 2', 'عمشيت', 'الطريق العام', '2023-06-12 14:49:04');
INSERT INTO `buildings` VALUES (184, 'غاليري', 'عمشيت', 'الطريق العام', '2023-06-12 14:49:05');
INSERT INTO `buildings` VALUES (185, 'غانم', 'عمشيت', 'العربة', '2023-06-12 14:49:05');
INSERT INTO `buildings` VALUES (186, 'غوش', 'عمشيت', 'آخر الخط بعد المطرانية', '2023-06-12 14:49:05');
INSERT INTO `buildings` VALUES (187, 'فادي سليمان', 'عمشيت', 'الطريق البحري', '2023-06-12 14:49:05');
INSERT INTO `buildings` VALUES (188, 'فادي عبّود', 'عمشيت', 'الطريق البحري', '2023-06-12 14:49:05');
INSERT INTO `buildings` VALUES (189, 'فاريز فرح', 'ساحل علما', 'استديو جورج فرح', '2023-06-12 14:49:05');
INSERT INTO `buildings` VALUES (190, 'فرام', 'عمشيت', 'مار يوحنا', '2023-06-12 14:49:05');
INSERT INTO `buildings` VALUES (191, 'فرح', 'عمشيت', 'فوق الجسر', '2023-06-12 14:49:05');
INSERT INTO `buildings` VALUES (192, 'فرحات 1', 'ساحل علما', 'قرب بيت اختي لينا', '2023-06-12 14:49:05');
INSERT INTO `buildings` VALUES (193, 'فرحات 2', 'ساحل علما', 'فوق بيت بولس مارون', '2023-06-12 14:49:05');
INSERT INTO `buildings` VALUES (194, 'فرن الصبايا', 'عمشيت', 'فرن الصبايا', '2023-06-12 14:49:05');
INSERT INTO `buildings` VALUES (195, 'فيّاض', 'عمشيت', 'مار يوحنا', '2023-06-12 14:49:05');
INSERT INTO `buildings` VALUES (196, 'فيرا داوود 1', 'عمشيت', 'حي التراتجة', '2023-06-12 14:49:05');
INSERT INTO `buildings` VALUES (197, 'قبريانوس', 'عمشيت', 'العربة', '2023-06-12 14:49:05');
INSERT INTO `buildings` VALUES (198, 'قصّيفي', 'عمشيت', 'الطريق العام', '2023-06-12 14:49:05');
INSERT INTO `buildings` VALUES (199, 'كامل', 'عمشيت', 'محيط محطة مدكو', '2023-06-12 14:49:05');
INSERT INTO `buildings` VALUES (200, 'كرماتي', 'عمشيت', 'حي التراتجة', '2023-06-12 14:49:05');
INSERT INTO `buildings` VALUES (201, 'كمال', 'عمشيت', 'الطريق البحري', '2023-06-12 14:49:05');
INSERT INTO `buildings` VALUES (202, 'كمال رقيبي', 'عمشيت', 'الطريق البحري', '2023-06-12 14:49:06');
INSERT INTO `buildings` VALUES (203, 'كنعان', 'عمشيت', 'العربة', '2023-06-12 14:49:06');
INSERT INTO `buildings` VALUES (204, 'لحّود', 'عمشيت', 'العربة', '2023-06-12 14:49:06');
INSERT INTO `buildings` VALUES (205, 'ليشع', 'عمشيت', 'الطريق العام', '2023-06-12 14:49:06');
INSERT INTO `buildings` VALUES (206, 'م. بكاسيني', 'عمشيت', 'العربة', '2023-06-12 14:49:06');
INSERT INTO `buildings` VALUES (207, 'مارون', 'عمشيت', 'مار زخيا', '2023-06-12 14:49:06');
INSERT INTO `buildings` VALUES (208, 'مارون الحايك', 'عمشيت', 'العربة', '2023-06-12 14:49:06');
INSERT INTO `buildings` VALUES (209, 'ماري صقر', 'عمشيت', 'عواميد الخشب', '2023-06-12 14:49:06');
INSERT INTO `buildings` VALUES (210, 'محطة مدكو', 'عمشيت', 'الطريق البحري', '2023-06-12 14:49:06');
INSERT INTO `buildings` VALUES (211, 'مخايل', 'عمشيت', 'العربة', '2023-06-12 14:49:06');
INSERT INTO `buildings` VALUES (212, 'مرزا', 'عمشيت', 'العربة', '2023-06-12 14:49:06');
INSERT INTO `buildings` VALUES (213, 'مروان شديد', 'عمشيت', 'شاليهات القوبا', '2023-06-12 14:49:06');
INSERT INTO `buildings` VALUES (214, 'مروان متى', 'عمشيت', 'فوق الجسر', '2023-06-12 14:49:06');
INSERT INTO `buildings` VALUES (215, 'مطر', 'عمشيت', 'العربة', '2023-06-12 14:49:06');
INSERT INTO `buildings` VALUES (216, 'مطر 2', 'عمشيت', 'محيط محطة مدكو', '2023-06-12 14:49:06');
INSERT INTO `buildings` VALUES (217, 'مطرانيّة 1', 'عمشيت', 'مار زخيا', '2023-06-12 14:49:06');
INSERT INTO `buildings` VALUES (218, 'مطرانيّة 2', 'عمشيت', 'مار زخيا', '2023-06-12 14:49:06');
INSERT INTO `buildings` VALUES (219, 'مطرانيّة 3', 'عمشيت', 'مار زخيا', '2023-06-12 14:49:06');
INSERT INTO `buildings` VALUES (220, 'مطرانيّة 4', 'عمشيت', 'مار زخيا', '2023-06-12 14:49:06');
INSERT INTO `buildings` VALUES (221, 'مطرانيّة 5', 'عمشيت', 'مار زخيا', '2023-06-12 14:49:06');
INSERT INTO `buildings` VALUES (222, 'معمل الحديد', 'عمشيت', 'الطريق العام', '2023-06-12 14:49:06');
INSERT INTO `buildings` VALUES (223, 'منى شهدان', 'عمشيت', 'فوق الجسر', '2023-06-12 14:49:07');
INSERT INTO `buildings` VALUES (224, 'منير عوّاد', 'عمشيت', 'مار زخيا', '2023-06-12 14:49:07');
INSERT INTO `buildings` VALUES (225, 'ميشال', 'عمشيت', 'مار يوحنا', '2023-06-12 14:49:07');
INSERT INTO `buildings` VALUES (226, 'ميشال متى', 'عمشيت', 'مار يوحنا', '2023-06-12 14:49:07');
INSERT INTO `buildings` VALUES (227, 'نادر', 'عمشيت', 'العربة', '2023-06-12 14:49:07');
INSERT INTO `buildings` VALUES (228, 'نبيل عيسى', 'عمشيت', 'الطريق البحري', '2023-06-12 14:49:07');
INSERT INTO `buildings` VALUES (229, 'نجم 1', 'عمشيت', 'العربة', '2023-06-12 14:49:07');
INSERT INTO `buildings` VALUES (230, 'نجم 2', 'عمشيت', 'العربة', '2023-06-12 14:49:07');
INSERT INTO `buildings` VALUES (231, 'نجيم 1', 'ساحل علما', 'الملحمة', '2023-06-12 14:49:07');
INSERT INTO `buildings` VALUES (232, 'نجيم 2', 'ساحل علما', 'تحت بيت اختي لينا', '2023-06-12 14:49:07');
INSERT INTO `buildings` VALUES (233, 'نخلة حبيب', 'عمشيت', 'فوق الجسر', '2023-06-12 14:49:07');
INSERT INTO `buildings` VALUES (234, 'نزيه زغيب', 'عمشيت', 'الطريق البحري', '2023-06-12 14:49:07');
INSERT INTO `buildings` VALUES (235, 'نصّار', 'عمشيت', 'الطريق العام', '2023-06-12 14:49:07');
INSERT INTO `buildings` VALUES (236, 'نصّار 2', 'عمشيت', 'العربة', '2023-06-12 14:49:07');
INSERT INTO `buildings` VALUES (237, 'نصّور', 'عمشيت', 'الطريق العام', '2023-06-12 14:49:07');
INSERT INTO `buildings` VALUES (238, 'نصر', 'عمشيت', 'حي التراتجة', '2023-06-12 14:49:08');
INSERT INTO `buildings` VALUES (239, 'نصر 2', 'عمشيت', 'مار يوحنا', '2023-06-12 14:49:08');
INSERT INTO `buildings` VALUES (240, 'نصراني', 'عمشيت', 'العربة', '2023-06-12 14:49:08');
INSERT INTO `buildings` VALUES (241, 'نعّوم', 'عمشيت', 'العربة', '2023-06-12 14:49:08');
INSERT INTO `buildings` VALUES (242, 'نقولا بطرس', 'عمشيت', 'العربة', '2023-06-12 14:49:08');
INSERT INTO `buildings` VALUES (243, 'نوفل 1', 'عمشيت', 'مار زخيا', '2023-06-12 14:49:08');
INSERT INTO `buildings` VALUES (244, 'نوفل 2', 'عمشيت', 'الطريق العام', '2023-06-12 14:49:08');
INSERT INTO `buildings` VALUES (245, 'هاشم', 'عمشيت', 'العربة', '2023-06-12 14:49:08');
INSERT INTO `buildings` VALUES (246, 'هيدب فرحات', 'عمشيت', 'مار يوحنا', '2023-06-12 14:49:08');
INSERT INTO `buildings` VALUES (247, 'وجيه كنعان', 'عمشيت', 'العربة', '2023-06-12 14:49:08');
INSERT INTO `buildings` VALUES (248, 'وسام ضاهر', 'عمشيت', 'عواميد الخشب', '2023-06-12 14:49:08');
INSERT INTO `buildings` VALUES (249, 'ياغي', 'عمشيت', 'حي التراتجة', '2023-06-12 14:49:08');
INSERT INTO `buildings` VALUES (250, 'يوسف 1', 'عمشيت', 'العربة', '2023-06-12 14:49:08');
INSERT INTO `buildings` VALUES (251, 'يوسف 2', 'عمشيت', 'العربة', '2023-06-12 14:49:08');
INSERT INTO `buildings` VALUES (252, 'يونان', 'عمشيت', 'الطريق العام', '2023-06-12 14:49:08');
INSERT INTO `buildings` VALUES (253, 'ابراهيم بركات', 'ساحل علما', 'اول بناية على اليمين بعد اوتيل ادرياتيك', '2023-06-12 14:49:08');
INSERT INTO `buildings` VALUES (254, 'اسطفان 2', 'ساحل علما', 'بعد كنيسة مار نهرا, مقابل صيدليّة ربيع صقر', '2023-06-12 14:49:08');
INSERT INTO `buildings` VALUES (255, 'الحلاق - س', 'ساحل علما', 'ناجي الحلاق', '2023-06-12 14:49:08');
INSERT INTO `buildings` VALUES (256, 'الشاغوري', 'ساحل علما', 'قبل مفرق شننعير، مفرق يمين اوّل بناية على اليسار', '2023-06-12 14:49:09');
INSERT INTO `buildings` VALUES (257, 'القاضي', 'ساحل علما', 'قبل كنيسة مار نهرا', '2023-06-12 14:49:09');
INSERT INTO `buildings` VALUES (258, 'القسيس', 'ساحل علما', 'فوق سانتا مارينا', '2023-06-12 14:49:09');
INSERT INTO `buildings` VALUES (259, 'أشقر', 'ساحل علما', 'طريق Alma Vista 2', '2023-06-12 14:49:09');
INSERT INTO `buildings` VALUES (260, 'بدران', 'ساحل علما', 'قرب منزل عقل النشار', '2023-06-12 14:49:09');
INSERT INTO `buildings` VALUES (261, 'برباري', 'ساحل علما', 'قبل كنيسة مار ضومط، نزلة على اليمين اول بناية يسار', '2023-06-12 14:49:09');
INSERT INTO `buildings` VALUES (262, 'بطرس حبشي', 'ساحل علما', 'بعد منزل عقل النشّار، نزلة الى اليسار، ثاني بناية الى اليسار', '2023-06-12 14:49:09');
INSERT INTO `buildings` VALUES (263, 'بولس القسيس', 'ساحل علما', 'قرب منزل عقل النشار', '2023-06-12 14:49:09');
INSERT INTO `buildings` VALUES (264, 'بولس مارون', 'ساحل علما', 'بوجه علمايا', '2023-06-12 14:49:09');
INSERT INTO `buildings` VALUES (265, 'حبشي', 'ساحل علما', 'بعد اوتيل أدرياتيك ، خامس بناية الى اليسار', '2023-06-12 14:49:09');
INSERT INTO `buildings` VALUES (266, 'حكيّم 3', 'ساحل علما', 'جنوب كنيسة مار ضومط', '2023-06-12 14:49:09');
INSERT INTO `buildings` VALUES (267, 'حكيّم 4', 'ساحل علما', 'فوق بيت خالتي', '2023-06-12 14:49:09');
INSERT INTO `buildings` VALUES (268, 'حكيّم 5', 'ساحل علما', 'مقابل المصبغة', '2023-06-12 14:49:09');
INSERT INTO `buildings` VALUES (269, 'دينا 1', 'ساحل علما', 'غرب كنيسة مار ضومط', '2023-06-12 14:49:09');
INSERT INTO `buildings` VALUES (270, 'دينا 2', 'ساحل علما', 'تحت غولدن روز', '2023-06-12 14:49:09');
INSERT INTO `buildings` VALUES (271, 'سابا 3', 'ساحل علما', 'بناية الادوية', '2023-06-12 14:49:09');
INSERT INTO `buildings` VALUES (272, 'سعيد طوق', 'ساحل علما', 'ثاني بناية على اليمين بعد اوتيل ادرياتيك', '2023-06-12 14:49:09');
INSERT INTO `buildings` VALUES (273, 'شوقي صليبا', 'ساحل علما', 'بعد كنيسة مار نهرا مباشرة، مفرق الى اليسار، ثاني بناية الى اليسار', '2023-06-12 14:49:09');
INSERT INTO `buildings` VALUES (274, 'شويتر', 'ساحل علما', 'مفرق بين اوتيل ماربييا والادرياتيك ثاني بناية الى شمال', '2023-06-12 14:49:09');
INSERT INTO `buildings` VALUES (275, 'ضومط القسيس', 'ساحل علما', 'بوجه باي فيو', '2023-06-12 14:49:09');
INSERT INTO `buildings` VALUES (276, 'عازار 2 - س', 'ساحل علما', 'قبل النادي', '2023-06-12 14:49:09');
INSERT INTO `buildings` VALUES (277, 'عازار 3', 'ساحل علما', 'خلف الحلاّق', '2023-06-12 14:49:09');
INSERT INTO `buildings` VALUES (278, 'عبدو', 'ساحل علما', 'فوق بناية كارول او سابا 1', '2023-06-12 14:49:09');
INSERT INTO `buildings` VALUES (279, 'عسكر', 'ساحل علما', 'بعد بناية شويتر الى اليسار', '2023-06-12 14:49:10');
INSERT INTO `buildings` VALUES (280, 'علمايا', 'ساحل علما', 'صعودا قبل اوتيل ماربيلا مباشرة، مفرق الى اليسار', '2023-06-12 14:49:10');
INSERT INTO `buildings` VALUES (281, 'غبريال', 'ساحل علما', 'قبل اوتيل ادرياتيك صعودا، مفرق عال اليمين اوّل بناية يسار', '2023-06-12 14:49:10');
INSERT INTO `buildings` VALUES (282, 'فارس خليل', 'ساحل علما', 'منزل اوريانوس النشّار', '2023-06-12 14:49:10');
INSERT INTO `buildings` VALUES (283, 'قرقفي', 'ساحل علما', 'بعد منزل عقل النشّار، نزلة الى اليسار، ثاني بناية على اليمين', '2023-06-12 14:49:10');
INSERT INTO `buildings` VALUES (284, 'كمال عقيقي', 'ساحل علما', 'قبل سوبر ماركت جيل مفرق شمال اول بناية الى اليمين', '2023-06-12 14:49:10');
INSERT INTO `buildings` VALUES (285, 'مارون 3', 'ساحل علما', 'بوجه ناجي نجيم الحلاق طريق خاص', '2023-06-12 14:49:10');
INSERT INTO `buildings` VALUES (286, 'محطة اسطفان', 'ساحل علما', 'الكسارات', '2023-06-12 14:49:11');
INSERT INTO `buildings` VALUES (287, 'مخيبر 1', 'ساحل علما', 'غرب كنيسة مار ضومط', '2023-06-12 14:49:11');
INSERT INTO `buildings` VALUES (288, 'مخيبر 2', 'ساحل علما', 'قرب علما فيستا 2', '2023-06-12 14:49:11');
INSERT INTO `buildings` VALUES (289, 'مخيبر 3', 'ساحل علما', 'قرب علما فيستا 2', '2023-06-12 14:49:11');
INSERT INTO `buildings` VALUES (290, 'مسيحي', 'ساحل علما', 'تحت كنيسة مار نهرا', '2023-06-12 14:49:11');
INSERT INTO `buildings` VALUES (291, 'مطر 1', 'ساحل علما', 'قرب بيت عقل النشار', '2023-06-12 14:49:11');
INSERT INTO `buildings` VALUES (292, 'مطر 2 - س', 'ساحل علما', 'فوق بيت خالتي', '2023-06-12 14:49:11');
INSERT INTO `buildings` VALUES (293, 'مطر 3', 'ساحل علما', 'قرب بيت اختي لينا', '2023-06-12 14:49:11');
INSERT INTO `buildings` VALUES (294, 'معوّض 1', 'ساحل علما', 'قبل كنيسة مار ضومط، نزلة على اليمين، آخر بناية الى اليمين', '2023-06-12 14:49:11');
INSERT INTO `buildings` VALUES (295, 'معوّض 3', 'ساحل علما', 'بعد اوتيل ماربيلا، قبل الطلعة القاسية، آخر بناية الى اليسار', '2023-06-12 14:49:11');
INSERT INTO `buildings` VALUES (296, 'معوّض شباب 1', 'ساحل علما', 'مقابل استديو جورج فرح', '2023-06-12 14:49:11');
INSERT INTO `buildings` VALUES (297, 'معوّض شباب 2', 'ساحل علما', 'مقابل Alma Vista 2', '2023-06-12 14:49:11');
INSERT INTO `buildings` VALUES (298, 'نصر - س', 'ساحل علما', 'حي بيت نصر', '2023-06-12 14:49:11');
INSERT INTO `buildings` VALUES (299, 'Relax club', 'عمشيت', 'فوق الجسر', '2023-06-12 14:49:11');
INSERT INTO `buildings` VALUES (300, 'بطرس الحشّاش', 'عمشيت', 'فوق الجسر', '2023-06-12 14:49:11');
INSERT INTO `buildings` VALUES (301, 'صقر 2', 'عمشيت', 'مار يوحنا', '2023-06-12 14:49:11');
INSERT INTO `buildings` VALUES (302, 'الصيّاح', 'عمشيت', 'العربة', '2023-06-12 14:49:11');
INSERT INTO `buildings` VALUES (303, 'شيخاني', 'عمشيت', 'العربة', '2023-06-12 14:49:11');
INSERT INTO `buildings` VALUES (304, 'فاضل', 'عمشيت', 'مار يوحنا', '2023-06-12 14:49:11');
INSERT INTO `buildings` VALUES (305, 'دواليب', 'عمشيت', 'اوتوستراد', '2023-06-12 14:49:11');
INSERT INTO `buildings` VALUES (306, 'ريمون', 'عمشيت', 'حي التراتجة', '2023-06-12 14:49:11');
INSERT INTO `buildings` VALUES (307, 'اميل نوفل', 'عمشيت', 'حي التراتجة', '2023-06-12 14:49:11');
INSERT INTO `buildings` VALUES (308, 'موسى', 'عمشيت', 'الطريق العام', '2023-06-12 14:49:11');
INSERT INTO `buildings` VALUES (309, 'عباد السخن', 'عمشيت', 'مقابل عارف موسى', '2023-06-12 14:49:12');
INSERT INTO `buildings` VALUES (310, 'رفيق الفغالي', 'عمشيت', 'مقابل عارف موسى', '2023-06-12 14:49:12');
INSERT INTO `buildings` VALUES (311, 'مخايل 1', 'عمشيت', 'مار زخيا', '2023-06-12 14:49:12');
INSERT INTO `buildings` VALUES (312, 'صليبا', 'عمشيت', 'مار زخيا', '2023-06-12 14:49:12');
INSERT INTO `buildings` VALUES (313, 'نجيم 3', 'ساحل علما', 'فوق استديو جورج فرح', '2023-06-12 14:49:12');
INSERT INTO `buildings` VALUES (314, 'معوّض 2', 'ساحل علما', 'بعد اوتيل ماربيلا، اوّل بناية الى اليسار', '2023-06-12 14:49:12');
INSERT INTO `buildings` VALUES (315, 'المصري', 'عمشيت', 'آخر الخط بعد المطرانيّة', '2023-06-12 14:49:12');
INSERT INTO `buildings` VALUES (316, 'صايغ', 'ساحل علما', 'بوجه غولدن روز ب', '2023-06-12 14:49:12');
INSERT INTO `buildings` VALUES (317, 'محل', 'عمشيت', 'طريق البحر', '2023-06-12 14:49:12');
INSERT INTO `buildings` VALUES (318, 'سوق القطنيات', 'عمشيت', 'الطريق العام', '2023-06-12 14:49:12');
INSERT INTO `buildings` VALUES (319, 'مارينا', 'عمشيت', 'طريق البحر', '2023-06-12 14:49:12');
INSERT INTO `buildings` VALUES (320, 'الياس يوسف', 'عمشيت', 'حي حيدر', '2023-06-12 14:49:12');
INSERT INTO `buildings` VALUES (321, 'كامب عمشيت', 'عمشيت', 'قرب محطة البحر القديمة', '2023-06-12 14:49:12');
INSERT INTO `buildings` VALUES (322, 'لطفي', 'عمشيت', 'مقابل فرن السمراني', '2023-06-12 14:49:12');
INSERT INTO `buildings` VALUES (323, 'يونس العربة', 'عمشيت', 'العربة', '2023-06-12 14:49:12');
INSERT INTO `buildings` VALUES (324, 'خيمة الزريعة العربة', 'عمشيت', 'العربة', '2023-06-12 14:49:12');
INSERT INTO `buildings` VALUES (325, 'بيبسي', 'عمشيت', 'مار زخيا', '2023-06-12 14:49:12');
INSERT INTO `buildings` VALUES (326, 'شويتر 2', 'ساحل علما', 'تحت كمال عقيقي', '2023-06-12 14:49:12');
INSERT INTO `buildings` VALUES (327, 'زعرور', 'عمشيت', 'قرب منزل السمراني', '2023-06-12 14:49:12');
INSERT INTO `buildings` VALUES (328, 'رشدان', 'عمشيت', 'طريق البحر، بعد فرن الصبايا', '2023-06-12 14:49:13');
INSERT INTO `buildings` VALUES (329, 'برق 2', 'عمشيت', 'طريق البحر قرب الكامب', '2023-06-12 14:49:13');
INSERT INTO `buildings` VALUES (330, 'غابي صقر', 'ساحل علما', 'فوق كنيسة مار نهرا', '2023-06-12 14:49:13');
INSERT INTO `buildings` VALUES (331, 'برنارد', 'ساحل علما', 'بوجه بناية حبشي', '2023-06-12 14:49:13');
INSERT INTO `buildings` VALUES (332, 'كميد', 'ساحل علما', 'مقابل كنيسة مار نهرا', '2023-06-12 14:49:13');
INSERT INTO `buildings` VALUES (333, 'برهوش', 'ساحل علما', 'مار نهرا فوق الكنيسة فرب منل بيت صقر', '2023-06-12 14:49:13');
INSERT INTO `buildings` VALUES (334, 'صقر ساحل علما', 'ساحل علما', 'مار نهرا فوق الكنيسة', '2023-06-12 14:49:13');
INSERT INTO `buildings` VALUES (335, 'جاك ضاهر', 'عمشيت', 'قبل سنتر مارينا', '2023-06-12 14:49:13');
INSERT INTO `buildings` VALUES (336, 'اندر الخوري', 'عمشيت', 'حي التراتجة', '2023-06-12 14:49:13');
INSERT INTO `buildings` VALUES (337, 'جميل فياض', 'عمشيت', 'ماريو حنا', '2023-06-12 14:49:13');
INSERT INTO `buildings` VALUES (338, 'سهيل برق', 'عمشيت', 'مار يوحنا', '2023-06-12 14:49:13');
INSERT INTO `buildings` VALUES (339, 'نزار رشوان', 'عمشيت', 'البحر', '2023-06-12 14:49:13');
INSERT INTO `buildings` VALUES (340, 'الحمرا', 'عمشيت', 'قرب كامب عمشيت', '2023-06-12 14:49:14');
INSERT INTO `buildings` VALUES (341, 'مشروع الهوا', 'عمشيت', 'البحر', '2023-06-12 14:49:14');
INSERT INTO `buildings` VALUES (342, 'انيس رزق 2', 'عمشيت', 'بعد الكامب', '2023-06-12 14:49:14');
INSERT INTO `buildings` VALUES (343, 'خضر', 'عمشيت', '', '2023-06-12 14:49:14');
INSERT INTO `buildings` VALUES (344, 'قرب بيار الشاعر', 'عمشيت', 'طريق البحر', '2023-06-12 14:49:14');
INSERT INTO `buildings` VALUES (345, 'بيت نجيم', 'ساحل علما', 'بيت نجيم', '2023-06-12 14:49:14');
INSERT INTO `buildings` VALUES (346, 'يحشوش', 'ساحل علما', 'طريق علما فيستا 2', '2023-06-12 14:49:14');
INSERT INTO `buildings` VALUES (347, 'معرض السيارات', 'عمشيت', '', '2023-06-12 14:49:14');
INSERT INTO `buildings` VALUES (348, 'قرب الغاليري', 'عمشيت', 'طريق البحر', '2023-06-12 14:49:14');
INSERT INTO `buildings` VALUES (349, 'مقابل دكان داني', 'عمشيت', '', '2023-06-12 14:49:14');
INSERT INTO `buildings` VALUES (350, 'ناجي صليبا', 'ساحل علما', 'قرب منزل عقل النشار', '2023-06-12 14:49:14');
INSERT INTO `buildings` VALUES (351, 'مكرم', 'ساحل علما', 'مار نهرا قبل منزل طنوس', '2023-06-12 14:49:14');
INSERT INTO `buildings` VALUES (352, 'حي تراتجي', 'عمشيت', 'حي تراتجي', '2023-06-12 14:49:14');
INSERT INTO `buildings` VALUES (353, 'شاليهات', 'عمشيت', 'البحر', '2023-06-12 14:49:14');
INSERT INTO `buildings` VALUES (354, 'تحت الفيبر كفرسالة', 'عمشيت', 'كفرسالة', '2023-06-12 14:49:14');
INSERT INTO `buildings` VALUES (355, 'روني الترس', 'ساحل علما', 'قرب بناية عسكر', '2023-06-12 14:49:15');
INSERT INTO `buildings` VALUES (356, 'جسر عمشيت', 'عمشيت', 'اول عمشيت', '2023-06-12 14:49:15');
INSERT INTO `buildings` VALUES (357, 'رافي', 'عمشيت', 'الطريق العام', '2023-06-12 14:49:15');
INSERT INTO `buildings` VALUES (358, 'باخوس 2', 'عمشيت', 'طريق البحر', '2023-06-12 14:49:15');
INSERT INTO `buildings` VALUES (359, 'بناية رحمة', 'عمشيت', 'طريق البحر', '2023-06-12 14:49:15');
INSERT INTO `buildings` VALUES (360, 'حارث عبود', 'عمشيت', 'العربة', '2023-06-12 14:49:15');
INSERT INTO `buildings` VALUES (361, 'نعمة يوسف', 'عمشيت', 'العربة', '2023-06-12 14:49:15');
INSERT INTO `buildings` VALUES (362, 'الاتصالات', 'عمشيت', 'البحر', '2023-06-12 14:49:15');
INSERT INTO `buildings` VALUES (363, 'بناية ريمون', 'عمشيت', 'حي التراتجة', '2023-06-12 14:49:15');
INSERT INTO `buildings` VALUES (364, 'زخيا خير', 'عمشيت', 'الطريق العام', '2023-06-12 14:49:15');
INSERT INTO `buildings` VALUES (365, 'بطرس الحايك', 'عمشيت', 'التراتجي', '2023-06-12 14:49:15');
INSERT INTO `buildings` VALUES (366, 'قرب جان نصر', 'ساحل علما', 'قرب جان نصر', '2023-06-12 14:49:15');
INSERT INTO `buildings` VALUES (367, 'قرب سعيد طوق', 'ساحل علما', 'قرب سعيد طوق', '2023-06-12 14:49:16');
INSERT INTO `buildings` VALUES (368, 'قرب شوقي صليبا', 'ساحل علما', 'قرب شوقي صليبا', '2023-06-12 14:49:16');
INSERT INTO `buildings` VALUES (369, 'قرب دكتور اسنان العربه', 'عمشيت', 'حي العربه', '2023-06-12 14:49:16');
INSERT INTO `buildings` VALUES (370, 'صايغ 2', 'ساحل علما', 'بوجه غولدن روز ب', '2023-06-12 14:49:16');
INSERT INTO `buildings` VALUES (371, 'صفير', 'عمشيت', 'البحر', '2023-06-12 14:49:16');
INSERT INTO `buildings` VALUES (372, 'انوس', 'عمشيت', 'البحر', '2023-06-12 14:49:16');
INSERT INTO `buildings` VALUES (373, 'شوبح', 'عمشيت', 'العربة', '2023-06-12 14:49:16');
INSERT INTO `buildings` VALUES (374, 'الشاليهات', 'عمشيت', 'البحر', '2023-06-12 14:49:16');
INSERT INTO `buildings` VALUES (375, 'جبرايل', 'ساحل علما', 'ساحل علما', '2023-06-12 14:49:16');
INSERT INTO `buildings` VALUES (376, 'فادي صليبا', 'ساحل علما', 'قرب منزل عقل النشار', '2023-06-12 14:49:16');
INSERT INTO `buildings` VALUES (377, 'دينا 10', 'ساحل علما', 'قرب بناية عسكر', '2023-06-12 14:49:16');
INSERT INTO `buildings` VALUES (378, 'كوع نجا', 'عمشيت', 'كوع نجا', '2023-06-12 14:49:16');
INSERT INTO `buildings` VALUES (379, 'نهرا', 'ساحل علما', 'بعد اوتيل ماربييا', '2023-06-12 14:49:16');
INSERT INTO `buildings` VALUES (380, 'حي العربة', 'عمشيت', 'حي العربة وراء دكانة داني', '2023-06-12 14:49:16');
INSERT INTO `buildings` VALUES (381, 'شربل خوري', 'عمشيت', '', '2023-06-12 14:49:16');
INSERT INTO `buildings` VALUES (382, 'صالون توفيق', 'عمشيت', 'التراتجة', '2023-06-12 14:49:16');
INSERT INTO `buildings` VALUES (383, 'الشوكولا الطريق العام', 'عمشيت', 'الطريق العام', '2023-06-12 14:49:16');
INSERT INTO `buildings` VALUES (384, 'سهيل امين', 'عمشيت', 'التراتجي', '2023-06-12 14:49:16');
INSERT INTO `buildings` VALUES (385, 'قرب الريلاكس', 'عمشيت', 'الطريق العام', '2023-06-12 14:49:16');
INSERT INTO `buildings` VALUES (386, 'مقابل نعوم', 'عمشيت', 'العربة', '2023-06-12 14:49:16');
INSERT INTO `buildings` VALUES (387, 'دوميس', 'عمشيت', 'مار الياس العربة', '2023-06-12 14:49:17');
INSERT INTO `buildings` VALUES (388, 'البطي', 'عمشيت', 'مار يوحنا', '2023-06-12 14:49:17');
INSERT INTO `buildings` VALUES (389, 'شربل عازار', 'ساحل علما', 'تحت منزل مالك الاشقر', '2023-06-12 14:49:17');
INSERT INTO `buildings` VALUES (390, 'شاكر', 'ساحل علما', 'غير محدد', '2023-06-12 14:49:17');
INSERT INTO `buildings` VALUES (391, 'محمد برق', 'عمشيت', 'العربة', '2023-06-12 14:49:17');
INSERT INTO `buildings` VALUES (392, 'طوني زغيب', 'عمشيت', 'مار زخيا', '2023-06-12 14:49:17');
INSERT INTO `buildings` VALUES (393, 'جوني الحايك', 'عمشيت', 'حي التراتجة', '2023-06-12 14:49:17');
INSERT INTO `buildings` VALUES (394, 'سالم عبد النور', 'عمشيت', 'مار الياس', '2023-06-12 14:49:17');
INSERT INTO `buildings` VALUES (395, 'وليد عطالله', 'عمشيت', 'الطريق العام', '2023-06-12 14:49:18');
INSERT INTO `buildings` VALUES (396, 'ميشال شحاده', 'ساحل علما', 'بعد عسكر آخر بناية على اليمين', '2023-06-12 14:49:18');
INSERT INTO `buildings` VALUES (397, 'امواج 966', 'ساحل علما', 'قرب كمال عقيقي', '2023-06-12 14:49:18');
INSERT INTO `buildings` VALUES (398, 'بعد جو اشقر', 'ساحل علما', 'بعد جو اشقر', '2023-06-12 14:49:18');
INSERT INTO `buildings` VALUES (399, 'طنوس', 'ساحل علما', 'بعد منزل بول اشقر', '2023-06-12 14:49:18');
INSERT INTO `buildings` VALUES (400, 'فيللا جمال', 'ساحل علما', 'بعد منزل طنوس النشار', '2023-06-12 14:49:18');
INSERT INTO `buildings` VALUES (401, 'مارون 2', 'ساحل علما', 'مقابل كنيسة مار ضومط', '2023-06-12 14:49:18');
INSERT INTO `buildings` VALUES (402, 'معوض مكتب', 'ساحل علما', 'تحت النادي - مار نهرا', '2023-06-12 14:49:18');
INSERT INTO `buildings` VALUES (403, 'مشروع الساحل 171', 'ساحل علما', 'خلف استديو جورج فرح', '2023-06-12 14:49:18');
INSERT INTO `buildings` VALUES (404, 'برهوش 2', 'ساحل علما', 'اسفل منزل بول اشقر', '2023-06-12 14:49:18');
INSERT INTO `buildings` VALUES (405, 'عنيسي', 'عمشيت', 'طريق البحر', '2023-06-12 14:49:18');
INSERT INTO `buildings` VALUES (406, 'ميشال عيسى', 'عمشيت', 'العربة', '2023-06-12 14:49:18');
INSERT INTO `buildings` VALUES (407, 'بناية شلهوب', 'عمشيت', 'العربة', '2023-06-12 14:49:18');
INSERT INTO `buildings` VALUES (408, 'خضر', 'عمشيت', 'طريق البحر', '2023-06-12 14:49:19');
INSERT INTO `buildings` VALUES (409, 'عوده', 'ساحل علما', 'بعد اوتبل ادرياتيك، بعد بناية شهيد طوق على الآخر', '2023-06-12 14:49:19');
INSERT INTO `buildings` VALUES (410, 'جوزيف خير', 'عمشيت', 'العربة', '2023-06-12 14:49:19');
INSERT INTO `buildings` VALUES (411, 'بيتزاهات', 'ساحل علما', 'غير محدد', '2023-06-12 14:49:19');
INSERT INTO `buildings` VALUES (412, 'سمير برمه', 'عمشيت', 'حي التراتجه', '2023-06-12 14:49:19');
INSERT INTO `buildings` VALUES (413, 'الصيدلية', 'ساحل علما', 'مار نهرا قبل استديو جورج فرح', '2023-06-12 14:49:19');
INSERT INTO `buildings` VALUES (414, 'فلاور بيلدينغ 1', 'ساحل علما', 'بوجه منزل مالك الاشقر نزلة الى اليسار البناية المواجهة', '2023-06-12 14:49:19');
INSERT INTO `buildings` VALUES (415, 'فلوطي', 'ساحل علما', 'بعد بناية بولس مارون البناية المواجهة على اليمين', '2023-06-12 14:49:19');
INSERT INTO `buildings` VALUES (416, 'فلاور بيلدينغ 2', 'ساحل علما', 'بعد مفرق شننعير، أوّل بناية الى اليسار', '2023-06-12 14:49:19');
INSERT INTO `buildings` VALUES (417, 'علما فيستا 2', 'ساحل علما', 'بناية كارول مفرق يسار آخر مشروع على اليسار', '2023-06-12 14:49:19');
INSERT INTO `buildings` VALUES (418, 'باي فيو', 'ساحل علما', 'قبل المصبغة اول بناية على اليسار', '2023-06-12 14:49:19');
INSERT INTO `buildings` VALUES (419, 'كولون دو ساحل', 'ساحل علما', 'بناية شرق كمال عقيقي', '2023-06-12 14:49:19');
INSERT INTO `buildings` VALUES (420, 'فلاور بيلدينغ 3', 'ساحل علما', 'قبل مفرق شننعير، مفرق على اليمين، ثاني بناية على اليمين', '2023-06-12 14:49:19');
INSERT INTO `buildings` VALUES (421, 'فلاور بيلدينغ 4', 'ساحل علما', 'بوجه بناية الشاغوري', '2023-06-12 14:49:19');
INSERT INTO `buildings` VALUES (422, 'غولدن هاوس', 'ساحل علما', 'بعد غولدن روز اول مفرق شمال ثاني بناية', '2023-06-12 14:49:19');
INSERT INTO `buildings` VALUES (423, 'غولدن مون', 'ساحل علما', 'بوجه غولدن روز', '2023-06-12 14:49:19');
INSERT INTO `buildings` VALUES (424, 'غولدن روز', 'ساحل علما', 'بنصف طلعة علمايا القاسية على اليمين', '2023-06-12 14:49:19');
INSERT INTO `buildings` VALUES (425, 'غولدن روز ب', 'ساحل علما', 'بعد غولدن روز اول مفرق شمال ثالث بناية', '2023-06-12 14:49:19');
INSERT INTO `buildings` VALUES (426, 'ايوب', 'ساحل علما', 'بعد غولدن روز مفرق يسار اول بناية', '2023-06-12 14:49:20');
INSERT INTO `buildings` VALUES (427, 'بالما سولا', 'ساحل علما', 'قبل مفرق شننعير اول بناية على اليسار على الكوع', '2023-06-12 14:49:20');
INSERT INTO `buildings` VALUES (428, 'البناية الزهر', 'ساحل علما', 'بعد اوتيل أدرياتيك نزلة الى اليمين، ثالث بناية', '2023-06-12 14:49:20');
INSERT INTO `buildings` VALUES (429, 'سانتا مارينا', 'ساحل علما', 'بعد منزل عقل النشّار صعودا، آخر بناية الى اليسار على الكوع', '2023-06-12 14:49:20');
INSERT INTO `buildings` VALUES (430, 'سانتا مارينا 2', 'ساحل علما', 'بعد منزل عقل النشّار، نزلة الى اليسار، آخر بناية على اليمين', '2023-06-12 14:49:20');
INSERT INTO `buildings` VALUES (431, 'شتروف', 'ساحل علما', 'بعد بناية كارول اول مفرق يسار اول بناية يمين', '2023-06-12 14:49:20');
INSERT INTO `buildings` VALUES (432, 'سانت فامي', 'ساحل علما', 'بعد اوتيل أدرياتيك، نزلة على اليمين، خامس بناية', '2023-06-12 14:49:20');
INSERT INTO `buildings` VALUES (433, 'علما فيستا 1', 'ساحل علما', 'بعد منزل عقل النشّار صعودا، نزلة الى اليسار، أوّل بناية الى اليسار', '2023-06-12 14:49:20');
INSERT INTO `buildings` VALUES (434, 'جان ساسين', 'ساحل علما', 'قبل اوتيل ماربييا مباشرة', '2023-06-12 14:49:20');
INSERT INTO `buildings` VALUES (435, 'حكيّم 1', 'ساحل علما', 'شمال كنيسة مار ضومط', '2023-06-12 14:49:20');
INSERT INTO `buildings` VALUES (436, 'حكيّم 2', 'ساحل علما', 'شمال حكيم 1 شمال كنيسة مار ضومط', '2023-06-12 14:49:20');
INSERT INTO `buildings` VALUES (437, 'غير محدد', 'ساحل علما', 'غير محدد', '2023-06-12 14:49:20');
INSERT INTO `buildings` VALUES (438, 'دينا 3', 'ساحل علما', 'غير محدد', '2023-06-12 14:49:20');
INSERT INTO `buildings` VALUES (439, 'دوميس القسيس', 'ساحل علما', 'قرب منزل عقل النشار', '2023-06-12 14:49:20');
INSERT INTO `buildings` VALUES (440, 'اديب موسى', 'عمشيت', 'العربة', '2023-06-12 14:49:20');
INSERT INTO `buildings` VALUES (441, 'بعينو', 'ساحل علما', 'قرب بناية روز', '2023-06-12 14:49:20');
INSERT INTO `buildings` VALUES (442, 'ليمار', 'ساحل علما', 'قبل بناية كارول مفرق يسار 500متر مشروع على اليسار', '2023-06-12 14:49:20');
INSERT INTO `buildings` VALUES (443, 'ابو خليل', 'ساحل علما', 'بعد اوتيل ماربيلا، قبل الطلعة القاسية مفرق، ثاني بناية على اليمين', '2023-06-12 14:49:20');
INSERT INTO `buildings` VALUES (444, 'نهرا زيادة', 'عمشيت', 'مار زخيا', '2023-06-12 14:49:20');
INSERT INTO `buildings` VALUES (445, 'مبنى فيغاني', 'عمشيت', 'حي مار يوحنا', '2023-06-12 14:49:20');
INSERT INTO `buildings` VALUES (446, 'سليم برق', 'عمشيت', 'حي العربة', '2023-06-12 14:49:20');
INSERT INTO `buildings` VALUES (447, 'جان وهبه', 'عمشيت', 'حي العربة', '2023-06-12 14:49:20');
INSERT INTO `buildings` VALUES (448, 'فارس الهاشم', 'عمشيت', 'مار الياس', '2023-06-12 14:49:20');
INSERT INTO `buildings` VALUES (449, 'ايلي سجعان', 'عمشيت', 'البحر', '2023-06-12 14:49:21');
INSERT INTO `buildings` VALUES (450, 'روكز', 'عمشيت', 'البحر', '2023-06-12 14:49:21');
INSERT INTO `buildings` VALUES (451, 'صليبا مفرق شننعير', 'ساحل علما', 'الكسارات', '2023-06-12 14:49:21');
INSERT INTO `buildings` VALUES (452, 'الكويتي', 'ساحل علما', 'قرب بول اشقر', '2023-06-12 14:49:21');
INSERT INTO `buildings` VALUES (453, 'بشير زغيب', 'عمشيت', 'العربة', '2023-06-12 14:49:22');
INSERT INTO `buildings` VALUES (454, 'ملحم', 'عمشيت', 'العربة', '2023-06-12 14:49:22');
INSERT INTO `buildings` VALUES (455, 'الفار', 'عمشيت', 'طريق البحر', '2023-06-12 14:49:22');
INSERT INTO `buildings` VALUES (456, 'قرب ليمار', 'ساحل علما', 'قبل بيت برباري قرب الكنيسة', '2023-06-12 14:49:22');
INSERT INTO `buildings` VALUES (457, 'طوني مارون', 'ساحل علما', 'بوجه اسطفان', '2023-06-12 14:49:22');
INSERT INTO `buildings` VALUES (458, 'نصور', 'عمشيت', 'العربة', '2023-06-12 14:49:22');
INSERT INTO `buildings` VALUES (459, 'سركيس', 'عمشيت', 'العربة', '2023-06-12 14:49:22');
INSERT INTO `buildings` VALUES (460, 'قرب مطعم مهنا', 'عمشيت', 'البحر', '2023-06-12 14:49:22');
INSERT INTO `buildings` VALUES (461, 'فرج وفرح', 'ساحل علما', 'قبل بيت برباري قرب الكنيسة', '2023-06-12 14:49:22');
INSERT INTO `buildings` VALUES (462, 'قرب جان مارون', 'ساحل علما', 'قبل كنيسة مار ضومط', '2023-06-12 14:49:22');
INSERT INTO `buildings` VALUES (463, 'قرقفي 2', 'ساحل علما', 'بعد بناية شويتر', '2023-06-12 14:49:22');
INSERT INTO `buildings` VALUES (464, 'فاريز فرح 2', 'ساحل علما', 'جنب الغولدن مون', '2023-06-12 14:49:22');
INSERT INTO `buildings` VALUES (465, 'سليم جعاره', 'عمشيت', 'العربة', '2023-06-12 14:49:22');
INSERT INTO `buildings` VALUES (466, 'دينا 5', 'ساحل علما', 'غير محدد', '2023-06-12 14:49:22');
INSERT INTO `buildings` VALUES (467, 'شحاده 2', 'ساحل علما', 'قرب الكاريتاس', '2023-06-12 14:49:22');
INSERT INTO `buildings` VALUES (468, 'سليم زغيب', 'ساحل علما', 'قرب محطة اسطفان', '2023-06-12 14:49:22');
INSERT INTO `buildings` VALUES (469, 'دمعه', 'ساحل علما', 'بوجه كنيسة مار ضومط', '2023-06-12 14:49:22');
INSERT INTO `buildings` VALUES (470, 'روميو', 'عمشيت', 'روميو', '2023-06-12 14:49:22');
INSERT INTO `buildings` VALUES (471, 'متى', 'عمشيت', 'متى', '2023-06-12 14:49:22');
INSERT INTO `buildings` VALUES (472, 'معوّض شباط', 'ساحل علما', 'معوّض شباط', '2023-06-12 14:49:22');
INSERT INTO `buildings` VALUES (473, 'مشروع علمايا', 'ساحل علما', 'مشروع علمايا', '2023-06-12 14:49:22');
INSERT INTO `buildings` VALUES (474, 'عوده 2', 'ساحل علما', 'تحت بيت اختي لينا', '2023-06-12 14:49:23');
INSERT INTO `buildings` VALUES (475, 'الحايك 3', 'عمشيت', 'مار زخيا', '2023-06-12 14:49:23');
INSERT INTO `buildings` VALUES (476, 'حبشي 2', 'ساحل علما', 'تحت منزل اوريانوس النشار', '2023-06-12 14:49:23');
INSERT INTO `buildings` VALUES (477, 'طوني خليل', 'ساحل علما', '', '2023-06-12 14:49:23');
INSERT INTO `buildings` VALUES (478, 'بولس ضومط', 'عمشيت', 'العربة', '2023-06-12 14:49:23');
INSERT INTO `buildings` VALUES (479, 'ربيع مهنا', 'عمشيت', 'العربة', '2023-06-12 14:49:23');
INSERT INTO `buildings` VALUES (480, 'قرب بربر صيفي', 'عمشيت', 'العربة', '2023-06-12 14:49:23');
INSERT INTO `buildings` VALUES (481, 'عواد', 'عمشيت', 'العربة', '2023-06-12 14:49:23');
INSERT INTO `buildings` VALUES (482, 'بطرس', 'عمشيت', 'العربه', '2023-06-12 14:49:23');
INSERT INTO `buildings` VALUES (483, 'البولينغ', 'عمشيت', 'مفرق عمشيت', '2023-06-12 14:49:23');
INSERT INTO `buildings` VALUES (484, 'داوود', 'عمشيت', 'مار يوحنا', '2023-06-12 14:49:23');
INSERT INTO `buildings` VALUES (485, 'الاشقر', 'ساحل علما', 'قرب بول الاشقر', '2023-06-12 14:49:23');
INSERT INTO `buildings` VALUES (486, 'سلوى سليم', 'عمشيت', 'العربة', '2023-06-12 14:49:23');
INSERT INTO `buildings` VALUES (487, 'جان مارون', 'عمشيت', 'العربة', '2023-06-12 14:49:23');
INSERT INTO `buildings` VALUES (488, 'قرب سانتا بربرا', 'عمشيت', 'البحر', '2023-06-12 14:49:23');
INSERT INTO `buildings` VALUES (489, 'مخلوف', 'عمشيت', 'العربة', '2023-06-12 14:49:23');
INSERT INTO `buildings` VALUES (490, 'ساحل 980', 'ساحل علما', '', '2023-06-12 14:49:23');
INSERT INTO `buildings` VALUES (491, 'حي الكامب', 'عمشيت', 'البحر', '2023-06-12 14:49:23');
INSERT INTO `buildings` VALUES (492, 'ضومط', 'عمشيت', '', '2023-06-12 14:49:23');
INSERT INTO `buildings` VALUES (493, 'حبيب', 'عمشيت', 'مار زخيا، مقابل بيت منير عوّاد', '2023-06-12 14:49:23');
INSERT INTO `buildings` VALUES (494, 'وليد ضاهر', 'عمشيت', 'البحر', '2023-06-12 14:49:24');
INSERT INTO `buildings` VALUES (495, 'بطرس جبرايل', 'عمشيت', 'العربة', '2023-06-12 14:49:24');
INSERT INTO `buildings` VALUES (496, 'روي رزق', 'عمشيت', '', '2023-06-12 14:49:24');
INSERT INTO `buildings` VALUES (497, 'جابي فرام', 'عمشيت', 'العربة', '2023-06-12 14:49:24');
INSERT INTO `buildings` VALUES (498, 'كلود عبود', 'عمشيت', 'العربة', '2023-06-12 14:49:24');
INSERT INTO `buildings` VALUES (499, 'رودريغ طاهر', 'عمشيت', 'العربة', '2023-06-12 14:49:24');
INSERT INTO `buildings` VALUES (500, 'انترنت', 'ساحل علما', 'ساحل علما', '2023-06-12 14:49:24');
INSERT INTO `buildings` VALUES (501, 'ميشال غالب', 'عمشيت', 'العربة', '2023-06-12 14:49:24');
INSERT INTO `buildings` VALUES (502, 'قرب كنيسة مار زخيا', 'عمشيت', 'مار زخيا', '2023-06-12 14:49:24');
INSERT INTO `buildings` VALUES (503, 'حدشيتي', 'عمشيت', 'عالبحر', '2023-06-12 14:49:24');
INSERT INTO `buildings` VALUES (504, 'روجيه نجيم', 'عمشيت', 'العربه', '2023-06-12 14:49:24');
INSERT INTO `buildings` VALUES (505, 'حمزه', 'عمشيت', 'طريق البحر', '2023-06-12 14:49:24');
INSERT INTO `buildings` VALUES (506, 'الورى', 'عمشيت', 'حي العربة', '2023-06-12 14:49:24');
INSERT INTO `buildings` VALUES (507, 'حمزه', 'ع', 'طريق البحر', '2023-06-12 14:49:24');
INSERT INTO `buildings` VALUES (508, 'حمزه', 'عمشيت', 'طريق البحر', '2023-06-12 14:49:24');
INSERT INTO `buildings` VALUES (509, 'حمزه', 'عمشيت', 'طريق البحر', '2023-06-12 14:49:24');
INSERT INTO `buildings` VALUES (510, 'غسان عواد', 'عمشيت', '', '2023-06-12 14:49:24');
INSERT INTO `buildings` VALUES (511, 'بطرس الشاويش', 'عمشيت', 'كوع نجا', '2023-06-12 14:49:24');
INSERT INTO `buildings` VALUES (512, 'جيلبير مسيحي', 'ساحل علما', 'مار نهرا خلف الكنيسة', '2023-06-12 14:49:24');
INSERT INTO `buildings` VALUES (513, 'ميلاد منصور', 'عمشيت', 'العربة', '2023-06-12 14:49:24');
INSERT INTO `buildings` VALUES (514, 'رواد برمه', 'عمشيت', 'العربة', '2023-06-12 14:49:24');
INSERT INTO `buildings` VALUES (515, 'حد الكامب', 'عمشيت', 'حد الكامب', '2023-06-12 14:49:25');
INSERT INTO `buildings` VALUES (516, 'جورج يونس 920', 'ساحل علما', 'نزلة علمايا', '2023-06-12 14:49:25');
INSERT INTO `buildings` VALUES (517, 'ميلاد سعد', 'عمشيت', 'خلف الريلاكس كلوب', '2023-06-12 14:49:25');
INSERT INTO `buildings` VALUES (518, 'الملحمة', 'عمشيت', 'العربة', '2023-06-12 14:49:25');
INSERT INTO `buildings` VALUES (519, 'بطرس حبشي 2', 'ساحل علما', 'تحت فارس خليل', '2023-06-12 14:49:25');
INSERT INTO `buildings` VALUES (520, 'باي فيو 2', 'ساحل علما', 'قرب ليمار من تحت أخر بناية على الكوع', '2023-06-12 14:49:25');
INSERT INTO `buildings` VALUES (521, 'طوني مارون 2', 'ساحل علما', 'قرب فرحات', '2023-06-12 14:49:25');
INSERT INTO `buildings` VALUES (522, 'باتي - حي العربة', 'عمشيت', 'حي العربة', '2023-06-12 14:49:25');
INSERT INTO `buildings` VALUES (523, 'محل كوكتيل', 'عمشيت', 'قرب محطة يونايتد - طريق البحر', '2023-06-12 14:49:25');
INSERT INTO `buildings` VALUES (524, 'محل كوكتيل', 'عمشيت', 'طريق البحر قرب محطة يونايتد', '2023-06-12 14:49:25');
INSERT INTO `buildings` VALUES (525, 'عمشيت 2788', 'عمشيت', 'عمشيت خلف النادي', '2023-06-12 14:49:25');
INSERT INTO `buildings` VALUES (526, 'صيدلية نور', 'عمشيت', 'حي العربة', '2023-06-12 14:49:25');
INSERT INTO `buildings` VALUES (527, 'عيراني', 'ساحل علمل', 'بعد منزل طنوس النشار', '2023-06-12 14:49:25');
INSERT INTO `buildings` VALUES (528, 'الساحل 777', 'ساحل علما', 'حي شمسين', '2023-06-12 14:49:25');
INSERT INTO `buildings` VALUES (529, 'بناية جو اشقر', 'ساحل علما', 'تحت بيت انعام ونجاة', '2023-06-12 14:49:25');
INSERT INTO `buildings` VALUES (530, 'بستاني', 'ساحل علما', 'بوجه فوزي مارون', '2023-06-12 14:49:25');
INSERT INTO `buildings` VALUES (531, 'هاغوب', 'عمشيت', 'العربة', '2023-06-12 14:49:25');
INSERT INTO `buildings` VALUES (532, 'علي حسون', 'عمشيت', 'حي العربة', '2023-06-12 14:49:25');
INSERT INTO `buildings` VALUES (533, 'مطعم ملح وحلو', 'عمشيت', 'البحر', '2023-06-12 14:49:25');
INSERT INTO `buildings` VALUES (534, 'يوسف خوري', 'عمشيت', 'العربة', '2023-06-12 14:49:25');
INSERT INTO `buildings` VALUES (535, 'رامز برهوش', 'ساحل علما', 'مارنهرا', '2023-06-12 14:49:26');
INSERT INTO `buildings` VALUES (536, 'صادق برق', 'عمشيت', 'العربة', '2023-06-12 14:49:26');
INSERT INTO `buildings` VALUES (537, 'عوده 3', 'ساحل علما', 'الجسر', '2023-06-12 14:49:26');
INSERT INTO `buildings` VALUES (538, 'عزيز يوسف', 'عمشيت', 'العربة', '2023-06-12 14:49:26');
INSERT INTO `buildings` VALUES (539, 'رضوان ضومط', 'عمشيت', 'العربة', '2023-06-12 14:49:26');
INSERT INTO `buildings` VALUES (540, 'جان جان', 'عمشيت', 'حي التراتجي', '2023-06-12 14:49:26');
INSERT INTO `buildings` VALUES (541, 'ريمون نادر', 'ساحل علما', 'شارع الاوتيل', '2023-06-12 14:49:26');
INSERT INTO `buildings` VALUES (542, 'ريلاكس', 'عمشيت', 'مار زخيا', '2023-06-12 14:49:26');
INSERT INTO `buildings` VALUES (543, 'تابت', 'ساحل علما', 'فوق منزل عقل النشار', '2023-06-12 14:49:26');
INSERT INTO `buildings` VALUES (544, 'ايلي ساسين', 'عمشيت', 'العربة', '2023-06-12 14:49:26');
INSERT INTO `buildings` VALUES (545, 'رودي حيدر', 'ساحل علما', 'بعد اوتيل ادرياتيك', '2023-06-12 14:49:27');
INSERT INTO `buildings` VALUES (546, 'بيت حكيم', 'ساحل علما', 'قرب كنيسة مار ضومط', '2023-06-12 14:49:27');
INSERT INTO `buildings` VALUES (547, 'سوبر ماركت', 'ساحل علما', 'مارضومط', '2023-06-12 14:49:27');
INSERT INTO `buildings` VALUES (548, 'مار الياس', 'عمشيت', 'مار الياس', '2023-06-12 14:49:27');
INSERT INTO `buildings` VALUES (549, 'فغالي', 'عمشيت', 'عمشيت', '2023-06-12 14:49:27');
INSERT INTO `buildings` VALUES (550, 'الجراج', 'عمشيت', 'عمشيت', '2023-06-12 14:49:27');
INSERT INTO `buildings` VALUES (551, 'سمارت شوب', 'عمشيت', 'عمشيت', '2023-06-12 14:49:27');
INSERT INTO `buildings` VALUES (552, 'سوبر ماركت 01', 'عمشيت', 'العربة', '2023-06-12 14:49:27');
INSERT INTO `buildings` VALUES (553, 'حيدر 2', 'ساحل علما', 'شارع الادرياتيك- فوق سعيد طوق', '2023-06-12 14:49:27');
INSERT INTO `buildings` VALUES (554, 'جوزيف رضوان', 'عمشيت', 'العربة', '2023-06-12 14:49:27');
INSERT INTO `buildings` VALUES (555, 'بناية عازار العميد نجيم', 'ساحل علما', 'بناية عازار خلف ناجي الحلاق', '2023-06-12 14:49:27');

-- ----------------------------
-- Table structure for customers
-- ----------------------------
DROP TABLE IF EXISTS `customers`;
CREATE TABLE `customers`  (
  `ID` int NOT NULL AUTO_INCREMENT,
  `FirstName` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `LastName` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `Region` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `BuildingName` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `Address` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `MonthlyFee` int NOT NULL,
  `Title` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `StartOfSub` date NULL DEFAULT NULL,
  `Timestamp` timestamp NOT NULL DEFAULT current_timestamp,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of customers
-- ----------------------------
INSERT INTO `customers` VALUES (1, 'غادة', 'زغيب', 'ساحل علما', 'جوزيف زغيب', 'مار زخيا، بعد منزل فادي برجاس', 200000, 'السيّدة\r\n', '2015-11-01', '2023-06-12 16:38:05');
INSERT INTO `customers` VALUES (2, 'نقولا', 'خليفة', 'عمشيت', 'عون', '', 200000, 'السيّد', '2015-11-01', '2023-06-12 18:36:59');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `ID` int NOT NULL AUTO_INCREMENT,
  `FirstName` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `LastName` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `UserName` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `Password` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `Job` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `Timestamp` timestamp NOT NULL DEFAULT current_timestamp,
  PRIMARY KEY (`ID`) USING BTREE,
  UNIQUE INDEX `UserName`(`UserName`) USING HASH
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (1, 'Michael', 'James', 'admin111', '$2a$11$KCTrseX7dsoOwLAtcJV9VezuQWpXSC1FN1vnKVudfLbCdKqLhrQe2', 'IT', '2023-06-12 02:13:27');

SET FOREIGN_KEY_CHECKS = 1;
