-- ข้อมูลบุคลากร 16 คน ที่ฝ่ายบุคลากรส่งมา (ครูให้ ไม่ต้องพิมพ์เอง)
-- วิธีใช้: คัดลอกทั้งไฟล์ไปวางต่อท้าย database/evaluation_db.sql ของตัวเอง
--         ต้องอยู่หลัง INSERT ของ departments และ academic_ranks เพราะอ้างเลข id ของ 2 ตารางนั้น
-- department_id: 1 เทคโนโลยีสารสนเทศ, 2 การบัญชี, 3 การตลาด, 4 ช่างไฟฟ้ากำลัง, 5 ช่างยนต์
-- academic_rank_id: 1 ครูผู้ช่วย ... 6 ครูเชี่ยวชาญพิเศษ (ตามลำดับในใบงาน)
-- password_hash คือรหัสผ่าน 1234 ที่เข้ารหัสแล้ว (bcrypt) ใช้ตอน login สัปดาห์ 7

INSERT INTO users (email, password_hash, full_name, role, department_id, academic_rank_id, position, phone) VALUES
('somchai@college.ac.th', '$2b$10$CEHLjBAO50NJ.3gfOip1nejJfPrsnqVUPFA5M4lgMIm1F1o1vOMOm', 'นายสมชาย รักสอน', 'evaluatee', 1, 3, 'ครูชำนาญการ', '0820000001'),
('suda@college.ac.th', '$2b$10$CEHLjBAO50NJ.3gfOip1nejJfPrsnqVUPFA5M4lgMIm1F1o1vOMOm', 'นางสุดา มีสุข', 'evaluatee', 2, 2, 'ครู', '0820000002'),
('preecha@college.ac.th', '$2b$10$CEHLjBAO50NJ.3gfOip1nejJfPrsnqVUPFA5M4lgMIm1F1o1vOMOm', 'นายปรีชา ช่างคิด', 'evaluatee', 4, 4, 'ครูชำนาญการพิเศษ', '0820000003'),
('napa@college.ac.th', '$2b$10$CEHLjBAO50NJ.3gfOip1nejJfPrsnqVUPFA5M4lgMIm1F1o1vOMOm', 'นางสาวนภา แสงทอง', 'evaluatee', 3, 1, 'ครูผู้ช่วย', '0820000004'),
('wichai@college.ac.th', '$2b$10$CEHLjBAO50NJ.3gfOip1nejJfPrsnqVUPFA5M4lgMIm1F1o1vOMOm', 'นายวิชัย ยนต์ดี', 'evaluatee', 5, 2, 'ครู', '0820000005'),
('pim@college.ac.th', '$2b$10$CEHLjBAO50NJ.3gfOip1nejJfPrsnqVUPFA5M4lgMIm1F1o1vOMOm', 'นางสาวพิมพ์ใจ เขียนโค้ด', 'evaluatee', 1, 1, 'ครูผู้ช่วย', '0820000006'),
('thanakorn@college.ac.th', '$2b$10$CEHLjBAO50NJ.3gfOip1nejJfPrsnqVUPFA5M4lgMIm1F1o1vOMOm', 'นายธนากร ทองดี', 'evaluatee', 2, 3, 'ครูชำนาญการ', '0820000007'),
('malee@college.ac.th', '$2b$10$CEHLjBAO50NJ.3gfOip1nejJfPrsnqVUPFA5M4lgMIm1F1o1vOMOm', 'นางมาลี ใจงาม', 'evaluatee', 3, 4, 'ครูชำนาญการพิเศษ', '0820000008'),
('surachai@college.ac.th', '$2b$10$CEHLjBAO50NJ.3gfOip1nejJfPrsnqVUPFA5M4lgMIm1F1o1vOMOm', 'นายสุรชัย ไฟแรง', 'evaluatee', 4, 2, 'ครู', '0820000009'),
('janpen@college.ac.th', '$2b$10$CEHLjBAO50NJ.3gfOip1nejJfPrsnqVUPFA5M4lgMIm1F1o1vOMOm', 'นางสาวจันทร์เพ็ญ ดวงดี', 'evaluatee', 1, 2, 'ครู', '0820000010'),
('prasert@college.ac.th', '$2b$10$CEHLjBAO50NJ.3gfOip1nejJfPrsnqVUPFA5M4lgMIm1F1o1vOMOm', 'นายประเสริฐ ล้อแม็ก', 'evaluatee', 5, 1, 'ครูผู้ช่วย', '0820000011'),
('wandee@college.ac.th', '$2b$10$CEHLjBAO50NJ.3gfOip1nejJfPrsnqVUPFA5M4lgMIm1F1o1vOMOm', 'นางวันดี ศรีสุข', 'evaluatee', 2, 1, 'ครูผู้ช่วย', '0820000012'),
('admin@college.ac.th', '$2b$10$CEHLjBAO50NJ.3gfOip1nejJfPrsnqVUPFA5M4lgMIm1F1o1vOMOm', 'นางสาวกมลวรรณ ใจดี', 'admin', NULL, NULL, 'หัวหน้างานบุคลากร', '0811111111'),
('anan@college.ac.th', '$2b$10$CEHLjBAO50NJ.3gfOip1nejJfPrsnqVUPFA5M4lgMIm1F1o1vOMOm', 'นายอนันต์ ตั้งใจ', 'evaluator', 1, NULL, 'รองผู้อำนวยการฝ่ายวิชาการ', '0830000001'),
('ratana@college.ac.th', '$2b$10$CEHLjBAO50NJ.3gfOip1nejJfPrsnqVUPFA5M4lgMIm1F1o1vOMOm', 'นางรัตนา ประเมินดี', 'evaluator', 2, NULL, 'หัวหน้าแผนกวิชาการบัญชี', '0830000002'),
('kitti@college.ac.th', '$2b$10$CEHLjBAO50NJ.3gfOip1nejJfPrsnqVUPFA5M4lgMIm1F1o1vOMOm', 'นายกิตติ ยุติธรรม', 'evaluator', 4, NULL, 'หัวหน้าแผนกวิชาช่างไฟฟ้ากำลัง', '0830000003');
