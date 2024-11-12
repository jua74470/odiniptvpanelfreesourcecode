docker run -d --name ubuntu-sshd \  
       -e TZ=Asia/Tokyo \  
       -e ROOT_PASSWORD=root \  
       -p 8022:22 \  
       -p 8080:80 \  
       -v /my/own/datadir:/var/www/html \  
       takeyamajp/ubuntu-sshd
