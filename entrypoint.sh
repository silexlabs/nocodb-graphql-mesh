#!/bin/sh
set -e
set -x

# Remplace les variables dans le template
envsubst < ./config/mesh-template.yaml > ./mesh.yaml

# Lance GraphQL Mesh
npm i
npx graphql-mesh serve --config ./mesh.yaml
