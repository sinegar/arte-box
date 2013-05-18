# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.hostname = "arte"
  
  config.vm.provider :virtualbox do |vb|
    vb.customize ["modifyvm", :id , "--name", "arte" , "--memory", "96"]
  end

  config.vm.box = "precise32"
  config.vm.box_url = "http://files.vagrantup.com/precise32.box"
  config.vm.provision :chef_solo do |chef|

    chef.add_recipe "apt::default"
    chef.add_recipe "resolver"
    chef.json = {
      :resolver => {
        :nameservers => ['103.1.187.68']
      }
    }
  end
  config.vm.provision :shell, :inline => "sudo apt-get -y install curl rtmpdump python-beautifulsoup "
  # config.vm.provision :shell, :path => "bootstrap.sh"

  # Create a forwarded port mapping which allows access to a specific port
  # within the machine from a port on the host machine. In the example below,
  # accessing "localhost:8080" will access port 80 on the guest machine.
  #config.vm.network :forwarded_port, guest: 3128, host: 3128
end
