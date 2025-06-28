# Build Stage
FROM node:18-alpine as build

# Set working directory
WORKDIR /app

# Copy package.json and package-lock.json
COPY frontend-package.json ./package.json
COPY package-lock.json ./

# Install dependencies
RUN npm ci

# Copy all frontend files
COPY frontend/ .

# Build the app
RUN npm run build

# Production Stage
FROM nginx:alpine

# Copy built files from build stage to nginx serve directory
COPY --from=build /app/build /usr/share/nginx/html

# Copy custom nginx config if needed
COPY nginx.conf /etc/nginx/conf.d/default.conf

# Expose port 80
EXPOSE 80

# Start nginx
CMD ["nginx", "-g", "daemon off;"]