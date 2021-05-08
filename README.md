GNU Guix Treehouse
===========================================

Hello!  This repository contains package recipes and extensions of the
[GNU Guix package manager](https://gnu.org/s/guix) for my personal high-performance
computing (HPC) packages. Notably, it contains packages for HPC software.

The goal is for most contributions to go upstream.  This repo acts as a
staging area or a place to store things not meant for public consumption
yet.

Please send inquiries to
[Hariharan Devarajan](mailto:mani.hariharan@gmail.com).

## Getting started

All of this won’t be of any use to you until you have
[Guix](https://gnu.org/s/guix) on your system.  See the
[installation instructions here](https://www.gnu.org/software/guix/manual/html_node/Binary-Installation.html).

If you’d like to use Guix on a cluster that doesn’t have it yet, stay
tuned: we’re working on ways to make it usable without the `root`
privileges that the
[build daemon currently requires](https://www.gnu.org/software/guix/manual/html_node/Build-Environment-Setup.html).

## How does it work?

The package definitions in this repo _extend_ [those that come with
Guix](https://gnu.org/s/guix/packages).  To make them visible to the
`guix` command-line tools, create the `~/.config/guix/channels.scm` file
with the following snippet to request the `guix-treehouse` _channel_:

```scheme
(cons (channel
        (name 'guix-treehouse)
        (url "https://github.com/hariharan-devarajan/guix-treehouse.git"))
      %default-channels)
```

That way, `guix pull` will systematically pull not only Guix, but also
guix-treehouse.

## More information

The Guix manual contains useful information:

  * on
    [`guix package`](https://www.gnu.org/software/guix/manual/html_node/Invoking-guix-package.html),
    the tool to install, upgrade, and remove packages;
  * on
    [`guix environment`](https://www.gnu.org/software/guix/manual/html_node/Invoking-guix-environment.html),
    the tool that allows you to enter a specific development
    environment;
  * on the [channels
    mechanism](https://www.gnu.org/software/guix/manual/en/html_node/Channels.html),
    which allows you to pull in `guix-treehouse` packages in addition to those
    provided by Guix;
  * on
    [the `GUIX_PACKAGE_PATH` environment variable](https://www.gnu.org/software/guix/manual/html_node/Package-Modules.html#index-GUIX_005fPACKAGE_005fPATH),
    which allows you to extend the set of packages visible to `guix`.

You might also be interested in
[this post about the new `guix pack` command](https://www.gnu.org/software/guix/news/creating-bundles-with-guix-pack.html),
which allows you to create binary bundles that you can transfer and use
on any machine that runs the kernel Linux.
