# ใช้ Node.js เวอร์ชันล่าสุดเป็น Base Image
FROM node:18

# ตั้งค่า Working Directory ใน Container
WORKDIR /app

# คัดลอกไฟล์ package.json และ package-lock.json
COPY package*.json ./

# ติดตั้ง Dependencies
RUN npm install

# คัดลอกไฟล์ทั้งหมดเข้าไปใน Container
COPY . .

# เปิดพอร์ต 3000
EXPOSE 3000

# คำสั่งรันเซิร์ฟเวอร์
CMD ["node", "app.js"]
