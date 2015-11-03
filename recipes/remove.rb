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

package 'nginx' do
  action [:purge]
end

package 'nginx-common' do
  action [:purge]
end

package 'nginx-core' do
  action [:purge]
end
