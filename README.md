Example

====

Build

```sh
# pull the template
faas-cli template store pull ruby-http

# replace alexellis2 in stack.yml

# build including native deps
faas-cli build --build-option dev
```

Test

```sh
faas-cli deploy

curl -d "" http://127.0.0.1:8080/function/wikipedia-title ; echo
Wikipedia, the free encyclopedia

# or with straight-up Docker

docker run -p 8080:8080 -ti alexellis2/wikipedia-title:0.1.0

curl -d "" http://127.0.0.1:8080 ; echo
Wikipedia, the free encyclopedia
```
