FROM node:18-alpine

WORKDIR /app

COPY package*.json ./
RUN npm install

COPY ./ .  # Copy all files including the new 'public' folder

EXPOSE 3000
CMD ["npm", "start"]
