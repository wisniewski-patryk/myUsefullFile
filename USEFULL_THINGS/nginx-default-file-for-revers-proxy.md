https://learn.microsoft.com/en-us/aspnet/core/host-and-deploy/linux-nginx?view=aspnetcore-7.0&tabs=linux-ubuntu


enable site in ngnix
```
sudo ln -s /etc/nginx/sites-available/default /etc/nginx/sites-enabled/default
```
/etc/nginx/nginx.conf in http section 
```
http{
  map $http_connection $connection_upgrade {
        "~*Upgrade" $http_connection;
         default keep-alive;
        }
}
```

/etc/nginx/sites-avaiable
```
server {
  listen        <port>;
  server_name   <server-ip/server-url>;
  location / {
    proxy_pass         http://127.0.0.1:5000;
    proxy_http_version 1.1;
    proxy_set_header   Upgrade $http_upgrade;
    proxy_set_header   Connection $connection_upgrade;
    proxy_set_header   Host $host;
    proxy_cache_bypass $http_upgrade;
    proxy_set_header   X-Forwarded-For $proxy_add_x_forwarded_for;
    proxy_set_header   X-Forwarded-Proto $scheme;
  }
}
```
