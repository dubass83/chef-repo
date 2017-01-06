#
# Cookbook:: win_cookbook
# Recipe:: installPkg
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