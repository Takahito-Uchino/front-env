FROM node:20.12.2-alpine3.19

ENV NODE_ENV=development

RUN npm i -g pnpm@latest

WORKDIR /app

COPY package.json pnpm-lock.yaml ./

RUN pnpm i

COPY . .

# CMD [ "pnpm", "dev" ]
