set :branch, 'master'
set :sudo, 'false'
# set :deploy_to, '/var/www/demo/'

set :symfony_env,  "dev"
set :controllers_to_clear, []

set :ssh_user, 'ubuntu'
server '62.4.23.202', user: fetch(:ssh_user)


