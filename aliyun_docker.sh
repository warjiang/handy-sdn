#如果您的系统是 Ubuntu 12.04 14.04，Docker 1.9 以上

echo "DOCKER_OPTS=\"\$DOCKER_OPTS --registry-mirror=https://2h3po24q.mirror.aliyuncs.com\"" | sudo tee -a /etc/default/docker
sudo service docker restart
#如果您的系统是 Ubuntu 15.04 16.04，Docker 1.9 以上

#sudo mkdir -p /etc/systemd/system/docker.service.d
#sudo tee /etc/systemd/system/docker.service.d/mirror.conf <<-'EOF'
#[Service]
#ExecStart=
#ExecStart=/usr/bin/docker daemon -H fd:// --registry-mirror=https://2h3po24q.mirror.aliyuncs.com
#EOF
#sudo systemctl daemon-reload
#sudo systemctl restart docker