# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = '2'

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

  config.vm.define 'webserver' do |webserver|
    webserver.vm.box = 'ubuntu/trusty64'
    webserver.vm.network 'forwarded_port', guest: 80, host: 9000
    webserver.vm.network 'private_network', ip: '192.168.10.21'
    webserver.vm.synced_folder '../', '/vagrant'

    webserver.vm.provision 'ansible' do |ansible|
      ansible.playbook = 'provisioning/web/setup.yml'
      ansible.inventory_path = 'provisioning/hosts'
    end
  end

  config.vm.define 'dbserver' do |dbserver|
    dbserver.vm.box = 'ubuntu/trusty64'
    dbserver.vm.network 'private_network', ip: '192.168.10.22'

    dbserver.vm.provision 'ansible' do |ansible|
      ansible.playbook = 'provisioning/db/setup.yml'
      ansible.inventory_path = 'provisioning/hosts'
    end
  end

  # Share an additional folder to the guest VM. The first argument is
  # the path on the host to the actual folder. The second argument is
  # the path on the guest to mount the folder. And the optional third
  # argument is a set of non-required options.
  # config.vm.synced_folder '../data', '/vagrant_data'

  # config.vm.provision 'ansible' do
  #   ansible.playbook = 'setup.yml'
  # end
end
