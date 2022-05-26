echo ------------ Start Deploy starkware Node------------ 


###Prepare env
sudo apt-get update
sudo apt install apt-transport-https ca-certificates curl software-properties-common -y

### install docker
curl -fsSL get.docker.com -o get-docker.sh 
sudo sh get-docker.sh

### install docker compose
sudo curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose


### start docker-compose
docker-compose down
sleep 2
docker-compose pull
sleep 2
docker-compose up -d

echo Install Starknet Node Completed!!!!
