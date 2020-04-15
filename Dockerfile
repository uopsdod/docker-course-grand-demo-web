FROM node
ENV REACT_APP_API_URL=java_app
WORKDIR /myapp
COPY package.json .
RUN npm install
COPY . .
ENTRYPOINT ["npm", "start"]

