mkdir ~/test
cd ~/test
git clone https://github.com/rafaelsteil/simple-webserver
cd simple-webserver
sudo apt-get install -y default-jdk
java -jar SimpleWebServer.jar
