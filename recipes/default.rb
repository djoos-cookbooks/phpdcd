#
# Cookbook Name:: phpdcd
# Recipe:: default
#
# Copyright 2013-2014, Escape Studios
#

case node['phpdcd']['install_method']
    when "composer"
        include_recipe "phpdcd::composer"
    when "phar"
        include_recipe "phpdcd::phar"
end