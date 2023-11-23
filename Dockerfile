#mengambil image node:14
FROM node:14-alpine

#membuat working directory app
WORKDIR /app

#copy semua file ke workdir app
COPY . /app

#membuat node environment
ENV NODE_ENV=production DB_HOST=item-db

#instalasi dependencies
RUN npm install --production --unsafe-perm && npm run build

#publish port 8080
EXPOSE  8080

#jalankan perintah npm start
CMD ["npm", "start"]