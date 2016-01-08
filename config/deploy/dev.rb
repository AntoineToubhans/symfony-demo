set :branch, 'master'
set :sudo, 'false'
set :ssh_user, 'ubuntu'
# set :deploy_to, '/var/www/demo/'

server '62.4.23.202', user: fetch(:ssh_user)
# SSHKit.config.command_map[:composer] = "php #{shared_path.join("composer.phar")}"


