# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/xenial64"

  config.vm.provider :virtualbox do |vb|
    vb.name = "coldharbor"
  end

  # Define a static IP address - allows for easier host mappings
  config.vm.network "private_network", ip: "192.168.9.99"
  config.vm.hostname = "coldharbor"

  # Install a basic docker image
  config.vm.provision "docker" do |d|
    d.run "docker/whalesay"
  end

  # Enable the Docker Remote API to be accessed externally.
  #  Reference: https://www.ivankrizsan.se/2016/05/18/enabling-docker-remote-api-on-ubuntu-16-04/
  config.vm.provision "shell", inline: <<-SHELL
     rm /etc/default/docker
     echo "DOCKER_OPTS='-H tcp://0.0.0.0:2375 -H unix:///var/run/docker.sock'" >> /etc/default/docker
   SHELL
end
