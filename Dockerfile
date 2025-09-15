# Use an official Node.js runtime
FROM node:20-slim

# Create & set working directory
WORKDIR /app

# Copy only package metadata first to leverage caching
COPY package*.json ./

# Install dependencies (omit dev deps for smaller image)
RUN npm ci --omit=dev

# Copy the rest of the application source
COPY . .

# Default port expected by Cloud Run
ENV PORT=8080
EXPOSE 8080

# Start the service
CMD ["node", "server.js"]
