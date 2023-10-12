# Use an official lightweight Node.js alpine image as a parent image
FROM node:14-alpine

# Set the working directory inside the container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json to the container
COPY package*.json ./

# Install application dependencies and remove unnecessary cache files in a single layer
RUN npm install --production && \
    npm cache clean --force

# Copy only necessary application files to the container (exclude unnecessary files)
COPY app.js ./

# Expose the application port
EXPOSE 3000

# Define the command to run your application
CMD ["node", "app.js"]
