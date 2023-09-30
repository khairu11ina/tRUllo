FROM node:12-stretch-slim

ENV PORT 3000

# Create app directory
RUN mkdir -p /usr/src/app/trullo
WORKDIR /usr/src/app/trullo

# Installing dependencies
COPY package.json /usr/src/app/trullo
COPY yarn.lock /usr/src/app/trullo

RUN yarn install

# Copying source files
COPY . /usr/src/app/trullo

CMD ["yarn", "dev"]

EXPOSE 3000
