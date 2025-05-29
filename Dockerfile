# Use official Node.js 18 Alpine image
FROM node:18-alpine

# Set working directory inside the container
WORKDIR /app

# Copy package.json & install dependencies first (optimizes Docker caching)
COPY package*.json ./
RUN npm install

# Copy all project files, including the public folder
COPY . .  

# Expose the application’s port
EXPOSE 3000

# Start the application
CMD ["npm", "start"]
