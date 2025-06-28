# Use Node.js LTS version
FROM node:18-alpine

# Set working directory
WORKDIR /app

# Copy package.json and package-lock.json
COPY backend-package.json ./package.json
COPY package-lock.json ./

# Install dependencies
RUN npm ci

# Copy all backend files
COPY backend/ .

# Create uploads directory
RUN mkdir -p uploads

# Expose the port the app runs on
EXPOSE 3001

# Command to run the application
CMD ["npm", "start"]