#
# Cookbook Name:: chef_seminar_ruby
# Recipe:: default
#
# Copyright 2015, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
package "libffi-devel" do
  action :install
end


include_recipe "rbenv::default"
include_recipe "rbenv::ruby_build"

rbenv_ruby "2.2.0" do
  global true
end

rbenv_gem "bundler" do
  ruby_version "2.2.0"
end
