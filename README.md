# jopf-seminar-chef
日本OSS推進フォーラム主催 第5回アプリケーション部会勉強会 Chef・Ansible等を用いた環境の自動構築方法のデモで使用したChefリポジトリです。

# 諸注意

vmwareを使っています。virtualboxをお使いの方はVagrantfileを書き換えてから`vagrant up`してください。
vmwareを使う際のprovider指定に注意してください。 `vagrant up --provider vmware_fusion`

```
Vagrant.configure(2) do |config|
  config.vm.box = "opscode-centos-6.5-vmware"
  config.vm.provider "vmware_fusion" do |v|
    v.vmx["memsize"] = "1024"
    v.vmx["numvcpus"] = "2"
  end
  (後略)
```
↓
```
Vagrant.configure(2) do |config|
  config.vm.box = "opscode-centos-6.5"
  config.vm.provider "virtualbox" do |v|
    v.memory = 1024
    v.cpus = 2
  end
  (後略)
```

# 使い方

```
vagrant up
bundle exec berks vendor cookbooks
knife solo cook chef_seminar -i /path/to/ssh_key
```
