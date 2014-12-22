#
# Cookbook Name:: unwb
# Recipe:: default
#
# Copyright (C) 2014 Coddeys
#
# All rights reserved - Do Not Redistribute
#

group node['unwb']['group']

user node['unwb']['user'] do
  group node['unwb']['group']
  system true
  shell '/bin/bash'
end

include_recipe 'nginx::source'

# include_recipe "rails"
# include_recipe "passenger_apache2"

# application 'unwb-portal' do
#   path '/var/www/rails-apps/unwb-portal'
#   owner 'unwb'
#   group 'unwb'
#   repository 'https://github.com/coddeys/testapp'
#   passenger_apache2
# end
