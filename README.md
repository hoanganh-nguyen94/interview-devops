# Mentor Walks Service

## pre

### Generate oauth key
```shell
ssh-keygen -t rsa -b 4096 -m PEM -f storage/oauth-private.key
# no passphrase entered
openssl rsa -in storage/oauth-private.key -pubout -outform PEM -out storage/oauth-public.key.pub

rm -f storage/oauth-private.key.pub
mv -f storage/oauth-public.key.pub storage/oauth-public.key

```

## Getting started

### Step 1: install dependencies
```shell
composer install --ignore-platform-reqs

```

### Step 2: Run script database
run script database MentorWalks.sql in assets folder


### Step 3: run data migration
```shell
php artisan migrate
```

### Step 4: Generate client id and client secret
```shell
php artisan passport:client --password
```

### Step 5: log permission
```shell
chown www-data:www-data -R storage
```

---

## Project development mode
```shell
docker compose up -d
docker compose exec app composer install --ignore-platform-reqs
```

---

## api test

```shell
curl --location --request POST 'http://localhost:8000/oauth/token' \
--header 'Content-Type: application/json' \
--data-raw '{
    "client_id": "954ae1df-9f23-48a3-a3ff-0f8a557cc440",
    "client_secret": "yoUB9fN327tSYNs74lszrqDQXTSSRJ4ZkzzPRBba",
    "grant_type": "password",
    "username": "binhlvit@gmail.com",
    "password": "Abc@123456789",
    "scope": "*"
}'
```

