Vagrant.configure("2") do |config|
  config.vm.box = "gbarbieru/xenial"
  #config.vm.box_url = "https://atlas.hashicorp.com/bento/boxes/ubuntu-16.04/versions/2.3.1/providers/virtualbox.box"
  config.omnibus.chef_version = :latest
  config.vm.provision :chef_client do |chef|
    chef.provisioning_path = "/etc/chef"
    chef.chef_server_url = "https://chef-server.example.com/organizations/maxcorp"
    chef.validation_key_path = "/home/maxim/chef-repo/.chef/maxcorp-validator.pem"
    chef.validation_client_name = "maxcorp-validator"
    chef.node_name = "server"
  end
end