
```
sudo systemctl restart docker
sudo systemctl enable docker
sudo docker stop $(docker ps -a -q)
sudo docker rm $(docker ps -a -q)
sudo docker system prune -a -f

docker build -t fedora40 .



sudo docker run -d --name ubuntu-sshd \  
       -e TZ=Asia/Tokyo \  
       -e ROOT_PASSWORD=root \  
       -p 8022:22 \  
       -p 8080:80 \  
       -v /my/own/datadir:/var/www/html \  
       fedora40
```
