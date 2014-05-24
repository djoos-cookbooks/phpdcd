#
# Cookbook Name:: phpdcd
# Recipe:: phar
#
# Copyright 2013-2014, Escape Studios
#

remote_file "#{node['phpdcd']['install_dir']}/phpdcd" do
  source node['phpdcd']['phar_url']
  mode 0755
end
