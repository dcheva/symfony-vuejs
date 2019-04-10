Source code of the tutorial [thecodingmachine.io/building-a-single-page-application-with-symfony-4-and-vuejs](https://thecodingmachine.io/building-a-single-page-application-with-symfony-4-and-vuejs).

# Quick start

If you want to try out the project just follow these steps.

```bash
$ docker-compose up -d
$ docker-compose exec app bash # executing bash inside app service
$ ./install.sh
```

Also, update your `hosts` file with:

```
127.0.0.1   app.localhost
127.0.0.1   wp.localhost
127.0.0.1   phpadmin.app.localhost
```

You may now go to [http://app.localhost/](http://app.localhost/) and login using the following credentials:  
Login: `foo`  
Password: `bar`

Wordpress: [http://wp.localhost](http://wp.localhost)  
PHPMyAdmin: [http://phpadmin.app.localhost](http://phpadmin.app.localhost)  
