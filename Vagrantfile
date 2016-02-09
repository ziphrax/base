# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|

    config.vm.provider "virtualbox" do |v|
      v.memory = 512
      v.cpus = 1
    end

  config.vm.box_check_update = false
  config.vm.box = "ubuntu/trusty64"

  config.vm.network :forwarded_port, guest: 80, host: 3000
  config.vm.provision :shell, path: "bootstrap.sh"

end
