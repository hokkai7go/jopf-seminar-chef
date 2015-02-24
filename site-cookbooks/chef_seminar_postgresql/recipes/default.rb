#
# Cookbook Name:: chef_seminar_postgresql
# Recipe:: default
#
# Copyright 2015, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
include_recipe "postgresql::default"
include_recipe "postgresql::server"
