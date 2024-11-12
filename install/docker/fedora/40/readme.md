
```
sudo systemctl restart docker
sudo systemctl enable docker
sudo docker stop $(docker ps -a -q)
sudo docker rm $(docker ps -a -q)
sudo docker system prune -a -f
curl https://raw.githubusercontent.com/jua74470/odiniptvpanelfreesourcecode/b0885e24009646071e05fd46013f85010e065479/install/docker/fedora/40/Dockerfile -o Dockerfile
sudo docker build -t fedora40 .



sudo docker run -d --name fedora40 \  
       -e TZ=Europe/Paris \  
       -e ROOT_PASSWORD=root \  
       -p 222:22 \  
       -p 80:80 \  
       -v /home/xtreamcodes/phpbuild:/home/xtreamcodes/phpbuild \  
       fedora40
```
