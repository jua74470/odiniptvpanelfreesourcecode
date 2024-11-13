
```
sudo systemctl restart docker
sudo systemctl enable docker
sudo docker stop $(docker ps -a -q)
sudo docker rm $(docker ps -a -q)
sudo docker system prune -a -f
curl https://raw.githubusercontent.com/jua74470/odiniptvpanelfreesourcecode/aff98b1fb2ba068d1373528622dddbc29c073064/install/docker/fedora/40/Dockerfile -o Dockerfile
sudo docker build -t fedora40 .
sudo docker run -d --name fedora40 -e TZ=Europe/Paris -e ROOT_PASSWORD=root -p 22:22 -v /home/xtreamcodes/phpbuild:/home/xtreamcodes/phpbuild fedora40
sudo docker exec -it fedora40 bash /root/depbuild.sh
sudo docker exec -it fedora40 bash /root/php7.4rebuild.orig.sh
```
