# README

`3011` is a default port for this oauth2 client app, so in order to open this app, you need to go to http://localhost:3011.

## How to use it?

### Create app on oauth2 provider side

Go to oauth provider apps page: http://localhost:3000/oauth/applications.
Create oauth2 app with callback url `http://localhost:3011/oauth2/callback`.

### Start oauth2 client app

Create `.env` file by copy-pasting `.env.example`:

```bash
cp .env.example .env
```

Fill missing values there.

### Connect to oauth2 provider

Go to `http://localhost:3011/oauth2/start and have fun!
