# Use an official lightweight Node.js alpine image as a parent image
FROM node:14-alpine

# Set the working directory inside the container
WORKDIR /usr/src/app

# Expose the application port
EXPOSE 3000

# Define the command to run your application
CMD ["node", "app.js"]
