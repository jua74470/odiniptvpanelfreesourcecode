
```
sudo systemctl restart docker
sudo systemctl enable docker
sudo docker stop $(docker ps -a -q)
sudo docker rm $(docker ps -a -q)
sudo docker system prune -a -f
curl https://raw.githubusercontent.com/jua74470/odiniptvpanelfreesourcecode/installer/install/docker/fedora/41/Dockerfile -o Dockerfile
sudo docker build -t fedora41 .
sudo docker run -d --name fedora41 -e TZ=Europe/Paris -e ROOT_PASSWORD=root -p 22:22 -v /home/xtreamcodes/phpbuild:/home/xtreamcodes/phpbuild fedora41
sudo docker exec -it fedora41 bash /root/depbuild.sh
sudo docker exec -it fedora41 bash /root/php7.4rebuild.orig.sh
```
