#!/bin/sh
set -e

# Remplace les variables dans le template
envsubst < ./config/mesh-template.yaml > ./mesh.yaml

# Lance GraphQL Mesh
npx graphql-mesh --config ./mesh.yaml
