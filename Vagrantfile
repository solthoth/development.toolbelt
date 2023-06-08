Vagrant.configure("2") do |config|
    config.vm.box = "gusztavvargadr/ubuntu-desktop"
    config.vm.provider "virtualbox" do |vb|
        vb.gui       = true
        vb.customize ["modifyvm", :id, "--clipboard", "bidirectional"]
        vb.customize ["modifyvm", :id, "--draganddrop", "bidirectional"]
        vb.customize ["setextradata", :id, "GUI\/LastGuestSizeHint", "1920,1080"]
    end    
    config.vm.provision "ansible_local" do |ansible|
        ansible.galaxy_role_file = "./provisioning/requirements.yaml"
        ansible.galaxy_command  = "ansible-galaxy install --role-file=%{role_file}"
        ansible.playbook        = "./provisioning/playbook.yaml"
    end
end
