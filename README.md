GhostTunnel-Infrastructure

Automated secure infrastructure deployment using Docker and Cloudflare Zero-Trust tunnels.

## Features

- **Zero-Trust networking** with Cloudflare Tunnel (argo-tunnel)
- **Containerized deployments** using Docker Compose
- **Automatic SSL/TLS** certificate management
- **Load balancing** across multiple containers
- **Health checks** and auto-restart on failure


Architecture

```
Internet → Cloudflare Tunnel → Docker Container → Your Application
                                    ↓
                            Health Check (auto-restart)
```

Components

Service Port Description
app 8000 Your Python/FastAPI application
tunnel – Cloudflare Tunnel connector
redis 6379 Cache and session storage
postgres 5432 Primary database

Environment Variables

Variable Description Example
TUNNEL_TOKEN Cloudflare Tunnel token (from Zero-Trust dashboard)
DB_PASSWORD PostgreSQL password securepassword
SECRET_KEY Application secret randomstring

Security Features

· No public IP needed for your origin server
· Automatic DDoS protection through Cloudflare
· Mutual TLS (mTLS) support for internal services
· Secrets management via environment variables (not hardcoded)

License

MIT

Author

Mustafa Ramadhani – Senior Quantitative Systems & Data Engineer

