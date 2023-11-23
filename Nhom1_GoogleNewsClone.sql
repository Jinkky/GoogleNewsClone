/*
 Navicat Premium Data Transfer

 Source Server         : GoogleNews
 Source Server Type    : PostgreSQL
 Source Server Version : 140006 (140006)
 Source Host           : ec2-3-229-161-70.compute-1.amazonaws.com:5432
 Source Catalog        : d86g9mu73tide7
 Source Schema         : public

 Target Server Type    : PostgreSQL
 Target Server Version : 140006 (140006)
 File Encoding         : 65001

 Date: 10/01/2023 21:58:12
*/


-- ----------------------------
-- Sequence structure for articles_articleid_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."articles_articleid_seq";
CREATE SEQUENCE "public"."articles_articleid_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for categories_catID_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."categories_catID_seq";
CREATE SEQUENCE "public"."categories_catID_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for comments_commentid_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."comments_commentid_seq";
CREATE SEQUENCE "public"."comments_commentid_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for parent_categories_pCatID_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."parent_categories_pCatID_seq";
CREATE SEQUENCE "public"."parent_categories_pCatID_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for roles_roleid_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."roles_roleid_seq";
CREATE SEQUENCE "public"."roles_roleid_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for status_statusid_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."status_statusid_seq";
CREATE SEQUENCE "public"."status_statusid_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for tags_tagid_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."tags_tagid_seq";
CREATE SEQUENCE "public"."tags_tagid_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for users_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."users_id_seq";
CREATE SEQUENCE "public"."users_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;

-- ----------------------------
-- Table structure for articles
-- ----------------------------
DROP TABLE IF EXISTS "public"."articles";
CREATE TABLE "public"."articles" (
  "articleid" int4 NOT NULL GENERATED ALWAYS AS IDENTITY (
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1
),
  "title" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "views" int4 NOT NULL,
  "subcontent" text COLLATE "pg_catalog"."default" NOT NULL,
  "content" text COLLATE "pg_catalog"."default" NOT NULL,
  "catid" int4 NOT NULL,
  "premium" bool NOT NULL,
  "writterid" int4 NOT NULL,
  "statusid" int4 NOT NULL,
  "publish_date" date,
  "thumbs_img" text COLLATE "pg_catalog"."default" NOT NULL
)
;

-- ----------------------------
-- Records of articles
-- ----------------------------
INSERT INTO "public"."articles" OVERRIDING SYSTEM VALUE VALUES (63, 'Cô bé 7 tuổi với bàn tay nhân tạo lôi cuốn cả giải bóng chày quốc gia Mỹ', 42, 'Hailey, cô bé 7 tuổi với bàn tay nhân tạo có một ước mơ là được ném cú phát bóng đầu tiên tại tất cả các sân đấu của giải bóng chày Mỹ', '<div class="flex flex-col gap-y-2">
    <p>
        Hailey, cô bé 7 tuổi với bàn tay nhân tạo có một ước mơ là được ném cú phát bóng đầu tiên tại tất cả các sân
        đấu của giải bóng chày Mỹ
    </p>
    <p>
        Một hành động đẹp đang được chia sẻ rộng rãi trên trang mạng xã hội Facebook: hàng loạt đội bóng danh tiếng
        đang cùng nhau "xếp hàng" để giúp một fan hâm mộ nhí kém may mắn, biến ước mơ thành hiện thực.
    </p>
    <p>
        Từ khi ra đời, bé Hailey Dawson, đã không may mắn mắc hội chứng Poland, một căn bệnh khiến em thiếu 3 ngón
        tay ở bàn tay phải. Dù vậy, điều đó không hề ngăn cản em theo đuổi tình yêu với môn bóng chày. Cùng với bàn
        tay nhân tạo làm từ công nghệ in 3D, em đã từng được gặp gỡ nhiều cầu thủ bóng chày nổi tiếng và trở thành
        một tấm gương được nhiều người yêu mến.
    </p>
    <img class="w-full h-full mt-2 rounded-lg" src="https://vtv1.mediacdn.vn/zoom/260_166/2017/bong-chay-1505046205357.png" alt="">
    <p>
        Mới đây, mọi thứ đã tiếp tục bước sang trang mới, sau khi tờ báo thể thao nổi tiếng Bleacher Report đăng tải
        trên twitter 1 video về câu chuyện của Hailey, cùng với mơ ước của cô bé 7 tuổi - đó là được ném cú phát bóng
        đầu tiên tại tất cả các sân đấu của giải bóng chày Mỹ.
    </p>
    <p>
        Ngay lập tức, những tên tuổi hàng đầu trong làng bóng chày Mỹ, như Philadelphia, hay Boston Red Sox đều đã
        lên tiếng. Vẫn là đối thủ trên sân cỏ, nhưng trên Twitter, các đội bóng lại cùng nhau gửi những lời mời để
        Hailey thực hiện mơ ước của mình. Trong số đó chắc chắn không thể thiếu Chicago Cubs, nhà đương kim vô địch
        của giải bóng chày Mỹ.
    </p>
    <p>
        Các cư dân mạng, những người vốn đã dõi theo câu chuyện cảm động của Hailey thời gian qua, đều không giấu
        được sự vui mừng trước hành động đẹp này của làng bóng chày. Câu chuyện cũng gợi nhắc thêm về sức mạnh của
        mạng xã hội để lan tỏa những điều tốt đẹp, bất chấp những thông tin tiêu cực.
    </p>
</div>', 9, 'f', 28, 4, '2022-12-30', 'https://vtv1.mediacdn.vn/zoom/260_166/2017/bong-chay-1505046205357.png');
INSERT INTO "public"."articles" OVERRIDING SYSTEM VALUE VALUES (73, 'Đại học Bách khoa Hà Nội rút ngắn bài thi đánh giá tư duy', 48, 'Đề thi gồm ba phần Toán học, Đọc hiểu, Khoa học/Giải quyết vấn đề, tổng thời gian 150 phút, ngắn hơn gần một nửa so với cấu trúc cũ.', '<div class="flex flex-col gap-y-2">
    <p>
        Đề thi gồm ba phần Toán học, Đọc hiểu, Khoa học/Giải quyết vấn đề, tổng thời gian 150 phút, ngắn hơn gần một
        nửa so với cấu trúc cũ.
    </p>
    <p>
        Sáng 23/12, Đại học Bách khoa Hà Nội thông báo điều chỉnh cấu trúc, nội dung đề thi đánh giá tư duy và bắt
        đầu áp dụng từ năm 2023. Bài thi tư duy diễn ra trong 150 phút, ít hơn 120 phút so với cấu trúc cũ. Trong đó,
        mỗi phần Tư duy Toán học và Tư duy Khoa học/Giải quyết vấn đề có thời lượng 60 phút, còn Tư duy Đọc hiểu 30
        phút. Ngoài thay đổi về thời lượng, bài thi đánh giá tư duy của Đại học Bách khoa Hà Nội năm 2023 còn ba thay
        đổi khác.
    </p>
    <p>
        Thứ nhất, câu hỏi của cả ba phần thi được thiết kế theo hình thức trắc nghiệm, tổng điểm 100. Năm ngoái, bài
        thi đánh giá tư duy của Đại học Bách khoa Hà Nội kết hợp cả trắc nghiệm và tự luận.
    </p>
    <img class="w-full h-full mt-2 rounded-lg" src="https://i1-vnexpress.vnecdn.net/2022/12/23/bach-khoa-1585895238-1713-1585-2062-4861-1671771221.jpg?w=1020&h=0&q=100&dpr=1&fit=crop&s=kuMvFLW9F_nYLCjWcreSrA" alt="">
    <p>
        Thứ hai, cấu trúc đề thi đánh giá tư duy mới không còn bài tổ hợp khoa học Tự nhiên (Lý, Hóa, Sinh) và tiếng
        Anh. Phần thi Toán học và Tư duy Đọc hiểu như năm trước.
    </p>
    <p>
        Phần Toán học của bài thi đánh giá toàn bộ sự phát triển năng lực và tư duy của học sinh thông qua chương
        trình Toán lớp 11 và 12, gồm kiến thức về số học, đại số, hàm số, hình học, thống kê và xác suất. "Các câu
        hỏi từ dễ đến khó với độ tin cậy, đảm bảo phân hoá được mức độ sẵn sàng vào đại học của thí sinh", Đại học
        Bách khoa Hà Nội nói.
    </p>
    <p>
        Ở phần Đọc hiểu, thí sinh được đo lường khả năng đọc nhanh và hiểu đúng thông qua các văn bản khoa học, văn
        học, báo chí. Câu hỏi đọc hiểu yêu cầu thí sinh sử dụng kỹ năng viện dẫn và lập luận để xác định ý chính,
        giải thích các chi tiết quan trọng, hiểu chuỗi sự kiện.
    </p>
    <p>
        Phần Khoa học/Giải quyết cung cấp thông tin khoa học được thể hiện dưới dạng dữ liệu (đồ thị, bảng biểu, sơ
        đồ), tóm tắt nghiên cứu hoặc quan điểm xung đột. Các câu hỏi của phần này nhằm kiểm tra cách giải thích, phân
        tích, đánh giá, lý giải và kỹ năng giải quyết vấn đề của thí sinh. So với năm 2022, đề thi mới không còn phần
        lựa chọn, nên thí sinh bắt buộc tham gia toàn bộ ba phần của đề thi.
    </p>
    <p>
        Cuối cùng, thay vì diễn ra cả ngày và thi trên giấy như các năm trước, kỳ thi đánh giá tư duy 2023 được tổ
        chức trên máy tính trong một buổi. Đại học Bách khoa Hà Nội có thể tổ chức nhiều đợt, địa điểm thi khác nhau
        và thí sinh không bị giới hạn số lần thi. Sau khi hoàn thành bài thi, các em được cấp giấy chứng nhận có giá
        trị trong hai năm, được đăng ký xét tuyển vào bất cứ đại học nào sử dụng kết quả của kỳ thi.
    </p>
    <p>
        Lý giải về sự thay đổi, Đại học Bách khoa Hà Nội cho biết muốn mở rộng khả năng sử dụng kết quả bài thi cho
        các trường thuộc khối ngành kinh tế, tài chính, ngân hàng, nông nghiệp và y dược; phù hợp với chương trình
        giáo dục phổ thông mới. Giữa tháng 11, Đại học Bách khoa Hà Nội cho biết lên kế hoạch tổ chức ba đợt thi đánh
        giá năng lực trong năm 2023, vào các tháng 5, 6 và 7, tăng hai đợt so với các năm trước. Năm ngoái, kỳ thi
        này thu hút hơn 7.100 thí sinh tham dự, hơn 20 trường sử dụng kết quả để xét tuyển.
    </p>
    <p>
        Ngoài kỳ thi đánh giá tư duy của Đại học Bách khoa Hà Nội, hai đại học quốc gia Hà Nội, TP HCM, trường Đại
        học Sư phạm Hà Nội, Bộ Công an cũng tổ chức các kỳ thi riêng để xét tuyển và được nhiều đơn vị khác công
        nhận, dùng xét đầu vào.
    </p>
    <p>
        Theo thống kê của Bộ Giáo dục và Đào tạo, năm 2022, các trường dành hơn 30.000 chỉ tiêu xét tuyển từ điểm của
        các kỳ thi đánh giá năng lực, đánh giá tư duy. Tỷ lệ nhập học theo phương thức này chiếm khoảng 2% tổng số 
        thí sinh nhập học của tất cả các phương thức.
    </p>
</div>', 16, 'f', 15, 4, '2022-12-23', 'https://i1-vnexpress.vnecdn.net/2022/12/23/bach-khoa-1585895238-1713-1585-2062-4861-1671771221.jpg?w=1020&h=0&q=100&dpr=1&fit=crop&s=kuMvFLW9F_nYLCjWcreSrA');
INSERT INTO "public"."articles" OVERRIDING SYSTEM VALUE VALUES (7, '''Alice in Borderland 2'': Hồi kết của trò chơi sinh tử', 39, 'Arisu (Yamazaki Kento) cùng những người bạn tham gia các trò chơi sinh tồn với độ khó tàn khốc nhằm thoát khỏi thế giới trong "Alice in Borderland 2".', '<div class="flex flex-col gap-y-2">
    <p>
        Arisu (Yamazaki Kento) cùng những người bạn tham gia các trò chơi sinh tồn với độ khó tàn khốc nhằm thoát 
        khỏi thế giới trong "Alice in Borderland 2".
    </p>
    <p>
        Nối tiếp câu chuyện trong Alice in Borderland (2020), Arisu (Yamazaki Kento) và những người bạn phải tham 
        gia vào các trò chơi bài hình (J, Q, K) với độ khó lớn nhất do cư dân thành phố tổ chức. Từng khu vực sẽ có 
        một quả khinh khí cầu hình lá bài tương ứng. Để sống sót và tìm ra bí mật về thế giới ấy, người chơi phải 
        chiến thắng tất cả trò còn lại. Hình ảnh trong Alice in Borderland 2 được xây dựng kỹ lưỡng. Êkíp đầu tư 
        hoành tráng bối cảnh từng ván đấu: Những tòa nhà cao tầng và đường phố Nhật Bản (K bích), bến cảng cùng hàng
        trăm thùng container (K tép), công xưởng nhà máy (Q bích)... Sự đa dạng của các đấu trường làm nổi bật yếu 
        tố nguy hiểm trong từng trò, đưa khán giả vào thế giới nơi tính mạng mỗi người đều "ngàn cân treo sợi tóc".
    </p>
    <p>
        Những cảnh bạo lực, đậm chất kinh dị xuất hiện xuyên suốt. Các tình tiết cháy nổ, hành động được xử lý chỉnh
        chu. Phim tận dụng nhiều góc quay mới, chẳng hạn phân đoạn one-shot lúc Arisu và nhóm bạn rượt đuổi trên ôtô
        cùng K bích.
    </p>
    <img class="w-full h-full mt-2 rounded-lg" src="https://i1-giaitri.vnecdn.net/2022/12/28/320559506-836814457617205-2347-2563-8815-1672220181.jpg?w=0&h=0&q=100&dpr=2&fit=crop&s=48sPvtJvTlQZ4t4wIXyQcA" alt="">
    <p>
        Quá khứ và hành trình thay đổi của một số người được khai thác, qua đó nhấn mạnh thông điệp về việc sống 
        đúng lý tưởng của bản thân, trân trọng những điều xung quanh. Kết thúc phim là đích đến cũng như điểm khởi 
        đầu cho số phận từng nhân vật, đánh dấu chặng đường trưởng thành của mỗi người.
    </p>
    <p>
        Đa phần diễn viên có màn thể hiện tròn vai, lột tả vừa vặn tâm lý và tính cách nhân vật. Tạo hình nhiều 
        người sát nguyên tác, trong đó Kyuma (Yamashita Tomohisa) - "trùm" trò K tép - tạo dấu ấn khi khỏa thân, để 
        lộ thân hình săn chắc. Quản trò Q cơ Mira (Riisa Naka) khắc họa thành công nét điên loạn, đáng sợ cùng khả 
        năng thao túng tâm lý.
    </p>
    <p>
        Không giữ được phong độ mùa trước, Yamazaki Kento mắc lỗi về diễn xuất. Hóa thân Arisu, anh có những nét 
        biểu cảm gượng gạo, không phù hợp ở nhiều phân đoạn. Trong các cảnh khơi gợi cảm xúc, Kento chưa bộc lộ được
        nội tâm nhân vật. Những tương tác giữa anh và Tao Tsuchiya (đóng vai Usagi) thiếu sự kết nối.Tác phẩm lược 
        bỏ và thay đổi nhiều chi tiết so với bộ truyện gốc khiến yếu tố kịch tính giảm so với phần đầu. Nhịp phim 
        đôi chỗ lê thê khi các nhân vật lạm dụng việc nói đạo lý. Một vài trò chơi được xây dựng và giải quyết qua 
        loa, chưa khai thác rõ nét nội tâm và quá trình suy luận của người chơi. Chẳng hạn, trong ván cuối trò J cơ 
        (tâm lý), cách các nhân vật lập luận không đủ thuyết phục, nhiều điều chưa có lời giải đáp. Hay trong trò Q 
        bích (thể lực) - được êkíp sáng tạo thêm, sự đấu tranh nội tâm của quản trò và những người chơi còn khiên 
        cưỡng, chóng vánh.
    </p>
    <p>
        Alice in Borderland 2 nhận về nhiều sự quan tâm và tranh cãi trên các diễn đàn. Với nhiều người đã đọc bộ 
        manga gốc, họ thất vọng vì phim đánh mất sự hấp dẫn, "hack não" của nhiều trò, đặc biệt là J cơ. Một bộ phận
        khán giả cho rằng trong thể loại sinh tồn, tác phẩm vẫn có chất lượng tốt.
    </p>
</div>
', 12, 't', 28, 4, '2022-12-30', 'https://i1-giaitri.vnecdn.net/2022/12/28/320559506-836814457617205-2347-2563-8815-1672220181.jpg?w=0&h=0&q=100&dpr=2&fit=crop&s=48sPvtJvTlQZ4t4wIXyQcA');
INSERT INTO "public"."articles" OVERRIDING SYSTEM VALUE VALUES (69, 'Du học sinh Việt ''trút gánh nặng'' khi Trung Quốc sắp mở cửa', 53, 'Du học sinh Việt trút được áp lực về học online, phí cách ly, vé máy bay đắt đỏ khi Trung Quốc sắp mở cửa, ngừng cách ly người nhập cảnh từ 8/1/2023.', '<div class="flex flex-col gap-y-2">
    <p>
        Du học sinh Việt trút được áp lực về học online, phí cách ly, vé máy bay đắt đỏ khi Trung Quốc sắp mở cửa,
        ngừng cách ly người nhập cảnh từ 8/1/2023.
    </p>
    <p>
        Đọc tin Trung Quốc hạ cấp độ ứng phó với Covid-19, ngừng cách ly bắt buộc từ 0h ngày 8/1, Lăng Quang Du nói
        thở phào vì trút được áp lực tâm lý học online gần ba năm nay.
    </p>
    <p>
        Quang Du, sinh năm 1995, tốt nghiệp thạc sĩ ngành Xây dựng, Đại học Nam Hoa, tỉnh Hồ Nam, năm 2020. Du theo
        học ngành giáo dục Hán ngữ quốc tế, Đại học Ngôn ngữ Bách khoa ở Bắc Kinh từ đó đến nay, bằng hình thức trực
        tuyến tại Việt Nam. Em cho biết, việc học ngôn ngữ chuyên sâu bằng hình thức này không hiệu quả, lại gây khó
        chịu cho mắt.
    </p>
    <img class="w-full h-full mt-2 rounded-lg" src="https://i1-vnexpress.vnecdn.net/2022/12/27/IMG-8425-2-6212-1672128832.jpg?w=1020&h=0&q=100&dpr=1&fit=crop&s=DxMFDctGNU1uNws5uL5ptg" alt="">
    <p>
        Theo Du, sinh viên quốc tế nhập cảnh Trung Quốc mà không phải cách ly sẽ bớt gánh nặng về kinh tế vì chi phí
        hiện khoảng 50 triệu đồng cho 5-14 ngày cách ly tập trung. Cách đây vài tháng, nhiều đại học đã gửi các giấy
        tờ liên quan để hỗ trợ sinh viên bay sang Trung Quốc. Tuy nhiên, số tiền này khiến nhiều du học sinh nản
        lòng, quyết định chưa lên đường. Nguyễn Hồng Ngọc, 30 tuổi, ở Đà Nẵng, cũng tương tự. Vé máy bay sang thành
        phố Quý Dương (tỉnh Quý Châu) và phí cách ly hiện tại gần 40 triệu đồng là khoản khá lớn, khiến chị chưa thể
        theo học thạc sỹ ngành Hán ngữ quốc tế tại Đại học Quý Châu mà chị bảo lưu từ năm 2021.
    </p>
    <p>
        Lộc Văn Đàn, 23 tuổi, sinh viên Đại học Tài chính Kinh tế Trung ương, Bắc Kinh vừa trở lại Trung Quốc hồi
        tháng 10/2022, sau thời gian dài phải học và tốt nghiệp online, cho biết gần đây, vé máy bay từ Việt Nam sang
        khoảng 7 - 8 triệu đồng, rẻ hơn nhiều so với mức hàng chục triệu cách đây vài tháng. Tuy nhiên, để sang được
        Trung Quốc ở thời điểm hiện tại, chi phí cách ly vẫn khá cao. Đàn từng mất 50 triệu, trải qua ba lần cách ly
        tại Việt Nam, Hàng Châu và Bắc Kinh trong 27 ngày.
    </p>
    <p>
        "Một số sinh viên Việt Nam ở trường em vừa sang trong tháng này cũng tốn khoảng 50 triệu đồng. Các bạn phải
        cách ly 5 ngày tại sân bay rồi về trường cách ly 7 ngày nữa", Đàn nói, cho biết một nhóm sinh viên Việt Nam
        mà em biết đã phải thi cuối kỳ tại nơi cách ly. Theo South China Morning Post, ba quan chức thuộc các cơ quan
        y tế và bệnh viện tại tỉnh Quảng Đông, Phúc Kiến và Giang Tô, cho biết họ đã nhận được thông báo của Ủy ban Y
        tế Quốc gia Trung Quốc ngày 26/12, yêu cầu chuẩn bị cho việc hạ cấp dịch Covid-19 xuống thành bệnh truyền
        nhiễm loại B từ ngày 8/1/2023. Động thái này được đánh giá là bước cuối cùng của Trung Quốc trong việc loại
        bỏ chính sách "zero-Covid" kéo dài ba năm qua, chuyển sang trạng thái sống chung với dịch. Kể từ năm 2020,
        Trung Quốc ứng phó với Covid-19 như một loại bệnh truyền nhiễm nguy hiểm, ngang với bệnh dịch hạch và dịch
        tả. Ở cấp độ này, chính quyền phải áp đặt các hạn chế nghiêm ngặt nhất như cách ly người mắc bệnh và người
        tiếp xúc gần, đồng thời phong tỏa một số thành phố.
    </p>
    <p>
        Ba năm qua, nhiều học sinh trên thế giới, trong đó có Việt Nam đã tạm dừng hoặc từ bỏ lựa chọn du học Trung
        Quốc, theo nhận định của ông Trần Ngọc Duy, Giám đốc Công ty tư vấn du học Trung Quốc Riba.
    </p>
    <p>
        Ông Nguyễn Quốc Tư, Chủ tịch Hội đồng quản trị Công ty cổ phần giáo dục Hoa ngữ quốc tế, đánh giá chính sách
        bỏ cách ly, cùng việc một điểm thi chứng chỉ tiếng Trung HSK được mở lại ở Việt Nam sẽ gỡ vướng cho nhiều
        người có nhu cầu ứng tuyển học bổng Trung Quốc năm 2023. Trước đó, một số học viên của ông Tư chuyển hướng
        sang du học nước khác, giờ có khả năng sẽ quay lại.
    </p>
    <p>
        Theo ông Tư, các trường vẫn sẽ duy trì việc học trực tuyến đến hết Tết Nguyên Đán, nên các du học sinh chưa
        cần chuẩn bị vội. "Tết của Trung Quốc trùng dịp Tết Nguyên Đán Việt Nam nên du học sinh cứ yên tâm ăn Tết.
        Các trường đại học Trung Quốc thường cho du học sinh sang vào thời điểm nhập học mùa mới, khoảng tháng
        3/2023", ông Tư nói.
    </p>
    <p>
        Ông Duy cũng cho rằng các trường đại học nước này sẽ sớm công bố chính sách đón sinh viên quốc tế trở lại,
        với các hướng dẫn chi tiết.
    </p>
    <p>
        Quang Du đã chuẩn bị lên đường sau dịp Tết Nguyên Đán. Nam sinh dự kiến di chuyển lên cửa khẩu Hữu Nghị (Lạng
        Sơn), sau đó tới Bằng Tường (Trung Quốc) rồi bắt xe đến ga tàu Nam Ninh, với tổng chi phí khoảng 5 - 7 triệu
        đồng. Trong trường hợp đi máy bay, Du ước tính chi phí 10 - 20 triệu đồng.
    </p>
    <p>
        Còn Hồng Ngọc sẽ bắt đầu hành trình của mình tại Trung Quốc vào tháng 9/2023. Ngọc hy vọng tới lúc đó, chi
        phí sẽ giảm nhiều, có thể về gần mức trước khi có dịch Covid-19. Ngọc cho hay, em thường xuyên được cập nhật
        tin tức và các quy định cho du học sinh từ các thầy, cô ở trường và hội du học sinh Việt Nam. Trước đây, du
        học sinh ngày nào cũng được yêu cầu báo cáo tình hình sức khỏe, kiểm tra Covid-19 nhưng hiện tại các quy định
        đã được nới lỏng.
    </p>
    <p>
        "Sinh viên Trung Quốc mắc Covid-19 cũng không bị hạn chế đi lại. Trường em hiện đã bước vào kỳ nghỉ đông nên
        sẽ dừng các hoạt động dạy và học đến đầu tháng 3/2023", Ngọc cho hay. Trong thời gian chờ được sang trường,
        Ngọc tranh thủ đi làm thêm để tích lũy tiền.
    </p>
</div>', 15, 't', 27, 4, '2022-12-30', 'https://i1-vnexpress.vnecdn.net/2022/12/27/IMG-8425-2-6212-1672128832.jpg?w=1020&h=0&q=100&dpr=1&fit=crop&s=DxMFDctGNU1uNws5uL5ptg');
INSERT INTO "public"."articles" OVERRIDING SYSTEM VALUE VALUES (78, 'Phương pháp đánh giá hiệu quả học tiếng Anh cho trẻ', 15, 'Theo chuyên gia Tổ chức Giáo dục IIG Việt Nam, trẻ cần có phương pháp học tiếng Anh phù hợp với độ tuổi và đánh giá hiệu quả thông qua các bài thi quốc tế.', '<div class="flex flex-col gap-y-2">
    <p>
        Theo chuyên gia Tổ chức Giáo dục IIG Việt Nam, trẻ cần có phương pháp học tiếng Anh phù hợp với độ tuổi và
        đánh giá hiệu quả thông qua các bài thi quốc tế.
    </p>
    <p>
        Cô Lê Quỳnh Trang - chuyên gia đào tạo tiếng Anh được công nhận bởi Viện khảo thí Giáo dục Mỹ (ETS) nhận
        định, việc học tiếng Anh nếu chỉ bắt đầu từ sớm là chưa đủ. Nhiều phụ huynh ép con học với lịch trình dày
        đặc, khiến trẻ dễ nản, sợ học, thay vì xây dựng lộ trình vững chắc, đánh giá theo từng giai đoạn.
    </p>
    <p>
        "Để giúp con trẻ học tiếng Anh hiệu quả cần có phương pháp phù hợp cho mỗi độ tuổi và đánh giá đúng trình độ
        để xây dựng lộ trình học hợp lý thay vì chạy đua theo phong trào", cô nói thêm. Một trong những phương pháp
        có thể giúp phụ huynh đánh giá, đo lường khả năng sử dụng tiếng Anh của con là cho trẻ thử sức với các bài
        thi quốc tế. Qua đây, các em có thể cọ xát, làm quen với tiếng Anh quốc tế. Trong đó, khi làm bài thi TOEFL,
        cha mẹ, giáo viên có thể đánh giá đa chiều năng lực tiếng Anh thông qua các thông số trên phiếu điểm quốc tế
        do Viện Khảo thí Giáo dục Mỹ (ETS) cấp.
    </p>
    <img class="w-full h-full mt-2 rounded-lg" src="https://i1-vnexpress.vnecdn.net/2022/12/27/image001-1455-1672133658.jpg?w=1020&h=0&q=100&dpr=1&fit=crop&s=vBQiO5Ggv9Jlok9saueZ1A" alt="">
    <p>
        Mỗi phần đánh giá trên phiếu điểm đều có mục "Can do list" đưa ra các mô tả chi tiết kỹ năng thí sinh có thể
        thực hiện và những lời khuyên, hướng dẫn để cải thiện trình độ tiếng Anh. Chỉ số điểm Lexile (Lexile
        Framework for Reading) chỉ có duy nhất trên phiếu điểm TOEFL có thể là "kim chỉ nam" giúp các em lựa chọn
        sách phù hợp với sở thích và trình độ. Đây là một trong các thông tin quan trọng, được thể hiện qua kết quả
        phần thi Đọc hiểu. Việc lựa chọn tài liệu đọc phù hợp với năng lực đọc hiểu tiếng Anh có thể giúp học sinh
        phát triển vốn từ vựng và khả năng tư duy. Công cụ phân tích dựa trên khả năng đọc và sở thích, thay vì độ
        tuổi của trẻ, giúp các em có thêm hứng thú, tránh nhàm chán, từ đó, xây dựng thư viện cá nhân để luyện tập kỹ
        năng đọc hiểu, nâng cao hiệu quả giao tiếp.
    </p>
    <p>
        Ngoài ra, trên phiếu điểm TOEFL có thêm thông tin về điểm số quy đổi sang tham chiếu chung châu Âu và khung
        năng lực ngoại ngữ Việt Nam phù hợp với tiêu chuẩn đánh giá năng lực ngoại ngữ tiếng Anh đầu ra của học sinh
        Tiểu học và THCS tại Việt Nam
    </p>
    <p>
        Bên cạnh đó, phụ huynh có thể đăng ký cho con tham gia cuộc thi TOEFL Challenge được Tổ chức Giáo dục IIG
        Việt Nam phối hợp với Sở Giáo dục và Đào tạo toàn quốc tổ chức hằng năm để nhận đánh giá toàn diện trình độ
        Anh ngữ. Năm học 2022-2023, TOEFL Challenge được tổ chức cho cả ba cấp học từ lớp 2 đến lớp 12. Chương trình
        đang triển khai vòng thi cấp tỉnh, thành phố. Mỗi thí sinh có cơ hội phát huy năng lực với bài thi tiếng Anh
        quốc tế. Kết thúc vòng thi, các em sẽ nhận được phiếu điểm và chứng chỉ điểm TOEFL có giá trị toàn cầu. Qua
        đó, học sinh có thể sử dụng chứng chỉ như một lợi thế để xét tuyển vào các trường THCS, THPT chất lượng, các
        lớp chuyên Anh...
    </p>
    <p>
        Nếu sở hữu chứng chỉ điểm TOEFL với 450 điểm trở lên, học sinh THPT sẽ được miễn thi tốt nghiệp THPT môn 
        tiếng Anh và ưu tiên xét tuyển vào nhiều trường đại học trên toàn quốc như Học viện Công nghệ Bưu chính viễn 
        thông, Đại học Luật Hà Nội, Đại học Y Hà Nội, Học viện Báo Chí và Tuyên truyền.
    </p>
</div>', 18, 'f', 16, 4, '2022-12-27', 'https://i1-vnexpress.vnecdn.net/2022/12/27/image001-1455-1672133658.jpg?w=1020&h=0&q=100&dpr=1&fit=crop&s=vBQiO5Ggv9Jlok9saueZ1A');
INSERT INTO "public"."articles" OVERRIDING SYSTEM VALUE VALUES (5, 'Hà Nội điều chỉnh lĩnh vực phụ trách của các phó chủ tịch', 24, 'Sáu ngày sau khi ông Chử Xuân Dũng bị bắt, lĩnh vực ông phụ trách được phân công cho hai phó chủ tịch khác để đảm bảo các hoạt động thông suốt.', '<div class="flex flex-col gap-y-2">
    <p>
        Sáu ngày sau khi ông Chử Xuân Dũng bị bắt, lĩnh vực ông phụ trách được phân công cho hai phó chủ tịch khác
        để đảm bảo các hoạt động thông suốt.
    </p>
    <p>
        Sáng 28/12, UBND TP Hà Nội thông báo tạm thời điều chỉnh phân công công tác của Phó Chủ tịch UBND thành phố.
        Hai ông Lê Hồng Sơn và Hà Minh Hải được bổ sung một số lĩnh vực mà trước đó ông Chử Xuân Dũng phụ trách.
    </p>
    <p>
        Cụ thể, ngoài lĩnh vực đang phụ trách là Nội chính - Tư pháp, Phó Chủ tịch Thường trực UBND thành phố Lê
        Hồng Sơn sẽ theo dõi, chỉ đạo các lĩnh vực: Khoa học và công nghệ; Lao động, dạy nghề, việc làm và các vấn
        đề xã hội; phòng, chống tệ nạn xã hội, AIDS, ma túy, mại dâm; Văn hóa; thể dục, thể thao; Y tế, dân số, gia
        đình và trẻ em; Đảm bảo an toàn thực phẩm.
    </p>
    <img class="w-full h-full mt-2 rounded-lg" src="https://i1-vnexpress.vnecdn.net/2022/12/28/tru-so-jpeg-8197-1672199530.jpg?w=1020&h=0&q=100&dpr=1&fit=crop&s=2qLkkoTWDr0Qc2JDmsEeNQ" alt="">
    <p>
        Ông Sơn cũng theo dõi và chỉ đạo Sở Văn hóa và Thể thao; Sở Khoa học và Công nghệ; Sở Y tế; Sở Lao động,
        Thương binh và Xã hội; Đài Phát thanh và Truyền hình Hà Nội; Báo Kinh tế và Đô thị; Trung tâm Bảo tồn di sản
        Thăng Long - Hà Nội; Công ty TNHH MTV Nhà xuất bản Hà Nội; Công ty TNHH MTV Điện ảnh Hà Nội. Theo dõi, phối
        hợp chỉ đạo: Bảo hiểm xã hội Thành phố, Ngân hàng chính sách xã hội Hà Nội...
    </p>
    <p>
        Phó Chủ tịch UBND thành phố Hà Minh Hải đang phụ trách kinh tế tổng hợp, tài chính - ngân sách, được giao bổ
        sung lĩnh vực Giáo dục, đào tạo; Thông tin, truyền thông.
    </p>
    <p>
        Ông Hải sẽ theo dõi, chỉ đạo Sở Giáo dục và Đào tạo; Sở Thông tin và Truyền thông; Trường Đại học Thủ đô;
        các trường cao đẳng thuộc thành phố; theo dõi các quận, huyện: Long Biên, Tây Hồ, Hoài Đức, Hoàng Mai, Gia
        Lâm. Ông cũng làm trưởng một số Ban chỉ đạo, Chủ tịch một số hội đồng Thành phố như: Ban Chỉ đạo công tác
        thi, tuyển sinh; Ban chỉ đạo đổi mới giáo dục và đào tạo; Hội đồng xét tặng danh hiệu Nhà giáo nhân dân, Nhà giáo ưu tú.
    </p>
    <p>
        Lĩnh vực phụ trách của ba Phó chủ tịch Dương Đức Tuấn, Nguyễn Trọng Đông và Nguyễn Mạnh Quyền vẫn thực hiện
        như quyết định 5506 ngày 31/12/2021.
    </p>
    <p>
        Hôm 22/12, Phó chủ tịch UBND TP Hà Nội Chử Xuân Dũng bị Cơ quan An ninh điều tra Bộ Công an khởi tố, bắt tạm
        giam về tội Nhận hối lộ.
    </p>
    <p>
        Cùng ngày, Thành ủy Hà Nội thông báo Ban Chấp hành Đảng bộ thành phố đã biểu quyết thống nhất cao đề nghị
        cấp có thẩm quyền xem xét khai trừ ra khỏi Đảng với ông Dũng, Thành ủy viên, Ủy viên Ban cán sự Đảng, Phó
        Chủ tịch UBND thành phố (nhiệm kỳ 2021-2026).
    </p>
    <p>
        Theo Thành ủy, ông Dũng lợi dụng chức vụ quyền hạn, vi phạm trong quá trình chấp thuận chủ trương cho các
        doanh nghiệp thực hiện các chuyến bay giải cứu, đưa công dân từ nước ngoài về nước cách ly tại Hà Nội; vi phạm quy định về những điều đảng viên không được làm, trách nhiệm nêu gương, vi phạm pháp luật.
    </p>
    <p>
        Ông Dũng, 49 tuổi, có nhiều năm công tác trong ngành giáo dục. Tháng 12/2020, ông được bổ nhiệm làm Phó chủ
        tịch UBND Hà Nội sau ba năm làm Giám đốc Sở Giáo dục và Đào tạo.
    </p>
</div>', 29, 'f', 18, 4, '2022-12-28', 'https://i1-vnexpress.vnecdn.net/2022/12/28/tru-so-jpeg-8197-1672199530.jpg?w=1020&h=0&q=100&dpr=1&fit=crop&s=2qLkkoTWDr0Qc2JDmsEeNQ');
INSERT INTO "public"."articles" OVERRIDING SYSTEM VALUE VALUES (8, '''Emily in Paris 3'' - tình yêu mù quáng', 0, 'Dù đang yêu Alfie, trái tim Emily vẫn hướng về chàng đầu bếp Gabriel, trong phần ba loạt phim "Emily in Paris".', '<div class="flex flex-col gap-y-2">
    <p>
        Dù đang yêu Alfie, trái tim Emily vẫn hướng về chàng đầu bếp Gabriel, trong phần ba loạt phim "Emily in Paris".
    </p>
    <p>
        Nối tiếp phần phim trước, Emily (Lily Collins) phải lựa chọn giữa sự nghiệp cô ao ước ở Paris và cơ hội phát
        triển tại Chicago. Lưỡng lự với các quyết định, cô làm cùng lúc hai công việc. Cuộc sống của Emily càng trở
        nên rối rắm hơn khi cô yêu Alfie (Lucien Laviscount) nhưng vẫn cảm mến bạn trai cũ Gabriel (Lucas Bravo).
    </p>
    <p>
        Bản chất tham lam của Emily bộc lộ qua từng tập phim. Với công việc, cô muốn có thể làm hài lòng được cả hai
        sếp. Trong những tập đầu, Emily vẫn chưa chọn làm việc cho Madeline Weaver (Kate Walsh) có trụ sở tại
        Chicago hay công ty mới do quản lý cũ Sylvie (Philippine Leroy-Beaulieu) lập ra ở Pháp. Thay vào đó, cô nói
        dối để được làm việc cho cả hai, dù hai người sếp khác biệt về văn hóa lẫn tư duy.
    </p>
    <img class="w-full h-full mt-2 rounded-lg" src="https://i1-giaitri.vnecdn.net/2022/12/27/emilyinparis-1969-1672130895.jpg?w=0&h=0&q=100&dpr=2&fit=crop&s=w1j2q47qocdq9SXroOunfw" alt="">
    <p>
        Trong tình yêu, tuy có những khoảnh khắc hạnh phúc bên bạn trai Alfie, nhiều lúc Emily tìm thấy cảm giác yên
        bình với anh chàng đầu bếp. Sự không rõ ràng của Emily khiến cô không ít lần rơi vào bế tắc.
    </p>
    <p>
        Bên cạnh việc phác họa những mối quan hệ của nữ chính, phim còn đề cập đến tình yêu của hai người bạn
        Camille (Camille Razat) và Mindy (Ashley Park). Camille hẹn hò nghệ sĩ Hy Lạp Sofia (Melia Kreiling), người
        có một triển lãm tại phòng trưng bày của cô. Còn Mindy quen Nicolas de Leon (Paul Forman), con cháu một tập
        đoàn xa xỉ. Người này không giống bạn trai trước của cô, anh hiểu được áp lực của việc trở thành người thừa
        kế giàu có. Phong cách thời trang trong phần phim thứ ba tiếp tục trở thành chủ đề bàn luận trên mạng xã
        hội. Trên People, người phụ trách thời trang của phim - nhà thiết kế Marylin Fitoussi - cho biết đã tìm
        khoảng 14.000 món đồ cả trang phục lẫn phụ kiện cho các nhân vật. "Tôi luôn tìm cách phối trang phục cổ điển
        với những món đồ hiệu, trang phục đương đại. Khoảng 43 bộ quần áo được tôi và êkíp phối cho Collins",
        Marylin Fitoussi nói.
    </p>
    <p>
        Lần thứ ba đóng vai Emily, Lily Collins cho thấy sự hiểu biết về nhân vật. Cô hóa thân duyên dáng trong
        những phân đoạn Emily chứng tỏ thực lực trước công ty. Dàn diễn viên phụ giúp các nhân vật có chiều sâu.
        Philippine Leroy-Beaulieu cho thấy Sylvie không chỉ là con người của công việc mà có lúc cô cảm thấy cô đơn
        trong hai cuộc tình.
    </p>
    <p>
        Tác phẩm nhận 60% điểm tươi trên trang đánh giá Rotten Tomatoes. Trang Decider đánh giá cao cách xây dựng
        nhân vật trong phim. "Tác phẩm đã làm nổi bật các nhân vật phụ bằng cách khám phá sâu hơn về cuộc sống cá
        nhân, các mối quan hệ, sở thích và tính cách của họ". Cây viết John Anderson của tờ Wall Street Journal
        viết: "Emily thật rạng ngời. Nhà sáng tạo loạt phim Darren Star biết rõ thứ mà mọi người thích: quần áo".
    </p>
    <p>
        Tờ Rolling Stone chê phim vì "nội dung lặp đi lặp lại nhàm chán". Các trang Independent, London Evening
        Standard đồng quan điểm cho rằng cách xử lý vấn đề trong phần phim này qua loa, thiếu thuyết phục. Ngoài ra,
        phim cũng bị chê vì lồng ghép nhiều yếu tố quảng cáo. Cốt truyện của phần ba xoay quanh chuỗi cửa hàng thức
        ăn nhanh McDonald''s với hành trình nhân vật Emily nỗ lực giành lấy cơ hội được đóng quảng cáo. Kịch bản có
        nhiều chi tiết thuộc chiến dịch ra mắt sản phẩm mới dành cho thị trường Pháp từ công ty này.
    </p>
    <p>
        Emily in Paris là loạt phim hài (comedy) do Darren Star - từng làm Beverly Hills, 90210 và Sex and the City
        - sáng tạo. Nội dung xoay quanh hành trình của Emily khi cô phải rời Chicago đến Paris để sinh sống và làm
        việc ở chi nhánh công ty quảng cáo.
    </p>
    <p>
        Mùa một ra mắt năm 2020, lập kỷ lục 58 triệu lượt xem trong 28 ngày đầu, là series hài phổ biến nhất trên
        Netflix trong năm. Tác phẩm cũng nhận đề cử Emmy ở hạng mục Series hài xuất sắc, giải Quả Cầu Vàng hạng mục
        Phim truyện xuất sắc ở thể loại hài/ca vũ nhạc.
    </p>
</div>', 12, 'f', 27, 4, '2023-01-08', 'https://i1-giaitri.vnecdn.net/2022/12/27/emilyinparis-1969-1672130895.jpg?w=0&h=0&q=100&dpr=2&fit=crop&s=w1j2q47qocdq9SXroOunfw');
INSERT INTO "public"."articles" OVERRIDING SYSTEM VALUE VALUES (9, 'Hà Anh Tuấn: ''Ông Kitaro yêu thiên nhiên, con người Việt Nam''', 30, 'Hà Anh Tuấn nói nhạc sĩ Nhật Kitaro yêu thiên nhiên, con người Việt Nam nên không khó mời ông tham gia live concert "Chân trời rực rỡ"', '<div class="flex flex-col gap-y-2">
    <p>
        Hà Anh Tuấn nói nhạc sĩ Nhật Kitaro yêu thiên nhiên, con người Việt Nam nên không khó mời ông tham gia live
        concert "Chân trời rực rỡ"
    </p>
    <p>
        Ca sĩ có buổi gặp gỡ báo giới để nói về live concert Chân trời rực rỡ vào tháng 2/2023 tại Ninh Bình. Điểm
        nhấn của chương trình là sự góp mặt của huyền thoại âm nhạc Kitaro. Nhạc sĩ người Nhật sẽ cùng dàn giao
        hưởng Việt Nam đệm đàn cho ca sĩ biểu diễn ba tác phẩm Tháng Tư là lời nói dối của anh (Phạm Toàn Thắng),
        Xuân thì (Phan Mạnh Quỳnh) và Một mình một sớm ban mai (Việt Anh). Lần đầu, hai sản phẩm khí nhạc của Kitaro
        - Koi và Silk Road - nhạc sĩ Việt Anh viết lời Việt, Hà Anh Tuấn trình diễn. Để thuyết phục được nhạc sĩ
        Nhật, Hà Anh Tuấn tự nhận có chút "khôn lanh". "Tôi mời ông làm đại sứ của chương trình Rừng Việt Nam vì
        biết ông yêu thiên nhiên. Ông sẽ về rừng Cúc Phương cùng êkíp tham gia quảng bá một số hoạt động của dự án
        này", anh nói. Theo ca sĩ, trong buổi trò chuyện ở Nhật Bản vào năm 2019, Kitaro nói nhiều về tình cảm của
        ông với Việt Nam khi có dịp đến đây viết nhạc cho phim Trời và đất của đạo diễn Oliver Stone. "Ông ấy bày tỏ
        mong muốn có dịp trở lại Việt Nam và tôi liền nắm bắt cơ hội này", Hà Anh Tuấn cho biết.
    </p>
    <p>
        Giám đốc sản xuất Võ Đỗ Minh Hoàng nói để mời được nhạc sĩ, công tác sản xuất phải đạt chất lượng quốc tế vì
        ông rất khó tính. Ban đầu, Kitaro yêu cầu mang toàn bộ dàn nhạc của ông từ Mỹ đến show của Hà Anh Tuấn. Nam
        ca sĩ phải thuyết phục rất lâu để ông đồng ý biểu diễn cùng dàn nhạc Việt Nam.
    </p>
    <img class="w-full h-full mt-2 rounded-lg" src="https://i1-giaitri.vnecdn.net/2022/12/26/ha-anh-tuan-1-7239-1672066793.jpg?w=1020&h=0&q=100&dpr=1&fit=crop&s=XiTgo4c716nVebvzU4n2_g" alt="">
    <p>
        Theo giọng ca sinh năm 1984, ý tưởng về Chân trời rực rỡ lóe lên trong anh cách đây bốn năm, khi đi làm từ
        thiện, thăm trẻ em khiếm thị trong chương trình Chồi Việt Nam. "Tôi tự hỏi tại sao những em bé không thấy
        ánh sáng, vẫn hát về cuộc đời một cách hạnh phúc đến như vậy. Lúc đó, tôi nghĩ sẽ thực hiện bằng được dự án
        âm nhạc này".
    </p>
    <p>
        Nhà sản xuất âm nhạc cho live concert của Hà Anh Tuấn là Võ Thiện Thanh - người từng thực hiện hai album
        Cafe sáng và Street Rhythm cho ca sĩ. Anh sẽ giới thiệu năm bài hát mới của nhạc sĩ với chất liệu world
        music. "Chưa bao giờ tôi thu âm mà vất vả đến vậy vì các nhạc phẩm của anh Võ Thiện Thanh quá khó", Hà Anh
        Tuấn nói. Kitaro sinh ngày 4/2/1953 tại Achiken, Nhật Bản. Tên thật của ông là Katahashi, còn Kitaro là biệt
        danh đặt theo tên một nhân vật phim hoạt hình Nhật. Kitaro chơi thành thạo các loại nhạc cụ như guitar, đàn
        sitar, sáo trúc, trống, keyboard cùng nhiều loại nhạc cụ truyền thống. Sau đó, ông tham gia ban nhạc của
        nhạc sĩ nổi tiếng Miyashita và lưu diễn vòng quanh thế giới.
    </p>
    <p>
        Khi ban nhạc của Miyashita tan rã năm 1976, ông một mình biểu diễn vòng quanh châu Á. Từ đó, ông chọn cho
        mình một hướng đi riêng, các album lần lượt ra đời: Tenkai (1978), Silk Road (1980). Hợp đồng ghi âm với
        hãng Geffen Record năm 1986 đưa nhạc của Kitaro đến với thị trường Mỹ, hơn 10 triệu album của ông bán hết
        trong một năm.
    </p>
    <p>
        Người Mỹ xếp nhạc Kitaro vào dòng New Age (Thời đại mới) nhưng ông thích gọi đó là nhạc tâm linh, nhiều cảm
        xúc hơn là kỹ thuật điện tử. Giai điệu vừa mãnh liệt vừa dịu dàng qua nhạc phim Trời và đất, đạo diễn Oliver
        Stone, mang lại cho ông giải Quả Cầu Vàng. Kitaro từng đoạt giải Kim Tượng (Đài Loan) và Nhạc phim hay nhất
        trong Liên hoan phim quốc tế tại Hong Kong với ca khúc The Song Sisters. Sau bảy lần được đề cử Grammy,
        album Thinking of You của ông đoạt giải Album dòng nhạc mới xuất sắc.
    </p>
    <p>
        Hà Anh Tuấn nổi tiếng khi vào top 3 Sao mai Điểm hẹn 2006. Các album Saigon Radio (2008), Cocktail (2010) và
        Street rhythm (2015) lần lượt được đề cử giải Cống Hiến. Cuối năm 2016, Hà Anh Tuấn ra mắt dự án âm nhạc See
        sing share gồm 10 tập phát hành trên Youtube. Dự án kéo theo chuỗi liveshow gây tiếng vang vào năm 2018,
        2019, 2021 như: Fragile, Sweet memories, Romance - Người đàn ông & bông hoa trên ngực trái, Truyện ngắn,
        Veston, Những vết thương lành... Giọng ca sinh năm 1984 còn gắn liền nhiều hoạt động cộng đồng.
    </p>
</div>', 13, 't', 15, 4, '2022-12-30', 'https://i1-giaitri.vnecdn.net/2022/12/26/ha-anh-tuan-1-7239-1672066793.jpg?w=1020&h=0&q=100&dpr=1&fit=crop&s=XiTgo4c716nVebvzU4n2_g');
INSERT INTO "public"."articles" OVERRIDING SYSTEM VALUE VALUES (66, 'Kết quả cầu lông World Tour Finals hôm nay 11/12 mới nhất: Yamaguchi và Axelsen vô địch', 66, 'Trực tiếp giải cầu lông World Tour Finals năm 2022 nội dung nam và nữ hôm nay. Cập nhật link xem trực tuyến cầu lông World Tour Finals cập nhật mới nhất.', '<div class="flex flex-col gap-y-2">
    <p>
        Trực tiếp giải cầu lông World Tour Finals năm 2022 nội dung nam và nữ hôm nay. Cập nhật link xem trực tuyến
        cầu lông World Tour Finals cập nhật mới nhất.
    </p>
    <p>
        Loạt trận chung kết của giải cầu lông World Tour Finals năm 2022 vô cùng hấp dẫn với những cặp đấu cân sức,
        cân tài. Nổi bật nhất trong số đó là cuộc chiến giữa số 1 thế giới Akane Yamaguchi của Nhật với cựu số 1 thế
        giới Tai Tzu Ying đến từ Đài Loan. Viktor Axelsen (Đan Mạch) vs. Anthony Sinisuka Ginting (Indonesia) có thể
        xem như trận chung kết đáng chờ đợi nhất của đơn nam lần này. Đánh bại Anthony Sinisuka Ginting nhẹ nhàng
        21-13, 21-14, số 1 thế giới Viktor Axelsen của Đan Mạch có danh hiệu thứ 8 trong năm 2022, bao gồm cả ngôi vô
        địch thế giới ở Tokyo. Thành tích của anh trong năm nay là 51 thắng và 3 thua.
    </p>
    <p>
        Ngôi sao Đan Mạch thể hiện sự tự tin đúng như trận thua H.S. Prannoy ở vòng bảng chỉ là do đấu thủ tục mà
        thôi. Đầy năng lượng và kiểm xoát cầu tốt, anh nghiền áp đối thủ tới mức sang game 2, Ginting bị dẫn với cách
        biệt 8 điểm khi bước vào quãng nghỉ kỹ thuật.  Không đảm bảo sức bền cùng sự kiên nhẫn nên mọi nỗ lực của số
        7 thế giới người Indonesia chỉ đủ giúp anh thu hẹp khoảng cách khi bị Axelsen dẫn 10 điểm tới còn thua 21-14.
    </p>
    <img class="w-full h-full mt-2 rounded-lg" src="https://cdnmedia.webthethao.vn/uploads/Chau-La/bad-yamaguchi-taitzuying-1-1212.jpg" alt="">
    <p>
        Ở đơn nữ, đương kim vô địch thế giới Akane Yamaguchi đăng quang sau khi hạ cựu số 1 thế giới người Đài Loan
        Tai Tzu Ying 21-18, 22-20. Tai Tzu Ying đánh cầu vẫn rất hay, nhưng thua do không theo kịp tốc độ của số 1
        thế giới và tự đánh hỏng vài lần. Yamaguchi tạo được 4 game point ở game 1 và dù Tai Tzu Ying cứu được vài
        game point, tay vợt Nhật vẫn giành chiến thắng. Sang game 2, Yamaguchi vẫn nắm ưu thế.
    </p>
    <p>
        Cho dù Tai Tzu Ying có những khoảnh khắc xuất thần lóe sáng nhưng vẫn không đủ để lật ngược tình thế. "Tốc độ
        của cô ấy nhanh hơn tôi, nên cô ấy tấn công hiệu quả", Tai Tzu Ying phân tích. Trung Quốc thâu tóm toàn bộ 3
        ngôi vô địch đôi. Ở nội dung đôi nam, Liu Yuchen / Ou Xuanyi thắng cặp Indonesia Mohammad Ahsan / Hendra
        Setiawan 21-17, 19-21, 21-12. Ở đôi nữ, Chen Qingchen / Jia Yifan vượt qua 2 chị em người Thái Lan Benyapa /
        Nuntakarn Aimsaard 13-21, 14-21. Ở đôi nam nữ, Zheng Siwei / Huang Yaqiong hạ cặp Thái Lan khác là Dechapol
        Puavaranukroh / Sapsiree Taerattanachai 21-19, 18-21, 21-13.
    </p>
    <p>
        Ở ngày thi đấu mở màn 11/12/2022, môn cầu lông của Đại hội thể thao toàn quốc lần thứ IX năm 2022 xác định
        xong 2 cặp đấu bán kết của đồng đội nữ. Được miễn vòng 1, TPHCM sẽ so tài cùng Thái Bình vừa thắng Hà Nội
        3-0. Trận còn lại là cuộc chiến giữa Đồng Nai với Bắc Giang. Với ngôi sao Nguyễn Thùy Linh, Đồng Nai hạ Hải
        Phòng 3-1. Bắc Giang của Trần Thị Phương Thúy tỏ ra mạnh đều hơn Đà Nẵng qua chiến thắng 3-0. Ở đồng đội nam,
        vòng tứ kết xác định mọi cặp đấu. Ngoài cặp TPHCM vs Bộ Công An được miễn vòng đầu, một cánh chim Trần Lê
        Mạnh An không đủ giúp Đồng Nai vượt qua Hải Phòng để gặp Bắc Giang. Quân Đội với các tay vợt như Lê Đức Phát
        tỏ ra quá mạnh so với Thừa Thiên Huế khi thắng 3-0 để vào tứ kết gặp Lâm Đồng. Dễ dàng hạ Bến Tre 3-0, Quảng
        Ninh đấu tứ kết với Hà Nội.
    </p>
    <p>
        Nội dung cầu lông của Đại hội thể thao toàn quốc lần thứ IX năm 2022 diễn ra từ 11-19/12 tại nhà thi đấu Thị
        xã Đông Triều, tỉnh Quảng Ninh. Nội dung thi đấu Đồng đội diễn ra từ ngày 11-14/12/2022. Nội dung thi đấu Cá
        nhân diễn ra từ ngày 15-19/12/2022. Có 18 đơn vị Tỉnh, Thành, Ngành trên toàn quốc tham dự với sự góp mặt của
        164 VĐV (99 nam, 65 nữ).  Đại hội lần này quy tụ đầy đủ các tay vợt mạnh nhất của Việt Nam. Nguyễn Tiến Minh,
        Nguyễn Hải Đăng, Nguyễn Tiến Tuấn, Lê Đức Phát thi đấu ở nội dung Đơn nam. Nguyễn Thùy Linh, Vũ Thị Trang,
        Trần Thị Phương Thúy, Vũ Thị Anh Thư thi đấu nội dung Đơn nữ.
    </p>
</div>', 10, 't', 16, 4, '2022-12-11', 'https://cdnmedia.webthethao.vn/uploads/Chau-La/bad-yamaguchi-taitzuying-1-1212.jpg');
INSERT INTO "public"."articles" OVERRIDING SYSTEM VALUE VALUES (71, 'Trường đại học trả lương theo gói, không thưởng Tết', 20, 'Việt Đức là trường đại học công lập duy nhất được biết đến ở thời điểm này trả lương cho giảng viên theo gói, không thưởng Tết Nguyên đán.', '<div class="flex flex-col gap-y-2">
    <p>
        Việt Đức là trường đại học công lập duy nhất được biết đến ở thời điểm này trả lương cho giảng viên theo gói,
        không thưởng Tết Nguyên đán.
    </p>
    <p>
        TS Hà Thúc Viên, Phó hiệu trưởng trường Đại học Việt Đức, hôm nay cho biết trường không có chính sách lương
        tháng 13 hay thưởng Tết cho giảng viên như các đại học công lập khác.
    </p>
    <p>
        "Trường trả lương theo gói, mỗi vị trí việc làm, dù là giảng viên hay nhân viên, lương được thỏa thuận theo
        năm, trên cơ sở đó chia ra để người lao động nhận từng tháng", ông Viên nói.
    </p>
    <img class="w-full h-full mt-2 rounded-lg" src="https://i1-vnexpress.vnecdn.net/2022/12/27/279438526-4994268077287927-119-2383-2031-1672113567.jpg?w=1020&h=0&q=100&dpr=1&fit=crop&s=Kf4MgpNTo0yAfOhfdMHFxQ" alt="">
    <p>
        TS Viên giải thích trường Đại học Việt Đức là mô hình đại học hợp tác với Đức, học tập từ các trường đại học
        ở nước này về hệ thống quản trị, hành chính, trong đó có chính sách tiền lương. Ngoài lương hàng tháng,
        trường hỗ trợ chi phí đồng phục. Ngày lễ Quốc khánh, 20/11, Tết Dương lịch, mỗi giảng viên, nhân viên được hỗ
        trợ 2,5 triệu đồng.
    </p>
    <p>
        Chính sách lương và các khoản hỗ trợ này được đưa vào quy chế chi tiêu nội bộ, cũng như thông báo, thỏa thuận
        với người lao động ngay từ khi phỏng vấn, ký hợp đồng, áp dụng cho cả người Việt Nam và nước ngoài. "Do đó,
        giảng viên, nhân viên không bất ngờ hay thắc mắc về việc không có thưởng Tết, lương tháng 13", ông Viên cho
        biết. PGS Trần Xuân Nhĩ, Phó chủ tịch thường trực Hiệp hội các trường đại học, cao đẳng Việt Nam, nói Đại học
        Việt Đức là mô hình hợp tác, học tập các trường đại học ở Đức nên không có chính sách thưởng Tết là bình
        thường, vì "nhập gia tùy tục".
    </p>
    <p>
        "Theo tôi biết, trường Đại học Việt Đức là trường hợp đặc biệt, duy nhất trong khối đại học công lập học tập
        cách trả lương theo gói, không có thưởng Tết Nguyên đán", ông Nhĩ nói, đánh giá chính sách lương, thưởng tùy
        vào mỗi trường. Nếu trong năm, cán bộ, giảng viên đã được trả lương xứng đáng và công khai quy chế này từ đầu
        thì không có vấn đề gì.
    </p>
    <p>
        Nhiều chuyên gia, cán bộ quản lý cũng chia sẻ chưa biết đến trường đại học công lập nào không "thưởng Tết"
        cho giảng viên, ngoài trường Đại học Việt Đức.
    </p>
    <p>
        Theo Nghị định 60 năm 2021 của Chính phủ, kết quả tài chính trong năm được các trường phân bổ vào bốn quỹ,
        gồm Phát triển hoạt động sự nghiệp (tối thiểu 25%), Bổ sung thu nhập, Khen thưởng và phúc lợi; Quỹ khác. Sau
        khi lập bốn quỹ, phần chênh lệch thu lớn hơn chi còn lại được bổ sung vào quỹ Phát triển hoạt động sự nghiệp.
        Các trường đại học tự đảm bảo hoặc đảm bảo một phần chi thường xuyên và chi đầu tư được dành tối đa 1,5-3
        tháng tiền lương, tiền công trong năm cho quỹ Khen thưởng và phúc lợi, tùy mức độ tự chủ. Do đó, các trường
        thường hỗ trợ cán bộ, nhân viên và giảng viên một hoặc hai tháng lương vào dịp Tết Nguyên đán. Nhiều người
        gọi đây là "thưởng Tết".
    </p>
    <p>
        Từ giữa tháng 12, nhiều trường đại học đã công bố mức thưởng Tết cho giảng viên, phổ biến khoảng 20 - 30
        triệu đồng, cao nhất 80 triệu đồng, tương tự như năm ngoái.
    </p>
    <p>
        Đại học Việt Đức thành lập năm 2008 trên cơ sở hợp tác giữa Chính phủ Việt Nam và Cộng hòa Liên bang Đức,
        thuộc đề án xây dựng 4 trường đại học công lập xuất sắc với đẳng cấp quốc tế tại Việt Nam. Trường đào tạo các
        ngành học được coi là thế mạnh của Đức như Kỹ thuật cơ khí, Kỹ thuật Điện và Công nghệ thông tin, Kỹ thuật
        xây dựng, Tài chính Kế toán, Quản trị Kinh doanh, Khoa học Máy tính. Đội ngũ giáo sư thỉnh giảng đến từ nhiều
        trường đại học ở Đức, ngôn ngữ giảng dạy và giao tiếp đều bằng tiếng Anh.
    </p>
</div>', 15, 'f', 28, 4, '2023-01-10', 'https://i1-vnexpress.vnecdn.net/2022/12/27/279438526-4994268077287927-119-2383-2031-1672113567.jpg?w=1020&h=0&q=100&dpr=1&fit=crop&s=Kf4MgpNTo0yAfOhfdMHFxQ');
INSERT INTO "public"."articles" OVERRIDING SYSTEM VALUE VALUES (70, 'Nhiều học sinh ''có nguy cơ tự gây thương tích''', 1, '37% số học sinh có nguy cơ tự hủy hoại bản thân, 6,1% trong số này đã tự gây thương tích, theo một nghiên cứu trên 3.480 em từ lớp 6 đến lớp 12 ở TP HCM và 9 tỉnh phía Nam khác.', '<div class="flex flex-col gap-y-2">
    <p>
        37% số học sinh có nguy cơ tự hủy hoại bản thân, 6,1% trong số này đã tự gây thương tích, theo một nghiên cứu
        trên 3.480 em từ lớp 6 đến lớp 12 ở TP HCM và 9 tỉnh phía Nam khác.
    </p>
    <p>
        Kết quả nghiên cứu được thạc sĩ Mai Mỹ Hạnh, Phó trưởng khoa Tâm lý học, trường Đại học Sư phạm TP HCM, trình
        bày tại hội thảo Chăm sóc sức khỏe tinh thần do trường Đại học Sư phạm TP.HCM tổ chức, sáng 27/12.
    </p>
    <p>
        Bà Hạnh dẫn một nghiên cứu do bà thực hiện từ năm 2020 đến nay, qua khảo sát 3.480 học sinh 10-18 tuổi tại TP
        HCM và 9 tỉnh, thành phía Nam, hơn 37% (1.289 trẻ) có nguy cơ tự hủy hoại bản thân bằng những hành động gây
        thương tích trực tiếp trên cơ thể. Tiếp tục sàng lọc lần hai với những em này, có 6,1% (213 trẻ) đã tự gây
        tổn thương cho mình, với tần suất 1-4 lần/năm.
    </p>
    <img class="w-full h-full mt-2 rounded-lg" src="https://i1-vnexpress.vnecdn.net/2022/12/27/322153379-578289467458778-7614-6333-6991-1672138627.jpg?w=1020&h=0&q=100&dpr=1&fit=crop&s=91BfqqInG73Gu_Hgq5iMDg" alt="">
    <p>
        "Trên thế giới, tỷ lệ trẻ vị thành niên có hành vi tự hủy hoại bản thân dao động khoảng 5-7%, tùy quốc gia,
        một số quốc gia châu Âu có tỷ lệ cao lên đến 12%", bà Hạnh nói, cho biết đây là vấn đề được quan tâm trên
        toàn cầu. Nhiều quốc gia đã có những biện pháp phòng ngừa vấn đề này từ rất lâu, trước khi có dịch Covid-19.
    </p>
    <p>
        Có nhiều năm làm việc tại trường phổ thông, ông Trịnh Duy Trọng, Trưởng phòng Chính trị tư tưởng, Sở Giáo dục
        và Đào tạo TP HCM, nói những học sinh có hành vi hủy hoại bản thân, tự tử thường rơi vào 3 trường hợp: Học
        sinh đã tự tử nhưng thầy cô, bố mẹ, bạn bè không nhận ra dấu hiệu nào bất thường trước đó; Học sinh đã được
        can thiệp hỗ trợ tâm lý nhưng không được; Học sinh có biểu hiện nhưng gia đình, thầy cô, bạn bè không kịp
        nhận ra.
    </p>
    <p>
        Ông Trọng đánh giá vấn đề sức khỏe tinh thần của học sinh là vấn đề nóng, phức tạp, có chiều hướng tăng lên.
        Các chuyên gia tâm lý, nhà giáo dục, phụ huynh có trách nhiệm chăm sóc sức khỏe tinh thần cho học sinh, quan
        trọng nhất là giai đoạn phòng ngừa. Thạc sĩ Mai Mỹ Hạnh đánh giá trẻ vị thành niên là một giai đoạn đặc biệt,
        chuyển tiếp từ trẻ em thành người lớn, trẻ phát triển nhanh nhưng không ổn định, đặc biệt về cảm xúc. Lứa
        tuổi này cũng có đặc điểm bộc lộc cảm xúc, cá tính thái quá, bộc phát, bốc đồng. Khi đối diện với các tác
        nhân gây tổn thương, các em nhạy cảm hơn những độ tuổi khác.
    </p>
    <p>
        Theo bà, hành vi tự hủy hoại bản thân là những suy nghĩ, hành vi tiêu cực, gây tổn thương cho bản thân, bao
        gồm cả những suy nghĩ bi quan như "tôi không đáng sống", "tôi vô dụng". Ở nghĩa hẹp, đây là những hành động
        thương tích trên cơ thể, ví dụ như rạch tay, cào cấu, bứt tóc, nhéo tay, đập đầu vào tường, cố tình ăn uống
        chất gây hại, uống thuốc ngủ, cố tình để điện giật.
    </p>
    <p>
        Từ kết quả nghiên cứu, bà Hạnh đề xuất 3 nhóm biện pháp phòng ngừa việc tự hủy hoại bản thân ở trẻ vị thành
        niên, gồm: Nâng cao nhận thức cho phụ huynh, giáo viên, trẻ vị thành niên, tích hợp các nội dung này vào
        chương trình giáo dục công dân, các hoạt động trải nghiệm ở trường học; Chăm sóc sức khỏe tinh thần cho trẻ,
        gồm tổ chức chuyên đề tâm lý, giáo dục kỹ năng sống; tham vấn tâm lý cho học sinh có nguy cơ tự hủy hoại bản
        thân.
    </p>
    <p>
        Trong khi đó, ông Trịnh Duy Trọng cho biết sắp tới Sở Giáo dục và Đào tạo và Sở Y tế TP HCM sẽ ký kết nhiều
        chương trình phối hợp về y tế học đường giai đoạn 2022-2027, trong đó chú trọng chăm sóc sức khỏe thể chất và
        tinh thần cho học sinh.
    </p>
</div>', 15, 'f', 28, 4, '2023-01-08', 'https://i1-vnexpress.vnecdn.net/2022/12/27/322153379-578289467458778-7614-6333-6991-1672138627.jpg?w=1020&h=0&q=100&dpr=1&fit=crop&s=91BfqqInG73Gu_Hgq5iMDg');
INSERT INTO "public"."articles" OVERRIDING SYSTEM VALUE VALUES (88, 'Ngủ bao nhiêu là đủ?', 1, 'Một số "cú đêm" khẳng định họ không thiếu ngủ, nhưng cũng có người ngủ nhiều hơn mức được khuyến nghị nhưng vẫn thức dậy trong tình trạng mệt mỏi.', '<div class="flex flex-col gap-y-2">
    <p>
        Một số "cú đêm" khẳng định họ không thiếu ngủ, nhưng cũng có người ngủ nhiều hơn mức được khuyến nghị nhưng
        vẫn thức dậy trong tình trạng mệt mỏi.
    </p>
    <p>
        Vậy thời lượng ngủ lý tưởng cho người trưởng thành là bao nhiêu?
    </p>
    <p>
        Chuyên gia về giấc ngủ Jacqueline Geer, giảng viên y khoa tại Trường Y - Đại học Yale (Mỹ) về khoa phổi, chăm
        sóc đặc biệt và thuốc ngủ, đã chia sẻ về câu hỏi này. Người trưởng thành trung bình cần ngủ bao nhiêu?
    </p>
    <img class="w-full h-full mt-2 rounded-lg" src="https://i1-giadinh.vnecdn.net/2022/12/28/Mat-ngu-5359-1672215319.jpg?w=1020&h=0&q=100&dpr=1&fit=crop&s=cMwff884xnGoG_TecHokUQ" alt="">
    <p>
        Tiến sĩ Geer cho biết, các khuyến nghị về giấc ngủ có xu hướng thay đổi theo độ tuổi và nhu cầu của từng cá
        nhân. Ví dụ, thời gian ngủ lý tưởng cho người trung niên và cao tuổi sẽ không giống thanh thiếu niên. Sự thay
        đổi này là do hormone melatonin trong não, được tiết ra muộn hơn vào ban đêm đối với người trẻ. Do đó, người
        trưởng thành trung bình cần ngủ 7-9 tiếng mỗi đêm, nhưng người trên 65 tuổi có xu hướng ngủ ít hơn một chút,
        trung bình từ 7-8 tiếng.
    </p>
    <p>
        Thời lượng giấc ngủ bạn cần thay đổi như thế nào khi bạn già đi?
    </p>
    <p>
        Theo Trung tâm Kiểm soát và phòng ngừa dịch bệnh Mỹ (CDC), thời gian bạn cần ngủ sẽ thay đổi khi già đi. Dưới
        đây là các đề xuất được chia nhỏ theo nhóm tuổi:
    </p>
    <p>
        Sơ sinh (0-3 tháng): 14-17 giờ
        Trẻ nhỏ (4-12 tháng): 12-16 giờ
        Trẻ mới biết đi (1-2 tuổi): 11-14 giờ
        Mẫu giáo (3-5 tuổi): 10-13 giờ
        Tuổi đi học (6-12 tuổi): 9-12 giờ
        Thanh thiếu niên (13-18 tuổi): 8-10 giờ
        Người lớn (18-60 tuổi): 7 giờ
        Người lớn (61-64 tuổi): 7-9 giờ
        Người lớn (65 tuổi trở lên): 7-8 giờ
    </p>
    <p>
        Làm thế nào bạn biết mình ngủ đủ giấc hay không?
    </p>
    <p>
        Không dễ để biết liệu bạn có ngủ đủ giấc hay không, đặc biệt nếu bạn có hấp thụ caffein hoặc uống nước tăng
        lực. Tuy nhiên, nếu bạn thấy mình thường xuyên muốn gà gật ngoài giờ ngủ thông thường, rất có thể bạn đã
        không ngủ đủ giấc vào ban đêm.
    </p>
</div>', 21, 't', 15, 4, '2022-12-30', 'https://i1-giadinh.vnecdn.net/2022/12/28/Mat-ngu-5359-1672215319.jpg?w=1020&h=0&q=100&dpr=1&fit=crop&s=cMwff884xnGoG_TecHokUQ');
INSERT INTO "public"."articles" OVERRIDING SYSTEM VALUE VALUES (40, 'Thúc đẩy tiêu thụ nông sản trên GrabMart', 18, 'Người tiêu dùng có thể mua bưởi Diễn, cam sành Tiền Giang, măng nứa khô Cao Bằng, thịt trâu gác bếp... trên GrabMart với nhiều ưu đãi.', '<div class="flex flex-col gap-y-2">
    <p>
        Người tiêu dùng có thể mua bưởi Diễn, cam sành Tiền Giang, măng nứa khô Cao Bằng, thịt trâu gác bếp... trên
        GrabMart với nhiều ưu đãi.
    </p>
    <p>
        Ngày 21/12, Trung tâm Xúc tiến Thương mại và Đầu tư - Liên minh Hợp tác xã Việt Nam (ITPC-VCA) và Grab Việt
        Nam ký kết hợp tác triển khai gian hàng trực tuyến trên GrabMart. Hợp tác nhằm thúc đẩy chuyển đổi số cho các
        hợp tác xã, hộ sản xuất kinh doanh lĩnh vực nông nghiệp, cũng như tăng cường tiêu thụ nông sản dịp Tết Nguyên
        đán 2023 đến người tiêu dùng tại Hà Nội.
    </p>
    <p>
        Theo đó, cửa hàng trực tuyến của ITPC-VCA trên GrabMart dự kiến bán các đặc sản vùng miền như bưởi Diễn, cam
        sành Tiền Giang, măng nứa khô Cao Bằng, miến dong Điện Biên, thịt trâu gác bếp, lợn gác bếp, xoài sấy dẻo Mộc
        Châu và các mâm ngũ quả, mâm cỗ truyền thống. Giai đoạn này, người dùng sẽ được ưu đãi 17.000 đồng phí giao
        hàng khi mua hàng. Về dài hạn, hai bên hợp tác triển khai các hoạt động chính như hỗ trợ nhà sản xuất nông
        nghiệp đăng ký bán hàng, vận hành và tiêu thụ nông sản trên nền tảng Grab. ITPC-VCA sẽ giới thiệu, cập nhật
        các nhà sản xuất nông nghiệp chất lượng tham gia vào gian hàng trên chợ công nghệ. Bên cạnh đó, Grab sẽ hỗ
        trợ quá trình mở gian hàng trực tuyến, hướng dẫn các nhà sản xuất nông nghiệp đăng ký tham gia và đưa các sản
        phẩm lên bán trên GrabMart, đồng thời tư vấn cách quản lý, vận hành đơn hàng thông qua nền tảng công nghệ,
        nâng cao kỹ năng số cho các nhà sản xuất nông nghiệp.
    </p>
    <img class="w-full h-full mt-2 rounded-lg" src="https://i1-kinhdoanh.vnecdn.net/2022/12/23/z3982566130450-2bcb39cc7f4de75-9255-9532-1671791510.jpg?w=1020&h=0&q=100&dpr=1&fit=crop&s=ifrYpo-xGMMYvrgFNI852w" alt="">
    <p>
        Ông Vũ Quang Phong, Tổng Giám đốc Trung tâm Xúc tiến Thương mại và Đầu tư, Liên minh Hợp tác xã Việt Nam cho
        biết: "Việc ký kết hợp tác mở gian hàng trên GrabMart là giải pháp khắc phục các khó khăn thực tiễn của hợp
        tác xã trong việc chủ động chuyển mình kinh doanh cùng nền tảng số, quản trị hệ thống, nhân sự, giúp các hợp
        tác xã có thêm kênh an toàn, hiệu quả để thúc đẩy doanh số bán hàng, tinh gọn bộ máy".
    </p>
    <p>
        Về phía Grab Việt Nam, bà Nguyễn Thị Mỹ Hạnh, Phó Giám đốc điều hành chia sẻ, hợp tác với ITPC-VCA nhằm đưa
        các sản phẩm nông sản chất lượng đến tay người dùng cả nước, từ đó tạo thêm cơ hội thu nhập cho đối tác tài
        xế, nhất là dịp Tết Nguyên đán sắp tới. "Quan trọng hơn, quan hệ hợp tác giữa hai bên còn góp phần mở ra kênh
        bán hàng mới bền vững, hiệu quả cho người nông dân và các hợp tác xã nông nghiệp, từ đó đẩy nhanh quá trình
        chuyển đổi số trong lĩnh vực nông nghiệp theo định hướng của Chính phủ", bà Mỹ Hạnh cho hay.
    </p>
    <p>
        Hoạt động hợp tác lần này nằm trong khuôn khổ biên bản ghi nhớ hợp tác 4 bên giữa Cục Chế biến và Phát triển
        thị trường nông sản (Agrotrade), Cục Phát triển Doanh nghiệp (AED), ITPC và Grab Việt Nam đã ký kết vào tháng
        6/2021,và biên bản ghi nhớ hợp tác với ITPC-VCA ký kết vào tháng 6.
    </p>
    <p>
        Với mục tiêu hỗ trợ chuyển đổi số và kết nối tiêu thụ trong lĩnh vực nông nghiệp, trong năm 2022, Grab và các
        đối tác đã triển khai nhiều chương trình đào tạo kỹ năng số và hỗ trợ chuyển đổi số cho hơn 800 hợp tác xã
        nông nghiệp tại một số tỉnh, thành phố. Đặc biệt, với chiến dịch "Lễ hội trái cây mùa hè 2022" trên GrabMart,
        Grab đã hỗ trợ tiêu thụ hơn 100 tấn trái cây đặc sản.
    </p>
</div>', 4, 't', 16, 4, '2022-12-23', 'https://i1-kinhdoanh.vnecdn.net/2022/12/23/z3982566130450-2bcb39cc7f4de75-9255-9532-1671791510.jpg?w=1020&h=0&q=100&dpr=1&fit=crop&s=ifrYpo-xGMMYvrgFNI852w');
INSERT INTO "public"."articles" OVERRIDING SYSTEM VALUE VALUES (41, 'Cơ hội nào cho nông sản Việt thâm nhập thị trường Thái?', 40, 'Đón đầu xu hướng ăn uống bảo vệ sức khỏe của người Thái, các loại trái cây, thực phẩm Việt sẽ có cơ hội thâm nhập "cường quốc nông sản" Đông Nam Á này.', '<div class="flex flex-col gap-y-2">
    <p>
        Đón đầu xu hướng ăn uống bảo vệ sức khỏe của người Thái, các loại trái cây, thực phẩm Việt sẽ có cơ hội thâm
        nhập "cường quốc nông sản" Đông Nam Á này.
    </p>
    <p>
        Vốn mạnh về nông sản thô và sau chế biến, Thái Lan là thị trường không dễ để các thực phẩm Việt thâm nhập.
        Hiện mới có khoảng 5 loại trái cây tươi (thanh long ruột trắng và ruột đỏ, vải, nhãn, xoài) của Việt Nam được
        xuất sang đây.
    </p>
    <p>
        Theo ghi nhận của VnExpress tại siêu thị thực phẩm thuộc trung tâm thương mại CentralWorld (Bangkok) hôm
        17/11, một số loại trái cây của Việt Nam như thanh long có giá 119 baht (82.000 đồng) một kg; nhãn giá 139
        baht (96.000 đồng), khoai lang giá 99 baht (68.000 đồng).
    </p>
    <img class="w-full h-full mt-2 rounded-lg" src="https://i1-kinhdoanh.vnecdn.net/2022/11/18/dsc03838-1668707153-2843-1668707734.jpg?w=1020&h=0&q=100&dpr=1&fit=crop&s=NrJAXwwhOuFqsvWG_DrkoA" alt="">
    <p>
        Các thương hiệu thực phẩm đóng gói của Việt Nam cũng vào thị trường này chưa nhiều, hiện có một số loại như
        Mr.Viet (cà phê), Bibica, Vifon, Trung Nguyên, Vinamit, Hải Bình (hạt điều), ChinsuFoods, Hồ Tiêu Việt...
    </p>
    <p>
        Năm ngoái, Thái Lan là đối tác thương mại lớn nhất của Việt Nam trong ASEAN với kim ngạch cao kỷ lục 19 tỷ
        USD, tăng 18% so với 2020. Mười tháng đầu năm, kim ngạch thương mại đạt 17,8 tỷ USD, tăng 16,9%. Tuy nhiên,
        kim ngạch hàng Việt xuất qua Thái Lan mới chiếm khoảng một phần ba số này. Dù vậy, đã có những triển vọng mới
        mở ra khi xu hướng tiêu dùng của người Thái thay đổi và mức độ chuyên nghiệp của doanh nghiệp Việt cải thiện
        qua từng năm. Ông Paul Le, Phó chủ tịch Central Retail Việt Nam, cho biết cơ hội của Việt Nam ở chỗ người
        Thái ngày càng quan tâm đến các sản phẩm có lợi cho sức khỏe.
    </p>
    <p>
        Đó cũng là lý do khiến những sản phẩm đánh vào tâm lý bảo vệ sức khỏe của các doanh nghiệp Việt tham gia Tuần
        hàng tại Thái Lan 2022, được chú ý. "Năm nay, chúng tôi đẩy mạnh những sản phẩm liên quan đến sức khỏe, hữu
        cơ", ông Paul Le nói.
    </p>
    <p>
        Theo nghiên cứu thị trường của Mintel (Anh) cuối năm ngoái, 70% người tiêu dùng Thái Lan được hỏi cho biết
        đang cố gắng ăn uống cân bằng để ảnh hưởng tích cực đến sức khỏe. Một tỷ lệ tương tự cho biết đang tiêu thụ
        thực phẩm và đồ uống có thêm lợi ích sức khỏe. Tiếp xúc ba nhà thu mua của Thái Lan trong buổi kết nối cung -
        cầu ngày 17/11, Nguyễn Ngọc Hương, Giám đốc Thực phẩm Quảng Thanh, chuyên sản xuất bột rau má, diếp cá, tía
        tô, chùm ngây, lá sen...cho biết triển vọng rất khả quan. "Người Thái dần nhận thức về sức khỏe nhiều hơn và
        bột rau má được chào đón. Chúng tôi thấy một bầu trời hy vọng", Hương nói.
    </p>
    <p>
        Sang Thái Lan lần này, ông Lê Văn Duy, Giám đốc Delta D''Asia, khảo sát vài siêu thị để tìm hiểu thị trường
        trà thảo dược. "Tôi thấy có xu hướng bày bán các mặt hàng tốt cho sức khỏe trong siêu thị nhưng sản phẩm cạnh
        tranh trực tiếp với mình thì chưa có", ông nói và cho biết đã nhận được phản hồi tích cực của một số nhà thu
        mua về trà sâm cau, trái nhàu của công ty.
    </p>
    <p>
        Bên cạnh đó, những sản phẩm mang tính độc đáo mà Thái Lan còn thiếu hoặc chưa có cũng dễ có cơ hội thâm nhập
        hơn. Bột rong nho hay hạt macca là những ví dụ.
    </p>
    <p>
        Công ty Seagrapes Việt Nam, sở hữu thương hiệu Rong Nho Trường Thọ, nhận được lời mời kết nối từ sáu nhà thu
        mua trong tổng số 26 đơn vị tham gia buổi kết nối với doanh nghiệp Việt. Phó giám đốc Nguyễn Thị Thanh Thuần
        cho biết đơn vị đầu tiên gặp công ty đã cân nhắc nhập thử hàng vào đầu năm sau.
    </p>
    <p>
        "Ở Thái cũng có sản xuất rong nho nhưng mặt hàng này của Việt Nam được các chuyên gia Nhật đánh giá là tốt
        nhất", bà Thuần cho biết lý do sản phẩm công ty có sức hút.
    </p>
    <p>
        Với những sản phẩm quen thuộc hơn, Võ Thị Thanh Huyền, Giám đốc Sales & Marketing công ty chuyên về gia vị,
        muối chấm Dh Foods, cũng thấy có cơ hội nhờ những dòng sản phẩm đặc trưng. "Thái Lan là thiên đường ẩm thực
        và đồ ăn, kể cả gia vị. Tuy nhiên, Việt Nam vẫn có lợi thế và cung cấp thêm những sản phẩm đặc trưng riêng",
        Thanh Huyền nhận định.
    </p>
    <p>
        Ngoài ra, cánh cửa vào thị trường Thái rộng đến đâu còn phụ thuộc vào độ chuyên nghiệp của những doanh nghiệp
        đó, từ chất lượng đến bao bì và sẵn sàng các tiêu chuẩn kỹ thuật cần thiết. Vì vậy, những tên tuổi có kinh
        nghiệm xuất khẩu quốc tế sẽ có nhiều cơ hội.
    </p>
    <p>
        Bản thân Dh Foods đã xuất khẩu được 10 thị trường trong đó có Nhật, Anh, Australia. "Xuất khẩu của chúng tôi
        sang các nước này đang tăng đáng kể nên cũng có kinh nghiệm làm hàng chỉnh chu hơn", Huyền nói.
    </p>
    <p>
        Hay như thương hiệu Rong Nho Trường Thọ có thị trường chủ lực là Mỹ, bên cạnh các thị trường Đức, Anh, Pháp.
        Chỉ riêng doanh thu trên kênh Amazon đã mang về cho công ty này doanh thu hàng triệu USD mỗi năm...
    </p>
    <p>
        Dù đã chinh phục được một số thị trường xa và khó tính, một số nhà sản xuất cho rằng thị trường Thái vẫn rất
        quan trọng. Bà Thanh Thuần cho hay việc gặp gỡ các nhà thu mua Thái Lan sẽ giúp sản phẩm có tiềm năng được họ
        kết nối đi đến những thị trường quốc tế khác.
    </p>
    <p>
        Trong khi đó, ông Lê Văn Duy, Giám đốc Delta D''Asia, coi trọng ngành du lịch Thái. "Tỷ lệ khách quay lại đây
        cao nếu họ đến nhiều thì sự lan tỏa từ đây cho sản phẩm của mình rất tốt", ông Duy phân tích. Cơ hội là có
        nhưng hành trình thâm nhập vẫn sẽ không dễ dàng. Bà Hoàng Thị Thanh Thủy, Giám đốc kinh doanh quốc tế của TH
        cho biết các loại đồ uống hữu cơ và thảo dược của công ty được các nhà thu mua quan tâm. "Tuy nhiên, cái khó
        là thuế nhập khẩu khá cao", bà Thủy chia sẻ.
    </p>
    <p>
        Để ứng phó, công ty bà dự tính chi một khoản ngân sách cho tiếp thị kích thích nhu cầu. Còn theo Nguyễn Thị
        Nguyên Phương, thách thức này có thể vượt qua nếu sản phẩm đủ tốt và hấp dẫn để người tiêu dùng sẵn sàng chi
        trả.
    </p>
    <p>
        Ngày 16/11, trong cuộc hội đàm với Thủ tướng Thái Lan Prayut Chan-ocha nhân chuyến thăm nước này, Chủ tịch
        nước Nguyễn Xuân Phúc đã đề nghị Thái hạn chế áp dụng các biện pháp phòng vệ thương mại và tạo thuận lợi cho
        hàng nông sản Việt Nam tiếp cận thị trường.
    </p>
    <p>
        Hai bên cũng đã cam kết phấn đấu đưa kim ngạch thương mại song phương sớm đạt mục tiêu 25 tỷ USD theo hướng
        cân bằng hơn.
    </p>
    <p>
        Cơ hội đang đến, thách thức cũng dần có hướng tháo gỡ, điều phải lưu ý lúc này theo ông Paul Lê là các doanh
        nghiệp Việt Nam nghiên cứu thêm nhiều sản phẩm chế biến hơn, phát huy sự tự tin sẵn có. "5 năm nay với chương
        trình Tuần hàng, doanh nghiệp Việt đã có những thay đổi lớn. Họ không còn e ngại, thay vào đó là sự tự tin và
        đã có thể kể được câu chuyện của sản phẩm mình", ông Paul Lê nhận xét.
    </p>
</div>', 4, 't', 27, 4, '2022-11-18', 'https://i1-kinhdoanh.vnecdn.net/2022/11/18/dsc03838-1668707153-2843-1668707734.jpg?w=1020&h=0&q=100&dpr=1&fit=crop&s=NrJAXwwhOuFqsvWG_DrkoA');
INSERT INTO "public"."articles" OVERRIDING SYSTEM VALUE VALUES (45, 'Hải sản Phan Thiết dồi dào, giá rẻ', 34, 'BÌNH THUẬN Ngư dân được ra khơi trở lại, lượng hải sản đưa về các bến cá ở Phan Thiết dồi dào, nhưng giá thấp do ảnh hưởng bởi dịch bệnh.', '<div class="flex flex-col gap-y-2">
    <p>
        BÌNH THUẬN Ngư dân được ra khơi trở lại, lượng hải sản đưa về các bến cá ở Phan Thiết dồi dào, nhưng giá thấp
        do ảnh hưởng bởi dịch bệnh.
    </p>
    <p>
        Ba hôm nay, nhiều tàu cá ở xứ biển Phan Thiết hoạt động trở lại sau khi địa phương này hạ mức giãn cách từ áp
        dụng Chỉ thị 16 xuống mức Chỉ thị 15. Sáng 11/9, ghe đánh cá 10 người của ông Đỗ Văn Năm cập cảng Phú Hài,
        đưa vào hơn 500 kg cá nục và cá ngân. Cá ngân được vựa thu mua 15.000, còn cá nục 35.000 một kg.
    </p>
    <p>
        "Giá rẻ, nhưng nhờ bán được nên bù lại, trừ chi phí, chia ra mỗi người cũng được vài trăm nghìn", ông Năm cho
        hay.
    </p>
    <img class="w-full h-full mt-2 rounded-lg" src="https://i1-vnexpress.vnecdn.net/2021/09/12/dsc01127-jpg-1631428396-1161-1631428612.jpg?w=1020&h=0&q=100&dpr=1&fit=crop&s=yb1zr8VI0vsViFHpbHctPg" alt="">
    <p>
        Dọc bến, các ghe khác cũng đưa hải sản lên bán với đủ loại như: bạc má, trao tráo, chỉ vàng, nhồng, thu, mực
        lá, tôm, ghẹ, ốc hương... Có ghe đánh hai hôm vào, có ghe vào buổi chiều ra khơi đến sáng lại vào. Ghe nào
        cũng trúng.
    </p>
    <p>
        Các thương buôn, chủ cơ sở làm mắm, chế biến cá khô... ra bến chọn mua những giỏ cá tươi ngon. Ông Lê Văn Quý
        ở phường Thanh Hải mua hơn 2 tạ (200 kg) cá bạc má để làm mắm con. "Đây là thời điểm cá béo và rẻ, nên tranh
        thủ ra mua đưa về làm ngay", ông Quý nói. Chị Đoàn Kim Anh, một người buôn cá ở Phan Thiết cũng mua hơn 3 tạ
        cá bạc má và cá chỉ vàng. Chị thuê xe chở về, đóng thùng để chuyển vào bán cho các mối hàng ở Sài Gòn.
    </p>
    <p>
        "Mấy hôm nay cá nhiều, cũng nhờ liên hệ được xe chở hàng vào trong đó, nên buôn bán cũng được", chị Kim Anh
        cho hay.
    </p>
    <p>
        Hiện, giá mỗi kg mua tại bến của cá bạc má là 355.000 đồng, cá nhồng 40.000 đồng, cá nục 35.000-40.000 đồng,
        cá bã trầu 55.000-60.000 đồng, cá thu 110.000-120.000 đồng, cá ngân 15.000-20.000 đồng, mực ống
        200.000-220.000 đồng...
    </p>
    <p>
        So với lúc dịch chưa bùng phát mạnh, mức giá này rẻ hơn từ 10.000 đến 25.000 đồng một kg, tùy loại. Ngoài các
        bến cá truyền thống ven các làng chài, Phan Thiết hiện có hai cảng cá tiếp nhận ghe tàu công suất lớn vào bán
        hải sản, gồm: Phú Hài và Phan Thiết. Tại hai cảng này, mỗi ngày có khoảng 60 chiếc chở hải sản vào bán với
        sản lượng trên 80 tấn.
    </p>
    <p>
        "Nguồn tiêu thụ tuy có chậm và giá bán thấp, nhưng bà con ngư dân đều bán hết, không xảy ra tình trạng ùn ứ
        hàng tại bến cảng", ông Nguyễn Hoài Tiến, Giám đốc Ban quản lý các cảng cá Phan Thiết cho biết.
    </p>
</div>', 5, 'f', 28, 4, '2022-09-11', 'https://i1-vnexpress.vnecdn.net/2021/09/12/dsc01127-jpg-1631428396-1161-1631428612.jpg?w=1020&h=0&q=100&dpr=1&fit=crop&s=yb1zr8VI0vsViFHpbHctPg');
INSERT INTO "public"."articles" OVERRIDING SYSTEM VALUE VALUES (93, 'Thế giới chưa lập tức ồ ạt đón du khách Trung Quốc', 0, 'Việc Trung Quốc sắp mở biên làm dấy lên hy vọng ngành kinh doanh du lịch tỷ USD của nước này sớm trở lại nhưng các quốc gia có thể sẽ phải đợi thêm.', '<div class="flex flex-col gap-y-2">
    <p>
        Việc Trung Quốc sắp mở biên làm dấy lên hy vọng ngành kinh doanh du lịch tỷ USD của nước này sớm trở lại
        nhưng các quốc gia có thể sẽ phải đợi thêm.
    </p>
    <p>
        Có nhiều lý do thế giới chưa thể đón khách Trung Quốc ồ ạt ngay lập tức. Đầu tiên là sự thận trọng từ
        chính quyền. Hiện không có hạn chế chính thức nào với người dân muốn ra nước ngoài. Tuy nhiên, chính
        quyền cho biết, du lịch quốc tế chưa thể ồ ạt, mà cần "đi một cách có trật tự". Chính phủ không nói rõ
        "đi một cách có trật tự" là thế nào.
    </p>
    <p>
        Điều tiếp theo đến từ chính người dân. Tom Guo, 43 tuổi, sống ở Bắc Kinh, cho biết: "Thật tuyệt khi có
        thông báo mở cửa. Tôi đã có thể thực hiện kế hoạch của mình". Nhưng Guo cũng khẳng định chắc chắn sẽ
        không đi đâu trước kỳ nghỉ Tết Nguyên đán vào cuối tháng một mà sẽ đợi đến cuối mùa xuân 2023 hoặc thậm
        chí là hè mới ra nước ngoài. Anh dự kiến đến Mỹ để thăm chị gái. Liu Simin ở Hiệp hội Nghiên cứu Tương
        lai Trung Quốc, một viện nghiên cứu có trụ sở tại Bắc Kinh, cho biết phải tới 2024, du lịch quốc tế mới
        phục hồi như trước đại dịch. Liu chỉ ra nhiều người vẫn lo ngại việc đi du lịch sẽ tạo ra làn sóng lây
        nhiễm mới, nặng hơn hoặc lớn hơn.
    </p>
    <img class="w-full h-full mt-2 rounded-lg" src="https://i1-dulich.vnecdn.net/2022/12/28/TQ-4513-1672203619.jpg?w=1020&h=0&q=100&dpr=1&fit=crop&s=yrqO0ZOnWyN4tFRdjDZOxw" alt="">
    <p>
        Một vấn đề nữa là tiền. "Mọi người cần có thời gian. Rất nhiều người mất việc, thu nhập giảm trong dịch",
        Liu nói. Trong một nghiên cứu về người tiêu dùng được công bố tháng 12, Công ty tư vấn Oliver Wyman chỉ
        ra hơn 50% người Trung Quốc sẽ đợi 6-12 tháng mới sẵn sàng đi du lịch lại tính từ lúc mở biên.
    </p>
    <p>
        "Cần có thời gian" là điều mà nhiều chuyên gia nhận định, sau thông tin mở cửa biên giới. VariFlight, ứng
        dụng theo dõi chuyến bay, cho biết dự kiến các chuyến đến và đi từ Trung Quốc sẽ chỉ phục hồi mạnh vào kỳ
        nghỉ lễ Quốc tế Lao động tháng 5, chứ không phải trước đó. Dữ liệu của VariFlight chỉ ra các chuyến bay
        đến và đi từ Trung Quốc hiện chỉ ở mức 8% so với trước dịch.
    </p>
    <p>
        Trung Quốc là thị trường du lịch nước ngoài lớn nhất thế giới trước Covid-19. Khách Trung Quốc khi đi du
        lịch chi 127,5 tỷ USD, đứng đầu thế giới năm 2019. Với những ưu thế trên, dù biết khách Trung chưa thể đi
        du lịch ngay, các hãng hàng không lớn trên thế giới vẫn bắt đầu lên kế hoạch mở rộng đường bay sau 8/1.
    </p>
    <p>
        Hãng hàng không Mỹ United Airlines đang đánh giá nhu cầu thị trường để xác định thời điểm nối lại các
        chuyến bay bổ sung đến đại lục. Hãng đang khai thác bốn chuyến một tuần giữa San Francisco và Thượng Hải.
        Lufthansa của Đức cũng đang xem xét khả năng thay đổi lịch bay đến Trung Quốc sau 8/1. "Điều này góp phần
        phục hồi giao thông hàng không quốc tế giữa Trung Quốc và châu Âu", đại diện hãng nói.
    </p>
    <p>
        TUI, một hãng bay của Anh, hy vọng chính sách nới lỏng mới "sẽ có tác động tích cực đến các chuyến bay
        đang bị hạn chế đến Trung Quốc".
    </p>
    <p>
        Nhà bán lẻ miễn thuế Dufry cho rằng những thay đổi mới có "tác động tích cực tại các sân bay mà người
        Trung Quốc đặt chân đến, và nơi chúng tôi có mặt".
    </p>
</div>', 23, 'f', 15, 4, '2023-01-07', 'https://i1-dulich.vnecdn.net/2022/12/28/TQ-4513-1672203619.jpg?w=1020&h=0&q=100&dpr=1&fit=crop&s=yrqO0ZOnWyN4tFRdjDZOxw');
INSERT INTO "public"."articles" OVERRIDING SYSTEM VALUE VALUES (96, 'Loạt sự kiện đón giao thừa tại Phú Quốc', 66, 'Thị trấn Hoàng Hôn phía nam đảo sẽ là địa điểm diễn ra sự kiện đếm ngược chào năm mới 2023.', '<div class="flex flex-col gap-y-2">
    <p>
        Thị trấn Hoàng Hôn phía nam đảo sẽ là địa điểm diễn ra sự kiện đếm ngược chào năm mới 2023.
    </p>
    <p>
        New Year Countdown 2023 - Hành trình của hạnh phúc là chương trình đếm ngược đón chào năm mới tại các đầu cầu
        trên cả nước, được phát trực tiếp trên VTV1 từ 22h ngày 31/12 đến 0h30 ngày 1/1/2023. Hai điểm cầu chính là
        Hà Nội và Phú Quốc. Khoảnh khắc quan trọng nhất - đếm ngược đón năm mới, sẽ diễn ra tại quảng trường Ánh
        Dương, thị trấn Hoàng Hôn (An Thới, Phú Quốc) trong màn trình diễn pháo hoa rực rỡ.
    </p>
    <p>
        Tại điểm cầu Phú Quốc, sân khấu New Year Countdown 2023 được dàn dựng công phu, với quy mô khán đài hơn 1.500
        chỗ. Nhiều nghệ sĩ, ca sĩ, người nổi tiếng sẽ xuất hiện trong chương trình như đạo diễn Việt Tú, nhạc sĩ Huy
        Tuấn, Tùng Dương, Văn Mai Hương, Bùi Lan Hương, Ngọc Mai, Hoàng Tôn, nhóm OPlus, Wren Evans, Vũ Thảo My, Lê
        Minh Ngọc, MC Danh Tùng, MC Mỹ Lan...
    </p>
    <img class="w-full h-full mt-2 rounded-lg" src="https://i1-dulich.vnecdn.net/2022/12/28/San-khau-hoanh-trang-cua-chuon-8560-3209-1672203175.jpg?w=1020&h=0&q=100&dpr=1&fit=crop&s=R5-bcu26Il1T8IJS8Vx22Q" alt="">
    <p>
        Theo ban tổ chức, chương trình tại các điểm cầu bao gồm 3 chương: Đón bình minh, Đi về phía mặt trời, Hành
        trình của hạnh phúc.
    </p>
    <p>
        "Đây sẽ là bữa tiệc nghệ thuật đa sắc màu, với những câu chuyện truyền cảm hứng về một năm phục hồi ấn tượng
        sau đại dịch của Việt Nam, lan tỏa tinh thần lạc quan và đầy hy vọng, hướng tới năm 2023 bứt phá", đại diện
        ban tổ chức cho biết.
    </p>
    <p>
        Mở đầu chương trình là video clip Hành trình của hạnh phúc, ghi lại cảm xúc rạng rỡ và hân hoan của mọi người
        sau thời gian dài ảnh hưởng bởi đại dịch Covid-19. Ở đó, Phú Quốc là đích đến sống động, thắp lên những hy
        vọng cho một năm mới.
    </p>
    <p>
        Nối tiếp hành trình là những giai điệu vui tươi như Take me to the sun, Cánh mặt trời, Thích em hơi nhiều,
        Chuyện tình biển xanh, Túy âm... Bài hát Khúc giao mùa quen thuộc sẽ được hòa tấu lại theo phong cách opera
        qua hai giọng ca nội lực Tùng Dương và Bùi Lan Hương.
    </p>
    <p>
        Điểm nhấn trong chương trình New Year Countdown 2023 tại điểm cầu Phú Quốc còn là tiết mục Chasing to the
        Sun. 70 nghệ sĩ quốc tế sẽ tham gia tiết mục này, trên sân khấu nhạc nước của show diễn Kiss The Stars - Nụ
        hôn giữa ngàn sao vừa ra mắt hôm 23/12. Cũng tại điểm cầu nơi thành phố biển đảo, khán giả có thể chiêm
        ngưỡng show trình diễn công nghệ đa phương tiện Kiss The Stars - bữa tiệc của ánh sáng laser, nước, lửa, âm
        nhạc...
    </p>
    <p>
        Show diễn có màn hình nước biển diện tích gần 1.000 m2; hệ thống 3 vòm chiếu liên tục, khán đài 5.000 chỗ
        ngồi (gấp đôi quy mô các show diễn lớn khác trong khu vực)... Ngoài quy mô lớn, điểm nhấn còn là câu chuyện
        tình yêu đan xen giữa hư và thực, những hiệu ứng tương tác vừa chân thực, vừa sống động cùng khán giả trên
        khán đài.
    </p>
</div>', 23, 't', 27, 4, '2022-12-28', 'https://i1-dulich.vnecdn.net/2022/12/28/San-khau-hoanh-trang-cua-chuon-8560-3209-1672203175.jpg?w=1020&h=0&q=100&dpr=1&fit=crop&s=R5-bcu26Il1T8IJS8Vx22Q');
INSERT INTO "public"."articles" OVERRIDING SYSTEM VALUE VALUES (15, 'Đỗ Long: ''Tôi tiết chế sau khi bị chỉ trích thiết kế đồ hở hang''', 15, 'Nhà thiết kế Đỗ Long tiết chế thực hiện váy áo cắt xẻ quá đà sau nhiều lần bị chỉ trích làm trang phục phản cảm.', '<div class="flex flex-col gap-y-2">
    <p>
        Nhà thiết kế Đỗ Long tiết chế thực hiện váy áo cắt xẻ quá đà sau nhiều lần bị chỉ trích làm trang phục phản
        cảm.
    </p>
    <p>
        Ngày 29/12, Đỗ Long sẽ giới thiệu bộ sưu tập Obsession, kỷ niệm sáu năm hoạt động làng thời trang. Dịp này,
        nhà thiết kế nói về nghề, cuộc sống.
    </p>
    <p>
        - Nhìn lại chặng đường từ lúc khởi nghiệp đến nay, anh thấy bản thân thay đổi gì?
    </p>
    <img class="w-full h-full mt-2 rounded-lg" src="https://i1-giaitri.vnecdn.net/2022/12/14/Do-Long-2-2654-1671012237.jpg?w=1020&h=0&q=100&dpr=1&fit=crop&s=o71M49LEE0iDrndaCGcfmA" alt="">
    <p>
        - Tôi trưởng thành sau khó khăn ở bước đầu lập nghiệp, đối mặt áp lực dư luận. Tôi từng là nhân viên bán
        quảng cáo, dần chuyển qua stylist. Công việc giúp tôi tạo mối quan hệ với các nghệ sĩ. Năm 2016, tôi chuyển
        qua thiết kế dù không được đào tạo trường lớp. Tôi học hỏi từ nhân viên, người xung quanh, nếu có thắc mắc sẽ
        hỏi đến cùng thay vì giấu dốt.
    </p>
    <p>
        Tôi chưa bao giờ bế tắc trong cảm hứng làm việc nhưng áp lực phải làm điều mới, trở thành phiên bản tốt hơn.
        Nhiều năm qua, tôi theo đuổi thiết kế đồ gợi cảm. Để xây dựng được thương hiệu, tôi tin mình đã nỗ lực, hướng
        tới sự chuyên nghiệp. - Phong cách thiết kế hiện tại của anh khác gì so với lúc mới vào nghề?
    </p>
    <p>
        - Năm 2018, tôi vướng scandal thiết kế đồ cho Ngọc Trinh dự Cannes, bị nhiều người mắng vì phản cảm. Mỗi ngày
        tôi nhận hàng nghìn tin nhắn, thậm chí có người gọi điện trực tiếp để lăng mạ. Tôi sốc, nhận ra bản thân cần
        hoàn thiện về tư duy hơn, nên chọn cách im lặng để mọi chuyện lắng xuống.
    </p>
    <p>
        Sau sự việc, tôi học cách tiết chế yếu tố gợi cảm khi làm trang phục. Sự thay đổi không đồng nghĩa đánh mất
        đặc trưng cá nhân. Trước khi bắt tay làm, tôi xem xét kỹ làn da, ưu điểm hình thể, tính chất sự kiện của
        khách để lựa chọn chất liệu, phom dáng thích hợp. Nhiều trường hợp, khi thử đồ ở showroom, mọi thứ đều ổn,
        nhưng lúc đứng dưới ánh đèn sân khấu hoặc flash máy ảnh, có thể gây hiệu ứng ngược.
    </p>
    <p>
        Tôi vốn mạnh về đính kết. Trước đây, tôi phát huy điểm này ở những bố cục chung, hiện phát triển theo nhiều
        kiểu khác nhau, hợp thời trang hiện đại, cập nhật xu hướng. - Anh nói gì khi nhiều lần bị tố cáo đạo nhái?
    </p>
    <p>
        - Tôi không bắt chước phong cách của ai. Gần đây, nhiều người so sánh tôi với với các nhà mốt, tag tài khoản
        mạng xã hội của tôi vào video. Tôi im lặng vì thấy đôi co qua lại không phải cách hay. Tôi tin sản phẩm làm
        ra đầu tư mức độ nào, nghệ sĩ mặc lên đẹp hay xấu sẽ là câu trả lời rõ nhất.
    </p>
    <p>
        Thiết kế của tôi thường lấy cảm hứng từ chính nghệ sĩ mình hợp tác. Chẳng hạn, với chị Lý Nhã Kỳ, thường gắn
        hình ảnh sang trọng, quý phái, khi thực hiện tôi thường bám vào đó để làm bật phong cách.
    </p>
    <p>
        - Anh nói gì trước nhận xét "Đỗ Long khó tính, không phải ai muốn làm việc chung cũng được"?
    </p>
    <p>
        - Khi nhiều người nói tôi mới thấy đúng là mình khó tính thật. Trong công việc, chỉ cần một chi tiết sai,
        không vừa mắt, tôi sẽ bắt làm lại bằng được, dù gấp đến mức nào.
    </p>
    <p>
        Tôi từng từ chối nhiều sao hạng A vì thái độ, cách làm việc thiếu chuyên nghiệp. Họ nghĩ có tiền là có thể
        làm mọi thứ nhưng tôi ghét suy nghĩ đó. Vật chất không phải là điều kiện cốt lõi để tôi gắn bó với ai đó. Làm
        việc với tôi rất dễ nếu người đó biết điều. Chẳng hạn, bạn không là ai trong giới hay chỉ là người quen giới
        thiệu, nếu lễ phép, tôn trọng nhà thiết kế, tôi vẫn sẵn sàng hỗ trợ.
    </p>
    <p>
        Trong nghề, tôi chưa bao giờ gặp trường hợp bị ăn hiếp. Nhiều người nhận xét Đỗ Long đanh đá. Tôi không phủ
        nhận vì thấy đúng với một phần tính cách. Có thể do tôi dữ dằn nên chẳng ai dám đụng tới.
    </p>
    <p>
        Tôi tôn trọng sự thật, sống không thảo mai. Ai mặc đồ của tôi nhưng phối phụ kiện không hợp, tôi nói thẳng.
        Lời tôi nói ra, ai có tinh thần cầu thị, không giận mới có thể tiếp tục gắn bó. - Làm việc cùng nhiều mỹ nhân
        trong showbiz, anh thấy ăn ý nhất với ai?
    </p>
    <p>
        - Thời gian đầu vào nghề, tên tuổi tôi gắn với Ngọc Trinh, Phạm Hương... Về sau, tôi làm việc nhiều cùng chị
        Lý Nhã Kỳ, Chi Pu, Thùy Tiên... Mỗi người cho tôi cảm nhận riêng. Chúng tôi chưa bao giờ nói điều hoa mỹ,
        tung hô nhau. Nếu ai cần hỗ trợ công việc lẫn cuộc sống cá nhân, hiếm khi nửa kia nói lời từ chối.
    </p>
    <p>
        Khi làm đồ cho họ tôi đặt nhiều công sức, tâm huyết, thậm chí chiều chuộng nếu muốn sửa chi tiết trên trang
        phục. Tôi không tính toán về tiền bạc, thậm chí chấp nhận lỗ để họ đẹp nhất khi xuất hiện.
    </p>
    <p>
        Nghệ sĩ ai cũng có tính cách riêng, phải thấu hiểu và học hỏi lẫn nhau, mối quan hệ mới bền. Như Ngọc Trinh,
        cô ấy vốn nóng tính, nói chuyện cộc lốc, dễ khiến người khác nghĩ vô duyên. Tuy nhiên, tôi thấy bên trong
        Trinh sống tình cảm. Còn Phạm Hương, tôi học được từ cô ấy tính chuyên nghiệp. Hương là người cầu toàn, nếu
        phải sửa hay thử trang phục nhiều lần vẫn chấp nhận.
    </p>
    <p>
        - Khi làm show, anh đầu tư tiền bạc ra sao?
    </p>
    <p>
        - Từ trước đến nay, mỗi show diễn tôi thường đầu tư hàng tỷ đồng. Tôi không quá giàu nhưng biết cân đối, nhìn
        xa. Nếu tổ chức sự kiện mà giúp tên tuổi, thương hiệu được mọi người biết đến hơn, dù có lỗ cũng làm.
    </p>
    <p>
        Ở show Obsession sắp tới, tôi nhận ra phong cách disco đang trở lại, hợp định hướng cá nhân. Ngoài trang
        phục, tôi sẽ đầu tư cho sân khấu, màn trình diễn của người mẫu nhằm tạo bất ngờ cho khách mời.
    </p>
</div>', 14, 't', 16, 4, '2022-12-29', 'https://i1-giaitri.vnecdn.net/2022/12/14/Do-Long-2-2654-1671012237.jpg?w=1020&h=0&q=100&dpr=1&fit=crop&s=o71M49LEE0iDrndaCGcfmA');
INSERT INTO "public"."articles" OVERRIDING SYSTEM VALUE VALUES (22, 'Thí điểm dùng cát biển đắp nền cao tốc Bắc Nam', 3, 'Cát biển sẽ được thí điểm làm vật liệu đắp nền đường với một số đoạn cao tốc Hậu Giang - Cà Mau giai đoạn 2021-2025.', '<div class="flex flex-col gap-y-2">
    <p>
        Cát biển sẽ được thí điểm làm vật liệu đắp nền đường với một số đoạn cao tốc Hậu Giang - Cà Mau giai đoạn
        2021-2025.
    </p>
    <p>
        Tại họp báo chiều 28/12 ở Hà Nội, ông Nguyễn Tiến Minh, Phó cục trưởng Quản lý đầu tư xây dựng, Bộ Giao thông
        Vận tải, cho biết nguồn cát biển tại đồng bằng sông Cửu Long cơ bản đáp ứng yêu cầu về thành phần hạt đắp nền
        đường. Cơ quan chuyên môn đang đánh giá ảnh hưởng nhiễm mặn của cát biển đối với môi trường xung quanh.
    </p>
    <p>
        Bộ Giao thông Vận tải đã giao Ban Quản lý dự án Mỹ Thuận thí điểm dùng cát biển làm vật liệu đắp nền đường
        đoạn cao tốc Hậu Giang - Cà Mau. Sau khi quan trắc, nếu đáp ứng yêu cầu, Bộ Tài nguyên và Môi trường sẽ làm
        thủ tục cấp phép cho các đơn vị khai thác. "Cuối năm 2023, cơ quan chuyên môn mới đánh giá được kết quả
        nghiên cứu cát biển. Trước mắt, Bộ vẫn sử dụng cát sông từ 4 địa phương có nguồn cát dồi dào để triển khai
        cao tốc Bắc Nam", ông Minh nói.
    </p>
    <img class="w-full h-full mt-2 rounded-lg" src="https://i1-vnexpress.vnecdn.net/2022/12/28/bo-gt-1741-1672231386.jpg?w=1020&h=0&q=100&dpr=1&fit=crop&s=3774rKhnWWBgtvCRgFEnyQ" alt="">
    <p>
        Giai đoạn 2021-2025, đồng bằng sông Cửu Long có 4 dự án cao tốc, gồm: Cần Thơ - Hậu Giang, Hậu Giang - Cà
        Mau, Châu Đốc - Cần Thơ - Sóc Trăng, Mỹ An - Cao Lãnh. Nhu cầu cát đắp cho 4 dự án này khoảng 47 triệu m3.
    </p>
    <p>
        Tuy nhiên, theo lãnh đạo Cục Quản lý đầu tư xây dựng, nguồn cát sông không nằm ở các địa phương có dự án đi
        qua mà chủ yếu ở An Giang, Đồng Tháp, Sóc Trăng, Vĩnh Long. Chính phủ đã xác định việc cấp cát không chỉ là
        trách nhiệm của địa phương có dự án đi qua mà là chung của các tỉnh. Theo ông Nguyễn Tiến Minh, tại dự án cao
        tốc Bắc Nam giai đoạn 1 (2017- 2020), khi nhiều dự án đồng loạt triển khai, nhu cầu vật liệu tăng cao, khả
        năng cung ứng của các mỏ không đáp ứng.
    </p>
    <p>
        Rút kinh nghiệm, ở giai đoạn 2, Chính phủ đã giao nhà thầu trực tiếp khai thác mỏ vật liệu phục vụ dự án.
        Thời gian thực hiện thủ tục cấp phép được rút ngắn, nhà thầu chỉ cần đăng ký công suất, phương án khai thác.
        "Mỏ vật liệu được nghiên cứu hiện lớn hơn nhu cầu của các dự án thành phần", ông Minh nói.
    </p>
    <p>
        Trả lời về tiêu chí xác định nhà thầu mạnh để thi công dự án cao tốc Bắc Nam sắp tới, ông Lê Quyết Tiến, Phó
        cục trưởng Cục Quản lý đầu tư xây dựng, cho biết ngoài quy định pháp luật về đấu thầu, Bộ còn xây dựng bộ
        tiêu chí mẫu. Ví dụ, về năng lực hành nghề thi công xây dựng, khảo sát thiết kế, các nhà thầu phải là hạng I.
        Với gói thầu từ 3.000 đến 8.000 tỷ đồng, nhà thầu phải có năng lực tài chính tương ứng với quy mô gói thầu.
    </p>
    <p>
        Đối với tiêu chí kinh nghiệm, theo quy định cũ, nhà thầu từng thi công hợp đồng có giá trị bằng 70% giá trị
        gói thầu đang xét. Song thông tư 08 đã nới hơn, cho phép nhà thầu phải thực hiện gói thầu có giá trị bằng 50%
        giá trị gói thầu đang xét. Không có nhà thầu nào bị chấm dứt hợp đồng, cắt chuyển khối lượng tại các dự án
        cao tốc Bắc Nam giai đoạn 1 được tham gia thi công giai đoạn 2.
    </p>
    <p>
        "Bộ đã lựa chọn, ký hợp đồng của 14 gói thầu, đáp ứng điều kiện khởi công", ông Tiến thông tin. Ngày
        1/1/2023, Bộ Giao thông Vận tải tổ chức khởi công 12 dự án thành phần thuộc dự án cao tốc Bắc Nam phía Đông
        giai đoạn 2021-2025. Tuyến đường dài 729 km, chia thành 12 dự án độc lập, gồm các đoạn Hà Tĩnh - Quảng Trị
        (267 km), Quảng Ngãi - Nha Trang (353 km) và Cần Thơ - Cà Mau (109 km), đi qua 12 tỉnh, thành phố, tổng mức
        đầu tư 146.990 tỷ đồng. Dự án cơ bản hoàn thành năm 2025 và đưa vào khai thác từ năm 2026. Sau khi hoàn
        thành, cao tốc Bắc Nam phía Đông sẽ được nối thông toàn tuyến dài khoảng 2.000 km.
    </p>
</div>', 1, 'f', 27, 4, '2022-12-31', 'https://i1-vnexpress.vnecdn.net/2022/12/28/bo-gt-1741-1672231386.jpg?w=1020&h=0&q=100&dpr=1&fit=crop&s=3774rKhnWWBgtvCRgFEnyQ');
INSERT INTO "public"."articles" OVERRIDING SYSTEM VALUE VALUES (113, '''Chuyện rối rắm'' không ai lo', 57, 'Tôi và cộng sự vừa phát động cuộc thi về biến đổi khí hậu để huy động sáng kiến của người trẻ.', '<div class="flex flex-col gap-y-2">
    <p>
        Tôi và cộng sự vừa phát động cuộc thi về biến đổi khí hậu để huy động sáng kiến của người trẻ.
    </p>
    <p>
        Khi nhận thông tin, nhiều bạn khéo léo từ chối: "Không phải thế mạnh của em nên em sẽ vận động người khác
        tham dự". Một số hiểu rõ về biến đổi khí hậu nhưng không biết phải làm thế nào để tác động đến hiện tượng này.
    </p>
    <p>
        Trong dự án khác, chúng tôi tiến hành một khảo sát nhỏ để đánh giá mức độ nhận diện của công chúng. Kết quả,
        nhiều người nghĩ rằng ứng phó với biến đổi khí hậu là nhiệm vụ của chính phủ, các tổ chức xã hội trong nước
        và quốc tế, những chuyên gia môi trường và tự nhiên.
    </p>
    <img class="w-full h-full mt-2 rounded-lg" src="https://www.thiennhien.net/wp-content/uploads/2022/09/1609_BDKH.jpg" alt="">
    <p>
        Gần đây, có quá nhiều vấn đề xảy ra mà phạm vi giải quyết không đóng khung trong một ngành hay lĩnh vực cụ
        thể. Covid-19, khủng hoảng năng lượng - lương thực và biến đổi khí hậu là ba trong những vấn đề đòi hỏi sự
        tham gia phối hợp giải quyết của rất nhiều đối tượng từ các ngành nghề, khu vực và quốc gia khác nhau. Trong
        quản lý công, chúng được gọi là những vấn đề rối rắm (Wicked Problems).
    </p>
    <p>
        Ứng phó với biến đổi khí hậu có thể được nhìn nhận dưới hai góc độ: giảm thiểu (mitigation) và thích ứng
        (adaptation). Giảm thiểu bao gồm các hành động giúp hạn chế cường độ, diễn biến của hiện tượng này. Trong khi
        đó, thích ứng lại thiên về những hoạt động mang tính chuyển đổi nhằm tăng khả năng chống chịu của hệ thống tự
        nhiên và xã hội, giúp giảm bớt tổn thương. Tuy trong nghiên cứu và báo cáo, các chuyên gia thường chia thành
        hai góc độ như vậy, nhưng thực tế rất nhiều hoạt động và giải pháp có thể giúp đạt cả hai mục tiêu hoặc cũng
        có khi người ta cần thiết kế một tổ hợp nhiều giải pháp mới đạt được một loại mục tiêu.
    </p>
    <p>
        Việc diễn giải có vẻ hàn lâm, trên thực tế ai cũng có thể tham gia vào đề xuất sáng kiến hoặc hành động nhằm
        ứng phó biến đổi khí hậu; chẳng hạn như điều chỉnh điều hòa nhiệt độ chênh lệch không quá hai độ so với nhiệt
        độ ngoài trời; tiết kiệm điện, nước, xăng dầu, lương thực trong tiêu dùng; trồng cây xanh; hay đơn giản là
        chạy bộ, sử dụng xe đạp, giao thông công cộng để đi làm một số ngày trong tuần...
    </p>
    <p>
        Đối với việc giúp cộng đồng thích ứng, các giải pháp hướng đến tăng sinh kế cho người lao động như cải tạo
        đất đai, phát triển cây trồng chịu mặn trong bối cảnh tài nguyên tự nhiên bị suy thoái nghiêm trọng có thể là
        ví dụ điển hình. Ứng dụng công nghệ thông tin vào dự báo, cung cấp dữ liệu giúp các đối tượng trong xã hội có
        căn cứ để ra quyết định hoặc hành động phù hợp cũng là giải pháp có tính thích ứng.
    </p>
    <p>
        Nhưng đó mới là góc nhìn ở mỗi cá nhân và chuyên ngành khác biệt, để việc ứng phó biến đổi khí hậu đạt hiệu
        quả trên diện rộng và các giải pháp không cản trở, mâu thuẫn lẫn nhau lại đòi hỏi sự phối hợp đa chiều. Đây
        là thách thức lớn với hệ thống quản lý công nói riêng và toàn xã hội nói chung. Cách hành xử đúng chuẩn mực
        đối với môi trường không nên chỉ dừng lại dưới dạng phong trào hay được xem như một lối ứng xử đẹp, đáng
        ngưỡng mộ mà cần được chuyển thành một nếp sống cơ bản, đại trà mà mọi công dân, tổ chức đều thực hiện như
        điều hiển nhiên.
    </p>
</div>', 27, 'f', 15, 4, '2022-12-29', 'https://www.thiennhien.net/wp-content/uploads/2022/09/1609_BDKH.jpg');
INSERT INTO "public"."articles" OVERRIDING SYSTEM VALUE VALUES (122, 'Cựu hậu vệ Ngoại hạng Anh xin lỗi khi Indonesia thua Việt Nam', 0, 'Jordi Amat gửi lời xin lỗi tới người hâm mộ Indonesia khi không thể giúp đội nhà vào chung kết AFF Cup 2022.', '<div class="flex flex-col gap-y-2">
    <p>
        Jordi Amat gửi lời xin lỗi tới người hâm mộ Indonesia khi không thể giúp đội nhà vào chung kết AFF Cup 2022.
    </p>
    <p>
        "Xin lỗi mọi người, đội đã cố gắng hết sức đến cuối trận, nhưng kết quả không như ý", Amat nói sau trận thua
        0-2 Việt Nam tối 9/1 tại Mỹ Đình. "Nhưng tôi hứa chúng tôi sẽ trở lại mạnh mẽ hơn".
    </p>
    <p>
        Trung vệ Indonesia 30 tuổi nói thêm: "Kể từ khi khoác áo Indonesia, tôi tin đội bóng sẽ tốt lên vì có nhiều
        cầu thủ trẻ tài năng. Thất bại này là trải nghiệm sẽ tốt cho tương lai của các cầu thủ".
    </p>
    <p>
        Amat từng chơi ở La Liga và Ngoại hạng Anh, đối đầu Lionel Messi và Cristiano Ronaldo. Trung vệ này sinh ra ở
        Tây Ban Nha và từng chơi cho nhiều cấp tuyển trẻ nước này, cũng như khoác áo tuyển Catalonia. Do có bà là
        người Indonesia, cầu thủ 31 tuổi có thể nhập tịch nước này mà không cần định cư ở đó. Anh lấy được quốc tịch
        Indonesia tháng 11/2022, ngay trước thềm AFF Cup.
    </p>
    <img class="w-full h-full mt-2 rounded-lg" src="https://i1-thethao.vnecdn.net/2023/01/10/1861bfb1e9f332ad6be2-167332020-2710-3584-1673320324.jpg?w=1020&h=0&q=100&dpr=1&fit=crop&s=JOEpgHZd2OtGi69pxXAL5g" alt="">
    <p>
        Ở trận bán kết lượt đi tại Gelora Bung Karno, Amat giúp hàng thủ Indonesia chơi chắc chắn, không cho Việt Nam
        có cơ hội nào. Tuy nhiên, tại Mỹ Đình, anh cùng đội trưởng Fachruddin Aryanto, Rizky Ridho hai lần không thể
        theo kèm Nguyễn Tiến Linh và để tiền đạo Việt Nam ghi bàn.
    </p>
    <p>
        Cả hai bàn của Tiến Linh đều đến ngay đầu mỗi hiệp, vào các phút 3 và 47. Sau cú phất bóng dài của Đỗ Hùng
        Dũng ra sau lưng hàng thủ, trung phong của Việt Nam phá bẫy việt vị, bình tĩnh xử lý trước sự kèm cặp của
        Amat rồi bắt vô-lê mở tỷ số. Ở bàn thứ hai, vẫn là Hùng Dũng đá phạt góc kiến tạo để Tiến Linh đánh đầu trong
        thế thoải mái ấn định chiến thắng. HLV Shin Tae-yong thừa nhận điều này làm phá sản kế hoạch ông dự tính.
    </p>
    <p>
        Indonesia không thể tái lập thành tích vào chung kết như AFF Cup 2020. HLV Shin Tae-yong nối dài mạch kết quả
        thất vọng trước đồng hương Park Hang-seo, khi thua ba, hoà hai và chỉ ghi được một bàn trong năm cuộc đối 
        đầu. Sau trận, nhiều CĐV Indonesia kêu gọi HLV Shin từ chức.
    </p>
</div>', 7, 'f', 18, 1, NULL, 'https://i1-thethao.vnecdn.net/2023/01/10/1861bfb1e9f332ad6be2-167332020-2710-3584-1673320324.jpg?w=1020&h=0&q=100&dpr=1&fit=crop&s=JOEpgHZd2OtGi69pxXAL5g');
INSERT INTO "public"."articles" OVERRIDING SYSTEM VALUE VALUES (42, 'Việt Nam muốn đẩy mạnh xuất khẩu nông sản vào Argentina', 34, 'Thanh long, xoài, mít những năm gần đây tăng cả số lượng lẫn chất lượng và Việt Nam muốn xuất các mặt hàng này vào Argentina nhiều hơn.', '<div class="flex flex-col gap-y-2">
    <p>
        Thanh long, xoài, mít những năm gần đây tăng cả số lượng lẫn chất lượng và Việt Nam muốn xuất các mặt hàng
        này vào Argentina nhiều hơn.
    </p>
    <p>
        Chia sẻ tại buổi giao lưu thương mại giữa Việt Nam và Argentina ngày 15/11, ông Võ Tân Thành - Phó chủ tịch
        Phòng Thương mại và Công nghiệp Việt Nam - cho hay Argentina là đối tác thương mại lớn thứ ba của Việt Nam
        tại Mỹ Latin, sau Brazil và Mexico. Trong khi đó, Việt Nam là đối tác thương mại lớn nhất của nước này tại
        khu vực Đông Nam Á và thứ sáu trên phạm vi toàn cầu.
    </p>
    <p>
        Tuy nhiên, theo ông Thành, giá trị trao đổi thương mại giữa hai nước chưa tương xứng với tiềm năng phát
        triển. Đặc biệt, nông sản Việt sang thị trường này còn thấp.
    </p>
    <img class="w-full h-full mt-2 rounded-lg" src="https://i1-kinhdoanh.vnecdn.net/2022/11/15/ndt-1668499908-1668499918-7126-1668500106.jpg?w=1020&h=0&q=100&dpr=1&fit=crop&s=uyJ7dLwh-WSUj-uIUfZ1Zg" alt="">
    <p>
        "Thanh long, xoài, mít của Việt Nam không chỉ tăng về số lượng mà chất lượng luôn cải thiện. Chúng tôi muốn
        các sản phẩm này xuất vào thị trường Argentina nhiều hơn", ông Thành nói và cho biết thực phẩm, đồ gỗ mỹ
        nghệ... cũng đang là thế mạnh mà Việt Nam muốn tiếp cận nhiều hơn ở thị trường này. Trước đó, hôm 14/11,
        trong buổi tiếp đoàn lãnh đạo từ Argentina, Thủ tướng Phạm Minh Chính đề nghị các địa phương của Argentina
        tạo điều kiện nhập khẩu các mặt hàng chất lượng cao của Việt Nam như gạo, cà phê, cao su, dệt may, hạt điều,
        máy móc, trái cây, thiết bị điện tử... Mục tiêu, hai bên cùng xây dựng cán cân thương mại bền vững, có lợi.
    </p>
    <p>
        Để thúc đẩy thương mại giữa hai nước, Đại sứ Argentina tại Việt Nam - ông Luis Pablo María Beltramino - khẳng
        định sẽ cùng đồng hành với các doanh nghiệp tìm hiểu thị trường, lên kế hoạch các chương trình trao đổi
        thương mại giữa doanh nghiệp hai nước.
    </p>
    <p>
        Theo ông Luis Pablo María Beltramino, 10 năm gần đây, Argentina ghi nhận hàng hóa xuất sang Việt Nam tăng
        trưởng 600%. Các mặt hàng mà nước này xuất sang Việt Nam như chất dinh dưỡng làm thức ăn gia súc, dạng viên
        và dạng bột đậu nành, đậu, bông gòn, đồ gỗ, da, sữa. Đặc biệt cách đây gần một tháng, trái chanh Argentina đã
        cập bến và bán tại Việt Nam.
    </p>
    <p>
        Trong lần xúc tiến này, có khoảng 100 doanh nghiệp của hai bên tham gia kết nối. Đây là các doanh nghiệp
        trong lĩnh vực nông nghiệp, chuyên về thịt gia cầm, thịt bò, nhà sản xuất bơ, phô mai, sữa bột...
    </p>
    <p>
        10 tháng đầu năm nay, kim ngạch xuất khẩu của Việt Nam sang Argentina đạt hơn 756 triệu USD, tăng 8,2% so với
        cùng kỳ năm 2021, trong khi nhập khẩu đạt 3,44 tỷ USD, tăng 12%.
    </p>
</div>', 4, 'f', 28, 4, '2022-12-15', 'https://i1-kinhdoanh.vnecdn.net/2022/11/15/ndt-1668499908-1668499918-7126-1668500106.jpg?w=1020&h=0&q=100&dpr=1&fit=crop&s=uyJ7dLwh-WSUj-uIUfZ1Zg');
INSERT INTO "public"."articles" OVERRIDING SYSTEM VALUE VALUES (25, 'Sống sót hai ngày trên biển nhờ bám vào phao tín hiệu', 7, 'BRAZIL David Soares rơi xuống Đại Tây Dương và sống sót bằng cách bám vào phao tín hiệu trong hai ngày để chờ người tới cứu.', '<div class="flex flex-col gap-y-2">
    <p>
        BRAZIL David Soares rơi xuống Đại Tây Dương và sống sót bằng cách bám vào phao tín hiệu trong hai ngày để
        chờ người tới cứu.
    </p>
    <p>
        Soares, ngư dân 43 tuổi, một mình lên đường đánh cá từ bãi biển Atafona ở phía bắc bang Rio de Janeiro,
        Brazi, vào ngày 25/12. Tuy nhiên, người đàn ông đã bị trượt chân rơi xuống biển không lâu sau đó.
    </p>
    <p>
        Trả lời phỏng vấn trang tin G1 của Brazil, Soares cho biết "10 phút đầu tiên từ lúc rơi xuống biển là khó
        khăn hơn cả khi ông cố gắng bơi về thuyền". Tuy nhiên, sóng quá lớn khiến mọi nỗ lực của ông đều thất bại.
        Nhận ra rằng mình không thể quay lại thuyền, ông đã cởi bỏ áo và quần dài để giảm sức nặng rồi thả mình trôi
        theo dòng nước. "Nước động và gió to nên tôi quyết định thả trôi để mất ít năng lượng hơn", ông nói.
    </p>
    <img class="w-full h-full mt-2 rounded-lg" src="https://i1-vnexpress.vnecdn.net/2022/12/28/s0bda87c24244b52fc5b35122e12e1-1853-4576-1672239388.jpg?w=1020&h=0&q=100&dpr=1&fit=crop&s=LTRP-2oe0LFOwM0aCVhbjg" alt="">
    <p>
        Sau khoảng 4 tiếng, Soares đến được một phao tín hiệu gần cảng Acu và leo lên đó. "Tôi nghĩ mình sẽ chết vì
        lạnh trước khi có ai đến giúp", ông nhớ lại.
    </p>
    <p>
        Mất hai ngày một trong những ngư dân quen biết Soares mới phát hiện ra ông mất tích. Người này đã lên đường
        tìm kiếm Soares, đồng thời gia đình ông cũng loan báo khắp nơi.
    </p>
    <p>
        Trong đoạn video được lực lượng cứu hộ ghi lại trên đường trở về, Soares có tinh thần tốt, mỉm cười và vẫn
        có thể nói đùa.
    </p>
    <p>
        Soares sau đó nói với nhà báo João Villa Real rằng ông đã rất xúc động khi thấy phản ứng của những người tìm
        thấy mình. "Tất cả họ đều khóc", ông kể lại.
    </p>
</div>', 1, 'f', 15, 4, '2022-12-31', 'https://i1-vnexpress.vnecdn.net/2022/12/28/s0bda87c24244b52fc5b35122e12e1-1853-4576-1672239388.jpg?w=1020&h=0&q=100&dpr=1&fit=crop&s=LTRP-2oe0LFOwM0aCVhbjg');
INSERT INTO "public"."articles" OVERRIDING SYSTEM VALUE VALUES (121, 'HLV Shin Tae-yong: ''Indonesia thua vì mặt sân không tốt''', 0, '<p><span style="color: #101010; font-family: arial; font-size: 18px; background-color: #ffffff;">&Ocirc;ng Shin Tae-yong đổ lỗi cho chất lượng mặt s&acirc;n sau khi Indonesia thua Việt Nam 0-2 ở lượt về b&aacute;n kết tối 9/1 v&agrave; dừng bước tại AFF Cup 2022</span></p>', '<div class="social_pin" style="margin: 0px; padding: 150px 0px 20px; box-sizing: border-box; text-rendering: optimizelegibility; width: 65px; position: sticky; top: 0px; left: 0px; height: 442px; opacity: 1; visibility: visible; z-index: 5; transition-duration: 250ms; transition-property: all; transition-timing-function: cubic-bezier(0.7, 1, 0.7, 1); color: #101010; font-family: arial; font-size: 15px; background-color: #ffffff;">
<ul class="social_left" style="margin: 0px; padding: 0px; box-sizing: border-box; text-rendering: optimizelegibility; list-style-type: none;">
<li class="li_comment" style="margin: 10px 0px 0px; padding: 0px 0px 20px; box-sizing: border-box; text-rendering: optimizelegibility; list-style-type: none; width: 32px;"><a class="social_comment flexbox" style="margin: 0px; padding: 0px; box-sizing: border-box; text-rendering: optimizelegibility; text-decoration-line: none; display: flex; width: 32px; height: 32px; align-items: center; border-radius: 50%; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; justify-content: center; position: relative; border: 1px solid #e5e5e5;" title="B&igrave;nh luận" href="https://vnexpress.net/hlv-shin-tae-yong-indonesia-thua-vi-mat-san-khong-tot-4558128.html#box_comment_vne"><span class="number_cmt num_cmt_detail widget-comment-4558128-1" style="margin: 0px; padding: 0px; box-sizing: border-box; text-rendering: optimizelegibility; font-size: 12px; color: #757575; position: absolute; bottom: -20px; left: 15px; transform: translateX(-50%);">120</span></a></li>
<li style="margin: 10px 0px 0px; padding: 0px; box-sizing: border-box; text-rendering: optimizelegibility; list-style-type: none; width: 32px;">&nbsp;</li>
</ul>
</div>
<div class="sidebar-1" style="margin: 0px; padding: 20px 0px 0px; box-sizing: border-box; text-rendering: optimizelegibility; width: 670px; max-width: calc(100% - 430px); position: relative; color: #101010; font-family: arial; font-size: 15px; background-color: #ffffff;">
<div class="header-content width_common" style="margin: 0px 0px 10px; padding: 0px; box-sizing: border-box; text-rendering: optimizelegibility; width: 670px; float: left;">
<ul class="breadcrumb" style="margin: 0px; padding: 0px; box-sizing: border-box; text-rendering: optimizelegibility; list-style-type: none; float: left; background: none; border-bottom: none;" data-campaign="Header">
<ul class="breadcrumb" style="margin: 0px; padding: 0px; box-sizing: border-box; text-rendering: optimizelegibility; list-style-type: none; float: left; background: none; border-bottom: none;" data-campaign="Header">
<li style="margin: 0px 24px 0px 0px; padding: 0px; box-sizing: border-box; text-rendering: optimizelegibility; list-style-type: none; position: relative; display: inline-block; line-height: 16px; color: #757575; font-family: var(--font1);"><a style="margin: 0px; padding: 0px; box-sizing: border-box; text-rendering: optimizelegibility; text-decoration-line: none; display: inline-block;" title="Thể thao" href="https://vnexpress.net/the-thao" data-medium="Menu-TheThao" data-itm-source="#vn_source=Detail-TheThao_TheThao_AffCup2022_TinTuc-4558128&amp;vn_campaign=Header&amp;vn_medium=Menu-TheThao&amp;vn_term=Desktop" data-itm-added="1">Thể thao</a></li>
<li style="margin: 0px 24px 0px 0px; padding: 0px; box-sizing: border-box; text-rendering: optimizelegibility; list-style-type: none; position: relative; display: inline-block; line-height: 16px; font-size: 14px; color: #bdbdbd; font-family: var(--font1);"><a style="margin: 0px; padding: 0px; box-sizing: border-box; text-rendering: optimizelegibility; text-decoration-line: none; display: inline-block;" title="AFF Cup 2022" href="https://vnexpress.net/the-thao/aff-cup" data-medium="Menu-AffCup2022" data-itm-source="#vn_source=Detail-TheThao_TheThao_AffCup2022_TinTuc-4558128&amp;vn_campaign=Header&amp;vn_medium=Menu-AffCup2022&amp;vn_term=Desktop" data-itm-added="1">AFF Cup 2022</a></li>
<li style="margin: 0px 24px 0px 0px; padding: 0px; box-sizing: border-box; text-rendering: optimizelegibility; list-style-type: none; position: relative; display: inline-block; line-height: 16px; font-size: 14px; color: #bdbdbd; font-family: var(--font1);"><a style="margin: 0px; padding: 0px; box-sizing: border-box; text-rendering: optimizelegibility; text-decoration-line: none; display: inline-block;" title="Tin tức" href="https://vnexpress.net/the-thao/aff-cup/tin-tuc" data-medium="Menu-TinTuc" data-itm-source="#vn_source=Detail-TheThao_TheThao_AffCup2022_TinTuc-4558128&amp;vn_campaign=Header&amp;vn_medium=Menu-TinTuc&amp;vn_term=Desktop" data-itm-added="1">Tin tức</a></li>
</ul>
</ul>
<span id="parentCateDetail" style="margin: 0px; padding: 0px; box-sizing: border-box; text-rendering: optimizelegibility;" data-cate="1005548"></span><span id="site-sub-id" style="margin: 0px; padding: 0px; box-sizing: border-box; text-rendering: optimizelegibility;" data-cate="1005548"></span><span class="date" style="margin: 0px; padding: 0px; box-sizing: border-box; text-rendering: optimizelegibility; float: right; color: #757575; font-size: 14px;">Thứ hai, 9/1/2023, 21:24 (GMT+7)</span></div>
<h1 class="title-detail" style="margin: 0px 0px 15px; padding: 0px; box-sizing: border-box; text-rendering: optimizelegibility; line-height: 48px; font-size: 32px; font-feature-settings: ''pnum'', ''lnum''; font-family: var(--font1); clear: both;">HLV Shin Tae-yong: ''Indonesia thua v&igrave; mặt s&acirc;n kh&ocirc;ng tốt''</h1>
<p class="description" style="margin: 0px 0px 20px; padding: 0px; box-sizing: border-box; text-rendering: optimizelegibility; font-size: 18px; line-height: 28.8px;"><span class="location-stamp" style="margin: 0px 15px 0px 0px; padding: 0px; box-sizing: border-box; text-rendering: optimizelegibility; font-size: 16px; text-transform: uppercase; letter-spacing: -0.5px; position: relative; color: #757575 !important;">H&Agrave; NỘI</span>&Ocirc;ng Shin Tae-yong đổ lỗi cho chất lượng mặt s&acirc;n sau khi Indonesia thua Việt Nam 0-2 ở lượt về b&aacute;n kết tối 9/1 v&agrave; dừng bước tại AFF Cup 2022</p>
<article class="fck_detail " style="margin: 0px; padding: 0px; box-sizing: border-box; text-rendering: optimizelegibility; width: 670px; float: left; position: relative; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 18px; line-height: 28.8px; border: none;">
<div class="width_common box-widget-thethao-2" style="margin: 0px 0px 20px; padding: 16px; box-sizing: border-box; text-rendering: optimizelegibility; width: 670px; float: left; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 14px; line-height: 19.6px; border: 1px solid #e5e5e5; position: relative; overflow: hidden; text-size-adjust: none !important;" data-campaign="Box-TongThuat">
<div class="logo-left" style="margin: 0px; padding: 0px; box-sizing: border-box; text-rendering: optimizelegibility; width: 132px; height: 132px; position: absolute; top: 0px; z-index: 0; opacity: 0.1; left: -20px;"><img style="margin: 0px; padding: 0px; box-sizing: border-box; text-rendering: optimizelegibility; border: 0px; font-size: 0px; line-height: 0; max-width: 100%; width: 132px; position: absolute; top: 66px; transform: translateY(-50%); filter: blur(2px);" src="https://s1.vnecdn.net/vnexpress/restruct/i/v728/flag/Viet_Nam.png" alt="Việt Nam" /></div>
<div class="logo-right" style="margin: 0px; padding: 0px; box-sizing: border-box; text-rendering: optimizelegibility; width: 132px; height: 132px; position: absolute; top: 0px; z-index: 0; opacity: 0.1; right: -20px;"><img style="margin: 0px; padding: 0px; box-sizing: border-box; text-rendering: optimizelegibility; border: 0px; font-size: 0px; line-height: 0; max-width: 100%; width: 132px; position: absolute; top: 66px; transform: translateY(-50%); filter: blur(2px);" src="https://s1.vnecdn.net/vnexpress/restruct/i/v728/flag/Indonesia.png" alt="Indonesia" /></div>
<div class="header-tt flexbox" style="margin: 0px; padding: 0px; box-sizing: border-box; text-rendering: optimizelegibility; display: flex; -webkit-box-align: center; align-items: center; border-bottom: none; position: relative; z-index: 1;"><span class="date" style="margin: 0px; padding: 0px; box-sizing: border-box; text-rendering: optimizelegibility; color: #757575;">Thứ hai, ng&agrave;y 9/1/2023, 19:30</span><a class="txt-note" style="margin: 0px 0px 0px auto; padding: 0px; box-sizing: border-box; text-rendering: optimizelegibility; color: #757575; text-decoration-line: none; line-height: 16px; text-size-adjust: none !important;" title="AFF Cup 2022" href="https://vnexpress.net/the-thao/aff-cup/ket-qua" data-medium="Item-KetQua" data-itm-source="#vn_source=Detail-TheThao_TheThao_AffCup2022_TinTuc-4558128&amp;vn_campaign=Box-TongThuat&amp;vn_medium=Item-KetQua&amp;vn_term=Desktop" data-itm-added="1">AFF Cup 2022 - B&aacute;n kết</a><span class="label-status" style="margin: 0px; padding: 0px; box-sizing: border-box; text-rendering: optimizelegibility; display: inline-block; font-size: 12px; width: 69px; height: 26px; line-height: 26px; color: #616161; background: #f7f7f7; text-align: center; position: absolute; left: 318px; transform: translateX(-50%); text-size-adjust: none !important;">Kết th&uacute;c</span></div>
<div class="team-pl flexbox" style="margin: 0px; padding: 0px; box-sizing: border-box; text-rendering: optimizelegibility; display: flex; -webkit-box-align: center; align-items: center; flex-shrink: 1; width: calc((100% - 65px) / 2); -webkit-box-pack: end; justify-content: flex-end;"><span class="name-team" style="margin: 0px; padding: 0px; box-sizing: border-box; text-rendering: optimizelegibility; width: calc(100% - 24px); height: 20px; overflow: hidden; white-space: nowrap; text-overflow: ellipsis; text-align: right;">Việt Nam</span><span class="flag-team" style="margin: 0px 20px; padding: 0px; box-sizing: border-box; text-rendering: optimizelegibility; width: 40px; height: 40px; flex-shrink: 0; line-height: 50px;"><img style="margin: 0px; padding: 0px; box-sizing: border-box; text-rendering: optimizelegibility; border: 0px; font-size: 0px; line-height: 0; max-width: 100%; width: 40px;" src="https://s1.vnecdn.net/vnexpress/restruct/i/v728/flag/Viet_Nam.png" alt="Việt Nam" /></span></div>
<div class="res-m" style="margin: 0px; padding: 0px; box-sizing: border-box; text-rendering: optimizelegibility; display: flex; width: 85px; text-align: center; font-size: 25px; line-height: 18px; flex-shrink: 0; letter-spacing: 5px; white-space: nowrap; position: relative; -webkit-box-pack: center; justify-content: center; text-size-adjust: none !important;"><span style="margin: 0px; padding: 0px; box-sizing: border-box; text-rendering: optimizelegibility;">2 - 0</span><span class="sub-res" style="margin: 4px 0px 0px; padding: 0px; box-sizing: border-box; text-rendering: optimizelegibility; font-size: 14px; line-height: 10px; font-weight: 400; display: block; color: #757575; position: absolute; left: 42.5px; transform: translateX(-50%); top: 37px; letter-spacing: normal; text-size-adjust: none !important;">Hiệp một: 1-0</span></div>
<div class="team-pl team-away flexbox" style="margin: 0px; padding: 0px; box-sizing: border-box; text-rendering: optimizelegibility; display: flex; -webkit-box-align: center; align-items: center; flex-shrink: 1; width: calc((100% - 65px) / 2); -webkit-box-pack: start; justify-content: flex-start;"><span class="name-team" style="margin: 0px; padding: 0px; box-sizing: border-box; text-rendering: optimizelegibility; width: calc(100% - 24px); height: 20px; overflow: hidden; white-space: nowrap; text-overflow: ellipsis; -webkit-box-ordinal-group: 3; order: 2;">Indonesia</span><span class="flag-team" style="margin: 0px 20px; padding: 0px; box-sizing: border-box; text-rendering: optimizelegibility; width: 40px; height: 40px; flex-shrink: 0; line-height: 50px; -webkit-box-ordinal-group: 2; order: 1;"><img style="margin: 0px; padding: 0px; box-sizing: border-box; text-rendering: optimizelegibility; border: 0px; font-size: 0px; line-height: 0; max-width: 100%; width: 40px;" src="https://s1.vnecdn.net/vnexpress/restruct/i/v728/flag/Indonesia.png" alt="Indonesia" /></span></div>
<div id="block_dienbien" class="dienbien flexbox width_common" style="margin: 16px 0px 0px; padding: 16px 0px 0px; box-sizing: border-box; text-rendering: optimizelegibility; display: flex; width: 636px; float: left; border-top: 1px solid #e5e5e5;">
<div class="left" style="margin: 0px; padding: 0px; box-sizing: border-box; text-rendering: optimizelegibility; width: 318px; float: left !important;">
<div class="row" style="margin: 0px 0px 6px; padding: 0px; box-sizing: border-box; text-rendering: optimizelegibility; display: flex; width: 318px; float: left;"><span class="flag-team" style="margin: 1px 6px 0px 0px; padding: 0px; box-sizing: border-box; text-rendering: optimizelegibility; width: 12px; height: 12px;"><img style="margin: 0px; padding: 0px; box-sizing: border-box; text-rendering: optimizelegibility; border: 0px; font-size: 0px; line-height: 0; max-width: 100%; width: 12px;" src="https://s1.vnecdn.net/vnexpress/restruct/i/v728/v2_2019/pc/graphics/ball.svg" alt="icon-ball" /></span>Nguyen Tien Linh (3'')</div>
<div class="row" style="margin: 0px 0px 6px; padding: 0px; box-sizing: border-box; text-rendering: optimizelegibility; display: flex; width: 318px; float: left;"><span class="flag-team" style="margin: 1px 6px 0px 0px; padding: 0px; box-sizing: border-box; text-rendering: optimizelegibility; width: 12px; height: 12px;"><img style="margin: 0px; padding: 0px; box-sizing: border-box; text-rendering: optimizelegibility; border: 0px; font-size: 0px; line-height: 0; max-width: 100%; width: 12px;" src="https://s1.vnecdn.net/vnexpress/restruct/i/v728/v2_2019/pc/graphics/ball.svg" alt="icon-ball" /></span>Nguyen Tien Linh (47'')</div>
</div>
<div class="right" style="margin: 0px; padding: 0px; box-sizing: border-box; text-rendering: optimizelegibility; width: 318px; text-align: right; float: right !important;">&nbsp;</div>
</div>
<div class="note-bot flexbox" style="margin: 0px; padding: 6px 15px; box-sizing: border-box; text-rendering: optimizelegibility; display: flex; width: 636px; float: left; border-top: none;"><a class="btn-chitiet" style="margin: 0px auto; padding: 0px; box-sizing: border-box; text-rendering: optimizelegibility; color: #065b99; width: 142px; height: 36px; line-height: 36px; background: #f0f9fe; text-align: center; border-radius: 3px; position: relative; transition: all 0.3s ease 0s; text-decoration-line: none !important;" title="Việt Nam-Indonesia" href="https://vnexpress.net/the-thao/aff-cup/tran-dau/984943/viet-nam-indonesia" data-medium="Item-VietNam_Indonesia" data-itm-source="#vn_source=Detail-TheThao_TheThao_AffCup2022_TinTuc-4558128&amp;vn_campaign=Box-TongThuat&amp;vn_medium=Item-VietNam_Indonesia&amp;vn_term=Desktop" data-itm-added="1">Chi tiết trận đấu</a></div>
</div>
<p class="Normal" style="margin: 0px 0px 1em; padding: 0px; box-sizing: border-box; text-rendering: optimizespeed; line-height: 28.8px;"><em style="margin: 0px; padding: 0px; box-sizing: border-box; text-rendering: optimizelegibility;">* Tiếp tục cập nhật</em></p>
<p class="Normal" style="margin: 0px 0px 1em; padding: 0px; box-sizing: border-box; text-rendering: optimizespeed; line-height: 28.8px;">Trước trận b&aacute;n kết lượt về, HLV Shin n&oacute;i Indonesia mạnh ngang Việt Nam v&agrave; Th&aacute;i Lan. Trước đ&oacute;, nh&agrave; cầm qu&acirc;n của đội tuyển xứ vạn đảo cũng cho rằng việc Việt Nam vẫn chưa thủng lưới l&agrave; v&igrave; to&agrave;n gặp c&aacute;c đối thủ yếu ở v&ograve;ng bảng.</p>
<p class="Normal" style="margin: 0px 0px 1em; padding: 0px; box-sizing: border-box; text-rendering: optimizespeed; line-height: 28.8px;">Tuy nhi&ecirc;n, sau trận lượt về tại Mỹ Đ&igrave;nh h&ocirc;m nay, &ocirc;ng Shin dường như đ&atilde; thay đổi quan điểm. "H&ocirc;m nay Việt Nam chơi tốt, họ thật sự l&agrave; đội mạnh đấy. Ch&uacute;c mừng Việt Nam tiếp tục giữ th&agrave;nh t&iacute;ch sạch lưới từ đầu giải", HLV 52 tuổi mở lời tại họp b&aacute;o sau trận.</p>
<p class="Normal" style="margin: 0px 0px 1em; padding: 0px; box-sizing: border-box; text-rendering: optimizespeed; line-height: 28.8px;">D&ugrave; vậy, nh&agrave; cầm qu&acirc;n H&agrave;n Quốc cũng c&oacute; &yacute; đổ lỗi cho chất lượng mặt s&acirc;n Mỹ Đ&igrave;nh kh&ocirc;ng tốt, ảnh hưởng đến chất lượng lối chơi của Indonesia. "Đ&uacute;ng l&agrave; ch&uacute;ng t&ocirc;i kh&ocirc;ng chơi tốt bằng trận lượt đi tại Bung Karno. Thủ m&ocirc;n mắc lỗi, dẫn đến b&agrave;n thua sớm. Nhưng Việt Nam quen chơi tr&ecirc;n s&acirc;n n&agrave;y, c&ograve;n Indonesia th&igrave; kh&ocirc;ng. Mặt s&acirc;n h&ocirc;m nay cũng kh&ocirc;ng tốt như s&acirc;n Indonesia từng đ&aacute; ở SEA Games hồi th&aacute;ng 5. Đ&acirc;y l&agrave; một l&yacute; do khiến ch&uacute;ng t&ocirc;i chơi kh&ocirc;ng tốt", &ocirc;ng Shin n&oacute;i th&ecirc;m.</p>
<p class="Normal" style="margin: 0px 0px 1em; padding: 0px; box-sizing: border-box; text-rendering: optimizespeed; line-height: 28.8px;">&nbsp;</p>
<p class="Normal" style="margin: 0px 0px 1em; padding: 0px; box-sizing: border-box; text-rendering: optimizespeed; line-height: 28.8px;">Indonesia l&ecirc;n gi&acirc;y c&oacute;t tinh thần bằng nhiều ph&aacute;t biểu mạnh mẽ từ cả HLV Shin lẫn c&aacute;c cầu thủ trước trận lượt về. Nhưng trận đấu tại Mỹ Đ&igrave;nh tối nay cho thấy giữa mong muốn v&agrave; quyết t&acirc;m của đội tuyển xứ vạn đảo với thực tế tồn tại khoảng c&aacute;ch rất lớn.</p>
<p class="Normal" style="margin: 0px 0px 1em; padding: 0px; box-sizing: border-box; text-rendering: optimizespeed; line-height: 28.8px;">Đo&agrave;n qu&acirc;n của &ocirc;ng Shin thủng lưới ngay ph&uacute;t thứ 3. Nhận đường chuyền d&agrave;i từ Đỗ H&ugrave;ng Dũng, trung phong Nguyễn Tiến Linh tho&aacute;t khỏi sự k&egrave;m cặp của Jordi Amat - trung vệ Indonesia nhập tịch từng chơi hơn 200 trận tại La Liga v&agrave; Ngoại hạng Anh - để dứt điểm đ&aacute;nh bại thủ m&ocirc;n Nadeo. B&agrave;n thua sớm khiến Indonesia bị t&acirc;m l&yacute; v&agrave; kh&ocirc;ng thể l&ecirc;n b&oacute;ng mạch lạc.</p>
<p class="Normal" style="margin: 0px 0px 1em; padding: 0px; box-sizing: border-box; text-rendering: optimizespeed; line-height: 28.8px;"><img src="https://i1-thethao.vnecdn.net/2023/01/09/9e5d47713331e86fb120-jpeg-1673-2497-2347-1673273124.jpg?w=680&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=7DDO72is2cP8vZZfrUKM-w" alt="HLV Shin phản ứng trong trận thua Việt Nam 0-2 tr&ecirc;n s&acirc;n Mỹ Đ&igrave;nh ở b&aacute;n kết lượt về AFF Cup 2022 tối 9/1. Ảnh: L&acirc;m Thoả" /></p>
<p class="Normal" style="margin: 0px 0px 1em; padding: 0px; box-sizing: border-box; text-rendering: optimizespeed; line-height: 28.8px;"><a style="margin: 0px; padding: 0px 0px 1px; box-sizing: border-box; text-rendering: optimizelegibility; color: #076db6; text-decoration-line: none; position: relative; text-underline-position: under; border-bottom-width: 1px; border-bottom-style: solid;" href="https://vnexpress.net/the-thao/du-lieu-bong-da/doi-bong/viet-nam-1542" rel="dofollow">Việt Nam</a>&nbsp;chiếm thế chủ động, cầm b&oacute;ng nhiều hơn, v&agrave; li&ecirc;n tiếp tạo ra nhiều cơ hội. Đội chủ nh&agrave; đủ cả lạnh l&ugrave;ng lẫn cứng rắn để đương đầu với lối đ&aacute; rắn m&agrave; ph&iacute;a Indonesia theo đuổi sau khi bị dẫn b&agrave;n. Đến đầu hiệp hai, Việt Nam cụ thể ho&aacute; ưu thế đ&oacute; bằng b&agrave;n nh&acirc;n đ&ocirc;i tỷ số ngay ph&uacute;t 47, khi H&ugrave;ng Dũng lại kiến tạo, lần n&agrave;y từ quả đ&aacute; phạt g&oacute;c, cho Tiến Linh lập c&ocirc;ng bằng pha bật nhảy đ&aacute;nh đầu, hạ Nadeo.</p>
<p class="Normal" style="margin: 0px 0px 1em; padding: 0px; box-sizing: border-box; text-rendering: optimizespeed; line-height: 28.8px;">C&oacute; gần như cả hiệp hai, nhưng Indonesia kh&ocirc;ng thể đảo ngược t&igrave;nh thế. C&agrave;ng về cuối trận, c&aacute;c học tr&ograve; của &ocirc;ng Shin c&agrave;ng xuống sức. Họ thậm ch&iacute; v&agrave;i lần su&yacute;t nhận th&ecirc;m b&agrave;n thua từ c&aacute;c pha l&ecirc;n b&oacute;ng tốc độ b&ecirc;n ph&iacute;a Việt Nam.</p>
<p class="Normal" style="margin: 0px 0px 1em; padding: 0px; box-sizing: border-box; text-rendering: optimizespeed; line-height: 28.8px;">Với thất bại 0-2 n&agrave;y, Indonesia vẫn chưa thể thắng được Việt Nam qua 9 lần đối đầu ở cấp ĐTQG v&agrave; U23 trong 5 năm qua. Cụ thể, họ thua 3, ho&agrave; 2 ở cấp ĐTQG, v&agrave; to&agrave;n thua cả bốn trận ở cấp U23.</p>
</article>
</div>', 7, 't', 28, 1, '2023-01-04', 'https://i1-thethao.vnecdn.net/2023/01/09/9e5d47713331e86fb120-jpeg-1673-2497-2347-1673273124.jpg?w=1020&h=0&q=100&dpr=1&fit=crop&s=nVnoumJaRnivbaW4-PZ4Bw');
INSERT INTO "public"."articles" OVERRIDING SYSTEM VALUE VALUES (44, 'Gần 1,7 tỷ USD hải sản Việt xuất đi các nước', 80, 'Sức mua từ Trung Quốc giảm nhưng tiêu thụ hải sản trên thế giới vẫn tăng cao, giúp xuất khẩu mặt hàng này 5 tháng đầu năm đạt 1,7 tỷ USD, tăng 25% so với cùng kỳ.', '<div class="flex flex-col gap-y-2">
    <p>
        Sức mua từ Trung Quốc giảm nhưng tiêu thụ hải sản trên thế giới vẫn tăng cao, giúp xuất khẩu mặt hàng này 5
        tháng đầu năm đạt 1,7 tỷ USD, tăng 25% so với cùng kỳ.
    </p>
    <p>
        Hiệp hội Chế biến và Xuất khẩu Thủy sản Việt Nam cho biết, trong 5 tháng đầu năm, xuất khẩu hải sản đạt 1,7
        tỷ USD. Đây là mặt hàng chiếm 35% tổng giá trị xuất khẩu thủy sản của cả nước.
    </p>
    <p>
        Trong đó, cá ngừ tăng trưởng 59% - mức cao nhất, đạt hơn 462 triệu USD; cua ghẹ, giáp xác khác và mực, bạch
        tuộc tăng lần lượt 47% và 28%...
    </p>
    <img class="w-full h-full mt-2 rounded-lg" src="https://i1-kinhdoanh.vnecdn.net/2022/06/23/cua-jpeg-1655966754-7737-1655966791.jpg?w=120&h=72&q=100&dpr=1&fit=crop&s=IQ_6d6ln6Igkmlcl2huvJg" alt="">
    <p>
        Theo các doanh nghiệp xuất khẩu, mặc dù ảnh hưởng bởi chính sách "Zero Covid" từ Trung Quốc nhưng sức tiêu
        thụ hải sản trên thế giới vẫn tăng cao. Đặc biệt, chiến tranh Nga - Ukraine làm tăng giá hàng hóa khi chi phí
        đầu vào leo thang nhưng nhờ cân đối chi phí, hàng Việt ngày càng có sức hút và cạnh tranh trên thị trường.
    </p>
    <p>
        Ngoài Trung Quốc, Mỹ, Nhật Bản và Pháp là những thị trường tiêu thụ sản phẩm cua ghẹ chính của Việt Nam,
        chiếm hơn 91% tổng giá trị xuất khẩu. So với cùng kỳ năm trước, xuất khẩu cua, ghẹ sang Mỹ tăng liên tục nhờ
        nước này đã mở cửa hoàn toàn trở lại.
    </p>
    <p>
        Tương tự với EU, xuất khẩu cua ghẹ của Việt Nam cũng phục hồi, trong đó, Pháp đang là thị trường nhập khẩu
        lớn nhất trong khối.
    </p>
    <p>
        Trong bối cảnh thị trường thế giới tăng nhập hải sản, tình hình trong nước lại diễn biến thiếu tích cực khi
        hoạt động khai thác thủy sản giảm vì chi phí khai thác cao. Do vậy, nguồn nguyên liệu hải sản để chế biến
        xuất khẩu tiếp tục là bài toán khó với các doanh nghiệp xuất khẩu hiện nay.
    </p>
</div>', 5, 't', 15, 4, '2022-06-30', 'https://i1-kinhdoanh.vnecdn.net/2022/06/23/cua-jpeg-1655966754-7737-1655966791.jpg?w=120&h=72&q=100&dpr=1&fit=crop&s=IQ_6d6ln6Igkmlcl2huvJg');
INSERT INTO "public"."articles" OVERRIDING SYSTEM VALUE VALUES (123, 'Quả Cầu Vàng 2023 nỗ lực tìm lại danh tiếng', 0, 'Ban tổ chức Quả Cầu Vàng 2023 liên tục quảng cáo trên truyền hình: "Bữa tiệc lớn nhất Hollywood đã trở lại!", trước đêm trao giải', '<div class="flex flex-col gap-y-2">
    <p>
        Ban tổ chức Quả Cầu Vàng 2023 liên tục quảng cáo trên truyền hình: "Bữa tiệc lớn nhất Hollywood đã trở lại!",
        trước đêm trao giải
    </p>
    <p>
        Lễ trao giải sẽ diễn ra sáng 11/1 (giờ Hà Nội) tại Los Angeles, được truyền hình trực tiếp sau hai năm bị cắt
        sóng vì những ồn ào bên lề. Gần 80 năm qua, sự kiện như hồi chuông thông báo mùa giải thưởng điện ảnh ở Mỹ
        sắp bước vào giai đoạn quan trọng nhất. Diễn ra mỗi đầu tháng 1, Quả Cầu Vàng được đặt biệt danh "Ông chú say
        sưa", là nơi các sao Hollywood gặp mặt tiệc tùng mừng năm mới.
    </p>
    <p>
        Hiệp hội Báo chí Nước ngoài ở Hollywood (HFPA) - đơn vị tổ chức - đưa ra nhiều quyết định nhằm xóa mờ những
        tai tiếng quá khứ. Tổ chức tích cực cải tổ nội bộ, nâng tổng số thành viên da đen lên con số 10%. Họ mời danh
        hài gốc phi Jerrod Carmichael dẫn chương trình, thay cho những nghệ sĩ da trắng trước đây như Ricky Gervais,
        Amy Poehler hay Tina Fey. Cecil B. DeMille Award - giải thưởng danh dự của chương trình - cũng được trao cho
        Eddie Murphy, một trong những nhân vật da đen nổi tiếng nhất trong lịch sử điện ảnh.
    </p>
    <p>
        Các cá nhân, tác phẩm được đề cử năm nay được đánh giá cao về mặt chuyên môn. Hai bộ phim The Banshees of
        Inisherin và Everything Everywhere All At Once dẫn đầu số đề cử. Xếp sau là các dự án đình đám như Babylon,
        The Fabelmans... Không có nhiều tranh cãi về những tên tuổi được vinh danh, trừ trường hợp Tom Cruise không
        góp mặt trong hạng mục nam chính. Theo USA Today, một số ý kiến cho rằng HFPA không muốn trao đề cử cho anh
        sau hành động trả lại cup. Tuy nhiên, Brendan Fraser - người nhiều lần công khai chỉ trích tổ chức - vẫn có
        đề cử năm nay.
    </p>
    <img class="w-full h-full mt-2 rounded-lg" src="https://i1-giaitri.vnecdn.net/2023/01/10/Ana-de-Armas-3619-1673338715.jpg?w=1020&h=0&q=100&dpr=1&fit=crop&s=0UVMOuFMB6Jw23LEh_QtOg" alt="">
    <p>
        Đầu tháng 1, người dẫn chương trình Ricky Gervais gợi nhắc tầm ảnh hưởng của Quả Cầu Vàng trong quá khứ: "Nó
        từng được xem là một trong những sự kiện vui nhộn nhất mùa giải thưởng. Các bàn tiệc được phục vụ đầy đủ các
        loại đồ uống có cồn, giống một bữa tiệc thay vì các đêm trao giải trang trọng
    </p>
    <p>
        Tờ BBC nhận định Quả Cầu Vàng cũng là bàn đạp cho nhiều ngôi sao trẻ tại Hollywood. Rachel Zegler, Kodi
        Smit-McPhee, Ariana DeBose, Emma Corrin, Richard Madden, Awkwafina hay Taron Egerton xây dựng được sự nghiệp
        vững chắc sau khi chiến thắng. Năm nay, một số tên tuổi mới như Diego Calva hay Barry Keoghan được kỳ vọng
        tại các hạng mục lớn.
    </p>
    <p>
        Tuy nhiên, nhà báo Steven McIntosh của BBC nhận định câu hỏi lớn nhất trước đêm trao giải vẫn là liệu các
        ngôi sao Hollywood đã sẵn sàng trở lại thảm đỏ của sự kiện. Một nhóm nhỏ sao hạng A xác nhận sẽ tham dự lễ
        trao giải. Ana de Armas - người nhận đề cử nữ chính với vai Marilyn Monroe trong Blonde - chắc chắn có mặt.
        Jamie Lee Curtis nhận đề cử nữ phụ với phim Everything Everywhere All At Once. Nam chính Elvis - Austin
        Butler - cũng nhận lời tham gia sau khi có tên trong danh sách đề cử. Các cái tên khác xác nhận gồm Steven
        Spielberg, Quentin Tarantino, Niecy Nash-Betts, Ana Gasteyer, Billy Porter, Colman Domingo, Michaela Jaé
        Rodriguez, Natasha Lyonne, Nicole Byer, Tracy Morgan và đoàn phim RRR đến từ Ấn Độ.
    </p>
    <p>
        Nhiều sao khác hiện bỏ ngỏ khả năng tham gia. Trong số đó, Daniel Craig, Brad Pitt, Margot Robbie.. là những
        người có khả năng thắng giải nhưng không lên tiếng. Brendan Fraser - được đề cử giải nam chính - chắc chắn
        không tham dự. Tài tử The Whale từng tố cáo một thành viên ban tổ chức quấy rối tình dục anh. Tom Cruise
        nhiều khả năng cũng không xuất hiện sau khi thông báo trả lại ba cup Quả Cầu Vàng hồi năm 2021.
    </p>
    <p>
        Nguồn tin của Vanity Fair từng cho biết đa phần Hollywood mong muốn thương hiệu Quả Cầu Vàng có thể vực dậy
        sau bê bối. Đài NBC khen ngợi nỗ lực trong thời gian qua của HFPA để cải tổ nội bộ. Sự tái xuất của các tên
        tuổi lớn năm nay cũng như lời ghi nhận cho những sự thay đổi này.
    </p>
    <p>
        Quả Cầu Vàng do HFPA sáng lập năm 1944, là giải thưởng thu hút đông khán giả thứ ba tại Mỹ, sau Oscar và 
        Grammy. Ban giám khảo là các thành viên của HFPA, đến từ các tờ báo của khoảng 55 quốc gia. Những năm gần 
        đây, giải bị tẩy chay vì không có thành viên da màu trong ban giám khảo và nghi vấn mua giải.
    </p>
</div>', 12, 't', 16, 2, NULL, 'https://i1-giaitri.vnecdn.net/2023/01/10/Ana-de-Armas-3619-1673338715.jpg?w=1020&h=0&q=100&dpr=1&fit=crop&s=0UVMOuFMB6Jw23LEh_QtOg');
INSERT INTO "public"."articles" OVERRIDING SYSTEM VALUE VALUES (125, 'Uyên Linh song ca ''Bên trên tầng lầu'' cùng Tăng Duy Tân', 0, 'Ca sĩ Uyên Linh và Tăng Duy Tân sẽ hát "Bên trên tầng lầu" tại lễ trao giải Ngôi sao của năm, ngày 11/1 ở TP HCM.', '<div class="flex flex-col gap-y-2">
    <p>
        Ca sĩ Uyên Linh và Tăng Duy Tân sẽ hát "Bên trên tầng lầu" tại lễ trao giải Ngôi sao của năm, ngày 11/1 ở TP
        HCM.
    </p>
    <p>
        Uyên Linh nói khi ban tổ chức đưa ra gợi ý về màn song ca, cô thích thú và sẵn sàng. Hồi tháng 8/2022, Uyên
        Linh từng biểu diễn hit Bên trên tầng lầu của Tăng Duy Tân ở sân khấu The Mash Singer mùa đầu tiên, nhận phản
        hồi tích cực từ khán giả. Chương trình cũng nằm trong đề cử hạng mục Hiện tượng giải trí, thuộc giải Ngôi sao
        của năm 2022.
    </p>
    <p>
        Tăng Duy Tân cho biết anh vui khi có cơ hội đứng chung sân khấu với đàn chị, hát chung bản hit của mình.
    </p>
    <p>
        Bên trên tầng lầu do Tăng Duy Tân sáng tác, phát hành giữa năm 2022, đạt hơn 50 triệu view trên YouTube. Ca
        khúc có giai điệu bắt tai cùng phần hòa âm phối khí hiện đại. Nhạc phẩm còn được nhiều ca sĩ nổi tiếng như
        Phương Thanh, Thanh Thảo... yêu thích và cover.
    </p>
    <img class="w-full h-full mt-2 rounded-lg" src="https://i1-giaitri.vnecdn.net/2023/01/08/Uyen-Linh-Tang-Duy-Tan-5264-1673191512.jpg?w=1020&h=0&q=100&dpr=1&fit=crop&s=PgnNI5SPpY0ZLvTaq9vDaw" alt="">
    <p>
        Sự kết hợp giữa giọng ca có thâm niên hơn 10 năm và gương mặt mới trong làng nhạc hứa hẹn là điểm nhấn thú vị
        cho chương trình. Tiết mục do đạo diễn Trần Thành Trung dàn dựng, với sự hỗ trợ của vũ đoàn Phương Việt.
    </p>
    <p>
        Uyên Linh sinh năm 1987, là quán quân Vietnam Idol năm 2010. Sau cuộc thi, Uyên Linh phát hành album Giấc mơ
        tôi (2012), đĩa đơn Chờ người nơi ấy (2012), Portrait (2017)... Năm 2022, Uyên Linh liên tục góp mặt tại
        chương trình truyền hình ăn khách. Hồi tháng 9, cô tham gia show Giao lộ thời gian cùng danh ca Tuyết Loan. Ở
        show The Masked Singer - Ca sĩ mặt nạ, Uyên Linh liên tục gây bất ngờ trong hình ảnh Báo Mắt Biếc, có nhiều
        màn trình diễn ấn tượng như Hơn một lần (Tăng Nhật Tuệ), Bước qua mùa cô đơn (Vũ)...
    </p>
    <p>
        Năm 2022, Tăng Duy Tân được nhiều khán giả nhận xét là "hiện tượng mới của làng nhạc". Anh sinh năm 1995,
        trong gia đình gốc làm nông ở Quảng Trị, là anh cả trong gia đình có ba anh em. Anh là cháu của cố nhạc sĩ
        Trần Hoàn, em họ ca sĩ Tùng Dương. Hai năm qua, Tăng Duy Tân vào Nam lập nghiệp, tên tuổi dần được khán giả
        trẻ biết đến khi phát hành các ca khúc Tình đầu, Ngây thơ, Dạ vũ... Anh hiện đầu quân công ty giải trí Big
        Arts Entertainment để phát triển chuyên môn.
    </p>
    <p>
        Tại giải thưởng Ngôi sao của năm, Tăng Duy Tăng được đề cử hạng mục Ngôi sao mới. Khi cổng bình chọn đóng hôm
        6/1, ca sĩ vượt Mono, Emma Lê và Madihu, dẫn đầu về số phiếu từ khán giả. Kết quả sẽ được công bố ở gala trao
        giải.
    </p>
    <p>
        Lễ trao giải còn có các tiết mục trình diễn đến từ nhiều nghệ sĩ khác như Đàm Vĩnh Hưng, Phương Uyên, Thanh
        Hà, Hiền Thục, Noo Phước Thịnh. Thảm đỏ sự kiện sẽ quy tụ đông đảo người nổi tiếng ở các lĩnh vực âm nhạc,
        điện ảnh, thời trang... Chương trình do Trần Thành Trung đạo diễn với sự hỗ trợ của êkíp T-Production, diễn
        ra tối 11/1 tại White Palace Phạm Văn Đồng, TP HCM.
    </p>
    <p>
        Ngôi sao của năm lần đầu được tổ chức vào năm 2011. Năm nay, chương trình chọn chủ đề Identify nhằm tôn vinh
        những nghệ sĩ có hoạt động nổi bật, được giới chuyên môn đánh giá cao và đông đảo khán giả yêu mến.
    </p>
</div>', 13, 'f', 27, 3, NULL, 'https://i1-giaitri.vnecdn.net/2023/01/08/Uyen-Linh-Tang-Duy-Tan-5264-1673191512.jpg?w=1020&h=0&q=100&dpr=1&fit=crop&s=PgnNI5SPpY0ZLvTaq9vDaw');
INSERT INTO "public"."articles" OVERRIDING SYSTEM VALUE VALUES (126, 'Tam Ca Áo Trắng ra MV sau 20 năm', 0, 'Tam Ca Áo Trắng tái hợp trong MV "Ai cũng cần yêu mà", sau 20 năm ngưng hát.', '<div class="flex flex-col gap-y-2">
    <p>
        Tam Ca Áo Trắng tái hợp trong MV "Ai cũng cần yêu mà", sau 20 năm ngưng hát.
    </p>
    <p>
        Nhóm từ Mỹ về nước hồi giữa tháng 12 để thực hiện dự án âm nhạc. Họ bị khan tiếng do dị ứng thời tiết, phải
        dùng thảo dược để có giọng ổn định cho buổi thu âm. Giọng hát chính của nhóm - Tuyết Ngân - cho biết đồng cảm
        với phần giai điệu và lời có thông điệp: "Ai cũng cần yêu và trao đi tình cảm sẽ có ai đó thương mình".
    </p>
    <p>
        Ca khúc do Nguyễn Hà sáng tác, hòa âm với tiếng đàn synthesize thập niên 1980 và nhịp trống. Nhạc sĩ cho biết
        anh viết ca khúc dựa trên chất giọng và phong cách của Tam Ca Áo Trắng. Anh chỉnh sửa lời bài hát qua ba
        phiên bản mới ưng ý.
    </p>
    <p>
        Nguyễn Hà và nhóm nhạc thân thiết hồi thuở nhỏ, sinh hoạt chung trong Nhà thiếu nhi quận 1 TP HCM. Khi hoạt
        động chuyên nghiệp, họ cùng nhau thực hiện nhiều album cho hãng ghi âm Bến Thành, Vafaco, Phương Nam film.
        "Tôi muốn có một kỷ niệm mới với những người bạn cũ nên chuẩn bị bài này. Tôi nghĩ ca từ mang lại cho nhiều
        người cảm hứng về tình yêu trong ngày đầu năm mới", nhạc sĩ nói.
    </p>
    <img class="w-full h-full mt-2 rounded-lg" src="https://i1-giaitri.vnecdn.net/2023/01/06/tam-ca-ao-trang-4696-1673001055.jpg?w=1020&h=0&q=100&dpr=1&fit=crop&s=xgsg2wIu_PU2DzZ1lm6Prg" alt="">
    <p>
        Tam Ca Áo Trắng được thành lập năm 1992, gồm ba chị em ruột: Tuyết Ngân (chị cả), chị em sinh đôi Minh Thư -
        Minh Tú. Họ có phong cách biểu diễn trẻ trung, giọng ca trong sáng nên được đông đảo khán giả thế hệ 7x, 8x
        mến mộ qua nhiều ca khúc: Vào hạ (Lê Hựu Hà), Phố xa (Lê Quốc Thắng), Góc phố dịu dàng (Trần Minh Phi)... Từ
        năm 2002, Minh Tú lập gia đình, sinh con, sau đó đến Minh Thư (2003) và Tuyết Ngân (2005) nên nhóm dừng hoạt
        động.
    <p>
    Nguyễn Hà sinh 1975, ngoài sáng tác còn là đạo diễn các chương trình âm nhạc. Ca khúc Nhé anh của anh là một 
    trong những bản hit của Mỹ Tâm cuối thập niên 1990. Anh cũng hòa âm các ca khúc Cho em một ngày (Dương Thụ sáng 
    tác - Hồng Nhung hát), Trên đỉnh Phù Vân (Phó Đức Phương sáng tác - Mỹ Linh hát)... Anh kết hôn với ca sĩ Minh 
    Trang - thành viên trong nhóm Ngũ long công chúa một thời.
    </p>
</div>', 13, 'f', 15, 3, NULL, 'https://i1-giaitri.vnecdn.net/2023/01/06/tam-ca-ao-trang-4696-1673001055.jpg?w=1020&h=0&q=100&dpr=1&fit=crop&s=xgsg2wIu_PU2DzZ1lm6Prg');
INSERT INTO "public"."articles" OVERRIDING SYSTEM VALUE VALUES (29, 'VKS: Bà Nhàn AIC ''đạo diễn'' các vụ thông thầu', 43, 'VKS cho rằng vụ án thông thầu ở Bệnh viện đa khoa Đồng Nai được tổ chức tinh vi, dưới sự cầm đầu, đạo diễn của Chủ tịch AIC Nguyễn Thị Thanh Nhàn (đang bỏ trốn).', '<div class="flex flex-col gap-y-2">
    <p>
        VKS cho rằng vụ án thông thầu ở Bệnh viện đa khoa Đồng Nai được tổ chức tinh vi, dưới sự cầm đầu, đạo diễn
        của Chủ tịch AIC Nguyễn Thị Thanh Nhàn (đang bỏ trốn).
    </p>
    <p>
        Chiều 28/12, ngày thứ 7 xét xử vụ án vi phạm đấu thầu, đưa nhận hối lộ xảy ra ở Đồng Nai gây thiệt hại hơn
        152 tỷ đồng, đại diện VKSND Hà Nội đối đáp với nội dung bào chữa được luật sư nêu những ngày qua.
    </p>
    <p>
        Theo VKS, đây là vụ án được tổ chức tinh vi, phân vai đầy đủ dưới sự "chủ mưu, cầm đầu và đạo diễn" của bà
        Nhàn. Mỗi người được phân công trách nhiệm cụ thể với các quyền lợi, nghĩa vụ rõ ràng. Giúp sức tích cực cho
        bà Nhàn là Phó tổng giám đốc Trần Mạnh Hà, tiếp đến là Phó tổng giám đốc Hoàng Thị Thuý Nga.
    </p>
    <img class="w-full h-full mt-2 rounded-lg" src="https://i1-vnexpress.vnecdn.net/2022/12/28/Tha-i-28-jpeg-3902-1672221889.jpg?w=1020&h=0&q=100&dpr=1&fit=crop&s=YvAPXfS4IM03hqdngyRNtQ" alt="">
    <p>
        VKS không đồng ý với quan điểm của luật sư nói "nhiều bị cáo bị quy kết bỏ trốn là không đúng", do họ đã xuất
        cảnh từ khi vụ án chưa khởi tố. Luật sư đề nghị tạm đình chỉ điều tra bị can hoặc gỡ lệnh truy nã với những
        bị cáo này.
    </p>
    <p>
        Dẫn quy định pháp luật, công tố viên cho hay toà chỉ có thể xét xử vắng mặt khi người đó bỏ trốn, đã phát
        lệnh truy nã mà không có kết quả hoặc đang ở nước ngoài, vì lý do bất khả kháng không thể về tham dự phiên
        toà. Tuy nhiên, trong vụ án này, bà Nhàn và 7 người bỏ trốn đều có hành vi phạm tội liên quan những bị can
        khác nên nhà chức trách không tạm đình chỉ điều tra bị can mà vẫn truy tố, xét xử "là đúng". Về ý "không bỏ
        trốn", VKS đối đáp, luật không quy định thời điểm nên trốn trước hay sau khi khởi tố "đều bị cáo buộc là bỏ
        trốn, không chịu trách nhiệm trước pháp luật". Hơn nữa, cả 8 bị cáo đều chưa bị bắt hoặc ra đầu thú nên VKS
        bác quan điểm đề nghị gỡ lệnh truy nã.
    </p>
    <p>
        Đề nghị giảm án cho cựu chủ tịch Đồng Nai.
    </p>
    <p>
        Cơ quan công tố đánh giá cao tinh thần của cựu chủ tịch tỉnh Đồng Nai Đinh Quốc Thái khi thành khẩn nhận tội
        từ lúc điều tra đến giai đoạn truy tố, xét xử. Trong 36 bị cáo, VKS thấy ông Thái "nổi trội nhất" nên đề nghị
        toà giảm thêm hình phạt. Tại phần luận tội, VKS đề nghị tuyên phạt ông Thái 9-10 năm tù về tội Nhận hối lộ,
        dưới mức thấp nhất của khung hình phạt.
    </p>
    <p>
        Khai trước toà, ông Thái cho hay đã thành khẩn nhận tội về các sai phạm gây ra trong quá trình công tác.
        Trước yêu cầu cần làm rõ các vấn đề, ông Thái cho rằng "đã nhận tội hết rồi, không cần làm gì nữa".
    </p>
    <p>
        Ông mong HĐXX cho các bị cáo khác được hưởng khoan hồng. Trong phần tranh luận, luật sư của cựu bí thư Tỉnh
        ủy Trần Đình Thành đề nghị cho thân chủ được hưởng tình tiết giảm nhẹ "đã tự thú". Nhưng VKS cho rằng, phải
        qua bốn lời khai, bốn bản tường trình trong hồ sơ vụ án ông Thành mới khai nhận đủ số lần, số tiền nhận hối
        lộ. Đây là kết quả đấu tranh của cơ quan điều tra chứ không phải tình tiết tự thú theo quy định.
    </p>
    <p>
        Theo luật sư, ông Thành không có quyền quyết định cho AIC trúng thầu nên bị truy tố về tội Nhận hối lộ là
        không thoả đáng. Bác quan điểm này, VKS khẳng định ông Thành là người đứng đầu Tỉnh uỷ, chịu trách nhiệm cao
        nhất của Tỉnh uỷ, chịu trách nhiệm về sự lãnh đạo của Đảng trên mọi lĩnh vực nên không thể nói "không có
        quyền hạn gì để cho AIC trúng thầu".
    </p>
    <p>
        VKS sau đó công bố nhiều lời khai của ông Thành và Giám đốc Bệnh viện Đa khoa Đồng Nai Phan Huy Anh Vũ để
        chứng minh cựu bí thư quan tâm đặc biệt đến dự án đấu thầu tại bệnh viện. "Bởi thế cáo buộc ông Thành lợi
        dụng chức vụ để nhận hối lộ 14,5 tỷ đồng của AIC là có căn cứ", VKS lập luận.
    </p>
    <p>
        Với bị cáo Bồ Ngọc Thu, cựu Giám đốc Sở kế hoạch đầu tư, luật sư cho rằng bà không có hành vi vụ lợi nên đề
        nghị chuyển tội danh. Tuy nhiên, VKS khẳng định bà Thu có hai động cơ vụ lợi. Thứ nhất, được lợi về mặt phi
        vật chất khi không làm "bí thư phật ý". Thứ hai, được lợi về vật chất khi bà Thu nhận hơn một tỷ đồng từ AIC.
        Về tranh luận ông Phan Huy Anh Vũ (cựu Giám đốc Bệnh viện Đồng Nai, cựu Giám đốc Sở Y tế) không phạm hai tội
        như truy tố, VKS cho rằng ông Vũ là người trực tiếp quản lý dự án, ký hồ sơ từ khâu chuẩn bị đến đấu thầu.
    </p>
    <p>
        VKS sau đó dẫn chứng nhiều lời khai thể hiện, ông Vũ nhiều lần gọi điện cho bà Nhàn để bàn bạc về các gói
        thầu. Khi được Bí thư Tỉnh ủy "mở lời", ông Vũ đồng ý và giúp đỡ AIC để được trúng thầu.
    </p>
    <p>
        Ông Vũ bị cáo buộc đã 6 lần nhận 14,8 tỷ đồng từ AIC và sau nhiều lần nhận tiền đều nhắn tin cảm ơn bà Nhàn.
        Nhận dạng trong quá trình điều tra, ông Vũ cũng nhận ra ngay ông Trần Mạnh Hà, người đã nhiều lần thay mặt bà
        Nhàn, đưa tiền cho mình tại phòng làm việc.
    </p>
    <p>
        Theo VKS, việc hứa hẹn của ông Vũ với bà Nhàn là mặc định, ở đây được hiểu là "cơ chế ngầm" nên truy tố về
        hai tội là có căn cứ.
    </p>
    <p>
        AIC đề nghị được khắc phục hậu quả thay các bị cáo
    </p>
    <p>
        Chiều 28/12, đại diện Công ty AIC cho rằng họ là bị đơn, còn nguyên đơn là Bệnh viện đa khoa Đồng Nai, chứ
        không phải UBND tỉnh Đồng Nai. Đây là thiệt hại theo hợp đồng đã ký giữa Công ty AIC chứ không phải của các
        cá nhân.
    </p>
    <p>
        Vị đại diện khẳng định AIC sẽ phải bồi thường 152 tỷ đồng thiệt hại trong vụ án, chứ không phải ba cá nhân là
        bà Nhàn, ông Hà và bà Nga như VKS đề nghị. Do đã phong toả hơn 107 tỷ đồng của AIC tại các tài khoản ngân
        hàng và nếu cần, nhà chức trách có thể phong toả thêm để phục vụ bồi thường.
    </p>
    <p>
        Tuy nhiên, theo VKS, đây là vụ án hình sự nên trách nhiệm bồi thường thuộc về những người gây ra hành vi trái
        pháp luật. Bởi thế, bà Nhàn phải bồi thường 2/3 thiệt hại; hai phó tổng AIC Hà và Nga bồi thường 1/3.
    </p>
    <p>
        "Hơn nữa, Công ty AIC nhận bồi thường nhưng không có tài sản gì để bồi thường nên quan điểm của VKS là buộc
        các cá nhân bồi thường để đúng tinh thần là thu hồi triệt để cho tài sản cho Nhà nước", đại diện VKS đối đáp.
    </p>
    <p>
        VKS đề nghị tiếp tục kê biên sáu căn hộ chung cư trên phố Lý Thường Kiệt và căn biệt thự trên phố Nguyễn Huy
        Tự đứng tên bà Nhàn; chuyển cơ quan điều tra tiếp tục xác minh số tiền 107 tỷ đồng bị phong toả tại các tài
        khoản của AIC và căn biệt thự trên phố Trần Hưng Đạo do bà Nhàn nhờ cha đẻ đứng tên...
    </p>
</div>', 2, 'f', 28, 4, '2022-12-28', 'https://i1-vnexpress.vnecdn.net/2022/12/28/Tha-i-28-jpeg-3902-1672221889.jpg?w=1020&h=0&q=100&dpr=1&fit=crop&s=YvAPXfS4IM03hqdngyRNtQ');
INSERT INTO "public"."articles" OVERRIDING SYSTEM VALUE VALUES (30, 'HLV Shin Tae-yong quyết đổi vận trước Thái Lan', 49, 'INDONESIA Theo HLV Shin Tae-yong, Indonesia đang tiến bộ và người hâm mộ có thể tin tưởng vào một kết quả tốt trước Thái Lan ở AFF Cup 2022', '<div class="flex flex-col gap-y-2">
    <p>
        INDONESIA Theo HLV Shin Tae-yong, Indonesia đang tiến bộ và người hâm mộ có thể tin tưởng vào một kết quả tốt
        trước Thái Lan ở AFF Cup 2022
    </p>
    <p>
        Indonesia - Thái Lan: 16h30 thứ Năm 29/12, trên VnExpress.
    </p>
    <p>
        Shin Tae-yong dẫn dắt Hàn Quốc ở vòng chung kết World Cup 2018. Vì vậy, ông nhận nhiều kỳ vọng khi cầm lái
        Indonesia. Nhưng dưới triều đại của ông, đội tuyển xứ vạn đảo chưa thể tạo đột biến, ít nhất là trong những
        cuộc đối đầu với Thái Lan. Họ hoà 2-2 ở vòng loại hai World Cup 2022, thua 0-4 ở lượt đi và hoà 2-2 ở lượt về
        chung kết AFF Cup 2020. Khi dẫn dắt U23 Indonesia, ông và các học trò tiếp tục thua U23 Thái Lan ở bán kết
        SEA Games 2021.
    </p>
    <img class="w-full h-full mt-2 rounded-lg" src="https://i1-thethao.vnecdn.net/2022/12/28/pssi-hlv-shin-tae-yong-indones-1860-9315-1672233152.jpg?w=1020&h=0&q=100&dpr=1&fit=crop&s=HBJ3MgJ_02hO-rO-hPlVpA" alt="">
    <p>
        Nhưng trước cuộc tái ngộ ở lượt bốn bảng A AFF Cup ngày mai 29/12, HLV Shin hứa hẹn Indonesia có thể đánh bại
        Thái Lan. "Trước đây, tôi không thể kiểm soát tốt đội tuyển vì Covid-19", ông nói ở cuộc họp báo trước trận
        đấu trên sân Gelora Bung Karno. "Nhưng sau gần một năm, tôi đã kiểm soát được tình hình, giúp đội tuyển tiến
        bộ và gắn kết trong lối chơi. Tôi xin nhấn mạnh rằng mọi người có thể tin tưởng vào đội tuyển Indonesia hiện
        tại". Có cùng sáu điểm nhưng Indonesia đang xếp dưới Thái Lan do kém hiệu số bàn thắng bại (+8 so với +9). Vì
        vậy, một chiến thắng sẽ giúp thầy trò Shin nắm chắc đầu bảng để sớm vào bán kết. "Quả thật, trận này quan
        trọng nhất bảng A", nhà cầm quân người Hàn Quốc nói. "Tôi đã nói với toàn đội về tầm quan trọng ấy, mong muốn
        họ cố gắng hết sức và tôi sẵn sàng hy sinh vì đội bóng này".
    </p>
    <p>
        Indonesia đã ghi được chín bàn từ đầu giải nhưng các tiền đạo chỉ đóng góp hai trong số đó, nhờ công Ramadhan
        Sananta và Ilija Spasojevic ở chiến thắng 7-0 trước đội yếu nhất bảng Brunei. HLV Shin cho rằng nhiệm vụ
        chính của tiền đạo là ghi bàn nhưng có điều còn quan trọng hơn thế, đó là đóng góp vào chiến thắng chung của
        tập thể.
    </p>
    <p>
        Dù vậy, trong hiệp một trận đấu Brunei, máy quay bắt được khoảnh khắc HLV Shin dường như nổi nóng với cầu thủ
        chạy cánh Egy Maulana Vikri. Khi ấy, trận đấu tạm dừng để một cầu thủ được bác sĩ chăm sóc, và HLV người Hàn
        Quốc lập tức gọi "số 10" ra ngoài đường biên để đề nghị anh ra quyết định nhanh hơn. Ở trận ra quân thắng
        Campuchia hôm 23/12, Indonesia mở tỷ số nhờ công Egy ngay phút thứ 7, nhưng bị gỡ hòa sau đó tám phút và chỉ
        thắng sít sao 2-1. Theo báo chí Indonesia, HLV Shin đã rất tức giận với học trò trong phòng thay đồ sau trận
        đó. Ông cho rằng Indonesia bỏ lỡ quá nhiều cơ hội ngon ăn, trong đó Egy có một tình huống đối mặt thủ môn
        Campuchia nhưng xử lý rườm rà rồi mất bóng.
    </p>
    <p>
        Egy là tài năng sáng giá của bóng đá Indonesia. Anh từng được báo Anh Guardian xếp vào 60 cầu thủ sinh năm
        2000 triển vọng nhất trên thế giới. Ngôi sao 22 tuổi khởi nghiệp ở CLB Ba Lan Lechia Gdansk rồi khoác áo
        Senica (Slovakia). Vào ngày 15/12, Egy chấm dứt hợp đồng với CLB Slovakia ViOn Zlata Moravce rồi trở về tập
        trung cùng tuyển Indonesia dự AFF Cup 2022.
    </p>
</div>', 2, 'f', 27, 4, '2022-12-28', 'https://i1-thethao.vnecdn.net/2022/12/28/pssi-hlv-shin-tae-yong-indones-1860-9315-1672233152.jpg?w=1020&h=0&q=100&dpr=1&fit=crop&s=HBJ3MgJ_02hO-rO-hPlVpA');
INSERT INTO "public"."articles" OVERRIDING SYSTEM VALUE VALUES (43, 'Mở đợt cao điểm xử lý khai thác hải sản trái phép', 69, 'Phó thủ tướng Lê Văn Thành cho biết, Việt Nam sẽ mở đợt cao điểm kiểm tra, xử lý vi phạm về khai thác hải sản trái phép, không khai báo và không theo quy định (IUU).', '<div class="flex flex-col gap-y-2">
    <p>
        Phó thủ tướng Lê Văn Thành cho biết, Việt Nam sẽ mở đợt cao điểm kiểm tra, xử lý vi phạm về khai thác hải sản
        trái phép, không khai báo và không theo quy định (IUU).
    </p>
    <p>
        Chủ trì họp trực tuyến đến cấp xã của 28 tỉnh, thành ven biển sáng 20/9, Phó thủ tướng Lê Văn Thành đánh giá,
        việc gỡ thẻ vàng thời gian qua có tiến bộ so với trước. Quản lý đội tàu vào nền nếp; phân bổ hạn ngạch giấy
        phép khai thác vùng khơi, vùng lộng, ven bờ được thực hiện; hệ thống lắp đặt thiết bị giám sát hành trình
        (VMS) được triển khai. Lực lượng thực thi pháp luật cũng tăng cường tuần tra, ngăn chặn nhiều tàu cá vi phạm
        vùng biển nước ngoài.
    </p>
    <p>
        Tuy nhiên, kết quả đạt được chưa đáp ứng yêu cầu. Việc cấp giấy phép khai thác thủy sản với đội tàu mới đạt
        97% với tàu dài từ 15m; 47% với tàu dưới 15m. Lắp đặt VMS năm 2022 còn chậm, chỉ tăng 5%; tàu cá Việt Nam vẫn
        vi phạm khai thác hải sản vùng biển nước ngoài; truy xuất nguồn gốc còn nhiều tồn tại.
    </p>
    <img class="w-full h-full mt-2 rounded-lg" src="https://i1-vnexpress.vnecdn.net/2022/09/20/-2880-1663661758.jpg?w=1020&h=0&q=100&dpr=1&fit=crop&s=atyIku_CWP3ILkbiQlTYdA" alt="">
    <p>
        "Đây là vấn đề lớn, nếu không khắc phục được thì không những không gỡ được thẻ vàng mà còn có nguy cơ bị nâng
        lên cảnh báo thẻ đỏ", ông Thành nói.
    </p>
    <p>
        Do đó, Phó thủ tướng yêu cầu các địa phương giải quyết bằng được những tồn tại nêu trên. Đoàn liên ngành sẽ
        được lập để kiểm tra, xử lý các vi phạm IUU. Cảnh sát biển, biên phòng, kiểm ngư, công an địa phương được
        giao đẩy mạnh tuần tra, xử lý vi phạm trên biển và tại cảng cá. Thứ trưởng Nông nghiệp và Phát triển nông
        thôn Phùng Đức Tiến cho biết từng kiểm tra cảng cá, xem sổ nhật ký của nhiều tàu, thấy ghi sơ sài, có tàu
        không ghi. Trong khi đó, nếu không có nhật ký thì rất khó truy xuất nguồn gốc.
    </p>
    <p>
        Ngoài ra, có tàu lắp đặt VMS nhưng không kết nối liên tục, ngư dân "lúc thì đổ lỗi do thiết bị, lúc thì tại
        thời tiết". Chính sách xử lý vi phạm chưa thống nhất khi có nơi lập biên bản, có nơi gọi đến nhắc nhở, có nơi
        xử phạt, nên có tình trạng tàu tỉnh này chạy sang tỉnh kia. "Chúng tôi đang sửa đổi quy định, trong đó đề
        xuất Cảnh sát biển có quyền xử phạt các tàu cá vi phạm", ông Tiến nói.
    </p>
    <p>
        Trung tướng Nguyễn Trọng Bình, Phó tổng tham mưu trưởng QĐND Việt Nam đề nghị có chế tài mạnh xử lý tàu cá vi
        phạm vùng biển nước ngoài. "Đi biển chỗ nào nhiều cá, chỗ nào vùng biển của ta, chỗ nào vùng biển nước ngoài,
        tài công (thuyền trưởng) biết rõ", ông Bình nói, mong muốn địa phương vào cuộc mạnh mẽ hơn.
    </p>
    <p>
        Không có tàu bị nước ngoài bắt thời gian qua, Phó chủ tịch tỉnh Thanh Hóa Lê Đức Giang chia sẻ, tỉnh yêu cầu
        tất cả tàu cá lắp VMS và được hỗ trợ thuê bao viễn thông ba năm. Tàu không lắp đặt thiết bị không được ra
        khơi. Tuy nhiên, Phó chủ tịch tỉnh Khánh Hòa Đinh Văn Thiệu cho biết địa phương gặp khó khăn trong vấn đề này
        vì một số tàu cá lắp thiết bị nhưng sau đó cố tình ngắt kết nối.
    </p>
    <p>
        Việt Nam bị Ủy ban châu Âu (EC) cảnh cáo thẻ vàng tháng 10/2017 vì không tuân thủ quy định IUU. Điều này đồng
        nghĩa thủy hải sản xuất khẩu sang EU sẽ bị kiểm soát 100% thay vì kiểm tra xác xuất, tức doanh nghiệp mất
        nhiều chi phí phát sinh hơn. Lãnh đạo Việt Nam đã có nhiều cuộc tiếp xúc với lãnh đạo cấp cao Liên minh châu
        Âu, cam kết chống khai thác trái phép; đề nghị EC sớm gỡ thẻ vàng thủy sản Việt Nam.
    </p>
    <p>
        Theo ước tính, lũy kế 8 tháng, tổng lượng thủy sản Việt Nam ước đạt 5,8 triệu tấn, tăng 2,4% so với cùng kỳ.
        Kim ngạch xuất khẩu đạt trên 7,5 tỷ USD, tăng 35,3%.
    </p>
</div>', 5, 'f', 15, 4, '2022-09-20', 'https://i1-vnexpress.vnecdn.net/2022/09/20/-2880-1663661758.jpg?w=1020&h=0&q=100&dpr=1&fit=crop&s=atyIku_CWP3ILkbiQlTYdA');
INSERT INTO "public"."articles" OVERRIDING SYSTEM VALUE VALUES (46, 'Phát triển thương mại lâm sản bền vững', 38, 'Thời gian qua, lĩnh vực xuất khẩu lâm sản đạt nhiều kết quả quan trọng, đóng góp tích cực vào phát triển kinh tế, xã hội, bảo vệ môi trường và ứng phó với biến đổi khí hậu. Tuy vậy, đứng trước những thách thức mới của diễn biến thị trường quốc tế, các doanh nghiệp phải nâng cao năng lực hơn nữa để tìm kiếm cơ hội, đẩy mạnh chất lượng và lợi thế cạnh tranh của sản phẩm, thúc đẩy thương mại lâm sản bền vững…', '<div class="flex flex-col gap-y-2">
    <p>
        Thời gian qua, lĩnh vực xuất khẩu lâm sản đạt nhiều kết quả quan trọng, đóng góp tích cực vào phát triển kinh
        tế, xã hội, bảo vệ môi trường và ứng phó với biến đổi khí hậu. Tuy vậy, đứng trước những thách thức mới của
        diễn biến thị trường quốc tế, các doanh nghiệp phải nâng cao năng lực hơn nữa để tìm kiếm cơ hội, đẩy mạnh
        chất lượng và lợi thế cạnh tranh của sản phẩm, thúc đẩy thương mại lâm sản bền vững…
    </p>
    <b>
        Thích ứng linh hoạt
    </b>
    <p>
        Chế biến lâm sản là một trong những ngành kinh tế mang lại lợi nhuận cao cho Việt Nam, với tổng doanh thu
        xuất khẩu hằng năm đạt từ 14 đến 17 tỷ USD. Tốc độ tăng trưởng nhanh của ngành lâm nghiệp trong thời gian
        qua, ngoài sự nỗ lực vươn lên của các doanh nghiệp, có đóng góp rất lớn từ sự thông thoáng của hệ thống pháp
        luật kinh doanh trong nước, cùng với các hiệp định thương mại tự do thế hệ mới được ký kết như Hiệp định đối
        tác toàn diện và tiến bộ xuyên Thái Bình Dương (CPTPP), Hiệp định thương mại tự do Việt Nam và EU (EVFTA),
        Hiệp định đối tác kinh tế toàn diện khu vực (RCEP)... Các hiệp định này có mức độ cam kết cao, toàn diện giúp
        nâng cao vị thế của Việt Nam trên thế giới, góp phần tăng cường kết nối thương mại giữa Việt Nam và các khu
        vực, quốc gia trên thế giới.
    </p>
    <p>
        Hiện nay, các doanh nghiệp chế biến lâm sản trong nước đang nâng cao năng lực sản xuất, kinh doanh hướng tới
        xuất khẩu sản phẩm sang các thị trường có lợi nhuận cao như châu Âu, Nhật Bản, Mỹ… Tuy nhiên, đây là những
        thị trường đòi hỏi khắt khe đối với các sản phẩm lâm sản nhập khẩu, từ chất lượng cho tới tính hợp pháp, cũng
        như tác động về mặt xã hội và môi trường của sản phẩm. Mặc dù phải đối mặt với nhiều khó khăn, yêu cầu về bảo
        đảm nguồn gốc hợp pháp tại nhiều thị trường nhưng do thích ứng nhanh, linh hoạt với tình hình mới, xuất khẩu
        lâm sản vẫn tiếp tục đạt được những kết quả tích cực với giá trị kim ngạch không ngừng tăng lên hằng năm.
    </p>
    <img class="w-full h-full mt-2 rounded-lg" src="https://img.nhandan.com.vn/Files/Images/2022/07/06/1_NongNghiep-1657061874587.jpg?_gl=1*n7lza4*_ga*Nzg5MDQ2MzA1LjE2NzIyNDU5Mzk.*_ga_2KXX3JWTKT*MTY3MjI0NTkzOC4xLjEuMTY3MjI0NTkzOC42MC4wLjA." alt="">
    <p>
        Tuy nhiên, theo đánh giá của các doanh nghiệp lâm nghiệp, năm 2022, cùng với dịch bệnh, thế giới đối diện với
        căng thẳng chính trị leo thang đã gây trở ngại thêm cho chuỗi cung ứng vốn đã có nhiều khó khăn trước đó. Giá
        logistics và giá nguyên vật liệu đều tăng cao khiến chi phí đầu vào của các doanh nghiệp biến động mạnh. Điều
        này đang làm yếu đi lợi thế cạnh tranh của các doanh nghiệp xuất khẩu lâm sản, nhất là trong những tháng
        “nước rút” từ nay đến cuối năm.
    </p>
    <p>
        Phó Tổng cục trưởng Lâm nghiệp (Bộ Nông nghiệp và Phát triển nông thôn) Bùi Chính Nghĩa cho rằng, để đạt mục
        tiêu xuất khẩu đạt 17 tỷ USD vào năm 2022 và 20 tỷ USD vào năm 2025 theo Chiến lược phát triển lâm nghiệp
        Việt Nam giai đoạn 2021-2030, tầm nhìn đến năm 2050 đã được Thủ tướng Chính phủ phê duyệt thì ngành chế biến
        lâm sản xuất khẩu đang gặp một số thách thức. Đó là, Mỹ tiếp tục thực hiện điều tra các vụ kiện thương mại;
        chủ nghĩa bảo hộ của các quốc gia nhập khẩu gỗ và sản phẩm gỗ có xu hướng tăng.
    </p>
    <p>
        Thị hiếu của người tiêu dùng các sản phẩm gỗ tại một số thị trường châu Âu thay đổi từ sử dụng đồ mộc ngoại
        thất bằng các loại sản phẩm thay thế như nhựa, sắt thép và các vật liệu thân thiện với môi trường. Chuỗi cung
        ứng sản xuất bị đứt gãy do ảnh hưởng của chiến tranh Nga-Ukraine, đại dịch Covid-19 trên thế giới còn diễn
        biến phức tạp; đặc biệt các thị trường chính xuất khẩu lâm sản của Việt Nam ngày càng yêu cầu kiểm soát chặt
        chẽ nguồn gốc gỗ hợp pháp.
    </p>
    <p>
        Lợi thế của Việt Nam đối với ngành xuất khẩu lâm sản thời gian qua là do có môi trường sản xuất an toàn nhờ
        kiểm soát dịch Covid-19 một cách chặt chẽ, trong khi hàng loạt quốc gia phải tạm dừng sản xuất hoặc đóng cửa
        nhà máy. Theo đánh giá của các chuyên gia, hiện các doanh nghiệp ngành gỗ nhất là đồ gỗ nội thất đã thích ứng
        được tình hình mới, ổn định sản xuất. Các doanh nghiệp đã bắt tay vào đầu tư công nghệ, phát triển sản phẩm
        mới và sử dụng hiệu quả kênh tiếp thị, tăng cường giao thương trực tuyến tìm các đối tác nước ngoài mở rộng
        xuất khẩu. Bên cạnh đó, các doanh nghiệp đã có sự thay đổi rất lớn về mẫu mã và phong cách bán hàng, bắt kịp
        những tiêu chuẩn xuất khẩu và chủ động tiếp thị sản phẩm, trong khi các sản phẩm đồ gỗ của Việt Nam đang từng
        bước đáp ứng tốt hơn các yêu cầu của người tiêu dùng trên thế giới nhất là các thị trường khó tính. Theo dự
        báo, nửa cuối năm 2022, kim ngạch xuất khẩu lâm sản của Việt Nam sang thị trường Mỹ, Nhật Bản, EU sẽ tăng
        mạnh trở lại, khi các thị trường dần nới lỏng các biện pháp phòng dịch, mở cửa thông thương thuận tiện hơn.
    </p>
    <p>
        Nền kinh tế thế giới khởi sắc sẽ là một trong những yếu tố hỗ trợ xuất khẩu lâm sản của Việt Nam sang thị
        trường này tăng mạnh. Một trong những việc mà các doanh nghiệp cần phải làm lúc này là kiểm soát chặt chẽ
        nguồn nguyên liệu lâm sản nhập khẩu. Trong đó, hoạt động xuyên suốt là việc truy xuất, chứng minh nguồn gốc
        hợp pháp, hoạt động này tiêu tốn nhiều nguồn lực của doanh nghiệp và rất khó có thể thực hiện thành công bằng
        phương pháp thủ công.
    </p>
    <b>
        Yêu cầu sống còn
    </b>
    <p>
        Phát triển thương mại bền vững là xu hướng tất yếu của ngành lâm sản. Tuy nhiên, thách thức không nhỏ đối với
        doanh nghiệp là cách thức tích hợp phát triển thương mại bền vững vào các chiến lược ngắn, trung và dài hạn.
        Bên cạnh đó, việc đầu tư cũng đang gây những trở ngại lớn đối với các doanh nghiệp nhỏ và vừa vốn có tầm nhìn
        ngắn hạn, quỹ đầu tư yếu. Chuyển đổi số, thay đổi tập quán giao thương truyền thống để phù hợp với thương mại
        toàn cầu dựa trên nền tảng công nghệ trực tuyến đòi hỏi năng lực trình độ chuyên môn, vốn, nền tảng hạ tầng
        kỹ thuật.
    </p>
    <p>
        Trong khi các khoản đầu tư cho chuyển đổi mô hình phát triển thương mại bền vững thường lớn và không phải lúc
        nào cũng hiển thị kết quả ngay lập tức. Khó khăn ấy càng lớn trong giai đoạn các doanh nghiệp vừa trải qua
        một thời kỳ khủng hoảng do dịch Covid-19 và bây giờ phải đối mặt với bất ổn chính trị quốc tế, giá xăng dầu,
        phí vận chuyển tăng cao.
    </p>
    <p>
        Theo Chủ tịch Hiệp hội Gỗ và Lâm sản Việt Nam (VIFOREST) Đỗ Xuân Lập, từ lâu nay, ngành gỗ Việt Nam đã quen
        với việc sử dụng gỗ nguyên liệu được khai thác từ rừng trồng để đưa vào sản xuất, chế biến xuất khẩu. Tuy
        nhiên, khi đến với các thị trường lớn, các sản phẩm lâm sản của Việt Nam phải đối diện với những rào cản kỹ
        thuật khắt khe, sự cạnh tranh khốc liệt thông qua các quy định thương mại quốc tế.
    </p>
    <p>
        Các doanh nghiệp chế biến lâm sản cần nhận thức được rõ quy định cũng như thị hiếu tiêu dùng tại các thị
        trường trên và đã chấp hành nghiêm túc quy định, yêu cầu này. Ngành gỗ nói riêng và lâm sản nói chung hiện
        cũng đang phải sử dụng rất nhiều nguồn nguyên liệu nhập khẩu từ các thị trường có nền lâm nghiệp phát triển,
        rừng được trồng, quản lý và khai thác bền vững, nên đòi hỏi các doanh nghiệp nhập khẩu phải tuân thủ nghiêm
        ngặt các quy định quốc tế mà Việt Nam đã cam kết. Trong đó, có các cam kết mà Chính phủ đã ký liên quan đến
        phát triển bền vững, tăng trưởng xanh, biến đổi khí hậu, bảo vệ môi trường, bảo tồn đa dạng sinh học, Công
        ước về buôn bán quốc tế đối với các loài nguy cấp (CITES) và Hiệp định Đối tác tự nguyện (VPA/FLEGT). Việc
        thực thi các quy định phát triển lâm sản bền vững đang đặt ra cấp bách hơn bao giờ hết và là yêu cầu sống còn.
    </p>
    <p>
        Phó Chủ tịch Hội mỹ nghệ và chế biến gỗ Thành phố Hồ Chí Minh (HAWA) Nguyễn Chánh Phương cho rằng, thay đổi
        phương thức tiếp cận thương mại hiện không chỉ riêng của ngành chế biến gỗ Việt Nam mà của cả thế giới. Trong
        mục tiêu chuyển đổi số ngành chế biến gỗ, các doanh nghiệp phải đồng hành cùng Chính phủ, đẩy mạnh số hóa,
        xóa bỏ vướng mắc trong quá trình chứng minh nguồn gốc hợp pháp gỗ rừng trồng, bước chuẩn bị hết sức cần thiết
        để có thể đưa gỗ, sản phẩm gỗ trong nước ra thị trường quốc tế, đặc biệt là thị trường EU.
    </p>
    <p>
        Để phát triển thương hiệu sản phẩm gỗ Việt Nam có uy tín trên thị trường trong nước và quốc tế, phấn đấu để
        Việt Nam nằm trong nhóm các nước hàng đầu thế giới về sản xuất, chế biến, xuất khẩu gỗ và sản phẩm gỗ, Thủ
        tướng Chính phủ đã phê duyệt “Đề án phát triển ngành công nghiệp chế biến gỗ bền vững, hiệu quả giai đoạn
        2021-2030”. Theo đó chỉ đạo, trong thời gian tới, cần hình thành các khu lâm nghiệp ứng dụng công nghệ cao,
        thu hút đầu tư của các doanh nghiệp chế biến gỗ và doanh nghiệp sản xuất vật liệu phụ trợ.
    </p>
    <p>
        Phát triển, mở rộng các khu, cụm công nghiệp chế biến gỗ và lâm sản tại các địa phương có tiềm năng, lợi thế
        phát triển. Thu hút đầu tư có chọn lọc, ưu tiên các dự án sản xuất các sản phẩm có giá trị gia tăng cao, công
        nghệ tiên tiến, tiết kiệm năng lượng, nguyên, nhiên, vật liệu, phát triển các nhóm sản phẩm gỗ có lợi thế
        cạnh tranh, giá trị gia tăng, nhu cầu sử dụng cao, ổn định trên thị trường. Đẩy mạnh phát triển thương mại
        điện tử, xây dựng cơ sở dữ liệu, chuyển đổi số các hoạt động sản xuất, kinh doanh, quản trị doanh nghiệp và
        ứng dụng công nghệ thông tin để bán hàng trực tuyến hoặc qua các sàn thương mại điện tử.
    </p>
</div>', 6, 'f', 27, 4, '2022-12-28', 'https://img.nhandan.com.vn/Files/Images/2022/07/06/1_NongNghiep-1657061874587.jpg?_gl=1*n7lza4*_ga*Nzg5MDQ2MzA1LjE2NzIyNDU5Mzk.*_ga_2KXX3JWTKT*MTY3MjI0NTkzOC4xLjEuMTY3MjI0NTkzOC42MC4wLjA.');
INSERT INTO "public"."articles" OVERRIDING SYSTEM VALUE VALUES (55, 'Ten Hag chê hàng công Man Utd phung phí', 0, 'Theo HLV Erik ten Hag, Man Utd cần ghi nhiều bàn và giải quyết trận đấu sớm dù đánh bại Nottingham Forest 3-0 ở vòng 17 Ngoại hạng Anh.', '<div class="flex flex-col gap-y-2">
    <p>
        Theo HLV Erik ten Hag, Man Utd cần ghi nhiều bàn và giải quyết trận đấu sớm dù đánh bại Nottingham Forest 3-0
        ở vòng 17 Ngoại hạng Anh.
    </p>
    <p>
        "Về phòng thay đồ, tôi đã nói với đội bóng rằng chúng tôi phải ghi nhiều bàn hơn", Ten Hag nói với Prime
        Video sau trận đấu ở Old Trafford. "Chúng tôi tạo rất nhiều cơ hội, và phải tới cuối trận mới ghi bàn thứ ba.
        Chúng tôi cần kết liễu trận đấu sớm hơn".
    </p>
    <p>
        Trước đối thủ đang đứng ở gần cuối bảng, Man Utd nhập cuộc tưng bừng và dẫn hai bàn sau 22 phút nhờ công
        Marcus Rashford và Anthony Martial. Cuối hiệp một, "Quỷ Đỏ" chùng xuống, để Nottingham Forest nhiều lần uy
        hiếp. Trong đó, Ryan Yates đánh đầu đập đất tung lưới David De Gea, nhưng VAR vào cuộc, xác định một cầu thủ
        khách khác đã việt vị.
    </p>
    <img class="w-full h-full mt-2 rounded-lg" src="https://i1-thethao.vnecdn.net/2022/12/28/2022122719124-63ab88200786d652-2581-7654-1672189953.jpg?w=1020&h=0&q=100&dpr=1&fit=crop&s=irMcmj8gWcXieCGmLcL4Vw" alt="">
    <p>
        Sang hiệp hai, Man Utd lấy lại thế trận, nhưng Antony, Martial hay Rashford không thắng được thủ môn Wayne
        Hennessey với những pha dứt điểm cận thành. Phải tới phút 87, chủ nhà mới ấn định tỷ số nhờ công của Fred.
        Theo Ten Hag, Martial, Rashford hay Bruno Fernandes có bản năng săn bàn, nhưng cần sắc bén hơn trong khâu dứt
        điểm. HLV người Hà Lan nhấn mạnh việc ghi thêm những bàn thắng từ sớm sẽ giúp Man Utd giữ chân, không phải
        bung sức trong thời gian còn lại. "Ngay đầu hiệp hai, chúng tôi có hai cơ hội ngon ăn để kết liễu trận đấu.
        Nếu ghi bàn, mọi thứ sau đó sẽ dễ dàng hơn", ông nói.
    </p>
    <p>
        Ten Hag tiếp tục xác nhận muốn tuyển mộ tiền đạo khi kỳ chuyển nhượng tháng 1/2023 mở cửa để thế chỗ
        Cristiano Ronaldo - người thôi hợp đồng sớm nửa năm bởi cuộc phỏng vấn gây tranh cãi trên Piers Morgan
        Uncensored. Nhưng HLV Man Utd từ chối nói về việc Liverpool tuyển mộ thành công tiền đạo Cody Gakpo. Hè 2022,
        Man Utd từng nhắm Gakpo.
    </p>
    <p>
        "Chúng tôi đang tìm kiếm những cầu thủ tấn công, một tiền đạo", Ten Hag tiết lộ. "Điều đó là cần thiết khi
        chúng tôi phải thi đấu một trận trong khoảng ba ngày. Chúng tôi cần số lượng cần thiết các cầu thủ trong đội
        hình để chinh chiến trên mọi đấu trường. Nhưng mọi thứ phải phù hợp với tiêu chí thể thao và tài chính".
    </p>
    <p>
        Trong trận thắng Nottingham Forest, Casemiro là một trong người thi đấu hay nhất. Tiền vệ Brazil tranh cướp
        thành công ở gần cột cờ góc, mở ra bàn thứ hai của Martial, rồi cắt bóng ở giữa sân và kiến tạo để Fred ấn
        định tỷ số. Trận này, Casemiro dẫn đầu ở nhiều thông số, gồm đường chuyền quyết định (3), tắc bóng (5) và
        tranh chấp tay đôi (11). "Thật vui khi được làm việc cùng Casemiro", Ten Hag ca ngợi tiền vệ Brazil. "Tất cả
        đều thấy tầm quan trọng của cậu ấy. Màn trình diễn, đẳng cấp mà Casemiro mang lại cho CLB là rất lớn".
    </p>
    <p>
        Chiến thắng trong trận cuối cùng trên sân Old Trafford của năm 2022 giúp Man Utd củng cố vị trí thứ năm với
        29 điểm, kém Tottenham một điểm và đá ít hơn một trận. Ở vòng tiếp theo, đoàn quân dưới trướng Ten Hag sẽ làm
        khách của Wolves - đội hiện đứng thứ 18 - ngày 31/12.
    </p>
</div>', 7, 'f', 18, 4, '2023-01-08', 'https://i1-thethao.vnecdn.net/2022/12/28/2022122719124-63ab88200786d652-2581-7654-1672189953.jpg?w=1020&h=0&q=100&dpr=1&fit=crop&s=irMcmj8gWcXieCGmLcL4Vw');
INSERT INTO "public"."articles" OVERRIDING SYSTEM VALUE VALUES (32, 'Nghi can chiếm đoạt 130 triệu đồng của ngư dân bị bắt', 62, 'CÀ MAU Dương Văn Bình bị bắt tạm giam vì đã chiếm đoạt 130 triệu đồng của chủ tàu bồi thường cho nạn nhân Trương Văn Trung, người bị hành hạ trên biển 6 tháng trước.', '<div class="flex flex-col gap-y-2">
    <p>
        CÀ MAU Dương Văn Bình bị bắt tạm giam vì đã chiếm đoạt 130 triệu đồng của chủ tàu bồi thường cho nạn nhân
        Trương Văn Trung, người bị hành hạ trên biển 6 tháng trước.
    </p>
    <p>
        Ngày 28/12, Bình bị Công an huyện Trần Văn Thời khởi tố, bắt tạm giam về hành vi Lạm dụng tín nhiệm chiếm
        đoạt tài sản, theo Điều 175 Bộ luật Hình sự 2015 (sửa đổi 2017).
    </p>
    <p>
        Bước đầu Bình thừa nhận là người quen của nạn nhân Trung. Sau khi Trung bị hành hạ, vào bờ chữa trị thương
        tích, Bình đã nhận 150 triệu đồng từ chủ tàu cá bồi thường cho Trung. Tuy nhiên, anh ta chỉ đưa cho nạn nhân
        20 triệu đồng và giữ lại 130 tiệu đồng để tiêu xài. Sau khi vụ án được khởi tố, Bình mang 120 triệu đồng nộp
        cho Công an huyện Trần Văn Thời. Trước đó, nhà chức trách xác định Nguyễn Văn Của, Nguyễn Công Toàn, Nguyễn
        Văn Tỵ, Đoàn Văn Hùng, Sử Chí Tâm (34-38 tuổi, đã bị bắt tạm giam) đánh đập ngư dân Trương Văn Trung, 47 tuổi
        cùng Lê Văn Bình, 30 tuổi, và dùng điện thoại ghi hình. Sau đó, video được đăng lên mạng xã hội. Kết quả giám
        định cho thấy ông Trung bị thương tật 48%, còn nạn nhân thứ hai cơ quan điều tra chưa thể liên lạc.
    </p>
    <img class="w-full h-full mt-2 rounded-lg" src="https://i1-vnexpress.vnecdn.net/2022/12/28/3-DAI-CA-2-THUI-DICH-8681-1672229833.jpg?w=1020&h=0&q=100&dpr=1&fit=crop&s=7sB8SirxpVnoXGX3d4_QXA" alt="">
    <p>
        Theo điều tra, ngày 4/1, Toàn, Tỵ, Hùng, Tâm cùng 2 thuyền viên khác đi ghe BT 97993 TS (do mẹ Toàn là bà
        Phạm Thị Hà làm chủ) ra biển đánh bắt tại cửa sông Ông Đốc. Sau đó, một thuyền viên không làm được nên đi nhờ
        ghe khác vào bờ. Bà Hà đưa Lê Văn Bình, ra thay thế.
    </p>
    <p>
        Đến ngày 23/5, Trung bị Toàn, Tỵ và Hùng đánh; dùng kìm bẻ răng, bấm vào môi, tay và hạ bộ gây thương tích.
        Một ngày sau, Toàn và Hùng đánh Bình với cách thức tương tự. Ngày 28 và 30/5, lần lượt Trung và Bình đến Công
        an thị trấn Sông Đốc trình báo bị đánh trên ghe của bà Hà. Họ tự thỏa thuận với chủ ghe, không yêu cầu công
        an xử lý hình sự rồi rời khỏi địa phương.
    </p>
    <p>
        Tối 16/11, hai video ghi cảnh ông Trung và Bình bị đánh lan truyền trên mạng. Hai ngày sau Công an huyện Trần
        Văn Thời khởi tố vụ án, đồng thời phối hợp Đồn biên phòng Sông Đốc ra biển áp tải ghe cá đưa Toàn, Tỵ, Hùng
        cùng những người liên quan vào bờ phục vụ điều tra. Bước đầu, các bị can khai do ông Trung "lười làm việc"
        nên họ đánh bằng vỏ xe, roi đuôi cá đuối, kìm, dây thừng, dao, xẻng...
    </p>
</div>', 2, 'f', 27, 4, '2022-12-28', 'https://i1-vnexpress.vnecdn.net/2022/12/28/3-DAI-CA-2-THUI-DICH-8681-1672229833.jpg?w=1020&h=0&q=100&dpr=1&fit=crop&s=7sB8SirxpVnoXGX3d4_QXA');
INSERT INTO "public"."articles" OVERRIDING SYSTEM VALUE VALUES (28, 'Nga bác kế hoạch hòa bình 10 điểm của ông Zelensky', 50, 'Điện Kremlin bác bỏ kế hoạch hòa bình của Tổng thống Ukraine, nói rằng những đề xuất này phải bao gồm "tình hình thực tế" của 4 tỉnh Nga sáp nhập.', '<div class="flex flex-col gap-y-2">
    <p>
        Điện Kremlin bác bỏ kế hoạch hòa bình của Tổng thống Ukraine, nói rằng những đề xuất này phải bao gồm "tình
        hình thực tế" của 4 tỉnh Nga sáp nhập.
    </p>
    <p>
        "Không thể có một kế hoạch hòa bình nào cho Ukraine mà không tính đến thực tế hiện nay liên quan đến lãnh thổ
        Nga, với việc 4 khu vực được sáp nhập vào Nga. Các kế hoạch không tính đến thực tế này sẽ không thể mang lại
        hòa bình", người phát ngôn Điện Kremlin Dmitry Peskov ngày 28/12 nói. Nga tuyên bố sáp nhập các tỉnh Donetsk,
        Lugansk, Kherson và Zaporizhzhia của Ukraine hồi tháng 9 sau cuộc trưng cầu dân ý bị cả Kiev và phương Tây
        phản đối. Nga hiện không kiểm soát hoàn toàn bất kỳ khu vực nào trong 4 tỉnh trên. Tổng thống Ukraine
        Volodymyr Zelensky đang tích cực thúc đẩy kế hoạch hòa bình 10 điểm mà ông công bố lần đầu tiên vào tháng 11.
        Ông cũng đã thảo luận kế hoạch này với Tổng thống Mỹ Joe Biden trong chuyến thăm Washington tuần trước, đồng
        thời thúc giục các lãnh đạo thế giới tổ chức hội nghị thượng đỉnh về hòa bình toàn cầu dựa trên những đề xuất
        đó.
    </p>
    <p>
        Theo kế hoạch này, quân đội Nga phải rút khỏi lãnh thổ được quốc tế công nhận của Ukraine, đồng nghĩa Moskva
        phải từ bỏ cả 4 khu vực mà họ vừa tuyên bố sáp nhập cùng Crimea, bán đảo Nga sáp nhập hồi năm 2014.
    </p>
    <img class="w-full h-full mt-2 rounded-lg" src="https://i1-vnexpress.vnecdn.net/2022/12/28/s7Q2EXSMVRZPB3BXKQV4AEQAQS4-9165-1672225750.jpg?w=1020&h=0&q=100&dpr=1&fit=crop&s=174PEMrZ1jxZ6yPR7eMg5w" alt="">
    <p>
        Điện Kremlin nhiều lần tuyên bố họ sẵn sàng đàm phán hòa bình với Ukraine, nhưng không nhìn thấy thái độ
        tương tự từ Kiev.
    </p>
    <p>
        Sau gần 10 tháng nổ ra chiến sự Nga - Ukraine, xung đột vẫn chưa hạ nhiệt. Kiev gần đây tiến hành chiến dịch
        phản công, trong khi Moskva tăng cường tập kích quy mô lớn vào các cơ sở hạ tầng quan trọng của Ukraine. Các
        cuộc đàm phán của hai bên cũng đình trệ từ cuối tháng 3 khi không tìm được tiếng nói chung về điều kiện chấm
        dứt chiến sự.
    </p>
    <p>
        Tổng thống Nga Vladimir Putin ngày 22/12 nói nước này sẽ cố gắng đảm bảo xung đột ở Ukraine kết thúc càng sớm
        càng tốt và chắc chắn sẽ sử dụng giải pháp ngoại giao. Tuy nhiên, Kiev và phương Tây tỏ ra hoài nghi về tuyên
        bố của ông chủ Điện Kremlin.
    </p>
</div>', 2, 't', 18, 4, '2022-12-28', 'https://i1-vnexpress.vnecdn.net/2022/12/28/s7Q2EXSMVRZPB3BXKQV4AEQAQS4-9165-1672225750.jpg?w=1020&h=0&q=100&dpr=1&fit=crop&s=174PEMrZ1jxZ6yPR7eMg5w');
INSERT INTO "public"."articles" OVERRIDING SYSTEM VALUE VALUES (36, 'HLV Thái Lan không ngại CĐV Indonesia', 4, 'INDONESIA HLV Mano Polking thích sự cuồng nhiệt tại sân Gelora Bung Karno và tự tin sẽ cùng Thái Lan đánh bại chủ nhà Indonesia ở lượt bốn bảng A AFF Cup 2022.', '<div class="flex flex-col gap-y-2">
    <p>
        INDONESIA HLV Mano Polking thích sự cuồng nhiệt tại sân Gelora Bung Karno và tự tin sẽ cùng Thái Lan đánh bại
        chủ nhà Indonesia ở lượt bốn bảng A AFF Cup 2022.
    </p>
    <p>
        Indonesia - Thái Lan: 16h30 thứ Năm 29/12
    </p>
    <p>
        Sân Gelora Bung Karno có sức chứa 80.000 chỗ ngồi, được coi là một trong những "chảo lửa" của bóng đá thế
        giới. Tuy nhiên, sau thảm kịch bóng đá xảy ra hồi tháng 10 tại sân Kanjuruhan, Bung Karno chỉ được đón tối đa
        25.000 khán giả ở trận Campuchia và 40.000 khán giả ở cuộc tiếp đón Thái Lan sắp tới. Dù vậy, con số này vẫn
        là điểm tựa lớn về tinh thần cho Indonesia.
    </p>
    <img class="w-full h-full mt-2 rounded-lg" src="https://i1-thethao.vnecdn.net/2022/12/28/FAT-hlv-mano-polking-thai-lan-2124-5597-1672238798.jpg?w=1020&h=0&q=100&dpr=1&fit=crop&s=xXJK1oja6AhzBzLYvWYkPw" alt="">
    <p>
        Khi được hỏi về sức ép từ CĐV chủ nhà, HLV Mano Polking tỏ ra bình thản. "Chúng tôi coi đó là động lực thi
        đấu", ông nói trong cuộc họp báo chiều 28/12. "Chúng tôi có nhiều cầu thủ giàu kinh nghiệm như Teerasil
        Dangda, Theerathon Bunmathan hay Sarach Yooyen. Họ đã trải qua nhiều trận đấu kiểu này và sẽ biết cách hỗ trợ
        đội tuyển trong những tình thế khó khăn".
    </p>
    <p>
        Cùng thi đấu hai trận và giành sáu điểm tại AFF Cup 2022, Thái Lan xếp trên Indonesia do hơn hiệu số bàn
        thắng bại (+9 so với +8). Đội nào chiến thắng ngày mai sẽ gần như nắm chắc đầu bảng A. Vì vậy, HLV Polking
        khẳng định: "Cả hai đều có đội hình chất lượng, nhưng mục tiêu của chúng tôi vẫn như cũ là giành chiến thắng".
    </p>
    <p>
        Ở lần gặp nhau gần nhất, tại chung kết AFF Cup 2020, Thái Lan thắng 4-0 ở lượt đi và hoà 2-2 ở lượt về trước
        Indonesian để lên ngôi. Dù vậy, HLV Polking vẫn đánh giá cao đồng nghiệp Shin Tae-yong - người từng giúp Hàn
        Quốc đánh bại Đức tại vòng bảng World Cup 2018. Theo ông, với việc từng dẫn dắt một đội tuyển tại sân chơi
        lớn nhất, HLV Shin đang giúp bóng đá Indonesia phát triển.
    </p>
    <p>
        Tại giải năm nay, Thái Lan không có lực lượng mạnh nhất, nhưng không vì thế mà từ bỏ tham vọng vô địch. HLV
        Polking đánh giá ba đội tuyển có thể cạnh tranh danh hiệu với Thái Lan tại giải chỉ có Việt Nam, Indonesia và
        Malaysia.
    </p>
</div>', 3, 't', 28, 4, '2022-12-31', 'https://i1-thethao.vnecdn.net/2022/12/28/FAT-hlv-mano-polking-thai-lan-2124-5597-1672238798.jpg?w=1020&h=0&q=100&dpr=1&fit=crop&s=xXJK1oja6AhzBzLYvWYkPw');
INSERT INTO "public"."articles" OVERRIDING SYSTEM VALUE VALUES (38, 'Trăm cảnh sát bắt 86 người giả nhân viên ngân hàng lừa rút tiền', 11, 'TP HCM Cả trăm cảnh sát ập vào 3 văn phòng trong các toà nhà, bắt 86 người giả nhân viên tín dụng các ngân hàng gợi ý khách rút tiền từ thẻ tín dụng để chiếm đoạt.', '<div class="flex flex-col gap-y-2">
    <p>
        TP HCM Cả trăm cảnh sát ập vào 3 văn phòng trong các toà nhà, bắt 86 người giả nhân viên tín dụng các ngân
        hàng gợi ý khách rút tiền từ thẻ tín dụng để chiếm đoạt.
    </p>
    <p>
        Chiều 28/12, cảnh sát cơ động, hình sự Công an quận Tân Bình phối hợp Cục An ninh mạng và phòng chống tội
        phạm sử dụng công nghệ cao (Bộ Công an) đồng loạt ập vào 3 văn phòng trong các toà nhà ở quận Tân Bình, tạm
        giữ 86 người có dấu hiệu Lừa đảo chiếm đoạt tài sản thông qua mạng viễn thông.
    </p>
    <p>
        Quá trình khám xét, cảnh sát thu 109 máy tính để bàn, 67 laptop, máy in, 118 điện thoại di động, 2 ôtô, 46 xe
        máy, 27 thẻ ngân hàng các loại... Bước đầu, cơ quan điều tra xác định, những nghi can này giả danh nhân viên
        đơn vị phát hành thẻ tín dụng của các ngân hàng, gọi điện thoại tư vấn cho chủ thẻ. Lợi dụng việc ngân hàng
        áp dụng mức phí rất cao đối với chủ thẻ tín dụng khi rút tiền mặt, nhóm này gợi ý hỗ trợ. Những người này gợi
        ý "ngân hàng đang có chính sách giúp khách thoải mái chi tiêu, có thể rút tiền mặt trực tiếp từ thẻ tín dụng
        mà không mất phí". Để làm điều này, chủ thẻ phải chụp ảnh 2 mặt thẻ tín dụng, kèm số bí mật để thanh toán.
    </p>
    <img class="w-full h-full mt-2 rounded-lg" src="https://i1-vnexpress.vnecdn.net/2022/12/28/luadao2-7290-1672237031.jpg?w=1020&h=0&q=100&dpr=1&fit=crop&s=spy_rxtocRAF-seqGxOtQg" alt="">
    <p>
        Khi có các thông tin, nhóm này sử dụng phần mềm quẹt thẻ trên một website bán hàng, gửi mã OTP về cho chủ thẻ
        và yêu cầu cung cấp cho họ. Khi đã có đầy đủ điều kiện, các nghi can vẫn chuyển 75% cho khách nhưng âm thầm
        chuyển 25% hạn mức thẻ còn lại đi nơi khác để chiếm đoạt. Cơ quan điều tra cho rằng có rất nhiều người sập
        bẫy nhóm này nhưng do được chuyển tiền thật nên chưa phát hiện.
    </p>
    <p>
        Cơ quan điều tra đang mở rộng vụ án.
    </p>
</div>', 3, 'f', 16, 4, '2022-12-28', 'https://i1-vnexpress.vnecdn.net/2022/12/28/luadao2-7290-1672237031.jpg?w=1020&h=0&q=100&dpr=1&fit=crop&s=spy_rxtocRAF-seqGxOtQg');
INSERT INTO "public"."articles" OVERRIDING SYSTEM VALUE VALUES (127, 'Thủ tướng Phạm Minh Chính sắp thăm Lào', 0, 'Thủ tướng Phạm Minh Chính sẽ thăm chính thức Lào, đồng chủ trì Kỳ họp Ủy ban liên Chính phủ Việt Nam - Lào từ ngày 11-12/1.', '<div class="flex flex-col gap-y-2">
    <p>
        Thủ tướng Phạm Minh Chính sẽ thăm chính thức Lào, đồng chủ trì Kỳ họp Ủy ban liên Chính phủ Việt Nam - Lào từ
        ngày 11-12/1.
    </p>
    <p>
        Theo lời mời của Thủ tướng Lào Sonexay Siphandone, Thủ tướng Phạm Minh Chính sẽ thăm chính thức Lào và đồng
        chủ trì Kỳ họp lần thứ 45 Ủy ban liên Chính phủ Việt Nam - Lào ngày 11-12/1, Bộ Ngoại giao hôm nay ra thông
        cáo.
    </p>
    <p>
        Việt Nam và Lào thiết lập quan hệ vào tháng 9/1962. Vào tháng 2/2019, hai bên thống nhất nâng mức từ "quan hệ
        hữu nghị truyền thống" lên "quan hệ hữu nghĩ vĩ đại".
    </p>
    <p>
        Việt Nam hiện có 238 dự án đầu tư còn hiệu lực tại Lào, tổng vốn đăng ký khoảng 5,34 tỷ USD, duy trì vị trí
        thứ ba sau Trung Quốc và Thái Lan. Trong năm 2022, hai bên tổ chức đã khởi công và khánh thành, bàn giao một
        số dự án sử dụng vốn viện trợ của chính phủ Việt Nam dành cho chính phủ Lào.
    </p>
    <img class="w-full h-full mt-2 rounded-lg" src="https://i1-vnexpress.vnecdn.net/2023/01/09/thu-tuong-pham-minh-chinh-2464-9206-2169-1673268919.jpg?w=1020&h=0&q=100&dpr=1&fit=crop&s=jpCKXdOdTVPqeUfUSWIrGQ" alt="">
    <p>
        Sau 10 tháng năm 2022, đầu tư Việt Nam tại Lào tăng thêm 5 dự án mới và 4 dự án điều chỉnh tăng vốn với tổng
        giá trị 70 triệu USD, kim ngạch thương mại hai chiều tính đến hết tháng 11/2022 đạt 1,5 tỉ USD, ước đạt hơn
        1,6 tỷ trong cả năm 2022, tăng hơn 20% so với năm 2021.
    </p>
</div>    ', 29, 'f', 18, 1, NULL, 'https://i1-vnexpress.vnecdn.net/2023/01/09/thu-tuong-pham-minh-chinh-2464-9206-2169-1673268919.jpg?w=1020&h=0&q=100&dpr=1&fit=crop&s=jpCKXdOdTVPqeUfUSWIrGQ');
INSERT INTO "public"."articles" OVERRIDING SYSTEM VALUE VALUES (128, 'Hai tân Phó thủ tướng nhận quyết định bổ nhiệm', 0, 'Chiều 9/1, nhận quyết định bổ nhiệm Phó thủ tướng nhiệm kỳ 2021-2026, hai ông Trần Lưu Quang và Trần Hồng Hà khẳng định sẽ toàn tâm toàn ý với công việc mới.', '<div class="flex flex-col gap-y-2">
    <p>
        Chiều 9/1, nhận quyết định bổ nhiệm Phó thủ tướng nhiệm kỳ 2021-2026, hai ông Trần Lưu Quang và Trần Hồng Hà
        khẳng định sẽ toàn tâm toàn ý với công việc mới.
    </p>
    <p>
        Sau khi Bộ trưởng Nội vụ Phạm Thị Thanh Trà công bố quyết định bổ nhiệm, Chủ tịch nước Nguyễn Xuân Phúc đã
        trao cho ông Trần Lưu Quang và Trần Hồng Hà. Thủ tướng Phạm Minh Chính tặng hoa chúc mừng.
    </p>
    <p>
        Theo Thủ tướng, hai tân Phó thủ tướng được đào tạo bài bản, chuyên môn sâu, bản lĩnh, bề dày kinh nghiệm.
        Thời gian tới còn nhiều khó khăn, thách thức. Ông mong hai tân Phó thủ tướng phát huy kinh nghiệm, đoàn kết,
        sáng tạo, hành động quyết liệt, hết sức phụng sự Tổ quốc, nhân dân.
    </p>
    <p>
        Phát biểu sau khi nhận quyết định, Phó thủ tướng Trần Hồng Hà bày tỏ quyết tâm phấn đấu, góp phần xây dựng
        Chính phủ đoàn kết, kỷ cương, đổi mới, sáng tạo; tạo gắn kết hơn giữa các thành viên Chính phủ với địa
        phương.
    </p>
    <img class="w-full h-full mt-2 rounded-lg" src="https://i1-vnexpress.vnecdn.net/2023/01/09/img4676-1673260709508157908109-9331-5982-1673267453.jpg?w=1020&h=0&q=100&dpr=1&fit=crop&s=hbNI5vmk_emH4wSEKyhZ_A" alt="">
    <p>
        Phó thủ tướng Trần Lưu Quang trăn trở vì thời gian tới còn nhiều khó khăn, nhưng sẽ nỗ lực toàn tâm toàn ý với
        công việc mới.
    </p>
    <p>
        Trước đó ngày 5/1, Quốc hội phê chuẩn miễn nhiệm Phó thủ tướng với ông Phạm Bình Minh và Vũ Đức Đam; phê
        chuẩn bổ nhiệm Phó thủ tướng với ông Trần Lưu Quang và Trần Hồng Hà.
    </p>
    <p>
        Ông Trần Hồng Hà 60 tuổi, quê Hà Tĩnh, là kỹ sư công nghệ khai thác mỏ, tiến sĩ Tổ chức, Quản lý, khai thác
        khoáng sản. Ông là Ủy viên dự khuyết Trung ương Đảng khóa 11; Ủy viên Trung ương Đảng hai khóa 12, 13; đại
        biểu Quốc hội khóa 14.
    </p>
    <p>
        Ông Hà có thời gian dài công tác tại Bộ Khoa học Công nghệ và Môi trường, sau là Bộ Tài nguyên và Môi trường.
        Từ đầu năm 2004, ông làm quyền cục trưởng, rồi Cục trưởng Bảo vệ môi trường, Tổng cục phó phụ trách Môi
        trường. Tháng 7/2008, ông giữ chức Thứ trưởng Tài nguyên và Môi trường, sáu tháng sau được luân chuyển làm
        Phó bí thư Tỉnh ủy Bà Rịa - Vũng Tàu.
    </p>
    <p>
        Sau khi trở lại làm Thứ trưởng Tài nguyên và Môi trường, tháng 4/2016, ông đảm nhiệm cương vị Bộ trưởng.
    </p>
    <p>
        Ông Trần Lưu Quang 56 tuổi, quê thị xã Trảng Bàng, tỉnh Tây Ninh; là thạc sĩ Quản lý công, kỹ sư cơ khí. Ông
        là Ủy viên dự khuyết Trung ương Đảng khóa 11; Ủy viên Trung ương Đảng hai khóa 12, 13; đại biểu Quốc hội hai
        khóa 14, 15.
    </p>
    <p>
        Ông có thời gian dài công tác tại tỉnh Tây Ninh. Tháng 12/2003, ông làm Phó ban Quản lý khu kinh tế cửa khẩu
        Mộc Bài, sau đó làm Phó giám đốc Sở Kế hoạch và Đầu tư tỉnh. Từ tháng 8/2008, ông giữ chức Chủ tịch UBND
        huyện, Bí thư huyện ủy Trảng Bàng, sau đó làm Phó chủ tịch thường trực UBND tỉnh Tây Ninh. Ông được bầu làm
        Bí thư Tỉnh ủy Tây Ninh từ tháng 7/2015.
    </p>
    <p>
        Tháng 2/2019, ông Quang giữ chức Phó bí thư Thường trực Thành ủy TP HCM, và được Bộ Chính trị điều động làm
        Bí thư Thành ủy Hải Phòng từ tháng 5/2021.
    </p>
</div>', 29, 't', 28, 1, NULL, 'https://i1-vnexpress.vnecdn.net/2023/01/09/img4676-1673260709508157908109-9331-5982-1673267453.jpg?w=1020&h=0&q=100&dpr=1&fit=crop&s=hbNI5vmk_emH4wSEKyhZ_A');
INSERT INTO "public"."articles" OVERRIDING SYSTEM VALUE VALUES (129, 'Báo Tây gợi ý chuyến du lịch tiết kiệm ở TP HCM', 0, 'Tờ The Travel nhận định chi phí ở TP HCM thuộc hàng đắt đỏ nhất Việt Nam, nhưng nếu tính toán hợp lý sẽ không tốn kém.', '<div class="flex flex-col gap-y-2">
    <p>
        Tờ The Travel nhận định chi phí ở TP HCM thuộc hàng đắt đỏ nhất Việt Nam, nhưng nếu tính toán hợp lý sẽ không
        tốn kém.
    </p>
    <p>
        Tạp chí du lịch hàng đầu thế giới The Travel ngày 10/1 giới thiệu chi tiết các khoản phí khi đến TP HCM, như
        một gợi ý cho kỳ nghỉ tiếp theo của khách quốc tế tới Việt Nam. Chi phí ở TP HCM cao, nhưng du khách không
        phải lo ngại vì chỉ cần tìm hiểu kỹ thì sẽ có cách chi tiêu hợp lý.
    </p>
    <b>Lưu trú</b>
    <p>
        Có nhiều loại hình lưu trú cho khách chọn lựa, từ resort hạng sang đến khách sạn tầm trung, nhà nghỉ. Nếu
        muốn ở chỗ sang trọng hoặc trung tâm, tạp chí Canada gợi ý du khách nên thuê ở khu vực phường Bến Nghé, quận
        1. Với những người muốn tiết kiệm có thể tìm đến phường Phạm Ngũ Lão, cũng quận 1. Đây là nơi nhiều khách
        "Tây balo", phượt thủ thuê phòng.

        Giá khách sạn trung bình từ 35 USD một người hoặc 70 USD cả gia đình.
    </p>
    <b> Di chuyển </b>
    <p>
        Giá vé máy bay phụ thuộc vào thời điểm đặt. Nếu đặt trước một tháng sẽ có vé rẻ hơn. Tháng 11 là thời điểm
        rẻ nhất để mua vé đi TP HCM. Đi lại trong thành phố, The Travel nhận định taxi đắt hơn phương tiện công
        cộng. Xe máy là phương tiện phổ biến nhất để đi lại trong thành phố vì tiện lợi, và thú vị. Ngoài ra, khách
        có thể thuê xe ôtô.

        Chi phí đi lại trung bình: 13 USD một người một ngày

        Taxi từ sân bay vào trung tâm thành phố: Khoảng hơn 8 USD
    </p>
    <img class="w-full h-full mt-2 rounded-lg" src="https://i1-dulich.vnecdn.net/2023/01/10/012-3575-1673326266.jpg?w=1020&h=0&q=100&dpr=1&fit=crop&s=wHegDu-rCQ9U8MK09Z30xA" alt="">

    <b>Ăn uống</b>

    <p>
        Ẩm thực thành phố "tuyệt vời, đồ ăn phong phú" và giá cả "tầm nào cũng có". Bữa sáng thường rẻ hơn trưa và
        tối, đặc biệt là khi chọn những quán vỉa hè, hàng rong.

        Chi phí ăn uống trung bình: 12 USD một ngày

        Chi phí ăn quán: 5 USD một bữa
    </p>

    <b>Giải trí</b>

    <p>
        TP HCM có lợi thế là nhiều điểm vui chơi giải trí miễn phí. Còn nếu mất phí, giá cả rất phải chăng. Trung
        bình cho các hoạt động tham quan, giải trí trong ngày là 17 USD một người.
    </p>

    <b>Tiền típ</b>

    <p>
        Tiền tip khá phổ biến ở Việt Nam, dù không bắt buộc. Du khách có thể tip để cám ơn người làm dịch vụ, thường
        là 5-10% hóa đơn.

        Tổng các khoản chi phí nêu trên, với một chuyến du lịch một tuần, du khách quốc tế cần chuẩn bị ngân sách 
        khoảng 1.200 USD một người, hoặc gấp đôi nếu sử dụng các dịch vụ cao cấp hơn. Nếu đi cả gia đình, con số 
        khoảng 4.000 USD cho một kỳ nghỉ thoải mái.
    </p>
</div>', 23, 't', 27, 2, NULL, 'https://i1-dulich.vnecdn.net/2023/01/10/012-3575-1673326266.jpg?w=1020&h=0&q=100&dpr=1&fit=crop&s=wHegDu-rCQ9U8MK09Z30xA');
INSERT INTO "public"."articles" OVERRIDING SYSTEM VALUE VALUES (131, 'Thị trấn tổ ong trong mắt khách Việt', 0, 'Anh Nguyễn Tất Thịnh ghé thăm Alberobello và ngạc nhiên vì kiến trúc nhà tổ ong được bảo tồn rất tốt.', '<div class="flex flex-col gap-y-2">
    <p>
        Anh Nguyễn Tất Thịnh ghé thăm Alberobello và ngạc nhiên vì kiến trúc nhà tổ ong được bảo tồn rất tốt.
    </p>
    <p>
        Tháng 11/2022, tôi ghé thăm Alberobello. Đây là một thành phố nhỏ thuộc tỉnh Bari, vùng Puglia, miền nam
        Italy. Những công trình kiến trúc nhà trulli có một không hai này nằm trong vùng đất có phong cảnh đẹp, giữa
        hai tỉnh Bari và Brindisi. Người dân còn gọi đó là "Thung lũng Trulli".
    </p>
    <p>
        Thung lũng Trulli độc đáo bởi các con đường và tường nhà quét vôi trắng bên cạnh những mái nhà như tổ ong hay
        cây nấm, được làm từ những viên đá vôi vùng Puglia mà nông dân đã dọn sạch từ những cánh đồng. Điều đặc biệt
        là chúng xây rất nhanh, không dùng đến vữa, có thể dễ dàng bị phá bỏ nếu cần thiết. Chúng mang lại sự ấm áp
        vào mùa đông và mát mẻ trong những tháng hè.
    </p>
    <p>
        Theo thông tin từ hướng dẫn viên, Alberobello được xây dựng trên các đường phố của dòng sông cổ Cana, dân số
        hơn 10.700 người. Nhà trulli lâu đời nhất được dựng năm 1559 theo chữ viết phía trên cổng nhà. Có khoảng
        1.500 căn nhà tại hai khu phố Monti và Aia Piccola ở Alberobello. Cả hai khu này đều nằm trong danh sách Di
        sản thế giới của UNESCO.
    </p>
    <img class="w-full h-full mt-2 rounded-lg" src="https://i1-dulich.vnecdn.net/2023/01/10/20220611-113947-rs-6844-1673313632.jpg?w=1020&h=0&q=100&dpr=1&fit=crop&s=WSCq_JkOr9effVPfTK4j5Q" alt="">
    <p>
        Ngôi làng được bao bọc bởi những cánh đồng ôliu và những bức tường đá thô thấp. Nhiều ngôi nhà cổ đang trong
        trạng thái sửa chữa hoặc hư hỏng ở mức độ khác nhau. Rất nhiều ngôi nhà không có người ở bỏ hoang, nhưng cũng
        có nhiều nhà đã được trùng tu rất đẹp. Một số ngôi nhà có hồ bơi riêng hay cửa hàng bán hàng lưu niệm cho du
        khách.
    </p>
    <p>
        Các ngôi nhà trulli vẫn đứng vững cho đến ngày hôm nay như một minh chứng cho thấy mong muốn gìn giữ bảo vệ
        tài sản của nông dân. Phần lớn cư dân của thị trấn Alberobello không sống trong các trulli. Thay vào đó,
        chúng được bảo tồn để phát triển thành các cửa hàng lưu niệm, nhà hàng, bar và tất nhiên là chỗ ở cho du
        khách đang tìm kiếm một trải nghiệm độc đáo.
    </p>
    <p>
        Có 8 con đường nhỏ dẫn gần như song song với nhau từ quảng trường thị trấn, lên ngọn đồi thuộc khu vực lâu
        đời nhất của thị trấn được gọi là Rione dei Monti. Các con đường đều dẫn đến nhà thờ Sant''Antonio da Padova.
        Đường phố, cửa hàng, quán kem đều thu hút du khách theo một cách riêng, khiến họ dành hàng giờ đồng hồ chỉ để
        dạo quanh và chiêm ngưỡng thị trấn cổ tích này.
    </p>
    <p>
        Để có cảm giác chân thực hơn về việc sống trong các trulli, bạn hãy đến quận Rione Aia Piccola, nơi có khoảng
        500 trulli với kiến trúc tối giản. Đó là nơi bạn có thể thấy những người dân địa phương đang sinh sống.
    </p>
    <p>
        Người Italy biết cách làm kem ngon và không khó để tìm trên đường phố Alberobello. Một trong số đó là Arte
        Fredda, tiệm kem từng đoạt giải thưởng trong khu phố cổ đã bán kem truyền thống ngon từ năm 1994.
    </p>
    <p>
        Du khách không phải mất phí khi tham quan ngôi làng này. Nhóm gia đình tôi gồm 10 người thuê một ngôi nhà
        trulli giá khoảng 80 euro một đêm. Các phòng có nhà vệ sinh riêng biệt, bếp rộng rãi.
    </p>
    <p>
        Du khách có thể đến Alberobello bằng ôtô, xe buýt, tàu hỏa hoặc đăng ký theo tour du lịch. Nếu đã đến Puglia,
        sẽ không phải là một chuyến đi hoàn hảo nếu không khám phá các thị trấn lân cận của Alberobello bao gồm
        Lecce, Polignano a Mere, Monopoli, Martina Franca, Bari, Otranto, Locorotondo, Cisternino.
    </p>
</div>', 23, 'f', 18, 2, NULL, 'https://i1-dulich.vnecdn.net/2023/01/10/20220611-113947-rs-6844-1673313632.jpg?w=1020&h=0&q=100&dpr=1&fit=crop&s=WSCq_JkOr9effVPfTK4j5Q');
INSERT INTO "public"."articles" OVERRIDING SYSTEM VALUE VALUES (52, 'Guardiola: ''Haaland đủ thể lực để bùng nổ''', 76, 'ANHHLV Man City Pep Guardiola phủ nhận tin đồn Erling Haaland chưa hoàn toàn bình phục chấn thương dây chằng.

', '<div class="flex flex-col gap-y-2">
    <p>
        ANH HLV Man City Pep Guardiola phủ nhận tin đồn Erling Haaland chưa hoàn toàn bình phục chấn thương dây chằng.
    </p>
    <p>
        Haaland dính chấn thương từ trận hòa Dortmund ngày 25/10. Trong trận đấu gần nhất, anh đã trở lại và góp một
        bàn trong trận thắng 3-2 trước Liverpool 3-2 ở Cup Liên đoàn Anh ngày 22/12. Dù vậy, nhiều CĐV Man City vẫn
        chưa hết quan ngại cho thể trạng của tiền đạo người Na Uy.
    </p>
    <p>
        Tại họp báo trước trận gặp Leeds ở vòng 17 Ngoại hạng Anh, HLV Guardiola phải lên tiếng bác bỏ. "Tôi nghĩ cậu
        ấy sẵn sàng. Thể lực của Haaland tốt hơn từng ngày. Các vấn đề về cơ bắp và những thứ khác đều hoàn hảo", ông
        nói. Trận đấu hôm nay là dịp để Haaland tái ngộ Jesse Marsch, HLV của Leeds. Khi còn làm việc cho RB
        Salzburg, Marsch từng làm việc cùng tiền đạo người Na Uy. Trước cuộc tái ngộ, HLV người Mỹ nói đùa về việc
        cho phép Haaland dính chấn thương và nghỉ thi đấu.
    </p>
    <img class="w-full h-full mt-2 rounded-lg" src="https://i1-thethao.vnecdn.net/2022/12/28/fk7j63ax0aa7osz-jfif-167221526-2052-1610-1672215273.jpg?w=1020&h=0&q=100&dpr=1&fit=crop&s=dVUgGawG0pmtNvDO1APBDA" alt="">
    <p>
        Theo Guardiola, Haaland nên bỏ ngoài tai những tán dương từ Marsch. Ông coi trận đấu Leeds là một cuộc đại
        chiến, và mục tiêu của Man City là giành ba điểm. "Sau thời gian nghỉ World Cup, tôi muốn một đối thủ khác
        hơn là Leeds. Về mặt thống kê, họ là đội hung hãn nhất Ngoại hạng Anh. Họ sẽ không cho bạn thời gian để suy
        nghĩ", Guardiola cảnh báo.
    </p>
    <p>
        Trong 19 trận trên mọi đấu trường đầu mùa 2022-2023 của Man City, Haaland góp 24 bàn. 18 bàn trong số đó được
        ghi trong 13 trận Ngoại hạng Anh, giúp anh dẫn đầu cuộc đua phá lưới với năm bàn nhiều hơn Harry Kane đứng
        thứ hai. Trong khi đó, một trong hai Vua phá lưới mùa 2021-2022, Mohamed Salah mới có bảy bàn. Theo thủ môn
        Ederson, Haaland có ưu điểm về khả năng dứt điểm, đánh hơi cơ hội, chọn chỉ trích và thể lực. Tuy nhiên, điều
        gây ấn tượng nhất với anh là tâm lý. "Haaland có một tâm lý thi đấu phi thường. Tôi hy vọng cậu ấy tiếp tục
        phát triển như vậy", thủ môn bốn lần vô địch Ngoại hạng Anh cùng Man City nói.
    </p>
    <p>
        Man City hiện đứng thứ ba Ngoại hạng Anh, với 32 điểm sau 14 trận. Trong khi đó, Arsenal dẫn đầu với 40 điểm
        sau 15 trận. Newcastle đứng thứ hai với 33 điểm sau 16 trận. Nếu thắng Leeds, Man City sẽ đòi lại vị trí thứ
        hai.
    </p>
    <p>
        Dưới trướng Guardiola, Man City vô địch Ngoại hạng Anh bốn trong năm mùa gần nhất. Mùa 2017-2018, họ kết thúc
        với số điểm kỷ lục 100. Liverpool làm gián đoạn chuỗi năm mùa vô địch của Man City khi đăng quang mùa
        2019-2020.
    </p>
</div>', 7, 't', 16, 4, '2022-12-28', 'https://i1-thethao.vnecdn.net/2022/12/28/fk7j63ax0aa7osz-jfif-167221526-2052-1610-1672215273.jpg?w=1020&h=0&q=100&dpr=1&fit=crop&s=dVUgGawG0pmtNvDO1APBDA');
INSERT INTO "public"."articles" OVERRIDING SYSTEM VALUE VALUES (48, 'Mua bán gỗ đã qua chế biến cần giấy tờ gì?', 35, 'Ông Nguyễn Đình Tam (Bắc Ninh) hỏi, hồ sơ mua bán gỗ đã qua chế biến (đã xẻ, pha...) mua từ các cá nhân/hộ gia đình trên địa bàn tỉnh/ngoài tỉnh có cần bảng kê lâm sản và hồ sơ nguồn gốc gỗ hay không?', '<div class="flex flex-col gap-y-2">
    <p>
        Ông Nguyễn Đình Tam (Bắc Ninh) hỏi, hồ sơ mua bán gỗ đã qua chế biến (đã xẻ, pha...) mua từ các cá nhân/hộ
        gia đình trên địa bàn tỉnh/ngoài tỉnh có cần bảng kê lâm sản và hồ sơ nguồn gốc gỗ hay không?
    </p>
    <p>
        Sở Nông nghiệp và Phát triển nông thôn tỉnh Bắc Ninh trả lời vấn đề này như sau:
    </p>
    <p>
        Theo quy định về hồ sơ mua bán gỗ đã qua chế biến (đã xẻ, pha...) mua từ các cá nhân/hộ gia đình trên địa bàn
        tỉnh/ngoài tỉnh cần phải có bảng kê lâm sản và hồ sơ nguồn gốc gỗ, cụ thể là:
    </p>
    <img class="w-full h-full mt-2 rounded-lg" src="https://bcp.cdnchinhphu.vn/zoom/270_169/334894974524682240/2022/11/27/nganhchebiengodoanhnhansaigon-1534762486-1669535985028981832816-0-0-468-749-crop-1669535993183545369787.jpg" alt="">
    <p>
        Đối với gỗ nhập khẩu, theo quy định tại Khoản 5, Điều 4 Nghị định số 102/2020/NĐ-CP ngày 1/9/2020 quy định Hệ
        thống bảo đảm gỗ hợp pháp Việt Nam:
    </p>
    <p>
        "a) Trường hợp chủ gỗ nhập khẩu bán toàn bộ hoặc một phần lô hàng gỗ nhập khẩu cho một hay nhiều chủ gỗ khác:
        Chủ gỗ nhập khẩu lập bảng kê gỗ trích từ bảng kê gỗ nhập khẩu, sao hồ sơ gỗ nhập khẩu và ký xác nhận, đóng
        dấu (nếu có) giao cho chủ gỗ mua và lưu hồ sơ gốc gỗ nhập khẩu;
    </p>
    <p>
        b) Trường hợp chủ gỗ mua tại Điểm a Khoản này bán toàn bộ hoặc một phần lô hàng gỗ nhập khẩu cho chủ gỗ khác:
        Chủ gỗ bán lập bảng kê gỗ trích từ bảng kê mua trước đó, sao hồ sơ gỗ nhập khẩu và ký xác nhận, đóng dấu (nếu
        có) giao cho chủ gỗ mua và lưu giữ bản sao;
    </p>
    <p>
        c) Trường hợp bán gỗ nhập khẩu cho chủ gỗ tiếp theo: Chủ gỗ bán thực hiện theo quy định tại Điểm b Khoản này;
    </p>
    <p>
        d) Trường hợp chuyển giao quyền sở hữu bằng các hình thức khác: Thực hiện theo quy định tại các Điểm a hoặc
        Điểm b hoặc Điểm c Khoản này".
    </p>
    <p>
        Đối với gỗ có nguồn gốc trong nước, theo quy định tại Điều 23 Thông tư số 27/2018/TT-BNNPTNT ngày 16/11/2018
        của Bộ Nông nghiệp và Phát triển nông thôn quy định về quản lý, truy xuất nguồn gốc lâm sản:
    </p>
    <p>
        "Hồ sơ đối với gỗ, thực vật rừng ngoài gỗ và dẫn xuất của thực vật rừng có nguồn gốc khai thác từ tự nhiên,
        từ rừng trồng, nhập khẩu, sau xử lý tịch thu đã chế biến.
    </p>
    <p>
        - Bản chính bảng kê lâm sản do chủ lâm sản lập;
    </p>
    <p>
        - Bản sao hồ sơ nguồn gốc lâm sản của chủ lâm sản bán".
    </p>
    <p>
        Về bảng kê lâm sản, theo quy định tại Khoản 1, Điều 5 Thông tư số 27/2018/TT-BNNPTNT:
    </p>
    <p>
        "a) Bảng kê lâm sản do chủ lâm sản lập sau khai thác; khi mua bán, vận chuyển, xuất lâm sản trong cùng một
        lần và trên một phương tiện vận chuyển; khi lập hồ sơ đề nghị cấp giấy phép xuất khẩu lâm sản theo quy định
        hoặc do người có thẩm quyền lập khi lập hồ sơ xử lý vi phạm;
    </p>
    <p>
        b) Chủ lâm sản chịu trách nhiệm trước pháp luật về những nội dung kê khai và nguồn gốc lâm sản hợp pháp tại
        bảng kê lâm sản;
    </p>
    <p>
        c) Mẫu bảng kê lâm sản theo Mẫu số 01, Mẫu số 02, Mẫu số 03 và Mẫu số 04 kèm theo Thông tư".
    </p>
</div>', 6, 't', 27, 4, '2022-11-28', 'https://bcp.cdnchinhphu.vn/zoom/270_169/334894974524682240/2022/11/27/nganhchebiengodoanhnhansaigon-1534762486-1669535985028981832816-0-0-468-749-crop-1669535993183545369787.jpg');
INSERT INTO "public"."articles" OVERRIDING SYSTEM VALUE VALUES (50, 'Hưởng lợi từ khai thác lâm sản trong rừng phòng hộ', 44, 'Ông Nguyễn Ngọc Trường (Tây Ninh) có hợp đồng trồng rừng với ban quản lý rừng phòng hộ từ năm 2000. Đến nay có một số cây sao, dầu, xà cừ (cây trồng chính) bị chết. Vậy ông có được hưởng lợi từ những cây rừng này không và phải thực hiện nghĩa vụ tài chính như thế nào? Căn cứ quy định nào?
', '<div class="flex flex-col gap-y-2">
    <p>
        Ông Nguyễn Ngọc Trường (Tây Ninh) có hợp đồng trồng rừng với ban quản lý rừng phòng hộ từ năm 2000. Đến nay
        có một số cây sao, dầu, xà cừ (cây trồng chính) bị chết. Vậy ông có được hưởng lợi từ những cây rừng này
        không và phải thực hiện nghĩa vụ tài chính như thế nào? Căn cứ quy định nào?
    </p>
    <p>
        Tổng cục Lâm nghiệp, Bộ Nông nghiệp và Phát triển nông thôn trả lời vấn đề này như sau:
    </p>
    <p>
        Theo quy định về hồ sơ mua bán gỗ đã qua chế biến (đã xẻ, pha...) mua từ các cá nhân/hộ gia đình trên địa bàn
        tỉnh/ngoài tỉnh cần phải có bảng kê lâm sản và hồ sơ nguồn gốc gỗ, cụ thể là:
    </p>
    <img class="w-full h-full mt-2 rounded-lg" src="https://bcp.cdnchinhphu.vn/zoom/270_169/334894974524682240/2022/7/16/thumb-nguyenngoctruong-1657944362031105723743-16579443720902014369468-0-0-380-608-crop-16579443861531607671864-23-36-380-608-crop-16579444027742021568577.jpg" alt="">
    <p>
        Đối với gỗ nhập khẩu, theo quy định tại Khoản 5, Điều 4 Nghị định số 102/2020/NĐ-CP ngày 1/9/2020 quy định Hệ
        thống bảo đảm gỗ hợp pháp Việt Nam:
    </p>
    <p>
        "a) Trường hợp chủ gỗ nhập khẩu bán toàn bộ hoặc một phần lô hàng gỗ nhập khẩu cho một hay nhiều chủ gỗ khác:
        Chủ gỗ nhập khẩu lập bảng kê gỗ trích từ bảng kê gỗ nhập khẩu, sao hồ sơ gỗ nhập khẩu và ký xác nhận, đóng
        dấu (nếu có) giao cho chủ gỗ mua và lưu hồ sơ gốc gỗ nhập khẩu;
    </p>
    <p>
        b) Trường hợp chủ gỗ mua tại Điểm a Khoản này bán toàn bộ hoặc một phần lô hàng gỗ nhập khẩu cho chủ gỗ khác:
        Chủ gỗ bán lập bảng kê gỗ trích từ bảng kê mua trước đó, sao hồ sơ gỗ nhập khẩu và ký xác nhận, đóng dấu (nếu
        có) giao cho chủ gỗ mua và lưu giữ bản sao;
    </p>
    <p>
        c) Trường hợp bán gỗ nhập khẩu cho chủ gỗ tiếp theo: Chủ gỗ bán thực hiện theo quy định tại Điểm b Khoản này;
    </p>
    <p>
        d) Trường hợp chuyển giao quyền sở hữu bằng các hình thức khác: Thực hiện theo quy định tại các Điểm a hoặc
        Điểm b hoặc Điểm c Khoản này".
    </p>
    <p>
        Đối với gỗ có nguồn gốc trong nước, theo quy định tại Điều 23 Thông tư số 27/2018/TT-BNNPTNT ngày 16/11/2018
        của Bộ Nông nghiệp và Phát triển nông thôn quy định về quản lý, truy xuất nguồn gốc lâm sản:
    </p>
    <p>
        "Hồ sơ đối với gỗ, thực vật rừng ngoài gỗ và dẫn xuất của thực vật rừng có nguồn gốc khai thác từ tự nhiên,
        từ rừng trồng, nhập khẩu, sau xử lý tịch thu đã chế biến.
    </p>
    <p>
        - Bản chính bảng kê lâm sản do chủ lâm sản lập;
    </p>
    <p>
        - Bản sao hồ sơ nguồn gốc lâm sản của chủ lâm sản bán".
    </p>
    <p>
        Về bảng kê lâm sản, theo quy định tại Khoản 1, Điều 5 Thông tư số 27/2018/TT-BNNPTNT:
    </p>
    <p>
        "a) Bảng kê lâm sản do chủ lâm sản lập sau khai thác; khi mua bán, vận chuyển, xuất lâm sản trong cùng một
        lần và trên một phương tiện vận chuyển; khi lập hồ sơ đề nghị cấp giấy phép xuất khẩu lâm sản theo quy định
        hoặc do người có thẩm quyền lập khi lập hồ sơ xử lý vi phạm;
    </p>
    <p>
        b) Chủ lâm sản chịu trách nhiệm trước pháp luật về những nội dung kê khai và nguồn gốc lâm sản hợp pháp tại
        bảng kê lâm sản;
    </p>
    <p>
        c) Mẫu bảng kê lâm sản theo Mẫu số 01, Mẫu số 02, Mẫu số 03 và Mẫu số 04 kèm theo Thông tư".
    </p>
</div>', 6, 't', 28, 4, '2022-11-30', 'https://bcp.cdnchinhphu.vn/zoom/270_169/334894974524682240/2022/7/16/thumb-nguyenngoctruong-1657944362031105723743-16579443720902014369468-0-0-380-608-crop-16579443861531607671864-23-36-380-608-crop-16579444027742021568577.jpg');
INSERT INTO "public"."articles" OVERRIDING SYSTEM VALUE VALUES (62, 'Bê bối chấn động bóng chày mỹ của CLB Houston Astros', 71, 'Nếu như ở Anh, Man City đang phải đương đầu với việc có thể bị cấm dự cúp châu Âu thì tại Mỹ, 1 đội bóng ở giải bóng chày nhà nghề cũng dối diện với cáo buộc gian lận.', '<div class="flex flex-col gap-y-2">
    <p>
        Nếu như ở Anh, Man City đang phải đương đầu với việc có thể bị cấm dự cúp châu Âu thì tại Mỹ, 1 đội bóng ở
        giải bóng chày nhà nghề cũng dối diện với cáo buộc gian lận.
    </p>
    <p>
        Sự gian lận của Houston Astros diễn ra ở mùa giải 2017. Đội bóng đã lén đặt camera ở giữa sân nhà nhằm thu
        lại các ký hiệu chiến thuật giữa các cầu thủ ném bóng và bắt bóng của đội khách. Sau đó ban huấn luyện và các
        cầu thủ Houston Astros sẽ cùng nhau giải mã và gửi tới cầu thủ đánh bóng và bắt bóng của mình. Nhờ đó, đội
        bóng bang Texas đã có 101 trận thắng và vô địch World Series năm 2017. Ở mùa giải kế tiếp, họ thắng 103 trận.
    </p>
    <p>
        Vụ việc chỉ được tiết lộ khi tay ném từng thi đấu cho CLB - Mike Fiers chia sẻ với tờ The Athletic về hành vi
        này. Kết quả là 2 thành viên của ban quản lý Houston Astros là Jeff Luhnnow và A.J. Hinch đã bị cấm hoạt động
        1 mùa. CLB bị phạt 5 triệu đô la - mức phạt cao nhất trong lịch sử giải bóng chày nhà nghề Mỹ và tước quyền
        chọn tân binh trong 2 mùa 2020 và 2021. 1 số thành viên của đội bóng này cũng bị buộc phải thanh lý hợp đồng.
        Riêng các cầu thủ không bị phạt vì họ đã được kí điều khoản miễn trừ mọi tội danh nếu thành khẩn khai báo với
        cơ quan chức năng.
    </p>
    <img class="w-full h-full mt-2 rounded-lg" src="https://vtv1.mediacdn.vn/thumb_w/640/2020/2/21/houston-astros-da-nghien-cuu-ky-ky-hieu-tay-cua-doi-thu-mot-cach-khong-dung-luat-15822763348912015227696.jpg" alt="">
    <p>
        Trong tuần này, đích thân chủ tịch CLB - ông Jim Crane và các thành viên từ ban lãnh đạo tới các cầu thủ đã
        phải tổ chức họp báo để xin lỗi vì bê bối trên. Dự kiến ban tổ chức MLB sẽ còn điều tra thêm về 1 số cáo buộc
        gian lận khác liên quan tới các đội.
    </p>
</div>', 9, 'f', 27, 4, '2022-12-31', 'https://vtv1.mediacdn.vn/thumb_w/640/2020/2/21/houston-astros-da-nghien-cuu-ky-ky-hieu-tay-cua-doi-thu-mot-cach-khong-dung-luat-15822763348912015227696.jpg');
INSERT INTO "public"."articles" OVERRIDING SYSTEM VALUE VALUES (61, 'MLB sẽ áp dụng luật tính giờ chặt hơn', 0, 'Việc các cầu thủ hay các vận động viên trì hoãn thời gian thực hiện các động tác hay lượt đánh của mình luôn là điều nhức nhối với môn golf, và giờ là bóng chày.', '<div class="flex flex-col gap-y-2">
    <p>
        Việc các cầu thủ hay các vận động viên trì hoãn thời gian thực hiện các động tác hay lượt đánh của mình luôn
        là điều nhức nhối với môn golf, và giờ là bóng chày.
    </p>
    <p>
        Trong ngày hôm qua, Ban tổ chức của giải bóng chày nhà nghề Bắc Mỹ MLB đã thông báo việc áp dụng luật tính
        giờ cho các tay ném trên vạch pitch, khi mà việc các cầu thủ cố tình trì hoãn cú ném của mình từ lâu đã trở
        thành vấn đề được nhắc tới khá nhiều tại giải đấu này. Cụ thể, một block 15 giây sẽ được xác nhận để cầu thủ
        thực hiện cú ném, sau khi không có một cầu thủ nào khác xuất hiện trên base trong các trận đấu tại MLB, và
        khoảng thời gian này sẽ được nâng lên thành 20 giây tại các giải đấu cấp độ thấp hơn.
    </p>
    <img class="w-full h-full mt-2 rounded-lg" src="https://vtv1.mediacdn.vn/thumb_w/640/2022/9/10/zqibvmbjtvh3bpqrnt6vgc33za-1662823717302623633341.jpg" alt="">
    <p>
        Qua đó buộc các đội bóng phải hạn chế tối đa việc câu giờ nhằm tạo lợi thế tâm lý trong một lượt ném. Thêm
        vào đó, một quy định mới về số lượng cầu thủ phòng ngự được sử dụng trong một trận đấu với 11 người cũng dự
        tính sẽ được áp dụng. Quy định này được áp dụng nhằm tạo sự cân bằng cho các đội bóng nhỏ, khi mà các CLB lớn
        có quá nhiều cầu thủ tốt để xoay tua trong một trận đấu, và tạo ra cách biệt về mặt đội hình. Theo ban tổ
        chức của giải đấu, những sự thay đổi này nhằm nâng cao trải nghiệm cho các khán giả, và tăng tính hấp dẫn của
        các trận đấu.
    </p>
</div>', 9, 'f', 27, 4, '2023-01-06', 'https://vtv1.mediacdn.vn/thumb_w/640/2022/9/10/zqibvmbjtvh3bpqrnt6vgc33za-1662823717302623633341.jpg');
INSERT INTO "public"."articles" OVERRIDING SYSTEM VALUE VALUES (47, 'Ghi nhận kiến nghị về sửa đổi quy định truy xuất nguồn gốc lâm sản', 58, 'Ông Nguyễn Trường Cửu (Bạc Liêu) kinh doanh mặt hàng thờ cúng làm bằng gỗ và quà lưu niệm cho khách du lịch. Theo dự thảo Thông tư sửa đổi Thông tư số 27/2018/TT-BNNPTNT thì sản phẩm làm từ gỗ tự nhiên và gỗ nhập khẩu dù chỉ là một đôi đũa, muốn bán cũng phải được kiểm lâm cấp phép.
', '<div class="flex flex-col gap-y-2">
    <p>
        Ông Nguyễn Trường Cửu (Bạc Liêu) kinh doanh mặt hàng thờ cúng làm bằng gỗ và quà lưu niệm cho khách du lịch.
        Theo dự thảo Thông tư sửa đổi Thông tư số 27/2018/TT-BNNPTNT thì sản phẩm làm từ gỗ tự nhiên và gỗ nhập khẩu
        dù chỉ là một đôi đũa, muốn bán cũng phải được kiểm lâm cấp phép.
    </p>
    <p>
        Ông Cửu được biết, Chính phủ đã cấm khai thác gỗ rừng tự nhiên, chỉ còn gỗ nhập khẩu. Gỗ nhập khẩu khi làm
        thủ tục có kiểm soát của cơ quan Hải quan, chỉ cần thống nhất tờ hoá đơn là đã rõ nguồn gốc.
    </p>
    <p>
        Còn nếu quy định như dự thảo Thông tư, muốn bán một món hàng về thờ cúng cũng phải xin xác nhận của kiểm lâm,
        thủ tục từ 1 đến 3 ngày. Điều này dễ nảy sinh tiêu cực.
    </p>
    <img class="w-full h-full mt-2 rounded-lg" src="https://image.nhandan.vn/w800/Files/Images/2022/07/06/1_nongNghiep2-1657061749840.jpg" alt="">
    <p>
        Dự thảo còn bắt buộc ghi chép sổ sách, 3 tháng báo cáo 1 lần. Những người kinh doanh nhỏ như ông Cửu không có
        nhân lực để làm.
    </p>
    <p>
        Ông Cửu đề nghị cơ quan soạn thảo xem xét lại dự thảo thông tư để tạo thuận lợi cho người dân làng nghề như
        ông.
    </p>
    <p>
        Tổng cục Lâm nghiệp, Bộ Nông nghiệp và Phát triển nông thôn trả lời vấn đề này như sau:
    </p>
    <p>
        Hiện nay, Tổng cục Lâm nghiệp đã tổ chức đánh giá, tổng kết thực hiện Thông tư số 27/2018/TT-BNNPTNT, đang
        tham mưu xây dựng dự thảo Thông tư thay thế Thông tư số 27/2018/TT-BNNPTNT ngày 16/11/2018 của Bộ Nông nghiệp
        và Phát triển nông thôn quy định về quản lý, truy xuất nguồn gốc lâm sản.
    </p>
    <p>
        Về quan điểm, dự thảo Thông tư phải bảo đảm tính hợp hiến, hợp pháp, phù hợp với Điều ước quốc tế mà Việt Nam
        là thành viên; đáp ứng yêu cầu thực tiễn và có tính khả thi cao; tạo điều kiện thuận lợi để thúc đẩy phát
        triển kinh tế, đồng thời bảo đảm để thực hiện tốt công tác quản lý bảo vệ rừng và lâm sản, ngăn chặn hiệu quả
        các trường hợp lợi dụng để tiêu thụ lâm sản bất hợp pháp.
    </p>
    <p>
        Tổng cục Lâm nghiệp ghi nhận ý kiến của ông Nguyễn Trường Cửu để nghiên cứu, xem xét trong quá trình xây dựng
        dự thảo Thông tư.
    </p>
</div>', 6, 'f', 16, 4, '2022-11-29', 'https://image.nhandan.vn/w800/Files/Images/2022/07/06/1_nongNghiep2-1657061749840.jpg');
INSERT INTO "public"."articles" OVERRIDING SYSTEM VALUE VALUES (64, 'Kết quả cầu lông mới nhất 14/12: Tiến Tuấn hạ "tượng đài" Tiến Minh, Hà Nội vô địch đồng đội nam', 28, 'Đại hội Thể thao Toàn quốc 2022 của môn cầu lông diễn ra từ 11- 19/12/2022. Đồng đội diễn ra từ ngày 11-14/12. Cá nhân diễn ra từ ngày 15-19/12.', '<div class="flex flex-col gap-y-2">
    <p>
        Đại hội Thể thao Toàn quốc 2022 của môn cầu lông diễn ra từ 11- 19/12/2022. Đồng đội diễn ra từ ngày
        11-14/12. Cá nhân diễn ra từ ngày 15-19/12.
    </p>
    <p>
        Hà Nội xuất sắc giành huy chương vàng nội dung đồng đội nam của môn cầu lông tại Đại hội thể thao toàn quốc
        lần thứ IX năm 2022, sau chiến thắng TPHCM 3-1. Hà Nội khởi đầu không thể tuyệt vời hơn, khi Nguyễn Tiến Tuấn
        thắng "tượng đài" Nguyễn Tiến Minh 21-17, 21-16 thật thuyết phục với những pha smash vô cùng tự tin. Đỗ Tuấn
        Đức/ Phạm Hồng Nam nhân đôi cách biệt cho Hà Nội khi vượt qua Nguyễn Đức Hồng Phúc / Trần Nguyễn Trí Tùng
        21-12, 21-12. Nguyễn Hải Đăng giành lại chiến thắng danh dự cho TPHCM khi hạ Nguyễn Đình Chiến, trước lúc
        Nguyễn Chí Đức/ Lê Văn Tú ấn định chiến thắng chung cuộc cho Hà Nội khi vượt qua Dương Bảo Đức/ Nguyễn Ảnh
        Gia Huy.
    </p>
    <p>
        Ở nội dung Đồng đội nữ, Thái Bình đăng quang khi hạ Bắc Giang 3-1. Trần Thị Phương Thúy khởi đầu hoàn hảo cho
        Bắc Giang, nhưng sau đó, chính cô cùng đàn chị Nguyễn Thị Sen không thể cản nổi Thái Bình đoạt huy chương
        vàng do thua Nguyễn Thị Ngọc Thúy / Phạm Thị Diệu Ly ở trận đôi đầu tiên. TPHCM và Hà Nội tranh huy chương
        vàng nội dung đồng đội nam của môn cầu lông tại Đại hội thể thao toàn quốc lần thứ IX năm 2022 sau chiến
        thắng vòng bán kết vào ngày thi đấu thứ ba 13/12/2022. Một lần nữa, các đôi của TPHCM không cần thể hiện khi
        đội nhà thắng Bắc Giang 3-0 ở những trận đơn nam. Hà Nội thắng Lâm Đồng 3-1 nhưng tỷ số rõ ràng không phản
        ánh đúng diễn biến căng thẳng hơn nhiều.
    </p>
    <img class="w-full h-full mt-2 rounded-lg" src="https://cdnmedia.webthethao.vn/uploads/Chau-La/bad-hanoi-1-1412.jpg" alt="">
    <p>
        Ở ngày thi đấu thứ hai 12/12/2022, môn cầu lông của Đại hội thể thao toàn quốc lần thứ IX năm 2022 có kết quả
        đáng chú ý tại bán kết đồng đội nữ. Nguyễn Thùy Linh không thể một mình "gánh team" Đồng Nai, nên bất chấp cô
        thắng cả 2 trận (1 đơn, 1 đôi), đội nhà vẫn thua 2-3 trước Bắc Giang với công lớn thuộc về Nguyễn Thị Ngọc
        Lan và Thân Vân Anh. TPHCM cũng thua 2-3 trước Thái Bình, nhưng có phần đáng tiếc hơn do sớm dẫn 2-0 nhờ công
        Vũ Thị Trang và Vũ Thị Anh Thư.
    </p>
    <p>
        Ở ngày thi đấu thứ hai 12/12/2022, môn cầu lông của Đại hội thể thao toàn quốc lần thứ IX năm 2022 xác định 4
        đội vào bán kết đồng đội nam. Với các tay vợt sừng sỏ như Nguyễn Tiến Minh, Nguyễn Hải Đăng và Phan Phúc
        Thịnh cùng cặp Bảo Minh / Bảo Đức, TPHCM dễ dàng vượt qua Công An Nhân Dân 3-0. Hà Nội với Nguyễn Tiến Tuấn
        cũng vượt qua Quảng Ninh 3-0. Bắc Giang vất vả hơn nhiều khi hạ Hải Phòng 3-2. Cho dù Lê Đức Phát mở đầu hạ
        Nguyễn Đình Hoàng, Quân Đội cũng thua 2-3 trước Lâm Đồng có lực lượng đồng đều hơn.
    </p>
    <p>
        Ở ngày thi đấu mở màn 11/12/2022, môn cầu lông của Đại hội thể thao toàn quốc lần thứ IX năm 2022 xác định
        xong 2 cặp đấu bán kết của đồng đội nữ. Được miễn vòng 1, TPHCM sẽ so tài cùng Thái Bình vừa thắng Hà Nội
        3-0. Trận còn lại là cuộc chiến giữa Đồng Nai với Bắc Giang. Với ngôi sao Nguyễn Thùy Linh, Đồng Nai hạ Hải
        Phòng 3-1. Bắc Giang của Trần Thị Phương Thúy tỏ ra mạnh đều hơn Đà Nẵng qua chiến thắng 3-0. Ở đồng đội nam,
        vòng tứ kết xác định mọi cặp đấu. Ngoài cặp TPHCM vs Bộ Công An được miễn vòng đầu, một cánh chim Trần Lê
        Mạnh An không đủ giúp Đồng Nai vượt qua Hải Phòng để gặp Bắc Giang. Quân Đội với các tay vợt như Lê Đức Phát
        tỏ ra quá mạnh so với Thừa Thiên Huế khi thắng 3-0 để vào tứ kết gặp Lâm Đồng. Dễ dàng hạ Bến Tre 3-0, Quảng
        Ninh đấu tứ kết với Hà Nội.
    </p>
    <p>
        Nội dung cầu lông của Đại hội thể thao toàn quốc lần thứ IX năm 2022 diễn ra từ 11-19/12 tại nhà thi đấu Thị
        xã Đông Triều, tỉnh Quảng Ninh. Nội dung thi đấu Đồng đội diễn ra từ ngày 11-14/12/2022. Nội dung thi đấu Cá
        nhân diễn ra từ ngày 15-19/12/2022. Có 18 đơn vị Tỉnh, Thành, Ngành trên toàn quốc tham dự với sự góp mặt của
        164 VĐV (99 nam, 65 nữ).  Đại hội lần này quy tụ đầy đủ các tay vợt mạnh nhất của Việt Nam. Nguyễn Tiến Minh,
        Nguyễn Hải Đăng, Nguyễn Tiến Tuấn, Lê Đức Phát thi đấu ở nội dung Đơn nam. Nguyễn Thùy Linh, Vũ Thị Trang,
        Trần Thị Phương Thúy, Vũ Thị Anh Thư thi đấu nội dung Đơn nữ.
    </p>
</div>', 10, 'f', 15, 4, '2022-12-14', 'https://cdnmedia.webthethao.vn/uploads/Chau-La/bad-hanoi-1-1412.jpg');
INSERT INTO "public"."articles" OVERRIDING SYSTEM VALUE VALUES (86, 'Ngày càng nhiều gia đình có thỏa thuận tiền hôn nhân', 59, 'Cảm giác bất an về hôn nhân thúc đẩy Lao Lu lập thỏa thuận tiền hôn nhân với chồng, trong đó quy định đến cả việc phải làm gì khi cãi nhau.', '<div class="flex flex-col gap-y-2">
    <p>
        Cảm giác bất an về hôn nhân thúc đẩy Lao Lu lập thỏa thuận tiền hôn nhân với chồng, trong đó quy định đến cả
        việc phải làm gì khi cãi nhau.
    </p>
    <p>
        Lao Lu và Xiao Du đã bên nhau 5 năm nhưng mới cưới hai năm trước. Họ gặp nhau tại nơi làm việc, chồng cô là
        giám đốc sản phẩm ở đó. Quen nhau được ba năm, một ngày Xiao Du nói muốn kết hôn với thái độ rất chân thành.
        Lúc này Lao Lu khó nghĩ, một mặt cô yêu anh, mặt khác cô cảm thấy quyết định này là đặt thêm một ngưỡng cao
        hơn cho tình yêu.
    </p>
    <p>
        "Tôi sợ trèo cao ngã đau, một khi đổ vỡ đôi bên sẽ phải trả giá đắt hơn so với chỉ yêu mà không ràng buộc
        pháp luật", cô gái 31 tuổi, sống ở Hàng Châu chia sẻ. Lao Lu suy nghĩ và muốn "giảm thiểu tác động tiêu cực
        của việc ly hôn càng nhiều càng tốt" nên nghĩ đến thỏa thuận tiền hôn nhân.
    </p>
    <img class="w-full h-full mt-2 rounded-lg" src="https://i1-giadinh.vnecdn.net/2022/12/26/v2-35d29f878fbd7e4e4617f27555e-4182-7687-1672029302.jpg?w=1020&h=0&q=100&dpr=1&fit=crop&s=zs8fh8mgKVV71DdnQ7PJ2w" alt="">
    <p>
        Vào một ngày cuối tuần đẹp trời, đôi uyên ương tới một quán cà phê, mỗi người một máy tính, mặt đối mặt soạn
        thảo văn bản tiền hôn nhân. Cô nói với bạn trai: "Chúng ta hãy nghĩ xem điều gì sẽ khiến chúng ta chia tay,
        nghĩ đến những tình huống xấu nhất và viết ra những điểm mấu chốt của mỗi người, để có mâu thuẫn cứ chiếu
        theo đó mà làm".
    </p>
    <p>
        Ngoài tài sản không đáng kể, trọng tâm của thỏa thuận này là những vấn đề giao tiếp. Lao Lu đã liệt kê 6 mục,
        trong đó quy định thời gian "chiến tranh lạnh" tối đa là nửa tháng, sau đó hai bên phải thương lượng và quyết
        định hòa giải hay ly hôn. Thực chất điều khoản này đặt ra thời hạn buộc phải giao tiếp.
    </p>
    <p>
        Họ thống nhất một khi cãi vã phải giải quyết luôn trong một ngày. Cả hai chưa có con nhưng có nuôi một con
        mèo. Trong trường hợp ly hôn, để quyết định quyền được nuôi nó, cả hai sẽ oẳn tù tì ba lần. Sau rất nhiều quy
        tắc của cô, anh chồng chỉ viết thêm một dòng phía dưới: "Nam nữ không được từ chối sinh con, trừ điều kiện
        sinh lý, nếu không thì hai bên thuận tình ly hôn".
    </p>
    <p>
        Trong quá trình thảo luận, chúng tôi đang thực sự tìm hiểu nhau và chắc chắn cả hai sẽ đối mặt với hôn nhân
        bằng một thái độ hợp lý hơn", cô nói. Hai năm chung sống họ chưa từng xảy ra rạn nứt và nhờ có hợp đồng tiền
        hôn nhân họ càng nghiêm túc hơn trong mối quan hệ này.
    </p>
    <p>
        Wang Tan là một bà nội trợ 37 tuổi sống ở Đức cũng ký thỏa thuận tiền hôn nhân với chồng. Từ khi cha qua đời
        7 năm trước và mẹ sống một mình ở Bắc Kinh, cô luôn thấy bất an. "Lý do đầu tiên khi ký thỏa thuận tiền hôn
        nhân là để chăm sóc cha mẹ và con cái khi một trong hai đột ngột qua đời", cô nói.
    </p>
</div>', 20, 't', 27, 4, '2022-12-26', 'https://i1-giadinh.vnecdn.net/2022/12/26/v2-35d29f878fbd7e4e4617f27555e-4182-7687-1672029302.jpg?w=1020&h=0&q=100&dpr=1&fit=crop&s=zs8fh8mgKVV71DdnQ7PJ2w');
INSERT INTO "public"."articles" OVERRIDING SYSTEM VALUE VALUES (2, 'HLV Park phát biểu sau khi nhận huân chương Heungin', 14, 'Ông Park Hang-seo hy vọng sẽ tiếp tục là cầu nối thúc đẩy mối quan hệ hữu nghị giữa Hàn Quốc và Việt Nam.

', '<img
                                src="https://znews-photo.zingcdn.me/w960/Uploaded/ihvunvj/2022_12_06/park_1.jpeg"
                                class="w-full h-full mt-2 rounded-lg"
                        />
                        <!-- contents of the article -->
                        <div class="flex flex-col gap-y-2">
                            <p>
                                Đêm 6, rạng sáng 7.12, chuyên cơ chở Chủ tịch nước Nguyễn Xuân
                                Phúc và đoàn cấp cao Việt Nam đã về đến sân bay quốc tế Nội Bài,
                                thủ đô Hà Nội, kết thúc thành công chuyến thăm cấp nhà nước Đại
                                Hàn Dân Quốc theo lời mời của Tổng thống Yoon Suk-yeol.
                            </p>
                            <img
                                    src="https://znews-photo.zingcdn.me/w960/Uploaded/ihvunvj/2022_12_06/park_1.jpeg"
                                    class="w-full h-full mt-2 rounded-lg"
                            />
                            <p>
                                Đúng như kỳ vọng của nhân dân hai nước, với sự hội tụ những điều
                                kiện cần và đủ, niềm tin và quyết tâm chính trị rất cao của lãnh
                                đạo cấp cao hai nước, trong chuyến thăm, Chủ tịch nước Nguyễn
                                Xuân Phúc và Tổng thống Yoon Suk-yeol đã cùng nhất trí ra Tuyên
                                bố chung về việc nâng cấp quan hệ giữa Việt Nam và Hàn Quốc lên
                                mức Đối tác chiến lược toàn diện, chính thức mở ra chương mới
                                trong quan hệ Việt-Hàn với tương lai tương sáng của hai đất
                                nước, hai dân tộc.
                            </p>
                            <p>
                                Đêm 6, rạng sáng 7.12, chuyên cơ chở Chủ tịch nước Nguyễn Xuân
                                Phúc và đoàn cấp cao Việt Nam đã về đến sân bay quốc tế Nội Bài,
                                thủ đô Hà Nội, kết thúc thành công chuyến thăm cấp nhà nước Đại
                                Hàn Dân Quốc theo lời mời của Tổng thống Yoon Suk-yeol.
                            </p>
                        </div>', 1, 't', 15, 4, '2022-12-29', 'https://znews-photo.zingcdn.me/w960/Uploaded/ihvunvj/2022_12_06/park_1.jpeg');
INSERT INTO "public"."articles" OVERRIDING SYSTEM VALUE VALUES (91, 'Nhà đảo hướng đón nắng gió', 56, 'Vì ngôi nhà có mặt tiền hướng Tây, chịu ánh nắng gay gắt nên đã được đảo hướng để gia chủ đón nắng sớm và gió mát.', '<div class="flex flex-col gap-y-2">
    <p>
        Vì ngôi nhà có mặt tiền hướng Tây, chịu ánh nắng gay gắt nên đã được đảo hướng để gia chủ đón nắng sớm và gió
        mát.
    </p>
    <p>
        Công trình nằm trên khu đất rộng 4,8 m với chiều dài 22 m gồm một trệt hai lầu tại đường số 9, phường Hiệp
        Bình Chánh, TP Thủ Đức.
    </p>
    <p>
        Mặt chính của nhà hướng Tây, chịu tác động lớn của bức xạ mặt trời, nhất là mùa hè. Tuy vậy, yêu cầu của gia
        chủ là có một không gian sống trong lành, gần gũi thiên nhiên, cảm nhận được ánh nắng và gió tự nhiên. Từ yêu
        cầu này, đặt trong mối quan hệ của khí hậu nhiệt đới nóng ẩm bản địa, nhóm kiến trúc sư đã chọn giải pháp đảo
        ngược trình tự sắp đặt các không gian của một ngôi nhà thông thường.
    </p>
    <img class="w-full h-full mt-2 rounded-lg" src="https://i1-giadinh.vnecdn.net/2022/12/26/san-thuong-1-3450-1672064721.jpg?w=1020&h=0&q=100&dpr=1&fit=crop&s=nxK2A6NyTHAVuEZ8i6t79g" alt="">
    <p>
        Theo đó, không gian phòng khách và sinh hoạt chính của gia đình được bố trí ở phía sau nhà, quay về hướng
        Đông - nơi có một khoảng sân sau xanh mát. Vì nằm sâu ở cuối nhà, không gian này mang đến sự tĩnh lặng và thư
        giãn. Phía trước nhà - hướng Tây - được bố trí nhà để xe ở tầng trệt và khu bếp ở lầu một.
    </p>
    <p>
        Theo kiến trúc sư phụ trách Đinh Quốc Việt, việc bố trí phòng ngược như vậy không gây bất tiện vì tầng trệt
        để xe ô tô tách biệt với không gian sinh hoạt chung là phòng khách bằng những bậc thang. Do gia chủ không
        tiếp khách tại nơi ở nên không quá gây bất tiện khi người thân hay bạn bè đến chơi nhà. Thiết kế lệch tầng
        cũng làm cho phòng khách trở nên thoáng đãng, sử dụng hết chiều dài khu đất mà không bị giới hạn bởi gara.
        Phòng làm việc ở lầu một cũng quay vào sân sau, giao tiếp với phòng khách tầng trệt thông qua khoảng thông
        tầng. Sự sắp đặt các không gian chính của ngôi nhà một cách có chủ đích theo tác động của mặt trời giúp cho
        không khí bên trong mát mẻ, đón được nắng sớm và gió mát từ phía Đông.
    </p>
    <p>
        Chỉ có phòng ngủ chính đặt ở hướng Tây, tuy nhiên, giải pháp che nắng được tính đến bằng một khoảng lùi lớn
        cùng mái lam che. Ngoài ra, để giảm tác động bức xạ mặt trời lớn, phần lớn diện tích mái được phủ bóng mát
        bằng cây xanh.
    </p>
    <p>
        Mọi không gian chức năng bên trong nhà được thiết kế mở và bố trí theo hướng lệch tầng, xâu chuỗi nhau bằng
        khoảng thông tầng ở phòng khách, sân trước và sân sau. Giải pháp lệch tầng giúp căn nhà luôn thoáng đãng, đảm
        bảo kết nối giữa các thành viên. Ánh sáng tự nhiên có thể đi vào không gian bên trong qua hệ cửa chính, cửa
        sổ ở mặt tiền nhà. Dù vậy, ánh sáng không quá gay gắt bởi sự tham gia của các không gian đệm như thông tầng,
        sân và ban công. Ngoài ra, ngôi nhà đón được gió mát quanh năm từ cả hai hướng Đông-Tây, len lỏi qua các
        không gian trước khi thoát ra giếng trời trên mái và cửa mở trên mặt đứng.
    </p>
    <p>
        Điểm đặc biệt nữa của công trình là tầng sân thượng được đặt trên lầu hai mà không phải lầu cao nhất. Lầu cao
        nhất được bố trí các không gian có tần suất sử dụng thấp như nhà kho, khu giặt phơi. Nhờ đó mọi người trong
        nhà có thể tiếp cận không gian sân thượng để sinh hoạt dễ dàng và thuận tiện hơn.
    </p>
    <p>
        Theo kiến trúc sư phụ trách, việc đảo ngược các không gian, thiết kế vỏ bao che nắng và thông gió không chỉ
        mang đến môi trường sống thoải mái cho gia chủ, mà còn gắn kết con người với thiên nhiên.
    </p>
</div>', 22, 't', 16, 4, '2022-12-27', 'https://i1-giadinh.vnecdn.net/2022/12/26/san-thuong-1-3450-1672064721.jpg?w=1020&h=0&q=100&dpr=1&fit=crop&s=nxK2A6NyTHAVuEZ8i6t79g');
INSERT INTO "public"."articles" OVERRIDING SYSTEM VALUE VALUES (92, 'Những lưu ý khi thiết kế logia', 45, 'Tôi muốn thiết kế logia làm nơi thư giãn, uống trà, ăn sáng, đọc sách vừa là chỗ để phơi đồ, chăm sóc cây cảnh thì cần lưu ý điều gì?

Độc giả Thu Hương', '    <div class="flex flex-col gap-y-2">
        <p>
            Tôi muốn thiết kế logia làm nơi thư giãn, uống trà, ăn sáng, đọc sách vừa là chỗ để phơi đồ, chăm sóc cây
            cảnh thì cần lưu ý điều gì?
        </p>
        <b>
            Độc giả Thu Hương
        </b>
        <p>
            Theo kiến trúc sư Vũ Hồng Sơn (Công ty CP Thiết kế và Thi công DRA), logia là phần không gian có lan can
            bảo vệ, được thiết kế thụt vào so với mặt tường bao của nhà chung cư. Gia chủ có thể thoải mái bố trí bàn
            ghế ngồi nghỉ ngơi, trồng cây cảnh, phơi phóng...
        </p>
        <p>
            Có hai loại logia phân chia theo chức năng, gồm: Logia để nghỉ ngơi, thường thiết kế liền mạch với phòng
            khách hoặc phòng ngủ. Có thể dùng làm nơi thư giãn, trồng cây cảnh, bố trí bàn trà...; Logia để phục vụ
            sinh hoạt thường được thiết kế để khu nấu ăn hoặc nơi trồng cây, rau, giặt giũ, phơi phóng...
        </p>
        <img class="w-full h-full mt-2 rounded-lg" src="https://i1-giadinh.vnecdn.net/2022/12/25/Logia-8442-1671958788.jpg?w=1020&h=0&q=100&dpr=1&fit=crop&s=dCTNYf6lSA13z7NKtttA_Q" alt="">
        <p>
            Do hạn chế về diện tích, nên việc trang trí thiết kế logia cần được gia chủ tính toán tỉ mỉ sao cho tiện
            nghi và hợp thẩm mỹ, xu hướng. Một thiết kế logia đẹp và đạt tiêu chuẩn cần đạt được các tiêu chuẩn như:
            Chịu được ẩm, ánh sáng mặt trời; Lan can phải làm từ các vật liệu chống cháy nổ, đảm bảo độ cứng cáp và
            an toàn cho người sử dụng; Yêu cầu kết cấu chịu lực, chống thấm và cách nhiệt để đảm bảo độ an toàn; Phần
            sàn của logia nên làm từ vật liệu kết cấu chịu lực tốt như sàn gỗ, thép, bê tông cốt thép...; Thiết kế
            sàn lô gia nên thấp hơn sàn nhà bên trong, có độ dốc 1% – 2% để phục vụ việc thoát nước.
        </p>
        <p>
            Logia an toàn và đẹp cần phải đạt độ cao lan can theo tiêu chuẩn, tầng hai đến tầng 5 độ cao lan can
            khoảng 90-100 cm, từ tầng 5 logia phải đạt độ cao lan can là 100 cm trở lên, cao hơn nữa có thể là 120
            cm-140 cm.
        </p>
        <p>
            Lan can bảo vệ logia nên làm bằng thép bản dập, xếp dọc, hạn chế trẻ em leo trèo. Còn muốn an toàn tuyệt
            đối thì có thể lắp thêm lưới an toàn (chú ý yêu cầu phòng cháy chữa cháy).
        </p>
    </div>', 22, 't', 18, 4, '2022-12-25', 'https://i1-giadinh.vnecdn.net/2022/12/25/Logia-8442-1671958788.jpg?w=1020&h=0&q=100&dpr=1&fit=crop&s=dCTNYf6lSA13z7NKtttA_Q');
INSERT INTO "public"."articles" OVERRIDING SYSTEM VALUE VALUES (18, 'Song Joong Ki giấu danh tính bạn gái', 0, 'Tài tử Hàn Song Joong Ki giữ im lặng khi paparazzi tung tin bạn gái anh là Katy Louise Saunders, đang mang thai.', '<div class="flex flex-col gap-y-2">
    <p>
        Tài tử Hàn Song Joong Ki giữ im lặng khi paparazzi tung tin bạn gái anh là Katy Louise Saunders, đang mang
        thai.
    </p>
    <p>
        Diễn viên 37 tuổi thu hút sự quan tâm của fan châu Á khi tiết lộ đang hẹn hò, hôm 26/12. Sau đó, một số
        paparazzi đăng ảnh, video Joong Ki bên diễn viên người Anh Katy Louise Saunders, cho biết họ sắp kết hôn.
        Theo Joong Ang, Joong Ki đã giới thiệu Katy với bạn bè, cộng sự. Cô thường cùng anh ra nước ngoài công tác.
        Hồi đầu tháng, Katy đi cùng Song Joong Ki khi anh tới Singapore quảng bá phim. Lúc về Hàn Quốc, Katy Louise
        Saunders được trông thấy mặc đồ rộng, thi thoảng đưa tay che bụng, dấy tin đồn cô mang thai.
    </p>
    <p>
        Trước các nghi vấn làm bố, sắp kết hôn, công ty quản lý của Song Joong Ki chỉ phản hồi: "Đó là đời tư của
        diễn viên, chúng tôi không thể xác nhận". Hiện, thông tin về Katy Louise Saunders gây chú ý với nhiều khán
        giả châu Á. Ngày 28/12, trang Osen đăng một số ảnh cũ của Katy Louise Saunders, trong đó có hình cô lộ bụng
        lớn vào năm 2012 - tại sự kiện ở Italy. Ở một số hình khác, Katy Louise Saunders xuất hiện cùng một bé gái.
        Người đẹp được cho có con khoảng 10 tuổi.
    </p>
    <img class="w-full h-full mt-2 rounded-lg" src="https://i1-giaitri.vnecdn.net/2022/12/28/song6-4532-1672212223.jpg?w=1020&h=0&q=100&dpr=1&fit=crop&s=YrlLe9eDTclvBZEylTXQkg" alt="">
    <p>
        Katy Louise Saunders 38 tuổi, mang hai dòng máu Anh - Columbia. Cô gia nhập làng phim từ đầu thập niên 2000,
        xuất hiện trong The Lizzie McGuire Movie (2003), Los Borgia (2006), Third Person (2013), Welcome Home
        (2018)... Hiện cô là giáo viên ngoại ngữ.
    </p>
    <p>
        Song Joong Ki từng trải qua cuộc hôn nhân hai năm với minh tinh Song Hye Kyo. Họ hoàn tất thủ tục ly dị năm
        2019. Những năm gần đây, sự nghiệp của anh phát triển ổn định. Năm nay, tài tử gây sốt với Cậu út nhà tài
        phiệt.
    </p>
</div>', 11, 't', 28, 4, '2023-01-06', 'https://i1-giaitri.vnecdn.net/2022/12/28/song6-4532-1672212223.jpg?w=1020&h=0&q=100&dpr=1&fit=crop&s=YrlLe9eDTclvBZEylTXQkg');
INSERT INTO "public"."articles" OVERRIDING SYSTEM VALUE VALUES (6, 'Chủ tịch tỉnh Thanh Hóa bị khiển trách', 0, 'Chủ tịch UBND tỉnh Thanh Hóa Đỗ Minh Tuấn và Phó chủ tịch Đầu Thanh Tùng bị Thủ tướng khiển trách do có vi phạm, khuyết điểm trong công tác. ', '<div class="flex flex-col gap-y-2">
    <p>
        Chủ tịch UBND tỉnh Thanh Hóa Đỗ Minh Tuấn và Phó chủ tịch Đầu Thanh Tùng bị Thủ tướng khiển trách do có vi
        phạm, khuyết điểm trong công tác.
    </p>
    <p>
        Theo các quyết định do Phó thủ tướng thường trực Phạm Bình Minh ký ngày 27/12, ông Nguyễn Đình Xứng, nguyên
        Chủ tịch UBND tỉnh và ông Phạm Đăng Quyền, nguyên Phó chủ tịch UBND tỉnh, cũng bị khiển trách.
    </p>
    <p>
        Thời gian thi hành kỷ luật các cá nhân nêu trên tính từ 5/12/2022.
    </p>
    <img class="w-full h-full mt-2 rounded-lg" src="https://i1-vnexpress.vnecdn.net/2022/12/27/12-jpg-1607242409-7304-1607242-2920-4744-1672152277.jpg?w=1020&h=0&q=100&dpr=1&fit=crop&s=4pGpPlgy3rVWe6gCp3mO1w" alt="">
    <p>
        Đầu tháng 12, Ủy ban Kiểm tra Trung ương khiển trách Ban cán sự đảng UBND tỉnh Thanh Hóa các nhiệm kỳ
        2016-2021, 2021-2026 và các ông: Đỗ Minh Tuấn, Nguyễn Đình Xứng, Đầu Thanh Tùng, Phạm Đăng Quyền và Hà Mạnh
        Quân (Phó giám đốc Sở Tài chính Thanh Hóa).
    </p>
    <p>
        Cơ quan Kiểm tra Trung ương kết luận, trong lãnh đạo, chỉ đạo, Ban cán sự đảng UBND tỉnh Thanh Hóa đã vi phạm
        quy chế làm việc; thiếu trách nhiệm, buông lỏng lãnh đạo, chỉ đạo để UBND tỉnh và một số tổ chức, cá nhân vi
        phạm quy định của Đảng, pháp luật của Nhà nước trong đấu thầu, mua sắm sinh phẩm, hóa chất, vật tư y tế phục
        vụ công tác phòng, chống dịch.
    </p>
    <p>
        Những vi phạm, khuyết điểm nêu trên có nguy cơ gây thiệt hại lớn ngân sách nhà nước, ảnh hưởng đến uy tín của
        cấp ủy và chính quyền địa phương.
    </p>
</div>', 29, 't', 16, 4, '2023-01-09', 'https://i1-vnexpress.vnecdn.net/2022/12/27/12-jpg-1607242409-7304-1607242-2920-4744-1672152277.jpg?w=1020&h=0&q=100&dpr=1&fit=crop&s=4pGpPlgy3rVWe6gCp3mO1w');
INSERT INTO "public"."articles" OVERRIDING SYSTEM VALUE VALUES (21, 'DJ Koo: ''Tình yêu với Từ Hy Viên ngày càng kiên định''', 0, 'Nghệ sĩ âm nhạc Hàn Quốc DJ Koo nói thử thách khiến tình yêu giữa anh và vợ -Từ Hy Viên - ngày càng vững chắc.', '<div class="flex flex-col gap-y-2">
    <p>
        Nghệ sĩ âm nhạc Hàn Quốc DJ Koo nói thử thách khiến tình yêu giữa anh và vợ -Từ Hy Viên - ngày càng vững chắc.
    </p>
    <p>
        Theo Sina ngày 27/12, ca sĩ 53 tuổi và vợ hiện mỗi người một nơi vì công việc. Dịp cuối năm, DJ Koo lưu diễn
        nhiều nơi, bận rộn luyện tập, tham gia các buổi gặp gỡ fan. Tuy vậy, anh cho biết sự xa cách không gây ảnh
        hưởng tình cảm vợ chồng, ngược lại, hai người vượt qua các thử thách, gắn bó bền chặt. DJ Koo cũng cho biết
        dù khác biệt ngôn ngữ, văn hóa, cả hai không cảm thấy có trở ngại trong giao tiếp. "Chúng tôi có tình yêu,
        những yếu tố đó chưa bao giờ là vấn đề với chúng tôi", ca sĩ nói.
    </p>
    <p>
        Những phản hồi của DJ Koo xóa bỏ các nghi vấn mối quan hệ giữa anh và Từ Hy Viên xấu đi, sau scandal giữa Từ
        Hy Viên và chồng cũ - Uông Tiểu Phi, nổ ra từ tháng 11. Bấy giờ, diễn viên Đài Loan kiện Uông Tiểu Phi, đòi
        doanh nhân chi trả trợ cấp sau ly hôn. Nhưng Uông Tiểu Phi cho rằng Hy Viên đã kết hôn với DJ Koo, anh không
        có nghĩa vụ trả một số khoản sinh hoạt phí cho vợ cũ. Sau đó, hai bên đôi co, Hy Viên cho biết cô đòi Uông
        Tiểu Phi trợ cấp cho con chứ không phải cho bản thân. Trong vụ tranh chấp, Uông Tiểu Phi ám chỉ DJ Koo "ăn
        bám", khiến ca sĩ bị một số người chế giễu. Trên trang cá nhân, Từ Hy Viên từng bênh vực chồng: "Ai làm người
        đó chịu, có việc gì cứ nhằm vào tôi, đừng gây tổn thương cho người không liên quan".
    </p>
    <img class="w-full h-full mt-2 rounded-lg" src="https://i1-giaitri.vnecdn.net/2022/12/28/vien-5-2872-1672217901.jpg?w=1020&h=0&q=100&dpr=1&fit=crop&s=jsAzU2ADDfPcBPRakSIHOA" alt="">
    <p>
        DJ Koo và Từ Hy Viên yêu nhau cuối thập niên 1990, chia tay vì bị công ty quản lý của ca sĩ ngăn cản. Sau đó,
        người đẹp Vườn sao băng kết hôn với Uông Tiểu Phi, có hai con, họ ly hôn tháng 11/2021. Theo Appledaily, biết
        tin bạn gái cũ độc thân, DJ Koo liên lạc với Hy Viên theo số điện thoại cô dùng 20 năm trước, nối lại mối
        quan hệ. Họ hoàn tất thủ tục kết hôn hồi tháng 3.
    </p>
</div>', 11, 'f', 28, 4, '2023-01-06', 'https://i1-giaitri.vnecdn.net/2022/12/28/vien-5-2872-1672217901.jpg?w=1020&h=0&q=100&dpr=1&fit=crop&s=jsAzU2ADDfPcBPRakSIHOA');
INSERT INTO "public"."articles" OVERRIDING SYSTEM VALUE VALUES (60, 'Cập nhật chấn thương của Stephen Curry: Siêu sao NBA đang hồi phục ra sao?', 43, 'Stephen Curry đã vắng mặt trong cả 4 trận gần nhất, Warriors để lại lỗ hổng không hề nhỏ cả về chuyên môn lẫn tinh thần cho cả tập thể Golden State Warriors.', '<div class="flex flex-col gap-y-2">
    <p>
        Stephen Curry đã vắng mặt trong cả 4 trận gần nhất, Warriors để lại lỗ hổng không hề nhỏ cả về chuyên môn lẫn
        tinh thần cho cả tập thể Golden State Warriors.
    </p>
    <p>
        Golden State Warriors đang khủng hoảng với thành tích sân khách vô cùng bết bát. Mọi thứ tệ hơn nữa khi
        Stephen Curry dính chấn thương vai giữa loạt trận xa nhà cách đây 10 ngày, một bước lùi khiến tương lai của
        Warriors trở nên mù mịt. May mắn cho Golden State khi đội ngũ y tế vừa gửi tin mừng cho cả đội lẫn CĐV về
        tình hình hồi phục của Curry, thông báo rằng “bếp trưởng" đang có tiến triển tốt.
    </p>
    <p>
        “Dính chấn thương vai trái vào ngày 14/12 và đã nghỉ thi đấu 4 trận gần nhất, Stephen Curry vừa được tái khám
        và kết quả cho thấy anh đang hồi phục rất tốt.
    </p>
    <img class="w-full h-full mt-2 rounded-lg" src="https://cdnmedia.webthethao.vn/uploads/2022-12-25/Warriors-mong-manh-de-vo-3.jpeg" alt="">
    <p>
        Đội ngũ y tế sẽ để Curry nghỉ ngơi thêm và đánh giá lại khả năng ra sân trong vòng 2 tuần nữa", đại diện
        Warriors cho biết. Stephen Curry đã vắng mặt trong cả 4 trận gần nhất của Warriors để lại lỗ hổng không hề
        nhỏ cả về chuyên môn lẫn tinh thần. Thiếu Curry, Golden State chỉ thắng được 1 trận và để thua 3 lần, bao gồm
        hai thất bại rất nặng trước New York Knicks và Brooklyn Nets.
    </p>
    <p>
        Cái tên được kỳ vọng sẽ thế chỗ “bếp trưởng" là Jordan Poole. Nhưng đến nay, cầu thủ 140 triệu đô la Mỹ này
        vẫn chưa thể hiện được sự ổn định, thi đấu vô cùng phập phù với tỷ lệ FG khá thấp.
    </p>
    <p>
        Tay ném sinh năm 1999 sẽ cần phải nâng tầm bản thân và chơi tốt hơn, ít nhất là trong 2 tuần Stephen Curry
        tiếp tục ngồi ngoài. Golden State Warriors sẽ chơi 7 trận trong vòng 2 tuần tới, lần lượt gặp các đội Memphis
        Grizzlies, Charlotte Hornets, Utah Jazz, Portland Trail Blazers, Atlanta Hawks, Detroit Pistons và Orlando
        Magic.
    </p>
    <p>
        Phần lớn đối thủ trong loạt trận này tương đối ngang tầm với Warriors. Chuyên gia dự đoán đội chủ sân Chase
        Center có thể thắng dễ 3-4 trận nếu chơi đúng sức.
    </p>
    <p>
        Nếu diễn ra như dự định, CĐV Golden State hoàn toàn có thể tin vào khả năng đội bóng sẽ lấy lại tinh thần
        trước khi Curry tái xuất, từ đó bức tốc đến kỳ nghỉ All-Star vào giữa tháng Hai.
    </p>
</div>', 8, 't', 28, 4, '2022-12-25', 'https://cdnmedia.webthethao.vn/uploads/2022-12-25/Warriors-mong-manh-de-vo-3.jpeg');
INSERT INTO "public"."articles" OVERRIDING SYSTEM VALUE VALUES (79, 'Nam sinh trường Ams giành học bổng gần 8 tỷ đồng đại học Mỹ', 0, 'Không nộp điểm SAT, không đạt IELTS ở mức xuất sắc, Tài Minh, 17 tuổi, vẫn giành học bổng toàn phần 7,9 tỷ đồng Đại học Dartmouth', '<div class="flex flex-col gap-y-2">
    <p>
        Không nộp điểm SAT, không đạt IELTS ở mức xuất sắc, Tài Minh, 17 tuổi, vẫn giành học bổng toàn phần 7,9 tỷ
        đồng Đại học Dartmouth.
    </p>
    <p>
        "Đêm 17/12, em không thể chợp mắt chút nào vì đợi kết quả tuyển sinh sớm của Đại học Dartmouth, Mỹ", Nguyễn
        Tài Minh, học sinh lớp 12 Toán 2, trường THPT chuyên Hà Nội - Amsterdam nhớ lại. Khoảng 3h sáng, hòm thư của
        Minh báo có email mới. Khi vừa nhấp chuột, nam sinh thấy biểu tượng pháo hoa xuất hiện cùng dòng chữ
        "Congratulations" (Chúc mừng), em vỡ òa vì vui sướng.
    </p>
    <p>
        Nam sinh 17 tuổi được nhận học bổng hơn 83.000 USD (hơn 1,97 tỷ đồng) mỗi năm, gồm học phí, tiền ăn và thuê
        nhà, học liệu, đi lại. Ngoài hỗ trợ tài chính, Đại học Dartmouth cũng giới thiệu các việc làm bán thời gian
        trong khuôn viên trường, nhiều vị trí thực tập để Minh có thể ứng tuyển. Tổng mức hỗ trợ trong bốn năm mà
        Minh được nhận là hơn 7,9 tỷ đồng.
    </p>
    <img class="w-full h-full mt-2 rounded-lg" src="https://i1-vnexpress.vnecdn.net/2022/12/25/a2079ddd82f65aa803e7-jpeg-8415-1671973477.jpg?w=1020&h=0&q=100&dpr=1&fit=crop&s=JC15SnNRoFK25WbJfS6ivQ" alt="">
    <p>
        Dartmouth là một trong tám đại học thuộc nhóm Ivy League danh giá, xếp hạng 12 trong danh sách đại học tốt
        nhất nước Mỹ, theo US News & World report. "Em chưa bao giờ dám nghĩ mình sẽ giành học bổng toàn phần của
        trường Ivy League", Minh nói, cho biết sẽ theo đuổi ngành Toán và Kinh doanh ở đại học này. Chàng trai Hà Nội
        cho rằng thành tích học hay điểm chuẩn hóa không phải lý do giúp em chinh phục hội đồng tuyển sinh. "Em không
        nộp điểm bài thi SAT, điểm IELTS 7.5 không phải mức xuất sắc. Điểm trung bình lớp 10 của em đạt 9.0, đứng top
        giữa lớp, lớp 11 thì cao hơn, đạt 9.5", Minh nói, nhận định điểm sáng của bộ hồ sơ là việc em đã thể hiện
        tương đối trọn vẹn bản thân và những bài học rút ra sau các trải nghiệm.
    </p>
    <p>
        Ở bài luận chính, nam sinh đã kể về sự ra đi của ông ngoại hai năm trước. "Ông mất khi em đang ôn thi lớp 10
        căng thẳng và áp lực. Em đã viết về những gì bản thân chứng kiến, đối mặt và vượt qua, cũng như những bài học
        giúp mình trưởng thành hơn", Minh nói.
    </p>
    <p>
        Em từng là nam sinh với cái tôi cao, chỉ làm điều bản thân muốn và không nghĩ đến ý kiến của người khác.
        Nhưng khi mất ông ngoại, sau đó là bà nội, Minh mới nhận ra giá trị trong cuộc sống là các mối quan hệ. "Nếu
        không có người đồng hành và chỉ bảo, mình không phát triển được. Từ một người có cái tôi cao, em khiêm tốn và
        hiểu chuyện hơn", Minh nói.
    </p>
    <p>
        Nam sinh 17 tuổi không cố dùng nhiều từ vựng khó trong bài luận, mà đề cao việc thể hiện thông điệp trọn vẹn
        và rõ ràng. Mất hơn một tháng viết và sửa, Minh hoàn thành bài luận trước khi hết hạn nộp hồ sơ vài ngày.
    </p>
    <p>
        Ngoài bài luận chính, điều khiến Minh tâm đắc trong hồ sơ là dự án Signtegrate - ứng dụng dịch thuật ngôn ngữ
        ký hiệu sử dụng công nghệ AI (trí tuệ nhân tạo), được thực hiện từ tháng 5/2021.
    </p>
    <p>
        Khi học lớp 3, hàng xóm của Minh là một gia đình bị khiếm thính. Minh làm bạn và nhận dạy Toán cho cô bé 5
        tuổi, con gái của gia đình này, bằng cách giơ các ngón tay. Khi Covid-19 xảy đến, do bị mất việc, cả nhà cô
        bé phải chuyển vào miền Nam sống. "Người khiếm thính đã chịu nhiều thiệt thòi, đại dịch lại khiến họ mất đi
        nhiều cơ hội hơn", Minh nhìn nhận.
    </p>
    <p>
        Dành thời gian tra cứu nhiều tài liệu, nam sinh quyết định tạo ra một công cụ miễn phí, nhằm giúp người khiếm
        thính hoà nhập với cuộc sống tốt hơn. Và Signtegrate ra đời.
    </p>
    <p>
        Để thực hiện dự án, Minh kết hợp với một bạn cùng lớp, có khả năng viết thuật toán. Các em được cô giáo chủ
        nhiệm Võ Thị Hằng, giáo viên Vật lý Phạm Thị Phương hỗ trợ, sau đó được PGS.TS Trương Thu Hương và một số
        giảng viên Viện Điện tử - Viễn thông, Đại học Bách khoa Hà Nội, hướng dẫn. Signtegrate hoạt động trên nguyên
        lý nhận diện ngôn ngữ ký hiệu của người khiếm thính, sau đó dịch nội dung và trả kết quả bằng dạng dữ liệu
        chữ. Sau hơn một năm phát triển, hiện ứng dụng này có thể dịch được khoảng 10 câu hoàn chỉnh.
    </p>
    <p>
        Tài Minh cũng tận dụng thế mạnh chuyên Toán của mình khi tham gia dự án "Love Math", giúp học sinh phổ thông
        học tốt môn này hơn; tham gia dạy Toán cho học sinh dân tộc thiểu số ở Yên Bái. Cuối năm 2021 là giai đoạn
        căng thẳng nhất của Tài Minh khi em vừa xây dựng Signtegrate, vừa là thành viên đội tuyển Toán, Robotics.
        Đỉnh điểm, Minh kiệt sức vì thiếu ngủ. Thấy tình trạng sức khỏe báo động, được mẹ hỗ trợ, nam sinh điều chỉnh
        lại thời gian biểu. Khi đó, Minh ưu tiên hoàn thành Signtegrate để kịp tham gia cuộc thi Học sinh, sinh viên
        với ý tưởng khởi nghiệp (SV Startup), diễn ra vào đầu năm 2022, và hoàn thành tốt các bài kiểm tra trên lớp.
    </p>
    <p>
        Nhờ vậy, Minh đạt 9,5 điểm trung bình học tập năm lớp 11, đạt giải nhì SV Startup 2022. "Chuẩn bị hồ sơ du
        học là quá trình dài, nên em thấy việc phân bổ thời gian hợp lý rất quan trọng để tạo nên một bộ hồ sơ chất
        lượng", Minh nói.
    </p>
    <p>
        Cô Phạm Thị Phương, giáo viên Vật lý, trường THPT chuyên Hà Nội -Amsterdam, đánh giá Tài Minh có khả năng làm
        việc theo kế hoạch. Nhờ thế, Minh đủ thời gian hoạt động ngoại khóa, nhưng không lơ là việc học trên lớp.
        "Mỗi khi kiểm tra vở, tôi đều thấy Minh ghi chép và làm bài tập đầy đủ. Nhiều giờ ra chơi, Minh nán lại lớp
        để hoàn thành bài", cô Phương nói, nhận xét thêm rằng cậu học trò chững chạc hơn so với tuổi, luôn say mê và
        nhiệt tình trong từng hoạt động tham gia. Chưa từng đi nước ngoài, Minh háo hức và mong chờ hành trình bốn
        năm tại Mỹ. Em dự định tiếp tục phát triển Signtegrate để ứng dụng này có thêm tính năng đọc phần dịch thuật;
        gọi vốn để đưa Signtegrate lên hệ điều hành Android và IOS. Ngoài ra, Minh xác định vẫn cần học tốt chương
        trình trên lớp, "không thể vì đã trúng tuyển đại học mà lơ là".
    </p>
    <p>
        Trải qua quá trình làm hồ sơ, Minh thấy mình trưởng thành và chăm chỉ hơn. "Em nhận ra đã làm gì phải nỗ lực
        hết mình, chỉ khi cố gắng và quyết tâm thì mới đạt được mục tiêu", Minh nói.
    </p>
</div>', 18, 't', 16, 4, '2023-01-06', 'https://i1-vnexpress.vnecdn.net/2022/12/25/a2079ddd82f65aa803e7-jpeg-8415-1671973477.jpg?w=1020&h=0&q=100&dpr=1&fit=crop&s=JC15SnNRoFK25WbJfS6ivQ');
INSERT INTO "public"."articles" OVERRIDING SYSTEM VALUE VALUES (51, 'CĐV Man Utd đổi lời bài hát cổ vũ Ronaldo', 65, 'ANH CĐV Man Utd thay từ Ronaldo bằng Garnacho trong lời bài hát cổ vũ ở trận thắng Nottingham 3-0 tại vòng 17 Ngoại hạng Anh, hôm qua.', '<div class="flex flex-col gap-y-2">
    <p>
        ANH CĐV Man Utd thay từ Ronaldo bằng Garnacho trong lời bài hát cổ vũ ở trận thắng Nottingham 3-0 tại vòng 17 Ngoại hạng Anh, hôm qua.
    </p>
    <p>
        Khi Garnacho vào sân thay Antony phút 65, CĐV sân Old Trafford bắt đầu thay câu hát huyền thoại "Hoan hô
        Ronaldo" bằng "Hoan hô Garnacho". Trận đấu Nottingham hôm qua là trận chính thức đầu tiên của Man Utd sau khi
        chấm dứt hợp đồng với Cristiano Ronaldo.
    </p>
    <p>
        Theo tờ Sun, Garnacho có màn thể hiện tích cực trong 30 phút trên sân. Sự xuất hiện của tài năng 18 tuổi
        người Argentina giúp Man Utd duy trì sức ép lên khung thành Nottingham, trước khi Fred ấn định tỷ số 3-0 phút
        87. Trước đó, "Quỷ Đỏ" dẫn hai bàn nhờ công Marcus Rashford và Anthony Martial. Ronaldo chưa có CLB mới sau
        khi rời Man Utd. Theo Sun, đội bóng của Saudi Arabia, Al Nassr đang muốn ký với anh đến năm 2030. Đội bóng
        của Qatar, Al Sadd cũng sẵn sàng chiêu mộ với hợp đồng hàng trăm triệu USD.
    </p>
    <img class="w-full h-full mt-2 rounded-lg" src="https://i1-thethao.vnecdn.net/2022/12/28/rona-1-3240-1672219466.jpg?w=1020&h=0&q=100&dpr=1&fit=crop&s=aKuuCRoRIQ7I-j7ZN7KrAg" alt="">
    <p>
        Từ khi rời World Cup, Ronaldo tập với CLB cũ Real Madrid. Tuy nhiên, khả năng anh trở lại sân Bernabeu là rất
        thấp. HLV Carlo Ancelotti muốn tiếp tục xây dựng Real bằng các cầu thủ trẻ, thay vì ngôi sao 37 tuổi.
    </p>
    <p>
        Nhờ trận thắng Nottingham, Man Utd áp sát Top 4 Ngoại hạng Anh. "Quỷ Đỏ" hiện được 29 điểm sau 15 trận, kém
        đội xếp thứ tư Tottenham một điểm, nhưng chơi ít hơn một trận. Mùa trước, Man Utd kết thúc ở vị trí thứ sáu
        và không được dự Champions League.
    </p>
</div>', 7, 'f', 15, 4, '2022-12-28', 'https://i1-thethao.vnecdn.net/2022/12/28/rona-1-3240-1672219466.jpg?w=1020&h=0&q=100&dpr=1&fit=crop&s=aKuuCRoRIQ7I-j7ZN7KrAg');
INSERT INTO "public"."articles" OVERRIDING SYSTEM VALUE VALUES (53, 'HLV Chelsea: ''Tôi biết nhiều người nói mình không đủ tốt''', 0, 'Sau khi hạ Bournemouth 2-0 ở vòng 17 Ngoại hạng Anh, HLV Graham Potter tự nhận bản thân chưa hoàn hảo nên biết ơn sự ủng hộ từ chủ sở hữu và CĐV.', '<div class="flex flex-col gap-y-2">
    <p>
        Sau khi hạ Bournemouth 2-0 ở vòng 17 Ngoại hạng Anh, HLV Graham Potter tự nhận bản thân chưa hoàn hảo nên
        biết ơn sự ủng hộ từ chủ sở hữu và CĐV.
    </p>
    <p>
        "Tôi hy vọng người hâm mộ hiểu con đường mà CLB đang cố gắng đi", Potter nói sau trận thắng trên sân Stamford
        Bridge. "Nhưng tôi hiểu mọi người cảm thấy thất vọng khi Chelsea thi đấu không tốt và mọi thứ không như mong
        muốn. Tôi không ngây thơ, và biết nhiều người nói rằng tôi không đủ tốt. Điều đó xảy ra nhiều lần trong suốt
        sự nghiệp của tôi".
    </p>
    <p>
        Potter không phải HLV danh tiếng, thậm chí Brighton - nơi ông làm việc ba năm qua - là CLB lớn nhất trong sự
        nghiệp cầm quân. Tại đây, HLV 47 tuổi bắt đầy gây chú ý khi giúp Brighton trụ hạng trong hai mùa đầu tiên tại
        Ngoại hạng Anh. Mùa trước, đội bóng này về đích thứ chín - cao nhất lịch sử CLB. Potter từng gây ấn tượng đầu
        tiên ở Thụy Điển khi bắt đầu sự nghiệp cầm quân. HLV người Anh giúp Ostersund leo một mạch từ hạng Tư lên
        hạng Nhất. Họ đánh bại Galatasaray ở vòng sơ loại Europa League 2017-2018, rồi xếp thứ hai vòng bảng mùa đó,
        ở bảng đấu có cả Bilbao nổi tiếng của Tây Ban Nha. Chiến tích lớn nhất trong bảy năm dẫn dắt Ostersund giai
        đoạn 2011-2018 của Potter là đoạt Svenska Cupen mùa 2016-2017 (Cup Thụy Điển).
    </p>
    <img class="w-full h-full mt-2 rounded-lg" src="https://i1-thethao.vnecdn.net/2022/12/28/FlA08mHX0AE9Mj9-jfif-4937-1672202123.jpg?w=1020&h=0&q=100&dpr=1&fit=crop&s=fY11ErFOj8ZwgQqNvxmduQ" alt="">
    <p>
        Potter cảm thấy những áp lực tại Chelsea là bình thường, vì ông từng bị gọi là "rác rưởi" trong 18 tháng đầu
        dẫn dắt Ostersund. Vì thế, HLV này biết ơn khi nhận được sự ủng hộ và cảm thông từ chủ sở hữu mới của Chelsea
        - nhóm doanh nhân do tỷ phú Todd Boehly đứng đầu. "Chúng tôi không hoàn hảo nên phải chấp nhận mọi lời chỉ
        trích khi không đạt được màn trình diễn và kết quả như mong muốn", Potter nói thêm.
    </p>
    <p>
        Potter chịu áp lực lớn khi Chelsea thua bốn trận liên tiếp trước khi mùa giải tạm nghỉ nhường chỗ cho World
        Cup 2022, trong đó có ba trận ở Ngoại hạng Anh và một trận tại vòng ba Cup Liên đoàn Anh. Nhưng HLV 47 tuổi
        giải tỏa phần nào áp lực khi Chelsea thắng Bournemouth ở trận cuối trên sân Stamford Bridge trong năm 2022.
    </p>
    <p>
        Potter cho biết trận thắng Bournemouth là "bước tiến lớn" của Chelsea, và giải thích việc xếp Kai Havertz đá
        tiền đạo cắm thay Pierre-Emerick Aubameyang để hàng công hoán đổi vị trí linh hoạt. "Havertz có thể lùi sâu
        hoặc dâng cao xâm nhập vòng cấm. Điều đó cho phép Raheem Sterling và Christian Pulisic luôn có thể dâng cao,
        qua đó mang lại một chút thay đổi về cách tấn công", ông phân tích.
    </p>
    <p>
        Chiến thắng của Chelsea không trọn vẹn, khi Reece James chấn thương và nhường chỗ cho Cesar Azpilicueta từ
        phút 53. Hậu vệ 23 tuổi vừa bình phục chấn thương đầu gối khiến anh phải nghỉ tám tuần và lỡ World Cup 2022.
        Potter cho biết tình hình của James chỉ được xác định sau những cuộc kiểm tra trong hai ngày tới.
    </p>
    <p>
        Trong một tuần tiếp theo, Chelsea lần lượt gặp Nottingham Forest ngày 1/1/2023, Man City ngày 5/1 tại Ngoại
        hạng Anh rồi tái đấu Man City ở vòng ba Cup FA ngày 8/1. Tuy nhiên, Potter từ chối phàn nàn về lịch thi đấu
        vì điều đó chẳng có ý nghĩa gì. Ông nói: "Chúng tôi muốn có những màn trình diễn, muốn chơi tốt trước người
        hâm mộ".
    </p>
</div>', 7, 'f', 18, 4, '2023-01-07', 'https://i1-thethao.vnecdn.net/2022/12/28/FlA08mHX0AE9Mj9-jfif-4937-1672202123.jpg?w=1020&h=0&q=100&dpr=1&fit=crop&s=fY11ErFOj8ZwgQqNvxmduQ');
INSERT INTO "public"."articles" OVERRIDING SYSTEM VALUE VALUES (59, 'Durant cùng Irving dội mưa 3 điểm, từ chối career-high 46 điểm của tài năng trẻ Darius Garland', 0, 'Darius Garland đã lập kỷ lục cá nhân mới trong nỗ lực đưa Cleveland đến chiến thắng, tiếc rằng anh đã gặp phải tập thể Brooklyn Nets quá xuất sắc ngày hôm nay.', '<div class="flex flex-col gap-y-2">
    <p>
        Darius Garland đã lập kỷ lục cá nhân mới trong nỗ lực đưa Cleveland đến chiến thắng, tiếc rằng anh đã gặp
        phải tập thể Brooklyn Nets quá xuất sắc ngày hôm nay.
    </p>
    <p>
        Trận đấu sớm nhất và cũng được coi là tâm điểm của ngày thi đấu hôm nay (27/12) diễn ra giữa Cleveland
        Cavaliers và Brooklyn Nets. Trước khi bước vào trận đấu này hai đội bóng đang đứng lần lượt thứ 3 và 4 bảng
        xếp hạng miền Đông.
    </p>
    <p>
        Brooklyn Nets hành quân tới nhà thi đấu Rocket Mortgage Fieldhouse với chuỗi 8 chiến thắng liên tiếp. Về phía
        Cleveland Cavaliers, họ vừa sảy chân trước Toronto Raptors ngay trên sân nhà.
    </p>
    <img class="w-full h-full mt-2 rounded-lg" src="https://cdnmedia.webthethao.vn/uploads/2022-12-27/Durant-Irving-Nets-Garland-Cavaliers-2.jpg" alt="">
    <p>
        Để sớm quên đi thất bại, Donovan Mitchell cùng các đồng đội rất cần một chiến thắng và đồng thời giúp củng cố
        vị trí top đầu bảng xếp hạng. Toàn bộ những cầu thủ trong đội hình chính của hai đội hôm nay đều đang đạt thể
        trạng tốt nhất, mỗi đội chỉ thiếu đi một vài kép phụ. Do đó giới chuyên môn đánh giá đây là một trận đấu khá
        ngang tài ngang sức.
    </p>
    <p>
        Bước vào hiệp đấu đầu tiên, đội khách là những người nhập cuộc tốt hơn với chuỗi điểm 10-0 trong 5 phút, ép
        chủ nhà Cavaliers phải gọi hội ý. Riêng ở hiệp 1 này, Kevin Durant đã bỏ túi đến 13 điểm để đưa Brooklyn Nets
        lên dẫn trước với cách biệt 12 điểm.
    </p>
    <p>
        Cleveland dẫn bắt nhịp với trận đấu ở hiệp 2 và rút ngắn khoảng cách xuống còn 1 điểm (44-43), nhưng nỗ lực
        này nhận thêm một gáo nước lạnh nữa khi Kyrie Irving cùng T.J. Warren thực hiện cú run 13-0. Hai hiệp đầu
        khép lại với tỷ số 65-49 nghiêng về Brooklyn Nets.
    </p>
    <p>
        Sau giờ nghỉ, các tay ném chủ nhà mới bắt đầu bừng tỉnh. Xuất sắc nhất trong số này là tài năng trẻ sinh năm
        2000 Darius Garland. Có lúc anh ghi tới 10 điểm trong vòng hơn 3 phút, góp công giúp Cavaliers ở trong thế
        bám đuổi. Nỗ lực này kéo dài sang tận hiệp 4 khi riêng Garland ghi tới 17 điểm trong 10 phút. Tiếc rằng một
        mình anh dù ghi tới 46 điểm vẫn đã không thể giữ chiến thắng ở lại Cleveland.
    </p>
    <p>
        Đội chủ nhà hôm nay chơi tấn công không quá tệ, nhưng hàng thủ của họ lại bế tắc hoàn toàn trước sự xuất sắc
        của Kevin Durant và Kyrie Irving. Không thể bỏ qua TJ Warren, người thi đấu bùng nổ cho Brooklyn từ ghế dự bị.
    </p>
    <p>
        Trận đấu khép lại với chiến thắng 125-117 cho đội khách, nối dài mạch bất bại của Nets lên thành 9 trận. Với
        Cleveland Cavaliers, họ để thua trận thứ hai liên tiếp và rơi ra khỏi top 3 đội bóng đứng đầu miền Đông, bị
        chính Brooklyn Nets vượt mặt trên BXH. Kevin Durant và Kyrie Irving dẫn đầu tập thể Brooklyn Nets, cả hai đều
        ghi được 32 điểm, 5 assists và có tỷ lệ dứt điểm ấn tượng với 56,7%. Không thể bỏ qua thống kê ném xa của
        Durant và Irving khi cả hai có tổng cộng 12 quả 3 điểm thành công (12-19 3PT).
    </p>
    <p>
        T.J. Warren đóng góp 23 điểm cùng 8 rebounds và 2 steals dù vào sân từ ghế dự bị. Ngoài ra Nets còn 3 cầu thủ
        khác cùng ghi được 10 điểm là Royce O''Neale, Nic Claxton và tay ném châu Á Yuta Wantanabe.
    </p>
    <p>
        Về phía Cleveland Cavaliers, người chơi nổi bật nhất không ai khác ngoài Darius Garland. Hậu vệ 22 tuổi phá
        kỷ lục cá nhân với 46 điểm (14-20 FG, 5-7 3PT), đi kèm 8 assists, 3 rebounds và 1 steal.
    </p>
    <p>
        Riêng ngôi sao được kỳ vọng sẽ toả sáng là Donovan Mitchell hôm nay lại khá “nguội" tay, chỉ có 15 điểm với
        5-16 FG và 3-9 3PT.
    </p>
</div>', 8, 'f', 16, 4, '2023-01-07', 'https://cdnmedia.webthethao.vn/uploads/2022-12-27/Durant-Irving-Nets-Garland-Cavaliers-2.jpg');
INSERT INTO "public"."articles" OVERRIDING SYSTEM VALUE VALUES (39, 'Bình gas mini và pháo phát nổ thiêu rụi cửa hàng sửa xe', 11, 'HÀ NỘIBình gas mini phát nổ trong lúc ăn lẩu, bén vào đám pháo tự cuốn khiến cửa hàng sửa xe máy ở đường Hoàng Công Chất cháy rụi sau 30 phút, tối 27/12', '<div class="flex flex-col gap-y-2">
    <p>
        HÀ NỘI Bình gas mini phát nổ trong lúc ăn lẩu, bén vào đám pháo tự cuốn khiến cửa hàng sửa xe máy ở đường
        Hoàng Công Chất cháy rụi sau 30 phút, tối 27/12
    </p>
    <p>
        Ngày 28/12, Công an TP Hà Nội cho biết nguyên nhân ban đầu vụ cháy cửa hàng sửa xe máy số 176 đường Hoàng
        Công Chất, phường Phú Diễn, quận Bắc Từ Liêm.
    </p>
    <p>
        Qua điều tra, cuối tháng 11 Nguyễn Ngọc Tuấn và Thân Văn Long (cùng 22 tuổi, quê Bắc Giang) rủ nhau lên mạng
        mua thuốc về tự cuốn pháo chơi trong Tết Nguyên đán 2023. Trong khi sử dụng bếp gas mini ăn lẩu, bình gas
        phát nổ gây cháy nhà và cháy, nổ số pháo đã cuốn.
    </p>
    <img class="w-full h-full mt-2 rounded-lg" src="https://image.thanhnien.vn/w2048/Uploaded/2022/jbvunat/2022_12_27/5-6376.jpg" alt="">
    <p>
        Hỏa hoạn khiến Tuấn, Long và Thân Văn Trường (36 tuổi) bị bỏng, đang điều trị tại Bệnh viện Bỏng quốc gia.
        Hiện sức khỏe các nạn nhân đã ổn định, không nguy hiểm tính mạng. Trước đó 19h ngày 27/12, sau tiếng nổ chói
        tai, lửa bốc lên ngùn ngụt kèm theo nhiều tiếng nổ tại cửa hàng xe máy số 176 Hoàng Công Chất. Nhiều vật dụng
        trong nhà bay xa 20 m. Vài mảng tôn bay lên nóc tầng hai nhà bên cạnh.
    </p>
    <p>
        Cửa hàng rộng khoảng 50 m2 và một số xe máy, vật tư thiết bị đồ dùng sửa chữa xe bị thiêu rụi. Lực lượng chức
        năng thu nhận được nhiều xác pháo nổ.
    </p>
    <p>
        Công an quận Bắc Từ Liêm tiếp tục điều tra nguyên nhân hỏa hoạn.
    </p>
</div>', 3, 'f', 16, 4, '2022-12-28', 'https://image.thanhnien.vn/w2048/Uploaded/2022/jbvunat/2022_12_27/5-6376.jpg');
INSERT INTO "public"."articles" OVERRIDING SYSTEM VALUE VALUES (77, 'Nam sinh hai lần nhận Huân chương Lao động', 0, 'Trương Văn Quốc Bảo, 18 tuổi, lần thứ hai được Chủ tịch nước tặng Huân chương Lao động hạng ba sau khi lặp lại thành tích huy chương bạc Olympic Tin học quốc tế, huy chương vàng Tin học châu Á.', '<div class="flex flex-col gap-y-2">
    <p>
        Trương Văn Quốc Bảo, 18 tuổi, lần thứ hai được Chủ tịch nước tặng Huân chương Lao động hạng ba sau khi lặp
        lại thành tích huy chương bạc Olympic Tin học quốc tế, huy chương vàng Tin học châu Á.
    </p>
    <p>
        "Đây là điều tuyệt vời. Năm ngoái, khi nhận khen thưởng tại Phủ chủ tịch, em tự nhủ sẽ cố gắng để trở lại đây
        một lần nữa", chàng trai 18 tuổi, hiện là sinh viên trường Đại học Công nghệ (Đại học Quốc gia Hà Nội), nói
        sau lễ khen thưởng học sinh đạt giải Olympic quốc tế năm 2022, hôm 26/12.
    </p>
    <p>
        Khi còn là học sinh trường THPT chuyên Phan Bội Châu, Bảo đã hai năm liên tiếp giành huy chương vàng kỳ thi
        Olympic Tin học châu Á - Thái Bình Dương và huy chương bạc kỳ thi Olympic Tin học quốc tế. Bảo là con út, có
        bố mẹ làm kinh doanh ở Nghệ An. Khi học cấp 2, em là một trong những học sinh giỏi Toán nổi tiếng ở thành phố
        Vinh. Dù vậy, khi thi vào lớp 10 trường THPT Phan Bội Châu, Bảo quyết định chọn lớp chuyên Tin theo gợi ý của
        bố mẹ và một số thầy cô giáo. Vào lớp 10, nam sinh ngay lập tức cảm thấy thích thú với các bài giảng môn Tin
        học.
    </p>
    <img class="w-full h-full mt-2 rounded-lg" src="https://i1-vnexpress.vnecdn.net/2022/12/28/z3995505789653-5cd4d524f06f486-5662-1861-1672221290.jpg?w=1020&h=0&q=100&dpr=1&fit=crop&s=T2LWYuRwVWQ5CGUz_vR2Wg" alt="">
    <p>
        "Môn Tin học sử dụng rất nhiều thuật toán thú vị và mình có thể biểu diễn mọi thứ một cách chặt chẽ qua máy
        tính, qua lập trình. Em rất thích suy nghĩ logic và môn Tin học đã cho phép em làm điều đó", Bảo nhìn nhận,
        cho biết ngoài học trên lớp, em nỗ lực tự học qua các tài liệu tham khảo và cuộc thi online trên mạng. Theo
        nam sinh, em cũng chơi game, nhưng luôn kiểm soát về thời gian, chủ yếu chơi những lúc rảnh rỗi, khi đã xong
        hết bài vở như mong muốn, hoặc những khi có cảm giác căng thẳng.
    </p>
    <p>
        Ngay năm lớp 10, Bảo thi học sinh giỏi khu vực Duyên hải và Đồng bằng Bắc Bộ mở rộng môn Tin học và đạt điểm
        số tuyệt đối. Tháng 5 năm 2021, khi đang học lớp 11, Bảo giành giải quốc gia, rồi huy chương vàng kỳ thi
        Olympic Tin học châu Á - Thái Bình Dương. Tiếp đó, em giành huy chương bạc tại kỳ thi Olympic Tin học quốc
        tế. Đây là thành tích cao nhất từ trước tới nay của học sinh tỉnh Nghệ An ở môn Tin học.
    </p>
    <p>
        Bước sang lớp 12, với mong muốn đổi màu tấm huy chương quốc tế, Bảo tiếp tục dốc sức ôn luyện. "Em muốn tham
        gia các kỳ thi, thích cảm giác chiến thắng. Vì vậy, em luôn biến áp lực thành động lực để cố gắng", Bảo nói.
        Nam sinh 18 tuổi lần thứ hai giành huy chương vàng Olympic Tin học châu Á - Thái Bình Dương, nhưng không thể
        cải thiện thành tích ở kỳ thi Olympic Tin học quốc tế.
    </p>
    <p>
        "Ngày đầu tiên, em vẫn nằm trong top có huy chương vàng, nhưng sang ngày thứ hai, em làm khá tệ và mắc nhiều
        sai lầm. Em đã chọn sai bài để làm và chọn sai hướng để triển khai", Bảo nói, nhận ra chỉ năng lực của bản
        thân là chưa đủ để có kết quả tốt trong các kỳ thi, điều rất quan trọng nữa là giữ được sự ổn định về tâm lý
        khi làm bài.
    </p>
    <p>
        Theo nam sinh xứ Nghệ, cấu trúc đề của hai kỳ thi khá tương đồng, chỉ khác về số ngày và thời gian thi. Để
        đạt kết quả tốt, thí sinh cần thành thạo kỹ năng lập trình trên máy tính, suy nghĩ kỹ phần thuật toán. "Tin
        khá giống Toán, cần phải tư duy và thực hiện, khác nhau ở chỗ Tin học làm trên máy tính còn Toán làm trên
        giấy", nam sinh chia sẻ. Cô Cao Thị Lan Thanh, Phó hiệu trưởng THPT chuyên Phan Bội Châu nói cách đây ba năm,
        khi giảng dạy ở lớp 10 chuyên Tin, cô "ngỡ ngàng" khi phát hiện ra tài năng của Bảo. "Bảo tiếp thu kiến thức
        rất nhanh, say mê tìm tòi. Tôi thử hỏi những kiến thức nâng cao, em vẫn trả lời rất nhanh và đúng", cô Thanh
        nói. Theo nữ hiệu phó, nam sinh không thuộc tuýp "cày" nhiều, mà chỉ tập trung cao độ khi học. Em cũng là
        người điềm tĩnh, hòa đồng với bạn bè.
    </p>
    <p>
        Kỷ niệm khó quên quên nhất với Trương Văn Quốc Bảo, theo cô Thanh là khi Bảo đang học lớp 10. Nam sinh bị
        phát hiện cùng một số bạn sử dụng điện thoại trong giờ học để vào mạng xã hội. Cô Thanh giải thích, học sinh
        chuyên Tin nếu không làm chủ được bản thân sẽ dễ bị sa đà vào mạng xã hội, đặc biệt chơi game. Nữ giáo viên
        sau đó nói không cho Bảo vào đội tuyển của trường.
    </p>
    <p>
        "Bảo nhiều lần viết bản kiểm điểm xin lỗi. Khi tôi chưa đồng ý thì em tìm đến nhà riêng, đứng giữa trời mưa
        để nộp bản kiểm điểm khiến tôi xúc động. Tôi nghĩ hành động đó thể hiện em rất quyết tâm", cô Thanh nhớ lại.
        Trương Văn Quốc Bảo cho biết đang có ý định du học, điểm đến có thể là một trường đại học Mỹ. "Chặng đường
        phía trước còn dài, em muốn mình được tiếp xúc nhiều hơn với công nghệ phát triển của thế giới, muốn vượt qua
        những thử thách mới hơn", Bảo nói.
    </p>
</div>', 17, 't', 28, 4, '2023-01-08', 'https://i1-vnexpress.vnecdn.net/2022/12/28/z3995505789653-5cd4d524f06f486-5662-1861-1672221290.jpg?w=1020&h=0&q=100&dpr=1&fit=crop&s=T2LWYuRwVWQ5CGUz_vR2Wg');
INSERT INTO "public"."articles" OVERRIDING SYSTEM VALUE VALUES (112, 'Đâu làm gì khác được', 0, 'Những ngày cuối năm, tôi gặp anh Bảy, một nông dân trồng nhãn ở Hậu Giang, trong một chuyến khảo sát về nhu cầu sử dụng dịch vụ thông tin khí hậu.', '<div class="flex flex-col gap-y-2">
    <p>
        Những ngày cuối năm, tôi gặp anh Bảy, một nông dân trồng nhãn ở Hậu Giang, trong một chuyến khảo sát về nhu
        cầu sử dụng dịch vụ thông tin khí hậu.
    </p>
    <p>
        Trong khi những người khác đồng ý tham gia khảo sát và cung cấp thông tin, anh không trả lời ngay mà muốn xem
        bảng hỏi của chúng tôi. Sau khi đọc một lượt, anh nhìn ra vườn nhãn cạnh nhà, không nói gì...
    </p>
    <p>
        Tôi hỏi xem anh có thắc mắc gì về mục đích khảo sát và bảng hỏi không. Anh đặt bảng hỏi xuống và nói "Anh chị
        từ đâu? Là chuyên gia nông nghiệp phải không?". Giọng anh có vẻ bức xúc. "Anh chị có biết làm thế nào cứu hơn
        100 gốc nhãn của tôi năm nay mất trắng. Chuẩn bị thu hoạch thì mưa, nhãn thối hết cả". Nói xong, anh lẳng
        lặng bỏ đi.
    </p>
    <img class="w-full h-full mt-2 rounded-lg" src="https://xulynuocnhiemphen.vn/uploads/tin-tuc/bao-ve-moi-truong.jpg" alt="">
    <p>
        Sinh sống ở thành phố và không làm nông nghiệp, mỗi sáng tỉnh dậy, xem thời tiết với tôi đơn giản chỉ là biết
        hôm nay trời mưa hay nắng, nóng hay lạnh, để mặc gì phù hợp cho mình và cho con, nên đi xe máy hay ôtô.
    </p>
    <p>
        Nhưng với những người nông dân mà tôi đã gặp trong chuyến khảo sát tháng 12 vừa qua, thời tiết ảnh hưởng đến
        năng suất mùa vụ - nguồn thu nhập chính của họ. Đi qua bốn tỉnh Đồng bằng sông Cửu Long, chỉ cần nhìn gương
        mặt những người nông dân mà tôi khảo sát, tôi có thể đoán nơi nào vụ vừa rồi mưa thuận, gió hòa, thu hoạch
        tốt, giá cả ổn.
    </p>
    <p>
        Hoạt động canh tác của người nông dân chứa đựng nhiều rủi ro. Thời tiết thuận lợi thì mùa màng bội thu, nhưng
        được mùa lại mất giá. Nhiều khi biết lỗ mà vẫn phải làm. Vì họ đâu có lựa chọn nào khác. Những người nông dân
        trồng cây ăn trái bảo tôi: "Đến thời điểm đó thì phải kích thích cho cây ra bông, đâu có thể nghỉ được. Cây
        mà nghỉ một năm thì năm sau không ra trái được nhiều nữa". Hay người khác nói "Đến lúc phải xịt thuốc thì xịt
        thôi. Trời mưa thì mình xịt lại. Đâu làm gì khác được".
    </p>
    <p>
        Câu nói "Đâu làm gì khác được" bám vào tâm trí tôi. Hoạt động canh tác nông nghiệp vốn đã nhiều rủi ro, bất
        trắc. Biến đổi khí hậu lại càng làm nó trở nên bất định hơn.
    </p>
    <p>
        Người nông dân xem thời tiết cũng như giáo viên lâu năm chấm bài hay bác sĩ nhiều kinh nghiệm đoán bệnh. Họ
        bảo chỉ cần xem hướng gió, nhìn trời là biết được nắng mưa thế nào. Kinh nghiệm tích lũy qua nhiều năm canh
        tác giúp họ biết được một số quy luật thời tiết nhất định. Người nông dân có thể dự đoán thời tiết tại một số
        thời điểm trong năm và biết cần thực hiện kỹ thuật hay hoạt động canh tác nào để cây trồng có thể phát triển
        tốt trong những thời điểm đó.
    </p>
</div>', 27, 't', 15, 4, '2023-01-06', 'https://xulynuocnhiemphen.vn/uploads/tin-tuc/bao-ve-moi-truong.jpg');
INSERT INTO "public"."articles" OVERRIDING SYSTEM VALUE VALUES (72, 'Đại học Quốc gia TP HCM dành 45% chỉ tiêu xét điểm đánh giá năng lực', 0, 'Năm 2023, Đại học Quốc gia TP HCM dành ít nhất 45% chỉ tiêu tuyển sinh từ điểm thi đánh giá năng lực, tăng so với mức 40% của năm ngoái.', '<div class="flex flex-col gap-y-2">
    <p>
        Năm 2023, Đại học Quốc gia TP HCM dành ít nhất 45% chỉ tiêu tuyển sinh từ điểm thi đánh giá năng lực, tăng so
        với mức 40% của năm ngoái.
    </p>
    <p>
        Đại học này hôm 23/12 cho biết việc đổi mới tuyển sinh năm 2023 theo hướng tiếp tục triển khai phương thức
        xét tuyển dựa trên tổ hợp nhiều tiêu chí; tăng chỉ tiêu xét điểm bài thi đánh giá năng lực; mở rộng quy mô và
        địa điểm thi.
    </p>
    <p>
        Cụ thể, chỉ tiêu xét tuyển từ điểm thi đánh giá năng lực đạt ít nhất 45%, tăng so với mức 40% của năm ngoái.
        Năm 2022, các trường thành viên Đại học Quốc gia TP HCM tuyển khoảng 22.000 chỉ tiêu, gần 35,4% thí sinh nhập
        học bằng phương thức xét điểm đánh giá năng lực, trong khi năm 2021 con số này là 20%. Trong đó, một số
        trường xét tuyển theo công thức tính điểm nhiều tiêu chí, như trường Đại học Bách khoa xét kết hợp giữa điểm
        thi đánh giá năng lực, điểm thi tốt nghiệp và điểm học tập THPT.
    </p>
    <img class="w-full h-full mt-2 rounded-lg" src="https://i1-vnexpress.vnecdn.net/2022/12/24/305266499-1180509569194890-295-5586-7317-1671846764.jpg?w=1020&h=0&q=100&dpr=1&fit=crop&s=6RuZPVqCJ9JKiVye05mMkg" alt="">
    <p>
        TS Nguyễn Quốc Chính, Giám đốc Trung tâm Khảo thí và Đánh giá chất lượng đào tạo, Đại học Quốc gia TP HCM,
        cho hay kỳ thi đánh giá năng lực năm 2023 được tổ chức hai đợt, vào cuối tháng 3 và 5. Ban tổ chức đang xem
        xét mở rộng thêm điểm thi ở tỉnh Lâm Đồng và một số tỉnh khu vực Đồng bằng sông Cửu Long để thuận tiện cho
        thí sinh.
    </p>
    <p>
        Cấu trúc đề thi cơ bản ổn định như năm 2022. Đề thi gồm 120 câu hỏi trắc nghiệm, thời gian làm bài 150 phút,
        tính theo thang điểm 1.200, gồm ba phần: Sử dụng ngôn ngữ; Toán học, tư duy logic và phân tích số liệu; Giải
        quyết vấn đề. Lĩnh vực của đề thi rộng khắp, từ khoa học tự nhiên, khoa học xã hội, tiếng Anh, ngôn ngữ.
    </p>
    <p>
        Hơn 95.000 thí sinh dự kỳ thi đánh giá năng lực của Đại học Quốc gia TP HCM năm nay, tại 17 tỉnh, thành. Kết
        quả của kỳ thi được 86 trường đại học, cao đẳng sử dụng để tuyển sinh. Hiện nhiều đơn vị tổ chức bài thi đánh
        giá năng lực, đánh giá tư duy để xét tuyển như trường Đại học Sư phạm Hà Nội, Đại học Quốc gia Hà Nội, Đại
        học Quốc gia TP HCM, Đại học Bách khoa Hà Nội, Bộ Công an. Theo thống kê của Bộ Giáo dục và Đào tạo, năm
        2022, các trường dành hơn 30.000 chỉ tiêu xét tuyển từ điểm của các kỳ thi đánh giá năng lực, đánh giá tư
        duy. Tỷ lệ nhập học theo phương thức này chiếm khoảng 2% tổng số thí sinh nhập học của tất cả các phương thức.
    </p>
    <p>
        Tháng trước, hai đại học quốc gia cho biết sẽ xây dựng thang điểm quy đổi hai bài thi đánh giá năng lực để sử
        dụng kết quả của nhau. Trong khi đó, trường Đại học Bách khoa Hà Nội vừa thông báo đổi cấu trúc bài thi đánh
        giá tư duy, tương đồng với bài thi đánh giá năng lực của Đại học Quốc gia TP HCM về cơ cấu, hình thức và thời
        gian thi.
    </p>
</div>', 16, 'f', 28, 4, '2023-01-07', 'https://i1-vnexpress.vnecdn.net/2022/12/24/305266499-1180509569194890-295-5586-7317-1671846764.jpg?w=1020&h=0&q=100&dpr=1&fit=crop&s=6RuZPVqCJ9JKiVye05mMkg');
INSERT INTO "public"."articles" OVERRIDING SYSTEM VALUE VALUES (74, 'Đại học Công nghiệp TP HCM tuyển 50% chỉ tiêu từ điểm thi tốt nghiệp', 0, 'Năm tới, trường Đại học Công nghiệp TP HCM (IUH) dự kiến dành 50% chỉ tiêu cho phương thức xét điểm thi tốt nghiệp THPT, tương tự năm 2022.', '<div class="flex flex-col gap-y-2">
    <p>
        Năm tới, trường Đại học Công nghiệp TP HCM (IUH) dự kiến dành 50% chỉ tiêu cho phương thức xét điểm thi tốt
        nghiệp THPT, tương tự năm 2022.
    </p>
    <p>
        Ngày 22/12, TS Nguyễn Trung Nhân, Trưởng phòng Đào tạo, Đại học Công nghiệp TP HCM, cho biết năm 2023, trường
        dự kiến tuyển hơn 8.000 sinh viên cho 45 ngành và nhóm ngành. Các phương thức và tỷ lệ phân bổ chỉ tiêu được
        giữ ổn định như năm ngoái.
    </p>
    <p>
        Theo đó, 50% chỉ tiêu vẫn được dành cho phương thức xét kết quả thi tốt nghiệp 2023. Lý giải điều này, ông
        Nhân cho biết kỳ thi tốt nghiệp THPT có cơ sở tham chiếu tốt do được tổ chức trên quy mô cả nước. Ngoài ra,
        trường cũng muốn tạo điều kiện cho các thí sinh vùng sâu, khó khăn - nhóm khó tiếp cận các phương thức thi
        riêng, xét tuyển chứng chỉ quốc tế, để các em yên tâm ôn thi tốt nghiệp THPT và sử dụng phương thức này. Ba
        phương thức xét tuyển còn lại được trường Đại học Công nghiệp TP HCM sử dụng gồm xét học bạ lớp 12 (dự kiến
        30% chỉ tiêu, giảm nhẹ 5% so với năm ngoái); sử dụng kết quả kỳ thi đánh giá năng lực của Đại học Quốc gia TP
        HCM (10%); còn lại tuyển thẳng và ưu tiên xét tuyển (10%), áp dụng với học sinh đạt giải học sinh giỏi cấp
        tỉnh trở lên, học sinh trường chuyên hoặc có IELTS tối thiểu 5.0.
    </p>
    <img class="w-full h-full mt-2 rounded-lg" src="https://i1-vnexpress.vnecdn.net/2022/12/22/CG2A2907-9306-1671685891.jpg?w=1020&h=0&q=100&dpr=1&fit=crop&s=QqZvFJGeHMs7fsCQcukqDw" alt="">
    <p>
        Nếu nộp hồ sơ theo phương thức xét học bạ hoặc ưu tiên xét tuyển, thí sinh phải đạt tối thiểu 21 điểm theo tổ
        hợp ba môn xét tuyển, riêng ngành Dược học lấy điểm sàn 24 và học lực lớp 12 loại giỏi. Ở phân hiệu Quảng
        Ngãi, trường áp dụng điểm sàn là 19 cho phương thức xét học bạ.
    </p>
    <p>
        Tất cả ngành ở phân hiệu Quảng Ngãi có điểm chuẩn thấp nhất là 16. So với năm 2021, mặt bằng điểm chuẩn 
        trường này tăng 0,5-2 điểm.
    </p>
</div>', 16, 't', 15, 4, '2023-01-07', 'https://i1-vnexpress.vnecdn.net/2022/12/22/CG2A2907-9306-1671685891.jpg?w=1020&h=0&q=100&dpr=1&fit=crop&s=QqZvFJGeHMs7fsCQcukqDw');
INSERT INTO "public"."articles" OVERRIDING SYSTEM VALUE VALUES (83, 'Chờ nhận thưởng Tết rồi nghỉ', 0, 'Mỗi tháng bị chuyển một bộ phận, bị cho nghỉ không lương, cùng nhiều trù dập khác nhưng Dung vẫn bám trụ vì khoản thưởng Tết trước mắt.', '<div class="flex flex-col gap-y-2">
    <p>
        Mỗi tháng bị chuyển một bộ phận, bị cho nghỉ không lương, cùng nhiều trù dập khác nhưng Dung vẫn bám trụ vì
        khoản thưởng Tết trước mắt.
    </p>
    <p>
        Đang là nhân viên phòng kế hoạch, Phương Dung, 27 tuổi, bị chuyển xuống xưởng sản xuất ngồi với phòng thống
        kê và công nhân. Làm chưa ấm chỗ, tháng kế tiếp cô bị đẩy xuống xưởng ép nhôm, nơi sản xuất bụi bặm, ồn ào.
        Nhưng chưa hết, cô kể còn thường bị cấp trên giao những việc "giời ơi đất hỡi" hoặc kiểu đánh đố hoặc "hơi tí
        là mắng mỏ". Cũng có dạo lấy lý do không có đơn hàng, xưởng không có việc, cô bị cho nghỉ không lương 7 ngày,
        có tháng bị giảm lương 20%.
    </p>
    <p>
        "Mình sốc và buồn lắm. Đã gắn bó với công ty hơn 4 năm trong đó hai năm liền được vinh danh nhân viên xuất
        sắc mà giờ bị đối xử như thế này", Dung, nhân viên một công ty vật liệu xây dựng ở Hà Nội, nói.
    </p>
    <img class="w-full h-full mt-2 rounded-lg" src="https://i1-giadinh.vnecdn.net/2022/12/24/1-4488-1671894670.jpg?w=1020&h=0&q=100&dpr=1&fit=crop&s=K50hOSY6M7OZz-ivblLHnw" alt="">
    <p>
        Cảm giác bị chèn ép, đối xử bất công khiến Dung chỉ muốn nghỉ việc. Tuy nhiên, nghĩ gần tới ngày nhận thưởng
        Tết, cô thấy không đành. "Tết sắp đến không có tiền, không có việc, đành cố mà chịu đựng", cô nói.
    </p>
    <p>
        Mức lương hàng tháng của Dung khoảng 12 triệu đồng, thưởng Tết mỗi năm có thể được tới 3-4 tháng lương. Số
        tiền này cho phép cô làm nhiều thứ. Quốc Thắng, ở quận 2, TP HCM cũng đang đắn đo nghỉ việc trong những ngày
        cuối năm. Công việc trong ngành sáng tạo nội dung vốn đã bận rộn những tháng gần đây khi bộ phận thiếu người,
        Thắng phải làm nhiều gấp đôi trước. Chuyện thức khuya, ôm máy tính hết cả hai ngày cuối tuần để chạy deadline
        là cảnh thường xuyên. Mức thu nhập tăng không đáng kể so với công sức bỏ ra đã thúc đẩy Thắng tìm việc mới.
    </p>
    <p>
        Anh không phải chờ lâu, công ty mới đề nghị anh làm trưởng nhóm khoảng chục nhân viên và mức lương cao hơn 6
        triệu đồng. Công ty này lớn, hứa hẹn cho Thắng nhiều cơ hội học hỏi hơn. Có điều họ cần đi làm ngay, trong
        khi Thắng chưa muốn nghỉ việc lúc này.
    </p>
    <p>
        "Lý do níu chân tôi là thưởng thâm niên, lương tháng 13 và thưởng Tết, rồi cả khoản lì xì đầu năm. Những
        khoản này dồn lại, như năm ngoái cũng gấp 2,5 lần lương tháng của tôi. Năm nay tôi có thu nhập cao hơn, dự
        đoán thưởng cũng tốt hơn", Thắng tiết lộ.
    </p>
    <p>
        Chàng trai dò hỏi những người từng nghỉ việc được biết nếu nghỉ trước Tết sẽ mất luôn các khoản thưởng. Điều
        này đồng nghĩa nếu chuyển việc, anh sẽ trắng tay. "Giả sử công ty vẫn trả thưởng dựa trên số tháng làm việc,
        tôi sẽ nghỉ ngay", anh nói.
    </p>
    <p>
        Những tính toán của Dung hay Thắng là tâm lý chung của đa số người làm công ăn lương. Khảo sát nhanh hồi giữa
        tháng 12 của phóng viên VnExpress với khoảng 200 người cho thấy, 82% sẽ lựa chọn cố làm hết năm để lấy thưởng
        Tết. Điều này cho thấy thưởng Tết là niềm hy vọng và mong đợi của rất nhiều người lao động.
    </p>
    <p>
        Khảo sát về tiền lương 2022 của công ty tuyển dụng nhân sự Navigos Group với 6.800 người cho kết quả khá bất
        ngờ: Lương tháng thứ 13 hay thưởng Tết là phúc lợi được người lao động quan tâm nhiều nhất. Đứng sau đó là
        các yếu tố khác như bảo hiểm sức khỏe, y tế, thời gian làm việc linh hoạt, phụ cấp đi lại, làm việc ở nước
        ngoài, ứng trước lương...
    </p>
    <p>
        Có đến 53% ứng viên luôn tìm kiếm thông tin về thưởng Tết khi tìm việc. 82% người được khảo sát cho biết sẽ
        phản ứng nếu không nhận được thưởng Tết như kỳ vọng; 27% sẽ nghỉ việc và xin việc nơi khác có mức thưởng Tết
        tốt hơn và 55% sẽ cùng đồng nghiệp kiến nghị công ty phải thưởng Tết.
    </p>
</div>', 19, 'f', 28, 4, '2023-01-05', 'https://i1-giadinh.vnecdn.net/2022/12/24/1-4488-1671894670.jpg?w=1020&h=0&q=100&dpr=1&fit=crop&s=K50hOSY6M7OZz-ivblLHnw');
INSERT INTO "public"."articles" OVERRIDING SYSTEM VALUE VALUES (84, 'Sống chung nhà với 12 vợ và 102 người con', 0, 'Ông Musa Hasahya, 67 tuổi, hiện sống cùng 12 người vợ, 102 con và 567 cháu trong ngôi nhà chung tại Lusaka, Uganda - quốc gia Đông Phi coi chế độ đa thê là hợp pháp', '<div class="flex flex-col gap-y-2">
    <p>
        Người vợ đầu tiên của Hasahya nói chồng là người đáng yêu, luôn quan tâm đến mong muốn của các bà vợ. Ông
        cũng không đánh đập hay chế giễu vợ như nhiều người chồng khác. "Anh ấy có trái tim biết lắng nghe. Hasahya
        sẽ luôn đối xử bình đẳng với tất cả chúng tôi", bà nói.
    </p>
    <p>
        Sanda Nabwire, con gái lớn của Hasahya cũng nhận xét cha là người hiểu biết, yêu thương vợ con và không phân
        biệt đối xử.
    </p>
    <p>
        Hàng tháng, ông Hasahya đều tổ chức họp gia đình. Ngoài giúp cả nhà quây quần, cuộc họp là dịp để người đàn
        ông 67 tuổi lắng nghe tâm tư của vợ con, đồng thời đưa ra những lời dạy bảo, khuyên răn bổ ích.
    </p>
    <img class="w-full h-full mt-2 rounded-lg" src="https://i1-giadinh.vnecdn.net/2022/12/27/666666666-134-7865-1672128308.jpg?w=1020&h=0&q=100&dpr=1&fit=crop&s=FUIufxYJjTkRm8ebmFEoYQ" alt="">
    <p>
        Sở hữu nhiều đất đai, tài sản nhưng ông không giao cho các con trai vì sợ chúng bán lấy tiền. Ông luôn dạy
        các con phải chăm chỉ làm ăn để sở hữu tài sản riêng. Đại diện chính quyền địa phương cho biết gia đình ông
        Hasahya đông người nhưng những đứa trẻ luôn được dạy dỗ tốt nhất làng. Các thành viên không đánh nhau, trộm
        cắp hay hút thuốc. "Ông ấy rất nghiêm khắc và kỷ luật nên không chấp nhận bất kỳ sai trái nào trong gia
        đình", vị này nói.
    </p>
    <p>
        Nhiều vợ con kéo theo hệ lụy về cơm áo gạo tiền và các vấn đề phát sinh. Trong bối cảnh kinh tế eo hẹp, nguồn
        lương thực làm ra ngày càng giảm khiến ông Hasahya không nghĩ đến chuyện sinh thêm con. Ông khuyên những cô
        vợ trong độ tuổi sinh đẻ cần thực hiện các biện pháp tránh thai an toàn.
    </p>
    <p>
        Zulaika, người vợ trẻ nhất, cho biết đã sinh 11 người con cho chồng. "Nhưng giờ tôi không đẻ thêm nữa. Tôi đã
        thấy tình hình tài chính ngày càng kiệt quệ của gia đình", cô nói.
    </p>
</div>', 20, 'f', 16, 4, '2022-12-31', 'https://i1-giadinh.vnecdn.net/2022/12/27/666666666-134-7865-1672128308.jpg?w=1020&h=0&q=100&dpr=1&fit=crop&s=FUIufxYJjTkRm8ebmFEoYQ');
INSERT INTO "public"."articles" OVERRIDING SYSTEM VALUE VALUES (87, '6 dấu hiệu tình yêu đã hết', 0, 'Nghiên cứu cho thấy khi vợ chồng thể hiện những hành vi tiêu cực, tránh trách nhiệm, kiểm soát hay thờ ơ.... nhiều khả năng mối quan hệ của họ đã đi đến hồi kết.', '<div class="flex flex-col gap-y-2">
    <p>
        Nghiên cứu cho thấy khi vợ chồng thể hiện những hành vi tiêu cực, tránh trách nhiệm, kiểm soát hay thờ ơ....
        nhiều khả năng mối quan hệ của họ đã đi đến hồi kết.
    </p>
    <b>
        Sự thờ ơ không phản hồi
    </b>
    <p>
        Nhiều chuyên gia về hôn nhân đã khẳng định, khi được phỏng vấn các cặp vợ chồng đều thấy bị tổn thương khi
        không được thỏa mãn nhu cầu tình cảm, thậm chí bị bạn đời phớt lờ.
    </p>
    <b>
        Tại sao bỏ bê tình cảm lại gây tổn hại cho các mối quan hệ?
    </b>
    <p>
        Các nghiên cứu đã phát hiện ra, khi cảm xúc của một người bị phớt lờ, não bộ có xu hướng hiểu đó là sự từ
        chối. Cảm giác bị từ chối đó sẽ kích hoạt các vùng não cụ thể gây ra nỗi đau thực sự, cũng là những vùng liên
        quan đến chấn thương thể chất, được kích hoạt. Đồng thời, não bộ cũng sẽ kích thích cảm xúc sợ hãi, những suy
        nghĩ tiêu cực như "Tôi không đủ tốt", "Tôi không đáng được yêu thương"... từ từ được kích hoạt, tạo ra một
        loạt phản ứng dây chuyền như xấu hổ và tức giận.
    </p>
    <img class="w-full h-full mt-2 rounded-lg" src="https://i1-giadinh.vnecdn.net/2022/12/23/Ly-hon-5703-1671767197.jpg?w=1020&h=0&q=100&dpr=1&fit=crop&s=NdZ7o4UZ7plrXWYAnRINBw" alt="">
    <p>
        Không chỉ vậy, ký ức khó chịu này sẽ được phát đi phát lại nhiều lần, những cảm xúc tiêu cực cũng sẽ tích tụ
        theo đó. Theo thời gian, tất cả những điều này sẽ tạo thành cảm giác bất an và mất lòng tin trong mối quan
        hệ, khiến đôi bên dù không có sự ngăn cách trên thực tế thì cũng trở nên người lạ, dưới một mái nhà. Buông
        lời cay nghiệt
    </p>
    <p>
        Trong lúc tức giận, không làm chủ được lời nói, bạn có thể buông ra những lời cay đắng, chạm vào tự trọng hay
        điểm yếu của đối phương. Việc truyền đạt cảm xúc tiêu cực có sức tàn phá lớn nhất trong một mối quan hệ.
    </p>
    <p>
        Theo nhà tâm lý học John Gottman (Mỹ), khinh thường là sự pha trộn độc hại của sự tức giận và ghê tởm, có hại
        hơn nhiều so với sự tức giận thuần túy, bởi nó làm cho đối tác của bạn trông thấp kém hơn là bình đẳng. Khinh
        thường là một trong bốn yếu tố chính có thể giết chết hôn nhân cùng với chỉ trích, biện minh và chiến tranh
        lạnh. Nếu điều này xảy ra thường xuyên, mối quan hệ khó thoát khỏi ngày tận thế.
    </p>
    <p>
        Nghiên cứu chỉ ra, nếu người vợ thể hiện bốn biểu hiện ghê tởm và khinh thường trở lên trong cuộc nói chuyện
        trong vòng 15 phút, hôn nhân sẽ tan vỡ trong vòng khoảng 4 năm.
    </p>
    <b>
        Dối trá
    </b>
    <p>
        Các nhà nghiên cứu Đại học Queensland (Australia) đã phát hiện ra rằng có những kiểu lừa dối chính trong các
        mối quan hệ yêu đương, đó là giấu giếm, xuyên tạc, nói một nửa sự thật, dối trá trắng trợn. Trong đó, nhiều
        người sử dụng nhiều kiểu nói dối khác nhau để tránh đối đầu và xung đột. Họ coi gian lận là một chiến lược để
        giảm xung đột và tránh làm giảm sự hài lòng trong mối quan hệ.
    </p>
</div>', 20, 'f', 28, 4, '2023-01-06', 'https://i1-giadinh.vnecdn.net/2022/12/23/Ly-hon-5703-1671767197.jpg?w=1020&h=0&q=100&dpr=1&fit=crop&s=NdZ7o4UZ7plrXWYAnRINBw');
INSERT INTO "public"."articles" OVERRIDING SYSTEM VALUE VALUES (89, '5 chủ đề không nên hỏi trong lễ tết', 0, 'Công việc, lương thưởng, các mối quan hệ hay khơi gợi ký ức buồn là điều người có chỉ số cảm xúc cao không đề cập trong bữa tiệc cuối năm.', '<div class="flex flex-col gap-y-2">
    <p>
        Công việc, lương thưởng, các mối quan hệ hay khơi gợi ký ức buồn là điều người có chỉ số cảm xúc cao không đề
        cập trong bữa tiệc cuối năm.
    </p>
    <p>
        Myka Meier, người sáng lập trường Nghi thức xã hội Beaumont ở New York, cho rằng các nghi thức xã giao tốt sẽ
        khiến người khác cảm thấy thoải mái và được tôn trọng. "Vậy nên trước khi đặt câu hỏi, hãy nghĩ xem đối
        phương cảm thấy thế nào và biết cách tránh né những điều khiến họ không thoải mái hay có cảm giác bị phán
        xét", chuyên gia nói.
    </p>
    <p>
        Dưới đây là những chủ đề bạn không nên đề cập trên bàn ăn hoặc trong các cuộc gặp mặt để tránh gây sự khó
        chịu, phiền toái cho đôi bên.
    </p>
    <img class="w-full h-full mt-2 rounded-lg" src="https://i1-giadinh.vnecdn.net/2022/12/28/666666666-138-6892-1672213456.jpg?w=1020&h=0&q=100&dpr=1&fit=crop&s=wbkh8vJ-vw1jUoFK70tldA" alt="">
    <b>
        Công việc
    </b>
    <p>
        Người đi làm không thích bị hỏi về công việc ngoài giờ hành chính vì đó là thời gian duy nhất họ được nghỉ
        ngơi. Đừng làm phiền người khác bằng những câu hỏi thiếu tế nhị kiểu như: Hiện giữ chức vụ gì? Có tương lai
        thăng tiến không?... bạn có thể hỏi về đặc thù nghề nghiệp hoặc nghe họ chia sẻ về thành tích đã đạt được
        trong một năm qua.
    </p>
    <p>
        Còn với người thất nghiệp, điều tồi tệ nhất là hỏi lý do nghỉ việc. Trong trường hợp không chắc đối phương
        còn đi làm hay đã nghỉ, bạn chỉ nên hỏi thăm về tình hình công việc hoặc định hướng nghề nghiệp cho tương lai.
    </p>
    <b>
        Tình hình tài chính
    </b>
    <p>
        Bàn luận các vấn đề về lương thưởng, tài sản đã tích lũy hay đã báo hiếu được gì cho bố mẹ... là điều cấm kỵ,
        dễ khiến người bị hỏi tỏ thái độ khó chịu hoặc phản ứng gay gắt.
    </p>
    <p>
        Thay vào đó, bạn hãy quan sát cách họ nói chuyện với mọi người xung quanh, nhìn tài sản đang sở hữu để đoán
        biết tình hình tài chính của đối phương. Những mối quan hệ và gia đình.
    </p>
    <p>
        Người trẻ luôn ám ảnh bởi những câu hỏi về kế hoạch kết hôn, sinh con từ họ hàng và tìm cách đáp trả để không
        bị đánh giá là thô lỗ. Chủ đề này không mới nhưng luôn gây áp lực và khiến họ có xu hướng trốn tránh các cuộc
        gặp mặt gia đình.
    </p>
    <p>
        Để giúp cuộc gặp gỡ trở nên vui vẻ, gắn kết hơn, bạn hãy hỏi người độc thân về những sở thích cá nhân, lợi
        ích của việc chưa kết hôn, những thành tựu trong công việc. Còn các cặp đôi, hãy khơi gợi để họ chia sẻ thêm
        về người bạn đời hoặc dự định cho năm mới.
    </p>
</div>', 21, 'f', 18, 4, '2023-01-08', 'https://i1-giadinh.vnecdn.net/2022/12/28/666666666-138-6892-1672213456.jpg?w=1020&h=0&q=100&dpr=1&fit=crop&s=wbkh8vJ-vw1jUoFK70tldA');
INSERT INTO "public"."articles" OVERRIDING SYSTEM VALUE VALUES (102, 'Sheraton Saigon ra mắt bộ sưu tập quà Tết', 0, 'Khách sạn Sheraton Saigon ra mắt bộ sưu tập sản phẩm quà Tết "Hoa Khai Phú Quý" lấy cảm hứng từ những đóa hoa nở rộ giữa tiết xuân.', '<div class="flex flex-col gap-y-2">
    <p>
        Khách sạn Sheraton Saigon ra mắt bộ sưu tập sản phẩm quà Tết "Hoa Khai Phú Quý" lấy cảm hứng từ những đóa hoa
        nở rộ giữa tiết xuân.
    </p>
    <p>
        Bộ sưu tập gồm hai mẫu hộp mang tên Mẫu Đơn và Bách Hợp, làm thủ công tại khách sạn... Mỗi hộp sở hữu thiết
        kế vuông nổi bật với tay cầm bằng da, chứa sáu món bánh kẹo cao cấp kết hợp cùng trà hoặc rượu vang.
    </p>
    <p>
        Mẫu hộp Mẫu Đơn lấy màu vàng champagne làm chủ đạo. Hoa mẫu đơn với vẻ ngoài lượn sóng, toát lên sức hấp dẫn
        nồng nàn và cuốn hút. Những đóa hoa tung cánh nở rộ đại diện cho sự may mắn, thịnh vượng và phú quý cho năm
        mới. Trong khi đó, mẫu Bách Hợp là sự pha trộn giữa màu xanh đen và cam đậm. Là loài hoa tượng trưng cho tình
        yêu, hạnh phúc và thuận hòa, bách hợp với diện mạo thanh thoát, duyên dáng mang đến bức tranh tràn đầy năng
        lượng và thông điệp ý nghĩa dành tặng cho người thân yêu.
    </p>
    <img class="w-full h-full mt-2 rounded-lg" src="https://i1-dulich.vnecdn.net/2022/12/26/Image-203720357-ExtractWord-1-7470-7084-1672040380.png?w=1020&h=0&q=100&dpr=1&fit=crop&s=WkUNwbipm21PQeXkntBjgA" alt="">
    <p>
        Theo đại diện khách sạn, đây là hai sản phẩm bánh kẹo Tết ưu chuộng qua các năm, được sản xuất tại chỗ, dưới
        bàn tay đầu bếp tài hoa bao gồm: bánh quy hạt đều caramel mang vị ngọt thanh và chocolate hạt hỗn hợp có kết
        cấu giòn.
    </p>
    <p>
        "Các loại hạt bổ dưỡng như hạt óc chó, hạt điều, và hạt hạnh nhân cùng chocolate đen là sự lựa chọn của nhiều
        thực khách", đại diện khách sạn nói. Các món mứt tuyển chọn còn lại bao gồm nạnh nhân phô mai, mơ sấy dẻo,
        chà là kẹp óc chó đỏ, hạt điều tỏi ớt... mang đến lựa chọn đa dạng cho khay mứt ngày Tết cho nhiều gia đình.
        Sản phẩm hộp quà Tết Sheraton Saigon hai giá bán bao gồm 1,388 triệu đồng cho một hộp kết hợp cùng trà và
        1,888 triệu đồng cho một hộp kết hợp cùng rượu vang, chưa bao gồm thuế giá trị gia tăng và 5% phí dịch vụ.
        Đặc biệt, khách hàng tại các quận nội thành TP HCM khi mua đơn hàng từ 50 hộp trở lên, sẽ được giao hàng miễn
        phí.
    </p>
    <p>
        Khách sạn nhận đặt hàng tại tiền sảnh khách sạn Sheraton Saigon số 80 Đông Du, phường Bến Nghé, quận 1, TP
        HCM, từ đầu tháng 12 đến hết ngày 20/1/2023 hoặc thông qua các nền tảng trực tuyến. Sheraton Saigon là một
        trong những thương hiệu khách sạn chuyên ra đời những sản thẩm thủ công cao cấp, được thực hiện bởi đội ngũ
        đầu bếp nghệ nhân với hơn 40 năm kinh nghiệm như bánh ú Trạng Nguyên, bánh Trung thu hay bánh ngọt theo yêu
        cầu.
    </p>
</div>', 24, 'f', 18, 4, '2023-01-06', 'https://i1-dulich.vnecdn.net/2022/12/26/Image-203720357-ExtractWord-1-7470-7084-1672040380.png?w=1020&h=0&q=100&dpr=1&fit=crop&s=WkUNwbipm21PQeXkntBjgA');
INSERT INTO "public"."articles" OVERRIDING SYSTEM VALUE VALUES (106, 'Mehrangarh Fort - pháo đài được tạp chí Time ca ngợi', 0, 'Mehrangarh Fort không thuộc tam giác vàng du lịch New Delhi - Agra - Jaipur nên nhiều người bỏ qua mà không biết đã ''đánh rơi'' một nơi kỳ thú.', '<div class="flex flex-col gap-y-2">
    <p>
        Mehrangarh Fort không thuộc tam giác vàng du lịch New Delhi - Agra - Jaipur nên nhiều người bỏ qua mà không
        biết đã ''đánh rơi'' một nơi kỳ thú.
    </p>
    <p>
        Độc giả Trịnh Thu Hằng (40 tuổi, Hà Nội) trong chuyến đi Ấn Độ cùng con gái sau Covid-19 đã tới pháo đài
        Mehrangarh Fort, nơi từng được tạp chí Time giới thiệu trong chuyên mục The Best of Asia. Chị chia sẻ cảm
        nhận chuyến đi với độc giả VnExpress.
    </p>
    <p>
        Ấn Độ có thể được gọi là "đất nước của những pháo đài". Trước khi đi Ấn, tôi đọc đủ loại tài liệu và tự hỏi,
        phải chăng cả nghìn năm nay người Ấn không làm gì mà chỉ xây pháo đài vì đâu trên đất Ấn cũng thấy những công
        trình này. Khi đến tận nơi tôi mới biết pháo đài ở đây không phải là một tòa nhà có gắn khẩu pháo, mà thực
        chất giống như các Hoàng thành ở Đông Á. Trải qua lịch sử lâu dài biến động, ngày nay còn rất nhiều pháo đài
        ở Ấn Độ, trong đó có Mehrangarh Fort. Về địa lý, Mehrangarh Fort cũng nằm ở vùng Rajasthan, nhưng không thuộc
        tam giác vàng du lịch New Delhi - Agra - Jaipur nên rất nhiều du khách bỏ qua mà không biết đã "đánh rơi" một
        điểm check-in kỳ thú. Nếu đã đến đây bạn sẽ thấy, hai công trình nổi danh thế giới là Red Fort ở New Delhi và
        Agra Fort ở Agra hơi... tầm thường. Mehrangarh Fort chính là một trong những pháo đài đồ sộ và lộng lẫy bậc
        nhất Ấn Độ.
    </p>
    <img class="w-full h-full mt-2 rounded-lg"
         src="https://i1-dulich.vnecdn.net/2022/12/27/toan-canh-jodhpur-the-blue-cit-5132-8951-1672115610.jpg?w=1020&h=0&q=100&dpr=1&fit=crop&s=_urD9Dqa6j-NvHfSt836aQ" alt="">
    <p>
        Pháo đài được xây dựng ở thành phố Jodhpur, cách New Delhi khoảng 600 km. Bạn có thể đáp chuyến tàu từ thủ
        đô, chỉ mất 10 tiếng và 995 rupee (300.000 đồng) hoặc đi từ Jaipur mất 5 tiếng và 617 rupee (185.000 đồng).
        Toa giường nằm có điều hòa sạch đẹp đủ tiện nghi. Tổng cộng, chúng tôi chỉ tốn khoảng 5,5 triệu đồng để đi từ
        Hà Nội đến Mehrangarh Fort, trong đó hơn 4 triệu là vé máy bay khứ hồi, và hơn một triệu tiền tàu xe trên đất
        Ấn.
    </p>
    <p>
        Tàu đưa chúng tôi đến Jodhpur lúc nửa đêm. "The blue city" (thành phố màu xanh) giờ này vẫn nhộn nhịp, nhiều
        người đi lại trên phố. Những ngôi nhà nhỏ san sát sơn màu xanh biển và hàng loạt tranh tường khổ lớn. Khách
        sạn nằm trên một con dốc cao nên chúng tôi xuống khỏi xe tuk tuk và đi bộ một đoạn, đã qua 24h mà trên con
        ngõ nhỏ vẫn có nhóm thanh niên và phụ nữ đang say sưa chơi cricket, chào chúng tôi vui vẻ.
    </p>
    <p>
        Chủ khách sạn dẫn lên nhận phòng, mở cửa ban công và chỉ cho xem pháo đài. Ngay trước mắt chúng tôi, một bức
        tường sa thạch hồng sừng sững, trải dài sang hai bên và dường như không có giới hạn. Nó gần đến mức tôi có
        cảm giác chỉ cần thò tay là sờ được. Khách sạn ở ngay chân pháo đài với giá chỉ 180.000 đồng một đêm phòng
        đôi rộng rãi có điều hòa, với đầy đủ buồng tắm, ban công, cửa sổ, wifi tốc độ cao. Kinh nghiệm đi nhiều nước
        tôi thấy, hiếm khi nào cơ sở lưu trú sát cạnh điểm du lịch nổi tiếng mà giá rẻ đến thế.
    </p>
    <p>
        Hôm sau, theo chỉ dẫn chúng tôi đi bộ vài phút đến cổng chính của Mehrangarh. 9h pháo đài mới mở cửa nhưng
        8h45 đã có một đoàn người kiên nhẫn đứng xếp hàng. Vé vào cửa cho người nước ngoài là 600 rupee (180.000
        đồng), học sinh sinh viên là 400 rupee và cần xuất trình thẻ học sinh ở quầy bán vé.
    </p>
    <p>
        Tòa thành có bảy cổng lớn, mới đi qua cánh cổng thứ nhất, chúng tôi đã choáng ngợp. Nhìn tường đá dài, ngước
        lên là tầng lớp các tòa tháp cao, tôi tự hỏi thế này thì bao giờ mới đi hết được pháo đài. Thật sự mà nói, từ
        "pháo đài" không xứng đáng lắm với công trình này.
    </p>
    <p>
        Nói đến Ấn Độ, nhiều người chỉ biết Taj Mahal, nhưng Taj chỉ là một lăng mộ không sự sống, còn Mehrangarh
        Fort là cả một thành phố rộng tới 500 ha, gấp 27 lần và tuổi đời hơn Taj Mahal gần 200 năm, với nền móng được
        tạc thẳng vào ngọn đồi đá cao 122 m. Những lối đi rộng đủ hai chiếc xe tải tránh nhau, những khoảnh sân lớn
        xen giữa nhiều tòa nhà, những bức tường cao hàng chục mét, rồi hàng hiên, ô cửa sổ, mái nhà... phần lớn đều
        làm bằng đá.
    </p>
</div>', 25, 'f', 27, 4, '2023-01-06', 'https://i1-dulich.vnecdn.net/2022/12/27/toan-canh-jodhpur-the-blue-cit-5132-8951-1672115610.jpg?w=1020&h=0&q=100&dpr=1&fit=crop&s=_urD9Dqa6j-NvHfSt836aQ');
INSERT INTO "public"."articles" OVERRIDING SYSTEM VALUE VALUES (107, 'Ba bước để xin visa Schengen', 0, 'Nếu chuẩn bị hồ sơ tốt qua đủ các bước, khả năng đậu visa du lịch sẽ cao, bạn không phải đi lại nhiều lần.', '<div class="flex flex-col gap-y-2">
    <p>
        Nếu chuẩn bị hồ sơ tốt qua đủ các bước, khả năng đậu visa du lịch sẽ cao, bạn không phải đi lại nhiều lần.
    </p>
    <p>
        Độc giả Trịnh Hằng (40 tuổi, Hà Nội) vừa xin visa Schengen vào Pháp thành công. Chị chia sẻ với độc giả
        VnExpress về quá trình làm hồ sơ với ba bước cụ thể sau đây.
    </p>
    <img class="w-full h-full mt-2 rounded-lg" src="https://i1-dulich.vnecdn.net/2022/12/28/P1588795-JPG-2390-1672195528.jpg?" alt="">
    <b>
        Bước 1: Tìm hiểu, thu thập thông tin
    </b>
    <p>
        Việc đầu tiên là nộp tờ khai online. Đây là bước bắt buộc vì hoàn thành bước này bạn mới được cấp mã vạch, có
        mã vạch mới có thể nộp hồ sơ bản giấy.
    </p>
    <p>
        Truy cập vào trang visa online của Chính phủ Pháp france-visas.gouv.fr, chọn một trong sáu ngôn ngữ và nộp tờ
        khai. Nội dung tờ khai là những thông tin cơ bản về cá nhân và chuyến đi. Khai xong, bạn sẽ lưu file pdf để
        in đen trắng và mang đi nộp hồ sơ, trong file có mã vạch.
    </p>
    <p>
        Tờ khai của chúng tôi do một bạn trẻ 16 tuổi tự làm hoàn toàn và không có sai sót gì vì nội dung tờ khai khá
        đơn giản. Sau khi nộp thành công tờ khai, bạn sẽ nhận được email xác nhận tự động từ hệ thống. Trong email
        cũng có link để bạn download bản pdf.
    </p>
    <p>
        Cần phải lập tờ khai trước khi chuẩn bị các giấy khác vì những trang cuối của tờ khai chính là danh sách các
        giấy tờ cần nộp. Căn cứ vào danh sách đó, hãy tự thu thập thông tin cá nhân và người đồng hành, đồng thời
        cũng chuẩn bị mọi tư liệu cần thiết cho chuyến đi như muốn đến những nước nào, địa điểm cụ thể nào, phương
        tiện gì, ăn nghỉ ra sao, giá vé tham quan... Theo thông báo từ Công ty TLS (đầu mối chính thức nhận và trả
        kết quả hồ sơ Schengen vào Pháp), bạn có 20 ngày để chuẩn bị hồ sơ, kể từ khi nộp tờ khai online cho đến ngày
        đặt lịch hẹn. Bước 2: Chuẩn bị hồ sơ.
    </p>
    <p>
        Đây là bước quan trọng nhất vì hồ sơ tốt thì khả năng đậu visa cao. Một hồ sơ cơ bản của người lớn (18 tuổi
        trở lên) đi du lịch tự túc tới Pháp gồm:
    </p>
    <p>
        - Tờ khai visa: sau khi nộp online ở bước 1, chỉ cần in file pdf có mã vạch, tự dán ảnh thẻ vào trang đầu và
        ký tên, không cần dấu. Bạn cần in đầy đủ tất cả các trang
    </p>
    <p>
        - Hộ chiếu bản gốc, được cấp chưa quá 10 năm, bao gồm ít nhất 2 trang trắng, còn hạn ít nhất 3 tháng sau ngày
        dự kiến rời khỏi Schengen. Bạn nộp bản gốc hộ chiếu kèm một bản photo không cần công chứng. Hộ chiếu của bạn
        càng nhiều chuyến đi, càng nhiều visa từng được cấp, cơ hội đậu visa càng cao, nhưng không có nghĩa hộ chiếu
        trắng sẽ không đậu visa.
    </p>
    <p>
        - Ảnh thẻ: hai ảnh cỡ 3,5 cm x 4,5 cm, nền trắng, chụp từ phía trước, không có vật cản diện tích khuôn mặt
        chiếm tối thiểu 70% diện tích ảnh, tóc không được che trán, lông mày, tai, không được đeo hoa tai, kính, tốt
        nhất là chụp từ vai trở lên và không được lẹm phần tóc hoặc khuôn mặt. Ảnh cần chụp trong vòng 6 tháng.
    </p>
    <p>
        - Lịch trình: bạn có thể tự xây dựng lịch trình, trong đó Pháp phải là điểm đến chính. Theo kinh nghiệm của
        tôi, lịch trình càng chi tiết càng tốt. Tôi mất 3 tiếng để xây dựng lịch trình, bao gồm tất cả các thông tin
        cần thiết: bay sang Pháp và trở về bằng chuyến nào, mấy giờ, ngày nào, ở đâu tại Pháp, điện thoại của khách
        sạn, đi du lịch chỗ nào, website, giá vé, giờ mở cửa cụ thể của từng địa điểm, cách di chuyển tới các địa
        điểm đó (tàu, xe buýt, taxi...). Theo tôi, đây là một trong những tài liệu quan trọng nhất trong hồ sơ, đáng
        để đầu tư thời gian, sức lực. Xây dựng xong lịch trình, bạn chỉ cần in ra, không cần bất kỳ chữ ký hoặc dấu.
    </p>
    <p>
        - Vé máy bay khứ hồi: bạn chỉ cần đặt chỗ, chưa cần thanh toán, in vé và kẹp vào hồ sơ. Lưu ý, vé máy bay
        nhất thiết phải là khứ hồi, để đảm bảo bạn đi rồi sẽ quay về Việt Nam. Vé cần trùng khớp với lịch trình.
    </p>
    <p>
        - Giấy tờ chứng minh công việc: bản gốc hoặc bản sao công chứng hợp đồng lao động, chứng giấy chứng nhận việc
        làm, chứng nhận nghỉ phép có chữ ký của người sử dụng lao động, chứng nhận hưu trí, công chứng hộ khẩu, giấy
        đăng ký kết hôn (người đã kết hôn), chứng minh thư hoặc căn cước công dân.
    </p>
    <p>
        - Giấy tờ chứng minh tài chính: Sao kê tài khoản ngân hàng, bảng lương 3 tháng gần nhất, giấy chứng nhận nộp 
        thuế (nếu là chủ doanh nghiệp), nguồn thu nhập đều đặn... Mục đích của các giấy tờ này là chứng minh bạn có 
        đủ khả năng tự chi trả cho chuyến đi, không nhất thiết phải chứng minh lương cao hoặc nhiều tài sản. Tôi 
        không được trả lương qua tài khoản ngân hàng, do đó sao kê tài khoản ngân hàng không thể hiện các nguồn thu 
        nhập cố định, nhưng tôi có sổ tiết kiệm, nên hồ sơ vẫn đầy đủ về mặt tài chính. Ngược lại một số người không 
        có sổ tiết kiệm nhưng thu nhập tốt thể hiện trên sao kê vẫn đậu visa.
    </p>
</div>', 26, 't', 16, 4, '2022-12-31', 'https://i1-dulich.vnecdn.net/2022/12/28/P1588795-JPG-2390-1672195528.jpg? ');
INSERT INTO "public"."articles" OVERRIDING SYSTEM VALUE VALUES (101, 'Cà Mau quảng bá cua biển', 29, 'Cà Mau tổ chức Ngày hội cua Cà Mau để quảng bá hình ảnh, thương hiệu cua biển và nhiều loại đặc sản địa phương.', '<div class="flex flex-col gap-y-2">
    <p>
        Cà Mau tổ chức Ngày hội cua Cà Mau để quảng bá hình ảnh, thương hiệu cua biển và nhiều loại đặc sản địa phương.
    </p>
    <p>
        Sự kiện khai mạc ngày hội với chủ đề "Cua Cà Mau - điểm hẹn văn hóa ẩm thực" vừa diễn ra tại TP Cà Mau, với
        sự tham dự của khoảng 500 đại biểu và đông đảo người dân trong tỉnh. Ban tổ chức cho biết đây là năm đầu tiên
        ngày hội quy mô cấp tỉnh được tổ chức với nhiều hoạt động thú vị. Theo đó, hàng loạt sự kiện được tổ chức,
        kéo dài đến 31/12, trong đó có hội chợ thương mại tổng hợp, trưng bày sản phẩm OCOP; hội thao và trò chơi dân
        gian; lễ hội đường phố...
    </p>
    <p>
        Điểm nhấn của ngày hội là các hoạt động đua tốc độ cua, trình diễn trói cua, thời gian thi đấu từ ngày 24 -
        26/12; cuộc thi ẩm thực vua đầu bếp cua, xác lập kỷ lục 69 món ăn chế biến từ cua Cà Mau, cuộc thi cua Cà Mau
        lớn nhất và kết hợp nhận bằng kỷ lục châu Á "Lẩu mắm U Minh". Ngoài ra, nhiều diễn đàn, hội thảo trao đổi,
        thảo luận các vấn đề như "Giải pháp kéo dài thời gian lưu lại của khách du lịch Cà Mau"; "Đổi mới sáng tạo và
        phát triển tài sản trí tuệ địa phương"; "Giải pháp phát triển bền vững nghề cua Cà Mau"... sẽ diễn ra dịp này.
    </p>
    <img class="w-full h-full mt-2 rounded-lg" src="https://i1-dulich.vnecdn.net/2022/12/26/26-12-202219-6779-1672045866.png?w=1020&h=0&q=100&dpr=1&fit=crop&s=Np5EdTzGhEraAg0orf4yvg" alt="">
    <p>
        Đại diện lãnh đạo tỉnh chia sẻ ngày hội là dịp để tỉnh quảng bá hình ảnh, thương hiệu cua Cà Mau và các loại
        đặc sản của địa phương. Đây còn là cơ hội để du khách trong và ngoài nước thưởng ngoạn thiên nhiên, trải
        nghiệm hương vị đặc sắc của Cà Mau; các doanh nghiệp, nhà đầu tư tìm kiếm cơ hội hợp tác kinh doanh dịch vụ
        du lịch, ẩm thực với tỉnh này. Cà Mau là một trong những điểm đến được thiên nhiên ban tặng nhiều món quà vô
        giá, đó là cảnh quan rừng, biển trù phú, hài hòa với vô số đặc sản làm say lòng du khách. Trong đó, phải kể
        đến loài thủy sản đã vinh dự được lọt top 100 món ăn đặc sản Việt Nam, đó là cua biển Cà Mau.
    </p>
    <p>
        Hiện, với diện tích nuôi xen canh trên 250.000 ha, Cà Mau là một trong những địa phương có sản lượng cua 
        nhiều nhất cả nước. Tổng giá trị sản lượng cua bình quân mỗi năm trên 10.000 tỷ đồng. Do đó, cua được xác 
        định là ngành hàng chủ lực của tỉnh, chỉ đứng sau con tôm.
    </p>
</div>', 24, 'f', 16, 4, '2022-12-26', 'https://i1-dulich.vnecdn.net/2022/12/26/26-12-202219-6779-1672045866.png?w=1020&h=0&q=100&dpr=1&fit=crop&s=Np5EdTzGhEraAg0orf4yvg');
INSERT INTO "public"."articles" OVERRIDING SYSTEM VALUE VALUES (108, 'Ý nghĩa việc trang trí hang đá dịp Giáng sinh', 65, 'Trang trí hang đá Giáng sinh là cách diễn tả lại câu chuyện Chúa xuống thế làm người trong Kinh Thánh, mang ý nghĩa về sự hòa đồng của con Thiên Chúa với nhân loại.', '<div class="flex flex-col gap-y-2">
    <p>
        Trang trí hang đá Giáng sinh là cách diễn tả lại câu chuyện Chúa xuống thế làm người trong Kinh Thánh, mang ý
        nghĩa về sự hòa đồng của con Thiên Chúa với nhân loại.
    </p>
    <p>
        Hang đá Bethlehem là trung tâm trang trí Giáng sinh của đạo Công giáo toàn cầu. Các nhà thờ đều làm hang đá
        Bethlehem, kể câu chuyện Chúa Jesus sinh ra. Nhiều người dân cũng được linh mục kêu gọi làm hang đá tại gia
        đình để tạo không khí Giáng sinh. Linh mục Giuse Nguyễn Văn Định, Dòng Thánh Tâm Huế, cho biết truyền thống
        trang trí hang đá Giáng sinh bắt nguồn từ thánh Francis thành Assisi. Sau khi đến viếng đất Thánh, trong đó
        có làng Bethlehem, ngài đã làm một mô hình máng cỏ đặt trong phòng để chiêm ngắm và suy niệm về làm người,
        đặc biệt là sự nghèo khó của con Thiên Chúa.
    </p>
    <p>
        Ở các nước Công giáo châu Âu, việc trang trí Giáng sinh là mô hình hang đá đơn giản, thậm chí trong cung
        thánh chỉ làm một máng cỏ và đặt tượng Chúa Jesus hài đồng. Còn ở Việt Nam, hang đá được trang trí đẹp mắt
        hơn để người trong và ngoài Công giáo đến tham quan, mục đích cũng là diễn tả lại câu chuyện Chúa xuống thế
        làm người như trong Kinh Thánh.
    </p>
    <img class="w-full h-full mt-2 rounded-lg" src="https://i1-dulich.vnecdn.net/2022/12/23/55A8798-JPG-5401-1671799517.jpg?w=1020&h=0&q=100&dpr=1&fit=crop&s=u3KvXmqMi198GKQsFLjxvA" alt="">
    <p>
        Còn theo linh mục Augustino Trần Như Huynh, dòng Thánh Augustino Chân Đất, trong Kinh Thánh, Chúa Jesus sinh
        ra không phải trong những ngôi nhà lộng lẫy mà hang đá lạnh lẽo giữa đêm đông. Ở Israel khi đó, những người
        mục đồng dùng hang đá làm nơi cho bò, lừa ngủ, trong hang có máng của bò ăn.
    </p>
    <p>
        "Hình ảnh Chúa Jesus hạ sinh ở nơi máng cỏ mang ý nghĩa về sự hòa đồng của con Thiên Chúa với toàn nhân loại,
        không trừ một ai. Bởi nếu Chúa sinh ra ở một cung điện thì người ngoài sẽ không thể viếng thăm, còn ở nơi
        hang đá nghèo nàn thì mọi người đều có thể tới, từ những người nhỏ bé bị loại ra khỏi xã hội, như những người
        chăn chiên thời đó không được coi trọng nhưng chính họ là người tìm được Chúa đầu tiên", Linh mục Trần Như
        Huynh nói.
    </p>
    <p>
        Vì thế tượng Chúa Jesus hài đồng, hai bên máng cỏ là bò, lừa, Đức Mẹ Maria và Thánh Joseph là trang trí chính
        trong hang đá của Giáo hội Công giáo. Khi Công giáo vào châu Âu, việc trang trí Giáng sinh có thêm cây thông
        Noel, ông già Noel và bầy tuần lộc... Còn tại châu Á, ban đầu không có cây thông hay ông già Noel, nhưng văn
        hoá giao thoa, người dân đã trang trí thêm những mô hình này. Linh mục Giuse Trần Như Huynh nói thêm ngày nay
        việc trang trí Giáng sinh đã trở thành xu hướng thị trường. Như trong siêu thị, từ tháng 9 đã trang trí Giáng
        sinh để thúc đẩy kinh tế chứ không đơn thuần là trang trí của tôn giáo (các nhà thờ Công giáo thường trang
        trí từ đầu tháng 12).
    </p>
    <p>
        "Trước đây các tôn giáo khác không quan tâm Noel nhưng dần dần xu hướng hội nhập thì mọi người đều vui chung
        ngày này. Đối với người Công giáo, niềm vui này thể hiện sâu xa hơn, đó là không chỉ trang trí bên ngoài mà
        cốt yếu là niềm tin Thiên Chúa sinh ra để ban đến sự bình an, hạnh phúc", linh mục Trần Như Huynh nói thêm.
    </p>
    <p>
        Theo Đức Tổng Giám mục Giuse Nguyễn Chí Linh, Tổng giáo phận Huế, thông điệp sâu xa và mạnh mẽ nhất của Lễ
        Giáng sinh là bình an. Nơi Chúa sinh ra là hang đá Bethlehem, giản dị, nghèo khó nhưng an yên đích thực. Với
        nhiều người, bình an là có tiền bạc, điều kiện vật chất vừa ý, không gặp tai nạn, sự cố. Còn với giáo lý Công
        giáo, đó là bình an nội tâm, con người không vướng lỗi tội, trong sạch, thánh thiện và không có ý đồ làm cho
        cuộc sống phức tạp. Bình an nội tâm mới là đích thực, giúp con người có thể hạnh phúc.
    </p>
</div>', 26, 'f', 18, 4, '2022-12-24', 'https://i1-dulich.vnecdn.net/2022/12/23/55A8798-JPG-5401-1671799517.jpg?w=1020&h=0&q=100&dpr=1&fit=crop&s=u3KvXmqMi198GKQsFLjxvA');
INSERT INTO "public"."articles" OVERRIDING SYSTEM VALUE VALUES (105, 'Săn tuyết đầu mùa Sa Pa', 47, 'Sáng 28/12, nghe tin đỉnh Fansipan có mưa tuyết, nhiều khách du lịch bất chấp nhiệt độ dưới 0 đã lập tức lên đường "săn tuyết".', '<div class="flex flex-col gap-y-2">
    <p>
        Sáng 28/12, nghe tin đỉnh Fansipan có mưa tuyết, nhiều khách du lịch bất chấp nhiệt độ dưới 0 đã lập tức lên
        đường "săn tuyết".
    </p>
    <p>
        Khoảng 9h sáng, hơn 100 du khách đã lên đỉnh Fansipan, ngay sau khi cáp treo mở cửa, để đón đợt tuyết đầu
        mùa. Phần lớn trong số này ngoài 20 tuổi. Dưới cái lạnh âm 1 độ C, một số bạn nữ diện váy hoặc khoác áo nhiều
        màu sắc để chụp ảnh. Nhiều người nặn hình tuyết, cho dù bị cóng tay.
    </p>
    <p>
        Võ Lan Hương, 20 tuổi, ở Hải Phòng, cho biết năm nay quyết tâm xem dự báo thời tiết sớm do mấy năm liền đã lỡ
        cơ hội ngắm tuyết Fansipan. Hương đến Sa Pa từ tối qua và sáng nay biết tin đã ngay lập tức mua vé cáp treo
        lên đỉnh. "Tuyết rơi rất đẹp, cảnh hùng vĩ", cô nói.
    </p>
    <img class="w-full h-full mt-2 rounded-lg"
         src="https://i1-dulich.vnecdn.net/2022/12/28/321743824-703487654633603-3133-7904-9994-1672203241.jpg?w=1020&h=0&q=100&dpr=1&fit=crop&s=K8cl_XX80iAmNoSpQ7bbKQa" alt="">
    <p>
        Hương biết mưa tuyết sẽ lạnh, nhưng vẫn chuẩn bị váy ngắn để mặc vì "muốn có những bức ảnh thật xinh đẹp".
        "Tôi chấp nhận chịu lạnh và thấy tuyết là quên cả lạnh", cô nói thêm. Thảo Nguyễn, 25 tuổi, ở Hà Nội, "không
        ngờ được đón tuyết" khi lên Sa Pa để tránh dịp Tết Dương lịch đông đúc. Nữ blogger du lịch cho biết đã reo hò
        và nhảy lên khi nhìn thấy tuyết đầu mùa.
    </p>
    <p>
        "Trời rất lạnh, lúc ngồi cáp treo tôi run lẩy bẩy. Nhưng khi đến nơi, mải nghịch tuyết, tôi quên ngay cái
        lạnh", cô nói.
    </p>
    <p>
        Tuy nhiên, Trọng Đạt, 40 tuổi, một trong những du khách có mặt trên đỉnh Fansipan sớm nhất hôm nay, cho biết
        lên Fansipan để ngắm và xem liệu tuyết ở Việt Nam "có khác tuyết nước ngoài", chứ "không phải để chụp ảnh
        sống ảo". Anh chủ động mặc ấm, với giày thể thao, mũ len và áo phao chắn gió.
    </p>
    <p>
        "Nóc nhà Đông Dương" Fansipan, cao 3.143 m, nằm trong Vườn quốc gia Hoàng Liên, cách trung tâm thị trấn Sa Pa
        khoảng 10 km. Vào mùa đông, mỗi khi nhiệt độ xuống thấp, Fansipan thường là nơi có tuyết rơi đầu tiên ở Việt
        Nam.
    </p>
    <p>
        Vào khoảng 5h sáng nay, đợt mưa tuyết đầu tiên trong năm xuất hiện ở khu vực đỉnh Fansipan. Lớp tuyết dày
        khoảng 2 cm phủ trắng khu vực biểu tượng đỉnh núi và các mái chùa Việt cổ. Nhiệt độ thấp nhất có lúc xuống -5
        độ.
    </p>
    <p>
        Ông Lưu Minh Hải, nguyên Giám đốc Đài khí tượng thủy văn tỉnh Lào Cai, chia sẻ trên VnExpress, mưa tuyết dịp 
        này là do đợt không khí lạnh đang tràn xuống miền Bắc, kết hợp với hội tụ gió trên cao 1.500 m. Dự kiến hiện 
        tượng mưa tuyết có thể lặp lại trong 3 ngày tới.
    </p>
</div>', 25, 'f', 28, 4, '2022-12-30', 'https://i1-dulich.vnecdn.net/2022/12/28/321743824-703487654633603-3133-7904-9994-1672203241.jpg?w=1020&h=0&q=100&dpr=1&fit=crop&s=K8cl_XX80iAmNoSpQ7bbKQ');
INSERT INTO "public"."articles" OVERRIDING SYSTEM VALUE VALUES (115, 'Mục tiêu World Cup', 0, 'Tiếng ồn ào của World Cup đã lắng. Giờ thì người Việt Nam đành lặng lẽ xem AFF Cup và nuôi hy vọng đội tuyển Việt Nam sẽ lọt vào vòng chung kết World Cup 2030.', '<div class="flex flex-col gap-y-2">
    <p>
        Tiếng ồn ào của World Cup đã lắng. Giờ thì người Việt Nam đành lặng lẽ xem AFF Cup và nuôi hy vọng đội tuyển
        Việt Nam sẽ lọt vào vòng chung kết World Cup 2030.
    </p>
    <p>
        Tại Đại hội khóa 9 hồi tháng 11, Liên đoàn Bóng đá Việt Nam (VFF) đặt ra các mục tiêu cụ thể cho đội tuyển
        nam: vào top 10 tại khu vực châu Á, vào tứ kết Asian Cup 2023, dự vòng loại thứ ba khu vực châu Á World Cup
        2026 và vào vòng chung kết World Cup 2030
    </p>
    <p>
        Tôi vẫn chưa hiểu tại sao VFF lại ham mê mục tiêu vào được World Cup như vậy? Đó tất nhiên là đích đến quan
        trọng. Nhưng nếu tôi là chủ tịch VFF, tôi sẽ đặt mục tiêu đơn giản hơn: tăng số lượng cầu thủ đá bóng. Ít
        nhất là để giới "cò" cầu thủ có thị trường lớn hơn, đỡ phải tranh nhau Quang Hải.
    </p>
    <img class="w-full h-full mt-2 rounded-lg" src="https://static-images.vnncdn.net/files/publish/2022/10/28/world-cup-2022-47.jpg" alt="">
    <p>
        Hãy xem, hiện tại VFF đang tổ chức thi đấu như thế nào? Trên tầng cao nhất, V-League có 13 đội. Tầng dưới,
        hạng Nhất có 12 đội. Tầng dưới nữa, 14 đội tranh giải hạng Nhì. Hạng Ba thấp nhất có 16 đội. Khác với cách tổ
        chức giải đấu kiểu hình tháp của nhiều nước, giải của ta thuôn thuôn hình trụ.
    </p>
    <p>
        Cứ cho mỗi đội có 20 cầu thủ, thì Việt Nam sẽ chỉ có khoảng 1.100 cầu thủ hàng năm được thi đấu dưới sự giám
        sát của VFF. Trong số 100 triệu dân. Quá ít về số lượng, để tạo cái nền đủ rộng nhằm tuyển lựa một đội tuyển
        đủ mạnh.
    </p>
    <p>
        Anh em yêu bóng đá bàn luận mãi. Kẻ thì bảo học theo ngoại hạng Anh. Người thì nói nên học Đức. Đa phần nói
        ta nên học Nhật, Hàn. Thậm chí có đứa "gở miệng" còn bỉ bôi: theo được Thái còn khó.
    </p>
    <p>
        Nếu phải lấy một nền bóng đá khác làm hình mẫu, tôi sẽ lấy Mexico. Đội tuyển nước này vào World Cup thường
        xuyên. Có thể ít người để ý đến Mexico vì họ không "bất ngờ gây sốc" như Nhật, Hàn. Thắng mấy đội "lìu tìu"
        như Bỉ, Hà Lan, Bồ Đào Nha, Đức, Brazil, Morocco... là chuyện thường ngày ở huyện của họa
    </p>
    <p>
        Mexico, có dân số 130 triệu người. Giải chính thức của họ có bốn cấp với số đội lần lượt là: 18, 18, 44, 225.
        Tuy nhiên, Liên đoàn Bóng đá Mexico (MFF) chịu trách nhiệm hỗ trợ vô số đội bóng khác tuy không chính thức
        nhưng thi đấu quanh năm. Nên tổng cộng họ có khoảng 324.000 cầu thủ được đăng ký và ước tính 8.155.000 cầu
        thủ thi đấu thường xuyên không đăng ký.
    </p>
</div>', 28, 'f', 16, 2, '2023-01-04', 'https://static-images.vnncdn.net/files/publish/2022/10/28/world-cup-2022-47.jpg');
INSERT INTO "public"."articles" OVERRIDING SYSTEM VALUE VALUES (19, 'Lý Tử Thất chấm dứt kiện tụng', 41, '"Tiên nữ Tứ Xuyên" Lý Tử Thất đàm phán với công ty Weinian, ngừng tranh chấp về cổ phần, thương hiệu.', '<div class="flex flex-col gap-y-2">
    <p>
        "Tiên nữ Tứ Xuyên" Lý Tử Thất đàm phán với công ty Weinian, ngừng tranh chấp về cổ phần, thương hiệu.
    </p>
    <p>
        Theo Huanqiu ngày 28/12, phía công ty Weinian công bố họ và Lý Tử Thất hòa giải tại Tòa án ở thành phố Miên
        Dương, tỉnh Tứ Xuyên, Trung Quốc. Theo đó, Lưu Đồng Minh - người sáng lập Weinian - rút khỏi vị trí quản lý ở
        công ty Quảng bá văn hóa Tử Thất (Tứ Xuyên). Lý Giai Giai (tên thật của Lý Tử Thất) nắm 99% cổ phần ở công ty
        này (thay vì 49% như trước đây) đồng thời là người nắm quyền thực tế ở công ty (thay vì Lưu Đồng Minh như
        trước đây). Theo ông Ứng Vượng - Phó hội trưởng liên minh Video ngắn Trung Quốc - việc hai bên hòa giải là
        kết quả tốt đẹp, có lợi cho việc bảo vệ, phát triển thương hiệu Lý Tử Thất trong lĩnh vực sáng tạo nội dung.
    </p>
    <p>
        Hiện, nhiều khán giả thắc mắc thời gian Lý Tử Thất trở lại hoạt động trên mạng xã hội song cô chưa phản hồi
        sự việc. Gần hai năm qua, người đẹp ngừng cập nhật video vì các tranh chấp về thương hiệu. Tử Thất kiện
        Weinian vi phạm hợp đồng trong khi phía Weinian tố cáo cô vi phạm nghĩa vụ cổ đông.
    </p>
    <img class="w-full h-full mt-2 rounded-lg" src="https://i1-giaitri.vnecdn.net/2022/12/28/tu-that-8659-1672190049.jpg?w=1020&h=0&q=100&dpr=1&fit=crop&s=MH6oIdy-YgWTgE_CJKkreg" alt="">
    <p>
        Ông chủ của Weinian - Lưu Đồng Minh - phát hiện Lý Tử Thất năm 2016, đề nghị hợp tác. Những năm qua, Tử Thất
        tự lên kịch bản, ý tưởng và đóng chính trong video của mình, công ty Weinian chịu trách nhiệm quảng bá video.
        Sau khi Tử Thất nổi tiếng, hai bên hợp tác tung các sản phẩm nông sản. Tuy vậy, Lý Tử Thất không hài lòng với
        cách công ty Weinian kinh doanh thương hiệu mà cô nghĩ ra. Trên CCTV cuối năm ngoái, người đẹp cho biết những
        năm qua cô "cắm đầu cắm mũi" làm nội dung, không quá bận tâm người khác làm gì với thương hiệu. Cô nói: "Tôi
        muốn bảo vệ ba chữ Lý Tử Thất. Tôi không cần nó có giá trị thương mại cao như thế nào, bởi giá trị thương mại
        thực sự là con dao hai lưỡi. Tôi chỉ muốn bảo vệ cái tên này".
    </p>
    <p>
        Trong gần hai năm vướng kiện tụng, Lý Tử Thất mất hàng triệu fan trên mạng xã hội. Một số chuyên gia nhận
        định "nền tảng video ngắn không đợi được Lý Tử Thất". Giai đoạn cô vắng bóng, hàng loạt người nổi lên nhờ
        đăng sản phẩm về cuộc sống nông thôn. Những người này thu hút hàng chục triệu fan song trang Sohu nhận định,
        về chất lượng nội dung, khả năng sáng tạo, hình ảnh video, Lý Tử Thất tạm thời "chưa có đối thủ xứng tầm". Vì
        vậy, cô vẫn được đông đảo khán giả chờ đợi tái xuất.
    </p>
    <p>
        Tử Thất xuất thân nghèo khó, từng lang thang hè phố, ngủ gầm cầu. Từ năm 2016, cô đăng video trên Weibo, thu
        hút fan nhờ khung cảnh bốn mùa nên thơ, cách nấu nướng tỉ mỉ... Các tác phẩm của cô mang âm hưởng trong trẻo
        với tiếng chim hót, nước chảy cùng khung cảnh bốn mùa ở làng quê. Tử Thất còn quảng bá văn hóa - ẩm thực
        truyền thống, khích lệ lối sống gần gũi thiên nhiên, hạn chế sử dụng đồ nhựa. Theo Xinhua, video của cô
        thường được giáo viên sử dụng trong các bài giảng về nông nghiệp, quá trình sinh trưởng của thực vật.
    </p>
</div>', 11, 't', 15, 4, '2022-12-30', 'https://i1-giaitri.vnecdn.net/2022/12/28/tu-that-8659-1672190049.jpg?w=1020&h=0&q=100&dpr=1&fit=crop&s=MH6oIdy-YgWTgE_CJKkreg');
INSERT INTO "public"."articles" OVERRIDING SYSTEM VALUE VALUES (118, 'Quà Tết biếu sếp', 0, 'Giữa con phố tôi đang ở có hàng rượu ngoại nổi tiếng, mỗi năm chỉ đông khách một đợt vào dịp Tết.', '<div class="flex flex-col gap-y-2">
    <p>
        Giữa con phố tôi đang ở có hàng rượu ngoại nổi tiếng, mỗi năm chỉ đông khách một đợt vào dịp Tết.
    </p>
    <p>
        Giá cả ở đây không rẻ hơn chỗ khác nhưng vẫn được nhiều người tìm đến vì có tiếng là bán "hàng thật". Người
        mua chủ yếu để đi biếu Tết, nếu mua phải rượu giả thì hỏng việc.
    </p>
    <p>
        Vào dịp Tết tôi cũng từng đến đây mua quà biếu. Tôi dẫn theo con gái. Con bé rất háo hức được đi sắm Tết.
        Người đông như nêm cối, hàng hóa lấp lánh toàn ngoại nhập. Mướt mồ hôi lựa chọn, hai bố con tôi rồi cũng xách
        ra một giỏ hàng gồm rượu và chocolate ngoại. Trả tiền xong cũng hết một phần lớn khoản thưởng Tết.
    </p>
    <img class="w-full h-full mt-2 rounded-lg" src="https://roots.vn/wp-content/uploads/2022/10/gio-qua-tet-tu-1-trieu-co-gi-hot-ma-chay-hang-den-vay-1-2.jpg" alt="">
    <p>
        Về nhà, tôi chia thành mấy túi quà, mỗi túi gồm một chai rượu và hộp bánh. Các túi quà chia xong được xếp vào
        góc nhà để lần lượt mang đi biếu. Khác với vẻ hăm hở lúc theo bố mua sắm, cô con gái thảng thốt hỏi: "Mang đi
        biếu hết hả bố?".
    </p>
    <p>
        Có quà rồi tôi lên lịch đi biếu. Ngại nhất là gặp mặt người cần biếu, nói mấy câu chúc tụng khuôn sáo, đưa
        túi quà còm cõi của mình ra, rồi về. Rời khỏi nhà nào tôi cũng thở ra một cái, nhẩm tính xem còn nhà nào phải
        đi. Chỉ đến khi túi quà cuối cùng được trao, tôi mới thở phào, trút được gánh nặng. Thế là xong hết nợ nần,
        bây giờ mới thực sự là lo Tết cho gia đình.
    </p>
    <p>
        Sự việc cứ như vậy diễn ra mỗi năm một lần, gây ám ảnh, làm tôi sợ Tết. Chẳng ai bắt tôi phải làm như vậy cả.
        Nhưng không đi Tết thì thấy thấp thỏm bất an. Như là mình đang mắc nợ, như là mình đang vi phạm luật chơi
        không thành văn của xã hội. Thủ trưởng cả năm quan tâm chiếu cố mình. Thế mà cuối năm không đến cảm ơn, liệu
        sang năm mới có dám nhìn mặt người ta nữa không. Người ta cần cái tình chứ ai cần quà của mình. Tiền của mình
        chỉ là hạt cát so với họ. Rồi sếp phó, tận mấy sếp, đi người này mà không đi người kia cũng dở
    </p>
    <p>
        Không phải chỉ tôi mới thấy khổ khi Tết đến. Thủ trưởng của tôi cũng thế. Từ ngày mùng 10 tháng cuối năm đã
        thấy thủ trưởng và cậu lái xe xách quà đi suốt. Đến tận ngày 20 mới thấy sếp có mặt dự giao ban cơ quan. Sếp
        thở hắt ra than: "Tết không sung sướng gì đâu. Đi ai, đi bao nhiêu, tính nát cả óc".
    </p>
    <p>
        Việc lễ tết mỗi cuối năm gây ám ảnh cho đời công chức của tôi; khoan nói đến thiệt hại tài chính, trước hết
        là những mất mát về tinh thần. Rõ ràng tôi không vui vẻ gì khi đi tết, những vẫn phải làm. Tôi thấy mình thật
        giả dối khi nói mấy câu chúc tụng. Tôi tự khinh mình khi hy vọng được chiếu cố chỉ vì mấy túi quà nhỏ nhoi.
        Tôi thấy có lỗi với vợ con, khi đáng lẽ những đồng tiền thưởng Tết kia là dành mua những món ngon cho gia
        đình vào dịp tất niên.
    </p>
    <p>
        Cho đến một năm bỗng tôi bừng tỉnh, tự hỏi, nếu năm nay mình không đi Tết ai cả thì có làm sao không nhỉ. Nói
        là làm. Năm đó tôi không quà biếu ai cả. Rồi tôi hồi hộp chờ xem có sự cố gì xảy ra với mình không. Không có
        gì xảy ra cả. Đời công chức vẫn cứ phẳng lặng trôi đi như năm trước. Chắc không ai nhận ra năm đó tôi không
        đi tết sếp. Có khi trong cả trăm người tíu tít mang quà đến, thiếu một thằng tôi, sếp cũng không nhớ ra.
    </p>
</div>', 28, 't', 27, 4, '2023-01-03', 'https://roots.vn/wp-content/uploads/2022/10/gio-qua-tet-tu-1-trieu-co-gi-hot-ma-chay-hang-den-vay-1-2.jpg');
INSERT INTO "public"."articles" OVERRIDING SYSTEM VALUE VALUES (120, 'Tiêm hết hay tiêu hủy?', 0, 'Năm 2021, Indonesia trở thành trung tâm của đại dịch Covid-19, vượt qua Brazil và Ấn Độ về số ca nhiễm mới và số ca tử vong.

', '<div class="flex flex-col gap-y-2">
    <p>
        Năm 2021, Indonesia trở thành trung tâm của đại dịch Covid-19, vượt qua Brazil và Ấn Độ về số ca nhiễm mới và
        số ca tử vong.
    </p>
    <p>
        Hệ thống y tế của Indonesia rơi vào khủng hoảng nghiêm trọng. Thời điểm đó, vaccine là thứ rất quý giá. Một
        số lao động người Việt ở Indonesia chia sẻ với tôi, họ chỉ biết ngồi nhà tự cách ly để bảo vệ bản thân, vì
        không thể tìm được nguồn vaccine tiêm phòng.
    </p>
    <p>
        Đến nay tình hình đã khác. Các kho lưu trữ căng thẳng khi chứa đầy vaccine sắp hết hạn. Cuối tháng 5, chính
        quyền Indonesia bắt đầu tiêu hủy hàng triệu liều vaccine, trong bối cảnh nước này đã phủ mũi một tới 96% dân
        số, mũi hai 80% và mũi ba khoảng 22%.
    </p>
    <img class="w-full h-full mt-2 rounded-lg" src="https://file1.dangcongsan.vn/data/0/images/2022/12/21/upload_26/tiem-cho-tre-em.jpg?dpi=150&quality=100&w=780" alt="">
    <p>
        Các quốc gia khác cũng tương tự. Để giải quyết tình trạng dư thừa vaccine dẫn đến quá hạn, trong năm 2022, Mỹ
        tài trợ thêm 500 triệu liều cho chương trình tiêm chủng quốc tế, gấp đôi con số kế hoạch. Khoảng 620.000 liều
        vaccine của Thụy Sĩ không tìm được quốc gia tài trợ, nên đã phải tiêu hủy khi hết hạn. Đan Mạch tiêu hủy 1,1
        triệu liều, Anh hủy 4,7 triệu liều. Liên Hợp Quốc cho biết các nước đang phát triển đã từ chối nhận 100 triệu
        liều vaccine tài trợ
    </p>
    <p>
        Trên toàn thế giới, tiêm phòng Covid-19 có những thời điểm phải thực hiện bắt buộc. Các chính phủ đưa ra quy
        định về hình phạt nếu công dân không chịu tiêm, ví dụ hạn chế quyền tự do đi lại, cấm tham gia sự kiện, thậm
        chí là phạt với số tiền lớn. Việc tiêm phòng bắt buộc được áp dụng với các dịch bệnh nghiêm trọng và dễ lây
        lan. Đây là vấn đề đạo đức y tế công cộng. Khi một đại dịch bùng phát, tỷ lệ tử vong cao, hệ thống y tế quá
        tải, thậm chí là khủng hoảng, thì những cá nhân không tiêm phòng sẽ dễ mắc bệnh, lây cho người khác, tạo gánh
        nặng rất lớn lên mạng lưới chăm sóc sức khỏe.
    </p>
    <p>
        Khi dịch căng thẳng nhất, các chính phủ còn phải đóng cửa toàn bộ xã hội. Rõ ràng đóng cửa kéo theo những chi
        phí xã hội khổng lồ. Trong khi tiêm chủng bắt buộc là biện pháp rẻ hơn rất nhiều, hiệu quả phòng bệnh cũng
        cao hơn, giảm được phần lớn số ca nhiễm, ngăn chặn các ca bệnh nặng và tử vong.
    </p>
    <p>
        Nhưng khi đại dịch đã được kiểm soát cơ bản, các hoạt động xã hội trở lại trạng thái gần như bình thường, số
        ca nhập viện thấp và tỷ lệ tử vong ở mức cho phép, thì việc áp các biện pháp phòng chống dịch bệnh ngặt nghèo
        là không cần thiết. Tiêm chủng bắt buộc với toàn dân cũng vậy.
    </p>
    <p>
        Covid-19 đang có xu hướng gần hơn với cúm mùa. Rõ ràng không một quốc gia nào trên thế giới đặt ra chỉ tiêu
        tiêm chủng cúm cho toàn dân. Nhưng vẫn có những nhóm đối tượng cần phải khuyến khích tiêm phòng cúm. Theo
        quan sát của tôi, những người có nguy cơ dễ mắc cúm và bị cúm nặng, họ đã chủ động tiếp cận vaccine và tiêm
        phòng.
    </p>
    <p>
        Tính đến 23/6, Việt Nam đã tiêm tổng cộng hơn 228,4 triệu liều vaccine Covid-19, với tỷ lệ bao phủ liều cơ
        bản ở người từ 12 tuổi trở lên đạt gần 100%; tỷ lệ tiêm mũi 3, 4 cho người 18 tuổi trở lên đạt 63,9% và 6,1%
    </p>
    <p>
        Trong bối cảnh Việt Nam gần như đạt miễn dịch cộng đồng, số ca nhiễm tăng không đáng kể và tỷ lệ tử vong
        thấp, tiến độ tiêm chủng chậm lại gây tồn vaccine tại tuyến trung ương và tuyến tỉnh. Trước nguy cơ dư thừa,
        phải tiêu hủy vaccine, đại diện Bộ Y tế yêu cầu 20 tỉnh miền Nam tiêm hết vaccine đã phân bổ trước 30/6. TP
        HCM và Bình Phước cũng yêu cầu người dân không đồng ý tiêm chủng thì phải ký giấy cam kết chịu trách nhiệm
        nếu để lây lan dịch bệnh.
    </p>
    <p>
        Tiêm chủng phòng Covid là rất quan trọng, hiện tại cũng vậy. Nhưng không nên áp quy định bắt buộc tiêm phòng 
        với mọi người dân, thay vào đó phân ra các nhóm "ưu tiên", khuyến khích vận động từng nhóm tự nguyện tiêm 
        chủng để bảo vệ bản thân và cộng đồng.
    </p>
</div>', 31, 't', 15, 4, '2023-01-05', 'https://file1.dangcongsan.vn/data/0/images/2022/12/21/upload_26/tiem-cho-tre-em.jpg?dpi=150&quality=100&w=780');
INSERT INTO "public"."articles" OVERRIDING SYSTEM VALUE VALUES (116, 'Niềm vui bé bỏng', 23, 'Noel của 14 năm trước, tối muộn trở về nhà, tôi nghĩ nhiều đến cuộc sống của mình khi leo lên căn gác lạnh và ẩm.', '<div class="flex flex-col gap-y-2">
    <p>
        Noel của 14 năm trước, tối muộn trở về nhà, tôi nghĩ nhiều đến cuộc sống của mình khi leo lên căn gác lạnh và
        ẩm.
    </p>
    <p>
        Mở cửa bước vào, tôi thấy con trai hai tuổi với nụ cười thơ ngây, đang ngồi xé những mẩu giấy bìa cứng, một
        trò chơi đã trở thành thói quen trong lúc đợi bố về.
    </p>
    <p>
        Suốt từ đầu tháng, tôi đã phải vật lộn với rất nhiều khoản chi, từ hóa đơn điện nước cho đến tiền trả khoản
        nợ mua nhà. Cuốn sổ ghi lại chi tiêu ngày ấy - cân nhắc từng mớ rau, con cá, con cua - tôi còn giữ đến giờ.
        Thu nhập bác sĩ của tôi khi đó rất eo hẹp. Để chuẩn bị quà cho con, tôi mua một ông già Noel nhồi bông từ
        giữa tháng 11 cho rẻ, cất kỹ trong cốp xe, như dành dụm một niềm vui bé bỏng, cho đến tận Giáng sinh.
    </p>
    <img class="w-full h-full mt-2 rounded-lg" src="http://cdn.tgdd.vn/Files/2020/10/10/1297792/noel-2020-ngay-nao-thu-may-nguon-goc-va-y-nghia-cua-ngay-le-noel-le-giang-sinh-202010102030173176.jpg" alt="">
    <p>
        Tôi nhớ mãi khoảnh khắc món quà được lấy ra khỏi balô, con trai tôi mắt sáng lên, ôm chặt ông già Noel nhồi
        bông vào lòng, sau đó ôm lấy cổ tôi và hôn lên đó.
    </p>
    <p>
        Mùa đông năm ấy rất đặc biệt, có tuyết rơi ở đỉnh Mẫu Sơn. Hà Nội xuống dưới 5°C, rét kéo dài qua Noel cho
        đến Tết Âm lịch, tổng số 42 ngày rét đậm rét hại liên tục. Khách du lịch tới Mẫu Sơn đông hơn thường lệ. Tôi
        cùng mấy đồng nghiệp ở bệnh viện kêu gọi quyên góp chăn và áo ấm cho bệnh nhân nghèo. Thời điểm đó bắt đầu có
        tác động của khủng hoảng kinh tế toàn cầu, nhiều người mất việc, giá cả leo thang vì lạm phát. Tôi muốn đưa
        con đi ngắm tuyết, nhưng cuộc sống khó khăn không cho phép.
    </p>
    <p>
        Đêm Noel, cả gia đình tôi dạo phố, cảm thấy thú vị khi được ở ngoài trời, nhìn ngắm con trai nhảy nhót vui
        sướng. Giây phút đó tôi đã nhận ra, cuộc sống, kể cả trong cái nghèo, đang có sẵn những món quà tinh thần: là
        sức khoẻ, sự yên ổn hòa bình, là thiện chí và lòng tốt, là tiếng cười, niềm vui; tất cả món quà đó đều gói
        gọn trong tình yêu thương.
    </p>
    <p>
        Từ lâu trong đời sống người Việt, Giáng sinh, Tết Dương lịch và Âm lịch đã trở thành ba dịp lễ hội ý nghĩa
        vào những ngày cuối năm. Giáng sinh và Tết Dương lịch - du nhập từ phương Tây vào Việt Nam - nhanh chóng trở
        thành ngày lễ thế tục, để mọi người có thêm niềm vui.
    </p>
    <p>
        Tôi từng chứng kiến người châu Âu chuẩn bị quà Giáng sinh và năm mới cho người thân và bạn bè. Họ tỉ mỉ, chu
        đáo lựa từng tấm thiệp, cân nhắc từng lời chúc, nắn nót từng nét chữ. Mỗi mùa Giáng sinh, Tết, tôi cũng nhận
        được hàng trăm tin nhắn qua điện thoại và mạng xã hội, nhưng rất ít người công phu soạn tin, phần lớn copy
        rồi gửi hàng loạt.
    </p>
    <p>
        Dịp này hàng năm, các bệnh viện thường tổ chức liên hoan tiệc tùng, để tạo sự đoàn kết gắn bó. Trưởng khoa
        của một bệnh viện lớn mới đây mời tôi tham dự liên hoan cùng khoa. Cô hỏi tôi nên tổ chức thế nào để vừa gắn
        kết, lại mang đến nhiều lợi ích nhất cho nhân viên. Tôi góp ý, không nên tiệc tùng xa xỉ, chỉ cần uống trà và
        trò chuyện tại khoa. Số tiền tiết kiệm được có thể dành làm quà Giáng sinh và năm mới cho những điều dưỡng và
        kĩ thuật viên vốn có thu nhập thấp. Ý kiến của tôi được các bác sĩ và nhân viên trong khoa ủng hộ. Những
        người nhận quà đã rất xúc động, không phải vì giá trị món quà, mà vì họ cảm nhận được sự trăn trở dành cho họ
        trong hành động tặng quà.
    </p>
</div>', 28, 'f', 28, 4, '2022-12-24', 'http://cdn.tgdd.vn/Files/2020/10/10/1297792/noel-2020-ngay-nao-thu-may-nguon-goc-va-y-nghia-cua-ngay-le-noel-le-giang-sinh-202010102030173176.jpg');
INSERT INTO "public"."articles" OVERRIDING SYSTEM VALUE VALUES (119, 'Ám ảnh đỉnh dịch', 38, 'Giữa tháng 8/2021, khi tình nguyện vào Nam chống dịch Covid-19, tôi không ngờ mình phải chứng kiến đỉnh dịch khốc liệt nhất, với những cảnh tượng chưa từng có cả trăm năm qua.', '<div class="flex flex-col gap-y-2">
    <p>
        Giữa tháng 8/2021, khi tình nguyện vào Nam chống dịch Covid-19, tôi không ngờ mình phải chứng kiến đỉnh dịch
        khốc liệt nhất, với những cảnh tượng chưa từng có cả trăm năm qua.
    </p>
    <p>
        Ngày đầu tiên đặt chân đến bệnh viện hồi sức cấp cứu, nơi đang cứu chữa những bệnh nhân Covid nặng nhất, đập
        vào tai tôi là tiếng còi báo động kêu dai dẳng dọc hành lang. Trong khu vực cấp cứu có rất nhiều loại máy,
        nếu máy có lỗi sẽ phát ra tiếng kêu báo hiệu. Thông thường, nhân viên y tế nghe thấy tiếng kêu sẽ tới xem
        ngay để xử lý sự cố. Lúc này, tiếng còi kêu dai dẳng, nhân viên y tế tất bật qua lại nhưng có vẻ không ai để ý.
    </p>
    <p>
        Tôi lại nghĩ tới hệ thống báo cháy, báo khói. Nhưng không phải, tiếng còi này lạ lắm. Tôi mới nghe lần đầu.
        Tôi liền túm lấy chị điều dưỡng trưởng khoa để hỏi. Chị mệt mỏi trả lời: "Còi báo oxy trung tâm thấp đấy bác
        ạ". Thì ra là thế. Trong thiết kế bệnh viện, người ta có lẽ không hình dung ra có lúc tất cả họng oxy ở các
        khoa đều mở tối đa, khiến áp lực oxy trung tâm tụt xuống thấp, hệ thống tự động rú còi đồng loạt.
    </p>
    <img class="w-full h-full mt-2 rounded-lg" src="https://www.fda.gov/files/COVID%20testing%20policy_1600x900_0.png" alt="">
    <p>
        Dù đã thâm niên hàng chục năm trong ngành y, tôi lần đầu tiên nhìn thấy một trong những khía cạnh của thảm
        họa y khoa.
    </p>
    <p>
        Trong các buồng bệnh, người bệnh đói oxy nằm thở hổn hển, tóc bết mồ hôi từng mảng, ánh mắt thất thần. Chưa
        bao giờ chúng tôi giáp mặt với căn bệnh kỳ lạ đến vậy. Cứ từ từ, phổi của người bệnh sưng phù lên, đông đặc
        lại, oxy không thấm qua được, bệnh nhân giống như chết đuối trên cạn. Bác sĩ chỉ còn cách cho người bệnh thở
        tăng lượng oxy lên gấp nhiều lần, hy vọng nồng độ oxy cao sẽ thấm vào qua phổi được. Chúng tôi lúc đó đã làm
        tất cả, tất cả kiến thức chúng tôi biết, tất cả thuốc men và phương tiện chúng tôi có.
    </p>
    <p>
        Tôi cũng chưa bao giờ chứng kiến nhiều cảnh đau thương liên tiếp xảy ra như vậy. Tôi bị ám ảnh suốt thời gian
        dài. Nhiều thanh niên to cao lực lưỡng, nhiều phụ nữ trung tuổi, người già, trẻ nhỏ... bị quật ngã.
    </p>
    <p>
        Một năm đã qua, đại dịch đã đến hồi kết thúc, như lời khẳng định của Tổng giám đốc Tổ chức Y tế Thế giới
        (WHO). Tuy nhiên, ký ức kinh hoàng của đại dịch vẫn khiến nhiều người lo sợ. Đây đó vẫn còn ý kiến lo ngại
        đại dịch quay lại. Nhưng tôi thấy nhận định của ông Tedros Adhanom Ghebreyesus là có cơ sở khoa học vững
        chắc. Một là xét trên nguyên lý tiến hóa của virus, thì trong một đại dịch, virus sẽ tiến hóa theo hướng độc
        lực ngày càng giảm dần, để cuối cùng thành một bệnh lưu hành thông thường. Thực tế, chủng Omicron phổ biến
        hiện nay dễ lây nhiễm hơn nhưng không gây bệnh nặng như chủng Delta trước đó, số người chuyển nặng và tử vong
        giảm rất nhiều so với trước. Cơ sở thứ hai là số người tiêm vaccine phòng Covid-19 ngày càng nhiều, tăng số
        người được bảo vệ, thu hẹp khả năng đột biến và lan truyền của virus. Cả hai điều trên sẽ gặp nhau ở một
        điểm, đó là kết thúc đại dịch trong một ngày không xa
    </p>
    <p>
        Đại dịch có thể đã nhìn thấy ngày kết thúc. Tôi nhìn lại và tự rút ra một số bài học. Tùy góc nhìn, mỗi người
        có thể có những bài học khác nhau. Còn với tôi, các bài học bao gồm:
    </p>
    <p>
        Một là tôn trọng ý kiến của giới chuyên môn. Trong giai đoạn đầu của dịch, số người mắc còn ít, chiến lược
        "zero virus" có vẻ hiệu quả. Bằng cách quyết liệt phát hiện, truy vết, khoanh vùng, cách ly... bước đầu tình
        hình cả nước khá yên ắng. Một số người đã sớm tự hào về thành tích chống dịch của Việt Nam. Trong khi nhiều
        nhà chuyên môn nhấn mạnh, biện pháp đó chỉ làm chậm sự lan truyền của bệnh, chứ không ngăn được bệnh. Làm
        chậm sự lan truyền của bệnh cũng rất quý giá, giúp Việt Nam có thời gian chờ vaccine. Chỉ có vaccine mới giải
        quyết triệt để căn bệnh truyền nhiễm này. Nhưng chính thái độ chủ quan về thành tích chống dịch đã dẫn đến sự
        thiếu quyết liệt trong việc tiếp cận vaccine phòng Covid. Khoảng thời gian từ tháng 12/2020, khi vaccine ngừa
        Covid 19 đầu tiên được công nhận, đến tháng 6/2021, khi dịch bùng phát ở phía Nam, Việt Nam đã có sáu tháng
        bị bỏ lỡ. Sau đó, nhà chức trách đã quyết liệt sửa sai, bằng đủ mọi cách để có vaccine tiêm cho dân, và dịch
        Covid-19 ở phía Nam bị chặn đứng vào tháng 10/2021.
    </p>
    <p>
        Bài học thứ hai là đối phó với nạn trục lợi. Đại dịch phơi bày thực tế rằng lòng tham vẫn chi phối nhiều mặt
        trong cuộc sống này. Ngay từ đầu dịch, một chai nước sát khuẩn từng bị hét giá lên một triệu đồng, một hộp
        khẩu trang 500 nghìn đồng... Bao nhiêu người "ôm hàng" khẩu trang, que test, thực phẩm chức năng chữa Covid,
        rao bán với giá trên trời. Tức là đại dịch được tận dụng thành một dịp làm ăn, kiếm lợi gấp nhiều lần trên
        hoàn cảnh ngặt nghèo của người khác. Nhiều người đã mong dịch kéo dài mãi. Người bé thì ăn bé, người to thì
        ăn to. Những chuyện như đại án Việt Á trở nên tất yếu. Qua đại dịch này, tôi thấy cần lên án mạnh mẽ hơn lối
        cư xử sống chết mặc bay, tiền thầy bỏ túi; bên cạnh việc đề ra các quy định xử lý những hành vi trục lợi
        trong bối cảnh thiên tai, địch họa, khủng hoảng...
    </p>
    <p>
        Bài học thứ ba là tinh thần quyết liệt của toàn xã hội. Từ sự chỉ đạo quyết đoán như thời chiến của cấp lãnh 
        đạo, cùng tinh thần y đức mẫu mực xả thân của ngành y, đến sự đồng lòng chung sức của tất cả tầng lớp xã hội,
        Việt Nam đã dập dịch đúng hướng, hạn chế hậu quả và tổn thất nặng nề của đại dịch. Trong quá trình này, từng 
        có nhiều hành động quá mức, có nơi có chỗ mang tính khoa trương, nhưng so với các nước trong khu vực như Ấn 
        Độ (hơn 530.000 ca tử vong), Indonesia (gần 158.000 ca tử vong), thì tổn thất về nhân mạng của Việt Nam trong
        đại dịch ở mức thấp hơn. Ở trong tâm dịch, vào đầu tháng 10/2021 chúng tôi đã chứng kiến số bệnh nhân nặng 
        giảm nhanh, nhiều phòng điều trị không có bệnh nhân được cho đóng cửa.
    </p>
</div>', 31, 'f', 27, 4, '2022-12-28', 'https://www.fda.gov/files/COVID%20testing%20policy_1600x900_0.png');
INSERT INTO "public"."articles" OVERRIDING SYSTEM VALUE VALUES (11, 'Ocean M.O.B đưa quan điểm tài chính vào âm nhạc', 0, 'Nhóm nhạc rap hợp tác cùng Mcredit ra mắt MV “Tiền là chi” chia sẻ quan điểm về tài chính cũng như vấn đề vay - trả của giới trẻ', '<div class="flex flex-col gap-y-2">
    <p>
        Nhóm nhạc rap hợp tác cùng Mcredit ra mắt MV “Tiền là chi” chia sẻ quan điểm về tài chính cũng như vấn đề 
        vay - trả của giới trẻ
    </p>
    <p>
        Tài chính là chủ đề khá kén chọn với những người sáng tác nhạc tuy nhiên, nhóm nhạc Ocean M.O.B quy tụ của 
        các rapper Obito, Gill, Willistic, wAvy và xolitxo, mang thêm một góc nhìn về vấn đề này, thông qua MV "Tiền
        là chi". Phần giai điệu của MV được sản xuất bởi DJ/producer (nhà sản xuất âm nhạc) Lucin3x- chủ nhân của 
        mixset series Hơi Ảo.
    </p>
    <p>
        Với tên gọi gợi mở "Tiền là chi", bài hát không chỉ thể hiện những quan niệm mới mẻ về tiền, cách sử dụng 
        tiền, về vay và trả của giới trẻ hiện nay mà qua đó còn gửi gắm thông điệp vay trách nhiệm "Có vay có trả 
        rồi lại vay" hay "Vay là phải chuẩn".
    </p>
    <img class="w-full h-full mt-2 rounded-lg" src="https://i1-giaitri.vnecdn.net/2022/12/26/MV-7267-1672049205.jpg?w=1020&h=0&q=100&dpr=1&fit=crop&s=LVUy1GyYNlyfYjlhWcWFJA" alt="">
    <p>
        Ra mắt vào thời điểm cuối năm, khi những câu chuyện vay - trả được nhiều người quan tâm, bài hát như lời tâm
        sự của người trẻ. Từ những câu chuyện thực tế, mỗi đoạn thể hiện của một rapper đem đến một câu trả lời cho 
        câu hỏi "Tiền là chi".
    </p>
    <p>
        Willistic và Gill mở màn ca khúc với câu trả lời tiền là để tiến, "để anh ghi liên tiếp từng bàn", là "bàn 
        đạp nuôi đam mê" và là "cơ hội cần bắt gọn" để hiện thực hóa các mục tiêu của cuộc đời. Theo Willistic và 
        Gill, nhiều dự định có thể hiện thực hóa sớm với app Mcredit.
    </p>
    <p>
        Trong khi đó, xolitxo đưa ra quan điểm tiền là để sẻ chia, là những yêu thương được trao cho mái nhà êm ấm, 
        ruột thịt. Thấu hiểu những nhọc nhằn của người dân chịu ảnh hưởng vì thiên tai, xolitxo nhắn nhủ thêm, tiền 
        để "xây ngôi nhà này thêm kiên cố", "gửi thêm thóc đến khu lao động", "vì lợi ích trăm năm trồng người, cần 
        đồng minh, Mcredit đã là đồng minh".
    </p>
    <p>
        Với người sống cho thỏa trong hiện tại, những khoản vay không chỉ giúp họ tận hưởng cuộc sống, như cách wAvy
        nói "đừng nghĩ là anh flexing, no, anh chỉ đang sống hết mình". Với nam rapper, tiền còn để mua niềm vui cho 
        gia đình, bạn bè như wAvy dùng thẻ tín dụng Mcredit tặng mẹ một chuyến đi du lịch hay Obito "đãi nhà một bữa 
        cho thật ngon, chơi cho thật xôm".
    </p>
    <p>
        MV dẫn dắt người xem tới những câu chuyện của người dân nhiều vùng miền với các sắc thái. Thông qua "Tiền là 
        chi", Mcredit và Ocean M.O.B gửi gắm thông điệp vay trách nhiệm, có vay có trả, "vay là phải chuẩn".
    </p>
    <p>
        "Tiền là gì, thì cũng là để chi cho những điều quan trọng. Mcredit mong rằng sẽ luôn là đồng minh để cùng 
        khách hàng thực hiện dự định của mình", đại diện Mcredit chia sẻ thêm. Ocean M.O.B là một nhóm rapper trẻ gồm
        5 thành viên. Trong đó, Obito- chủ nhân của bản hit "Simple love" được nhiều khán giả đại chúng biết tới hơn 
        sau khi tham gia Rap Việt mùa 2, Gill- nghệ sĩ trẻ tiềm năng, cũng là tác giả của nhiều câu nói xu hướng trên
        mạng xã hội, nổi bật trong số đó có "Ơ động đất à? Không phải, đấy là bọn anh đang đi lên". Willistic, wAvy, 
        xolitxo đều là những cái tên quen thuộc trong giới nhạc 
    </p>
</div>', 13, 'f', 16, 4, '2023-01-09', 'https://i1-giaitri.vnecdn.net/2022/12/26/MV-7267-1672049205.jpg?w=1020&h=0&q=100&dpr=1&fit=crop&s=LVUy1GyYNlyfYjlhWcWFJA');
INSERT INTO "public"."articles" OVERRIDING SYSTEM VALUE VALUES (114, 'Nguy cơ chìm trong biển', 0, 'Tôi đã sống ở Việt Nam đủ lâu để hiểu hai điều: Thứ nhất là có nguy cơ thực sự về việc người dân mất nhà cửa do mực nước biển dâng, và thứ hai là người dân khó có thể lường được những sự việc như vậy.', '<div class="flex flex-col gap-y-2">
    <p>
        Tôi đã sống ở Việt Nam đủ lâu để hiểu hai điều: Thứ nhất là có nguy cơ thực sự về việc người dân mất nhà cửa
        do mực nước biển dâng, và thứ hai là người dân khó có thể lường được những sự việc như vậy.
    </p>
    <p>
        Trước các đợt lũ lụt gần đây, đặc biệt là khi Đà Nẵng bị ngập trong gần một tuần, tôi cảm thấy cần giải thích
        các nguy cơ đang đến.
    </p>
    <p>
        Khi nói về việc mất nhà cửa do mực nước biển dâng, bạn hình dung điều gì xảy ra? Nó không giống như nước
        trong ly mà bạn có thể thấy: phẳng và dâng lên từng chút một theo chiều ngang. Mực nước biển, trên biển, trên
        đất liền hay thậm chí dưới lòng đất, không phải là chỉ số bất biến. Có thủy triều thấp và thủy triều cao, có
        những dòng sông với mực nước lên xuống. Mực nước biển ngầm dâng lên khi có mưa và hạ xuống khi hạn hán.
    </p>
    <img class="w-full h-full mt-2 rounded-lg" src="https://image.nhandan.vn/w800/Uploaded/2022/fdmzfgmztgzs/2022_09_12/242-6001.jpg" alt="">
    <p>
        Mất nhà cửa do nước biển dâng sẽ tương tự như vậy. Cách tốt nhất để hình dung về nó như sau: thông thường một
        trận lụt sẽ chỉ kéo dài vài ngày mỗi năm, nhưng dần dà nó kéo dài nhiều ngày hơn mỗi năm, thậm chí dài ra cả
        tuần như chúng ta đã thấy. Và rồi những trận lũ kéo dài cả tuần, vài tuần sẽ diễn ra thường xuyên hơn. Chúng
        xuất hiện lâu hơn, lâu hơn, và lâu hơn nữa. Cuối cùng, tại một khu vực nào đó, người dân quá mệt mỏi với việc
        đối phó với lũ lụt nên họ dần rời đi, thậm chí trước cả khi những nơi này bị nhấn chìm trong nước vĩnh viễn.
    </p>
    <p>
        Ở những nơi ngập lụt nhiều, người dân sẽ chạy lên những khu đất cao hơn và tất nhiên, vì không liên tục bị
        ngập trong nước nên những khu vực này không được mô tả là "dưới nước". Người dân sẽ không được bồi thường
        hoặc không được coi là nạn nhân của biến đổi khí hậu dù họ phải chịu đựng hậu quả từ tình trạng này.
    </p>
    <p>
        Không khó để giải thích về cơ chế của lũ lụt. Nếu độ cao của mặt đất so với mực nước biển, như tại một số
        vùng ở đồng bằng sông Cửu Long, là 50 cm, nghĩa là nếu đào sâu 50 cm vào lòng đất, bạn sẽ tìm thấy nước;
        nghĩa là chỉ 50 cm trên cùng của mặt đất có thể hấp thụ nước mưa. Giả sử 50 cm này hấp thụ được 25 cm nước và
        trong vòng một tuần hoặc vài ngày, lượng mưa lớn hơn khả năng hấp thụ, thì nơi đó sẽ bị ngập lụt. Tất nhiên,
        độ cao mỗi nơi một khác. Những nơi cao 40 cm sẽ bị ngập trước những nơi có cao độ 60 cm. Cần một khoảng thời
        gian nhất định để thẩm thấu lượng mưa, đặc biệt là khi nước đã ngấm vào lòng đất. Nên nếu trời mưa rồi tạnh,
        mưa và tạnh, lặp đi lặp lại như thế, khiến mặt đất ẩm ướt thì khi có một trận mưa khác, bất kể lớn hay nhỏ,
        sẽ có thể gây ra đợt lũ mới.
    </p>
    <p>
        Vì vậy, mực nước biển càng cao, càng có nhiều nơi bị ngập lụt, đặc biệt là những nơi trũng thấp như đồng bằng
        sông Cửu Long, các vùng cạnh bờ biển của Việt Nam, và một số nơi thuộc đồng bằng sông Hồng. Sẽ có thêm nhiều
        vấn đề phát sinh ngoài ngập lụt, ví dụ: các tòa nhà bị hư hại do độ ẩm vì nền móng thường xuyên nằm trong
        vùng đất rất ẩm ướt. Nhìn chung, những nơi này sẽ không thể ở được lâu dài.
    </p>
    <p>
        Hơn 10 năm qua, chính phủ Việt Nam đã bố trí hơn 16.000 tỷ đồng xây dựng công trình chống sạt lở ở đồng bằng
        sông Cửu Long, nhưng tình hình không cải thiện nhiều. Thống kê cho thấy, sạt lở ở Đồng bằng sông Cửu Long
        ngày càng khốc liệt. Đến năm 2018, khu vực Đồng bằng sông Cửu Long có 562 vị trí bờ sông, bờ biển bị sạt, với
        tổng chiều dài 786 km, trong đó có 42 vị trí sạt lở đặc biệt nguy hiểm. Nửa đầu năm 2020, riêng TP Cần Thơ
        xảy ra gần 20 vụ sạt lở (gần gấp đôi so với cùng kỳ 2019), ảnh hưởng tới 37 căn nhà; trong đó có 4 căn bị sạt
        hoàn toàn. Nhiều địa phương tại Long An, Cà Mau, Tiền Giang... đã phải công bố tình trạng khẩn cấp về sạt lở.
    </p>
</div>', 27, 't', 18, 4, '2023-01-05', 'https://image.nhandan.vn/w800/Uploaded/2022/fdmzfgmztgzs/2022_09_12/242-6001.jpg');
INSERT INTO "public"."articles" OVERRIDING SYSTEM VALUE VALUES (68, 'Trường đại học chi tiền tỷ lì xì Tết cho sinh viên', 34, 'Nhiều trường đại học lì xì, tặng quà Tết cho tất cả sinh viên với tổng chi phí hàng tỷ đồng.', '<div class="flex flex-col gap-y-2">
    <p>
        Nhiều trường đại học lì xì, tặng quà Tết cho tất cả sinh viên với tổng chi phí hàng tỷ đồng.
    </p>
    <p>
        Ông Lê Xuân Thành, Trưởng phòng Công tác - Chính trị Sinh viên, Đại học Mỏ Địa chất, cho biết năm nay trường
        tặng quà Tết cho 15.000 sinh viên, mỗi em một phần quà gồm 100.000 đồng và một quyển lịch. Tiền sẽ được
        chuyển qua số tài khoản sinh viên cung cấp trước ngày 23 tháng Chạp. Chi phí cho khoản thưởng này trích từ
        Quỹ hỗ trợ sinh viên.
    </p>
    <p>
        "Hoạt động này bắt đầu từ năm 2015. Những năm trước, phần quà là 50.000 đồng và một quyển lịch nhưng năm nay,
        nhà trường điều chỉnh mức tiền lên 100.000 đồng", ông Thành nói, cho biết thêm quyển lịch là ấn phẩm "cây nhà
        lá vườn", có giá trị 30.000 đồng nhưng chắt chiu những hình ảnh đẹp nhất, giúp phụ huynh hiểu hơn về ngôi
        trường con mình đang học. Trường Đại học Quốc tế, Đại học Quốc gia Hà Nội cách đây vài hôm cũng thông báo lì
        xì cho tất cả sinh viên, với mức 99.999 đồng, qua tài khoản. Tiến sĩ Nguyễn Trung Hiển, Trưởng phòng Công tác
        sinh viên, cho biết đây là năm thứ hai trường tổ chức hoạt động này. Với khoảng 6.000 sinh viên, khoản chi dự
        kiến gần 600 triệu đồng.
    </p>
    <img class="w-full h-full mt-2 rounded-lg" src="https://i1-vnexpress.vnecdn.net/2022/12/27/sinh-vien1-8456-1672147730.jpg?w=1020&h=0&q=100&dpr=1&fit=crop&s=Oq1xFH5F_IbgLfJ_FxdKdQ" alt="">
    <p>
        Ngoài lì xì, Trường Mỏ Địa chất tặng thêm 500.000 - 1 triệu đồng; trường Đại học Quốc tế tặng thêm giỏ quà
        gồm bánh chưng, giò cho các sinh viên có hoàn cảnh khó khăn.
    </p>
    <p>
        Lì xì Tết cho sinh viên là truyền thống được duy trì hàng chục năm nay của trường Đại học Ngoại thương. Tiến
        sĩ Bùi Liên Hà, Trưởng phòng Công tác Chính trị và Sinh viên, cho hay những năm trước, mức lì xì là 70.000
        đồng, từ năm 2021, trường tăng lên 100.000 đồng. Tết Nguyên đán 2023, trường giữ nguyên mức lì xì này. Khoảng
        15.000 sinh viên chính quy ở ba cơ sở nhận lì xì thông qua lớp trưởng thay vì chuyển qua tài khoản ngân hàng
        để tránh sai sót.
    </p>
    <p>
        Ở phía Nam, năm nay lần đầu tiên trường Đại học Hoa Sen tặng quà Tết cho toàn bộ sinh viên, học viên cao học.
        Phần quà gồm ba cốc sứ, trà sen, phong bao lì xì, thư chúc mừng từ hiệu trưởng, được trao tận tay sinh viên
        từ 27/12. Nếu sinh viên không thể nhận trực tiếp, trường sẽ chuyển về địa chỉ nhà.
    </p>
    <p>
        Từ chối tiết lộ giá trị quà, tuy nhiên PGS Võ Thị Ngọc Thúy, Hiệu trưởng trường Đại học Hoa Sen, thông tin
        tổng kinh phí tặng quà Tết cho hơn 10.000 sinh viên, học viên lên đến hàng tỷ đồng. Kinh phí được trích từ
        ngân sách dành cho các hoạt động trải nghiệm của sinh viên và nguồn tài trợ của doanh nghiệp, đối tác.
    </p>
    <p>
        "Đây là quà tặng sinh viên mang về cho gia đình. Nhà trường mong thông qua hộp quà Tết, các bạn sinh viên
        hướng về gia đình, bày tỏ tình yêu, sự biết ơn với cha mẹ trước thềm năm mới. Do đó, hai trong ba chiếc cốc
        sứ có in dòng chữ ''con yêu cha'', ''con yêu mẹ'' để các bạn tặng cho phụ huynh", PGS Thúy nói. Đại diện nhà
        trường cho biết thêm sẽ tổ chức những chuyến xe đưa sinh viên một số tỉnh lân cận TP HCM về quê cùng nhiều
        hoạt động mừng xuân khác.
    </p>
    <p>
        Tương tự, trường Đại học quốc tế Hồng Bàng tặng gần 10.000 hộp quà Tết cho tất cả sinh viên chính quy và trao
        100 học bổng trị giá 3 triệu đồng một suất cho sinh viên có gia cảnh khó khăn hoặc không có điều kiện về quê
        ăn Tết, với tổng chi gần 4 tỷ đồng. Hộp quà Tết của trường gồm các loại bánh, mứt, bao lì xì, đã được gửi đến
        sinh viên sau Tết Dương lịch.
    </p>
    <p>
        Tết Nguyên đán 2023, sinh viên cả nước được nghỉ phổ biến 14-21 ngày. Riêng trường Đại học Luật TP HCM cho
        sinh viên nghỉ Tết 30 ngày, 14/1 đến 12/2/2023 (23 tháng Chạp đến 22 tháng Giêng).
    </p>
</div>', 15, 'f', 16, 4, '2022-12-28', 'https://i1-vnexpress.vnecdn.net/2022/12/27/sinh-vien1-8456-1672147730.jpg?w=1020&h=0&q=100&dpr=1&fit=crop&s=Oq1xFH5F_IbgLfJ_FxdKdQ');
INSERT INTO "public"."articles" OVERRIDING SYSTEM VALUE VALUES (81, 'Điều bất ngờ cho người đánh rơi 18 chiếc iPhone', 17, 'Nhờ cộng đồng chia sẻ bài viết tìm chủ nhân của 18 chiếc điện thoại rơi gần bến xe Mỹ Đình, anh Nguyễn Đức đã nhận lại đồ thất lạc, chiều 28/12.', '<div class="flex flex-col gap-y-2">
    <p>
        "Chiếc túi bị rơi đựng toàn iPhone đời mới, không lắp sim, đã mở khóa sẵn, đang chờ trả khách", anh Đức nói.
    </p>
    <p>
        Sáng hôm sau, anh chủ cửa hàng điện thoại đành gọi điện thoại trình bày sự cố với với từng khách và tính cách
        đền bù gần 200 triệu đồng, bởi nhiều giờ trôi qua không có thông tin gì. Đến 2h chiều, đọc tin "Tìm chủ nhân
        của chiếc túi đen đựng hơn chục cái điện thoại rơi gần bến xe Mỹ Đình" được người dùng mạng chia sẻ, anh lập
        tức liên hệ người đăng bài là chị Bùi Hằng, 32 tuổi, ở phường Mỹ Đình, quận Nam Từ Liêm.
    </p>
    <p>
        Chị Hằng kể, chiếc túi được người chú họ đang chạy xe ôm nhặt được lúc 1h30 sáng gần bến xe Mỹ Đình, khi đi
        làm về. Thời điểm nhặt đồ đường vắng, không có người qua lại nên anh mang về nhà và nhờ cháu gái đăng tin trả
        người đánh rơi.
    </p>
    <img class="w-full h-full mt-2 rounded-lg" src="https://i1-giadinh.vnecdn.net/2022/12/28/666666666-139-1672226824-1843-1672227395.jpg?w=1020&h=0&q=100&dpr=1&fit=crop&s=rT5o6gTqY3QLjW99Yx5buA" alt="">
    <p>
        Nhiều lần giúp người tìm lại đồ thất lạc, chị nói tài sản có giá trị lớn chắc chắn chủ nhân sẽ đi tìm nên chị
        đăng tin lên trang cá nhân ngay trong đêm. Đợi hơn nửa ngày không thấy ai liên lạc, chị tiếp tục chia sẻ lên
        các hội nhóm trên mạng xã hội. Chưa đầy 5 phút sau, anh Nguyễn Đức liên hệ, gửi giấy tờ đối chứng thông số kỹ
        thuật của 18 chiếc máy để xác minh và đến gặp trực tiếp. Sau khi nhận lại đồ, chủ cửa hàng sửa chữa điện
        thoại liên tục nói cảm ơn ân nhân, ngỏ ý gửi quà cảm ơn nhưng chị không nhận. "Giúp đồ vật trở về với chủ là
        tôi vui rồi, không mong báo đáp", người phụ nữ 32 tuổi nói.
    </p>
    <p>
        Về phía anh Đức, anh nói đây là bài học cần rút kinh nghiệm. "Cũng may có lòng tốt của chị Hằng và cộng đồng 
        mạng, tôi mới không mất một số tiền lớn, cũng như uy tín với khách hàng", anh tâm sự.
    </p>
</div>', 19, 'f', 15, 4, '2022-12-31', 'https://i1-giadinh.vnecdn.net/2022/12/28/666666666-139-1672226824-1843-1672227395.jpg?w=1020&h=0&q=100&dpr=1&fit=crop&s=rT5o6gTqY3QLjW99Yx5buA');
INSERT INTO "public"."articles" OVERRIDING SYSTEM VALUE VALUES (76, 'Hai điều bứt phá đưa nữ sinh 17 tuổi đến Đại học Stanford', 16, 'Bài luận về việc giúp đỡ trẻ em đường phố và dự án về tư vấn được Gia Hân đánh giá là hai điều bứt phá trong bộ hồ sơ, giúp em chinh phục thành công Đại học Stanford, Mỹ.', '<div class="flex flex-col gap-y-2">
    <p>
        Bài luận về việc giúp đỡ trẻ em đường phố và dự án về tư vấn được Gia Hân đánh giá là hai điều bứt phá trong
        bộ hồ sơ, giúp em chinh phục thành công Đại học Stanford, Mỹ.
    </p>
    <p>
        Phạm Bùi Gia Hân, 17 tuổi, học sinh trường Quốc tế Anh BIS Hà Nội, nhận tin trúng tuyển Đại học Stanford cách
        đây gần hai tuần. Đây là đại học xếp thứ ba trong top đại học tốt nhất nước Mỹ, và có tỷ lệ chấp nhận chỉ 4%
        trong số hơn 50.000 hồ sơ, theo US News and World report.
    </p>
    <p>
        Từ khi vào THPT, Gia Hân đã đặt mục tiêu chinh phục Stanford. Nữ sinh nhận định đại học top 3 nước Mỹ có thế
        mạnh về sáng tạo, môi trường khởi nghiệp và sáng kiến về phát triển bền vững - những giá trị mà em muốn theo
        đuổi. Hiểu rằng chinh phục Stanford không dễ dàng, Hân bắt đầu tìm thông điệp cho bài luận chính từ cuối năm
        2021, cách hạn nộp hồ sơ một năm. Lần lượt viết về ba ý tưởng nhưng Hân không ưng bài nào, trong khi thời
        điểm đóng đơn ngày càng gần.
    </p>
    <img class="w-full h-full mt-2 rounded-lg" src="https://i1-vnexpress.vnecdn.net/2022/12/28/322337935-704736267889893-2488-8614-8369-1672217103.jpg?w=1020&h=0&q=100&dpr=1&fit=crop&s=WuARi3uC5vwXayw9jaUzaQ" alt="">
    <p>
        Đến tháng 7/2022, Hân tham gia Blue Dragon - Tổ chức hỗ trợ trẻ em đường phố, được giao sáng tác một bộ
        truyện tranh mang thông điệp trao quyền cho thế hệ trẻ. Chưa từng có trải nghiệm về chủ đề này, lại ít có cơ
        hội tiếp xúc với trẻ em đường phố, Hân lúng túng, rồi quyết định xây dựng nội dung truyện dựa trên hiểu biết,
        kiến thức tích luỹ của mình. "Em nghĩ đến bình đẳng giới, có lẽ các bạn sẽ thích việc con gái chơi bóng đá
        nên em đưa chi tiết này vào truyện", Hân kể.
    </p>
    <p>
        Khi đưa sản phẩm cho một chuyên gia, Hân nhận ra những gì mình nghĩ không thực tế, dù có mục đích tốt. Em vẫn
        nhớ lời vị chuyên gia khi đó, rằng trẻ em đường phố cần cái ăn, chỗ ngủ, được học hành trước khi chơi đá
        bóng. "Em như được khai sáng. Em hiểu ra rằng để giúp đỡ ai đó, thay vì đứng trên cao, đứng từ ngoài rồi áp
        đặt suy nghĩ, tự cho rằng chỉ cần đưa cho họ cái này cái kia là tốt, thì phải bước vào thế giới của họ và xem
        họ thật sự cần gì, từ đó tìm ra giá trị của họ", Hân nói.
    </p>
    <p>
        Trên đường về nhà hôm đó, em đã viết ngay ý tưởng bài luận chính vào điện thoại. Dù vậy, Hân phải sửa nhiều
        lần do thường ôm đồm dẫn chứng. Em được cố vấn học tập khuyên chỉ nên đưa hai bài học giá trị nhất vào bài,
        rồi kể thành câu chuyện mang thông điệp thống nhất. Sau ba tháng, nữ sinh ưng ý với bài luận chính, dành thời
        gian còn lại để trau chuốt những yếu tố khác của hồ sơ. Cùng thời điểm này, trong vai trò người sáng lập The
        Student Consulting Group (SCG - một công ty tư vấn trong nhiều lĩnh vực), Hân cùng cộng sự tổ chức thành công
        hội thảo chia sẻ kinh nghiệm, kết nối chuyên gia kinh doanh, khởi nghiệp với các bạn trẻ. Thành lập vào cuối
        năm 2021 với bảy thành viên từ 14 đến 20 tuổi, hoạt động này được Hân đánh giá là điểm bứt phá của bộ hồ sơ,
        bên cạnh bài luận chính.
    </p>
    <p>
        Cả nhóm bắt đầu bằng các hoạt động nhỏ, tư vấn cho phụ huynh và học sinh, tùy theo yêu cầu. Hân chủ động liên
        lạc với các đơn vị và một số dự án đã có sẵn, đề nghị được hợp tác cùng. Ngay trong lần đầu tiếp cận doanh
        nghiệp, cả nhóm bị từ chối gặp mặt. Nữ sinh kiên trì email, đề xuất "tham gia các bài kiểm tra để được đánh
        giá năng lực một cách khách quan", và nhấn mạnh việc tư vấn hoàn toàn miễn phía.
    </p>
    <p>
        Dự án tư vấn chính thức đầu tiên của SCG là làm thế nào để khi nhắc tới học tiếng Anh, "Gen Z" (thế hệ sinh
        năm 1997 đến 2010) sẽ nghĩ đến IELTS Face Off, một chương trình học tiếng Anh trên truyền hình. Nữ sinh và
        nhóm phải tìm dữ liệu về khách hàng, sau đó xây dựng kế hoạch dài hạn trong năm năm. SCG sau đó cũng hợp tác
        với Golden Gate, công ty sở hữu 400 nhà hàng trên khắp Việt Nam với 18 triệu lượt khách một năm.
    </p>
    <p>
        Ngoài ra, nữ sinh Hà Nội còn dành thời gian nghiên cứu khoa học. Đầu năm nay, bài nghiên cứu của Hân về các
        biện pháp an toàn thúc đẩy doanh nghiệp Việt Nam trong đại dịch được đăng trên tạp chí quốc tế Journal of
        Student Research. Trong ba năm 2018-2021, Hân tham gia hàng loạt cuộc thi tranh biện trong và ngoài nước. Em
        cũng giữ vị trí đại diện học sinh toàn trường (Head student/Head girl) tại BIS.
    </p>
    <p>
        Dành thời gian cho các lĩnh vực khác nhau, Hân cũng từng đặt câu hỏi liệu việc này có phản tác dụng và trở
        thành bất lợi trong bộ hồ sơ du học. "Em cũng mất nhiều ngày đắn đo, nhưng rồi vẫn quyết định không thêm hay
        bớt hoạt động nào. Em không cố thể hiện là mình thích những thứ đó, mà đó là sự thật, thực sự là em. Vậy nên
        tại sao phải lo lắng?", Hân chia sẻ.
    </p>
    <p>
        Theo nữ sinh, tranh biện là đam mê, cũng là một kỹ năng. Còn em có định hướng phát triển nghề nghiệp ở mảng
        tư vấn và giải quyết rủi ro cho các công ty, liên quan đến đóng góp xã hội, giảm thiểu rác và bảo vệ môi
        trường. Vì thế, về bản chất, những gì em hướng tới vẫn thống nhất với nhau. Cô gái 17 tuổi nói cần song hành
        giữa việc học và tham gia các hoạt động ngoại khoá, học để làm và làm những thứ phục vụ cho việc học. Tham
        gia nhiều hoạt động ngoại khóa nhưng Hân vẫn tuân thủ kế hoạch học tập chương trình IB (International
        Baccalaureate - Tú tài quốc tế) trên lớp và vượt qua các bài kiểm tra. Lần gần nhất, em đạt điểm tuyệt đối cả
        6 môn. Cũng nhờ thành tích này, em không cần nộp chứng chỉ IELTS trong hồ sơ du học để chứng minh khả năng
        tiếng Anh.
    </p>
    <p>
        Cô Trần Phương Hoa, cố vấn của Gia Hân trong quá trình làm hồ sơ du học Mỹ, đánh giá em là học sinh toàn diện
        khi học tốt cả Toán, Kinh tế lẫn Văn học, Địa lý. Bên cạnh đó, Hân có khả năng nghiên cứu độc lập, phân tích
        và xử lý thông tin, nên kỹ năng phản biện tốt. "Em là một trong những học sinh hiếm hoi vừa có khả năng học
        thuật xuất sắc, vừa năng động và có thể áp dụng được các kiến thức em đã học vào thực tiễn", cô Hoa nói và
        cho rằng với tố chất này, Hân có thể học lên thạc sĩ, tiến sĩ trong các lĩnh vực tư vấn, kinh doanh, khởi
        nghiệp.
    </p>
    <p>
        Nhìn lại hành trình ứng tuyển của mình, nữ sinh cho rằng điều mang đến giá trị cho bộ hồ sơ đến từ những trải
        nghiệm thực tế. Cùng với đó, Hân khuyên ứng viên nên nghĩ thoáng hơn về các thành tích hoạt động ngoại khoá. 
        "Nhiều người nghĩ phải đạt giải quốc tế, hoặc làm những điều thật vĩ mô mới tạo giá trị cho hồ sơ du học, còn
        làm trưởng nhóm tại dự án trong trường là không đủ. Nhưng em nghĩ cái gì cũng bắt đầu từ những điều nhỏ bé, 
        là nền tảng để vươn xa hơn", Hân nói.
    </p>
</div>', 17, 'f', 27, 4, '2022-12-30', 'https://i1-vnexpress.vnecdn.net/2022/12/28/322337935-704736267889893-2488-8614-8369-1672217103.jpg?w=1020&h=0&q=100&dpr=1&fit=crop&s=WuARi3uC5vwXayw9jaUzaQ');
INSERT INTO "public"."articles" OVERRIDING SYSTEM VALUE VALUES (58, 'Thể hiện bản lĩnh đúng thời điểm, Golden State Warriors vượt qua Charlotte Hornets', 45, 'Golden State Warriors đã đánh mất lợi thế dẫn trước 18 điểm và để Charlotte Hornets gỡ hoà trong hiệp 4. Tuy nhiên bản lĩnh của nhà ĐKVĐ đã xuất hiện kịp thời.', '<div class="flex flex-col gap-y-2">
    <p>
        Golden State Warriors đã đánh mất lợi thế dẫn trước 18 điểm và để Charlotte Hornets gỡ hoà trong hiệp 4. Tuy
        nhiên bản lĩnh của nhà ĐKVĐ đã xuất hiện kịp thời.
    </p>
    <p>
        Trận đấu cuối của ngày thi đấu hôm (28/12) nay diễn ra giữa những chiến binh cầu cổng vàng Golden State
        Warriors và bầy ong Charlotte Hornets. Hai đội bóng gần đây đang có phong độ khá phập phù và đều đứng ngoài
        top dự playoffs. Chính vì vậy chiến thắng trong kỳ nghỉ giáng sinh này có lẽ là món quà không thể tuyệt vời
        hơn với cổ động viên của một trong hai đội.
    </p>
    <p>
        Charlotte Hornets hành quân tới Chase Center với lực lượng đều đang đạt thể trạng tốt nhất. Ngược lại với đội
        khách thì Golden State Warriors lại thiếu vắng tới 2 cầu thủ thường xuyên góp mặt trong đội hình chính là
        Stephen Curry và Andrew Wiggins. Hiệp thi đấu đầu tiên vừa mới diễn ra được 2 phút, khán giả của đội nhà đã
        liên tục được ăn mừng với 3 tình huống ném 3 điểm liên tiếp của Klay Thompson. Lợi thế về mặt tinh thần liên
        tục các chiến binh cầu vàng vượt lên dẫn trước trong xuyên suốt hai hiệp đầu. Trước khi bước vào giờ nghỉ
        giữa trận, Golden State Warriors tạm dẫn với tỉ số 65-52. Cá nhân Klay Thompson đã bỏ túi tới 20 điểm.
    </p>
    <img class="w-full h-full mt-2 rounded-lg" src="https://cdnmedia.webthethao.vn/uploads/2022-12-28/Warriors-vs-Hornets-1.jpg" alt="">
    <p>
        Sau giờ nghỉ, các cầu thủ Charlotte Hornets đã bắt đầu nóng máy hơn với chuỗi điểm 7-0 ở giữa hiệp 3 để rút
        ngắn cách biệt. Mặc dù vậy, hàng thủ của họ lại thường xuyên mắc lỗi và để Warriors tái lập khoảng cách. Hiệp
        4 là nơi LaMelo Ball và các đồng đội dốc hết sức lực với mục tiêu ngược dòng. Họ phòng thủ ấn tượng để khoá
        chặt các ngòi nổ bên phía Warriors, sau đó tấn công một cách hiệu quả hơn. Đã có lúc tỷ số được cân bằng nhờ
        công của PJ Washington hay Gordon Hayward.
    </p>
    <p>
        Nhưng với bản lĩnh của nhà đương kim vô địch, Golden State Warriors đã trở lại ở những thời điểm quyết định
        với 6 điểm liên tiếp của Jordan Poole và Jonathan Kuminga. Cú run 6-0 đúng lúc này giúp đội chủ nhà “kết
        liễu" Charlotte Hornets và giành chiến thắng chung cuộc với tỷ số 110-105.
    </p>
</div>', 8, 'f', 18, 4, '2022-12-30', 'https://cdnmedia.webthethao.vn/uploads/2022-12-28/Warriors-vs-Hornets-1.jpg');
INSERT INTO "public"."articles" OVERRIDING SYSTEM VALUE VALUES (82, 'Kiếm bộn tiền từ hàng bị hoàn trả', 19, 'Jamie và Sarah McCauley bỏ ra hơn 7.000 USD mua những gói hàng khách không nhận, bị hoàn về siêu thị và bán lại, thu lãi 20.000 USD.', '<div class="flex flex-col gap-y-2">
    <p>
        Jamie và Sarah McCauley bỏ ra hơn 7.000 USD mua những gói hàng khách không nhận, bị hoàn về siêu thị và bán
        lại, thu lãi 20.000 USD.
    </p>
    <p>
        Cặp vợ chồng ở West Michigan tình cờ phát hiện ra cơ hội kiếm tiền bằng cách bán những sản phẩm bị mọi người
        trả lại của các chuỗi siêu thị và nền tảng thương mại điện tử như Target, Walmart và Amazon, từ tháng 12/2020.
    </p>
    <p>
        Toàn bộ số hàng bị hoàn trả được nhà bán lẻ gửi đến kho thanh lý do khu vực chứa hàng tồn quá tải hoặc muốn
        tiết kiệm chi phí. "Quá trình thuê người kiểm kê những gói hàng bị hoàn trả rất tốn kém, thậm chí vượt giá
        trị món hàng nên thanh lý có lợi hơn", công ty hậu cần Optoro của Mỹ lý giải. Điều này đem đến cơ hội nghề
        nghiệp mới cho Jamie và Sarah. Cặp đôi sẽ tìm đến các nhà kho ở địa phương, chi trung bình 550 USD cho một
        thùng hàng bị trả lại và đăng bán các sản phẩm bên trong. "Ban đầu chúng tôi chỉ thử xem có thể kiếm tiền từ
        công việc này hay không, nhưng sau đó nhận ra đây là nguồn thu tuyệt vời", Sarah nói.
    </p>
    <img class="w-full h-full mt-2 rounded-lg" src="https://i1-giadinh.vnecdn.net/2022/12/28/666666666-136-2058-1672198281.jpg?w=1020&h=0&q=100&dpr=1&fit=crop&s=C4WpkUYiALVv-5StbCMHqA" alt="">
    <p>
        Đến nay, Jamie, 33 tuổi và Sarah, 32 tuổi đã chi hơn 7.000 USD cho các thùng hàng và thu về khoản tiền lời
        gần 20.000 USD.
    </p>
    <p>
        Sau khi chọn mua thùng hàng tại kho, cặp đôi sẽ mang về và đăng video "đập hộp" lên trang cá nhân có 109.000
        người theo dõi. Họ sẽ ước tính giá bán lẻ của từng sản phẩm dựa trên giá niêm yết và tình trạng hàng. Hầu hết
        món đồ được bán lại tương đương 60% giá gốc.
    </p>
    <p>
        Theo Jamie, sẽ mất 1-2 tuần để hoàn vốn và có thể bán được 90% số hàng sau 4-8 tuần. Họ chưa bị lỗ đối với
        bất kỳ thùng hàng nào, dù công việc này được đánh giá như một canh bạc vì sẽ có sản phẩm không ai mua, số
        khác bị hư hỏng nặng, không thể rao bán. "Đôi khi chúng tôi mua phải những thùng hàng trong tình trạng rất
        tệ, nhưng luôn cố hòa vốn", Sarah nói. Nhà McCauley không phải người duy nhất kiếm tiền từ công việc này.
        Hiện có hàng chục tài khoản trên các nền tảng mạng xã hội đã chia sẻ mẹo và thủ thuật để tối đa hóa khoản
        tiền mà những thùng hàng hoàn trả có thể đem lại.
    </p>
    <p>
        Jamie và Sarah cho rằng khi nền kinh tế xấu đi, mọi người sẵn sàng mua đồ cũ với giá rẻ hơn. "Việc bán lại đồ
        phát triển mạnh trong thời kỳ suy thoái vì tất cả đều cố gắng để tiết kiệm bằng mọi cách", Sarah nói.
    </p>
</div>', 19, 't', 27, 4, '2022-12-29', 'https://i1-giadinh.vnecdn.net/2022/12/28/666666666-136-2058-1672198281.jpg?w=1020&h=0&q=100&dpr=1&fit=crop&s=C4WpkUYiALVv-5StbCMHqA');
INSERT INTO "public"."articles" OVERRIDING SYSTEM VALUE VALUES (23, '10 triệu sản phẩm Việt Nam bán trên Amazon năm nay', 6, 'Báo cáo mới công bố của Amazon cho biết, các nhà bán hàng Việt Nam đã bán gần 10 triệu sản phẩm trên nền tảng này năm nay.', '<div class="flex flex-col gap-y-2">
    <p>
        Báo cáo mới công bố của Amazon cho biết, các nhà bán hàng Việt Nam đã bán gần 10 triệu sản phẩm trên nền tảng
        này năm nay.
    </p>
    <p>
        Con số này giúp giá trị xuất khẩu của các nhà bán hàng Việt Nam trên nền tảng tăng hơn 45% năm 2022. Cùng với
        đó, báo cáo cho hay số lượng nhà bán hàng tăng hơn 80%, phần lớn là doanh nghiệp vừa và nhỏ. Riêng số lượng
        nhà bán hàng đã vượt mốc doanh số 500.000 USD tăng 60% so với 2021.
    </p>
    <p>
        Tuy nhiên, Amazon không công bố doanh số cũng như lượng nhà bán hàng Việt Nam cụ thể đã tham gia nền tảng
        này. Số lượng nhà bán hàng chỉ được cho biết ở mức "hàng nghìn".
    </p>
    <img class="w-full h-full mt-2 rounded-lg" src="https://media-cdn-v2.laodong.vn/storage/newsportal/2022/7/18/1069768/Amazon-Assume-A-Tori.jpg" alt="">
    <p>
        Top danh mục các ngành bán chạy hàng đầu năm nay của các nhà bán hàng Việt Nam bao gồm: nhà bếp, nhà cửa, dệt
        may, sản phẩm chăm sóc sức khỏe và cá nhân, tiện ích gia đình.
    </p>
    <p>
        Một số doanh nghiệp vừa và nhỏ của Việt Nam như AnEco, Lafooco, Sunhouse hay HMG được ghi nhận là tiếp tục
        thành công khi vừa đón sóng thương mại điện tử xuyên biên giới, vừa tạo ra thêm nhiều việc làm cho người dân
        địa phương.
    </p>
    <p>
        Ông Nguyễn Lê Thăng Long, Phó giám đốc điều hành An Phát, sở hữu thương hiệu AnEco, cho biết doanh số bán qua
        Amazon tăng hơn 5 lần so với 2021. Hay như bà Phùng Minh Thủy, Sáng lập thương hiệu HMG chuyên sản xuất thiệp
        3D, cho biết trung bình mỗi ngày nhận được hàng trăm đơn quốc tế từ nền tảng này.
    </p>
    <p>
        Năm 2022, Việt Nam xếp thứ 5 trong top 10 thị trường thế giới tăng trưởng doanh số thương mại điện tử bán lẻ,
        với mức 19%, sau Philippines, Ấn Độ, Indonesia và Brazil, theo eMaketer. Còn theo AlphaBeta, doanh thu xuất
        khẩu thương mại điện tử của Việt Nam giai đoạn 2021-2026 dự kiến tăng hơn 20% mỗi năm.
    </p>
    <p>
        "Với những lợi thế sẵn có như chính sách quốc gia hỗ trợ mạnh mẽ cho xuất khẩu, năng lực sản xuất dồi dào,
        thương mại điện tử phát triển nhanh chóng, Việt Nam đang ở giai đoạn vàng để cất cánh xuất khẩu online", ông
        Gijae Seong, Giám đốc Điều hành Amazon Global Selling Việt Nam, nhận định.
    </p>
</div>', 1, 't', 16, 4, '2022-12-31', 'https://media-cdn-v2.laodong.vn/storage/newsportal/2022/7/18/1069768/Amazon-Assume-A-Tori.jpg');
INSERT INTO "public"."articles" OVERRIDING SYSTEM VALUE VALUES (12, 'Hai con gái Bình Minh làm mẫu áo dài', 0, 'An Nhiên (13 tuổi) và An Như (10 tuổi) - con gái diễn viên Bình Minh - diện áo dài họa tiết phượng hoàng, làm mẫu cùng bố.', '<div class="flex flex-col gap-y-2">
    <p>
        An Nhiên (13 tuổi) và An Như (10 tuổi) - con gái diễn viên Bình Minh - diện áo dài họa tiết phượng hoàng,
        làm mẫu cùng bố.
    </p>
    <p>
        Bốn thành viên gia đình nghệ sĩ diện áo dài thuộc bộ sưu tập Phượng hoàng - Nghệ thuật từ di sản của nhà
        thiết kế Hồ Trần Dạ Thảo. Điểm nhấn trên trang phục là họa tiết phượng hoàng, áng mây, sóng nước, hoa mai,
        cúc, mẫu đơn... ở phần tà, tượng trưng cho sự thanh cao, phồn thịnh.
    </p>
    <p>
        Nhà thiết kế sử dụng chất liệu voan lụa và các tông màu gồm hồng cánh sen, đỏ, cam, xanh lá, vàng, tím... phù
        hợp không khí mùa xuân. Bình Minh nói: "Khi thực hiện bộ ảnh, cả nhà như được du xuân sớm, các con cũng hào
        hứng khi đứng chung với bố mẹ". Doanh nhân Anh Thơ - vợ diễn viên - cho biết năm nào vào dịp Tết Nguyên đán,
        gia đình cũng chụp bộ ảnh kỷ niệm. Chị thường giải thích ý nghĩa của áo dài truyền thống cho các con, nên
        mỗi lần được thử trang phục, hai bé thích thú.
    </p>
    <img class="w-full h-full mt-2 rounded-lg" src="https://i1-giaitri.vnecdn.net/2022/12/28/Binh-Minh-Anh-Tho-dien-ao-dai-3976-3540-1672217739.jpg?w=1020&h=0&q=100&dpr=1&fit=crop&s=_oqiWTa1aGlCuWhV5ZdjLg" alt="">
    <p>
        Nghệ sĩ cho biết An Nhiên, An Thư không thường xuyên làm mẫu ảnh nên thỉnh thoảng có chút ngại ngùng trước
        ống kính. Nhờ sự hỗ trợ, tư vấn của bố mẹ, hai con thoải mái tạo dáng. An Nhiên hiện cao 1,73 m, còn An Như
        1,55 m. Bình Minh nói các con thường được mời làm mẫu ảnh nhưng gia đình muốn để bé tập trung việc học. Hiện
        cả hai chưa bộc lộ ý định nối nghiệp người mẫu giống bố hay tham gia hoạt động nghệ thuật khác.
    </p>
    <p>
        Những ngày cuối năm, Bình Minh, Anh Thơ tất bật với công việc còn hai con bước vào thi học kỳ. Họ dự định đón
        năm mới theo cách truyền thống, sau đó du xuân ngắn ngày.
    </p>
    <p>
        Bình Minh sinh năm 1981 ở Lạng Sơn, chuyển vào TP HCM lập nghiệp từ năm 2002. Với ngoại hình và chiều cao nổi
        bật - 1,84 m, Bình Minh trở thành gương mặt ăn khách của các sàn diễn lớn nhỏ, các tạp chí thời trang... Anh
        tham gia nhiều phim như 39 độ yêu, Công ty thời trang, Vũ điệu tử thần, Đi về phía mặt trời, Cô gái xấu xí...
        Năm 2008, diễn viên lập gia đình với doanh nhân Anh Thơ, có hai con gái. Năm 2015, anh được bầu là Phó Chủ
        tịch Hội Điện ảnh TP HCM.
    </p>
</div>', 14, 't', 27, 4, '2023-01-08', 'https://i1-giaitri.vnecdn.net/2022/12/28/Binh-Minh-Anh-Tho-dien-ao-dai-3976-3540-1672217739.jpg?w=1020&h=0&q=100&dpr=1&fit=crop&s=_oqiWTa1aGlCuWhV5ZdjLg');
INSERT INTO "public"."articles" OVERRIDING SYSTEM VALUE VALUES (13, 'Cách Lamer Fashion tăng lợi thế cạnh tranh với thương hiệu quốc tế', 0, 'Lamer Fashion định hướng cung cấp sản phẩm mang tính ứng dụng cao, chủ động các khâu sản xuất, nâng cấp chế độ bảo hành để gia tăng lợi thế cạnh tranh.', '<div class="flex flex-col gap-y-2">
    <p>
        Lamer Fashion định hướng cung cấp sản phẩm mang tính ứng dụng cao, chủ động các khâu sản xuất, nâng cấp chế
        độ bảo hành để gia tăng lợi thế cạnh tranh.
    </p>
    <p>
        Đại diện thương hiệu cho biết, các chiến lược này đều hướng tới mục tiêu chiếm lấy sự hài lòng từ người tiêu
        dùng trong nước, đồng thời, nâng cao vị thế của một doanh nghiệp nội địa trước sự đổ bộ của thương hiệu nước
        ngoài vào thị trường thời trang Việt.
    </p>
    <p>
        "Tỷ lệ xuất khẩu hàng may mặc của Việt Nam rất cao nhưng thương hiệu Việt lại phải chật vật tranh thị phần
        nội địa. Điều này đặt ra thách thức cho các nhãn hàng trong việc đáp ứng nhu cầu của người tiêu dùng", vị
        đại diện nói thêm.
    </p>
    <img class="w-full h-full mt-2 rounded-lg" src="https://i1-giaitri.vnecdn.net/2022/12/28/image001-3355-1672202402.jpg?w=1020&h=0&q=100&dpr=1&fit=crop&s=pDGoS7gd4IZloGmcGYQaYQ" alt="">
    <p>
        Với hệ thống 40 cửa hàng trên toàn quốc, thương hiệu Lamer xác định ba chiến lược chủ lực sau để giải bài
        toán này:
    </p>
    <b>
        Chú trọng chất lượng của sản phẩm
    </b>
    <p>
        Lamer Fashion không chạy theo xu hướng thời trang nhanh, tập trung khai thác thiết kế mang nét đặc trưng của
        thương hiệu, đồng thời, đầu tư vào khâu sản xuất để nâng cao chất lượng sản phẩm. Bên cạnh đó, nhãn hàng đặt
        mục tiêu tạo ra sản phẩm thời trang có tính ứng dụng cao, có thể sử dụng lâu dài, giúp khách hàng cảm thấy
        thoải mái khi diện trang phục của thương hiệu. Ngoài ra, Lamer Fashion xây dựng hệ sinh thái thời trang đa
        dạng, tạo không gian mua sắm đáp ứng nhu cầu cho nhiều độ tuổi khách hàng. Theo đó, nhãn có 4 thương hiệu
        con: Lamer Fashion (trang phục công sở), Vien Tran (thời trang phong cách smart casual), LeH (thiết kế phong
        cách casual comfy & cute), She’s Back (đồ dự tiệc).
    </p>
    <b>
        Chủ động các khâu sản xuất
    </b>
    <p>
        Theo đại diện Lamer Fashion, sự đổ bộ của các nhãn hàng nước ngoài tạo ra không ít áp lực cho nhãn hàng. Tuy
        nhiên, đơn vị tận dụng lợi thế hiểu rõ văn hóa, vóc dáng của người Việt, nắm bắt thị hiếu..., từ đó, tạo thế
        chủ động trong các khâu, từ thiết kế, gia công đến tiêu thụ.
    </p>
    <p>
        "Nhờ đó, chúng tôi có thể đảm bảo sản phẩm đến tay người tiêu dùng có chất lượng tốt với mức giá phù hợp theo
        từng phân khúc", vị đại diện chia sẻ.
    </p>
    <p>
        Lamer Fashion xây dựng đội ngũ nhân sự lành nghề, có chuyên môn trong ngành may mặc để trực tiếp vận hành các
        công đoạn sản xuất. Song song, thương hiệu xây dựng riêng phòng phát triển sản phẩm, xưởng sản xuất quy mô
        lớn, có khả năng hoàn thiện hàng nghìn sản phẩm mỗi ngày, đáp ứng kịp thời nhu cầu của khách hàng. Cuối cùng,
        nhãn hàng đầu tư hệ thống kiểm soát chất lượng để đảm bảo sản phẩm đến tay khách hàng đúng tiêu chuẩn đề ra
        ban đầu.
    </p>
    <b>
        Bảo hành sản phẩm trong 365 ngày
    </b>
    <p>
        Lamer Fashion áp dụng chế độ bảo hành sản phẩm trong 365 ngày cho khách hàng. Theo đó, khách hàng có thể
        hưởng chính sách khi sản phẩm còn ít nhất một mác vải. Nhãn hàng nhận sửa chữa miễn phí đối với các yêu cầu
        không ảnh hưởng đến thiết kế của sản phẩm như cắt ngắn, thay khóa, bổ sung cúc, nới tối đa 4 cm...
    </p>
    <p>
        Ngoài ra, Lamer Fashion cũng hỗ trợ khách hàng sửa thiết kế với các chi tiết nhỏ hoặc sản phẩm đã quá bạn bảo
        hành với chi phí chỉ từ 20.000 đồng.
    </p>
    <p>
        Đại diện thương hiệu cho biết thêm, trong những năm tới, Lamer Fashion tiếp tục duy trì và phát triển những
        chiến lược này để củng cố và mở rộng năng lực nội tại trên thị trường thời trang Việt.
    </p>
</div>', 14, 'f', 28, 4, '2023-01-07', 'https://i1-giaitri.vnecdn.net/2022/12/28/image001-3355-1672202402.jpg?w=1020&h=0&q=100&dpr=1&fit=crop&s=pDGoS7gd4IZloGmcGYQaYQ');
INSERT INTO "public"."articles" OVERRIDING SYSTEM VALUE VALUES (99, 'Hoa giấy nở rộ trên đảo Cát Bà', 0, 'Những giàn hoa giấy màu hồng tím đang kỳ nở rộ, phủ kín ban công những căn phòng tại Flamingo Cát Bà.', '<div class="flex flex-col gap-y-2">
    <p>
        Những giàn hoa giấy màu hồng tím đang kỳ nở rộ, phủ kín ban công những căn phòng tại Flamingo Cát Bà.
    </p>
    <p>
        Đến Cát Bà những ngày này, du khách sẽ được chiêm ngưỡng những giàn hoa giấy đua sắc trong ánh nắng dịu nhẹ.
        Màu hoa phổ biến nhất tại đây thường là tím hồng và đỏ.
    </p>
    <p>
        Hoa giấy là giống cây ưa nắng, thường nở vào mùa hè, khi tiết trời ấm áp. Nhưng những năm gần đây, vào cả mùa
        đông, Cát Bà vẫn ngập tràn sắc hoa này, nổi bật giữa khung cảnh rừng biển hiền hòa. Chị Minh, một du khách
        đến từ Hà Nội cho biết rất ấn tượng khi cùng gia đình đến nghỉ dưỡng tại Flamingo Cát Bà, ngắm nhìn khung
        cảnh nên thơ của những giàn hoa giấy nở trái mùa. Tuy chỉ là một loài hoa được trồng phổ biến ở các đô thị
        lớn và ở ngay ngôi nhà chị đang sống, nhưng khi đặt trước khung cảnh rừng biển bao la tại vịnh Ánh Dương lại
        khiến chị có cảm giác rất khác lạ.
    </p>
    <img class="w-full h-full mt-2 rounded-lg" src="https://i1-dulich.vnecdn.net/2022/12/27/1a-4816-1672131447.jpg?w=1020&h=0&q=100&dpr=1&fit=crop&s=uIF1JdmVx84Fxq-p88eQ1Q" alt="">
    <p>
        "Trong phút chốc, tôi tạm quên rằng mình đang sống giữa những ngày cuối năm lạnh giá của mùa đông đất Bắc",
        chị Minh bày tỏ. Bên cạnh hoa giấy nở trái mùa, du khách tìm đến vịnh Ánh Dương còn được ngắm khung cảnh bình
        minh ấn tượng. Nơi đây phù hợp với những khách miền Bắc du lịch muốn đi du lịch nhưng ngại đường xa và lo
        lắng về chi phí đi lại đắt đỏ.
    </p>
    <p>
        Vịnh Ánh Dương là khu vực vịnh biển nằm trước 3 tòa nhà thuộc hệ sinh thái du lịch - nghỉ dưỡng Flamingo Cát
        Bà. Theo đại diện khu nghỉ dưỡng, tên gọi Ánh Dương xuất phát từ vị trí của vịnh biển, khi đây là nơi đón
        bình minh đầu tiên trên đảo. Đồng thời, trải nghiệm này cũng được các du khách đến Flamingo Cát Bà rất yêu
        thích thời gian vừa qua. "Du khách có thể thức dậy đón những tia nắng đầu tiên của ngày mới, hít thở không
        khí trong lành, lắng nghe những thanh âm của biển trời và thu vào tầm mắt trọn vẹn khung cảnh thiên nhiên.
        Đây sẽ là lựa chọn thú vị bên gia đình và người thân trong dịp cuối năm này", đại diện Flamingo Cát Bà cho hay.
    </p>
    <p>
        Để ngắm bình minh trên vịnh Ánh Dương, du khách có thể lựa chọn nhiều vị trí khác nhau. Theo chia sẻ của
        khách du lịch thì thuận tiện nhất vẫn là đứng ngay từ ban công của phòng nghỉ cao cấp hướng biển tại Flamingo
        Cát Bà. "Nơi đây có nhiều trải nghiệm đa dạng. Những ai đang cảm thấy mệt mỏi trước cuộc sống bận rộn, áp lực
        công việc và bỗng nhiên muốn có cảm giác được ''đi trốn'', hay đơn giản là muốn tìm một chỗ nghỉ dưỡng vào mùa
        đông thì vịnh Ánh Dương chắc chắn sẽ là một điểm đến đáng để thử", một du khách nói.
    </p>
</div>', 23, 'f', 28, 4, '2023-01-04', 'https://i1-dulich.vnecdn.net/2022/12/27/1a-4816-1672131447.jpg?w=1020&h=0&q=100&dpr=1&fit=crop&s=uIF1JdmVx84Fxq-p88eQ1Q');
INSERT INTO "public"."articles" OVERRIDING SYSTEM VALUE VALUES (104, '8 món Giáng sinh truyền thống', 0, 'Bánh mận, bánh quy gừng hay mì lá là những đồ ăn xuất hiện thường xuyên trong dịp Giáng sinh tại các quốc gia trên thế giới.', '<div class="flex flex-col gap-y-2">
    <p>
        Bánh mận, bánh quy gừng hay mì lá là những đồ ăn xuất hiện thường xuyên trong dịp Giáng sinh tại các quốc gia
        trên thế giới.
    </p>
    <b>
        Bánh mận
    </b>
    <p>
        Đây là một đặc sản Giáng sinh ở châu Âu, đặc biệt là Anh và Ireland. Bánh được làm bằng cách trộn trái cây
        khô, các loại hạt, một số loại gia vị làm ấm, ngâm trong nhiều ngày trong rượu mạnh rồi trộn với bột để tạo
        khuôn. Bánh mận truyền thống không có mận, người ta dùng nho khô và các loại quả mọng khác để thay thế.
    </p>
    <img class="w-full h-full mt-2 rounded-lg" src="https://i1-dulich.vnecdn.net/2022/12/24/1-2198-1671815308.jpg?w=1020&h=0&q=100&dpr=1&fit=crop&s=vuyRvbx_3ffK_feTgknufA" alt="">
    <b>
        Bánh quy gừng
    </b>
    <p>
        Làm món ăn được trẻ em các nước phương Tây thường ăn dịp lễ hội cuối năm. Món ăn này có nguồn gốc từ Hy Lạp
        và phục vụ trong các buổi nghi lễ quan trọng. Nguyên liệu làm bánh gồm gừng, bột mỳ, bột quế, đường, bơ. Tùy
        từng đầu bếp, bánh có thể gồm nhục đậu khấu, đinh hương xay nhuyễn để tăng thêm mùi vị. Trước đây, bánh gừng
        thường được bày bán ở tu viện, chợ địa phương với mục đích ăn cho ấm người, chữa bệnh. Ngày nay, nó phổ biến
        trong các hiệu bánh.
    </p>
    <b>
        Stollen
    </b>
    <p>
        Đây là một loại bánh mì ngọt, và là món ăn chính trong lễ Giáng sinh ở Đức. Loại bánh mỳ này khô, với ruột
        bên trong tơi thay vì mịn màng. Nhân bánh là các loại hạt, hạnh nhân, kẹo trái cây mang hương vị rượu rum. Vỏ
        ngoài bánh được phủ một lớp đường trắng.
    </p>
    <b>
        Bánh mì lá
    </b>
    <p>
        Loại bánh mì mỏng này rất phổ biến ở Iceland cho lễ Giáng sinh. Thông thường, bánh được làm với kích thước
        lớn để thực khách có thể xé ra khi ăn. Nguyên liệu làm bánh gồm: bột được cán mỏng, mịn rồi dùng khuôn rập
        hoa văn trang trí. Sau đó, bánh được chiên ngập dầu cho chín giòn.
    </p>
    <b>
        Kul kul
    </b>
    <p>
        Đây là món ăn thường thấy trong các gia đình người Ấn Độ dịp cuối năm. Chúng được làm từ bột, bơ, sữa, đường
        và phủ bên ngoài lớp đường đặc và được chiên giòn trong chảo dầu sôi. Món bánh có vỏ ngoài giòn, bên trong mềm.
    </p>
    <b>
        Eggnog
    </b>
    <p>
        Là một loại đổ uống được phục vụ phổ biến trong lễ Giáng sinh ở Mỹ. Nguyên liệu để làm nên thức uống này là
        sữa, đường, kem và trứng, dùng ngon nhất khi ướp lạnh.
    </p>
    <b>
        Bò hầm
    </b>
    <p>
        Ở Ireland, bạn sẽ luôn tìm thấy món hầm nóng này như một phần của lễ Giáng sinh. Theo truyền thống, món ăn 
        được ninh nhừ từ thịt cừu và các loại rau theo mùa.
    </p>
</div>', 24, 't', 15, 4, '2023-01-05', 'https://i1-dulich.vnecdn.net/2022/12/24/1-2198-1671815308.jpg?w=1020&h=0&q=100&dpr=1&fit=crop&s=vuyRvbx_3ffK_feTgknufA');
INSERT INTO "public"."articles" OVERRIDING SYSTEM VALUE VALUES (24, 'Thời điểm phát sinh trách nhiệm bảo hiểm từ lúc nào?', 2, 'Gia đình tôi mua bảo hiểm nhưng vẫn chưa thanh toán đủ tiền. Như vậy khi có vấn đề phát sinh, phía công ty bảo hiểm có chịu trách nhiệm bảo hiểm không? (Thu Phương, 30 tuổi)', '<div class="flex flex-col gap-y-2">
    <p>
        Gia đình tôi mua bảo hiểm nhưng vẫn chưa thanh toán đủ tiền. Như vậy khi có vấn đề phát sinh, phía công ty
        bảo hiểm có chịu trách nhiệm bảo hiểm không? (Thu Phương, 30 tuổi)
    </p>
    <b>
        Trả lời:
    </b>
    <p>
        Theo Luật Kinh doanh bảo hiểm, thời điểm phát sinh trách nhiệm bảo hiểm là một trong các trường hợp sau:
    </p>
    <p>
        Hợp đồng bảo hiểm đã được giao kết và bên mua bảo hiểm đã đóng đủ phí.
    </p>
    <img class="w-full h-full mt-2 rounded-lg" src="https://vcdn1-kinhdoanh.vnecdn.net/2021/10/14/GettyImages-1297366388-3116-1634201616.jpg?w=0&h=0&q=100&dpr=2&fit=crop&s=HlCCpxKBN2h5Vcoy-k5QiQ" alt="">
    <p>
        Hợp đồng bảo hiểm đã được giao kết, trong đó có thỏa thuận giữa doanh nghiệp bảo hiểm và bên mua về việc bên
        mua bảo hiểm nợ phí.
    </p>
    <p>
        Có bằng chứng về việc hợp đồng bảo hiểm đã được giao kết và bên mua bảo hiểm đã đóng đủ phí.
    </p>
    <p>
        Như vậy, trách nhiệm bảo hiểm sẽ phát sinh trong những trường hợp trên. Trong trường hợp của bạn, gia đình
        mua bảo hiểm và hiện tại chưa thanh toán xong, nhưng hai bên có giao kết về việc mua nợ phí bảo hiểm nên
        trách nhiệm bảo hiểm đã phát sinh.
    </p>
    <p>
        Khi sự kiện bảo hiểm xảy ra, doanh nghiệp bảo hiểm phải trả tiền cho người thụ hưởng hoặc bồi thường cho
        người được bảo hiểm. Trước đó, doanh nghiệp phải tiến hành xác định hiện trạng của đối tượng bảo hiểm để xác
        định tính chính xác của thông tin bên mua cung cấp. Đồng thời, cần xác định bên mua bảo hiểm có thực hiện
        đúng nghĩa vụ của mình trong việc áp dụng các biện pháp đề phòng, hạn chế tổn thất hay không.
    </p>
    <p>
        Việc xác định trên còn giúp doanh nghiệp bảo hiểm phần nào dự liệu được mức bồi thường hay số tiền phải thanh
        toán cho người mua bảo hiểm. Đồng thời tìm hiểu nguyên nhân gây ra sự kiện bảo hiểm, từ đó xác định rơi vào
        điều khoản loại trừ trách nhiệm bảo hiểm nào.
    </p>
</div>', 1, 'f', 15, 4, '2022-12-31', 'https://vcdn1-kinhdoanh.vnecdn.net/2021/10/14/GettyImages-1297366388-3116-1634201616.jpg?w=0&h=0&q=100&dpr=2&fit=crop&s=HlCCpxKBN2h5Vcoy-k5QiQ');

-- ----------------------------
-- Table structure for categories
-- ----------------------------
DROP TABLE IF EXISTS "public"."categories";
CREATE TABLE "public"."categories" (
  "catid" int4 NOT NULL GENERATED ALWAYS AS IDENTITY (
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1
),
  "catname" varchar(45) COLLATE "pg_catalog"."default" NOT NULL,
  "pcatid" int4 NOT NULL
)
;

-- ----------------------------
-- Records of categories
-- ----------------------------
INSERT INTO "public"."categories" OVERRIDING SYSTEM VALUE VALUES (1, 'Tin mới', 1);
INSERT INTO "public"."categories" OVERRIDING SYSTEM VALUE VALUES (2, 'Tin hot', 1);
INSERT INTO "public"."categories" OVERRIDING SYSTEM VALUE VALUES (3, 'Tin vắn trong ngày', 1);
INSERT INTO "public"."categories" OVERRIDING SYSTEM VALUE VALUES (4, 'Nông sản', 2);
INSERT INTO "public"."categories" OVERRIDING SYSTEM VALUE VALUES (5, 'Hải sản', 2);
INSERT INTO "public"."categories" OVERRIDING SYSTEM VALUE VALUES (6, 'Lâm sản', 2);
INSERT INTO "public"."categories" OVERRIDING SYSTEM VALUE VALUES (7, 'Bóng đá', 3);
INSERT INTO "public"."categories" OVERRIDING SYSTEM VALUE VALUES (8, 'Bóng rổ', 3);
INSERT INTO "public"."categories" OVERRIDING SYSTEM VALUE VALUES (9, 'Bóng chày', 3);
INSERT INTO "public"."categories" OVERRIDING SYSTEM VALUE VALUES (10, 'Cầu lông', 3);
INSERT INTO "public"."categories" OVERRIDING SYSTEM VALUE VALUES (11, 'Giới sao', 4);
INSERT INTO "public"."categories" OVERRIDING SYSTEM VALUE VALUES (12, 'Phim', 4);
INSERT INTO "public"."categories" OVERRIDING SYSTEM VALUE VALUES (13, 'Nhạc', 4);
INSERT INTO "public"."categories" OVERRIDING SYSTEM VALUE VALUES (14, 'Thời trang', 4);
INSERT INTO "public"."categories" OVERRIDING SYSTEM VALUE VALUES (15, 'Tin tức', 5);
INSERT INTO "public"."categories" OVERRIDING SYSTEM VALUE VALUES (16, 'Tuyển sinh', 5);
INSERT INTO "public"."categories" OVERRIDING SYSTEM VALUE VALUES (17, 'Chân dung', 5);
INSERT INTO "public"."categories" OVERRIDING SYSTEM VALUE VALUES (18, 'Du học', 5);
INSERT INTO "public"."categories" OVERRIDING SYSTEM VALUE VALUES (19, 'Nhịp sống', 6);
INSERT INTO "public"."categories" OVERRIDING SYSTEM VALUE VALUES (20, 'Tổ ấm', 6);
INSERT INTO "public"."categories" OVERRIDING SYSTEM VALUE VALUES (21, 'Bài học sống', 6);
INSERT INTO "public"."categories" OVERRIDING SYSTEM VALUE VALUES (22, 'Nhà', 6);
INSERT INTO "public"."categories" OVERRIDING SYSTEM VALUE VALUES (23, 'Điểm đến', 7);
INSERT INTO "public"."categories" OVERRIDING SYSTEM VALUE VALUES (24, 'Ẩm thực', 7);
INSERT INTO "public"."categories" OVERRIDING SYSTEM VALUE VALUES (25, 'Dấu chân', 7);
INSERT INTO "public"."categories" OVERRIDING SYSTEM VALUE VALUES (26, 'Tư vấn', 7);
INSERT INTO "public"."categories" OVERRIDING SYSTEM VALUE VALUES (27, 'Môi trường', 8);
INSERT INTO "public"."categories" OVERRIDING SYSTEM VALUE VALUES (28, 'Văn hóa', 8);
INSERT INTO "public"."categories" OVERRIDING SYSTEM VALUE VALUES (29, 'Chính trị', 8);
INSERT INTO "public"."categories" OVERRIDING SYSTEM VALUE VALUES (31, 'Covid 19', 8);

-- ----------------------------
-- Table structure for comments
-- ----------------------------
DROP TABLE IF EXISTS "public"."comments";
CREATE TABLE "public"."comments" (
  "commentid" int4 NOT NULL GENERATED ALWAYS AS IDENTITY (
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1
),
  "date" date NOT NULL,
  "articleid" int4 NOT NULL,
  "userid" int4 NOT NULL,
  "content" text COLLATE "pg_catalog"."default" NOT NULL
)
;

-- ----------------------------
-- Records of comments
-- ----------------------------
INSERT INTO "public"."comments" OVERRIDING SYSTEM VALUE VALUES (3, '2022-12-28', 2, 8, 'lorem ip sumlorem ip sumlorem ip sumlorem ip sumlorem ip sum');
INSERT INTO "public"."comments" OVERRIDING SYSTEM VALUE VALUES (12, '2023-01-09', 96, 13, 'xuanbinh');

-- ----------------------------
-- Table structure for editor_manage_categories
-- ----------------------------
DROP TABLE IF EXISTS "public"."editor_manage_categories";
CREATE TABLE "public"."editor_manage_categories" (
  "editorid" int4 NOT NULL,
  "catid" int4 NOT NULL
)
;

-- ----------------------------
-- Records of editor_manage_categories
-- ----------------------------

-- ----------------------------
-- Table structure for parent_categories
-- ----------------------------
DROP TABLE IF EXISTS "public"."parent_categories";
CREATE TABLE "public"."parent_categories" (
  "pCatID" int4 NOT NULL GENERATED ALWAYS AS IDENTITY (
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1
),
  "pCatName" varchar(45) COLLATE "pg_catalog"."default" NOT NULL
)
;

-- ----------------------------
-- Records of parent_categories
-- ----------------------------
INSERT INTO "public"."parent_categories" OVERRIDING SYSTEM VALUE VALUES (1, 'Trang chủ');
INSERT INTO "public"."parent_categories" OVERRIDING SYSTEM VALUE VALUES (2, 'Kinh doanh');
INSERT INTO "public"."parent_categories" OVERRIDING SYSTEM VALUE VALUES (3, 'Thể thao');
INSERT INTO "public"."parent_categories" OVERRIDING SYSTEM VALUE VALUES (4, 'Giải trí');
INSERT INTO "public"."parent_categories" OVERRIDING SYSTEM VALUE VALUES (5, 'Giáo dục');
INSERT INTO "public"."parent_categories" OVERRIDING SYSTEM VALUE VALUES (6, 'Đời sống');
INSERT INTO "public"."parent_categories" OVERRIDING SYSTEM VALUE VALUES (7, 'Du lịch');
INSERT INTO "public"."parent_categories" OVERRIDING SYSTEM VALUE VALUES (8, 'Góc nhìn');

-- ----------------------------
-- Table structure for roles
-- ----------------------------
DROP TABLE IF EXISTS "public"."roles";
CREATE TABLE "public"."roles" (
  "roleid" int4 NOT NULL GENERATED ALWAYS AS IDENTITY (
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1
),
  "rolename" varchar(45) COLLATE "pg_catalog"."default" NOT NULL
)
;

-- ----------------------------
-- Records of roles
-- ----------------------------
INSERT INTO "public"."roles" OVERRIDING SYSTEM VALUE VALUES (1, 'subcriber');
INSERT INTO "public"."roles" OVERRIDING SYSTEM VALUE VALUES (2, 'writter');
INSERT INTO "public"."roles" OVERRIDING SYSTEM VALUE VALUES (3, 'editor');
INSERT INTO "public"."roles" OVERRIDING SYSTEM VALUE VALUES (4, 'administrator');

-- ----------------------------
-- Table structure for status
-- ----------------------------
DROP TABLE IF EXISTS "public"."status";
CREATE TABLE "public"."status" (
  "statusid" int4 NOT NULL GENERATED ALWAYS AS IDENTITY (
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1
),
  "statusname" varchar(45) COLLATE "pg_catalog"."default" NOT NULL
)
;

-- ----------------------------
-- Records of status
-- ----------------------------
INSERT INTO "public"."status" OVERRIDING SYSTEM VALUE VALUES (1, 'Chưa được duyệt');
INSERT INTO "public"."status" OVERRIDING SYSTEM VALUE VALUES (3, 'Bị từ chối');
INSERT INTO "public"."status" OVERRIDING SYSTEM VALUE VALUES (2, 'Đã được duyệt & chờ xuất bản');
INSERT INTO "public"."status" OVERRIDING SYSTEM VALUE VALUES (4, 'Đã xuất bản');

-- ----------------------------
-- Table structure for tags
-- ----------------------------
DROP TABLE IF EXISTS "public"."tags";
CREATE TABLE "public"."tags" (
  "tagid" int4 NOT NULL GENERATED ALWAYS AS IDENTITY (
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1
),
  "tagname" varchar(45) COLLATE "pg_catalog"."default" NOT NULL
)
;

-- ----------------------------
-- Records of tags
-- ----------------------------
INSERT INTO "public"."tags" OVERRIDING SYSTEM VALUE VALUES (1, 'IT');
INSERT INTO "public"."tags" OVERRIDING SYSTEM VALUE VALUES (2, 'công nghệ');
INSERT INTO "public"."tags" OVERRIDING SYSTEM VALUE VALUES (3, 'tiền tệ');
INSERT INTO "public"."tags" OVERRIDING SYSTEM VALUE VALUES (4, 'nông nghiệp');
INSERT INTO "public"."tags" OVERRIDING SYSTEM VALUE VALUES (5, 'hàng hóa');
INSERT INTO "public"."tags" OVERRIDING SYSTEM VALUE VALUES (6, 'thực phẩm');
INSERT INTO "public"."tags" OVERRIDING SYSTEM VALUE VALUES (7, 'tiêu dùng');
INSERT INTO "public"."tags" OVERRIDING SYSTEM VALUE VALUES (8, 'sản xuất');
INSERT INTO "public"."tags" OVERRIDING SYSTEM VALUE VALUES (9, 'xuất khẩu');
INSERT INTO "public"."tags" OVERRIDING SYSTEM VALUE VALUES (10, 'nhập khẩu');
INSERT INTO "public"."tags" OVERRIDING SYSTEM VALUE VALUES (11, 'thủy sản');
INSERT INTO "public"."tags" OVERRIDING SYSTEM VALUE VALUES (12, 'trái cây');
INSERT INTO "public"."tags" OVERRIDING SYSTEM VALUE VALUES (13, 'lương thực');
INSERT INTO "public"."tags" OVERRIDING SYSTEM VALUE VALUES (14, 'hoa');
INSERT INTO "public"."tags" OVERRIDING SYSTEM VALUE VALUES (15, 'thực vật');
INSERT INTO "public"."tags" OVERRIDING SYSTEM VALUE VALUES (16, 'cây trồng');
INSERT INTO "public"."tags" OVERRIDING SYSTEM VALUE VALUES (17, 'cây rừng');
INSERT INTO "public"."tags" OVERRIDING SYSTEM VALUE VALUES (18, 'ngoài trời');
INSERT INTO "public"."tags" OVERRIDING SYSTEM VALUE VALUES (19, 'món ăn');
INSERT INTO "public"."tags" OVERRIDING SYSTEM VALUE VALUES (20, 'đồ dùng');
INSERT INTO "public"."tags" OVERRIDING SYSTEM VALUE VALUES (21, 'tai nạn');
INSERT INTO "public"."tags" OVERRIDING SYSTEM VALUE VALUES (22, 'Hà Nội');
INSERT INTO "public"."tags" OVERRIDING SYSTEM VALUE VALUES (23, 'TP HCM');
INSERT INTO "public"."tags" OVERRIDING SYSTEM VALUE VALUES (24, 'Nhà nước');
INSERT INTO "public"."tags" OVERRIDING SYSTEM VALUE VALUES (25, 'phim ảnh');
INSERT INTO "public"."tags" OVERRIDING SYSTEM VALUE VALUES (27, 'âm nhạc');
INSERT INTO "public"."tags" OVERRIDING SYSTEM VALUE VALUES (28, 'nghệ sĩ Việt');
INSERT INTO "public"."tags" OVERRIDING SYSTEM VALUE VALUES (29, 'showbiz Việt');
INSERT INTO "public"."tags" OVERRIDING SYSTEM VALUE VALUES (30, 'sinh tồn');
INSERT INTO "public"."tags" OVERRIDING SYSTEM VALUE VALUES (26, 'Phim nước ngoài');
INSERT INTO "public"."tags" OVERRIDING SYSTEM VALUE VALUES (32, 'tình yêu');
INSERT INTO "public"."tags" OVERRIDING SYSTEM VALUE VALUES (33, 'tài chính');
INSERT INTO "public"."tags" OVERRIDING SYSTEM VALUE VALUES (34, 'Áo dài');
INSERT INTO "public"."tags" OVERRIDING SYSTEM VALUE VALUES (35, 'thời trang');
INSERT INTO "public"."tags" OVERRIDING SYSTEM VALUE VALUES (36, 'nhà thiết kế');
INSERT INTO "public"."tags" OVERRIDING SYSTEM VALUE VALUES (37, 'người nổi tiếng');
INSERT INTO "public"."tags" OVERRIDING SYSTEM VALUE VALUES (38, 'xây dựng');
INSERT INTO "public"."tags" OVERRIDING SYSTEM VALUE VALUES (39, 'giao thông');
INSERT INTO "public"."tags" OVERRIDING SYSTEM VALUE VALUES (40, 'thương mại');
INSERT INTO "public"."tags" OVERRIDING SYSTEM VALUE VALUES (41, 'bảo hiểm');
INSERT INTO "public"."tags" OVERRIDING SYSTEM VALUE VALUES (31, 'thế giới');
INSERT INTO "public"."tags" OVERRIDING SYSTEM VALUE VALUES (42, 'pháp luật');
INSERT INTO "public"."tags" OVERRIDING SYSTEM VALUE VALUES (43, 'bóng đá');
INSERT INTO "public"."tags" OVERRIDING SYSTEM VALUE VALUES (44, 'thể thao');
INSERT INTO "public"."tags" OVERRIDING SYSTEM VALUE VALUES (45, 'thời sự');
INSERT INTO "public"."tags" OVERRIDING SYSTEM VALUE VALUES (46, 'bóng rổ');
INSERT INTO "public"."tags" OVERRIDING SYSTEM VALUE VALUES (47, 'bóng chày');
INSERT INTO "public"."tags" OVERRIDING SYSTEM VALUE VALUES (48, 'cầu lông');
INSERT INTO "public"."tags" OVERRIDING SYSTEM VALUE VALUES (49, 'giáo dục');
INSERT INTO "public"."tags" OVERRIDING SYSTEM VALUE VALUES (50, 'đại học');
INSERT INTO "public"."tags" OVERRIDING SYSTEM VALUE VALUES (51, 'du học');
INSERT INTO "public"."tags" OVERRIDING SYSTEM VALUE VALUES (52, 'tuyển sinh');
INSERT INTO "public"."tags" OVERRIDING SYSTEM VALUE VALUES (53, 'nhịp sống');
INSERT INTO "public"."tags" OVERRIDING SYSTEM VALUE VALUES (54, 'iphone');
INSERT INTO "public"."tags" OVERRIDING SYSTEM VALUE VALUES (55, 'gia đình');
INSERT INTO "public"."tags" OVERRIDING SYSTEM VALUE VALUES (56, 'lối sống');
INSERT INTO "public"."tags" OVERRIDING SYSTEM VALUE VALUES (57, 'kiến trúc');
INSERT INTO "public"."tags" OVERRIDING SYSTEM VALUE VALUES (58, 'du lịch');
INSERT INTO "public"."tags" OVERRIDING SYSTEM VALUE VALUES (59, 'lễ');
INSERT INTO "public"."tags" OVERRIDING SYSTEM VALUE VALUES (60, 'ẩm thực');
INSERT INTO "public"."tags" OVERRIDING SYSTEM VALUE VALUES (61, 'môi trường');
INSERT INTO "public"."tags" OVERRIDING SYSTEM VALUE VALUES (62, 'văn hóa');
INSERT INTO "public"."tags" OVERRIDING SYSTEM VALUE VALUES (63, 'covid 19');
INSERT INTO "public"."tags" OVERRIDING SYSTEM VALUE VALUES (64, 'góc nhìn');

-- ----------------------------
-- Table structure for tags_has_articles
-- ----------------------------
DROP TABLE IF EXISTS "public"."tags_has_articles";
CREATE TABLE "public"."tags_has_articles" (
  "tagid" int4 NOT NULL,
  "articleid" int4 NOT NULL
)
;

-- ----------------------------
-- Records of tags_has_articles
-- ----------------------------
INSERT INTO "public"."tags_has_articles" VALUES (1, 2);
INSERT INTO "public"."tags_has_articles" VALUES (2, 2);
INSERT INTO "public"."tags_has_articles" VALUES (3, 2);
INSERT INTO "public"."tags_has_articles" VALUES (1, 9);
INSERT INTO "public"."tags_has_articles" VALUES (22, 5);
INSERT INTO "public"."tags_has_articles" VALUES (24, 5);
INSERT INTO "public"."tags_has_articles" VALUES (25, 7);
INSERT INTO "public"."tags_has_articles" VALUES (26, 7);
INSERT INTO "public"."tags_has_articles" VALUES (27, 9);
INSERT INTO "public"."tags_has_articles" VALUES (28, 9);
INSERT INTO "public"."tags_has_articles" VALUES (29, 9);
INSERT INTO "public"."tags_has_articles" VALUES (30, 25);
INSERT INTO "public"."tags_has_articles" VALUES (31, 25);
INSERT INTO "public"."tags_has_articles" VALUES (25, 8);
INSERT INTO "public"."tags_has_articles" VALUES (26, 8);
INSERT INTO "public"."tags_has_articles" VALUES (32, 8);
INSERT INTO "public"."tags_has_articles" VALUES (33, 11);
INSERT INTO "public"."tags_has_articles" VALUES (33, 11);
INSERT INTO "public"."tags_has_articles" VALUES (34, 12);
INSERT INTO "public"."tags_has_articles" VALUES (35, 12);
INSERT INTO "public"."tags_has_articles" VALUES (35, 13);
INSERT INTO "public"."tags_has_articles" VALUES (31, 13);
INSERT INTO "public"."tags_has_articles" VALUES (35, 15);
INSERT INTO "public"."tags_has_articles" VALUES (36, 15);
INSERT INTO "public"."tags_has_articles" VALUES (37, 18);
INSERT INTO "public"."tags_has_articles" VALUES (31, 18);
INSERT INTO "public"."tags_has_articles" VALUES (37, 19);
INSERT INTO "public"."tags_has_articles" VALUES (31, 19);
INSERT INTO "public"."tags_has_articles" VALUES (37, 21);
INSERT INTO "public"."tags_has_articles" VALUES (31, 21);
INSERT INTO "public"."tags_has_articles" VALUES (32, 21);
INSERT INTO "public"."tags_has_articles" VALUES (24, 22);
INSERT INTO "public"."tags_has_articles" VALUES (38, 22);
INSERT INTO "public"."tags_has_articles" VALUES (39, 22);
INSERT INTO "public"."tags_has_articles" VALUES (5, 23);
INSERT INTO "public"."tags_has_articles" VALUES (9, 23);
INSERT INTO "public"."tags_has_articles" VALUES (40, 23);
INSERT INTO "public"."tags_has_articles" VALUES (41, 24);
INSERT INTO "public"."tags_has_articles" VALUES (31, 28);
INSERT INTO "public"."tags_has_articles" VALUES (42, 29);
INSERT INTO "public"."tags_has_articles" VALUES (43, 30);
INSERT INTO "public"."tags_has_articles" VALUES (44, 30);
INSERT INTO "public"."tags_has_articles" VALUES (42, 32);
INSERT INTO "public"."tags_has_articles" VALUES (43, 36);
INSERT INTO "public"."tags_has_articles" VALUES (44, 36);
INSERT INTO "public"."tags_has_articles" VALUES (42, 38);
INSERT INTO "public"."tags_has_articles" VALUES (22, 39);
INSERT INTO "public"."tags_has_articles" VALUES (45, 39);
INSERT INTO "public"."tags_has_articles" VALUES (4, 40);
INSERT INTO "public"."tags_has_articles" VALUES (6, 40);
INSERT INTO "public"."tags_has_articles" VALUES (7, 40);
INSERT INTO "public"."tags_has_articles" VALUES (5, 41);
INSERT INTO "public"."tags_has_articles" VALUES (4, 42);
INSERT INTO "public"."tags_has_articles" VALUES (4, 42);
INSERT INTO "public"."tags_has_articles" VALUES (9, 42);
INSERT INTO "public"."tags_has_articles" VALUES (9, 42);
INSERT INTO "public"."tags_has_articles" VALUES (11, 43);
INSERT INTO "public"."tags_has_articles" VALUES (42, 43);
INSERT INTO "public"."tags_has_articles" VALUES (11, 44);
INSERT INTO "public"."tags_has_articles" VALUES (9, 44);
INSERT INTO "public"."tags_has_articles" VALUES (11, 45);
INSERT INTO "public"."tags_has_articles" VALUES (17, 46);
INSERT INTO "public"."tags_has_articles" VALUES (40, 46);
INSERT INTO "public"."tags_has_articles" VALUES (17, 47);
INSERT INTO "public"."tags_has_articles" VALUES (8, 47);
INSERT INTO "public"."tags_has_articles" VALUES (17, 48);
INSERT INTO "public"."tags_has_articles" VALUES (42, 48);
INSERT INTO "public"."tags_has_articles" VALUES (17, 50);
INSERT INTO "public"."tags_has_articles" VALUES (43, 51);
INSERT INTO "public"."tags_has_articles" VALUES (37, 51);
INSERT INTO "public"."tags_has_articles" VALUES (44, 51);
INSERT INTO "public"."tags_has_articles" VALUES (43, 52);
INSERT INTO "public"."tags_has_articles" VALUES (44, 52);
INSERT INTO "public"."tags_has_articles" VALUES (43, 53);
INSERT INTO "public"."tags_has_articles" VALUES (44, 53);
INSERT INTO "public"."tags_has_articles" VALUES (43, 55);
INSERT INTO "public"."tags_has_articles" VALUES (44, 55);
INSERT INTO "public"."tags_has_articles" VALUES (46, 58);
INSERT INTO "public"."tags_has_articles" VALUES (44, 58);
INSERT INTO "public"."tags_has_articles" VALUES (46, 59);
INSERT INTO "public"."tags_has_articles" VALUES (44, 59);
INSERT INTO "public"."tags_has_articles" VALUES (44, 60);
INSERT INTO "public"."tags_has_articles" VALUES (46, 60);
INSERT INTO "public"."tags_has_articles" VALUES (47, 61);
INSERT INTO "public"."tags_has_articles" VALUES (44, 61);
INSERT INTO "public"."tags_has_articles" VALUES (47, 62);
INSERT INTO "public"."tags_has_articles" VALUES (44, 62);
INSERT INTO "public"."tags_has_articles" VALUES (45, 62);
INSERT INTO "public"."tags_has_articles" VALUES (45, 63);
INSERT INTO "public"."tags_has_articles" VALUES (47, 63);
INSERT INTO "public"."tags_has_articles" VALUES (21, 39);
INSERT INTO "public"."tags_has_articles" VALUES (48, 64);
INSERT INTO "public"."tags_has_articles" VALUES (44, 64);
INSERT INTO "public"."tags_has_articles" VALUES (48, 66);
INSERT INTO "public"."tags_has_articles" VALUES (44, 66);
INSERT INTO "public"."tags_has_articles" VALUES (31, 66);
INSERT INTO "public"."tags_has_articles" VALUES (45, 68);
INSERT INTO "public"."tags_has_articles" VALUES (50, 68);
INSERT INTO "public"."tags_has_articles" VALUES (45, 70);
INSERT INTO "public"."tags_has_articles" VALUES (45, 69);
INSERT INTO "public"."tags_has_articles" VALUES (51, 69);
INSERT INTO "public"."tags_has_articles" VALUES (49, 70);
INSERT INTO "public"."tags_has_articles" VALUES (50, 71);
INSERT INTO "public"."tags_has_articles" VALUES (50, 72);
INSERT INTO "public"."tags_has_articles" VALUES (52, 72);
INSERT INTO "public"."tags_has_articles" VALUES (50, 73);
INSERT INTO "public"."tags_has_articles" VALUES (52, 73);
INSERT INTO "public"."tags_has_articles" VALUES (50, 74);
INSERT INTO "public"."tags_has_articles" VALUES (52, 74);
INSERT INTO "public"."tags_has_articles" VALUES (49, 76);
INSERT INTO "public"."tags_has_articles" VALUES (51, 76);
INSERT INTO "public"."tags_has_articles" VALUES (51, 77);
INSERT INTO "public"."tags_has_articles" VALUES (51, 77);
INSERT INTO "public"."tags_has_articles" VALUES (49, 78);
INSERT INTO "public"."tags_has_articles" VALUES (49, 79);
INSERT INTO "public"."tags_has_articles" VALUES (51, 79);
INSERT INTO "public"."tags_has_articles" VALUES (53, 81);
INSERT INTO "public"."tags_has_articles" VALUES (54, 81);
INSERT INTO "public"."tags_has_articles" VALUES (53, 82);
INSERT INTO "public"."tags_has_articles" VALUES (53, 83);
INSERT INTO "public"."tags_has_articles" VALUES (55, 84);
INSERT INTO "public"."tags_has_articles" VALUES (55, 86);
INSERT INTO "public"."tags_has_articles" VALUES (33, 86);
INSERT INTO "public"."tags_has_articles" VALUES (32, 87);
INSERT INTO "public"."tags_has_articles" VALUES (56, 88);
INSERT INTO "public"."tags_has_articles" VALUES (56, 89);
INSERT INTO "public"."tags_has_articles" VALUES (57, 91);
INSERT INTO "public"."tags_has_articles" VALUES (57, 92);
INSERT INTO "public"."tags_has_articles" VALUES (58, 93);
INSERT INTO "public"."tags_has_articles" VALUES (45, 93);
INSERT INTO "public"."tags_has_articles" VALUES (58, 96);
INSERT INTO "public"."tags_has_articles" VALUES (58, 99);
INSERT INTO "public"."tags_has_articles" VALUES (58, 101);
INSERT INTO "public"."tags_has_articles" VALUES (11, 101);
INSERT INTO "public"."tags_has_articles" VALUES (59, 102);
INSERT INTO "public"."tags_has_articles" VALUES (60, 102);
INSERT INTO "public"."tags_has_articles" VALUES (59, 104);
INSERT INTO "public"."tags_has_articles" VALUES (60, 104);
INSERT INTO "public"."tags_has_articles" VALUES (58, 105);
INSERT INTO "public"."tags_has_articles" VALUES (58, 106);
INSERT INTO "public"."tags_has_articles" VALUES (31, 106);
INSERT INTO "public"."tags_has_articles" VALUES (58, 107);
INSERT INTO "public"."tags_has_articles" VALUES (42, 107);
INSERT INTO "public"."tags_has_articles" VALUES (59, 108);
INSERT INTO "public"."tags_has_articles" VALUES (64, 112);
INSERT INTO "public"."tags_has_articles" VALUES (61, 112);
INSERT INTO "public"."tags_has_articles" VALUES (64, 113);
INSERT INTO "public"."tags_has_articles" VALUES (61, 113);
INSERT INTO "public"."tags_has_articles" VALUES (64, 114);
INSERT INTO "public"."tags_has_articles" VALUES (61, 114);
INSERT INTO "public"."tags_has_articles" VALUES (64, 115);
INSERT INTO "public"."tags_has_articles" VALUES (62, 115);
INSERT INTO "public"."tags_has_articles" VALUES (64, 116);
INSERT INTO "public"."tags_has_articles" VALUES (62, 116);
INSERT INTO "public"."tags_has_articles" VALUES (64, 118);
INSERT INTO "public"."tags_has_articles" VALUES (62, 118);
INSERT INTO "public"."tags_has_articles" VALUES (63, 119);
INSERT INTO "public"."tags_has_articles" VALUES (64, 119);
INSERT INTO "public"."tags_has_articles" VALUES (63, 120);
INSERT INTO "public"."tags_has_articles" VALUES (64, 120);
INSERT INTO "public"."tags_has_articles" VALUES (43, 121);
INSERT INTO "public"."tags_has_articles" VALUES (44, 121);

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS "public"."users";
CREATE TABLE "public"."users" (
  "userid" int4 NOT NULL GENERATED ALWAYS AS IDENTITY (
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1
),
  "username" varchar(45) COLLATE "pg_catalog"."default" NOT NULL,
  "password" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "firstname" varchar(45) COLLATE "pg_catalog"."default" NOT NULL,
  "lastname" varchar(45) COLLATE "pg_catalog"."default",
  "issueat" date NOT NULL,
  "roleid" int4 NOT NULL,
  "dob" date,
  "email" varchar(45) COLLATE "pg_catalog"."default" NOT NULL,
  "otp" varchar(45) COLLATE "pg_catalog"."default",
  "otp_exp" date,
  "expiration" int4 NOT NULL
)
;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO "public"."users" OVERRIDING SYSTEM VALUE VALUES (9, 'hoangnam', '$2a$10$GH5V71uRJnT.bQnkI3uLMOwjVfAXoV/KB1hLoj48WRwZn7J0D4nvG', 'Hoang Nam', NULL, '2022-12-31', 1, NULL, 'hoangnam', NULL, NULL, 10080);
INSERT INTO "public"."users" OVERRIDING SYSTEM VALUE VALUES (11, 'thanhlam', '$2a$10$WlvDbhROrR1gNtxhZy03Ie9mqdX7j/SvoJA86wXonK/tur9I.BywO', 'Thanhlam', NULL, '2022-12-31', 1, NULL, 'thanhlam', NULL, NULL, 10080);
INSERT INTO "public"."users" OVERRIDING SYSTEM VALUE VALUES (12, 'thucquyen', '$2a$10$MFfzp.JrOJqY0Dgpb3tKFO7Npi/0YdWzuwPwoVUNpR8EU3qjUlP72', 'ThucQuyen', NULL, '2022-12-31', 1, NULL, 'thucquyen', NULL, NULL, 10080);
INSERT INTO "public"."users" OVERRIDING SYSTEM VALUE VALUES (10, 'thephuc', '$2a$10$HO9LdQxUCZXVY77HfNdp/er3TRLH/R5Qlgf2m9NQd9tOiANsyKVXe', 'ThePhuc', NULL, '2022-12-31', 1, NULL, 'thephuc', NULL, NULL, 10080);
INSERT INTO "public"."users" OVERRIDING SYSTEM VALUE VALUES (15, 'minhky', '$2a$10$/BBenVD0xIOUezigGTgg9ex.jjzTgXcb.1HuF32HJUvKhEbAHPNqO', 'MinhKy', NULL, '2022-12-31', 2, NULL, 'minhky', NULL, NULL, 10080);
INSERT INTO "public"."users" OVERRIDING SYSTEM VALUE VALUES (16, 'trieuvy', '$2a$10$2m4lNZtfVsNdfwm/xsquNOChxl973dzge6ph6ZWt15cjyNfPp2y4.', 'TrieuVy', NULL, '2022-12-31', 2, NULL, 'trieuvy', NULL, NULL, 10080);
INSERT INTO "public"."users" OVERRIDING SYSTEM VALUE VALUES (18, 'baouyen', '$2a$10$YrrigiEawKygybAy9h.DeuF2iksFdYjxgJc7QHlwxxznTqEihwv6G', 'BaoUyen', NULL, '2022-12-31', 2, NULL, 'baouyen', NULL, NULL, 10080);
INSERT INTO "public"."users" OVERRIDING SYSTEM VALUE VALUES (27, 'phuongnhi', '$2a$10$w67SK2YKsKeuWxknJZAsEO.fYkkRUq9OL0ocf2uJC938gOxCKnp6q', 'PhuongNhi', NULL, '2022-12-31', 2, NULL, 'phuongnhi', NULL, NULL, 10080);
INSERT INTO "public"."users" OVERRIDING SYSTEM VALUE VALUES (28, 'nguyetanh', '$2a$10$3ZY7ot5SZRxYBVxjQGGOAeSgYjn/Lj8o5Dl6h0fX254F3AIGecY0G', 'NguyetAnh', NULL, '2022-12-31', 2, NULL, 'nguyetanh', NULL, NULL, 10080);
INSERT INTO "public"."users" OVERRIDING SYSTEM VALUE VALUES (8, 'admin', '$2a$10$vSlnmQwYXBrthOwAttq3GuehB5lHRmir4SybiXf7iAHRVeMI5DxYm', 'Nhat', NULL, '2022-12-28', 4, NULL, 'admin', NULL, NULL, 10080);
INSERT INTO "public"."users" OVERRIDING SYSTEM VALUE VALUES (13, 'xuanbinh', '$2a$10$7bBCM7YgGPC759fj0r0H3eL24KbJraXqLU.7fKj5plaBgJRc1UTW2', 'XuanBinh', 'Binh Xuan', '2022-12-31', 1, '2022-11-21', 'xuanbinh', NULL, NULL, 10080);
INSERT INTO "public"."users" OVERRIDING SYSTEM VALUE VALUES (44, 'hoangminh', '$2a$10$HRh87iQHlKgvpuIIc.x2W..oapEJNBl3ShT67I0rWZWP6L7Mz1v52', 'HoangMinh', NULL, '2023-01-09', 3, NULL, 'hoangminh@gmail.com', NULL, NULL, 10080);
INSERT INTO "public"."users" OVERRIDING SYSTEM VALUE VALUES (45, 'lamuyen', '$2a$10$5QI3vlGmihoWIwUFWCv8Y.XBZJczEki83.cUytnD6K/DEFQnNaOGq', 'LamUyen', NULL, '2023-01-09', 3, NULL, 'lamuyen@gmail.com', NULL, NULL, 10080);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."articles_articleid_seq"
OWNED BY "public"."articles"."articleid";
SELECT setval('"public"."articles_articleid_seq"', 131, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."categories_catID_seq"
OWNED BY "public"."categories"."catid";
SELECT setval('"public"."categories_catID_seq"', 31, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."comments_commentid_seq"
OWNED BY "public"."comments"."commentid";
SELECT setval('"public"."comments_commentid_seq"', 12, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."parent_categories_pCatID_seq"
OWNED BY "public"."parent_categories"."pCatID";
SELECT setval('"public"."parent_categories_pCatID_seq"', 8, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."roles_roleid_seq"
OWNED BY "public"."roles"."roleid";
SELECT setval('"public"."roles_roleid_seq"', 4, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."status_statusid_seq"
OWNED BY "public"."status"."statusid";
SELECT setval('"public"."status_statusid_seq"', 4, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."tags_tagid_seq"
OWNED BY "public"."tags"."tagid";
SELECT setval('"public"."tags_tagid_seq"', 64, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."users_id_seq"
OWNED BY "public"."users"."userid";
SELECT setval('"public"."users_id_seq"', 45, true);

-- ----------------------------
-- Auto increment value for articles
-- ----------------------------
SELECT setval('"public"."articles_articleid_seq"', 131, true);

-- ----------------------------
-- Primary Key structure for table articles
-- ----------------------------
ALTER TABLE "public"."articles" ADD CONSTRAINT "articles_pkey" PRIMARY KEY ("articleid");

-- ----------------------------
-- Auto increment value for categories
-- ----------------------------
SELECT setval('"public"."categories_catID_seq"', 31, true);

-- ----------------------------
-- Primary Key structure for table categories
-- ----------------------------
ALTER TABLE "public"."categories" ADD CONSTRAINT "categories_pkey" PRIMARY KEY ("catid");

-- ----------------------------
-- Auto increment value for comments
-- ----------------------------
SELECT setval('"public"."comments_commentid_seq"', 12, true);

-- ----------------------------
-- Primary Key structure for table comments
-- ----------------------------
ALTER TABLE "public"."comments" ADD CONSTRAINT "comments_pkey" PRIMARY KEY ("commentid");

-- ----------------------------
-- Auto increment value for parent_categories
-- ----------------------------
SELECT setval('"public"."parent_categories_pCatID_seq"', 8, true);

-- ----------------------------
-- Primary Key structure for table parent_categories
-- ----------------------------
ALTER TABLE "public"."parent_categories" ADD CONSTRAINT "parent_categories_pkey" PRIMARY KEY ("pCatID");

-- ----------------------------
-- Auto increment value for roles
-- ----------------------------
SELECT setval('"public"."roles_roleid_seq"', 4, true);

-- ----------------------------
-- Primary Key structure for table roles
-- ----------------------------
ALTER TABLE "public"."roles" ADD CONSTRAINT "roles_pkey" PRIMARY KEY ("roleid");

-- ----------------------------
-- Auto increment value for status
-- ----------------------------
SELECT setval('"public"."status_statusid_seq"', 4, true);

-- ----------------------------
-- Primary Key structure for table status
-- ----------------------------
ALTER TABLE "public"."status" ADD CONSTRAINT "status_pkey" PRIMARY KEY ("statusid");

-- ----------------------------
-- Auto increment value for tags
-- ----------------------------
SELECT setval('"public"."tags_tagid_seq"', 64, true);

-- ----------------------------
-- Primary Key structure for table tags
-- ----------------------------
ALTER TABLE "public"."tags" ADD CONSTRAINT "tags_pkey" PRIMARY KEY ("tagid");

-- ----------------------------
-- Auto increment value for users
-- ----------------------------
SELECT setval('"public"."users_id_seq"', 45, true);

-- ----------------------------
-- Primary Key structure for table users
-- ----------------------------
ALTER TABLE "public"."users" ADD CONSTRAINT "users_pkey" PRIMARY KEY ("userid");

-- ----------------------------
-- Foreign Keys structure for table articles
-- ----------------------------
ALTER TABLE "public"."articles" ADD CONSTRAINT "catid" FOREIGN KEY ("catid") REFERENCES "public"."categories" ("catid") ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE "public"."articles" ADD CONSTRAINT "statusid" FOREIGN KEY ("statusid") REFERENCES "public"."status" ("statusid") ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE "public"."articles" ADD CONSTRAINT "userid" FOREIGN KEY ("writterid") REFERENCES "public"."users" ("userid") ON DELETE CASCADE ON UPDATE CASCADE;

-- ----------------------------
-- Foreign Keys structure for table categories
-- ----------------------------
ALTER TABLE "public"."categories" ADD CONSTRAINT "pCatID" FOREIGN KEY ("pcatid") REFERENCES "public"."parent_categories" ("pCatID") ON DELETE CASCADE ON UPDATE CASCADE;

-- ----------------------------
-- Foreign Keys structure for table comments
-- ----------------------------
ALTER TABLE "public"."comments" ADD CONSTRAINT "userid" FOREIGN KEY ("userid") REFERENCES "public"."users" ("userid") ON DELETE CASCADE ON UPDATE CASCADE;

-- ----------------------------
-- Foreign Keys structure for table editor_manage_categories
-- ----------------------------
ALTER TABLE "public"."editor_manage_categories" ADD CONSTRAINT "catid" FOREIGN KEY ("catid") REFERENCES "public"."categories" ("catid") ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE "public"."editor_manage_categories" ADD CONSTRAINT "editorid" FOREIGN KEY ("editorid") REFERENCES "public"."users" ("userid") ON DELETE CASCADE ON UPDATE CASCADE;

-- ----------------------------
-- Foreign Keys structure for table tags_has_articles
-- ----------------------------
ALTER TABLE "public"."tags_has_articles" ADD CONSTRAINT "articleid" FOREIGN KEY ("articleid") REFERENCES "public"."articles" ("articleid") ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE "public"."tags_has_articles" ADD CONSTRAINT "tagid" FOREIGN KEY ("tagid") REFERENCES "public"."tags" ("tagid") ON DELETE CASCADE ON UPDATE CASCADE;

-- ----------------------------
-- Foreign Keys structure for table users
-- ----------------------------
ALTER TABLE "public"."users" ADD CONSTRAINT "roleid" FOREIGN KEY ("roleid") REFERENCES "public"."roles" ("roleid") ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE comments
ALTER commentid DROP IDENTITY;

ALTER TABLE comments
ALTER commentid ADD GENERATED ALWAYS AS IDENTITY 
	(START WITH 11);
	
ALTER TABLE articles 
ALTER articleid DROP IDENTITY;

ALTER TABLE articles
ALTER articleid ADD GENERATED ALWAYS AS IDENTITY
	(START WITH 132);
	
ALTER TABLE categories 
ALTER catid DROP IDENTITY;

ALTER TABLE categories
ALTER catid ADD GENERATED ALWAYS AS IDENTITY
	(START WITH 32);

/*ALTER TABLE parent_categories 
ALTER pCatID DROP IDENTITY;

ALTER TABLE parent_categories 
ALTER pCatID ADD GENERATED ALWAYS AS IDENTITY
	(START WITH 9);*/
	
ALTER TABLE roles 
ALTER roleid DROP IDENTITY;

ALTER TABLE roles
ALTER roleid ADD GENERATED ALWAYS AS IDENTITY
	(START WITH 5);
	
ALTER TABLE status 
ALTER statusid DROP IDENTITY;

ALTER TABLE status
ALTER statusid ADD GENERATED ALWAYS AS IDENTITY
	(START WITH 5);
	
ALTER TABLE tags 
ALTER tagid DROP IDENTITY;

ALTER TABLE tags
ALTER tagid ADD GENERATED ALWAYS AS IDENTITY
	(START WITH 65);
	
ALTER TABLE users 
ALTER userid DROP IDENTITY;

ALTER TABLE users
ALTER userid ADD GENERATED ALWAYS AS IDENTITY
	(START WITH 46);
