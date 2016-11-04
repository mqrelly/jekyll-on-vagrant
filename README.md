# Jekyll on Vagrant

Previewing a [Jekyll][jekyll] site is just a `vagrant up` away - on any machine.


## Why?

The motivation was to make it easy for people to contribute
to a [Jekyll][jekyll] based site, even on Windows machines and
without needing to setup [Ruby][ruby], [Bundler][bundler], and
[Jekyll][jekyll].

In exchange of course for installing [Vagrant][vagrant]
(and probably [VirtualBox][virtual-box]).

_If you are a Jekyll veteran, this is probably not for you._


## Usage

The scripts expect the Ruby gems to be handled via Bundler.

Copy the following files into your Jekyll sites root directory:

- `Vagrantfile`
- `_provision/bootstrap.sh`
- `_provision/jekyll.service`

Then when you're editing a page in the [Jekyll][jekyll] site
type `vagrant up` into the command line, and you can view the
generated site on
[http://localhost:4000/](http://localhost:4000/).

When finished for the day, type `vagrant halt`.

[jekyll]: http://jekyllrb.com/ "Simple, blog-aware, static sites"
[ruby]: https://www.ruby-lang.org/en/ "Ruby programming language"
[bundler]: http://bundler.io/ "Bundler: The best way to manage a Ruby application's gems"
[virtual-box]: https://www.virtualbox.org/ "Oracle VM VirtualBox"
[vagrant]: https://www.vagrantup.com/ "Vagrant by HashiCorp"