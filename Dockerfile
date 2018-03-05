FROM node:8.9-alpine
MAINTAINER KU_AGILE_CSI

RUN mkdir /app
WORKDIR /app
COPY ./nodejs/package*.json /app/
RUN npm install

COPY ./nodejs /app
VOLUME ["/app"]

EXPOSE 3000
CMD ["npm", "start"]
