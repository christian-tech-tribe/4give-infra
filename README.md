# 4give-infra
Infrastructure and Deployment

# Deployment

Create a .env file:
```
#----------------
# Database
#----------------

MONGO_ROOT_USER=...
MONGO_ROOT_PASS=...

POSTGRES_ROOT_USER=...
POSTGRES_ROOT_PASS=...

POSTGRES_USER=...
POSTGRES_PASS=...

#----------------
# API
#----------------

WORKING_DIR=./working

DEFAULT_ADMIN_USERNAME=...
DEFAULT_ADMIN_PASSWORD=...

JWT_SECRET=...

VERSION_API=v0.0.1
VERSION_FRONTEND=v0.0.1
```