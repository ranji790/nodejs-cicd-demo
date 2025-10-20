# Use a smaller Node image
FROM node:18-slim

# Set working directory
WORKDIR /usr/src/app

# Copy only package files first (enables caching)
COPY package*.json ./

# Install dependencies
RUN npm install --production

# Copy the rest of the app
COPY . .

# Expose port
EXPOSE 3000

# Start the app
CMD ["node", "app.js"]
