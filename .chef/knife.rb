local_mode true
knife[:ssh_user] = 'vagrant'
knife[:berkshelf_path] = "cookbooks"
cookbook_path    ["cookbooks", "site-cookbooks"]
