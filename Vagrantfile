Vagrant.configure("2") do |config|
    config.vm.box = "ubuntu/trusty64" # Relative to https://vagrantcloud.com
    config.vm.provision :shell, :path => "node-bootstrap.sh"
    config.vm.network :private_network, ip: '10.0.33.34'
    config.vm.network :forwarded_port, guest: 80, host: 8080

    config.vm.provider :virtualbox do |vb|
        vb.customize ["setextradata", :id, "VBoxInternal2/SharedFoldersEnableSymlinksCreate/v-root", "1"]
        vb.customize ["modifyvm", :id, "--memory", "512"]
    end
end
