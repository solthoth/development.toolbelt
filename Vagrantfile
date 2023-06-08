Vagrant.configure("2") do |config|
    config.vm.box = "gusztavvargadr/ubuntu-desktop"
    config.vm.provider "virtualbox"
    config.vm.provision "ansible_local" do |ansible|
        ansible.playbook = "./provisioning/playbook.yaml"
    end
end
