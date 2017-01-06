#
# Cookbook:: win_cookbook
# Recipe:: ps_script
#
# Copyright:: 2017, The Authors, All Rights Reserved.
### run ps script

powershell_script 'read-env-var' do
  cwd 'C:'
  environment ({'foo' => 'BAZ'})
  code <<-EOH
  $stream = [System.IO.StreamWriter] "./test-read-env-var.txt"
  $stream.WriteLine("FOO is $env:foo")
  $stream.close()
  EOH
end