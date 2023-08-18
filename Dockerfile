# Use the official Node.js image as the base imagei
FROM node:14

# Set the working directory inside the container
WORKDIR /app
#ggggjnjn

# Copy package.json and package-lock.json to the container
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application code
COPY . .

# Expose the port your application uses
EXPOSE 3000

# Start the application
CMD ["node", "index.js"]

