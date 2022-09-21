

Testing Octopus package in spack (`spack-ci-octopus`)
=====================================================

.. sectnum::

Support repository for getting the `OCTOPUS code <http://octopus-code.org>`__ package into
`Spack <http://spack.readthedocs.io>`__.

There are (at least two different) error types that can lead to a problem with compiling Octopus through spack:

1. changes to the octopus specific packaging instructions or newer versions of
octopus. In particular, this is the `octopus/package.py` file within spack. To
run tests before we suggest changes to this file, we have used `this repository
<https://github.com/fangohr/octopus-in-spack/>`__

2. changes to spack overall: changes in spack behaviour through new spack
releases, changes to third party libraries octopus depends on, changes due to
global reformatting of spack files, etc. `This repository
<https://github.com/fangohr/spack-ci-octopus>`__ is meant to detect these
changes more easily.

Status
------

The following targets clone spack, and attempt to install octopus through spack.
The instructions are embedded in `this Dockerfile <Dockerfile>`__.

They following targets all use the default version of octopus (i.e. what spack
would install if we run `spack install octopus`).

We try different versions of spack:

- |spack-develop-octopus-stable| Spack develop version (git head)
- |spack-latest-octopus-stable| Spack latest release
- |spack-v0.18.1-octopus-stable| Spack release 0.18.1
- |spack-v0.18.0-octopus-stable| Spack release 0.18.0,

.. |spack-latest-octopus-stable| image:: https://github.com/fangohr/octopus-in-spack/actions/workflows/spack-latest.yml/badge.svg
   :target: https://github.com/fangohr/spack-ci-octopus/actions/workflows/spack-latest.yml
   
.. |spack-v0.18.0-octopus-stable| image:: https://github.com/fangohr/spack-ci-octopus/actions/workflows/spack-v0.18.0.yml/badge.svg
   :target: https://github.com/fangohr/spack-ci-octopus/actions/workflows/spack-v0.18.0.yml

.. |spack-v0.18.1-octopus-stable| image:: https://github.com/fangohr/spack-ci-octopus/actions/workflows/spack-v0.18.1.yml/badge.svg
   :target: https://github.com/fangohr/spack-ci-octopus/actions/workflows/spack-v0.18.1.yml

.. |spack-develop-octopus-stable| image:: https://github.com/fangohr/spack-ci-octopus/actions/workflows/spack-develop.yml/badge.svg?branch=spack-develop
   :target: https://github.com/fangohr/spack-ci-octopus/actions/workflows/spack-develop.yml
