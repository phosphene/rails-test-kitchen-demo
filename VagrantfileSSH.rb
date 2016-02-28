Vagrant.configure("2") do |config|

config.ssh.insert_key = false
config.ssh.forward_agent = true


end
