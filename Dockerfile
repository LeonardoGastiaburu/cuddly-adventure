FROM node:12.15.0-buster

USER node
WORKDIR /home/node/app
COPY app/ /home/node/app/
#COPY --chown=node:node app/package.json app/package-lock.json app/index.js  home/node/app/
#RUN npm cache clean
#RUN npm ci
#COPY --chown=node:node app/ home/node/app

CMD ["node", "index.js"]