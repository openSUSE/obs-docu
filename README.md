# Open Build Service Documentation
This is the official, edited and reviewed documentation for the [Open Build
Service (OBS)](https://openbuildservice.org/).

The documentation is currently split into these books:

* The OBS User Guide
* The OBS Administration Guide

For more ideas and TODOs, see the Trello board at https://trello.com/b/DxiucSKw/obs-documentation

## Building the books

To build those documents you need to install openSUSEs DocBook Authoring and
Publishing Suite ([daps](https://github.com/openSUSE/daps)).

After editing the document validate your changes via the following
commands, for example:

    $ daps -d DC-obs-user-guide validate

Similar for other guides. HTML documentation can get generated via

    $ daps -d DC-obs-user-guide html

## Development Environment
We are also shipping a [docker/docker-compose](https://www.docker.com/) based
development environment that you can use.

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

### Podman-based Development Environment

If you are not using docker and docker-compose, then you can achieve the same
using [podman](https://podman.io/) and [buildah](https://buildah.io/):
```ShellSession
$ buildah bud --layers --build-arg CONTAINER_USERID=0 --build-arg USER=root --tag obs-docu .
$ podman run --rm -v $(pwd):/obs-docu:Z localhost/obs-docu daps -vv -d DC-obs-all html
```


## Update Documentation

The first steps to update the documentation are:

- Fork [obs-docu](https://github.com/openSUSE/obs-docu) project and clone the fork on your computer.
- Prepare the development environment following the instructions above.
- Add or correct a piece of documentation.
- Commit your changes in a new branch and send a Pull Request (as in any other repository).
- Wait until your changes are merged.

Once the Pull Request is approved and merged, your changes are ready to be deployed. However, the OBS documentation is hosted online at openbuildservice.org, so you should move to [obs-landing](https://github.com/openSUSE/obs-landing) repository where you'll find the [instructions to deploy](https://github.com/openSUSE/obs-landing#updating-obs-documentation).
