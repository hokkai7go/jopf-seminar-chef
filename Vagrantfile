Vagrant.configure(2) do |config|
  config.vm.box = "opscode-centos-6.5-vmware"
  config.vm.provider "vmware_fusion" do |v|
    v.vmx["memsize"] = "1024"
    v.vmx["numvcpus"] = "2"
  end
  config.vm.synced_folder ".", "/vagrant", mount_options: ["dmode=770","fmode=666"]
  config.vm.network "forwarded_port", guest: 80, host: 1080
  config.vm.provision "chef_solo" do |chef|
    chef.cookbooks_path = ["./cookbooks", "./site-cookbooks"]
    chef.run_list = ["chef_seminar_ruby", "chef_seminar_nginx", "chef_seminar_postgresql"]
    chef.json = {
      "postgresql" => {
        "password" => {
          "postgres" => "chefseminar20150223"
        }
      },
      "dbuser" => "mitfahren_production"
    }
  end
end
