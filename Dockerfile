# Використовуємо базовий образ Node.js
FROM node:16-alpine

# Встановлюємо робочу директорію
WORKDIR /app

# Копіюємо файл package.json та встановлюємо залежності
COPY package.json .
RUN npm install

# Копіюємо всі файли у робочу директорію
COPY . .

# Відкриваємо порт, на якому працює сервер
EXPOSE 3000

# Команда запуску застосунку
CMD ["node", "server.js"]
