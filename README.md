# NocoDB GraphQL Mesh (Read-Only)

Exposes a **read-only GraphQL API** based on a **NocoDB** instance using [GraphQL Mesh](https://www.graphql-mesh.com/).  
Designed for **easy deployment with CapRover** or Docker.

---

## 🚀 Features

- Auto-generated GraphQL API from NocoDB REST endpoints
- Read-only: only `query` operations are exposed
- Fast and minimal deployment
- Optional token-based authentication supported

---

## 🔧 Environment Variables

| Variable        | Description                          | Example                        |
|------------------|--------------------------------------|--------------------------------|
| `NOCODB_URL`     | Your NocoDB base URL                 | `https://nocodb.example.com`   |
| `NOCODB_TOKEN`   | (optional) JWT token if required     | `eyJhbGci...`                  |
| `MESH_PORT`      | Port to expose GraphQL service       | `4000`                         |

---

## 🐳 Docker Example

```bash
docker run -e NOCODB_URL=https://nocodb.example.com \
  -p 4000:4000 \
  ghcr.io/internet2000/nocodb-graphql-mesh:latest
```

GraphQL Playground is available at:  
`http://localhost:4000/graphql`
