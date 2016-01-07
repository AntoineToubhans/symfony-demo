desc "Fix cache permissions"
task :fix_cache_permissions do
  on release_roles :all do
    within release_path do
      execute "cd #{fetch(:release_path)} && chmod 777 -R #{fetch(:cache_path)}"
    end
  end
end

namespace :deploy do
  before :publishing, :fix_cache_permissions
end
