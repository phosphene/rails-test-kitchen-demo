##package "rails-demo"
#
log "including br-rails"

# include_recipe 'br-rails::configure'
# include_recipe 'br-rails::install'
# include_recipe 'br-rails::migrate'


file "/opt/helloworld.txt" do
  content "#{node['test']['greeting']}"
end
