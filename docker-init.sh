echo "Clearing data"
rm -rf ../postgresql-rp/data/*
rm -rf ../postgresql-rp/data-slave/*
docker-compose down

docker-compose up -d  postgres1

echo "Starting postgres1 node..."
sleep 120  # Waits for master note start complete

echo "Prepare replica config..."
docker exec -it postgres1 sh /etc/postgresql/init-script/init.sh
echo "Restart master node"
docker-compose restart postgres1

echo "Starting slave node..."
docker-compose up -d  postgres2
sleep 30  # Waits for note start complete

echo "Done"