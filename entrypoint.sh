#!/bin/sh
set -e
set -x

# Remplace les variables dans le template
envsubst < ./config/mesh-template.yaml > ./mesh.yaml

# Lance GraphQL Mesh
npx graphql-mesh serve --config ./mesh.yaml
