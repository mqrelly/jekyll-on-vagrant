# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|
  config.vm.box = "gbarbieru/xenial"
  config.vm.network "forwarded_port", guest: 4000, host: 4000
  config.vm.synced_folder ".", "/work/project"
  config.vm.provision "shell", :path => "_provision/bootstrap.sh"
end
