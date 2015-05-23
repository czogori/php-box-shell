# -*- mode: ruby -*-
# vi: set ft=ruby :

VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = "ubuntu/trusty64"
  config.vm.network "private_network", ip: "10.10.10.10"
  config.vm.synced_folder ".", "/var/www/app", type: "nfs"
  config.vm.provision "base", type: "shell", privileged: false, path: "https://gist.githubusercontent.com/czogori/67dc95fb86de2b7323ab/raw/4aa90d865c9dea3bbcb0167896f32e4181e9ba33/gistfile1.txt"
  config.vm.provision "shell", path: "script.sh", privileged: false
end
