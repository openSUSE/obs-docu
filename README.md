# Open Build Service Documentation
This is the official, edited and reviewed documentation for the [Open Build
Service (OBS)](https://openbuildservice.org/).

The documentation is currently split into these books:

* The OBS User Guide (DC-obs-user-guide)
* The OBS Administration Guide (DC-obs-admin-guide)

We are using openSUSEs DocBook Authoring and Publishing Suite ([daps](https://github.com/openSUSE/daps))
and the [SUSE Documentation Style Guide](https://documentation.suse.com/style/current/single-html/docu_styleguide/).

## Development Environment

daps comes with a docker/podman based development environment that you can install via the package [daps2docker](https://software.opensuse.org//download.html?project=Documentation%3ATools&package=daps2docker).

After editing something in the OBS User Guide you can validate your changes via

```
daps2docker DC-obs-user-guide validate
```

or if you want to preview the HTML files you can use

```
rm -rf /tmp/daps2docker-*; daps2docker DC-obs-user-guide html; xdg-open /tmp/daps2docker-*/obs-user-guide/html/book-obs-user/index.html
```

For more detailed information see

```
daps2docker --help
```
