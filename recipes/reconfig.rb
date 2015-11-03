#
# Cookbook Name:: nginx
# Recipe:: default
#
# Copyright 2015, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

cookbook_file '/etc/nginx/nginx.conf' do
  source 'nginx.conf'
  mode '0644'
  action :create
end

service 'nginx' do
  action [ :restart]
end
