FROM node:14.17

ARG WORK_DIR=/frontend
ENV PATH = ${WORD_DIR}/node_modules/.bin:/$PATH

RUN mkdir ${WORK_DIR}
WORKDIR  ${WORK_DIR}

COPY package.json ${WORK_DIR}
COPY package-lock.json ${WORK_DIR}

RUN npm install @angular/cli
RUN npm install

COPY . ${WORK_DIR}

EXPOSE 4200


CMD node_modules/.bin/ng serve --host 0.0.0.0


# docker run --rm -p 4200:4200 ${docker build -q -f Dockerfile . }