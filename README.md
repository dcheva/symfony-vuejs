Used source: [thecodingmachine.io/building-a-single-page-application-with-symfony-4-and-vuejs](https://thecodingmachine.io/building-a-single-page-application-with-symfony-4-and-vuejs).

# Install

To install the project just follow these steps.
Executing bash inside app service
- on Windows: use Git Bash
```bash
$ docker-compose up -d
$ winpty docker-compose exec app bash
$ ./install.sh # -d to delete node modules, symfony vendors and all cache files, logs and sessions
```
- on Linux: 
```bash
$ docker-compose up -d
$ docker-compose exec app bash
$ ./install.sh # -d to delete node modules, symfony vendors and all cache files, logs and sessions
```
Also, update your `hosts` file with:

```
127.0.0.1   app.localhost
127.0.0.1   wp.localhost
127.0.0.1   phpadmin.app.localhost
```

You may now go to [http://app.localhost/](http://app.localhost/) and login using the following credentials:  
Login: `wpsv`  
Password: `wpsv`

Wordpress: [http://wp.localhost](http://wp.localhost)  
PHPMyAdmin: [http://phpadmin.app.localhost](http://phpadmin.app.localhost)  

# Uninstall ALL Docker:
- First stop them all
```bash
$ docker container stop $(docker container ls -a -q)
```
- Containers
```bash
$ docker container rm $(docker container ls -a -q)
```
- Images
```bash
$ docker image rm $(docker image ls -a -q)
```
- Volumes
```bash
$ docker volume rm $(docker volume ls -q)
```
- Networks
```bash
$ docker network rm $(docker network ls -q)
```
# Total Uninstall (it will delete ALL Docker files)
```bash
$ docker container stop $(docker container ls -a -q) && docker system prune -a -f --volumes
```