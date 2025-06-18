FROM node:21-alpine

RUN apk add --no-cache gettext

WORKDIR /app

RUN npm init -y \
 && npm install @graphql-mesh/cli @graphql-mesh/openapi \
 && mkdir -p config

COPY mesh-template.yaml ./config/mesh-template.yaml
COPY entrypoint.sh /app/entrypoint.sh
RUN chmod +x /app/entrypoint.sh

EXPOSE ${MESH_PORT:-4000}

CMD ["./entrypoint.sh"]
