### About

Vagrant stack, tailored for Rails development.  Vagrant-Rails-Stack will set up two virtual machines, one acting as the webserver with Nginx and unicorn, and the other as the database server with Postgres.  Once both machines have been set up, Vagrant-Rails-Stack will deploy your project on those machines and make it accessible through `http://localhost:8888`.

Setting up the virtual machines should be project agnostic, as long as your project uses Postgres as the database.  As part of the setup process, any required files will be added and configured, in order to achieve the virtual configuration above.  As part of process, your project will end up with a new `Gemfile`, `unicorn.rb` and `database.yml`.  The original files will be renamed by adding the `.orig` suffix to the filename and stored in your project.

### Dependencies

Both ansible and vagrant have to be installed on your system.  Please visit the corresponding projects:

- http://www.ansible.com
- https://www.vagrantup.com/

### Configuration

Some variable configuration is available in the corresponding setup files for each server, which can be found in `provisioning/db/setup.yml` and `provisioning/web/setup.yml`.

Additionally, please take a look at the `Vagrantfile` provided for configuration of the vagrant machines.

**NOTE:** Your project root folder will be shared with the virtual machine.

### Execution

To run, clone the repository in your project root folder and execute:

```
cd vagrant-rails-stack
vagrant up
```
