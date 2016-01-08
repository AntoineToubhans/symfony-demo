# config valid only for current version of Capistrano
lock '3.4.0'

set :application, 'demo'
set :repo_url, 'git@github.com:AntoineToubhans/symfony-demo.git'


# Default value for :linked_files is []
set :linked_files, [fetch(:app_config_path) + "/parameters.yml"]

# Default value for linked_dirs is []
set :linked_dirs, [fetch(:log_path), "vendor"]

namespace :deploy do
  after :updated, 'symfony:assetic:dump'
end
