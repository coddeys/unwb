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
