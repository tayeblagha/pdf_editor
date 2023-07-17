ARG NODE_ENV="development"
FROM node:16.2

# Set NODE_ENV as an environment variable during build
ENV NODE_ENV=${NODE_ENV}

WORKDIR /app
COPY . .

RUN if [ "$NODE_ENV" = "development" ]; then \
        npm install; npm run dev \
    else \
        npm install --only=production; \
    fi
ENV PORT 5000
EXPOSE $PORT
CMD ["npm", "start"]
