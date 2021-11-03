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

```
daps -d DC-obs-user-guide validate
```

Similar for other guides. HTML documentation can get generated via

```
daps -d DC-obs-user-guide html
```

## Development Environment
You can also also use a docker/podman based development environment.

Install the [daps2docker](https://software.opensuse.org//download.html?project=Documentation%3ATools&package=daps2docker)
package and run

```
daps2docker .
```
