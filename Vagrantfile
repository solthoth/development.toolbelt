Vagrant.configure("2") do |config|
    config.vm.box = "gusztavvargadr/visual-studio"
    config.vm.box_download_insecure =true
    config.vm.provision "shell", path: "support/ansible/win_init.ps1"
    config.vm.provision "shell", path: "support/perforce/p4v_install.ps1"
end