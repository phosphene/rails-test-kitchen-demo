package "curl"

users_manage 'testgroup' do
  group_id 3000
  action [:remove, :create]

end

users_manage 'www-data' do
  group_id 3133
  action [:remove, :create]
end

app_dir = "/var/www/"

directory app_dir do
  owner node[:deployment][:user]
  group node[:deployment][:group]
  recursive true
end

# directory "/usr/local/rvm/archives" do
#   owner node[:deployment][:user]
#   group node[:deployment][:group]
#   recursive true
# end
gem_package 'bundler' do
  options('--prerelease --no-format-executable')
end


bash "Install Bundler in deploy" do
  environment ({"HOME" => "/home/deploy"})
  code "source /etc/profile.d/rvm.sh && rvm gemset use global && gem install bundler"
  user "deploy"
end
