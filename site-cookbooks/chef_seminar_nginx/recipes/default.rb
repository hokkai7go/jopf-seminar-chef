#
# Cookbook Name:: chef_seminar_nginx
# Recipe:: default
#
# Copyright 2015, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
include_recipe "nginx::default"

package_version = "1.6.2-1.el6.ngx"
package node['nginx']['package_name'] do
  version package_version
  notifies :reload, 'ohai[reload_nginx]', :immediately
end
