require 'serverspec'


set :backend, :exec

describe file('/opt/helloworld.txt') do

  it { should be_file }
  its(:content) { should match /this came from my role/ }

end
