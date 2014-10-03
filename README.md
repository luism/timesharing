Time Share Scheduled
====================

This example Application Use:
* Ruby 2.1.2
* Rails 4.1.6
* Devise 3.3.0

## Requirements
For Ubuntu 12.04 we need to install:
* [RVM](http://rvm.io)

## Instalation:

* Clone the repository
* Ensure that Ruby 2.1.2 has been installed with RVM
* Copy from databa-example.yml the database configuration:

```bash
$ cp config/database-example.yml config/database.yml
```
* Run bundle
```bash
$ bundle
```
* Run migrations and seeds

```bash
$ rake db:migration && rake db:seed
```
* Start Server (you can change the port number)

```bash
$ rails s -p 3000
```
Go to [localhost:3000](http://localhost:3000) *(if you are use port 3000 in other must use http://localhost:[PORT_NUMBER])*

___

### Author

**Ricardo Luis Mender**

Thanks! Muchas Gracias!