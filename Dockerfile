# Base stage for building the static files
FROM node:20.19.5-alpine3.22 AS base
WORKDIR /app

# Install pnpm
RUN corepack enable && corepack prepare pnpm@10.11.1 --activate

COPY package.json pnpm-lock.yaml ./
RUN pnpm install --frozen-lockfile

COPY . .
RUN pnpm run build

# Runtime stage for serving the application
FROM nginx:1.28.0-alpine-slim AS runtime
COPY --from=base /app/dist /usr/share/nginx/html
COPY nginx-security-headers.conf /etc/nginx/conf.d/default.conf
EXPOSE 80
