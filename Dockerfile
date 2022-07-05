FROM 605580347753.dkr.ecr.ap-south-1.amazonaws.com/node

WORKDIR /app

RUN npm install -g contentful-cli

COPY package.json .
RUN npm install

COPY . .

USER node
EXPOSE 3000

CMD ["npm", "run", "start:dev"]
