FROM tiangolo/uwsgi-nginx-flask:python3.8
COPY /app /app
COPY /front /front

WORKDIR ../front
RUN apt update
RUN apt install -y nodejs
RUN apt install -y npm
RUN npm install -g n
RUN n 16.14.2
RUN apt purge -y nodejs npm
RUN apt -y autoremove
RUN npm install -g yarn
RUN yarn global add create-react-app react-scripts
RUN yarn
# RUN npm install
RUN npm run build
# RUN yarn add eject

WORKDIR ../
# RUN create-react-app frontend
# RUN npm run eject (gitプロジェクトにconfigが既にあるから)

WORKDIR ./app
RUN pip install Flask
