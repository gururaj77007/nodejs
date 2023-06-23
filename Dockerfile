# Use an official Node.js runtime as the base image
FROM node:14

# Set the working directory in the container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json to the container
COPY package*.json ./

# Install application dependencies
RUN npm ci --only=production

# Copy the application code to the container
COPY . .

# Expose the port on which your Node.js application listens
EXPOSE 3000

# Set the command to run your Node.js application
CMD [ "npm", "start" ]
