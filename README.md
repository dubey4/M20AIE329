# M20AIE329

###Install Docker on Ubuntu##########################################3
We need to run following commands for docker installation and add user in docker group
sudo apt install docker.io
sudo usermod -aG docker ${USER}


sudo mkdir cars
sudo mv Downloads/M20AIE329-main.zip /home/vivek/cars/
sudo mv Downloads/M20AIE329-main.zip /home/vivek/cars/
sudo apt-get install unzip
sudo unzip M20AIE329-main.zip
sudo chmod -R 777 M20AIE329-main

sudo docker run --name m20aie329 -p 8080:8080 -d m20aie329

sudo apt install net-tools

sudo docker logs 6562fcb820b4
