# -*- mode: ruby -*-
# vi: set ft=ruby :

# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.
Vagrant.configure("2") do |config|
  # The most common configuration options are documented and commented below.
  # For a complete reference, please see the online documentation at
  # https://docs.vagrantup.com.

  # Every Vagrant development environment requires a box. You can search for
  # boxes at https://vagrantcloud.com/search.

  config.vm.box = "ubuntu/bionic64"
  config.vm.network "public_network", bridge: "wlp1s0"

  config.vm.define "nodo1" do |nodo1|
    nodo1.vm.network "forwarded_port", guest: 80, host: 8001
    nodo1.vm.hostname = "nodo1"
    nodo1.vm.provider "virtualbox" do |vb|
     vb.memory = "4096"
     vb.cpus = "4"
    end
  end
  
  # config.vm.define "nodo2" do |nodo2|
  #   nodo2.vm.network "public_network", bridge: "wlo1"
  #   nodo2.vm.network "forwarded_port", guest: 80, host: 2210
  #   nodo2.vm.hostname = "nodo2"
  #   nodo2.vm.provider "virtualbox" do |vb|
  #    vb.memory = "512"
  #    vb.cpus = "1"
  #   end
  # end
  
  # config.vm.define "nodo3" do |nodo3|
  #   nodo3.vm.network "public_network", bridge: "wlo1"
  #   nodo3.vm.network "forwarded_port", guest: 80, host: 2220
  #   nodo3.vm.hostname = "nodo3"
  #   nodo3.vm.provider "virtualbox" do |vb|
  #    vb.memory = "512"
  #    vb.cpus = "1"
  #   end
  # end
  
end
