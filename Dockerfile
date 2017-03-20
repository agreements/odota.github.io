FROM node:6.9.0

ENV NPM_CONFIG_LOGLEVEL warn

COPY . /usr/src

WORKDIR /usr/src

RUN npm install

ENV PATH /usr/src/node_modules/.bin:$PATH

CMD ["npm", "start"]
