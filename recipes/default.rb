#
# Cookbook:: mytom8onubuntu16
# Recipe:: default
#
# Copyright:: 2022, The Authors, All Rights Reserved.
include_recipe 'mytom8onubuntu16::installjava'
include_recipe 'mytom8onubuntu16::usergroup'
include_recipe 'mytom8onubuntu16::downloadtomcat'
include_recipe 'mytom8onubuntu16::permissions'
include_recipe 'mytom8onubuntu16::tomServiceFile'
include_recipe 'mytom8onubuntu16::tomstart'
include_recipe 'mytom8onubuntu16::tomcatwebmanagement'
include_recipe 'mytom8onubuntu16::tomstart'
include_recipe 'mytom8onubuntu16::deploy'
include_recipe 'mytom8onubuntu16::tomstart'
