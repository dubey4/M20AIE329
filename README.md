# M20AIE329
NOTE: Read this file fully before start testing
###Install Docker on Ubuntu##########################################3
We need to run following commands for docker installation

sudo apt install docker.io

Since we are not using seperate user group so we need to run command using sudo
########################################################################################

############Application Description######################################################
This application is car inventory Management System.You can add ,remove,view,
update car in car inventory. For representing car we are using id,name of car
and description.
If we run application by default some car list we can see.After that we can modify 
insert and delete it.
#############################################################################################

####################Run The Application################################################
Follow the following steps 
1)Download application from GIT hub using following URL
https://github.com/dubey4/M20AIE329
click on code button download zip
2)Unzip the application(refer line 88 and 89)
3)We can do maven setup and run mvn clean install but for simplicity I have uploaded the
jar in base folder.
4)For running jar we van use below command(JRE should be installed if not installed )

java -jar M20AIE329-0.0.1-SNAPSHOT.jar

5)Now we run below url in browser and check the application
http://localhost:8080/

#######################################################################################

######Deploy and Run The Application in docker##############################
1)Follow step 1 and 2 from above section

2)After unzip we can check Dockerfile in root folder keep all the configuration for running docker.In docker file above each configuration comment is mention so we can understand the purpose

3) we should check docker is installed on ubuntu or not typing sudo docker command

4)If docker is installed then run dockerimagebuilder.sh (on terminal ./ dockerimagebuilder.sh)
it will build docker image .it keep the command for image building.

5)Run the dockerimagerunner.sh it will run the docker image.

6)Since docker container can not serve jsp file with embedded Tomcat(we should go with Theamleaf) so I have create a api for testing from docker

http://docker-server-ip:8080/test

it will give below resopnse

// 20210901233144
// http://192.168.56.104:8080/test

[
  {
    "id": 1,
    "name": "Maruti Swift",
    "desc": "The Average of Car is very good"
  },
  {
    "id": 2,
    "name": "Tata Nexon",
    "desc": "The Car is good for highway"
  },
  {
    "id": 3,
    "name": "Maruti Ertiga",
    "desc": "The Car is good for 6 peoople"
  },
  {
    "id": 4,
    "name": "Tata Safari",
    "desc": "The Car has big sunroof"
  }
]

7)For web application we can use following repository on same Github with read me file

https://github.com/dubey4/m20aie329web

##################################################################################################

########################For testing steps#########################################################
I have created a folder and done these steps some commands may be useful for real testing

sudo mkdir cars
sudo mv Downloads/M20AIE329-main.zip /home/vivek/cars/
sudo apt-get install unzip
sudo unzip M20AIE329-main.zip
sudo chmod -R 777 M20AIE329-main

./dockerimagebuilder.sh
./dockerimagerunner.sh

--for checking ip address
sudo apt install net-tools
ifconfig

---for docker log
sudo docker logs 6562fcb820b4


###############For Any Query#############################################################
send me email on
dubey.4@iitj.ac.in

