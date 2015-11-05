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
  config.vm.network :forwarded_port, guest: 3000, host: 3000 

  # System Specs
  config.vm.provider :virtualbox do |vbox| 
    vbox.memory  = 512
    vbox.cpus    = 1 
  end

  # Chef
  config.vm.provision :chef_solo do |chef| 
    chef.cookbooks_path = 'cookbooks'

    chef.add_recipe 'apt'
    chef.add_recipe 'build-essential'
    chef.add_recipe 'postgresql::server'
    chef.add_recipe 'nodejs'
    chef.add_recipe 'ruby'
    chef.add_recipe 'bundler'

    chef.json = {
      :postgresql => {
        :password => {
          :postgres => 'admin'
        }
      }
    }
  end
end
