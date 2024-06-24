FROM node:20.12.0-alpine3.19

WORKDIR /usr/src/app

COPY package.json package-lock.json tsconfig.json ./

COPY app ./app

# Install dependencies
RUN npm install
# Can you add a script to the global package.json that does this?

# Can you filter the build down to just one app?
RUN npm run build

CMD ["npm", "run", "start-user-app"]