# Set the working application directory
# working_directory "/path/to/your/app"
# working_directory "/var/www/my_app"
working_directory "/home/vagrant/rails-project"

# Unicorn PID file location
# pid "/path/to/pids/unicorn.pid"
# pid "/var/www/my_app/pids/unicorn.pid"
pid "/home/vagrant/rails-project/pids/unicorn.pid"

# Path to logs
stderr_path "/home/vagrant/rails-project/log/unicorn.log"
stdout_path "/home/vagrant/rails-project/log/unicorn.log"
# stderr_path "/var/www/my_app/log/unicorn.log"
# stdout_path "/var/www/my_app/log/unicorn.log"

# Unicorn socket
listen "/tmp/unicorn.rails-project.sock"
# listen "/tmp/unicorn.myapp.sock"

# Number of processes
# worker_processes 4
worker_processes 2

# Time-out
timeout 30
