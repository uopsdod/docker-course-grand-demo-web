# image build phase
FROM node
WORKDIR /myapp
COPY package.json .
RUN npm install
COPY . .
# container running phase
ENTRYPOINT ["/bin/bash", "-c", "export REACT_APP_API_URL && npm start"]


