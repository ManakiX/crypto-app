# Use an official Node.js runtime as the base image
FROM node:14

# Set the working directory in the container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json to the container
COPY package*.json ./

# Install app dependencies
RUN npm install

# Copy the rest of the app's source code to the container
COPY . .

# Build the Vue app
RUN npm run build

# Expose the port the app runs on
EXPOSE 8080

# Command to run the app
CMD [ "npm", "run", "serve" ]
