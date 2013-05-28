English Polish Dictionary 
=======

This is a simple web application a editable dictionary for English and Polish. 

## 1. Ruby, Rails & Rubygems

Applicatoin is written in [ruby](http://ruby-lang.org/) language, using
[Ruby on Rails](http://rubyonrails.org/) web framework.

This application is developed using `ruby-1.9.3`, `rails-3.2` and `rubygems-1.8.24`.

## 2. Database

Any database engine that is supported by *ActiveRecord* can be used, such as `mysql`, `sqlite3` or `postgresql`. [ActiveRecord](http://ar.rubyonrails.org/) is an [ORM](http://en.wikipedia.org/wiki/Object-relational_mapping) and it is one of the core components of *Ruby on Rails*.

### 2.1 Database Connection

To configure the database connection you can edit `config/database.yml` file to configure each environment database seperatly. It's default configuration is to use local sqlite 
database.

```yml
development:
  adapter: sqlite3
  database: db/development.sqlite3
  pool: 5
  timeout: 5000
```

### 2.2 Database Migration

Once application is successfully connected to the database server, use
this command to create and migrate the database:

```sh
# This creates a database
$ rake db:create

# This creates tables etc. on the database
$ rake db:migrate
```

## 3. Assets

This version of *Ruby on Rails* uses [Asset Pipeline](http://guides.rubyonrails.org/asset_pipeline.html). 
Therefore, in the production environment assets such as images, css 
and javascript have to be compiled.

```sh
# This compiles all the assets into `public/assets`
$ rake assets:precompile
```

## 4. Server

For the development easiest solution is to use:

```sh
# This starts WEBrick ruby server
$ rails s
=> Booting WEBrick
=> Rails 3.2.6 application starting in development on http://0.0.0.0:3000
=> Call with -d to detach
=> Ctrl-C to shutdown server
```