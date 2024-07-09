FROM node:20-alpine

WORKDIR /app

COPY . .

RUN npm install 
RUN npm run build 
RUN npx prisma generate


EXPOSE 3001

CMD ["node", "dist/index.js"]