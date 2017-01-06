#
# Cookbook:: win_cookbook
# Recipe:: winBatch
#
# Copyright:: 2017, The Authors, All Rights Reserved.

batch 'run calc' do
  code <<-EOH
    calc
    EOH
end