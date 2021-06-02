FROM node:14.16.0
RUN mkdir /usr/src/app
WORKDIR /usr/src/app
ENV PATH /usr/src/app/node_modules/.bin:$PATH
COPY . .
RUN npm install
RUN npm install react-scripts@ -g
ENV PORT=80
EXPOSE 80
CMD ["npm","start"]