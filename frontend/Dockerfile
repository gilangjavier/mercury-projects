# Use the official Node.js image as the base image
FROM node:latest

# Set the working directory inside the container
WORKDIR /app

# Copy package.json and package-lock.json to the container
COPY package*.json ./

# Install app dependencies
RUN npm install

# Copy the local package files to the container's workspace
COPY . .

# Expose the port the app runs on
EXPOSE 3000

# Run the application
ENTRYPOINT ["node", "index.js"]
