name              'rails-demo'
version           '0.1.0'
description       'Tests the Configure/Management of Rails deployment'
license           'MIT License'
source_url        'https://github.com/phosphene/rails-test-kitchen-demo'

suggests 'apt'
suggests 'yum'
suggests 'br-rails'
suggests 'br-ruby'
depends 'postgresql'
depends  'openssl'
suggests 'passenger-nginx'
supports 'ubuntu'

##supports 'debian'
##supports 'centos'
##supports 'redhat'

##recommends 'br-ruby'
