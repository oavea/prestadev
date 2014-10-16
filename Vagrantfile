VAGRANTFILE_API_VERSION = "2"

path = "#{File.dirname(__FILE__)}"

require 'yaml'
require path + '/scripts/prestadev.rb'

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  Prestadev.configure(config, YAML::load(File.read(path + '/Prestadev.yaml')))
end
