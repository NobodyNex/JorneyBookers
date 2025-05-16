# ใช้ Nginx สำหรับเสิร์ฟ static files
FROM nginx:alpine

# ลบ default index ของ nginx
RUN rm -rf /usr/share/nginx/html/*

# คัดลอกไฟล์ทั้งหมดในโปรเจกต์ไปยัง nginx public directory
COPY . /usr/share/nginx/html

# เปิด port 80 (ที่ Azure App Service ต้องการ)
EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
