FROM nginx:alpine

RUN apk update && apk add git && apk add curl && apk add yarn

WORKDIR /app

RUN git clone --single-branch --depth 1 https://github.com/shaunbloom/ShaunBloom.com-React-V2-webpack-babel-es6-less.git

COPY nginx.conf /etc/nginx/conf.d/default.conf

WORKDIR /app/ShaunBloom.com-React-V2-webpack-babel-es6-less/

RUN yarn install && yarn run build

WORKDIR /app/ShaunBloom.com-React-V2-webpack-babel-es6-less/dist/

EXPOSE 80

CMD ["nginx","-g","daemon off;"]

