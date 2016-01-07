set :branch, 'dev'
set :sudo, 'false'
set :ssh_user, 'ubuntu'
set :deploy_to, '/var/www/myapp/current/'

server '62.4.23.202', user: fetch(:ssh_user)
SSHKit.config.command_map[:composer] = "php #{shared_path.join("composer.phar")}"

load 'config/deploy/alkante_tasks.rb'
