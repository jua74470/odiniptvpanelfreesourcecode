
```
sudo systemctl restart docker
sudo systemctl enable docker
sudo docker stop -f $(docker ps -a -q)
sudo docker rm -f $(docker ps -a -q)
sudo docker rmi -f fedora39
#sudo docker system prune -a -f
curl https://raw.githubusercontent.com/jua74470/odiniptvpanelfreesourcecode/installer/install/docker/fedora/39/Dockerfile -o Dockerfile
sudo docker build -t fedora39 .
sudo docker run -d --name fedora39 -e TZ=Europe/Paris -e ROOT_PASSWORD=root -p 22:22 -v /home/xtreamcodes/phpbuild:/home/xtreamcodes/phpbuild fedora39
sudo docker exec -it fedora39 bash /root/depbuild.sh
sudo docker exec -it fedora39 bash /root/php7.4rebuild.orig.sh
```
