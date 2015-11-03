#
# Cookbook Name:: nginx
# Recipe:: default
#
# Copyright 2015, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

package 'nginx' do
  action :install
end

package 'php5-fpm' do
  action :install
end

service 'nginx' do
  action [ :enable, :start]
end

service 'php5-fpm' do
  action [ :enable ]
end
