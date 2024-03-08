#!/bin/bash

sudo dnf update -y
sudo dnf install -y vim
sudo adduser mfabri
sudo usermod -aG wheel mfabri

su - mfabri
cd ~
mkdir .ssh
echo "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQDXV+L9qsmCDB16bzmo10PS0uj/tRbMj4KalGzC277EL1xqSXedYcl2n/TJZMjgNKK4F3vmlDREIFdZ7T0Lr995nUKx0dU2WlQGyQNfYyTFsOl8AElsDf9Mo20G3LOUWbl/RUpGjzgJHrD6Y/I9EsQdhQEwLKst1hGqR+hEEJL4F0+kQYBME+mvVZ4ahCaaE6m9CZoAl714AK/UDVGCsQJpXR3EgWkG+7UJXQiRD/7leKOuWGD6gaAktUm0odX69eavI6TWEaGHgzpbjoZCZsdsKqzQPxxoEylPVeYhXEiAa4yon2hhJBziYgstKaukKOxP7iQY7fjkuRKEcGDurLPvG0D8B3fynSN8pGoyxUIX5lAVY1mpLjWCKb8FYik7saBZzNzT29dCPD+jxUMciRGK4AgKycvcyapXLwNFAqhV0svSt+V0SB90vn3wrvTIijn+Ja12xqeC/wpjhH5O24s/ckSIrm6VlAa+zICcd0QnaB7iX4np8FLT07d1M/lTPv6+ezEMnwIgA/RJcPXOglWM6N/v97Pt3QJw4czoUykhQNDzkwkLeLPP/sjgyrcDzdX4OqD0Mb2nDGxbo1v3CC9nJAbgXTsFfLiNT8XIHO9VzpnCTj3AkJmOt7R+hWuF7WJUwSn2p0l4gaDL4WJsLUtsPIJoIUDrXO3AEQjO2Vk+jw==" > .ssh/authorized_keys

sudo dnf -y install dnf-plugins-core
sudo dnf config-manager --add-repo https://download.docker.com/linux/fedora/docker-ce.repo
sudo dnf install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
sudo systemctl start docker
sudo systemctl enable docker
sudo usermod -aG docker mfabri

