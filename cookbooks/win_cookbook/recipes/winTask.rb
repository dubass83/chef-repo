#
# Cookbook:: win_cookbook
# Recipe:: winTask
#
# Copyright:: 2017, The Authors, All Rights Reserved.

windows_task 'chef-client' do
  user 'vagrant'
  password 'vagrant'
  cwd 'C:\\chef\\bin'
  command 'chef-client -L C:\\tmp\\'
  run_level :highest
  frequency :minute
  frequency_modifier 15
end