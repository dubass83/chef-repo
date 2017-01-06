#
# Cookbook:: win_cookbook
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.

windows_package 'Notepad++' do
  source 'c:/npp.6.9.1.Installer.exe'
  action :install
end

windows_package 'VLC media player 1.1.10' do
  source 'http://superb-sea2.dl.sourceforge.net/project/vlc/1.1.10/win32/vlc-1.1.10-win32.exe'
  action :install
end

powershell_script 'read-env-var' do
  cwd 'C:'
  environment ({'foo' => 'BAZ'})
  code <<-EOH
  $stream = [System.IO.StreamWriter] "./test-read-env-var.txt"
  $stream.WriteLine("FOO is $env:foo")
  $stream.close()
  EOH
end


batch 'run calc' do
  code <<-EOH
    calc
    EOH
end

windows_task 'chef-client' do
  user 'vagrant'
  password 'vagrant'
  cwd 'C:\\chef\\bin'
  command 'chef-client -L C:\\tmp\\'
  run_level :highest
  frequency :minute
  frequency_modifier 15
end