# config valid for current version and patch releases of Capistrano
# config valid for current version and patch releases of Capistrano
# require "rvm/capistrano"
lock "~> 3.17.1"
set :application, "rails7_capistrano"
set :repo_url, "git@github.com:demo-projects-prachiti/rails7_capistrano.git"
# set :deploy_to, "/home/capistrano/capistrano"
set :branch, :main
# after "deploy:restart", "deploy:cleanup"
# set :rvm_ruby_version, "ruby-3.0.0"
# set :default_env, { rvm_bin_path: "~/.rvm/bin" }
# role :app, ""
# role :web, "localhost"
# role :db,  "localhost", :primary => true
set(:deploy_to) { "/home/neosoft/CAP" }
# set :bundle_without,  [:development, :test]
set :use_sudo, false
set :repository, "."
# set :scm, :none
# set :rvm_ruby, '3.0.0'
# set :rvm_type, :system
set :rvm_ruby_string, "ruby-3.0.0"
# set :rbenv_type, :user
# set :rbenv_ruby, "3.0.0"
# set :rvm_type, :user
# set :deploy_via, :copy
# set :copy_dir, "/home/capistrano/capistrano/tmp"
# set :copy_remote_dir, "/home/capistrano/capistrano/tmp"
# Default branch is :master
# ask :branch, `git rev-parse --abbrev-ref HEAD`.chomp
# Default deploy_to directory is /var/www/my_app_name
# set :deploy_to, "/var/www/my_app_name"
# Default value for :format is :airbrussh.
# set :format, :airbrussh
# You can configure the Airbrussh format using :format_options.
# These are the defaults.
# set :format_options, command_output: true, log_file: "log/capistrano.log", color: :auto, truncate: :auto
# Default value for :pty is false
# set :pty, true
# Default value for :linked_files is []
# append :linked_files, "config/database.yml", "config/secrets.yml"
# Default value for linked_dirs is []
# append :linked_dirs, "log", "tmp/pids", "tmp/cache", "tmp/sockets", "public/system"
# Default value for default_env is {}
# set :default_env, { path: "/opt/ruby/bin:$PATH" }
# Default value for local_user is ENV['USER']
# set :local_user, -> { `git config user.name`.chomp }
# Default value for keep_releases is 5
# set :keep_releases, 5
# Uncomment the following to require manually verifying the host key before first deploy.
# set :ssh_options, verify_host_key: :secure
# set :deploy_to ,'/home/neosoft/neosoft/neo-assignments/rails/twitter'
# # Path of tests to be run, use array with empty string to run all tests
# set :tests, ['']
# namespace :deploy do
#   desc "Runs test before deploying, can't deploy unless they pass"
#   task :run_tests do
#     test_log = "log/capistrano.test.log"
#     tests = fetch(:tests)
#     tests.each do |test|
#       puts "--> Running tests: '#{test}', please wait ..."
#       unless system "bundle exec rspec #{test} > #{test_log} 2>&1"
#         puts "--> Aborting deployment! One or more tests in '#{test}' failed. Results in: #{test_log}"
#         exit;
#       end
#       puts "--> '#{test}' passed"
#     end
#     puts "--> All tests passed, continuing deployment"
#     system "rm #{test_log}"
#   end
#   # Only allow a deploy with passing tests to be deployed
#   before :deploy, "deploy:run_tests"
# end
# set :rvm_ruby_version, 'ruby-3.0.0'
# set :rvm_ruby_string, '3.0.0'
# set :default_env, { rvm_bin_path: '~/.rvm/bin' }
# namespace :deploy do
#     desc "Run seed"
#     task :seed do
#       on roles(:all) do
#         within current_path do
#           # run "cd #{current_path}; bundle exec rake db:seed RAILS_ENV=production"
#           execute :bundle, :exec, 'rails', 'db:seed', 'RAILS_ENV=production'
#         end
#       end
#     end
#     after :migrating, :seed
#   end
# namespace :deploy do
#   task :restart, :roles => :web do
#     run "touch #{ current_path }/tmp/restart.txt"
#   end
#   task :restart_daemons, :roles => :app do
#     sudo "monit restart all -g daemons"
#   end
# after "deploy", "deploy:restart_daemons" 
# end