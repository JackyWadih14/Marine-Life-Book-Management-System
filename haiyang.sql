/*
 Navicat Premium Data Transfer

 Source Server         : 26
 Source Server Type    : MySQL
 Source Server Version : 80041
 Source Host           : localhost:3306
 Source Schema         : haiyang

 Target Server Type    : MySQL
 Target Server Version : 80041
 File Encoding         : 65001

 Date: 02/07/2026 14:36:06
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for category
-- ----------------------------
DROP TABLE IF EXISTS `category`;
CREATE TABLE `category`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `parent` bigint(0) NOT NULL COMMENT '父id',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '名称',
  `sort` int(0) NULL DEFAULT NULL COMMENT '顺序',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 726610768723841024 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of category
-- ----------------------------
INSERT INTO `category` VALUES (725966596136374272, 0, '脊索动物门', 1);
INSERT INTO `category` VALUES (725966664675495936, 725966596136374272, '哺乳纲', 1);
INSERT INTO `category` VALUES (725966741095714816, 725966596136374272, '鸟纲', 2);
INSERT INTO `category` VALUES (725966796565385216, 725966596136374272, '爬行纲', 3);
INSERT INTO `category` VALUES (725966845219311616, 725966596136374272, '软骨鱼纲', 4);
INSERT INTO `category` VALUES (725966903423668224, 725966596136374272, '辐鳍鱼纲', 6);
INSERT INTO `category` VALUES (725966976228397056, 0, '棘皮动物门', 2);
INSERT INTO `category` VALUES (725967067563560960, 0, '软体动物门', 3);
INSERT INTO `category` VALUES (725967135188324352, 0, '刺胞动物门', 4);
INSERT INTO `category` VALUES (725967135188324353, 0, '节肢动物门', 5);
INSERT INTO `category` VALUES (725968143478034432, 725967135188324353, '软甲纲', 1);
INSERT INTO `category` VALUES (726610588964360192, 725966976228397056, '海星纲', 1);
INSERT INTO `category` VALUES (726610671558594560, 725967067563560960, '头足纲', 1);
INSERT INTO `category` VALUES (726610768723841024, 725967135188324352, '珊瑚纲', 1);

-- ----------------------------
-- Table structure for content
-- ----------------------------
DROP TABLE IF EXISTS `content`;
CREATE TABLE `content`  (
  `id` bigint(0) NOT NULL,
  `content` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of content
-- ----------------------------
INSERT INTO `content` VALUES (1, '<p>凶猛的大型食肉海洋动物</p>');
INSERT INTO `content` VALUES (2, '<p>鲨鱼（学名：Selachomorpha；英文名：Sharks）是软骨鱼纲、鲨形总目动物的统称，共有8目34科约548种。体呈长纺锤形。鳃裂侧位，胸鳍正常，不与吻的前缘愈合；鳍翅背位；歪尾型。鲨鱼体坚硬、肌肉发达；体形根据种类不同大小不一，总体呈现两头尖中间宽的形状；口鼻部分因种类而不同，有尖形、也有大而圆形；尾巴垂直向上呈新月形；雌雄异体，雌性体型大于雄性。</p><p>鲨鱼是软骨鱼类，骨骼由软骨组成。它们通常有梭形的身体形状，头部两侧有鳃裂，坚硬的灰色皮肤上覆盖着齿状鳞片。以肌肉发达、不对称的尾巴、尖鳍和锋利的三角形牙齿而闻名。有些鲨鱼是其环境中的顶级捕食者。</p><p>鲨鱼分布在全世界的热带、温带和极地海洋中。不同的鲨鱼生活环境略有不同，部分喜欢在暖水里栖息，部分喜欢在冷水中生活，也有喜生活在沿海浅水水域或靠近水底处生活。鲨鱼因没有鱼鳔，所以要不停地游动，对氧气需求很大，视力不好，嗅觉、听觉及触觉极其灵敏。白天睡觉，晚上出来活动。大部分鲨鱼不会主动攻击人类。鲨鱼的食物很杂，主要以微小的浮游生物为食，还吃小鱼、海龟、海鸟、海豹等动物，鲨鱼体内受精，繁殖方式为卵生、卵胎生及胎生。大部分的鲨鱼寿命不超过30年，但生活在深海中的鲸鲨，最长可达100年。鲨鱼是顶级掠食者，它们处于食物链的顶端，对于帮助保持海洋平衡和健康至关重要。</p><p>全部列入《世界自然保护联盟濒危物种红色名录》(IUCN)；大部列入《濒危野生动植物种国际贸易公约》(CITES)2023年版附录Ⅱ。</p>');
INSERT INTO `content` VALUES (3, '<p>喜欢成群结队出没的小型海洋动物</p>');
INSERT INTO `content` VALUES (4, '<p>沙丁鱼是硬骨鱼纲鲱形目鲱科沙丁鱼属、小沙丁鱼属和拟沙丁鱼属及鲱科某些食用鱼类的统称。分布于北纬14-68度的海洋区域中。沙丁鱼为近海暖水性鱼类，一般不见于外海和大洋。沙丁鱼食用价值很高，整体营养价值高，被大量捕捞运用于食品加工领域。沙丁鱼也是全球重要的经济鱼类，它们往往是远洋捕捞的重要产物。</p><p>沙丁鱼是小型、银色、细长的鱼类，背鳍短，没有侧线，头部没有鳞片。它们的长度从大约 15 到 30 厘米不等，生活在密集的鱼群中，沿着海岸迁徙并以浮游生物为食，它们消耗大量的浮游生物。它们主要在春季产卵，卵和几天后，幼鱼被动漂流，直到它们蜕变成自由游泳的鱼。</p>');
INSERT INTO `content` VALUES (5, '<p>移动缓慢的海洋生物</p>');
INSERT INTO `content` VALUES (6, '<p>海星（学名：Asteroidea）属于棘皮动物门海星纲动物，又称海盘车、星鱼。有43个科、430个属以及1972个种。体扁，星形，具中空的腕。颜色鲜艳。成体多为五辐射对称（有5条腕）；口位于基底下侧中部，与腕腹部共同构成口面；每条腕的中部都有步带沟，从沟中伸出细小的管状附属物，称为管足；表皮下有钙质骨片和肌肉层，可使腕足活动。一般为雌雄异体，也有部分为雌雄同体。寿命可达35年之久。</p><p>海星分布在世界各个海域，其中，北太平洋分布最多。在中国渤海、黄海等沿岸也能见到其身影。喜欢群居，常栖息在有沙、岩石或珊瑚的海底。在软泥底较为少见。肉食动物，它们的食物来源主要是贝类、海胆、螃蟹和海葵等行动较为缓慢的海洋生物，甚至也包括美丽缤纷的珊瑚。繁殖能力很强，一般在夏季繁殖后代，卵和精子在海水中受精，<sup><em> [8]</em></sup>形成新的生命。大多数海星都不会进行无性繁殖。医学价值方面，海星含有的成分对高血脂症及心脑血管疾病具有很好的疗效。海星体内还能提炼出制作胶囊的胶质。生态价值方面，对维持生态平衡具有重要作用。经济价值方面，具有较高的营养价值，其含有丰富的脂肪和蛋白质。在生产领域上，可以用来沤肥。在工业上，常用来加工成粉状饲料。</p><p>海星在国内外均不属于保护动物，且部分地区海星泛滥造成危害。中国曾爆发海星泛滥，海星疯狂地摄食鲍鱼、菲律宾蛤仔、扇贝等养殖经济贝类，一个海星1天能吃掉十几只扇贝，食量惊人，给贝类养殖业造成巨大的经济损失。</p>');
INSERT INTO `content` VALUES (7, '<p>八只触手的软体生物</p>');
INSERT INTO `content` VALUES (8, '<p>章鱼（Octopus）：为章鱼科26属252种海洋软体动物的通称。为头足纲最大科，可分为深海多足蛸亚科（Bathypolypodinae）、爱尔斗蛸亚科（Eledoninae）、谷蛸亚科（Graneledoninae）和蛸亚科（Octopodinae）。体卵形或卵圆形，肌肉强健，外套腔开口窄，体表一般不具水孔。腕吸盘1列或2列。雄性左侧或右侧第3腕茎化，腕腹缘具精沟，末端具勺状舌叶；茎化腕不能自断。漏斗外套锁退化。具1对退化针状内壳或无内壳。若具齿舌，齿舌侧齿一般单尖。胃和盲肠位于消化腺后部。</p><p>该科是重要的商业性头足类，中国南部沿海的真蛸（普通章鱼）和北部沿海的短蛸均有一定产量。蛸的干制品称“八蛸干”或“章鱼干”，除食用外，在医药上尚有补血益气、收敛生肌的作用。</p><p>为温带性软体动物，生活在水下，适应水温不能低于7℃，海水比重1.021最为适宜，低盐度的环境会死亡。能摄食大型动物性浮游生物而成长。广泛分布于世界各大洋的热带及温带海域。</p>');
INSERT INTO `content` VALUES (9, '<p>可以生存很久的海洋动物</p>');
INSERT INTO `content` VALUES (10, '<p>海龟是龟鳖目棱皮龟科和海龟科的海栖龟类的统称。上颌平出，下颌略向上钩曲，颚缘有锯齿状缺刻；前额鳞1对；背甲呈心形，盾片镶嵌排列；四肢桨状，前肢长于后肢，每肢内侧各具1爪，前肢的爪大而弯曲呈钩状。背甲橄榄色或棕褐色，杂以浅色斑纹。<br>海龟广泛分布于太平洋、大西洋和印度洋。在中国分布于北起山东沿海，南至广东沿海各省及台湾、海南等省，南海诸岛尤多。世界上现存有七种海龟，其中绿海龟、玳瑁、红海龟、太平洋丽龟和棱皮龟在中国海域有分布。大多生活在比较浅的沿海水域、海湾、珊瑚礁和流入大海的河口等地方。以大叶藻、头足类、甲壳类及鱼虾为食。每年4-10月为繁殖季节。产毕将卵坑用沙覆盖。每年可产卵2-3次，每产91-157枚。卵白色，圆球形，卵径35-58毫米，孵化期30-90天。幼龟自出壳即爬归海水中生活。<br>海龟是世界上最古老的动物之一，早在2亿多年前就出现在地球上了，因此，考古学家们把它们视为“活化石”。世界现存的七种海龟均已被列入《濒危野生动植物种国际贸易公约》(CITES)附录I。除了仅在澳大利亚分布的平背龟外，其他六种海龟也被列入《保护迁徙野生动物物种公约》(CMS)附录I。在中国海域分布的海龟均在2021年初被升级为国家一级保护野生动物。<br>在《世界自然保护联盟濒危物种红色名录》（IUCN）——濒危（EN）；被列入《中国物种红色名录》——极危（CR）。</p>');
INSERT INTO `content` VALUES (11, '<p>海葵目的海洋软体动物</p>');
INSERT INTO `content` VALUES (12, '<p>海葵为珊瑚纲海葵目（学名：Actiniaria）的统称，截止2024年12月，根据《全球生物物种名录（COL）》所示，该目共有66科320属1176种；中国共分布21科41属70种。海葵是一种固着的水螅体，底部通过一个称为基盘或足盘的粘性结构附着在底面上，身体呈柱状，顶部有一个口盘，体长在1.5厘米~1米之间。柱体或干体通常呈大致圆柱形，表面光滑平整或具乳突。口盘中央有一个通常呈裂缝状的口，周围环绕着一圈或多圈触手，触手的数量和形态因种而异。此外，海葵的颜色众多，有淡奶油色、绿色、橘黄色等。<br>海葵分布于全球各大海域，如紫点海葵在地中海沿岸，美国海葵在美国沿岸。它们生活在深海和浅海，也有适应冷水环境的。海葵主要捕食无脊椎动物，大型海葵也会捕食螃蟹等生物，也有某些海葵通过悬浮物摄食浮游生物。海葵主要附着在硬质表面，但也能缓慢移动或从基底上脱落漂移，部分种类能行走和游泳。海葵常与其他生物共生。棘颊雀鲷和双锯鱼生活在有毒海葵触手间，但也可能被其他海葵刺伤和捕食。<br>截止2024年，根据《世界自然保护联盟（IUCN）濒危物种红色名录》所示，该目共有11种被列入，其中极危（CR）、濒危（EN）、易危（VU）各一种。海葵具有一定的药用价值，如黄海葵味咸、性平、有毒，具有强心、收敛固涩等作用，主要用于治疗痔疮、脱肛等。纵条肌海葵还有镇静、镇痛、镇咳及降压的作用。海葵也可食用，只需去掉黏液即可烹制出海葵酸辣汤等菜肴，但需注意有些海葵毒性很强，食用时需谨慎。</p>');
INSERT INTO `content` VALUES (13, '<p>节肢动物，又称虾姑</p>');
INSERT INTO `content` VALUES (14, '<p>口足目（学名：Stomatopoda）是软甲纲下的一目，俗称虾蛄或螳螂虾。大约400种。头胸部短狭，最后4-5节胸节露出于头胸甲之后。额角的基部有关节。腹部长大略扁。尾部与尾肢成为强大的挖捅和移动器。具有柄的复眼。触角有2对，第1对触角的柄端有3条鞭；第2对触角有叶状鳞片。有5对胸肢，其中第2对特别强大成捕（掠）肢，其后方的3对胸肢呈叉状。腹部7节，第6腹节的腹肢与尾节（即最后的腹节）共成尾扇。其余5对腹服成叉状游泳肢，其外肢上有丝状鳃。<br>口足目绝大多数种类生活于热带和亚热带海域，少数见于温带海域。中国的南北沿海均有分布，以南海的种类最多，黄海和渤海的产量最大，口足类大多数栖息于泥沙质海底，涧穴生活，少数在石砾间生活。它靠捕肢捕捉小型的鱼类、甲壳动物、环形动物等作为食料。见食物后立即伸出第二对胸足以捕食。在中国北方繁殖期一般在初夏以后，南方的繁殖期还要长些。<br>虾蛄肉可供鲜食或制成虾酱，又可作为鱼类的天然饵料。营养丰富，滋味鲜美，为高蛋白、低脂肪的海产食品。肉和卵巢可食，还可作钓饵或肥料。</p>');
INSERT INTO `content` VALUES (15, '<p>个头很大爪子很长的螃蟹</p>');
INSERT INTO `content` VALUES (16, '<p>堪察加拟石蟹（学名：Paralithodes camtschaticus），是石蟹科拟石蟹属的一种甲壳动物，又称阿拉斯加帝王蟹、红帝王蟹。作为拟石蟹中体型最大的种类之一，堪察加拟石蟹体型庞大，最大腿间跨度可达1.8米，体重超过10千克。其身体呈水滴状，有八条腿，全身覆盖坚硬的红褐色至酒红色甲壳。<br>堪察加拟石蟹分布广泛，从美国阿拉斯加和加拿大太平洋沿岸，向西延伸至俄罗斯太平洋沿岸、日本、韩国、朝鲜等地，也见于巴伦支海和挪威海。这些海域通常水温较低，靠近北极，纬度较高。堪察加拟石蟹两岁以下的幼体主要栖息于沿岸浅海水域，并以成千上万只的规模集群生活。成体后，它们会迁移到约200米深的深海区域。雌性堪察加拟石蟹在产卵时会返回浅水区。其平均寿命为15~20年。<br>堪察加拟石蟹是重要的海产资源。其蟹肉鲜美可口，备受消费者喜爱。此外，其内脏和甲壳富含多种营养素和蛋白质，营养价值高。</p>');
INSERT INTO `content` VALUES (17, '<p>鲈形目带鱼属的鱼类，俗称刀鱼</p>');
INSERT INTO `content` VALUES (18, '<p>带鱼是鲈形目带鱼科带鱼属的鱼类，俗称刀鱼、白带鱼、牙带鱼、裙带、肥带、油带等。 [4]体延长呈带状，甚侧扁，体前部背腹缘几呈平行状，向尾部渐细；头狭长；眼中等大，位高；口大；下颌长于上颌；鳃耙细短，大小不规则；体光滑无鳞，侧线完全；背鳍长，胸鳍短尖，无腹鳍；尾长，向后渐细，末端成鞭状。体银白色，背鳍及胸鳍浅灰色，具细小黑点；尾呈黑色。<br>带鱼分布比较广，以西太平洋和印度洋最多，中国沿海各省均有分布。栖息于外海之中下水层，有洄游习性。游泳能力差，有昼夜垂直移动和结群排队的习性。食性杂，捕食毛虾、乌贼及其他鱼类。在5—7月水温为18—20℃的河口外咸、淡水区域产浮性卵，成熟卵一次产出。<br>带鱼性温，味甘，归肝、脾经，具有暖胃、泽肤、补气、养血等功效。可以降低血压和血脂，对心脑血管系统有很好的保护作用，有利于预防高血压、心肌梗死等心血管疾病。</p>');
INSERT INTO `content` VALUES (19, '<p>敏捷和活跃的肉食鱼类</p>');
INSERT INTO `content` VALUES (20, '<p>金枪鱼族（学名：Thunnini）：是硬骨鱼纲、鲭形目、鲭科下的一族海洋鱼类。该族包含5属15种金枪鱼，各物种之间的体型差别很大，最小的金枪鱼是圆舵鲣，其最大长度为50厘米，重量为1.8千克；最大的金枪鱼则是大西洋蓝鳍金枪鱼，其最大长度为4.6米，重量为684千克，平均长度为2米，据信其寿命可以长达50岁。金枪鱼两端呈锥形，嘴巴适中，牙齿发育良好。鳃膜不附着于咽峡部。鳞片呈摆线状，通常很小，体色呈金属色，通常为蓝色和银色。金枪鱼有暗带和鳍。背鳍由9到27条密集排列的鳍组成，腹鳍有6条鳍。<br>金枪鱼是可将体温维持在比周围水体温度高的物种。它们是一些活跃而敏捷的食肉动物，拥有光滑的流线型身体，也是游动速度最快的远洋鱼类之一。金枪鱼可在温暖海域中发现，成为一种大量商业捕捞的鱼类，也是钓鱼活动当中的一种受欢迎鱼类。由于人类的过度捕捞，蓝鳍金枪鱼等部分金枪鱼物种已接近灭绝。<br>金枪鱼遍布世界各地的热带和亚热带海域，许多物种定期进入凉爽的温带水域。</p>');
INSERT INTO `content` VALUES (21, '<p>被称为海洋里面的大熊猫</p>');
INSERT INTO `content` VALUES (22, '<p>虎鲸（学名：Orcinus orca）是哺乳纲海豚科中体型最大的物种。头部呈圆锥状，没有突出的嘴喙。身体大小、鳍肢大小和背鳍高度有明显的性二型。大而高耸的背鳍位于背部中央，雄性成体的背鳍直立，高可达1.0-1.8米，雌性的背鳍明显的镰刀形，高低于1米。胸鳍大而宽阔，大致呈圆形。上、下颚各有10-14对大而尖锐的牙齿。虎鲸的体色图样主要由黑与白这两种对比分明的色彩组成，位于身体腹面的白色区域自下颚往后延伸至尾部处，在全黑的胸鳍之间变得狭窄，到了肚脐后方产生分歧，尾鳍腹面亦为白色。背部与体侧皆为黑色，但在生殖裂附近的侧腹处有白色斑块，眼睛斜后方亦有明显的椭圆形白斑。在背鳍后方有呈灰至白色的马鞍状斑纹。<br>虎鲸分布于几乎所有的海洋区域，从赤道到极地水域。水温或深度没有限制其范围。分布延伸到许多封闭或半封闭的海域，如地中海、鄂霍次克海、加利福尼亚湾、墨西哥湾、红海和波斯湾。虎鲸按照栖息环境和习性等可以分为不同的生态型虎鲸外形略有差别，习性各不相同。虎鲸是一种高度社会化的动物，由一些群体组成的家族是动物界中最稳定的家族。它们是食肉动物，性情凶猛，善于进攻猎物，是企鹅、海豚、海豹等动物的天敌。有时它们还袭击其它鲸类，甚至大白鲨。<br>在中国禁止捕捞虎鲸，虎鲸被列入中国《国家重点保护野生动物名录》二级。列入《世界自然保护联盟濒危物种红色名录》(IUCN)——数据缺乏(DD)。列入《保护迁徙野生动物物种公约》(CMS)附录附录Ⅰ和Ⅱ级。</p>');
INSERT INTO `content` VALUES (23, '<p>肥肥胖胖的海洋哺乳动物</p>');
INSERT INTO `content` VALUES (24, '<p>海豹科（学名：Phocidae）为哺乳纲食肉目下的一科，全球共有14属19种12亚种；中国共有3属3种，分别为髯海豹、斑海豹及环海豹。海豹科动物适应水生环境，身体流线型，无外耳。前鳍状肢短，游泳推力有限，无法在陆地上支撑身体；后鳍状肢发达，提供游泳推力，但不能辅助行走。体型差异大，从90千克的环斑海豹到3600千克的象海豹。皮下脂肪层厚，保暖，脂肪可占体重四分之一。幼崽毛发柔软，成年毛发短硬。部分成员有斑点或带状图案。下门齿2~4颗，后犬齿16~20颗，颊齿形状因食性不同而异。雄性有发达的阴茎骨。<br>海豹科动物主要分布在北纬30度以北和南纬50度以南的海岸线附近，大多数物种栖息于海洋中，仅有少数物种栖息于湖泊。在繁殖、换毛、休息时会上岸。]海豹科动物主要捕食鱼类、头足类和贝类，豹海豹还捕食企鹅和其他海豹。它们使用吸食、抓握撕裂、滤食和刺食四种策略捕食。海豹科动物在水中停留时间长，游速较慢，但能潜得更深，如南象海豹可潜到1200米，北象海豹可潜到1500米。它们通过深呼吸减少能量消耗，并进化出更大的血容量和体型来提高携氧能力和适应潜水需求。<br>截止到2024年，海豹科动物共有19种被列入《世界自然保护联盟（IUCN）濒危物种红色名录》，其中加勒比僧海豹被评为灭绝（EX）物种；2种被评为濒危（EN）物种，分别为里海海豹和夏威夷僧海豹；2种被评为易危物种（VU），分别为冠海豹和地中海僧海豹；其余14种均被评为无危物种（LC）。</p>');
INSERT INTO `content` VALUES (25, '<p>有“海洋之舟”美称的游禽</p>');
INSERT INTO `content` VALUES (26, '<p>企鹅（学名：Spheniscidae）是企鹅科，有6个属。企鹅是一类不会飞行的鸟类，有十八种。企鹅的外表有很多差异，这有助于科学家识别二十种左右的物种。例如，帝企鹅的头部、下巴和喉咙是黑色的，耳罩是黄色的，而巴布亚企鹅的头部是黑色的，眼睑是白色的，每只眼睛上方都有三角形的白色斑块。<br>企鹅在南半球的水生环境中生活。它们常见于南极洲，有些也生活在加拉帕戈斯群岛、澳大利亚、智利等其他各个地方。企鹅经常会回到它们出生的地方交配和繁殖。它们在大群落中繁殖，这使得企鹅具有很强的社会性。大多数企鹅平均在自己的巢穴（巢）中产下两个蛋，而帝企鹅基本上每次只产一个蛋。所有企鹅都有蹼足和翅膀，用作鳍状肢，轻松在水中航行。企鹅能够在严寒的气候中生活、繁殖。在陆地上，它活像身穿燕尾服的西方绅士，走起路来一摇一摆， 虽然企鹅摇摇晃晃，在陆地上以接近 2.5 英里/小时左右的速度奔跑，可是在水里，企鹅那短小的翅膀成了一双强有力的“划桨”，游速可达每小时25-30千米。一天可游160千米。这有助于捕捉食物和避开捕食者，例如海狮（Otaria flavescens）。企鹅的平均寿命在十五到二十年之间。主要以磷虾、乌贼，小鱼为食。<br>因为企鹅在国内没有自然分布，因此企鹅在中国不是保护.物。企鹅是世界级保护动物，不同种类的企鹅分别被列入《世界自然保护联盟濒危物种红色名录》(IUCN)2016年 ver3.1：濒危（EN）5种；易危（VU）4种；近危（NT）3种；无危（LC）6种。</p>');

-- ----------------------------
-- Table structure for doc
-- ----------------------------
DROP TABLE IF EXISTS `doc`;
CREATE TABLE `doc`  (
  `id` bigint(0) NOT NULL,
  `ebook_id` bigint(0) NOT NULL DEFAULT 0 COMMENT '电子书id',
  `parent` bigint(0) NOT NULL DEFAULT 0 COMMENT '父id',
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '名称',
  `sort` int(0) NULL DEFAULT NULL COMMENT '顺序',
  `view_count` int(0) UNSIGNED NULL DEFAULT 0 COMMENT '阅读数',
  `vote_count` int(0) UNSIGNED NULL DEFAULT 0 COMMENT '点赞数',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of doc
-- ----------------------------
INSERT INTO `doc` VALUES (1, 1, 0, '鲨鱼', 1, 1745, 1717);
INSERT INTO `doc` VALUES (2, 1, 1, '鲨鱼百科', 1, 1745, 1717);
INSERT INTO `doc` VALUES (3, 2, 0, '沙丁鱼', 1, 7, 2);
INSERT INTO `doc` VALUES (4, 2, 3, '沙丁鱼百科', 1, 3, 0);
INSERT INTO `doc` VALUES (5, 3, 0, '海星', 1, 6, 1);
INSERT INTO `doc` VALUES (6, 3, 5, '海星百科', 1, 7, 2);
INSERT INTO `doc` VALUES (7, 4, 0, '章鱼', 1, 4, 1);
INSERT INTO `doc` VALUES (8, 4, 7, '章鱼百科', 1, 6, 1);
INSERT INTO `doc` VALUES (9, 5, 0, '海龟', 1, 0, 0);
INSERT INTO `doc` VALUES (10, 5, 9, '海龟百科', 1, 0, 0);
INSERT INTO `doc` VALUES (11, 6, 0, '海葵', 1, 0, 0);
INSERT INTO `doc` VALUES (12, 6, 11, '海葵百科', 1, 3, 2);
INSERT INTO `doc` VALUES (13, 7, 0, '皮皮虾', 1, 0, 0);
INSERT INTO `doc` VALUES (14, 7, 13, '皮皮虾百科', 1, 1, 1);
INSERT INTO `doc` VALUES (15, 8, 0, '帝王蟹', 1, 0, 0);
INSERT INTO `doc` VALUES (16, 8, 15, '帝王蟹百科', 1, 1, 1);
INSERT INTO `doc` VALUES (17, 9, 0, '带鱼', 1, 0, 0);
INSERT INTO `doc` VALUES (18, 9, 17, '带鱼百科', 1, 0, 0);
INSERT INTO `doc` VALUES (19, 10, 0, '金枪鱼', 1, 0, 0);
INSERT INTO `doc` VALUES (20, 10, 19, '金枪鱼百科', 1, 0, 0);
INSERT INTO `doc` VALUES (21, 11, 0, '虎鲸', 1, 0, 0);
INSERT INTO `doc` VALUES (22, 11, 21, '虎鲸百科', 1, 4, 1);
INSERT INTO `doc` VALUES (23, 12, 0, '海豹', 1, 0, 0);
INSERT INTO `doc` VALUES (24, 12, 23, '海豹百科', 1, 1, 0);
INSERT INTO `doc` VALUES (25, 13, 0, '企鹅', 1, 0, 0);
INSERT INTO `doc` VALUES (26, 13, 25, '企鹅百科', 1, 1, 0);

-- ----------------------------
-- Table structure for ebook
-- ----------------------------
DROP TABLE IF EXISTS `ebook`;
CREATE TABLE `ebook`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '名称',
  `category1_id` bigint(0) NULL DEFAULT NULL COMMENT '分类1',
  `category2_id` bigint(0) NULL DEFAULT NULL COMMENT '分类2',
  `description` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '描述',
  `cover` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '封面',
  `doc_count` int(0) NULL DEFAULT NULL COMMENT '文档数',
  `view_count` int(0) NULL DEFAULT NULL COMMENT '阅读数',
  `vote_count` int(0) NULL DEFAULT NULL COMMENT '点赞数',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 723552428850548736 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '电子书' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ebook
-- ----------------------------
INSERT INTO `ebook` VALUES (1, '鲨鱼', 725966596136374272, 725966845219311616, '凶猛的大型食肉海洋动物', 'image/shayulajiao.jpg', 2, 3057, 1358);
INSERT INTO `ebook` VALUES (2, '沙丁鱼', 725966596136374272, 725966903423668224, '喜欢成群结队出没的小型海洋动物', 'image/shadingyu.jpg', 2, 38, 21);
INSERT INTO `ebook` VALUES (3, '海星', 725966976228397056, 726610588964360192, '移动缓慢的海洋生物', 'image/paidaxing.jpg', 2, 30, 16);
INSERT INTO `ebook` VALUES (4, '章鱼', 725967067563560960, 726610671558594560, '八只触手的软体生物', 'image/zhangyuge.jpg', 2, 36, 20);
INSERT INTO `ebook` VALUES (5, '海龟', 725966596136374272, 725966796565385216, '可以生存很久的海洋动物', 'image/haigui.jpg', 2, 0, 0);
INSERT INTO `ebook` VALUES (6, '海葵', 725967135188324352, 726610768723841024, '海葵目的海洋软体动物', 'image/haikui.jpg', 2, 38, 18);
INSERT INTO `ebook` VALUES (7, '皮皮虾', 725967135188324353, 725968143478034432, '节肢动物，又称虾姑', 'image/pipixia.jpg', 2, 37, 21);
INSERT INTO `ebook` VALUES (8, '帝王蟹', 725967135188324353, 725968143478034432, '个头很大爪子很长的螃蟹', 'image/xielaoban.jpg', 2, 38, 21);
INSERT INTO `ebook` VALUES (9, '带鱼', 725966596136374272, 725966903423668224, '鲈形目带鱼属的鱼类，俗称刀鱼', 'image/daiyu.jpg', 2, 0, 0);
INSERT INTO `ebook` VALUES (10, '金枪鱼', 725966596136374272, 725966903423668224, '敏捷和活跃的肉食鱼类', 'image/jinqiangyu.jpg', 2, 0, 0);
INSERT INTO `ebook` VALUES (11, '虎鲸', 725966596136374272, 725966664675495936, '被称为海洋里面的大熊猫', 'image/hujing.jpg', 2, 33, 21);
INSERT INTO `ebook` VALUES (12, '海豹', 725966596136374272, 725966664675495936, '肥肥胖胖的海洋哺乳动物', 'image/haibao.jpg', 2, 34, 18);
INSERT INTO `ebook` VALUES (13, '企鹅', 725966596136374272, 725966741095714816, '有“海洋之舟”美称的游禽', 'image/madajiasijiaqie.jpg', 2, 37, 25);

-- ----------------------------
-- Table structure for ebook_snapshot
-- ----------------------------
DROP TABLE IF EXISTS `ebook_snapshot`;
CREATE TABLE `ebook_snapshot`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT,
  `ebook_id` bigint(0) NOT NULL COMMENT '电子书id',
  `date` date NOT NULL COMMENT '快照日期\r\n',
  `view_count` int(0) NOT NULL DEFAULT 0 COMMENT '阅读数',
  `vote_count` int(0) NOT NULL DEFAULT 0 COMMENT '点赞数',
  `view_increase` int(0) NOT NULL DEFAULT 0 COMMENT '阅读增长',
  `vote_increase` int(0) NOT NULL DEFAULT 0 COMMENT '点赞增长',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `ebook_id_date_unique`(`ebook_id`, `date`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 334 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ebook_snapshot
-- ----------------------------
INSERT INTO `ebook_snapshot` VALUES (335, 1, '2026-07-01', 3490, 3434, 3490, 3434);
INSERT INTO `ebook_snapshot` VALUES (336, 2, '2026-07-01', 10, 2, 10, 2);
INSERT INTO `ebook_snapshot` VALUES (337, 3, '2026-07-01', 13, 3, 13, 3);
INSERT INTO `ebook_snapshot` VALUES (338, 4, '2026-07-01', 10, 2, 10, 2);
INSERT INTO `ebook_snapshot` VALUES (339, 5, '2026-07-01', 0, 0, 0, 0);
INSERT INTO `ebook_snapshot` VALUES (340, 6, '2026-07-01', 3, 2, 3, 2);
INSERT INTO `ebook_snapshot` VALUES (341, 7, '2026-07-01', 1, 1, 1, 1);
INSERT INTO `ebook_snapshot` VALUES (342, 8, '2026-07-01', 1, 1, 1, 1);
INSERT INTO `ebook_snapshot` VALUES (343, 9, '2026-07-01', 0, 0, 0, 0);
INSERT INTO `ebook_snapshot` VALUES (344, 10, '2026-07-01', 0, 0, 0, 0);
INSERT INTO `ebook_snapshot` VALUES (345, 11, '2026-07-01', 4, 1, 4, 1);
INSERT INTO `ebook_snapshot` VALUES (346, 12, '2026-07-01', 1, 0, 1, 0);
INSERT INTO `ebook_snapshot` VALUES (347, 13, '2026-07-01', 1, 0, 1, 0);
INSERT INTO `ebook_snapshot` VALUES (412, 1, '2026-06-02', 54, 20, 54, 20);
INSERT INTO `ebook_snapshot` VALUES (413, 1, '2026-06-03', 104, 40, 50, 20);
INSERT INTO `ebook_snapshot` VALUES (414, 1, '2026-06-04', 172, 67, 68, 27);
INSERT INTO `ebook_snapshot` VALUES (415, 1, '2026-06-05', 252, 87, 80, 20);
INSERT INTO `ebook_snapshot` VALUES (416, 1, '2026-06-06', 319, 107, 67, 20);
INSERT INTO `ebook_snapshot` VALUES (417, 1, '2026-06-07', 382, 137, 63, 30);
INSERT INTO `ebook_snapshot` VALUES (418, 1, '2026-06-08', 440, 161, 58, 24);
INSERT INTO `ebook_snapshot` VALUES (419, 1, '2026-06-09', 533, 196, 93, 35);
INSERT INTO `ebook_snapshot` VALUES (420, 1, '2026-06-10', 609, 235, 76, 39);
INSERT INTO `ebook_snapshot` VALUES (421, 1, '2026-06-11', 723, 258, 114, 23);
INSERT INTO `ebook_snapshot` VALUES (422, 1, '2026-06-12', 843, 305, 120, 47);
INSERT INTO `ebook_snapshot` VALUES (423, 1, '2026-06-13', 939, 335, 96, 30);
INSERT INTO `ebook_snapshot` VALUES (424, 1, '2026-06-14', 1081, 373, 142, 38);
INSERT INTO `ebook_snapshot` VALUES (425, 1, '2026-06-15', 1169, 404, 88, 31);
INSERT INTO `ebook_snapshot` VALUES (426, 1, '2026-06-16', 1316, 457, 147, 53);
INSERT INTO `ebook_snapshot` VALUES (427, 1, '2026-06-17', 1467, 517, 151, 60);
INSERT INTO `ebook_snapshot` VALUES (428, 1, '2026-06-18', 1602, 590, 135, 73);
INSERT INTO `ebook_snapshot` VALUES (429, 1, '2026-06-19', 1729, 647, 127, 57);
INSERT INTO `ebook_snapshot` VALUES (430, 1, '2026-06-20', 1900, 709, 171, 62);
INSERT INTO `ebook_snapshot` VALUES (431, 1, '2026-06-21', 2080, 771, 180, 62);
INSERT INTO `ebook_snapshot` VALUES (432, 1, '2026-06-22', 2252, 810, 172, 39);
INSERT INTO `ebook_snapshot` VALUES (433, 1, '2026-06-23', 2384, 862, 132, 52);
INSERT INTO `ebook_snapshot` VALUES (434, 1, '2026-06-24', 2506, 913, 122, 51);
INSERT INTO `ebook_snapshot` VALUES (435, 1, '2026-06-25', 2634, 968, 128, 55);
INSERT INTO `ebook_snapshot` VALUES (436, 1, '2026-06-26', 2822, 1030, 188, 62);
INSERT INTO `ebook_snapshot` VALUES (437, 1, '2026-06-27', 2987, 1085, 165, 55);
INSERT INTO `ebook_snapshot` VALUES (438, 1, '2026-06-28', 3145, 1184, 158, 99);
INSERT INTO `ebook_snapshot` VALUES (439, 1, '2026-06-29', 3351, 1266, 206, 82);
INSERT INTO `ebook_snapshot` VALUES (440, 1, '2026-06-30', 3507, 1358, 156, 92);
INSERT INTO `ebook_snapshot` VALUES (441, 2, '2026-06-02', 0, 0, 0, 0);
INSERT INTO `ebook_snapshot` VALUES (442, 2, '2026-06-03', 1, 0, 1, 0);
INSERT INTO `ebook_snapshot` VALUES (443, 2, '2026-06-04', 2, 1, 1, 1);
INSERT INTO `ebook_snapshot` VALUES (444, 2, '2026-06-05', 3, 2, 1, 1);
INSERT INTO `ebook_snapshot` VALUES (445, 2, '2026-06-06', 3, 2, 0, 0);
INSERT INTO `ebook_snapshot` VALUES (446, 2, '2026-06-07', 4, 2, 1, 0);
INSERT INTO `ebook_snapshot` VALUES (447, 2, '2026-06-08', 4, 2, 0, 0);
INSERT INTO `ebook_snapshot` VALUES (448, 2, '2026-06-09', 5, 2, 1, 0);
INSERT INTO `ebook_snapshot` VALUES (449, 2, '2026-06-10', 6, 2, 1, 0);
INSERT INTO `ebook_snapshot` VALUES (450, 2, '2026-06-11', 8, 3, 2, 1);
INSERT INTO `ebook_snapshot` VALUES (451, 2, '2026-06-12', 9, 3, 1, 0);
INSERT INTO `ebook_snapshot` VALUES (452, 2, '2026-06-13', 10, 3, 1, 0);
INSERT INTO `ebook_snapshot` VALUES (453, 2, '2026-06-14', 11, 4, 1, 1);
INSERT INTO `ebook_snapshot` VALUES (454, 2, '2026-06-15', 12, 4, 1, 0);
INSERT INTO `ebook_snapshot` VALUES (455, 2, '2026-06-16', 14, 5, 2, 1);
INSERT INTO `ebook_snapshot` VALUES (456, 2, '2026-06-17', 15, 5, 1, 0);
INSERT INTO `ebook_snapshot` VALUES (457, 2, '2026-06-18', 16, 6, 1, 1);
INSERT INTO `ebook_snapshot` VALUES (458, 2, '2026-06-19', 18, 7, 2, 1);
INSERT INTO `ebook_snapshot` VALUES (459, 2, '2026-06-20', 19, 8, 1, 1);
INSERT INTO `ebook_snapshot` VALUES (460, 2, '2026-06-21', 21, 9, 2, 1);
INSERT INTO `ebook_snapshot` VALUES (461, 2, '2026-06-22', 23, 11, 2, 2);
INSERT INTO `ebook_snapshot` VALUES (462, 2, '2026-06-23', 24, 12, 1, 1);
INSERT INTO `ebook_snapshot` VALUES (463, 2, '2026-06-24', 26, 13, 2, 1);
INSERT INTO `ebook_snapshot` VALUES (464, 2, '2026-06-25', 27, 14, 1, 1);
INSERT INTO `ebook_snapshot` VALUES (465, 2, '2026-06-26', 28, 15, 1, 1);
INSERT INTO `ebook_snapshot` VALUES (466, 2, '2026-06-27', 30, 17, 2, 2);
INSERT INTO `ebook_snapshot` VALUES (467, 2, '2026-06-28', 33, 18, 3, 1);
INSERT INTO `ebook_snapshot` VALUES (468, 2, '2026-06-29', 35, 19, 2, 1);
INSERT INTO `ebook_snapshot` VALUES (469, 2, '2026-06-30', 38, 21, 3, 2);
INSERT INTO `ebook_snapshot` VALUES (470, 3, '2026-06-02', 0, 0, 0, 0);
INSERT INTO `ebook_snapshot` VALUES (471, 3, '2026-06-03', 1, 0, 1, 0);
INSERT INTO `ebook_snapshot` VALUES (472, 3, '2026-06-04', 2, 0, 1, 0);
INSERT INTO `ebook_snapshot` VALUES (473, 3, '2026-06-05', 3, 0, 1, 0);
INSERT INTO `ebook_snapshot` VALUES (474, 3, '2026-06-06', 3, 0, 0, 0);
INSERT INTO `ebook_snapshot` VALUES (475, 3, '2026-06-07', 3, 0, 0, 0);
INSERT INTO `ebook_snapshot` VALUES (476, 3, '2026-06-08', 4, 1, 1, 1);
INSERT INTO `ebook_snapshot` VALUES (477, 3, '2026-06-09', 5, 1, 1, 0);
INSERT INTO `ebook_snapshot` VALUES (478, 3, '2026-06-10', 6, 2, 1, 1);
INSERT INTO `ebook_snapshot` VALUES (479, 3, '2026-06-11', 6, 2, 0, 0);
INSERT INTO `ebook_snapshot` VALUES (480, 3, '2026-06-12', 6, 2, 0, 0);
INSERT INTO `ebook_snapshot` VALUES (481, 3, '2026-06-13', 7, 2, 1, 0);
INSERT INTO `ebook_snapshot` VALUES (482, 3, '2026-06-14', 8, 3, 1, 1);
INSERT INTO `ebook_snapshot` VALUES (483, 3, '2026-06-15', 9, 4, 1, 1);
INSERT INTO `ebook_snapshot` VALUES (484, 3, '2026-06-16', 10, 4, 1, 0);
INSERT INTO `ebook_snapshot` VALUES (485, 3, '2026-06-17', 11, 5, 1, 1);
INSERT INTO `ebook_snapshot` VALUES (486, 3, '2026-06-18', 12, 6, 1, 1);
INSERT INTO `ebook_snapshot` VALUES (487, 3, '2026-06-19', 14, 7, 2, 1);
INSERT INTO `ebook_snapshot` VALUES (488, 3, '2026-06-20', 15, 8, 1, 1);
INSERT INTO `ebook_snapshot` VALUES (489, 3, '2026-06-21', 16, 8, 1, 0);
INSERT INTO `ebook_snapshot` VALUES (490, 3, '2026-06-22', 17, 9, 1, 1);
INSERT INTO `ebook_snapshot` VALUES (491, 3, '2026-06-23', 18, 10, 1, 1);
INSERT INTO `ebook_snapshot` VALUES (492, 3, '2026-06-24', 19, 11, 1, 1);
INSERT INTO `ebook_snapshot` VALUES (493, 3, '2026-06-25', 20, 12, 1, 1);
INSERT INTO `ebook_snapshot` VALUES (494, 3, '2026-06-26', 23, 12, 3, 0);
INSERT INTO `ebook_snapshot` VALUES (495, 3, '2026-06-27', 24, 13, 1, 1);
INSERT INTO `ebook_snapshot` VALUES (496, 3, '2026-06-28', 25, 13, 1, 0);
INSERT INTO `ebook_snapshot` VALUES (497, 3, '2026-06-29', 28, 14, 3, 1);
INSERT INTO `ebook_snapshot` VALUES (498, 3, '2026-06-30', 30, 16, 2, 2);
INSERT INTO `ebook_snapshot` VALUES (499, 4, '2026-06-02', 1, 0, 1, 0);
INSERT INTO `ebook_snapshot` VALUES (500, 4, '2026-06-03', 1, 0, 0, 0);
INSERT INTO `ebook_snapshot` VALUES (501, 4, '2026-06-04', 2, 0, 1, 0);
INSERT INTO `ebook_snapshot` VALUES (502, 4, '2026-06-05', 3, 1, 1, 1);
INSERT INTO `ebook_snapshot` VALUES (503, 4, '2026-06-06', 4, 1, 1, 0);
INSERT INTO `ebook_snapshot` VALUES (504, 4, '2026-06-07', 5, 1, 1, 0);
INSERT INTO `ebook_snapshot` VALUES (505, 4, '2026-06-08', 6, 1, 1, 0);
INSERT INTO `ebook_snapshot` VALUES (506, 4, '2026-06-09', 6, 1, 0, 0);
INSERT INTO `ebook_snapshot` VALUES (507, 4, '2026-06-10', 7, 1, 1, 0);
INSERT INTO `ebook_snapshot` VALUES (508, 4, '2026-06-11', 8, 2, 1, 1);
INSERT INTO `ebook_snapshot` VALUES (509, 4, '2026-06-12', 9, 3, 1, 1);
INSERT INTO `ebook_snapshot` VALUES (510, 4, '2026-06-13', 10, 3, 1, 0);
INSERT INTO `ebook_snapshot` VALUES (511, 4, '2026-06-14', 12, 4, 2, 1);
INSERT INTO `ebook_snapshot` VALUES (512, 4, '2026-06-15', 14, 5, 2, 1);
INSERT INTO `ebook_snapshot` VALUES (513, 4, '2026-06-16', 16, 5, 2, 0);
INSERT INTO `ebook_snapshot` VALUES (514, 4, '2026-06-17', 17, 5, 1, 0);
INSERT INTO `ebook_snapshot` VALUES (515, 4, '2026-06-18', 18, 5, 1, 0);
INSERT INTO `ebook_snapshot` VALUES (516, 4, '2026-06-19', 19, 6, 1, 1);
INSERT INTO `ebook_snapshot` VALUES (517, 4, '2026-06-20', 20, 7, 1, 1);
INSERT INTO `ebook_snapshot` VALUES (518, 4, '2026-06-21', 21, 8, 1, 1);
INSERT INTO `ebook_snapshot` VALUES (519, 4, '2026-06-22', 23, 10, 2, 2);
INSERT INTO `ebook_snapshot` VALUES (520, 4, '2026-06-23', 25, 11, 2, 1);
INSERT INTO `ebook_snapshot` VALUES (521, 4, '2026-06-24', 26, 12, 1, 1);
INSERT INTO `ebook_snapshot` VALUES (522, 4, '2026-06-25', 29, 13, 3, 1);
INSERT INTO `ebook_snapshot` VALUES (523, 4, '2026-06-26', 31, 15, 2, 2);
INSERT INTO `ebook_snapshot` VALUES (524, 4, '2026-06-27', 32, 16, 1, 1);
INSERT INTO `ebook_snapshot` VALUES (525, 4, '2026-06-28', 34, 18, 2, 2);
INSERT INTO `ebook_snapshot` VALUES (526, 4, '2026-06-29', 35, 19, 1, 1);
INSERT INTO `ebook_snapshot` VALUES (527, 4, '2026-06-30', 36, 20, 1, 1);
INSERT INTO `ebook_snapshot` VALUES (528, 5, '2026-06-02', 0, 0, 0, 0);
INSERT INTO `ebook_snapshot` VALUES (529, 5, '2026-06-03', 0, 0, 0, 0);
INSERT INTO `ebook_snapshot` VALUES (530, 5, '2026-06-04', 0, 0, 0, 0);
INSERT INTO `ebook_snapshot` VALUES (531, 5, '2026-06-05', 0, 0, 0, 0);
INSERT INTO `ebook_snapshot` VALUES (532, 5, '2026-06-06', 0, 0, 0, 0);
INSERT INTO `ebook_snapshot` VALUES (533, 5, '2026-06-07', 0, 0, 0, 0);
INSERT INTO `ebook_snapshot` VALUES (534, 5, '2026-06-08', 0, 0, 0, 0);
INSERT INTO `ebook_snapshot` VALUES (535, 5, '2026-06-09', 0, 0, 0, 0);
INSERT INTO `ebook_snapshot` VALUES (536, 5, '2026-06-10', 0, 0, 0, 0);
INSERT INTO `ebook_snapshot` VALUES (537, 5, '2026-06-11', 0, 0, 0, 0);
INSERT INTO `ebook_snapshot` VALUES (538, 5, '2026-06-12', 0, 0, 0, 0);
INSERT INTO `ebook_snapshot` VALUES (539, 5, '2026-06-13', 0, 0, 0, 0);
INSERT INTO `ebook_snapshot` VALUES (540, 5, '2026-06-14', 0, 0, 0, 0);
INSERT INTO `ebook_snapshot` VALUES (541, 5, '2026-06-15', 0, 0, 0, 0);
INSERT INTO `ebook_snapshot` VALUES (542, 5, '2026-06-16', 0, 0, 0, 0);
INSERT INTO `ebook_snapshot` VALUES (543, 5, '2026-06-17', 0, 0, 0, 0);
INSERT INTO `ebook_snapshot` VALUES (544, 5, '2026-06-18', 0, 0, 0, 0);
INSERT INTO `ebook_snapshot` VALUES (545, 5, '2026-06-19', 0, 0, 0, 0);
INSERT INTO `ebook_snapshot` VALUES (546, 5, '2026-06-20', 0, 0, 0, 0);
INSERT INTO `ebook_snapshot` VALUES (547, 5, '2026-06-21', 0, 0, 0, 0);
INSERT INTO `ebook_snapshot` VALUES (548, 5, '2026-06-22', 0, 0, 0, 0);
INSERT INTO `ebook_snapshot` VALUES (549, 5, '2026-06-23', 0, 0, 0, 0);
INSERT INTO `ebook_snapshot` VALUES (550, 5, '2026-06-24', 0, 0, 0, 0);
INSERT INTO `ebook_snapshot` VALUES (551, 5, '2026-06-25', 0, 0, 0, 0);
INSERT INTO `ebook_snapshot` VALUES (552, 5, '2026-06-26', 0, 0, 0, 0);
INSERT INTO `ebook_snapshot` VALUES (553, 5, '2026-06-27', 0, 0, 0, 0);
INSERT INTO `ebook_snapshot` VALUES (554, 5, '2026-06-28', 0, 0, 0, 0);
INSERT INTO `ebook_snapshot` VALUES (555, 5, '2026-06-29', 0, 0, 0, 0);
INSERT INTO `ebook_snapshot` VALUES (556, 5, '2026-06-30', 0, 0, 0, 0);
INSERT INTO `ebook_snapshot` VALUES (557, 6, '2026-06-02', 1, 0, 1, 0);
INSERT INTO `ebook_snapshot` VALUES (558, 6, '2026-06-03', 1, 0, 0, 0);
INSERT INTO `ebook_snapshot` VALUES (559, 6, '2026-06-04', 2, 0, 1, 0);
INSERT INTO `ebook_snapshot` VALUES (560, 6, '2026-06-05', 3, 0, 1, 0);
INSERT INTO `ebook_snapshot` VALUES (561, 6, '2026-06-06', 4, 0, 1, 0);
INSERT INTO `ebook_snapshot` VALUES (562, 6, '2026-06-07', 5, 1, 1, 1);
INSERT INTO `ebook_snapshot` VALUES (563, 6, '2026-06-08', 5, 1, 0, 0);
INSERT INTO `ebook_snapshot` VALUES (564, 6, '2026-06-09', 6, 1, 1, 0);
INSERT INTO `ebook_snapshot` VALUES (565, 6, '2026-06-10', 7, 1, 1, 0);
INSERT INTO `ebook_snapshot` VALUES (566, 6, '2026-06-11', 8, 2, 1, 1);
INSERT INTO `ebook_snapshot` VALUES (567, 6, '2026-06-12', 8, 2, 0, 0);
INSERT INTO `ebook_snapshot` VALUES (568, 6, '2026-06-13', 10, 3, 2, 1);
INSERT INTO `ebook_snapshot` VALUES (569, 6, '2026-06-14', 10, 3, 0, 0);
INSERT INTO `ebook_snapshot` VALUES (570, 6, '2026-06-15', 11, 4, 1, 1);
INSERT INTO `ebook_snapshot` VALUES (571, 6, '2026-06-16', 13, 5, 2, 1);
INSERT INTO `ebook_snapshot` VALUES (572, 6, '2026-06-17', 14, 5, 1, 0);
INSERT INTO `ebook_snapshot` VALUES (573, 6, '2026-06-18', 16, 6, 2, 1);
INSERT INTO `ebook_snapshot` VALUES (574, 6, '2026-06-19', 18, 8, 2, 2);
INSERT INTO `ebook_snapshot` VALUES (575, 6, '2026-06-20', 20, 8, 2, 0);
INSERT INTO `ebook_snapshot` VALUES (576, 6, '2026-06-21', 22, 9, 2, 1);
INSERT INTO `ebook_snapshot` VALUES (577, 6, '2026-06-22', 24, 11, 2, 2);
INSERT INTO `ebook_snapshot` VALUES (578, 6, '2026-06-23', 25, 11, 1, 0);
INSERT INTO `ebook_snapshot` VALUES (579, 6, '2026-06-24', 26, 12, 1, 1);
INSERT INTO `ebook_snapshot` VALUES (580, 6, '2026-06-25', 27, 13, 1, 1);
INSERT INTO `ebook_snapshot` VALUES (581, 6, '2026-06-26', 29, 14, 2, 1);
INSERT INTO `ebook_snapshot` VALUES (582, 6, '2026-06-27', 31, 15, 2, 1);
INSERT INTO `ebook_snapshot` VALUES (583, 6, '2026-06-28', 33, 17, 2, 2);
INSERT INTO `ebook_snapshot` VALUES (584, 6, '2026-06-29', 36, 17, 3, 0);
INSERT INTO `ebook_snapshot` VALUES (585, 6, '2026-06-30', 38, 18, 2, 1);
INSERT INTO `ebook_snapshot` VALUES (586, 7, '2026-06-02', 0, 0, 0, 0);
INSERT INTO `ebook_snapshot` VALUES (587, 7, '2026-06-03', 1, 0, 1, 0);
INSERT INTO `ebook_snapshot` VALUES (588, 7, '2026-06-04', 2, 0, 1, 0);
INSERT INTO `ebook_snapshot` VALUES (589, 7, '2026-06-05', 3, 0, 1, 0);
INSERT INTO `ebook_snapshot` VALUES (590, 7, '2026-06-06', 3, 0, 0, 0);
INSERT INTO `ebook_snapshot` VALUES (591, 7, '2026-06-07', 4, 0, 1, 0);
INSERT INTO `ebook_snapshot` VALUES (592, 7, '2026-06-08', 5, 1, 1, 1);
INSERT INTO `ebook_snapshot` VALUES (593, 7, '2026-06-09', 5, 1, 0, 0);
INSERT INTO `ebook_snapshot` VALUES (594, 7, '2026-06-10', 6, 2, 1, 1);
INSERT INTO `ebook_snapshot` VALUES (595, 7, '2026-06-11', 7, 3, 1, 1);
INSERT INTO `ebook_snapshot` VALUES (596, 7, '2026-06-12', 9, 3, 2, 0);
INSERT INTO `ebook_snapshot` VALUES (597, 7, '2026-06-13', 10, 3, 1, 0);
INSERT INTO `ebook_snapshot` VALUES (598, 7, '2026-06-14', 12, 4, 2, 1);
INSERT INTO `ebook_snapshot` VALUES (599, 7, '2026-06-15', 13, 5, 1, 1);
INSERT INTO `ebook_snapshot` VALUES (600, 7, '2026-06-16', 14, 6, 1, 1);
INSERT INTO `ebook_snapshot` VALUES (601, 7, '2026-06-17', 16, 8, 2, 2);
INSERT INTO `ebook_snapshot` VALUES (602, 7, '2026-06-18', 18, 9, 2, 1);
INSERT INTO `ebook_snapshot` VALUES (603, 7, '2026-06-19', 18, 9, 0, 0);
INSERT INTO `ebook_snapshot` VALUES (604, 7, '2026-06-20', 19, 10, 1, 1);
INSERT INTO `ebook_snapshot` VALUES (605, 7, '2026-06-21', 21, 12, 2, 2);
INSERT INTO `ebook_snapshot` VALUES (606, 7, '2026-06-22', 23, 13, 2, 1);
INSERT INTO `ebook_snapshot` VALUES (607, 7, '2026-06-23', 25, 13, 2, 0);
INSERT INTO `ebook_snapshot` VALUES (608, 7, '2026-06-24', 27, 15, 2, 2);
INSERT INTO `ebook_snapshot` VALUES (609, 7, '2026-06-25', 28, 16, 1, 1);
INSERT INTO `ebook_snapshot` VALUES (610, 7, '2026-06-26', 30, 17, 2, 1);
INSERT INTO `ebook_snapshot` VALUES (611, 7, '2026-06-27', 32, 18, 2, 1);
INSERT INTO `ebook_snapshot` VALUES (612, 7, '2026-06-28', 33, 19, 1, 1);
INSERT INTO `ebook_snapshot` VALUES (613, 7, '2026-06-29', 34, 20, 1, 1);
INSERT INTO `ebook_snapshot` VALUES (614, 7, '2026-06-30', 37, 21, 3, 1);
INSERT INTO `ebook_snapshot` VALUES (615, 8, '2026-06-02', 1, 0, 1, 0);
INSERT INTO `ebook_snapshot` VALUES (616, 8, '2026-06-03', 2, 0, 1, 0);
INSERT INTO `ebook_snapshot` VALUES (617, 8, '2026-06-04', 3, 0, 1, 0);
INSERT INTO `ebook_snapshot` VALUES (618, 8, '2026-06-05', 4, 0, 1, 0);
INSERT INTO `ebook_snapshot` VALUES (619, 8, '2026-06-06', 5, 0, 1, 0);
INSERT INTO `ebook_snapshot` VALUES (620, 8, '2026-06-07', 5, 0, 0, 0);
INSERT INTO `ebook_snapshot` VALUES (621, 8, '2026-06-08', 6, 0, 1, 0);
INSERT INTO `ebook_snapshot` VALUES (622, 8, '2026-06-09', 7, 1, 1, 1);
INSERT INTO `ebook_snapshot` VALUES (623, 8, '2026-06-10', 8, 2, 1, 1);
INSERT INTO `ebook_snapshot` VALUES (624, 8, '2026-06-11', 9, 3, 1, 1);
INSERT INTO `ebook_snapshot` VALUES (625, 8, '2026-06-12', 9, 3, 0, 0);
INSERT INTO `ebook_snapshot` VALUES (626, 8, '2026-06-13', 10, 4, 1, 1);
INSERT INTO `ebook_snapshot` VALUES (627, 8, '2026-06-14', 12, 5, 2, 1);
INSERT INTO `ebook_snapshot` VALUES (628, 8, '2026-06-15', 13, 5, 1, 0);
INSERT INTO `ebook_snapshot` VALUES (629, 8, '2026-06-16', 15, 6, 2, 1);
INSERT INTO `ebook_snapshot` VALUES (630, 8, '2026-06-17', 16, 7, 1, 1);
INSERT INTO `ebook_snapshot` VALUES (631, 8, '2026-06-18', 18, 8, 2, 1);
INSERT INTO `ebook_snapshot` VALUES (632, 8, '2026-06-19', 19, 9, 1, 1);
INSERT INTO `ebook_snapshot` VALUES (633, 8, '2026-06-20', 20, 10, 1, 1);
INSERT INTO `ebook_snapshot` VALUES (634, 8, '2026-06-21', 21, 11, 1, 1);
INSERT INTO `ebook_snapshot` VALUES (635, 8, '2026-06-22', 23, 12, 2, 1);
INSERT INTO `ebook_snapshot` VALUES (636, 8, '2026-06-23', 25, 13, 2, 1);
INSERT INTO `ebook_snapshot` VALUES (637, 8, '2026-06-24', 26, 14, 1, 1);
INSERT INTO `ebook_snapshot` VALUES (638, 8, '2026-06-25', 27, 15, 1, 1);
INSERT INTO `ebook_snapshot` VALUES (639, 8, '2026-06-26', 29, 16, 2, 1);
INSERT INTO `ebook_snapshot` VALUES (640, 8, '2026-06-27', 31, 17, 2, 1);
INSERT INTO `ebook_snapshot` VALUES (641, 8, '2026-06-28', 33, 18, 2, 1);
INSERT INTO `ebook_snapshot` VALUES (642, 8, '2026-06-29', 35, 20, 2, 2);
INSERT INTO `ebook_snapshot` VALUES (643, 8, '2026-06-30', 38, 21, 3, 1);
INSERT INTO `ebook_snapshot` VALUES (644, 9, '2026-06-02', 0, 0, 0, 0);
INSERT INTO `ebook_snapshot` VALUES (645, 9, '2026-06-03', 0, 0, 0, 0);
INSERT INTO `ebook_snapshot` VALUES (646, 9, '2026-06-04', 0, 0, 0, 0);
INSERT INTO `ebook_snapshot` VALUES (647, 9, '2026-06-05', 0, 0, 0, 0);
INSERT INTO `ebook_snapshot` VALUES (648, 9, '2026-06-06', 0, 0, 0, 0);
INSERT INTO `ebook_snapshot` VALUES (649, 9, '2026-06-07', 0, 0, 0, 0);
INSERT INTO `ebook_snapshot` VALUES (650, 9, '2026-06-08', 0, 0, 0, 0);
INSERT INTO `ebook_snapshot` VALUES (651, 9, '2026-06-09', 0, 0, 0, 0);
INSERT INTO `ebook_snapshot` VALUES (652, 9, '2026-06-10', 0, 0, 0, 0);
INSERT INTO `ebook_snapshot` VALUES (653, 9, '2026-06-11', 0, 0, 0, 0);
INSERT INTO `ebook_snapshot` VALUES (654, 9, '2026-06-12', 0, 0, 0, 0);
INSERT INTO `ebook_snapshot` VALUES (655, 9, '2026-06-13', 0, 0, 0, 0);
INSERT INTO `ebook_snapshot` VALUES (656, 9, '2026-06-14', 0, 0, 0, 0);
INSERT INTO `ebook_snapshot` VALUES (657, 9, '2026-06-15', 0, 0, 0, 0);
INSERT INTO `ebook_snapshot` VALUES (658, 9, '2026-06-16', 0, 0, 0, 0);
INSERT INTO `ebook_snapshot` VALUES (659, 9, '2026-06-17', 0, 0, 0, 0);
INSERT INTO `ebook_snapshot` VALUES (660, 9, '2026-06-18', 0, 0, 0, 0);
INSERT INTO `ebook_snapshot` VALUES (661, 9, '2026-06-19', 0, 0, 0, 0);
INSERT INTO `ebook_snapshot` VALUES (662, 9, '2026-06-20', 0, 0, 0, 0);
INSERT INTO `ebook_snapshot` VALUES (663, 9, '2026-06-21', 0, 0, 0, 0);
INSERT INTO `ebook_snapshot` VALUES (664, 9, '2026-06-22', 0, 0, 0, 0);
INSERT INTO `ebook_snapshot` VALUES (665, 9, '2026-06-23', 0, 0, 0, 0);
INSERT INTO `ebook_snapshot` VALUES (666, 9, '2026-06-24', 0, 0, 0, 0);
INSERT INTO `ebook_snapshot` VALUES (667, 9, '2026-06-25', 0, 0, 0, 0);
INSERT INTO `ebook_snapshot` VALUES (668, 9, '2026-06-26', 0, 0, 0, 0);
INSERT INTO `ebook_snapshot` VALUES (669, 9, '2026-06-27', 0, 0, 0, 0);
INSERT INTO `ebook_snapshot` VALUES (670, 9, '2026-06-28', 0, 0, 0, 0);
INSERT INTO `ebook_snapshot` VALUES (671, 9, '2026-06-29', 0, 0, 0, 0);
INSERT INTO `ebook_snapshot` VALUES (672, 9, '2026-06-30', 0, 0, 0, 0);
INSERT INTO `ebook_snapshot` VALUES (673, 10, '2026-06-02', 0, 0, 0, 0);
INSERT INTO `ebook_snapshot` VALUES (674, 10, '2026-06-03', 0, 0, 0, 0);
INSERT INTO `ebook_snapshot` VALUES (675, 10, '2026-06-04', 0, 0, 0, 0);
INSERT INTO `ebook_snapshot` VALUES (676, 10, '2026-06-05', 0, 0, 0, 0);
INSERT INTO `ebook_snapshot` VALUES (677, 10, '2026-06-06', 0, 0, 0, 0);
INSERT INTO `ebook_snapshot` VALUES (678, 10, '2026-06-07', 0, 0, 0, 0);
INSERT INTO `ebook_snapshot` VALUES (679, 10, '2026-06-08', 0, 0, 0, 0);
INSERT INTO `ebook_snapshot` VALUES (680, 10, '2026-06-09', 0, 0, 0, 0);
INSERT INTO `ebook_snapshot` VALUES (681, 10, '2026-06-10', 0, 0, 0, 0);
INSERT INTO `ebook_snapshot` VALUES (682, 10, '2026-06-11', 0, 0, 0, 0);
INSERT INTO `ebook_snapshot` VALUES (683, 10, '2026-06-12', 0, 0, 0, 0);
INSERT INTO `ebook_snapshot` VALUES (684, 10, '2026-06-13', 0, 0, 0, 0);
INSERT INTO `ebook_snapshot` VALUES (685, 10, '2026-06-14', 0, 0, 0, 0);
INSERT INTO `ebook_snapshot` VALUES (686, 10, '2026-06-15', 0, 0, 0, 0);
INSERT INTO `ebook_snapshot` VALUES (687, 10, '2026-06-16', 0, 0, 0, 0);
INSERT INTO `ebook_snapshot` VALUES (688, 10, '2026-06-17', 0, 0, 0, 0);
INSERT INTO `ebook_snapshot` VALUES (689, 10, '2026-06-18', 0, 0, 0, 0);
INSERT INTO `ebook_snapshot` VALUES (690, 10, '2026-06-19', 0, 0, 0, 0);
INSERT INTO `ebook_snapshot` VALUES (691, 10, '2026-06-20', 0, 0, 0, 0);
INSERT INTO `ebook_snapshot` VALUES (692, 10, '2026-06-21', 0, 0, 0, 0);
INSERT INTO `ebook_snapshot` VALUES (693, 10, '2026-06-22', 0, 0, 0, 0);
INSERT INTO `ebook_snapshot` VALUES (694, 10, '2026-06-23', 0, 0, 0, 0);
INSERT INTO `ebook_snapshot` VALUES (695, 10, '2026-06-24', 0, 0, 0, 0);
INSERT INTO `ebook_snapshot` VALUES (696, 10, '2026-06-25', 0, 0, 0, 0);
INSERT INTO `ebook_snapshot` VALUES (697, 10, '2026-06-26', 0, 0, 0, 0);
INSERT INTO `ebook_snapshot` VALUES (698, 10, '2026-06-27', 0, 0, 0, 0);
INSERT INTO `ebook_snapshot` VALUES (699, 10, '2026-06-28', 0, 0, 0, 0);
INSERT INTO `ebook_snapshot` VALUES (700, 10, '2026-06-29', 0, 0, 0, 0);
INSERT INTO `ebook_snapshot` VALUES (701, 10, '2026-06-30', 0, 0, 0, 0);
INSERT INTO `ebook_snapshot` VALUES (702, 11, '2026-06-02', 0, 0, 0, 0);
INSERT INTO `ebook_snapshot` VALUES (703, 11, '2026-06-03', 1, 0, 1, 0);
INSERT INTO `ebook_snapshot` VALUES (704, 11, '2026-06-04', 2, 1, 1, 1);
INSERT INTO `ebook_snapshot` VALUES (705, 11, '2026-06-05', 3, 1, 1, 0);
INSERT INTO `ebook_snapshot` VALUES (706, 11, '2026-06-06', 3, 1, 0, 0);
INSERT INTO `ebook_snapshot` VALUES (707, 11, '2026-06-07', 3, 1, 0, 0);
INSERT INTO `ebook_snapshot` VALUES (708, 11, '2026-06-08', 4, 1, 1, 0);
INSERT INTO `ebook_snapshot` VALUES (709, 11, '2026-06-09', 5, 2, 1, 1);
INSERT INTO `ebook_snapshot` VALUES (710, 11, '2026-06-10', 5, 2, 0, 0);
INSERT INTO `ebook_snapshot` VALUES (711, 11, '2026-06-11', 6, 2, 1, 0);
INSERT INTO `ebook_snapshot` VALUES (712, 11, '2026-06-12', 7, 2, 1, 0);
INSERT INTO `ebook_snapshot` VALUES (713, 11, '2026-06-13', 8, 3, 1, 1);
INSERT INTO `ebook_snapshot` VALUES (714, 11, '2026-06-14', 8, 3, 0, 0);
INSERT INTO `ebook_snapshot` VALUES (715, 11, '2026-06-15', 9, 4, 1, 1);
INSERT INTO `ebook_snapshot` VALUES (716, 11, '2026-06-16', 10, 4, 1, 0);
INSERT INTO `ebook_snapshot` VALUES (717, 11, '2026-06-17', 11, 5, 1, 1);
INSERT INTO `ebook_snapshot` VALUES (718, 11, '2026-06-18', 12, 6, 1, 1);
INSERT INTO `ebook_snapshot` VALUES (719, 11, '2026-06-19', 14, 8, 2, 2);
INSERT INTO `ebook_snapshot` VALUES (720, 11, '2026-06-20', 16, 10, 2, 2);
INSERT INTO `ebook_snapshot` VALUES (721, 11, '2026-06-21', 18, 11, 2, 1);
INSERT INTO `ebook_snapshot` VALUES (722, 11, '2026-06-22', 20, 12, 2, 1);
INSERT INTO `ebook_snapshot` VALUES (723, 11, '2026-06-23', 22, 13, 2, 1);
INSERT INTO `ebook_snapshot` VALUES (724, 11, '2026-06-24', 24, 15, 2, 2);
INSERT INTO `ebook_snapshot` VALUES (725, 11, '2026-06-25', 26, 16, 2, 1);
INSERT INTO `ebook_snapshot` VALUES (726, 11, '2026-06-26', 27, 17, 1, 1);
INSERT INTO `ebook_snapshot` VALUES (727, 11, '2026-06-27', 29, 18, 2, 1);
INSERT INTO `ebook_snapshot` VALUES (728, 11, '2026-06-28', 31, 19, 2, 1);
INSERT INTO `ebook_snapshot` VALUES (729, 11, '2026-06-29', 32, 20, 1, 1);
INSERT INTO `ebook_snapshot` VALUES (730, 11, '2026-06-30', 33, 21, 1, 1);
INSERT INTO `ebook_snapshot` VALUES (731, 12, '2026-06-02', 1, 0, 1, 0);
INSERT INTO `ebook_snapshot` VALUES (732, 12, '2026-06-03', 1, 0, 0, 0);
INSERT INTO `ebook_snapshot` VALUES (733, 12, '2026-06-04', 2, 0, 1, 0);
INSERT INTO `ebook_snapshot` VALUES (734, 12, '2026-06-05', 3, 0, 1, 0);
INSERT INTO `ebook_snapshot` VALUES (735, 12, '2026-06-06', 4, 0, 1, 0);
INSERT INTO `ebook_snapshot` VALUES (736, 12, '2026-06-07', 5, 1, 1, 1);
INSERT INTO `ebook_snapshot` VALUES (737, 12, '2026-06-08', 6, 2, 1, 1);
INSERT INTO `ebook_snapshot` VALUES (738, 12, '2026-06-09', 7, 3, 1, 1);
INSERT INTO `ebook_snapshot` VALUES (739, 12, '2026-06-10', 8, 3, 1, 0);
INSERT INTO `ebook_snapshot` VALUES (740, 12, '2026-06-11', 9, 4, 1, 1);
INSERT INTO `ebook_snapshot` VALUES (741, 12, '2026-06-12', 11, 5, 2, 1);
INSERT INTO `ebook_snapshot` VALUES (742, 12, '2026-06-13', 12, 6, 1, 1);
INSERT INTO `ebook_snapshot` VALUES (743, 12, '2026-06-14', 13, 7, 1, 1);
INSERT INTO `ebook_snapshot` VALUES (744, 12, '2026-06-15', 14, 7, 1, 0);
INSERT INTO `ebook_snapshot` VALUES (745, 12, '2026-06-16', 15, 7, 1, 0);
INSERT INTO `ebook_snapshot` VALUES (746, 12, '2026-06-17', 16, 8, 1, 1);
INSERT INTO `ebook_snapshot` VALUES (747, 12, '2026-06-18', 17, 8, 1, 0);
INSERT INTO `ebook_snapshot` VALUES (748, 12, '2026-06-19', 18, 8, 1, 0);
INSERT INTO `ebook_snapshot` VALUES (749, 12, '2026-06-20', 20, 8, 2, 0);
INSERT INTO `ebook_snapshot` VALUES (750, 12, '2026-06-21', 21, 9, 1, 1);
INSERT INTO `ebook_snapshot` VALUES (751, 12, '2026-06-22', 22, 10, 1, 1);
INSERT INTO `ebook_snapshot` VALUES (752, 12, '2026-06-23', 23, 11, 1, 1);
INSERT INTO `ebook_snapshot` VALUES (753, 12, '2026-06-24', 24, 12, 1, 1);
INSERT INTO `ebook_snapshot` VALUES (754, 12, '2026-06-25', 25, 13, 1, 1);
INSERT INTO `ebook_snapshot` VALUES (755, 12, '2026-06-26', 27, 14, 2, 1);
INSERT INTO `ebook_snapshot` VALUES (756, 12, '2026-06-27', 29, 16, 2, 2);
INSERT INTO `ebook_snapshot` VALUES (757, 12, '2026-06-28', 30, 16, 1, 0);
INSERT INTO `ebook_snapshot` VALUES (758, 12, '2026-06-29', 31, 17, 1, 1);
INSERT INTO `ebook_snapshot` VALUES (759, 12, '2026-06-30', 34, 18, 3, 1);
INSERT INTO `ebook_snapshot` VALUES (760, 13, '2026-06-02', 1, 1, 1, 1);
INSERT INTO `ebook_snapshot` VALUES (761, 13, '2026-06-03', 2, 2, 1, 1);
INSERT INTO `ebook_snapshot` VALUES (762, 13, '2026-06-04', 3, 2, 1, 0);
INSERT INTO `ebook_snapshot` VALUES (763, 13, '2026-06-05', 3, 2, 0, 0);
INSERT INTO `ebook_snapshot` VALUES (764, 13, '2026-06-06', 3, 2, 0, 0);
INSERT INTO `ebook_snapshot` VALUES (765, 13, '2026-06-07', 4, 2, 1, 0);
INSERT INTO `ebook_snapshot` VALUES (766, 13, '2026-06-08', 5, 3, 1, 1);
INSERT INTO `ebook_snapshot` VALUES (767, 13, '2026-06-09', 5, 3, 0, 0);
INSERT INTO `ebook_snapshot` VALUES (768, 13, '2026-06-10', 6, 3, 1, 0);
INSERT INTO `ebook_snapshot` VALUES (769, 13, '2026-06-11', 7, 4, 1, 1);
INSERT INTO `ebook_snapshot` VALUES (770, 13, '2026-06-12', 7, 4, 0, 0);
INSERT INTO `ebook_snapshot` VALUES (771, 13, '2026-06-13', 8, 5, 1, 1);
INSERT INTO `ebook_snapshot` VALUES (772, 13, '2026-06-14', 10, 6, 2, 1);
INSERT INTO `ebook_snapshot` VALUES (773, 13, '2026-06-15', 12, 6, 2, 0);
INSERT INTO `ebook_snapshot` VALUES (774, 13, '2026-06-16', 14, 7, 2, 1);
INSERT INTO `ebook_snapshot` VALUES (775, 13, '2026-06-17', 15, 8, 1, 1);
INSERT INTO `ebook_snapshot` VALUES (776, 13, '2026-06-18', 17, 9, 2, 1);
INSERT INTO `ebook_snapshot` VALUES (777, 13, '2026-06-19', 18, 10, 1, 1);
INSERT INTO `ebook_snapshot` VALUES (778, 13, '2026-06-20', 20, 11, 2, 1);
INSERT INTO `ebook_snapshot` VALUES (779, 13, '2026-06-21', 21, 12, 1, 1);
INSERT INTO `ebook_snapshot` VALUES (780, 13, '2026-06-22', 23, 13, 2, 1);
INSERT INTO `ebook_snapshot` VALUES (781, 13, '2026-06-23', 25, 15, 2, 2);
INSERT INTO `ebook_snapshot` VALUES (782, 13, '2026-06-24', 26, 16, 1, 1);
INSERT INTO `ebook_snapshot` VALUES (783, 13, '2026-06-25', 28, 18, 2, 2);
INSERT INTO `ebook_snapshot` VALUES (784, 13, '2026-06-26', 30, 19, 2, 1);
INSERT INTO `ebook_snapshot` VALUES (785, 13, '2026-06-27', 32, 21, 2, 2);
INSERT INTO `ebook_snapshot` VALUES (786, 13, '2026-06-28', 33, 22, 1, 1);
INSERT INTO `ebook_snapshot` VALUES (787, 13, '2026-06-29', 35, 23, 2, 1);
INSERT INTO `ebook_snapshot` VALUES (788, 13, '2026-06-30', 37, 25, 2, 2);

-- ----------------------------
-- Table structure for test
-- ----------------------------
DROP TABLE IF EXISTS `test`;
CREATE TABLE `test`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of test
-- ----------------------------
INSERT INTO `test` VALUES (1, 'zhang3');
INSERT INTO `test` VALUES (2, 'li4');
INSERT INTO `test` VALUES (3, 'wang5');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `login_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '登录名',
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '昵称',
  `password` char(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '密码',
  `role` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT 'user' COMMENT '角色：user/admin',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `login_name_unique`(`login_name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 726613230906118144 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (725160347069190144, '1', '1', '46bb4d73c94216d3987dcec217bb51c2', 'admin');
INSERT INTO `user` VALUES (725610793588101120, '2', '2', '46bb4d73c94216d3987dcec217bb51c2', 'user');
INSERT INTO `user` VALUES (725620576231755776, '3', '3', '46bb4d73c94216d3987dcec217bb51c2', 'user');
INSERT INTO `user` VALUES (726613181195227136, '4', '4', '46bb4d73c94216d3987dcec217bb51c2', 'user');
INSERT INTO `user` VALUES (726613207942303744, '5', '5', '46bb4d73c94216d3987dcec217bb51c2', 'user');
INSERT INTO `user` VALUES (726613230906118144, '6', '6', '46bb4d73c94216d3987dcec217bb51c2', 'user');

SET FOREIGN_KEY_CHECKS = 1;
