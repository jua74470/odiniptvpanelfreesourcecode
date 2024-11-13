
```
sudo systemctl restart docker
sudo systemctl enable docker
sudo docker stop $(docker ps -a -q)
sudo docker rm $(docker ps -a -q)
sudo docker system prune -a -f
curl https://raw.githubusercontent.com/jua74470/odiniptvpanelfreesourcecode/d6ffd4a068e5b2c274e70b2db412f51c08cccc4b/install/docker/fedora/40/Dockerfile -o Dockerfile
sudo docker build -t fedora40 .
```



```
sudo docker run -d --name fedora40 -e TZ=Europe/Paris -e ROOT_PASSWORD=root -p 22:22 -v /home/xtreamcodes/phpbuild:/home/xtreamcodes/phpbuild fedora40
sudo docker exec fedora40 -it bash sudo curl -L --output /root/depbuild.sh https://github.com/jua74470/odiniptvpanelfreesourcecode/raw/ef07aca1581d88e0f647017dbf32a71523719ac1/install/depbuild.sh; sudo bash /root/depbuild.sh
```
