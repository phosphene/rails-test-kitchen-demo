##package "rails-demo"

#only need to create the rails user and rails db and grant access



execute "create rails user in postgres" do
  user 'postgres'
  command %{psql -c "create user #{node['rails']['postgres']['user']} WITH PASSWORD '#{node['rails']['postgres']['password']}'"}
  action :run
  not_if %{psql -c '\\du'| grep #{node['rails']['postgres']['user']}}, :user => 'postgres'
  end

  # execute 'drop local rails db' do
  #   user 'postgres'
  #   command %|psql -c "DROP DATABASE #{node['rails']['postgres']['dbname']}" |
  #   action :run

  # end



  execute 'create local rails db' do
    user 'postgres'
    command %|psql -c "CREATE DATABASE #{node['rails']['postgres']['dbname']} OWNER #{node['rails']['postgres']['user']} " |
    action :run
    not_if "psql --list|grep #{node['rails']['postgres']['dbname']}", :user => 'postgres'
  end


  execute "grant usage on schema " do
    user 'postgres'
    command %| psql -c "GRANT USAGE ON SCHEMA public TO #{node['rails']['postgres']['user']}"|
    action :run
  end
