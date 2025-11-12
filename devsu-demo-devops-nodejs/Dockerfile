
FROM node:18-alpine AS base

RUN apk add --no-cache dumb-init
RUN apk add curl

RUN addgroup -g 1001 -S nodejs && \
    adduser -S nextjs -u 1001

WORKDIR /app

COPY package*.json ./

FROM base AS deps
RUN npm ci --only=production && npm cache clean --force

FROM base AS build
COPY package*.json ./
RUN npm ci
COPY . .
RUN npm run build 2>/dev/null || echo "No build script found"

FROM base AS production

ENV NODE_ENV=production
ENV PORT=3000
ENV USER=nextjs

COPY --from=deps --chown=nextjs:nodejs /app/node_modules ./node_modules

COPY --from=build --chown=nextjs:nodejs /app .

EXPOSE $PORT

USER nextjs

HEALTHCHECK --interval=30s --timeout=3s --start-period=5s --retries=3 \
    CMD node healthcheck.js || exit 1

ENTRYPOINT ["dumb-init", "--"]
CMD ["node", "index.js"]