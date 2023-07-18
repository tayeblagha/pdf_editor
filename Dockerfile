ARG NODE_ENV="development"
FROM node:16.2

# Set NODE_ENV as an environment variable during build
ENV NODE_ENV=${NODE_ENV}

WORKDIR /app
COPY . .

RUN npm install;
#RUN npm run dev ;   

CMD ["npm", "run","dev"]
