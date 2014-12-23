#
# Cookbook Name:: unwb
# Recipe:: default
#
# Copyright (C) 2014 Coddeys
#
# All rights reserved - Do Not Redistribute
#

# update package database
include_recipe "apt"

# install packages
package "telnet"
package "postfix"
package "curl"
package "git-core"
package "zlib1g-dev"
package "libssl-dev"
package "libreadline-dev"
package "libyaml-dev"
package "libsqlite3-dev"
package "sqlite3"
package "libxml2-dev"
package "libxslt1-dev"
package "libpq-dev"
package "build-essential"
package "tree"

bash "set timezone" do
  code <<-EOH
    echo 'Europe/Moscow' > /etc/timezone
    dpkg-reconfigure -f noninteractive tzdata
  EOH
  not_if "date | grep -q 'MSK'"
end
