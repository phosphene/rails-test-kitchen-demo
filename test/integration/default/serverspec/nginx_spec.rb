require 'net/http'
require 'uri'
require 'serverspec'
set :backend, :exec

describe port(80) do
  it { should be_listening }
end
describe port(443) do
  it { should_not be_listening }
end
# describe Net::HTTP.get(URI('http://localhost/index.html')) do
#   it { should eq('I am a teapot.') }
# end
