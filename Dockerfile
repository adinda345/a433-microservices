#menggunakan image node js versi 14
FROM node:14
#menentkan working directory untuk container adalah /app
WORKDIR /app
#menyalin seluruh source code ke working directory di container
COPY . .
#menentukan agar aplikasi berjalan dalam produktion mode dan menggunakan kontainer bernama item-db sebagai database host
ENV NODE_ENV=production DB_HOST=item-db
#menginstall dependencies untuk produktion dan kemudian build aplikasi
RUN npm install --production --unsafe-perm && npm run build
#ekspos bahwa port yang digunakan oleh aplikasi adalah 8080
EXPOSE 8080
#saat container di luncurkan, jalankan server dengan perintah npm start.
CMD ["npm","start"]