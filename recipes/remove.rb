#
# Cookbook Name:: nginx
# Recipe:: remove
#
# Copyright 2015, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

service 'nginx' do
  action [:disable, :stop]
end

service 'php5-fpm' do
  action [:disable]
end

package 'nginx-common' do
  action [:purge]
end

package 'php5-common' do
  action [:purge]
end
