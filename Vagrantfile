Vagrant.configure("2") do |config|
  config.vm.box = "bento/ubuntu-18.04"

  config.vm.define "chefed-vvm" do |machine|
  end

  config.omnibus.chef_version = '14.12.9'

  config.vm.provision :chef_solo do |chef|
    chef.cookbooks_path = "chef-recipes/cookbooks"

    chef.add_recipe "apache"
    # chef.add_recipe "nginx"
    chef.add_recipe "java"
    chef.add_recipe "tomcat"
    chef.add_recipe "mysql"

    chef.nodes_path = 'chef-recipes/nodes'
  end

  config.vm.network "forwarded_port", guest: 22,   host: 22022
  config.vm.network "forwarded_port", guest: 80,   host: 22080
  config.vm.network "forwarded_port", guest: 8080, host: 28080
  config.vm.network "forwarded_port", guest: 443,  host: 22443
  config.vm.network "forwarded_port", guest: 3306, host: 22306
end