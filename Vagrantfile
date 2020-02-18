# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "hashicorp/bionic64"

  config.vm.network "forwarded_port", guest: 80, host: 8080, host_ip: "127.0.0.1"

  config.vm.synced_folder ".", "/src"

  config.vm.provision "shell", inline: <<-SHELL
    cd /src/
    ./deploy/install.sh
    ./deploy/setup.sh
  SHELL
end
