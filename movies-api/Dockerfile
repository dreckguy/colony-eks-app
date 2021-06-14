FROM node:14.6.0-alpine
COPY . .
RUN npm install
ENV DB_URL host.docker.internal
EXPOSE 7000
CMD ["npm","start"]