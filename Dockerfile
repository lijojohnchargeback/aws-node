FROM node:16

WORKDIR  /index.html

# Copy package.json and package-lock.json
COPY package*.json ./

# Install npm production packages 
RUN npm install 
COPY . .
EXPOSE 3010

CMD ["node", "app.js"]