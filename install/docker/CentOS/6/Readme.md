
```
sudo systemctl restart docker
sudo systemctl enable docker
sudo docker stop -f $(docker ps -a -q)
sudo docker rm -f $(docker ps -a -q)
sudo docker rmi -f centos6
#sudo docker system prune -a -f
curl https://raw.githubusercontent.com/jua74470/odiniptvpanelfreesourcecode/installer/install/docker/CentOS/6/Dockerfile -o Dockerfile
sudo docker build -t centos6 --no-cache --progress=plain .
sudo docker run -d --name centos6 -e TZ=Europe/Paris -e ROOT_PASSWORD=root -p 22:22 -v /home/xtreamcodes/phpbuild:/home/xtreamcodes/phpbuild centos6
sudo docker exec -it centos6 bash /root/depbuild.sh
sudo docker exec -it centos6 bash /root/php7.4rebuild.orig.sh
```
