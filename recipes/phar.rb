#
# Cookbook Name:: phpdcd
# Recipe:: phar
#
# Copyright 2013-2014, Escape Studios
#

if node['phpdcd']['install_dir'] != ""
    phpdcd_dir = node['phpdcd']['install_dir']
else
    phpdcd_dir = "#{Chef::Config['file_cache_path']}/phpdcd"
end

directory "#{phpdcd_dir}" do
    owner "root"
    group "root"
    mode "0755"
    action :create
end

remote_file "#{phpdcd_dir}/phpdcd.phar" do
    source node['phpdcd']['phar_url']
    mode "0755"
end