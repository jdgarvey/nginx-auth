# nginx-auth
This project was created to vet out the quickest, easiest, and most portable way to deploy a password-protected HTML page.

Credentials: username/p4ssw0rd

## Usage
`docker run --name <optional-container-name> -d -p 80:80 jdgarvey/nginx-auth`

---

## Developing

Generate your own password with `htpasswd`: `sudo htpasswd -c .htpasswd <username>`

Add an additional password to the existing one: same as above, just omit the `-c`.

Build: `docker build -t <image-name> .`

Run: `docker run --name <optional-container-name> -d -p 80:80 <image-name>`

View: http://localhost

Push:
1. Tag the image: `docker tag <image-name> <username>/<image-name>`
2. Push to Docker Hub: `docker push <username>/<image-name>:<tag-name>`

---

## Stack
* HTML
* NGINX
* Docker