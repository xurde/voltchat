source 'https://rubygems.org'

# gem 'volt', '~>0.8', path: "../volt/"
gem 'volt', '~>0.8'

# The following gem's are optional for themeing

# Twitter bootstrap
gem 'volt-bootstrap'

# Simple theme for bootstrap, remove to theme yourself.
gem 'volt-bootstrap-jumbotron-theme'


# Server for MRI
platform :mri do
  gem 'thin', '~> 1.6.0'
  gem 'bson_ext', '~> 1.9.0'
end

# Server for jruby
platform :jruby do
  gem 'jubilee'
end


#---------------------
# Needed at the moment
gem 'volt-sockjs', require: false, platforms: :mri
