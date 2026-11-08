# ชุดไฟล์ระบบประเมินบุคลากร วิชา Back-End (ปวส.1 ปี 2569)

repo นี้เป็นของครู เก็บไฟล์ที่ครูแจกตลอดเทอม นักศึกษา **ไม่ต้องแก้ไฟล์ใน repo นี้**
ให้คัดลอกไฟล์ที่ต้องใช้ไปไว้ในโปรเจกต์ของตัวเอง (repo ของนักศึกษาเอง)

## ครั้งแรก: clone ลงเครื่อง

เปิด Terminal ใน VS Code แล้วพิมพ์

```bash
cd D:\
git clone https://github.com/paponpatpimkot/backend69-evaluation-kit.git
```

จะได้โฟลเดอร์ `D:\backend69-evaluation-kit`

## ทุกสัปดาห์: รับไฟล์ใหม่จากครู

```bash
cd D:\backend69-evaluation-kit
git pull
```

## มีอะไรอยู่ในนี้

| โฟลเดอร์ | ใช้ทำอะไร |
|---|---|
| `design/evaluation_db.sql` | ฐานข้อมูลฉบับเต็มของครู (ไว้อ้างอิง) นักศึกษาเขียน CREATE TABLE เองตาม ER ไม่ต้องนำเข้าไฟล์นี้ |
| `design/evaluation_db.dbml` | ER Diagram วางใน https://dbdiagram.io/d เพื่อดูภาพ |
| `design/flowcharts/` | ผังงาน 5 ผัง และ ER (รูป PNG) |
| `design/screens/` | หน้าจอที่ครูออกแบบไว้ (เปิด .html ในเบราว์เซอร์ได้) |
| `week04/` | ไฟล์เริ่มต้นของสัปดาห์ 4: `data/` และ `public/` |
| `week05/` | ใบสั่งงาน #1: ข้อมูลบุคลากร 16 คน `database/users-16.sql` และหน้าเว็บ "บุคลากร" `public/index.html` |

## สัปดาห์ 4: คัดลอกไปใช้

คัดลอกโฟลเดอร์ `week04/data` และ `week04/public` ไปวางในโปรเจกต์ `first-server` ของตัวเอง
ให้ได้โครงแบบนี้

```
first-server/
├── data/
│   └── evaluatees.js
├── public/
│   └── index.html
└── index.js        ← เขียนเองในคาบ
```

รหัสผ่านของผู้ใช้ตัวอย่างทุกคนในฐานข้อมูลคือ `1234`

## สัปดาห์ 5 (ใบสั่งงาน #1): ใช้กับโปรเจกต์ evaluation-api

- `week05/database/users-16.sql` ข้อมูลตั้งต้นจากฝ่ายบุคลากร (วิทยฐานะ 6 รายการ + บุคลากร 16 คน) นำเข้าด้วย phpMyAdmin > Import หลังสร้างตารางครบและกรอกตาราง departments 5 แผนกแล้ว
- `week05/public/index.html` หน้า "บุคลากร" คัดลอกไปทับ `public/index.html` เดิมในโฟลเดอร์ evaluation-api ของตัวเอง (โฟลเดอร์ kit และ evaluation-api อยู่ไดรฟ์ไหนก็ได้)

หน้านี้เรียก `GET /api/departments`, `GET /api/users?q=&department_id=&role=` และ `GET /api/users/:id`
