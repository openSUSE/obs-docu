# Open Build Service Documentation
This is the official, edited and reviewed documentation for the [Open Build
Service (OBS)](https://openbuildservice.org/).

The documentation is currently split into these books:

* The OBS Beginner's Guide
* The OBS User Guide
* The OBS Administration Guide
* The OBS Reference Guide
* The OBS Best Practices Guide

For more ideas and TODOs, see the Trello board at https://trello.com/b/DxiucSKw/obs-documentation

## Building the books

To build those documents you need to install openSUSEs DocBook Authoring and
Publishing Suite ([daps](https://github.com/openSUSE/daps)).

After editing the document validate your changes via the following
commands, for example:

    $ daps -d DC-obs-beginners-guide validate

Similar for other guides. HTML documentation can get generated via

    $ daps -d DC-obs-beginners-guide html

## Development Environment
We are also shipping a [docker/docker-compose](https://www.docker.com/) based
development environment you can use.

1. Since we mount the repository into our container, we need to map
   your local user id to the one of the container user:

   ```bash
   sed "s/REPLACE_THIS_WITH_YOUR_ID/`id -u`/" docker-compose.override.yml.example > docker-compose.override.yml
   ```

1. Then you can build the development environment with:

   ```bash
   docker-compose build
   ```

1. And after it's built, you can run any command in it via:

   ```bash
   docker-compose run --rm obs-docu daps -vv -d DC-obs-all html
   ```
