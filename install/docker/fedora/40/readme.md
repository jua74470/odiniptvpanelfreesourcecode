
```
sudo systemctl restart docker
sudo systemctl enable docker
sudo docker stop $(docker ps -a -q)
sudo docker rm $(docker ps -a -q)
sudo docker system prune -a -f
curl https://github.com/jua74470/odiniptvpanelfreesourcecode/raw/refs/heads/installer/install/docker/fedora/40/Dockerfile -o Dockerfile
sudo docker build -t fedora40 .



sudo docker run -d --name fedora40 \  
       -e TZ=Europe/Paris \  
       -e ROOT_PASSWORD=root \  
       -p 222:22 \  
       -p 80:80 \  
       -v /home/xtreamcodes/phpbuild:/home/xtreamcodes/phpbuild \  
       fedora40
```
