# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = '2'

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  # All Vagrant configuration is done here. The most common configuration
  # options are documented and commented below. For a complete reference,
  # please see the online documentation at vagrantup.com.

  # Every Vagrant virtual environment requires a box to build off of.
  config.vm.box = 'ubuntu/trusty64'

  # Create a forwarded port mapping which allows access to a specific port
  # within the machine from a port on the host machine. In the example below,
  # accessing 'localhost:8080' will access port 80 on the guest machine.
  config.vm.network :forwarded_port, guest: 80, host: 3000 
  
  # Forward local SSH to VM
  config.ssh.forward_agent = true

  # System Specs
  config.vm.provider :virtualbox do |vbox| 
    vbox.memory  = 512
    vbox.cpus    = 1 
  end

  # Only sync Rails project files
  config.vm.synced_folder './rails', '/vagrant/'

  # Chef
  config.vm.provision :chef_solo do |chef| 
    chef.cookbooks_path = 'cookbooks'
    
    chef.add_recipe 'front-builder.com'
  end
end
