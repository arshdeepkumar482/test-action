FROM node:16-alpine

WORKDIR /app

# # Install dependencies based on the preferred package manager
# COPY package.json yarn.lock ./
# RUN \
#   if [ -f yarn.lock ]; then yarn --frozen-lockfile; \
#   else echo "Lockfile not found." && exit 1; \
#   fi

COPY . .

CMD ["node","app/index.js"]
