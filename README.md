# websocket-api
API REST in ASP.NET Core with Postgres

---

![alt text](image.png)

---

#### Login User 

*Request*

```json
curl -X 'POST' \
  'https://localhost:7183/login' \
  -H 'accept: */*' \
  -H 'Content-Type: application/json' \
  -d '{
  "email": "robin@email.com",
  "password": "123"
}'
```
*Response*

```json
{
  "acess_token": "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJuYW1lIjoiUm9iaW4iLCJlbWFpbCI6InJvYmluQGVtYWlsLmNvbSIsIm5iZiI6MTcxMjE2MjUwNywiZXhwIjoxNzEyMTY2MTA3LCJpYXQiOjE3MTIxNjI1MDd9.ReVyBJXo0RH5XUGxnPfmRLYEFkzlMt4AdlIVMFkTARA"
}
```

---

#### Register User

*Request*

```json
curl -X 'POST' \
  'https://localhost:7183/register' \
  -H 'accept: */*' \
  -H 'Content-Type: application/json' \
  -d '{
  "name": "John Doe",
  "email": "john@email.com",
  "password": "password123"
}'
```

*Response*

```json
{
  "name": "John Doe",
  "email": "john@email.com",
  "password": "password123"
}
```

---
*Raul Bolivar Navas **@rasysbox***

