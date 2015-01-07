# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = '2'

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

  config.vm.define 'webserver' do |webserver|
    webserver.vm.box = 'ubuntu/trusty64'
    webserver.vm.network 'forwarded_port', guest: 3000, host: 9000
    webserver.vm.network 'private_network', ip: '192.168.10.21'
    webserver.vm.synced_folder '../', '/home/vagrant/rails-project'

    webserver.vm.provision 'ansible' do |ansible|
      ansible.playbook = 'provisioning/web/setup.yml'
      ansible.inventory_path = 'provisioning/hosts'
    end

    webserver.vm.provider "virtualbox" do |v|
      v.customize ["modifyvm", :id, "--memory", "1024"]
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

end
