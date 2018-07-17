# README

This is the official, edited and reviewed documentation for
the Open Build Service (OBS).

The documentation is currently split into these books:

* The OBS Beginner's Guide
* The OBS User Guide
* The OBS Administration Guide
* The OBS Reference Guide
* The OBS Best Practices Guide

To work on this document you need to install the package `daps` in
version 2.4.0 or later. Install the latest version from the
[Documentation:Tools](https://build.opensuse.org/project/show/Documentation:Tools) repository.

After editing the document validate your changes via the following
commands, for example:

    $ daps -d DC-obs-beginners-guide validate

Similar for other guides. HTML documentation can get generated via

    $ daps -d DC-obs-beginners-guide html

If "daps" is not available on your distribution, you can try to
create a PDF with dblatex

    $ dblatex xml/book-obs-reference-guide.xml

This document is hosted on GitHub at https://github.com/openSUSE/obs-docu

For more ideas and TODOs, see the Trello board at https://trello.com/b/DxiucSKw/obs-documentation

So the standard GitHub workflow with forked repositories and pull requests
can be used to contribute to these books.

We follow the SUSE docbook XML style. All files can be reformatted to that
using:

    $ for i in xml/*.xml; do
       /usr/bin/xmlformat.pl --config /etc/daps/docbook-xmlformat.conf -i "$i"
      done

Please separate reformat commits from content changes.
