# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
   config.vm.define "vagrant-centos7-desktop"
   config.vm.box = "centos7-desktop"

   config.vm.provider :virtualbox do |v, override|
     v.gui = true
     v.customize ["modifyvm", :id, "--memory", 8024]
     v.customize ["modifyvm", :id, "--cpus", 1]
     v.customize ["modifyvm", :id, "--vram", "256"]
     v.customize ["setextradata", "global", "GUI/MaxGuestResolution", "any"]
     v.customize ["setextradata", :id, "CustomVideoMode1", "1024x768x32"]
     v.customize ["modifyvm", :id, "--ioapic", "on"]
     v.customize ["modifyvm", :id, "--rtcuseutc", "on"]
     v.customize ["modifyvm", :id, "--accelerate3d", "on"]
     v.customize ["modifyvm", :id, "--clipboard", "bidirectional"]
   end
end
