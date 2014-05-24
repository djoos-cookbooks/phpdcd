#
# Cookbook Name:: phpdcd
# Recipe:: composer
#
# Copyright 2013-2014, Escape Studios
#

include_recipe 'git'
include_recipe 'composer'

phpdcd_dir = "#{Chef::Config[:file_cache_path]}/phpdcd"

directory phpdcd_dir do
  owner 'root'
  group 'root'
  mode 0755
  action :create
end

# figure out what version to install
if node['phpdcd']['version'] != 'latest'
  version = node['phpdcd']['version']
else
  version = '*.*.*'
end

# composer.json
template "#{phpdcd_dir}/composer.json" do
  source 'composer.json.erb'
  owner 'root'
  group 'root'
  mode 0600
  variables(
    :version => version,
    :bindir => node['phpdcd']['prefix']
  )
end

# composer update
execute 'phpdcd-composer' do
  user 'root'
  cwd phpdcd_dir
  command 'composer update'
  action :run
end
