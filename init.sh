events {
    worker_connections 4096;

}
http{
    server{
        listen 80 default;
        location ~* \Q/uploads/\E\w+{
            root/home/box/web;
        }
        location / {
            return 404;

        }
        location ~* ^.+\.\w+${
            root /home/box/web/piblic;
        }
    }
}