##package "rails-demo"
#
node['ruby']['dependencies'].each do |name|
  package name do
    action :install
  end
end


node['rails']['default']['dependencies'].each do |name|
  package name do
    action :install
  end
end



#   if node[:deploy_users] && node[:ssh_deploy_keys]
#     node[:deploy_users].each do |deploy_user|
#       directory "/home/#{deploy_user}/.ssh" do
#         mode 0700
#         owner deploy_user
#         group deploy_user
#       end

#       template "/home/#{deploy_user}/.ssh/authorized_keys" do
#         source "authorized_keys.erb"
#         mode 0600
#         owner deploy_user
#         group deploy_user
#         variables :keys => node[:ssh_deploy_keys]
#       end
#     end
#   end
# end
