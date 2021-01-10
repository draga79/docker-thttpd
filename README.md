## Docker thttpd Alpine Container
This simple [thttpd](https://acme.com/software/thttpd/) container, based on Alpine 3.12, will run and serve the static content provided. Launch with:
    docker run --rm -v /path_to_your_content:/var/www/http dragas/thttpd 

It will autobuild and update when Alpine base container will be updated. Have fun!
