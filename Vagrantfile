# -*- mode: ruby -*-
# vi: set ft=ruby :

VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = "ubuntu/trusty64"
  config.vm.network :forwarded_port, guest: 80, host: 8089
  config.vm.network :forwarded_port, guest: 5432, host: 5431
  config.vm.synced_folder ".", "/var/www/app" , id: "vagrant-root",
    owner: "vagrant",
    group: "www-data",
    mount_options: ["dmode=775,fmode=664"]

  config.vm.provision "shell", path: "script.sh"

end
