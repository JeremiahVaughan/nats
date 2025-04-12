sudo cp $HOME/nats/nats.service /etc/systemd/system/nats.service
sudo systemctl enable nats.service
sudo systemctl start nats.service
sudo systemctl restart nats.service
