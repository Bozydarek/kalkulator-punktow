FROM node:latest

# Create app directory
WORKDIR /usr/src/app

# Setup server port
ARG PORT=8000
ENV PORT=${PORT}

# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
COPY package*.json ./

RUN npm install

# If you are building your code for production
# RUN npm ci --only=production

# Bundle app source
COPY . .

CMD [ "node", "server.js" ]

