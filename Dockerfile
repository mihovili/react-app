# Use an official Node.js runtime as the base image
FROM node:18.13.0

# Set the working directory in the container to /app
WORKDIR /app

# Copy the package.json and package-lock.json to the container
COPY package*.json ./

# Install the app's dependencies in the container
RUN npm install

# Copy the rest of the app's files to the container
COPY . .

# Specify the command to run the app when the container starts
CMD [ "npm", "run", "start" ]

# Expose port 3000 to allow connections to the app
EXPOSE 3000


#docker build -t testDockerReactApp .
#docker run -p 3000:3000 testdockerreactapp

#push on dockerhub
#Build the image using the Dockerfile:
#docker build -t mjfastlane/testdockerreactapp .
#Check that the image was built successfully by listing your local images:
#docker images
#docker login
#docker push mjfastlane/testdockerreactapp:latest