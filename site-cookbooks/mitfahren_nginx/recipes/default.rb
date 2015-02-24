#
# Cookbook Name:: mitfahren_nginx
# Recipe:: default
#
# Copyright 2015, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
template 'nginx.conf' do
  path '/etc/nginx/nginx.conf'
  source "nginx.conf.erb"
  owner 'root'
  group 'root'
  mode '0644'
  notifies :reload, "service[nginx]"
end

service "nginx" do
  action [ :enable, :start ]
  supports :status => true, :restart => true, :reload => true
end
