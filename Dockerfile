
# Why alpine? -> to reduce docker image size
FROM node:14.15.5-alpine3.11 as front_builder

WORKDIR /usr/frontend/app/

COPY package*.json ./

RUN npm install

# The reason why seperating COPY is essential:
# Dockerfile caches command line step by step, 
# so if copy all the files at once like 
# WORKDIR /usr/frontend/app/
# COPY . ./
# RUN npm install
# then it reinstall all the packages every time when the code get changed.
COPY . ./ 
RUN npm run build

FROM nginx:1.19.6-alpine

COPY --from=front_builder /usr/frontend/app/dist /usr/share/nginx/html
EXPOSE 80

# Why daemon off?
# nginx Default option : daemon on
# then Docker cannot track the nginx daemon process, 
# so it needs to stay in foreground. 
CMD ["nginx","-g", "daemon off;"]