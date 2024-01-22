#Use official Playwright 
FROM mcr.microsoft.com/playwright:bionic  

WORKDIR /app
 
COPY package*.json ./

#Install dependencies
RUN npm install 
 
COPY tests ./tests  

#Run tests as entrypoint 
CMD ["npx", "playwright", "test"] 
