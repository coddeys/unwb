# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = '2'

Vagrant.require_version '>= 1.5.0'

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.hostname = 'unwb-berkshelf'
  config.omnibus.chef_version = 'latest'

  config.vm.box = "phusion/ubuntu-14.04-amd64"

  config.vm.network "forwarded_port", guest: 80, host: 10080
  config.vm.network "forwarded_port", guest: 3000, host: 3300
  config.vm.network "public_network"

  config.vm.provider :virtualbox do |vb|
    vb.memory = 2024
    vb.cpus = 2
  end

  # View the documentation for the provider you're using for more
  # information on available options.

  # The path to the Berksfile to use with Vagrant Berkshelf
  # config.berkshelf.berksfile_path = "./Berksfile"

  # Enabling the Berkshelf plugin. To enable this globally, add this configuration
  # option to your ~/.vagrant.d/Vagrantfile file
  config.berkshelf.enabled = true

  # An array of symbols representing groups of cookbook described in the Vagrantfile
  # to exclusively install and copy to Vagrant's shelf.
  # config.berkshelf.only = []

  # An array of symbols representing groups of cookbook described in the Vagrantfile
  # to skip installing and copying to Vagrant's shelf.
  # config.berkshelf.except = []

  config.vm.provision :chef_solo do |chef|
    chef.json = {
      mysql: {
        server_root_password: 'rootpass',
        server_debian_password: 'debpass',
        server_repl_password: 'replpass'
      }
    }

    chef.run_list = [
      'recipe[unwb::default]',
      'recipe[unwb::user]',
      'recipe[unwb::nodejs]',
      'recipe[unwb::postgres]',
      'recipe[unwb::rbenv]',
      'recipe[unwb::nginx]',
      'recipe[unwb::app]'      
    ]
  end
end
